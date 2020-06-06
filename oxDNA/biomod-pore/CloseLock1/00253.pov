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
	<24.151800, 35.399292, 35.113468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171663, 35.000511, 35.089378>,  <24.183580, 34.761242, 35.074924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171663, 35.000511, 35.089378>,  <24.151800, 35.399292, 35.113468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171663, 35.000511, 35.089378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341186, 0.073603, -0.937110,
		0.938683, 0.025988, 0.343800,
		0.049658, -0.996949, -0.060223,
		24.186562, 34.701427, 35.071312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857609, 35.178387, 34.844318>,  <24.151800, 35.399292, 35.113468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857609, 35.178387, 34.844318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584827, 34.898064, 34.760597>,  <24.421160, 34.729870, 34.710365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584827, 34.898064, 34.760597>,  <24.857609, 35.178387, 34.844318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.584827, 34.898064, 34.760597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365681, -0.078872, -0.927392,
		0.633419, -0.708973, 0.310060,
		-0.681951, -0.700811, -0.209299,
		24.380241, 34.687820, 34.697807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191458, 34.541256, 34.575142>,  <24.857609, 35.178387, 34.844318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191458, 34.541256, 34.575142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814989, 34.587215, 34.448025>,  <24.589108, 34.614792, 34.371754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814989, 34.587215, 34.448025>,  <25.191458, 34.541256, 34.575142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814989, 34.587215, 34.448025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319701, -0.001878, -0.947517,
		-0.109471, -0.993375, -0.034968,
		-0.941173, 0.114904, -0.317788,
		24.532637, 34.621685, 34.352688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150524, 34.051590, 34.004658>,  <25.191458, 34.541256, 34.575142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150524, 34.051590, 34.004658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900864, 34.362434, 33.972343>,  <24.751066, 34.548943, 33.952953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900864, 34.362434, 33.972343>,  <25.150524, 34.051590, 34.004658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900864, 34.362434, 33.972343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197594, 0.056965, -0.978627,
		-0.755904, -0.626776, -0.189108,
		-0.624152, 0.777115, -0.080787,
		24.713617, 34.595570, 33.948109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.798351, 33.835941, 33.471840>,  <25.150524, 34.051590, 34.004658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.798351, 33.835941, 33.471840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774914, 34.234093, 33.502251>,  <24.760851, 34.472984, 33.520496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774914, 34.234093, 33.502251>,  <24.798351, 33.835941, 33.471840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774914, 34.234093, 33.502251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089320, 0.081083, -0.992697,
		-0.994278, -0.051372, -0.093658,
		-0.058591, 0.995382, 0.076030,
		24.757336, 34.532707, 33.525059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475912, 34.048771, 33.264126>,  <24.798351, 33.835941, 33.471840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475912, 34.048771, 33.264126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764814, 34.325123, 33.276970>,  <25.938156, 34.490936, 33.284676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764814, 34.325123, 33.276970>,  <25.475912, 34.048771, 33.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764814, 34.325123, 33.276970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095924, -0.054081, -0.993918,
		-0.684944, 0.720942, -0.105333,
		0.722254, 0.690882, 0.032113,
		25.981491, 34.532387, 33.286602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323093, 34.533607, 32.754330>,  <25.475912, 34.048771, 33.264126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323093, 34.533607, 32.754330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716085, 34.503017, 32.822308>,  <25.951881, 34.484661, 32.863094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716085, 34.503017, 32.822308>,  <25.323093, 34.533607, 32.754330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716085, 34.503017, 32.822308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164103, -0.077103, -0.983425,
		0.088315, 0.994085, -0.063202,
		0.982482, -0.076479, 0.169942,
		26.010830, 34.480072, 32.873291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497210, 34.993874, 32.276527>,  <25.323093, 34.533607, 32.754330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497210, 34.993874, 32.276527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828758, 34.798931, 32.386406>,  <26.027687, 34.681965, 32.452332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828758, 34.798931, 32.386406>,  <25.497210, 34.993874, 32.276527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828758, 34.798931, 32.386406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181637, -0.229981, -0.956095,
		0.529133, 0.842374, -0.102102,
		0.828871, -0.487355, 0.274697,
		26.077419, 34.652725, 32.468815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030386, 35.232891, 31.791109>,  <25.497210, 34.993874, 32.276527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030386, 35.232891, 31.791109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185720, 34.899239, 31.947783>,  <26.278921, 34.699047, 32.041786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185720, 34.899239, 31.947783>,  <26.030386, 35.232891, 31.791109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185720, 34.899239, 31.947783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248098, -0.314709, -0.916191,
		0.887492, 0.452967, 0.084733,
		0.388338, -0.834134, 0.391681,
		26.302221, 34.648998, 32.065289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530651, 35.110294, 31.475855>,  <26.030386, 35.232891, 31.791109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530651, 35.110294, 31.475855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470930, 34.737217, 31.607183>,  <26.435099, 34.513371, 31.685980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470930, 34.737217, 31.607183>,  <26.530651, 35.110294, 31.475855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470930, 34.737217, 31.607183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345891, -0.360328, -0.866327,
		0.926320, -0.015779, 0.376407,
		-0.149300, -0.932692, 0.328321,
		26.426140, 34.457409, 31.705679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142931, 34.706539, 31.483585>,  <26.530651, 35.110294, 31.475855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142931, 34.706539, 31.483585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845602, 34.440498, 31.454996>,  <26.667204, 34.280872, 31.437841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845602, 34.440498, 31.454996>,  <27.142931, 34.706539, 31.483585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845602, 34.440498, 31.454996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345975, -0.290802, -0.892040,
		0.572513, -0.687804, 0.446269,
		-0.743324, -0.665102, -0.071475,
		26.622604, 34.240967, 31.433554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460062, 33.973301, 31.302158>,  <27.142931, 34.706539, 31.483585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460062, 33.973301, 31.302158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077639, 33.930187, 31.193102>,  <26.848185, 33.904320, 31.127668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077639, 33.930187, 31.193102>,  <27.460062, 33.973301, 31.302158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077639, 33.930187, 31.193102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292616, -0.408208, -0.864721,
		-0.018091, -0.906504, 0.421810,
		-0.956059, -0.107784, -0.272642,
		26.790821, 33.897854, 31.111309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394268, 33.285557, 31.040838>,  <27.460062, 33.973301, 31.302158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394268, 33.285557, 31.040838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095522, 33.488400, 30.868774>,  <26.916273, 33.610104, 30.765535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095522, 33.488400, 30.868774>,  <27.394268, 33.285557, 31.040838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095522, 33.488400, 30.868774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286860, -0.337899, -0.896402,
		-0.599917, -0.792889, 0.106898,
		-0.746867, 0.507102, -0.430159,
		26.871462, 33.640530, 30.739727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153242, 32.827805, 30.659889>,  <27.394268, 33.285557, 31.040838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153242, 32.827805, 30.659889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020540, 33.170437, 30.501797>,  <26.940920, 33.376015, 30.406940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020540, 33.170437, 30.501797>,  <27.153242, 32.827805, 30.659889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020540, 33.170437, 30.501797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226428, -0.334409, -0.914823,
		-0.915790, -0.392986, -0.083013,
		-0.331753, 0.856582, -0.395231,
		26.921015, 33.427410, 30.383226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953999, 32.652939, 29.877602>,  <27.153242, 32.827805, 30.659889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953999, 32.652939, 29.877602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984964, 33.049686, 29.918022>,  <27.003544, 33.287735, 29.942274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984964, 33.049686, 29.918022>,  <26.953999, 32.652939, 29.877602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984964, 33.049686, 29.918022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316675, 0.071644, -0.945825,
		-0.945370, 0.105218, -0.308553,
		0.077412, 0.991865, 0.101050,
		27.008188, 33.347244, 29.948338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746006, 32.862537, 29.274551>,  <26.953999, 32.652939, 29.877602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746006, 32.862537, 29.274551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947870, 33.180782, 29.408607>,  <27.068989, 33.371731, 29.489040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947870, 33.180782, 29.408607>,  <26.746006, 32.862537, 29.274551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947870, 33.180782, 29.408607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298041, 0.203773, -0.932549,
		-0.810240, 0.570506, -0.134289,
		0.504660, 0.795613, 0.335139,
		27.099268, 33.419468, 29.509150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579124, 33.329929, 28.889334>,  <26.746006, 32.862537, 29.274551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579124, 33.329929, 28.889334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934526, 33.455246, 29.023441>,  <27.147768, 33.530437, 29.103905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934526, 33.455246, 29.023441>,  <26.579124, 33.329929, 28.889334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934526, 33.455246, 29.023441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292230, 0.176979, -0.939830,
		-0.353776, 0.933020, 0.065693,
		0.888507, 0.313292, 0.335267,
		27.201078, 33.549232, 29.124022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733362, 33.878948, 28.509020>,  <26.579124, 33.329929, 28.889334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733362, 33.878948, 28.509020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093344, 33.767387, 28.643059>,  <27.309334, 33.700451, 28.723482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093344, 33.767387, 28.643059>,  <26.733362, 33.878948, 28.509020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093344, 33.767387, 28.643059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400674, 0.226098, -0.887885,
		0.171871, 0.933323, 0.315228,
		0.899956, -0.278906, 0.335099,
		27.363331, 33.683716, 28.743587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178238, 34.337189, 28.164721>,  <26.733362, 33.878948, 28.509020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178238, 34.337189, 28.164721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407259, 34.035000, 28.292126>,  <27.544672, 33.853687, 28.368568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407259, 34.035000, 28.292126>,  <27.178238, 34.337189, 28.164721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407259, 34.035000, 28.292126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553320, 0.069384, -0.830074,
		0.604995, 0.651501, 0.457741,
		0.572554, -0.755468, 0.318511,
		27.579025, 33.808361, 28.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879452, 34.497868, 28.133553>,  <27.178238, 34.337189, 28.164721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879452, 34.497868, 28.133553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892647, 34.098217, 28.123356>,  <27.900564, 33.858425, 28.117237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892647, 34.098217, 28.123356>,  <27.879452, 34.497868, 28.133553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892647, 34.098217, 28.123356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758094, 0.041634, -0.650815,
		0.651311, 0.002144, 0.758808,
		0.032988, -0.999131, -0.025491,
		27.902544, 33.798477, 28.115709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617912, 34.382668, 28.238110>,  <27.879452, 34.497868, 28.133553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617912, 34.382668, 28.238110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463039, 34.065323, 28.050207>,  <28.370115, 33.874916, 27.937466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463039, 34.065323, 28.050207>,  <28.617912, 34.382668, 28.238110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463039, 34.065323, 28.050207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842992, -0.098253, -0.528878,
		0.373436, -0.600771, 0.706838,
		-0.387184, -0.793360, -0.469754,
		28.346884, 33.827316, 27.909281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169012, 33.972271, 28.144409>,  <28.617912, 34.382668, 28.238110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169012, 33.972271, 28.144409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894030, 33.830296, 27.890978>,  <28.729040, 33.745110, 27.738918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894030, 33.830296, 27.890978>,  <29.169012, 33.972271, 28.144409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894030, 33.830296, 27.890978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715292, -0.180114, -0.675216,
		0.125543, -0.917376, 0.377705,
		-0.687457, -0.354937, -0.633579,
		28.687792, 33.723816, 27.700905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494926, 33.399689, 27.827066>,  <29.169012, 33.972271, 28.144409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494926, 33.399689, 27.827066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185539, 33.474747, 27.584898>,  <28.999907, 33.519783, 27.439596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185539, 33.474747, 27.584898>,  <29.494926, 33.399689, 27.827066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185539, 33.474747, 27.584898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583547, -0.162046, -0.795748,
		-0.247423, -0.968778, 0.015838,
		-0.773469, 0.187644, -0.605421,
		28.953499, 33.531040, 27.403273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604801, 32.926304, 27.308136>,  <29.494926, 33.399689, 27.827066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604801, 32.926304, 27.308136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390627, 33.221539, 27.143927>,  <29.262121, 33.398682, 27.045401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390627, 33.221539, 27.143927>,  <29.604801, 32.926304, 27.308136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390627, 33.221539, 27.143927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547204, -0.067079, -0.834307,
		-0.643330, -0.671361, -0.367969,
		-0.535438, 0.738089, -0.410525,
		29.229996, 33.442966, 27.020769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411587, 32.656292, 26.768965>,  <29.604801, 32.926304, 27.308136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411587, 32.656292, 26.768965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390770, 33.047119, 26.686369>,  <29.378281, 33.281616, 26.636812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390770, 33.047119, 26.686369>,  <29.411587, 32.656292, 26.768965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390770, 33.047119, 26.686369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401103, -0.168908, -0.900326,
		-0.914554, -0.129677, -0.383113,
		-0.052040, 0.977064, -0.206489,
		29.375158, 33.340237, 26.624422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041193, 32.856846, 26.093168>,  <29.411587, 32.656292, 26.768965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041193, 32.856846, 26.093168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355173, 33.078369, 26.204269>,  <29.543562, 33.211285, 26.270929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355173, 33.078369, 26.204269>,  <29.041193, 32.856846, 26.093168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355173, 33.078369, 26.204269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504618, -0.311377, -0.805236,
		-0.359462, 0.772230, -0.523878,
		0.784951, 0.553810, 0.277753,
		29.590658, 33.244511, 26.287596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177046, 33.375290, 25.579157>,  <29.041193, 32.856846, 26.093168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177046, 33.375290, 25.579157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509478, 33.263294, 25.771374>,  <29.708937, 33.196098, 25.886703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509478, 33.263294, 25.771374>,  <29.177046, 33.375290, 25.579157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509478, 33.263294, 25.771374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424403, -0.239140, -0.873324,
		0.359434, 0.929742, -0.079917,
		0.831077, -0.279985, 0.480540,
		29.758801, 33.179298, 25.915535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850464, 33.773018, 25.501842>,  <29.177046, 33.375290, 25.579157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850464, 33.773018, 25.501842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877979, 33.377689, 25.556240>,  <29.894487, 33.140491, 25.588879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877979, 33.377689, 25.556240>,  <29.850464, 33.773018, 25.501842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877979, 33.377689, 25.556240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355853, -0.103042, -0.928844,
		0.932007, 0.112286, 0.344608,
		0.068787, -0.988319, 0.135993,
		29.898615, 33.081192, 25.597038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645386, 33.548271, 25.322292>,  <29.850464, 33.773018, 25.501842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645386, 33.548271, 25.322292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427498, 33.220085, 25.252882>,  <30.296766, 33.023174, 25.211235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427498, 33.220085, 25.252882>,  <30.645386, 33.548271, 25.322292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427498, 33.220085, 25.252882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632988, -0.266523, -0.726837,
		0.550098, -0.505762, 0.664527,
		-0.544718, -0.820470, -0.173528,
		30.264082, 32.973946, 25.200823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920494, 33.430157, 24.750626>,  <30.645386, 33.548271, 25.322292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920494, 33.430157, 24.750626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654348, 33.134670, 24.793678>,  <30.494661, 32.957378, 24.819510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654348, 33.134670, 24.793678>,  <30.920494, 33.430157, 24.750626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654348, 33.134670, 24.793678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405820, -0.478934, -0.778417,
		0.626580, -0.474251, 0.618452,
		-0.665363, -0.738720, 0.107630,
		30.454739, 32.913055, 24.825968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285707, 33.841949, 25.315344>,  <30.920494, 33.430157, 24.750626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285707, 33.841949, 25.315344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597281, 33.632412, 25.177444>,  <31.784224, 33.506687, 25.094706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597281, 33.632412, 25.177444>,  <31.285707, 33.841949, 25.315344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597281, 33.632412, 25.177444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143621, -0.386115, 0.911202,
		-0.610442, -0.759276, -0.225521,
		0.778931, -0.523847, -0.344749,
		31.830959, 33.475258, 25.074020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199755, 33.059978, 25.450579>,  <31.285707, 33.841949, 25.315344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199755, 33.059978, 25.450579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587429, 33.158043, 25.440979>,  <31.820034, 33.216881, 25.435219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587429, 33.158043, 25.440979>,  <31.199755, 33.059978, 25.450579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587429, 33.158043, 25.440979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106177, -0.327853, 0.938743,
		0.222275, -0.912364, -0.343781,
		0.969186, 0.245161, -0.023999,
		31.878185, 33.231590, 25.433779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507954, 32.643021, 25.850460>,  <31.199755, 33.059978, 25.450579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507954, 32.643021, 25.850460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768314, 32.943848, 25.891878>,  <31.924532, 33.124344, 25.916729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768314, 32.943848, 25.891878>,  <31.507954, 32.643021, 25.850460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768314, 32.943848, 25.891878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042231, -0.172055, 0.984182,
		0.757985, -0.636235, -0.143751,
		0.650903, 0.752066, 0.103546,
		31.963585, 33.169468, 25.922941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125401, 32.363369, 26.253937>,  <31.507954, 32.643021, 25.850460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125401, 32.363369, 26.253937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054482, 32.751148, 26.321751>,  <32.011929, 32.983814, 26.362440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054482, 32.751148, 26.321751>,  <32.125401, 32.363369, 26.253937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054482, 32.751148, 26.321751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190943, -0.202877, 0.960407,
		0.965456, 0.137909, 0.221079,
		-0.177300, 0.969444, 0.169536,
		32.001293, 33.041981, 26.372612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360252, 32.506672, 26.948832>,  <32.125401, 32.363369, 26.253937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360252, 32.506672, 26.948832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131966, 32.832718, 26.909090>,  <31.994995, 33.028347, 26.885244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131966, 32.832718, 26.909090>,  <32.360252, 32.506672, 26.948832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131966, 32.832718, 26.909090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353916, -0.134991, 0.925484,
		0.740966, 0.563349, 0.365524,
		-0.570713, 0.815117, -0.099354,
		31.960752, 33.077251, 26.879284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273056, 32.665356, 27.600576>,  <32.360252, 32.506672, 26.948832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273056, 32.665356, 27.600576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971308, 32.872524, 27.439243>,  <31.790258, 32.996826, 27.342443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971308, 32.872524, 27.439243>,  <32.273056, 32.665356, 27.600576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971308, 32.872524, 27.439243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408377, 0.110784, 0.906066,
		0.513952, 0.848225, 0.127934,
		-0.754375, 0.517920, -0.403333,
		31.744995, 33.027901, 27.318243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249058, 33.208126, 28.018110>,  <32.273056, 32.665356, 27.600576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249058, 33.208126, 28.018110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898151, 33.206192, 27.826115>,  <31.687609, 33.205032, 27.710918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898151, 33.206192, 27.826115>,  <32.249058, 33.208126, 28.018110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898151, 33.206192, 27.826115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459868, 0.295099, 0.837519,
		0.137597, 0.955454, -0.261102,
		-0.877262, -0.004832, -0.479988,
		31.634974, 33.204742, 27.682117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973524, 33.968750, 28.039875>,  <32.249058, 33.208126, 28.018110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973524, 33.968750, 28.039875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672964, 33.710770, 27.984116>,  <31.492628, 33.555981, 27.950661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672964, 33.710770, 27.984116>,  <31.973524, 33.968750, 28.039875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672964, 33.710770, 27.984116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434989, 0.325310, 0.839618,
		-0.496168, 0.691525, -0.524986,
		-0.751400, -0.644955, -0.139397,
		31.447544, 33.517284, 27.942297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363161, 34.370224, 28.230501>,  <31.973524, 33.968750, 28.039875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363161, 34.370224, 28.230501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289799, 33.978096, 28.259695>,  <31.245781, 33.742817, 28.277212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289799, 33.978096, 28.259695>,  <31.363161, 34.370224, 28.230501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289799, 33.978096, 28.259695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392624, 0.141115, 0.908808,
		-0.901226, 0.138024, -0.410780,
		-0.183405, -0.980324, 0.072985,
		31.234777, 33.683998, 28.281591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754112, 34.296471, 28.483353>,  <31.363161, 34.370224, 28.230501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754112, 34.296471, 28.483353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919352, 33.938755, 28.552177>,  <31.018496, 33.724125, 28.593472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919352, 33.938755, 28.552177>,  <30.754112, 34.296471, 28.483353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919352, 33.938755, 28.552177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346480, 0.020391, 0.937836,
		-0.842201, -0.447033, -0.301428,
		0.413097, -0.894285, 0.172061,
		31.043282, 33.670471, 28.603796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261768, 33.979519, 28.857412>,  <30.754112, 34.296471, 28.483353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261768, 33.979519, 28.857412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600449, 33.771374, 28.901812>,  <30.803658, 33.646488, 28.928452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600449, 33.771374, 28.901812>,  <30.261768, 33.979519, 28.857412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600449, 33.771374, 28.901812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152960, -0.038247, 0.987492,
		-0.509606, -0.853090, -0.111978,
		0.846703, -0.520360, 0.110998,
		30.854460, 33.615265, 28.935112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074614, 33.396130, 29.134981>,  <30.261768, 33.979519, 28.857412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074614, 33.396130, 29.134981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453184, 33.488560, 29.225206>,  <30.680326, 33.544018, 29.279341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453184, 33.488560, 29.225206>,  <30.074614, 33.396130, 29.134981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453184, 33.488560, 29.225206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182842, -0.192280, 0.964156,
		0.266166, -0.953746, -0.139728,
		0.946427, 0.231077, 0.225563,
		30.737112, 33.557884, 29.292875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393635, 32.847988, 29.540798>,  <30.074614, 33.396130, 29.134981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393635, 32.847988, 29.540798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624615, 33.165482, 29.617250>,  <30.763203, 33.355980, 29.663122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624615, 33.165482, 29.617250>,  <30.393635, 32.847988, 29.540798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624615, 33.165482, 29.617250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029580, -0.213612, 0.976470,
		0.815889, -0.569518, -0.099872,
		0.577451, 0.793737, 0.191130,
		30.797850, 33.403603, 29.674589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829472, 32.645851, 30.073206>,  <30.393635, 32.847988, 29.540798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829472, 32.645851, 30.073206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878689, 33.042118, 30.096668>,  <30.908218, 33.279877, 30.110746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878689, 33.042118, 30.096668>,  <30.829472, 32.645851, 30.073206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878689, 33.042118, 30.096668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211409, -0.031584, 0.976887,
		0.969622, -0.132599, 0.205550,
		0.123042, 0.990666, 0.058657,
		30.915602, 33.339317, 30.114265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119692, 32.715099, 30.632051>,  <30.829472, 32.645851, 30.073206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119692, 32.715099, 30.632051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013918, 33.094620, 30.562946>,  <30.950453, 33.322334, 30.521484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013918, 33.094620, 30.562946>,  <31.119692, 32.715099, 30.632051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013918, 33.094620, 30.562946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157115, 0.134361, 0.978398,
		0.951519, 0.285866, 0.113541,
		-0.264435, 0.948804, -0.172761,
		30.934587, 33.379261, 30.511118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474949, 33.124424, 31.119539>,  <31.119692, 32.715099, 30.632051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474949, 33.124424, 31.119539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218771, 33.411484, 31.010134>,  <31.065065, 33.583721, 30.944490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218771, 33.411484, 31.010134>,  <31.474949, 33.124424, 31.119539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218771, 33.411484, 31.010134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236518, 0.154524, 0.959261,
		0.730678, 0.679044, 0.070773,
		-0.640444, 0.717650, -0.273514,
		31.026638, 33.626778, 30.928080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566605, 33.668339, 31.590475>,  <31.474949, 33.124424, 31.119539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566605, 33.668339, 31.590475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193588, 33.699425, 31.449432>,  <30.969778, 33.718075, 31.364807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193588, 33.699425, 31.449432>,  <31.566605, 33.668339, 31.590475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193588, 33.699425, 31.449432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358610, -0.085556, 0.929558,
		0.042069, 0.993298, 0.107652,
		-0.932539, 0.077711, -0.352608,
		30.913826, 33.722736, 31.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297970, 34.036720, 32.105938>,  <31.566605, 33.668339, 31.590475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297970, 34.036720, 32.105938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973705, 33.939819, 31.892719>,  <30.779146, 33.881680, 31.764788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973705, 33.939819, 31.892719>,  <31.297970, 34.036720, 32.105938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973705, 33.939819, 31.892719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575529, 0.162286, 0.801517,
		-0.107663, 0.956545, -0.270982,
		-0.810663, -0.242252, -0.533047,
		30.730507, 33.867146, 31.732805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738148, 34.551632, 32.141407>,  <31.297970, 34.036720, 32.105938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738148, 34.551632, 32.141407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545891, 34.218758, 32.030811>,  <30.430536, 34.019032, 31.964453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545891, 34.218758, 32.030811>,  <30.738148, 34.551632, 32.141407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545891, 34.218758, 32.030811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644583, 0.121500, 0.754818,
		-0.594556, 0.541019, -0.594812,
		-0.480641, -0.832187, -0.276493,
		30.401699, 33.969101, 31.947863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026749, 34.690506, 31.891251>,  <30.738148, 34.551632, 32.141407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026749, 34.690506, 31.891251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033991, 34.304237, 31.994904>,  <30.038336, 34.072475, 32.057095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033991, 34.304237, 31.994904>,  <30.026749, 34.690506, 31.891251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033991, 34.304237, 31.994904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637295, 0.188556, 0.747196,
		-0.770407, -0.178672, -0.612004,
		0.018106, -0.965672, 0.259131,
		30.039423, 34.014534, 32.072643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357603, 34.550812, 31.844698>,  <30.026749, 34.690506, 31.891251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357603, 34.550812, 31.844698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558950, 34.320477, 32.102390>,  <29.679758, 34.182274, 32.257004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558950, 34.320477, 32.102390>,  <29.357603, 34.550812, 31.844698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558950, 34.320477, 32.102390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737930, 0.101399, 0.667216,
		-0.449533, -0.811251, -0.373887,
		0.503368, -0.575838, 0.644229,
		29.709961, 34.147724, 32.295658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794056, 34.241684, 32.158730>,  <29.357603, 34.550812, 31.844698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794056, 34.241684, 32.158730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098927, 34.162056, 32.405128>,  <29.281849, 34.114281, 32.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098927, 34.162056, 32.405128>,  <28.794056, 34.241684, 32.158730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098927, 34.162056, 32.405128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585981, 0.192296, 0.787178,
		-0.275157, -0.960934, 0.029912,
		0.762178, -0.199070, 0.616001,
		29.327579, 34.102337, 32.589928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462345, 33.920315, 32.580051>,  <28.794056, 34.241684, 32.158730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462345, 33.920315, 32.580051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794771, 34.004875, 32.785824>,  <28.994226, 34.055611, 32.909286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794771, 34.004875, 32.785824>,  <28.462345, 33.920315, 32.580051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794771, 34.004875, 32.785824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554906, 0.252656, 0.792619,
		0.037584, -0.944180, 0.327280,
		0.831064, 0.211400, 0.514435,
		29.044090, 34.068295, 32.940155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342312, 33.585415, 33.132339>,  <28.462345, 33.920315, 32.580051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342312, 33.585415, 33.132339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610542, 33.866989, 33.225979>,  <28.771481, 34.035934, 33.282162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610542, 33.866989, 33.225979>,  <28.342312, 33.585415, 33.132339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610542, 33.866989, 33.225979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490926, 0.184516, 0.851437,
		0.556162, -0.685879, 0.469312,
		0.670578, 0.703934, 0.234095,
		28.811716, 34.078171, 33.296207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527687, 33.603577, 33.916988>,  <28.342312, 33.585415, 33.132339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527687, 33.603577, 33.916988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636189, 33.973000, 33.808567>,  <28.701290, 34.194653, 33.743515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636189, 33.973000, 33.808567>,  <28.527687, 33.603577, 33.916988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636189, 33.973000, 33.808567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506972, 0.376474, 0.775401,
		0.818169, -0.072915, 0.570336,
		0.271255, 0.923553, -0.271054,
		28.717566, 34.250065, 33.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779461, 33.994881, 34.522816>,  <28.527687, 33.603577, 33.916988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779461, 33.994881, 34.522816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647579, 34.281956, 34.277470>,  <28.568451, 34.454201, 34.130260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647579, 34.281956, 34.277470>,  <28.779461, 33.994881, 34.522816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647579, 34.281956, 34.277470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562497, 0.372454, 0.738157,
		0.758217, 0.588391, 0.280897,
		-0.329704, 0.717686, -0.613369,
		28.548668, 34.497261, 34.093460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770849, 34.495811, 34.961586>,  <28.779461, 33.994881, 34.522816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770849, 34.495811, 34.961586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558823, 34.644997, 34.656975>,  <28.431606, 34.734509, 34.474209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558823, 34.644997, 34.656975>,  <28.770849, 34.495811, 34.961586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558823, 34.644997, 34.656975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710094, 0.295619, 0.639042,
		0.463461, 0.879494, 0.108138,
		-0.530066, 0.372959, -0.761532,
		28.399803, 34.756886, 34.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532423, 35.136166, 35.202698>,  <28.770849, 34.495811, 34.961586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532423, 35.136166, 35.202698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283674, 34.949982, 34.950787>,  <28.134424, 34.838272, 34.799641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283674, 34.949982, 34.950787>,  <28.532423, 35.136166, 35.202698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283674, 34.949982, 34.950787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766579, 0.197402, 0.611056,
		-0.160103, 0.862774, -0.479571,
		-0.621871, -0.465461, -0.629780,
		28.097113, 34.810345, 34.761852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122599, 35.250385, 35.614307>,  <28.532423, 35.136166, 35.202698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122599, 35.250385, 35.614307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090162, 35.582569, 35.834766>,  <29.070700, 35.781879, 35.967041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090162, 35.582569, 35.834766>,  <29.122599, 35.250385, 35.614307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090162, 35.582569, 35.834766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995968, -0.088799, -0.012738,
		0.038363, -0.549958, 0.834311,
		-0.081091, 0.830458, 0.551147,
		29.065834, 35.831707, 36.000111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765800, 35.142490, 35.219158>,  <29.122599, 35.250385, 35.614307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765800, 35.142490, 35.219158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785921, 35.106140, 34.821323>,  <29.797993, 35.084332, 34.582623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785921, 35.106140, 34.821323>,  <29.765800, 35.142490, 35.219158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785921, 35.106140, 34.821323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172094, 0.980168, -0.098261,
		0.983796, 0.176106, 0.033664,
		0.050301, -0.090875, -0.994591,
		29.801012, 35.078876, 34.522945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147709, 35.626961, 35.091484>,  <29.765800, 35.142490, 35.219158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147709, 35.626961, 35.091484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915768, 35.541733, 34.776939>,  <29.776602, 35.490597, 34.588211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915768, 35.541733, 34.776939>,  <30.147709, 35.626961, 35.091484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915768, 35.541733, 34.776939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257749, 0.963598, -0.071029,
		0.772873, 0.161498, -0.613665,
		-0.579855, -0.213069, -0.786365,
		29.741812, 35.477814, 34.541031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453747, 36.084572, 34.623173>,  <30.147709, 35.626961, 35.091484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453747, 36.084572, 34.623173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076298, 36.002232, 34.519482>,  <29.849829, 35.952827, 34.457268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076298, 36.002232, 34.519482>,  <30.453747, 36.084572, 34.623173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076298, 36.002232, 34.519482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189763, 0.978064, -0.085912,
		0.271227, -0.031877, -0.961987,
		-0.943624, -0.205851, -0.259228,
		29.793211, 35.940475, 34.441711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347185, 36.734459, 34.140484>,  <30.453747, 36.084572, 34.623173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347185, 36.734459, 34.140484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518126, 36.623337, 34.484623>,  <30.620689, 36.556664, 34.691105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518126, 36.623337, 34.484623>,  <30.347185, 36.734459, 34.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518126, 36.623337, 34.484623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394452, 0.798978, 0.453919,
		-0.813498, -0.533348, 0.231865,
		0.427352, -0.277802, 0.860347,
		30.646332, 36.539997, 34.742725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988327, 36.777779, 34.710785>,  <30.347185, 36.734459, 34.140484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988327, 36.777779, 34.710785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735746, 36.590137, 34.957756>,  <29.584198, 36.477554, 35.105938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.735746, 36.590137, 34.957756>,  <29.988327, 36.777779, 34.710785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735746, 36.590137, 34.957756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350145, 0.537949, 0.766818,
		-0.691857, 0.700397, -0.175437,
		-0.631453, -0.469100, 0.617424,
		29.546310, 36.449406, 35.142982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409435, 37.142330, 35.068714>,  <29.988327, 36.777779, 34.710785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409435, 37.142330, 35.068714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525318, 36.848843, 35.314552>,  <29.594849, 36.672749, 35.462055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525318, 36.848843, 35.314552>,  <29.409435, 37.142330, 35.068714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525318, 36.848843, 35.314552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263745, 0.678472, 0.685649,
		-0.920059, -0.036540, 0.390072,
		0.289706, -0.733717, 0.614597,
		29.612230, 36.628727, 35.498932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012640, 37.071861, 35.734882>,  <29.409435, 37.142330, 35.068714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012640, 37.071861, 35.734882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393593, 36.952770, 35.761189>,  <29.622166, 36.881317, 35.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393593, 36.952770, 35.761189>,  <29.012640, 37.071861, 35.734882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393593, 36.952770, 35.761189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155491, 0.659781, 0.735195,
		-0.262275, -0.689962, 0.674658,
		0.952383, -0.297727, 0.065761,
		29.679308, 36.863453, 35.780918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169039, 36.823868, 36.488247>,  <29.012640, 37.071861, 35.734882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169039, 36.823868, 36.488247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531101, 36.892323, 36.332603>,  <29.748339, 36.933395, 36.239216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531101, 36.892323, 36.332603>,  <29.169039, 36.823868, 36.488247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531101, 36.892323, 36.332603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385454, 0.055490, 0.921057,
		0.179223, -0.983683, -0.015741,
		0.905155, 0.171142, -0.389109,
		29.802649, 36.943665, 36.215870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643784, 36.292835, 36.817974>,  <29.169039, 36.823868, 36.488247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643784, 36.292835, 36.817974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903864, 36.572742, 36.699612>,  <30.059912, 36.740688, 36.628593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903864, 36.572742, 36.699612>,  <29.643784, 36.292835, 36.817974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903864, 36.572742, 36.699612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308862, 0.112385, 0.944444,
		0.694148, -0.705473, -0.143059,
		0.650202, 0.699770, -0.295906,
		30.098925, 36.782673, 36.610840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286127, 36.231792, 37.204689>,  <29.643784, 36.292835, 36.817974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286127, 36.231792, 37.204689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281172, 36.611465, 37.078903>,  <30.278198, 36.839272, 37.003429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281172, 36.611465, 37.078903>,  <30.286127, 36.231792, 37.204689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281172, 36.611465, 37.078903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119041, 0.313656, 0.942045,
		0.992812, -0.025766, -0.116877,
		-0.012386, 0.949187, -0.314469,
		30.277456, 36.896221, 36.984562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832155, 36.531662, 37.685532>,  <30.286127, 36.231792, 37.204689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832155, 36.531662, 37.685532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614748, 36.819828, 37.513210>,  <30.484304, 36.992729, 37.409817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614748, 36.819828, 37.513210>,  <30.832155, 36.531662, 37.685532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614748, 36.819828, 37.513210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094557, 0.562506, 0.821369,
		0.834055, 0.405693, -0.373852,
		-0.543517, 0.720417, -0.430799,
		30.451693, 37.035954, 37.383972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171728, 37.191849, 37.934654>,  <30.832155, 36.531662, 37.685532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171728, 37.191849, 37.934654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794323, 37.288700, 37.844185>,  <30.567879, 37.346809, 37.789902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794323, 37.288700, 37.844185>,  <31.171728, 37.191849, 37.934654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794323, 37.288700, 37.844185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032838, 0.747595, 0.663342,
		0.329699, 0.618447, -0.713318,
		-0.943515, 0.242127, -0.226173,
		30.511269, 37.361340, 37.776333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138277, 38.028526, 37.818222>,  <31.171728, 37.191849, 37.934654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138277, 38.028526, 37.818222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767483, 37.898727, 37.893482>,  <30.545006, 37.820850, 37.938637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767483, 37.898727, 37.893482>,  <31.138277, 38.028526, 37.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767483, 37.898727, 37.893482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068200, 0.639052, 0.766134,
		-0.368843, 0.697364, -0.614523,
		-0.926987, -0.324493, 0.188149,
		30.489388, 37.801380, 37.949928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808413, 38.606163, 37.938538>,  <31.138277, 38.028526, 37.818222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808413, 38.606163, 37.938538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580147, 38.323612, 38.106049>,  <30.443188, 38.154083, 38.206554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580147, 38.323612, 38.106049>,  <30.808413, 38.606163, 37.938538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580147, 38.323612, 38.106049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090486, 0.560953, 0.822887,
		-0.816183, 0.431699, -0.384034,
		-0.570664, -0.706376, 0.418778,
		30.408947, 38.111698, 38.231682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247330, 38.919918, 38.186104>,  <30.808413, 38.606163, 37.938538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247330, 38.919918, 38.186104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261787, 38.579861, 38.396225>,  <30.270462, 38.375824, 38.522297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261787, 38.579861, 38.396225>,  <30.247330, 38.919918, 38.186104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261787, 38.579861, 38.396225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016631, 0.525065, 0.850900,
		-0.999208, -0.039490, 0.004838,
		0.036143, -0.850146, 0.525306,
		30.272631, 38.324818, 38.553818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872917, 39.073933, 38.807346>,  <30.247330, 38.919918, 38.186104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872917, 39.073933, 38.807346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072775, 38.739273, 38.897129>,  <30.192690, 38.538479, 38.951000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072775, 38.739273, 38.897129>,  <29.872917, 39.073933, 38.807346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072775, 38.739273, 38.897129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255954, 0.390144, 0.884463,
		-0.827553, -0.384465, 0.409075,
		0.499643, -0.836645, 0.224459,
		30.222668, 38.488281, 38.964466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540684, 38.797302, 39.378372>,  <29.872917, 39.073933, 38.807346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540684, 38.797302, 39.378372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923115, 38.680767, 39.391254>,  <30.152573, 38.610844, 39.398983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923115, 38.680767, 39.391254>,  <29.540684, 38.797302, 39.378372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923115, 38.680767, 39.391254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158256, 0.605550, 0.779913,
		-0.246720, -0.740561, 0.625059,
		0.956077, -0.291340, 0.032203,
		30.209938, 38.593365, 39.400917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654675, 38.739304, 40.050106>,  <29.540684, 38.797302, 39.378372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654675, 38.739304, 40.050106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027891, 38.727375, 39.906696>,  <30.251822, 38.720219, 39.820652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027891, 38.727375, 39.906696>,  <29.654675, 38.739304, 40.050106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027891, 38.727375, 39.906696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315460, 0.546926, 0.775472,
		0.172957, -0.836650, 0.519715,
		0.933044, -0.029826, -0.358525,
		30.307804, 38.718426, 39.799137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903563, 38.376785, 40.574974>,  <29.654675, 38.739304, 40.050106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903563, 38.376785, 40.574974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180038, 38.579674, 40.369068>,  <30.345924, 38.701405, 40.245525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180038, 38.579674, 40.369068>,  <29.903563, 38.376785, 40.574974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180038, 38.579674, 40.369068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296966, 0.450041, 0.842184,
		0.658838, -0.734977, 0.160437,
		0.691190, 0.507219, -0.514768,
		30.387396, 38.731838, 40.214638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608589, 38.182796, 40.765877>,  <29.903563, 38.376785, 40.574974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608589, 38.182796, 40.765877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573759, 38.565418, 40.654575>,  <30.552862, 38.794991, 40.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573759, 38.565418, 40.654575>,  <30.608589, 38.182796, 40.765877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573759, 38.565418, 40.654575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382471, 0.290011, 0.877274,
		0.919856, -0.030037, -0.391105,
		-0.087074, 0.956552, -0.278256,
		30.547636, 38.852383, 40.571098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338629, 38.401508, 41.035389>,  <30.608589, 38.182796, 40.765877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338629, 38.401508, 41.035389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115273, 38.715187, 40.927139>,  <30.981258, 38.903393, 40.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115273, 38.715187, 40.927139>,  <31.338629, 38.401508, 41.035389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115273, 38.715187, 40.927139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287334, 0.488851, 0.823689,
		0.778229, 0.382180, -0.498295,
		-0.558390, 0.784196, -0.270625,
		30.947756, 38.950447, 40.845951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631392, 38.857265, 41.390091>,  <31.338629, 38.401508, 41.035389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631392, 38.857265, 41.390091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319750, 39.087902, 41.291672>,  <31.132765, 39.226284, 41.232620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319750, 39.087902, 41.291672>,  <31.631392, 38.857265, 41.390091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319750, 39.087902, 41.291672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066943, 0.466761, 0.881847,
		0.623307, 0.670581, -0.402255,
		-0.779106, 0.576589, -0.246045,
		31.086018, 39.260880, 41.217857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797895, 39.592281, 41.533718>,  <31.631392, 38.857265, 41.390091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797895, 39.592281, 41.533718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399687, 39.562096, 41.510948>,  <31.160761, 39.543983, 41.497284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399687, 39.562096, 41.510948>,  <31.797895, 39.592281, 41.533718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399687, 39.562096, 41.510948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091472, 0.617102, 0.781549,
		-0.023848, 0.783256, -0.621241,
		-0.995522, -0.075464, -0.056929,
		31.101030, 39.539455, 41.493870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484642, 40.286762, 41.759644>,  <31.797895, 39.592281, 41.533718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484642, 40.286762, 41.759644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203636, 40.005276, 41.802074>,  <31.035032, 39.836384, 41.827534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203636, 40.005276, 41.802074>,  <31.484642, 40.286762, 41.759644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203636, 40.005276, 41.802074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282256, 0.412337, 0.866204,
		-0.653303, 0.578581, -0.488302,
		-0.702514, -0.703720, 0.106073,
		30.992882, 39.794159, 41.833897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796183, 40.618568, 42.017742>,  <31.484642, 40.286762, 41.759644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796183, 40.618568, 42.017742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764482, 40.229900, 42.106800>,  <30.745462, 39.996700, 42.160236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764482, 40.229900, 42.106800>,  <30.796183, 40.618568, 42.017742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764482, 40.229900, 42.106800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448249, 0.234230, 0.862675,
		-0.890389, -0.031433, -0.454115,
		-0.079251, -0.971673, 0.222645,
		30.740707, 39.938400, 42.173595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244965, 40.612675, 42.483440>,  <30.796183, 40.618568, 42.017742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244965, 40.612675, 42.483440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422340, 40.256260, 42.522255>,  <30.528767, 40.042412, 42.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422340, 40.256260, 42.522255>,  <30.244965, 40.612675, 42.483440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422340, 40.256260, 42.522255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239359, -0.013397, 0.970839,
		-0.863753, -0.453733, -0.219218,
		0.443439, -0.891037, 0.097033,
		30.555372, 39.988949, 42.551365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033327, 40.349857, 43.120621>,  <30.244965, 40.612675, 42.483440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033327, 40.349857, 43.120621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311378, 40.066105, 43.074013>,  <30.478209, 39.895855, 43.046047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311378, 40.066105, 43.074013>,  <30.033327, 40.349857, 43.120621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311378, 40.066105, 43.074013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002288, -0.164268, 0.986413,
		-0.718883, -0.685416, -0.115810,
		0.695127, -0.709381, -0.116521,
		30.519917, 39.853291, 43.039055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773033, 39.701427, 43.428783>,  <30.033327, 40.349857, 43.120621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773033, 39.701427, 43.428783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172729, 39.714481, 43.420284>,  <30.412548, 39.722313, 43.415184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172729, 39.714481, 43.420284>,  <29.773033, 39.701427, 43.428783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172729, 39.714481, 43.420284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026929, -0.184823, 0.982403,
		0.028137, -0.982230, -0.185562,
		0.999241, 0.032639, -0.021250,
		30.472502, 39.724274, 43.413910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879215, 39.138409, 43.885937>,  <29.773033, 39.701427, 43.428783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879215, 39.138409, 43.885937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216007, 39.353935, 43.874977>,  <30.418081, 39.483250, 43.868401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216007, 39.353935, 43.874977>,  <29.879215, 39.138409, 43.885937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216007, 39.353935, 43.874977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044563, 0.120075, 0.991764,
		0.537667, -0.833823, 0.125112,
		0.841979, 0.538815, -0.027403,
		30.468601, 39.515579, 43.866756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424654, 38.723198, 44.272095>,  <29.879215, 39.138409, 43.885937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424654, 38.723198, 44.272095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510078, 39.113972, 44.272175>,  <30.561333, 39.348434, 44.272221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510078, 39.113972, 44.272175>,  <30.424654, 38.723198, 44.272095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510078, 39.113972, 44.272175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071159, -0.015756, 0.997341,
		0.974335, -0.212979, -0.072882,
		0.213561, 0.976930, 0.000196,
		30.574146, 39.407051, 44.272232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972992, 38.749443, 44.717110>,  <30.424654, 38.723198, 44.272095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972992, 38.749443, 44.717110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857471, 39.131268, 44.687714>,  <30.788158, 39.360363, 44.670074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857471, 39.131268, 44.687714>,  <30.972992, 38.749443, 44.717110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857471, 39.131268, 44.687714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204670, 0.136544, 0.969260,
		0.935256, 0.264883, -0.234805,
		-0.288802, 0.954564, -0.073490,
		30.770830, 39.417637, 44.665665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552099, 39.067745, 45.022045>,  <30.972992, 38.749443, 44.717110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552099, 39.067745, 45.022045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235397, 39.308216, 45.065346>,  <31.045376, 39.452499, 45.091324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235397, 39.308216, 45.065346>,  <31.552099, 39.067745, 45.022045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235397, 39.308216, 45.065346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232126, 0.132192, 0.963661,
		0.565017, 0.788109, -0.244211,
		-0.791753, 0.601173, 0.108250,
		30.997871, 39.488567, 45.097820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816284, 39.729359, 45.181614>,  <31.552099, 39.067745, 45.022045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816284, 39.729359, 45.181614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442310, 39.710442, 45.322273>,  <31.217926, 39.699089, 45.406670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442310, 39.710442, 45.322273>,  <31.816284, 39.729359, 45.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442310, 39.710442, 45.322273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335491, 0.204762, 0.919521,
		-0.115495, 0.977668, -0.175572,
		-0.934937, -0.047297, 0.351648,
		31.161829, 39.696251, 45.427769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706673, 40.497971, 45.489674>,  <31.816284, 39.729359, 45.181614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706673, 40.497971, 45.489674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463667, 40.212376, 45.628895>,  <31.317863, 40.041019, 45.712429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463667, 40.212376, 45.628895>,  <31.706673, 40.497971, 45.489674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463667, 40.212376, 45.628895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298957, 0.200436, 0.932979,
		-0.735902, 0.670852, 0.091685,
		-0.607514, -0.713991, 0.348057,
		31.281412, 39.998177, 45.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342281, 40.852150, 45.895500>,  <31.706673, 40.497971, 45.489674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342281, 40.852150, 45.895500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273682, 40.474548, 46.008244>,  <31.232521, 40.247986, 46.075890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273682, 40.474548, 46.008244>,  <31.342281, 40.852150, 45.895500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273682, 40.474548, 46.008244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131192, 0.261666, 0.956201,
		-0.976410, 0.200967, 0.078969,
		-0.171501, -0.944004, 0.281858,
		31.222231, 40.191349, 46.092800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855860, 40.982075, 46.332172>,  <31.342281, 40.852150, 45.895500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855860, 40.982075, 46.332172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002144, 40.615097, 46.394852>,  <31.089914, 40.394913, 46.432461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002144, 40.615097, 46.394852>,  <30.855860, 40.982075, 46.332172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002144, 40.615097, 46.394852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031442, 0.180446, 0.983082,
		-0.930198, -0.354596, 0.094837,
		0.365710, -0.917443, 0.156702,
		31.111856, 40.339863, 46.441864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577696, 40.836113, 46.959202>,  <30.855860, 40.982075, 46.332172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577696, 40.836113, 46.959202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875702, 40.570526, 46.933609>,  <31.054506, 40.411175, 46.918255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875702, 40.570526, 46.933609>,  <30.577696, 40.836113, 46.959202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875702, 40.570526, 46.933609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093899, 0.009425, 0.995537,
		-0.660405, -0.747699, 0.069368,
		0.745016, -0.663972, -0.063984,
		31.099207, 40.371334, 46.914413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619823, 40.464714, 47.633057>,  <30.577696, 40.836113, 46.959202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619823, 40.464714, 47.633057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980776, 40.388535, 47.478428>,  <31.197348, 40.342827, 47.385651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980776, 40.388535, 47.478428>,  <30.619823, 40.464714, 47.633057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980776, 40.388535, 47.478428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362815, -0.148310, 0.919984,
		-0.232543, -0.970429, -0.064734,
		0.902380, -0.190450, -0.386575,
		31.251490, 40.331402, 47.362457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889452, 39.870205, 47.987865>,  <30.619823, 40.464714, 47.633057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889452, 39.870205, 47.987865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181400, 40.103142, 47.844662>,  <31.356569, 40.242905, 47.758739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181400, 40.103142, 47.844662>,  <30.889452, 39.870205, 47.987865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181400, 40.103142, 47.844662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411677, 0.043646, 0.910284,
		0.545722, -0.811772, -0.207881,
		0.729870, 0.582342, -0.358006,
		31.400362, 40.277843, 47.737259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519222, 39.592113, 48.270084>,  <30.889452, 39.870205, 47.987865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519222, 39.592113, 48.270084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606318, 39.967422, 48.162579>,  <31.658575, 40.192608, 48.098076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606318, 39.967422, 48.162579>,  <31.519222, 39.592113, 48.270084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606318, 39.967422, 48.162579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557599, 0.106421, 0.823261,
		0.801046, -0.329115, -0.500008,
		0.217736, 0.938274, -0.268762,
		31.671638, 40.248905, 48.081951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129883, 39.650349, 48.591606>,  <31.519222, 39.592113, 48.270084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129883, 39.650349, 48.591606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043854, 40.032253, 48.509453>,  <31.992237, 40.261395, 48.460163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043854, 40.032253, 48.509453>,  <32.129883, 39.650349, 48.591606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043854, 40.032253, 48.509453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435926, 0.282040, 0.854648,
		0.873908, 0.094279, -0.476862,
		-0.215069, 0.954759, -0.205379,
		31.979334, 40.318680, 48.447838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704548, 39.926056, 48.667488>,  <32.129883, 39.650349, 48.591606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704548, 39.926056, 48.667488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433605, 40.216358, 48.715595>,  <32.271038, 40.390541, 48.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433605, 40.216358, 48.715595>,  <32.704548, 39.926056, 48.667488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433605, 40.216358, 48.715595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364740, 0.189339, 0.911656,
		0.638866, 0.661386, -0.392961,
		-0.677359, 0.725754, 0.120272,
		32.230396, 40.434086, 48.751678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015873, 40.276638, 49.078362>,  <32.704548, 39.926056, 48.667488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015873, 40.276638, 49.078362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636330, 40.397831, 49.113850>,  <32.408604, 40.470547, 49.135143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636330, 40.397831, 49.113850>,  <33.015873, 40.276638, 49.078362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636330, 40.397831, 49.113850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119379, 0.084178, 0.989274,
		0.292266, 0.949270, -0.116043,
		-0.948857, 0.302984, 0.088720,
		32.351673, 40.488728, 49.140465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085098, 40.939522, 49.295151>,  <33.015873, 40.276638, 49.078362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085098, 40.939522, 49.295151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734245, 40.764801, 49.374992>,  <32.523735, 40.659969, 49.422897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734245, 40.764801, 49.374992>,  <33.085098, 40.939522, 49.295151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734245, 40.764801, 49.374992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216508, 0.011332, 0.976215,
		-0.428673, 0.899487, 0.084631,
		-0.877134, -0.436801, 0.199604,
		32.471104, 40.633762, 49.434875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013603, 41.230484, 49.851562>,  <33.085098, 40.939522, 49.295151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013603, 41.230484, 49.851562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726151, 40.955486, 49.893345>,  <32.553677, 40.790485, 49.918415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726151, 40.955486, 49.893345>,  <33.013603, 41.230484, 49.851562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726151, 40.955486, 49.893345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211080, -0.072535, 0.974774,
		-0.662578, 0.722555, 0.197243,
		-0.718634, -0.687498, 0.104457,
		32.510559, 40.749237, 49.924683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487164, 41.463146, 50.286873>,  <33.013603, 41.230484, 49.851562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487164, 41.463146, 50.286873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428650, 41.068142, 50.310295>,  <32.393543, 40.831139, 50.324348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428650, 41.068142, 50.310295>,  <32.487164, 41.463146, 50.286873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428650, 41.068142, 50.310295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139785, 0.037960, 0.989454,
		-0.979317, 0.152925, 0.132486,
		-0.146283, -0.987508, 0.058552,
		32.384766, 40.771889, 50.327862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977180, 41.267776, 50.903206>,  <32.487164, 41.463146, 50.286873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977180, 41.267776, 50.903206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198868, 40.935772, 50.878166>,  <32.331879, 40.736568, 50.863144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198868, 40.935772, 50.878166>,  <31.977180, 41.267776, 50.903206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198868, 40.935772, 50.878166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017519, -0.086821, 0.996070,
		-0.832188, -0.550941, -0.062658,
		0.554216, -0.830016, -0.062599,
		32.365131, 40.686768, 50.859386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739916, 40.802433, 51.390202>,  <31.977180, 41.267776, 50.903206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739916, 40.802433, 51.390202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114460, 40.677074, 51.326942>,  <32.339188, 40.601860, 51.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114460, 40.677074, 51.326942>,  <31.739916, 40.802433, 51.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114460, 40.677074, 51.326942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188851, 0.069951, 0.979511,
		-0.295911, -0.947043, 0.124684,
		0.936361, -0.313394, -0.158151,
		32.395367, 40.583057, 51.279495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927080, 40.385860, 51.910931>,  <31.739916, 40.802433, 51.390202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927080, 40.385860, 51.910931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286057, 40.502022, 51.778111>,  <32.501442, 40.571720, 51.698418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286057, 40.502022, 51.778111>,  <31.927080, 40.385860, 51.910931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286057, 40.502022, 51.778111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335886, 0.038113, 0.941131,
		0.285967, -0.956144, -0.063339,
		0.897443, 0.290407, -0.332055,
		32.555290, 40.589146, 51.678493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385963, 39.967354, 52.371456>,  <31.927080, 40.385860, 51.910931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385963, 39.967354, 52.371456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530182, 40.327930, 52.275612>,  <32.616714, 40.544277, 52.218105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530182, 40.327930, 52.275612>,  <32.385963, 39.967354, 52.371456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530182, 40.327930, 52.275612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179722, 0.184936, 0.966177,
		0.915263, -0.391415, -0.095330,
		0.360546, 0.901439, -0.239611,
		32.638348, 40.598362, 52.203728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706696, 40.205532, 52.981888>,  <32.385963, 39.967354, 52.371456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706696, 40.205532, 52.981888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678993, 40.524323, 52.741875>,  <32.662373, 40.715595, 52.597866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678993, 40.524323, 52.741875>,  <32.706696, 40.205532, 52.981888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678993, 40.524323, 52.741875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247381, 0.596410, 0.763608,
		0.966440, -0.095551, -0.238462,
		-0.069258, 0.796972, -0.600032,
		32.658215, 40.763412, 52.561867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415421, 40.687202, 53.001198>,  <32.706696, 40.205532, 52.981888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415421, 40.687202, 53.001198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061115, 40.862068, 52.938828>,  <32.848534, 40.966988, 52.901405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061115, 40.862068, 52.938828>,  <33.415421, 40.687202, 53.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061115, 40.862068, 52.938828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207942, 0.674124, 0.708744,
		0.414950, 0.595356, -0.688018,
		-0.885764, 0.437161, -0.155928,
		32.795387, 40.993217, 52.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481136, 41.378792, 52.696640>,  <33.415421, 40.687202, 53.001198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481136, 41.378792, 52.696640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165409, 41.332615, 52.937851>,  <32.975971, 41.304909, 53.082577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165409, 41.332615, 52.937851>,  <33.481136, 41.378792, 52.696640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165409, 41.332615, 52.937851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415890, 0.621993, 0.663446,
		-0.451670, 0.774466, -0.442941,
		-0.789322, -0.115444, 0.603028,
		32.928612, 41.297981, 53.118759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556629, 40.749619, 52.269390>,  <33.481136, 41.378792, 52.696640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556629, 40.749619, 52.269390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644154, 40.362148, 52.222408>,  <33.696671, 40.129665, 52.194221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644154, 40.362148, 52.222408>,  <33.556629, 40.749619, 52.269390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644154, 40.362148, 52.222408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248897, 0.171794, -0.953172,
		0.943489, 0.179333, 0.278690,
		0.218813, -0.968673, -0.117450,
		33.709797, 40.071545, 52.187172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983627, 40.686031, 51.625675>,  <33.556629, 40.749619, 52.269390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983627, 40.686031, 51.625675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898315, 40.300987, 51.692474>,  <33.847130, 40.069962, 51.732555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898315, 40.300987, 51.692474>,  <33.983627, 40.686031, 51.625675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898315, 40.300987, 51.692474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054671, -0.182422, -0.981699,
		0.975460, -0.200248, 0.091534,
		-0.213281, -0.962613, 0.166997,
		33.834332, 40.012203, 51.742573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357220, 40.226315, 51.327549>,  <33.983627, 40.686031, 51.625675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357220, 40.226315, 51.327549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991959, 40.066700, 51.360828>,  <33.772800, 39.970932, 51.380798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991959, 40.066700, 51.360828>,  <34.357220, 40.226315, 51.327549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991959, 40.066700, 51.360828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084111, -0.384185, -0.919417,
		0.398849, -0.832568, 0.384383,
		-0.913151, -0.399039, 0.083203,
		33.718014, 39.946987, 51.385788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331154, 39.474289, 51.276497>,  <34.357220, 40.226315, 51.327549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331154, 39.474289, 51.276497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995468, 39.627525, 51.122108>,  <33.794056, 39.719467, 51.029476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995468, 39.627525, 51.122108>,  <34.331154, 39.474289, 51.276497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995468, 39.627525, 51.122108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016362, -0.727217, -0.686212,
		-0.543560, -0.569562, 0.616556,
		-0.839211, 0.383086, -0.385968,
		33.743706, 39.742451, 51.006317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784988, 38.931759, 51.288971>,  <34.331154, 39.474289, 51.276497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784988, 38.931759, 51.288971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708832, 39.191818, 50.994743>,  <33.663139, 39.347855, 50.818207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708832, 39.191818, 50.994743>,  <33.784988, 38.931759, 51.288971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708832, 39.191818, 50.994743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004757, -0.749876, -0.661562,
		-0.981698, -0.122454, 0.145859,
		-0.190387, 0.650147, -0.735569,
		33.651714, 39.386864, 50.774075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077415, 38.733921, 51.027447>,  <33.784988, 38.931759, 51.288971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077415, 38.733921, 51.027447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266102, 38.938530, 50.740162>,  <33.379314, 39.061295, 50.567791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266102, 38.938530, 50.740162>,  <33.077415, 38.733921, 51.027447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266102, 38.938530, 50.740162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200346, -0.731050, -0.652248,
		-0.858689, 0.451566, -0.242365,
		0.471714, 0.511521, -0.718214,
		33.407616, 39.091988, 50.524696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568851, 38.757782, 50.501984>,  <33.077415, 38.733921, 51.027447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568851, 38.757782, 50.501984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910976, 38.845997, 50.314453>,  <33.116253, 38.898926, 50.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910976, 38.845997, 50.314453>,  <32.568851, 38.757782, 50.501984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910976, 38.845997, 50.314453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283102, -0.558918, -0.779400,
		-0.433925, 0.799358, -0.415616,
		0.855314, 0.220539, -0.468828,
		33.167572, 38.912159, 50.173805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387234, 38.883156, 49.824364>,  <32.568851, 38.757782, 50.501984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387234, 38.883156, 49.824364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773479, 38.779770, 49.835571>,  <33.005226, 38.717739, 49.842297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773479, 38.779770, 49.835571>,  <32.387234, 38.883156, 49.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773479, 38.779770, 49.835571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135496, -0.592301, -0.794242,
		0.221874, 0.763137, -0.606955,
		0.965615, -0.258462, 0.028015,
		33.063164, 38.702232, 49.843975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398632, 38.783428, 49.091511>,  <32.387234, 38.883156, 49.824364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398632, 38.783428, 49.091511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743423, 38.628613, 49.222473>,  <32.950298, 38.535721, 49.301052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743423, 38.628613, 49.222473>,  <32.398632, 38.783428, 49.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743423, 38.628613, 49.222473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012301, -0.661617, -0.749741,
		0.506797, 0.642232, -0.575060,
		0.861977, -0.387041, 0.327405,
		33.002018, 38.512501, 49.320694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903912, 38.822388, 48.524490>,  <32.398632, 38.783428, 49.091511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903912, 38.822388, 48.524490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007774, 38.524750, 48.770714>,  <33.070091, 38.346169, 48.918446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007774, 38.524750, 48.770714>,  <32.903912, 38.822388, 48.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007774, 38.524750, 48.770714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046358, -0.646288, -0.761684,
		0.964588, 0.169240, -0.202308,
		0.259657, -0.744090, 0.615555,
		33.085670, 38.301521, 48.955379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399162, 38.430969, 48.124783>,  <32.903912, 38.822388, 48.524490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399162, 38.430969, 48.124783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308483, 38.135391, 48.378574>,  <33.254074, 37.958046, 48.530849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308483, 38.135391, 48.378574>,  <33.399162, 38.430969, 48.124783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308483, 38.135391, 48.378574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284611, -0.673270, -0.682425,
		0.931453, 0.025877, 0.362941,
		-0.226698, -0.738944, 0.634484,
		33.240475, 37.913708, 48.568920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001892, 37.944996, 48.054466>,  <33.399162, 38.430969, 48.124783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001892, 37.944996, 48.054466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688190, 37.756714, 48.216148>,  <33.499969, 37.643745, 48.313160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688190, 37.756714, 48.216148>,  <34.001892, 37.944996, 48.054466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688190, 37.756714, 48.216148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020705, -0.670981, -0.741186,
		0.620092, -0.572910, 0.535967,
		-0.784256, -0.470700, 0.404207,
		33.452915, 37.615505, 48.337410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306671, 37.284786, 48.108017>,  <34.001892, 37.944996, 48.054466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306671, 37.284786, 48.108017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910053, 37.247414, 48.144047>,  <33.672085, 37.224991, 48.165665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910053, 37.247414, 48.144047>,  <34.306671, 37.284786, 48.108017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910053, 37.247414, 48.144047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001067, -0.699927, -0.714214,
		0.129775, -0.708077, 0.694107,
		-0.991543, -0.093428, 0.090077,
		33.612591, 37.219387, 48.171070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195095, 36.547890, 47.894016>,  <34.306671, 37.284786, 48.108017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195095, 36.547890, 47.894016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875271, 36.786133, 47.863155>,  <33.683376, 36.929077, 47.844639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875271, 36.786133, 47.863155>,  <34.195095, 36.547890, 47.894016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875271, 36.786133, 47.863155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207818, -0.394896, -0.894913,
		-0.563483, -0.699505, 0.439522,
		-0.799561, 0.595608, -0.077148,
		33.635403, 36.964817, 47.840012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580177, 36.078949, 47.804512>,  <34.195095, 36.547890, 47.894016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580177, 36.078949, 47.804512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437214, 36.424461, 47.662445>,  <33.351437, 36.631767, 47.577206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437214, 36.424461, 47.662445>,  <33.580177, 36.078949, 47.804512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437214, 36.424461, 47.662445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088084, -0.409764, -0.907929,
		-0.929787, -0.293213, 0.222537,
		-0.357404, 0.863782, -0.355166,
		33.329994, 36.683598, 47.555897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953053, 36.010029, 47.355736>,  <33.580177, 36.078949, 47.804512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953053, 36.010029, 47.355736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101917, 36.353645, 47.215145>,  <33.191238, 36.559814, 47.130791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101917, 36.353645, 47.215145>,  <32.953053, 36.010029, 47.355736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101917, 36.353645, 47.215145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203618, -0.293887, -0.933900,
		-0.905556, 0.419133, 0.065542,
		0.372166, 0.859045, -0.351475,
		33.213566, 36.611359, 47.109703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445320, 36.137592, 46.913628>,  <32.953053, 36.010029, 47.355736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445320, 36.137592, 46.913628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786804, 36.326473, 46.825809>,  <32.991695, 36.439800, 46.773117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786804, 36.326473, 46.825809>,  <32.445320, 36.137592, 46.913628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786804, 36.326473, 46.825809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119191, -0.233222, -0.965091,
		-0.506921, 0.850078, -0.142823,
		0.853712, 0.472202, -0.219547,
		33.042919, 36.468132, 46.759945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220665, 36.468571, 46.277489>,  <32.445320, 36.137592, 46.913628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220665, 36.468571, 46.277489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620590, 36.463852, 46.283684>,  <32.860546, 36.461021, 46.287399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620590, 36.463852, 46.283684>,  <32.220665, 36.468571, 46.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620590, 36.463852, 46.283684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014882, -0.049523, -0.998662,
		0.012544, 0.998703, -0.049338,
		0.999811, -0.011793, 0.015484,
		32.920532, 36.460316, 46.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399933, 36.871494, 45.703697>,  <32.220665, 36.468571, 46.277489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399933, 36.871494, 45.703697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750397, 36.689907, 45.768517>,  <32.960674, 36.580956, 45.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750397, 36.689907, 45.768517>,  <32.399933, 36.871494, 45.703697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750397, 36.689907, 45.768517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119474, -0.121161, -0.985417,
		0.466980, 0.882742, -0.051919,
		0.876159, -0.453967, 0.162045,
		33.013245, 36.553719, 45.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921207, 37.149776, 45.303467>,  <32.399933, 36.871494, 45.703697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921207, 37.149776, 45.303467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013531, 36.765743, 45.366661>,  <33.068924, 36.535324, 45.404575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013531, 36.765743, 45.366661>,  <32.921207, 37.149776, 45.303467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013531, 36.765743, 45.366661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022952, -0.167695, -0.985572,
		0.972728, 0.223853, -0.060741,
		0.230809, -0.960088, 0.157984,
		33.082775, 36.477718, 45.414055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348587, 37.052681, 44.799637>,  <32.921207, 37.149776, 45.303467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348587, 37.052681, 44.799637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254387, 36.688774, 44.936378>,  <33.197868, 36.470428, 45.018421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254387, 36.688774, 44.936378>,  <33.348587, 37.052681, 44.799637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254387, 36.688774, 44.936378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103086, -0.326378, -0.939601,
		0.966392, -0.256515, -0.016922,
		-0.235499, -0.909767, 0.341852,
		33.183739, 36.415844, 45.038933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729622, 36.696789, 44.384289>,  <33.348587, 37.052681, 44.799637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729622, 36.696789, 44.384289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454533, 36.444099, 44.527382>,  <33.289478, 36.292488, 44.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454533, 36.444099, 44.527382>,  <33.729622, 36.696789, 44.384289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454533, 36.444099, 44.527382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064750, -0.437420, -0.896923,
		0.723083, -0.639995, 0.259919,
		-0.687720, -0.631720, 0.357731,
		33.248215, 36.254585, 44.634701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900490, 36.076096, 44.075462>,  <33.729622, 36.696789, 44.384289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900490, 36.076096, 44.075462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526287, 36.041508, 44.212486>,  <33.301765, 36.020756, 44.294701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526287, 36.041508, 44.212486>,  <33.900490, 36.076096, 44.075462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526287, 36.041508, 44.212486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238890, -0.559533, -0.793634,
		0.260297, -0.824285, 0.502791,
		-0.935509, -0.086469, 0.342558,
		33.245636, 36.015568, 44.315254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641937, 35.339363, 44.049980>,  <33.900490, 36.076096, 44.075462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641937, 35.339363, 44.049980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298775, 35.544765, 44.042900>,  <33.092876, 35.668007, 44.038654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298775, 35.544765, 44.042900>,  <33.641937, 35.339363, 44.049980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298775, 35.544765, 44.042900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302118, -0.532002, -0.791011,
		-0.415604, -0.673264, 0.611546,
		-0.857903, 0.513506, -0.017697,
		33.041405, 35.698818, 44.037590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106514, 34.818996, 43.933868>,  <33.641937, 35.339363, 44.049980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106514, 34.818996, 43.933868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974499, 35.170792, 43.796715>,  <32.895290, 35.381870, 43.714420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974499, 35.170792, 43.796715>,  <33.106514, 34.818996, 43.933868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974499, 35.170792, 43.796715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342952, -0.450135, -0.824478,
		-0.879465, -0.154515, 0.450184,
		-0.330038, 0.879491, -0.342886,
		32.875488, 35.434639, 43.693848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501026, 34.651890, 43.605320>,  <33.106514, 34.818996, 43.933868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501026, 34.651890, 43.605320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575897, 35.019794, 43.467327>,  <32.620819, 35.240536, 43.384533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575897, 35.019794, 43.467327>,  <32.501026, 34.651890, 43.605320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575897, 35.019794, 43.467327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304474, -0.279571, -0.910569,
		-0.933949, 0.275474, 0.227713,
		0.187176, 0.919758, -0.344980,
		32.632050, 35.295723, 43.363834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945044, 34.754055, 43.277508>,  <32.501026, 34.651890, 43.605320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945044, 34.754055, 43.277508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221134, 35.007671, 43.138039>,  <32.386787, 35.159843, 43.054356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221134, 35.007671, 43.138039>,  <31.945044, 34.754055, 43.277508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221134, 35.007671, 43.138039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260860, -0.231424, -0.937227,
		-0.674935, 0.737856, 0.005661,
		0.690228, 0.634044, -0.348674,
		32.428204, 35.197884, 43.033436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634256, 35.123734, 42.715130>,  <31.945044, 34.754055, 43.277508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634256, 35.123734, 42.715130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030922, 35.138603, 42.665787>,  <32.268921, 35.147526, 42.636181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030922, 35.138603, 42.665787>,  <31.634256, 35.123734, 42.715130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030922, 35.138603, 42.665787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118675, -0.109216, -0.986908,
		-0.050162, 0.993323, -0.103894,
		0.991665, 0.037175, -0.123361,
		32.328423, 35.149757, 42.628777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698477, 35.466915, 42.157104>,  <31.634256, 35.123734, 42.715130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698477, 35.466915, 42.157104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064793, 35.307587, 42.177769>,  <32.284584, 35.211990, 42.190166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064793, 35.307587, 42.177769>,  <31.698477, 35.466915, 42.157104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064793, 35.307587, 42.177769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050852, -0.242566, -0.968801,
		0.398424, 0.884592, -0.242395,
		0.915790, -0.398320, 0.051660,
		32.339531, 35.188091, 42.193268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954905, 35.679359, 41.527641>,  <31.698477, 35.466915, 42.157104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954905, 35.679359, 41.527641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234009, 35.408791, 41.621941>,  <32.401470, 35.246449, 41.678520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234009, 35.408791, 41.621941>,  <31.954905, 35.679359, 41.527641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234009, 35.408791, 41.621941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215058, -0.116110, -0.969674,
		0.683284, 0.727302, 0.064453,
		0.697763, -0.676424, 0.235748,
		32.443336, 35.205864, 41.692665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609592, 35.858574, 41.241909>,  <31.954905, 35.679359, 41.527641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609592, 35.858574, 41.241909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582397, 35.462063, 41.287060>,  <32.566082, 35.224155, 41.314148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582397, 35.462063, 41.287060>,  <32.609592, 35.858574, 41.241909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582397, 35.462063, 41.287060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086951, -0.106819, -0.990469,
		0.993890, -0.077154, -0.078931,
		-0.067987, -0.991281, 0.112875,
		32.562000, 35.164680, 41.320923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934971, 35.568607, 40.708965>,  <32.609592, 35.858574, 41.241909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934971, 35.568607, 40.708965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696381, 35.277397, 40.844135>,  <32.553226, 35.102673, 40.925240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696381, 35.277397, 40.844135>,  <32.934971, 35.568607, 40.708965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696381, 35.277397, 40.844135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259483, -0.223504, -0.939529,
		0.759527, -0.648096, -0.055594,
		-0.596479, -0.728023, 0.337927,
		32.517437, 35.058990, 40.945515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021599, 35.153088, 40.198853>,  <32.934971, 35.568607, 40.708965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021599, 35.153088, 40.198853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703129, 34.995071, 40.382175>,  <32.512047, 34.900261, 40.492168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703129, 34.995071, 40.382175>,  <33.021599, 35.153088, 40.198853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703129, 34.995071, 40.382175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362094, -0.295767, -0.883974,
		0.484757, -0.869750, 0.092441,
		-0.796177, -0.395040, 0.458307,
		32.464275, 34.876560, 40.519669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844707, 34.556999, 39.854294>,  <33.021599, 35.153088, 40.198853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844707, 34.556999, 39.854294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511662, 34.622849, 40.065823>,  <32.311832, 34.662357, 40.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511662, 34.622849, 40.065823>,  <32.844707, 34.556999, 39.854294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511662, 34.622849, 40.065823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553633, -0.220510, -0.803035,
		-0.015591, -0.961391, 0.274743,
		-0.832615, 0.164627, 0.528820,
		32.261875, 34.672237, 40.224468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431324, 34.056915, 39.683887>,  <32.844707, 34.556999, 39.854294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431324, 34.056915, 39.683887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184719, 34.342052, 39.817612>,  <32.036758, 34.513134, 39.897846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184719, 34.342052, 39.817612>,  <32.431324, 34.056915, 39.683887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184719, 34.342052, 39.817612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637241, -0.202376, -0.743618,
		-0.462429, -0.671485, 0.579023,
		-0.616509, 0.712848, 0.334314,
		31.999767, 34.555908, 39.917908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734804, 33.833565, 39.619198>,  <32.431324, 34.056915, 39.683887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734804, 33.833565, 39.619198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661600, 34.224335, 39.663231>,  <31.617678, 34.458797, 39.689651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661600, 34.224335, 39.663231>,  <31.734804, 33.833565, 39.619198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661600, 34.224335, 39.663231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677213, -0.044106, -0.734464,
		-0.712664, -0.208961, 0.669660,
		-0.183011, 0.976929, 0.110079,
		31.606697, 34.517414, 39.696255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996460, 33.985302, 39.464043>,  <31.734804, 33.833565, 39.619198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996460, 33.985302, 39.464043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140427, 34.357780, 39.440964>,  <31.226807, 34.581268, 39.427116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140427, 34.357780, 39.440964>,  <30.996460, 33.985302, 39.464043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140427, 34.357780, 39.440964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407403, 0.101234, -0.907620,
		-0.839334, 0.350174, 0.415809,
		0.359919, 0.931198, -0.057693,
		31.248402, 34.637138, 39.423656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478624, 34.310757, 39.139439>,  <30.996460, 33.985302, 39.464043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478624, 34.310757, 39.139439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812044, 34.526379, 39.091080>,  <31.012096, 34.655750, 39.062065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812044, 34.526379, 39.091080>,  <30.478624, 34.310757, 39.139439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812044, 34.526379, 39.091080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281603, 0.226323, -0.932458,
		-0.475282, 0.811296, 0.340450,
		0.833551, 0.539053, -0.120896,
		31.062109, 34.688095, 39.054810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301846, 34.953575, 38.739159>,  <30.478624, 34.310757, 39.139439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301846, 34.953575, 38.739159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688969, 34.891209, 38.660130>,  <30.921244, 34.853790, 38.612713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688969, 34.891209, 38.660130>,  <30.301846, 34.953575, 38.739159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688969, 34.891209, 38.660130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109436, 0.446232, -0.888201,
		0.226645, 0.881231, 0.414806,
		0.967810, -0.155911, -0.197574,
		30.979311, 34.844437, 38.600857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616941, 35.409737, 38.350655>,  <30.301846, 34.953575, 38.739159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616941, 35.409737, 38.350655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916592, 35.159405, 38.263802>,  <31.096382, 35.009205, 38.211689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916592, 35.159405, 38.263802>,  <30.616941, 35.409737, 38.350655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916592, 35.159405, 38.263802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041074, 0.371029, -0.927712,
		0.661154, 0.686054, 0.303653,
		0.749125, -0.625833, -0.217128,
		31.141329, 34.971653, 38.198662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040003, 35.758781, 37.873463>,  <30.616941, 35.409737, 38.350655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040003, 35.758781, 37.873463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152975, 35.380386, 37.809792>,  <31.220758, 35.153347, 37.771591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152975, 35.380386, 37.809792>,  <31.040003, 35.758781, 37.873463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152975, 35.380386, 37.809792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123642, 0.200444, -0.971872,
		0.951287, 0.254804, 0.173576,
		0.282429, -0.945990, -0.159175,
		31.237703, 35.096588, 37.762039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609198, 35.830013, 37.318016>,  <31.040003, 35.758781, 37.873463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609198, 35.830013, 37.318016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468906, 35.455593, 37.306740>,  <31.384731, 35.230942, 37.299973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468906, 35.455593, 37.306740>,  <31.609198, 35.830013, 37.318016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468906, 35.455593, 37.306740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119315, -0.014806, -0.992746,
		0.928846, -0.351546, 0.116878,
		-0.350726, -0.936053, -0.028192,
		31.363689, 35.174778, 37.298283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083847, 35.379265, 36.949993>,  <31.609198, 35.830013, 37.318016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083847, 35.379265, 36.949993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713009, 35.231503, 36.924599>,  <31.490505, 35.142845, 36.909363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713009, 35.231503, 36.924599>,  <32.083847, 35.379265, 36.949993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713009, 35.231503, 36.924599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027305, 0.102373, -0.994371,
		0.373828, -0.923611, -0.084823,
		-0.927096, -0.369407, -0.063489,
		31.434879, 35.120682, 36.905552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569332, 34.807297, 36.911003>,  <32.083847, 35.379265, 36.949993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569332, 34.807297, 36.911003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914169, 34.678276, 36.754669>,  <33.121071, 34.600864, 36.660870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914169, 34.678276, 36.754669>,  <32.569332, 34.807297, 36.911003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914169, 34.678276, 36.754669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343196, -0.195822, 0.918624,
		-0.372836, -0.926075, -0.058119,
		0.862096, -0.322550, -0.390835,
		33.172798, 34.581512, 36.637421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700264, 34.222969, 37.230885>,  <32.569332, 34.807297, 36.911003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700264, 34.222969, 37.230885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065136, 34.331329, 37.107895>,  <33.284058, 34.396347, 37.034103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065136, 34.331329, 37.107895>,  <32.700264, 34.222969, 37.230885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065136, 34.331329, 37.107895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373203, -0.239297, 0.896357,
		0.169247, -0.932389, -0.319383,
		0.912181, 0.270900, -0.307471,
		33.338791, 34.412598, 37.015656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233208, 33.709106, 37.616890>,  <32.700264, 34.222969, 37.230885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233208, 33.709106, 37.616890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440750, 34.027081, 37.491112>,  <33.565273, 34.217865, 37.415646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440750, 34.027081, 37.491112>,  <33.233208, 33.709106, 37.616890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440750, 34.027081, 37.491112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440734, 0.066431, 0.895176,
		0.732493, -0.603051, -0.315886,
		0.518852, 0.794932, -0.314445,
		33.596405, 34.265560, 37.396778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868301, 33.563560, 37.856495>,  <33.233208, 33.709106, 37.616890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868301, 33.563560, 37.856495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865597, 33.958805, 37.795055>,  <33.863972, 34.195950, 37.758190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865597, 33.958805, 37.795055>,  <33.868301, 33.563560, 37.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865597, 33.958805, 37.795055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541063, 0.132794, 0.830432,
		0.840955, -0.077492, -0.535527,
		-0.006763, 0.988110, -0.153602,
		33.863567, 34.255238, 37.748974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575169, 33.708927, 38.023876>,  <33.868301, 33.563560, 37.856495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575169, 33.708927, 38.023876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336376, 34.027489, 38.062572>,  <34.193100, 34.218624, 38.085793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336376, 34.027489, 38.062572>,  <34.575169, 33.708927, 38.023876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336376, 34.027489, 38.062572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461261, 0.242062, 0.853607,
		0.656398, 0.554208, -0.511855,
		-0.596976, 0.796404, 0.096745,
		34.157284, 34.266411, 38.091595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054050, 34.110104, 38.288643>,  <34.575169, 33.708927, 38.023876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054050, 34.110104, 38.288643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686970, 34.250278, 38.363491>,  <34.466721, 34.334385, 38.408401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686970, 34.250278, 38.363491>,  <35.054050, 34.110104, 38.288643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686970, 34.250278, 38.363491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317036, 0.362204, 0.876525,
		0.239394, 0.863713, -0.443498,
		-0.917703, 0.350439, 0.187119,
		34.411659, 34.355412, 38.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252724, 34.731327, 38.475746>,  <35.054050, 34.110104, 38.288643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252724, 34.731327, 38.475746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890747, 34.662823, 38.631569>,  <34.673561, 34.621719, 38.725063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890747, 34.662823, 38.631569>,  <35.252724, 34.731327, 38.475746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890747, 34.662823, 38.631569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330669, 0.293200, 0.897046,
		-0.267851, 0.940586, -0.208695,
		-0.904939, -0.171266, 0.389557,
		34.619267, 34.611443, 38.748436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134308, 35.283760, 39.020473>,  <35.252724, 34.731327, 38.475746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134308, 35.283760, 39.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870754, 34.997715, 39.113838>,  <34.712624, 34.826088, 39.169857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870754, 34.997715, 39.113838>,  <35.134308, 35.283760, 39.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870754, 34.997715, 39.113838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157374, 0.172379, 0.972378,
		-0.735598, 0.677418, -0.001037,
		-0.658885, -0.715116, 0.233409,
		34.673088, 34.783180, 39.183861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872604, 35.553631, 39.517555>,  <35.134308, 35.283760, 39.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872604, 35.553631, 39.517555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758205, 35.172394, 39.557186>,  <34.689564, 34.943653, 39.580963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758205, 35.172394, 39.557186>,  <34.872604, 35.553631, 39.517555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758205, 35.172394, 39.557186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113379, 0.069007, 0.991152,
		-0.951498, 0.294703, 0.088325,
		-0.286000, -0.953094, 0.099074,
		34.672405, 34.886467, 39.586906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346016, 35.582966, 39.976742>,  <34.872604, 35.553631, 39.517555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346016, 35.582966, 39.976742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488380, 35.210003, 40.001858>,  <34.573799, 34.986225, 40.016930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488380, 35.210003, 40.001858>,  <34.346016, 35.582966, 39.976742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488380, 35.210003, 40.001858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075113, 0.095518, 0.992590,
		-0.931497, -0.348556, 0.104032,
		0.355910, -0.932408, 0.062793,
		34.595154, 34.930279, 40.020695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907948, 35.250168, 40.554058>,  <34.346016, 35.582966, 39.976742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907948, 35.250168, 40.554058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216793, 34.997242, 40.528664>,  <34.402100, 34.845486, 40.513428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216793, 34.997242, 40.528664>,  <33.907948, 35.250168, 40.554058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216793, 34.997242, 40.528664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006394, -0.107630, 0.994170,
		-0.635458, -0.767202, -0.087145,
		0.772109, -0.632311, -0.063489,
		34.448425, 34.807549, 40.509617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818352, 34.776123, 41.063969>,  <33.907948, 35.250168, 40.554058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818352, 34.776123, 41.063969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209915, 34.758774, 40.984116>,  <34.444855, 34.748363, 40.936203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209915, 34.758774, 40.984116>,  <33.818352, 34.776123, 41.063969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209915, 34.758774, 40.984116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163697, -0.418118, 0.893522,
		-0.122221, -0.907357, -0.402201,
		0.978910, -0.043368, -0.199634,
		34.503590, 34.745762, 40.924225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097969, 34.169781, 41.395065>,  <33.818352, 34.776123, 41.063969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097969, 34.169781, 41.395065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420013, 34.405415, 41.367405>,  <34.613239, 34.546795, 41.350807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420013, 34.405415, 41.367405>,  <34.097969, 34.169781, 41.395065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420013, 34.405415, 41.367405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173238, -0.122039, 0.977290,
		0.567267, -0.798802, -0.200307,
		0.805107, 0.589086, -0.069154,
		34.661545, 34.582142, 41.346657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601406, 33.858948, 41.794876>,  <34.097969, 34.169781, 41.395065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601406, 33.858948, 41.794876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693882, 34.246231, 41.756657>,  <34.749367, 34.478600, 41.733727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693882, 34.246231, 41.756657>,  <34.601406, 33.858948, 41.794876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693882, 34.246231, 41.756657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132191, 0.066036, 0.989022,
		0.963885, -0.241285, -0.112721,
		0.231193, 0.968205, -0.095547,
		34.763241, 34.536694, 41.727993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890579, 33.993557, 42.437595>,  <34.601406, 33.858948, 41.794876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890579, 33.993557, 42.437595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891769, 34.366276, 42.292412>,  <34.892483, 34.589909, 42.205303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891769, 34.366276, 42.292412>,  <34.890579, 33.993557, 42.437595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891769, 34.366276, 42.292412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232599, 0.352357, 0.906500,
		0.972568, -0.087121, -0.215688,
		0.002976, 0.931802, -0.362956,
		34.892662, 34.645817, 42.183525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478615, 34.246181, 42.621361>,  <34.890579, 33.993557, 42.437595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478615, 34.246181, 42.621361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254025, 34.571629, 42.561012>,  <35.119270, 34.766899, 42.524803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254025, 34.571629, 42.561012>,  <35.478615, 34.246181, 42.621361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254025, 34.571629, 42.561012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315590, 0.379089, 0.869882,
		0.764947, 0.440808, -0.469622,
		-0.561479, 0.813621, -0.150869,
		35.085579, 34.815716, 42.515751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889004, 34.726376, 42.847698>,  <35.478615, 34.246181, 42.621361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889004, 34.726376, 42.847698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523708, 34.887249, 42.873730>,  <35.304531, 34.983772, 42.889347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523708, 34.887249, 42.873730>,  <35.889004, 34.726376, 42.847698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523708, 34.887249, 42.873730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249118, 0.424839, 0.870317,
		0.322382, 0.811022, -0.488173,
		-0.913241, 0.402187, 0.065080,
		35.249737, 35.007904, 42.893253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939110, 35.481953, 42.965412>,  <35.889004, 34.726376, 42.847698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939110, 35.481953, 42.965412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584732, 35.376938, 43.118347>,  <35.372105, 35.313931, 43.210110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584732, 35.376938, 43.118347>,  <35.939110, 35.481953, 42.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584732, 35.376938, 43.118347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159122, 0.602277, 0.782267,
		-0.435645, 0.753882, -0.491808,
		-0.885942, -0.262533, 0.382338,
		35.318951, 35.298180, 43.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771561, 36.082283, 43.391872>,  <35.939110, 35.481953, 42.965412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771561, 36.082283, 43.391872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533974, 35.782356, 43.508469>,  <35.391422, 35.602398, 43.578426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533974, 35.782356, 43.508469>,  <35.771561, 36.082283, 43.391872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533974, 35.782356, 43.508469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023188, 0.346226, 0.937865,
		-0.804153, 0.563823, -0.188261,
		-0.593970, -0.749821, 0.291492,
		35.355782, 35.557411, 43.595917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336365, 36.396503, 43.951744>,  <35.771561, 36.082283, 43.391872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336365, 36.396503, 43.951744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322247, 36.003426, 44.024490>,  <35.313774, 35.767578, 44.068138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322247, 36.003426, 44.024490>,  <35.336365, 36.396503, 43.951744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322247, 36.003426, 44.024490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043239, 0.180304, 0.982660,
		-0.998441, 0.042551, 0.036126,
		-0.035299, -0.982690, 0.181863,
		35.311657, 35.708618, 44.079048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867069, 36.347775, 44.444332>,  <35.336365, 36.396503, 43.951744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867069, 36.347775, 44.444332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028679, 35.982880, 44.471413>,  <35.125645, 35.763943, 44.487663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028679, 35.982880, 44.471413>,  <34.867069, 36.347775, 44.444332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028679, 35.982880, 44.471413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186012, 0.154401, 0.970340,
		-0.895634, -0.379451, 0.232070,
		0.404029, -0.912237, 0.067704,
		35.149887, 35.709209, 44.491722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533768, 36.079006, 44.984207>,  <34.867069, 36.347775, 44.444332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533768, 36.079006, 44.984207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883461, 35.895462, 44.920742>,  <35.093277, 35.785336, 44.882664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883461, 35.895462, 44.920742>,  <34.533768, 36.079006, 44.984207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883461, 35.895462, 44.920742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177894, -0.001328, 0.984049,
		-0.451747, -0.888510, 0.080466,
		0.874230, -0.458856, -0.158660,
		35.145729, 35.757805, 44.873142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599308, 35.554951, 45.520077>,  <34.533768, 36.079006, 44.984207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599308, 35.554951, 45.520077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965763, 35.630676, 45.378735>,  <35.185635, 35.676109, 45.293930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965763, 35.630676, 45.378735>,  <34.599308, 35.554951, 45.520077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965763, 35.630676, 45.378735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356503, 0.018320, 0.934115,
		0.183312, -0.981746, -0.050707,
		0.916135, 0.189312, -0.353354,
		35.240604, 35.687469, 45.272728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030025, 35.091885, 45.830898>,  <34.599308, 35.554951, 45.520077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030025, 35.091885, 45.830898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236176, 35.413380, 45.711979>,  <35.359867, 35.606277, 45.640629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236176, 35.413380, 45.711979>,  <35.030025, 35.091885, 45.830898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236176, 35.413380, 45.711979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305194, 0.152033, 0.940076,
		0.800778, -0.575226, -0.166944,
		0.515375, 0.803742, -0.297300,
		35.390789, 35.654503, 45.622787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628151, 34.987331, 46.064819>,  <35.030025, 35.091885, 45.830898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628151, 34.987331, 46.064819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617683, 35.384792, 46.021072>,  <35.611404, 35.623268, 45.994823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617683, 35.384792, 46.021072>,  <35.628151, 34.987331, 46.064819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617683, 35.384792, 46.021072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337311, 0.111766, 0.934735,
		0.941030, -0.012435, -0.338095,
		-0.026164, 0.993657, -0.109369,
		35.609833, 35.682888, 45.988262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000027, 35.334824, 46.691296>,  <35.628151, 34.987331, 46.064819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000027, 35.334824, 46.691296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821838, 35.662052, 46.545799>,  <35.714924, 35.858391, 46.458500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821838, 35.662052, 46.545799>,  <36.000027, 35.334824, 46.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821838, 35.662052, 46.545799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260500, 0.507143, 0.821551,
		0.856560, 0.271222, -0.439026,
		-0.445471, 0.818074, -0.363745,
		35.688198, 35.907475, 46.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492996, 35.827675, 46.707306>,  <36.000027, 35.334824, 46.691296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492996, 35.827675, 46.707306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136780, 36.009605, 46.703941>,  <35.923050, 36.118763, 46.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136780, 36.009605, 46.703941>,  <36.492996, 35.827675, 46.707306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136780, 36.009605, 46.703941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277792, 0.558359, 0.781708,
		0.360239, 0.693805, -0.623588,
		-0.890539, 0.454829, -0.008409,
		35.869617, 36.146053, 46.701420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612480, 36.625935, 46.715057>,  <36.492996, 35.827675, 46.707306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612480, 36.625935, 46.715057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241913, 36.539677, 46.838512>,  <36.019573, 36.487923, 46.912586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241913, 36.539677, 46.838512>,  <36.612480, 36.625935, 46.715057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241913, 36.539677, 46.838512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092579, 0.664096, 0.741893,
		-0.364946, 0.715874, -0.595264,
		-0.926414, -0.215642, 0.308634,
		35.963989, 36.474983, 46.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489841, 37.298401, 46.931435>,  <36.612480, 36.625935, 46.715057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489841, 37.298401, 46.931435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233307, 37.035324, 47.089485>,  <36.079388, 36.877476, 47.184315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233307, 37.035324, 47.089485>,  <36.489841, 37.298401, 46.931435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233307, 37.035324, 47.089485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142088, 0.607885, 0.781209,
		-0.753988, 0.444875, -0.483310,
		-0.641337, -0.657694, 0.395127,
		36.040905, 36.838017, 47.208023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144497, 37.695175, 47.354141>,  <36.489841, 37.298401, 46.931435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144497, 37.695175, 47.354141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021374, 37.331570, 47.466534>,  <35.947498, 37.113407, 47.533970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021374, 37.331570, 47.466534>,  <36.144497, 37.695175, 47.354141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021374, 37.331570, 47.466534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067509, 0.315441, 0.946541,
		-0.949049, 0.272387, -0.158462,
		-0.307811, -0.909012, 0.280980,
		35.929031, 37.058865, 47.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459614, 37.693729, 47.766788>,  <36.144497, 37.695175, 47.354141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459614, 37.693729, 47.766788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666542, 37.370235, 47.878735>,  <35.790699, 37.176140, 47.945900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666542, 37.370235, 47.878735>,  <35.459614, 37.693729, 47.766788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666542, 37.370235, 47.878735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115048, 0.389775, 0.913696,
		-0.848024, -0.440475, 0.294682,
		0.517320, -0.808738, 0.279862,
		35.821739, 37.127613, 47.962692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103291, 37.520798, 48.284840>,  <35.459614, 37.693729, 47.766788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103291, 37.520798, 48.284840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458427, 37.343224, 48.333263>,  <35.671509, 37.236679, 48.362320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458427, 37.343224, 48.333263>,  <35.103291, 37.520798, 48.284840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458427, 37.343224, 48.333263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010850, 0.283221, 0.958993,
		-0.460015, -0.850124, 0.256273,
		0.887845, -0.443932, 0.121062,
		35.724781, 37.210045, 48.369583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045994, 37.104786, 48.889744>,  <35.103291, 37.520798, 48.284840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045994, 37.104786, 48.889744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438290, 37.164963, 48.839912>,  <35.673668, 37.201069, 48.810013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438290, 37.164963, 48.839912>,  <35.045994, 37.104786, 48.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438290, 37.164963, 48.839912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039430, 0.472183, 0.880618,
		0.191303, -0.868568, 0.457157,
		0.980739, 0.150438, -0.124578,
		35.732510, 37.210094, 48.802540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260056, 37.008652, 49.562080>,  <35.045994, 37.104786, 48.889744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260056, 37.008652, 49.562080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574047, 37.160286, 49.366081>,  <35.762444, 37.251266, 49.248482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574047, 37.160286, 49.366081>,  <35.260056, 37.008652, 49.562080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574047, 37.160286, 49.366081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329974, 0.413572, 0.848573,
		0.524336, -0.827798, 0.199555,
		0.784977, 0.379089, -0.490002,
		35.809540, 37.274014, 49.219082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816624, 36.900379, 50.125546>,  <35.260056, 37.008652, 49.562080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816624, 36.900379, 50.125546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941471, 37.167076, 49.854828>,  <36.016380, 37.327095, 49.692398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941471, 37.167076, 49.854828>,  <35.816624, 36.900379, 50.125546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941471, 37.167076, 49.854828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299561, 0.606970, 0.736105,
		0.901580, -0.432490, -0.010283,
		0.312116, 0.666738, -0.676790,
		36.035107, 37.367096, 49.651791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416000, 37.053265, 50.382347>,  <35.816624, 36.900379, 50.125546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416000, 37.053265, 50.382347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326931, 37.355377, 50.135780>,  <36.273491, 37.536644, 49.987839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326931, 37.355377, 50.135780>,  <36.416000, 37.053265, 50.382347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326931, 37.355377, 50.135780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154562, 0.651645, 0.742610,
		0.962563, 0.070086, -0.261842,
		-0.222674, 0.755279, -0.616417,
		36.260128, 37.581963, 49.950855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869511, 37.614628, 50.574268>,  <36.416000, 37.053265, 50.382347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869511, 37.614628, 50.574268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572590, 37.799583, 50.380283>,  <36.394436, 37.910557, 50.263893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572590, 37.799583, 50.380283>,  <36.869511, 37.614628, 50.574268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572590, 37.799583, 50.380283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090380, 0.648045, 0.756220,
		0.663943, 0.605174, -0.439254,
		-0.742302, 0.462387, -0.484961,
		36.349899, 37.938301, 50.234795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127533, 38.233582, 50.444527>,  <36.869511, 37.614628, 50.574268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127533, 38.233582, 50.444527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727821, 38.244404, 50.433907>,  <36.487995, 38.250896, 50.427536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727821, 38.244404, 50.433907>,  <37.127533, 38.233582, 50.444527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727821, 38.244404, 50.433907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000538, 0.690224, 0.723595,
		0.037900, 0.723090, -0.689713,
		-0.999281, 0.027053, -0.026549,
		36.428036, 38.252522, 50.425941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188480, 38.844101, 49.850952>,  <37.127533, 38.233582, 50.444527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188480, 38.844101, 49.850952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258087, 39.182217, 49.648880>,  <37.299850, 39.385086, 49.527637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258087, 39.182217, 49.648880>,  <37.188480, 38.844101, 49.850952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258087, 39.182217, 49.648880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193225, -0.532347, -0.824179,
		-0.965600, 0.045807, -0.255967,
		0.174016, 0.845286, -0.505183,
		37.310291, 39.435802, 49.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843582, 38.828224, 49.281334>,  <37.188480, 38.844101, 49.850952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843582, 38.828224, 49.281334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132214, 39.091930, 49.196770>,  <37.305393, 39.250156, 49.146030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132214, 39.091930, 49.196770>,  <36.843582, 38.828224, 49.281334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132214, 39.091930, 49.196770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141123, -0.439002, -0.887334,
		-0.677799, 0.610445, -0.409811,
		0.721576, 0.659268, -0.211407,
		37.348686, 39.289711, 49.133347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755581, 39.147896, 48.599556>,  <36.843582, 38.828224, 49.281334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755581, 39.147896, 48.599556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144917, 39.156712, 48.690884>,  <37.378517, 39.162003, 48.745678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144917, 39.156712, 48.690884>,  <36.755581, 39.147896, 48.599556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144917, 39.156712, 48.690884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216009, -0.422895, -0.880057,
		0.077157, 0.905911, -0.416380,
		0.973338, 0.022040, 0.228314,
		37.436916, 39.163322, 48.759377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131432, 39.509949, 48.080215>,  <36.755581, 39.147896, 48.599556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131432, 39.509949, 48.080215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420624, 39.289623, 48.247021>,  <37.594139, 39.157429, 48.347103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420624, 39.289623, 48.247021>,  <37.131432, 39.509949, 48.080215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420624, 39.289623, 48.247021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352808, -0.224600, -0.908340,
		0.593990, 0.803838, 0.031951,
		0.722981, -0.550817, 0.417011,
		37.637520, 39.124378, 48.372124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659527, 39.609482, 47.607754>,  <37.131432, 39.509949, 48.080215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659527, 39.609482, 47.607754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762787, 39.288322, 47.822681>,  <37.824741, 39.095627, 47.951637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762787, 39.288322, 47.822681>,  <37.659527, 39.609482, 47.607754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762787, 39.288322, 47.822681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329184, -0.449787, -0.830259,
		0.908293, 0.391209, 0.148188,
		0.258152, -0.802899, 0.537318,
		37.840233, 39.047451, 47.983875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273426, 39.439400, 47.399567>,  <37.659527, 39.609482, 47.607754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273426, 39.439400, 47.399567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207333, 39.086998, 47.576897>,  <38.167675, 38.875557, 47.683292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207333, 39.086998, 47.576897>,  <38.273426, 39.439400, 47.399567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207333, 39.086998, 47.576897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411672, -0.470077, -0.780739,
		0.896228, 0.053499, 0.440356,
		-0.165233, -0.881002, 0.443320,
		38.157764, 38.822697, 47.709892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905727, 39.048679, 47.293560>,  <38.273426, 39.439400, 47.399567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905727, 39.048679, 47.293560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621220, 38.786869, 47.396076>,  <38.450516, 38.629784, 47.457584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621220, 38.786869, 47.396076>,  <38.905727, 39.048679, 47.293560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621220, 38.786869, 47.396076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249123, -0.575668, -0.778809,
		0.657290, -0.490098, 0.572515,
		-0.711272, -0.654530, 0.256287,
		38.407837, 38.590511, 47.472961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225571, 38.420704, 47.262993>,  <38.905727, 39.048679, 47.293560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225571, 38.420704, 47.262993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833355, 38.344128, 47.245602>,  <38.598026, 38.298183, 47.235168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833355, 38.344128, 47.245602>,  <39.225571, 38.420704, 47.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833355, 38.344128, 47.245602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135806, -0.501546, -0.854405,
		0.141764, -0.843683, 0.517785,
		-0.980541, -0.191442, -0.043476,
		38.539192, 38.286694, 47.232559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160713, 37.681984, 47.147232>,  <39.225571, 38.420704, 47.262993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160713, 37.681984, 47.147232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828403, 37.867817, 47.024605>,  <38.629017, 37.979317, 46.951027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828403, 37.867817, 47.024605>,  <39.160713, 37.681984, 47.147232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828403, 37.867817, 47.024605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022852, -0.521841, -0.852737,
		-0.556147, -0.715433, 0.422913,
		-0.830769, 0.464583, -0.306570,
		38.579170, 38.007191, 46.932636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719948, 37.036232, 46.883888>,  <39.160713, 37.681984, 47.147232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719948, 37.036232, 46.883888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576275, 37.380844, 46.740356>,  <38.490070, 37.587612, 46.654236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576275, 37.380844, 46.740356>,  <38.719948, 37.036232, 46.883888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576275, 37.380844, 46.740356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110504, -0.421044, -0.900284,
		-0.926702, -0.283713, 0.246434,
		-0.359182, 0.861527, -0.358831,
		38.468521, 37.639301, 46.632706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205978, 36.827141, 46.531010>,  <38.719948, 37.036232, 46.883888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205978, 36.827141, 46.531010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292469, 37.189251, 46.384739>,  <38.344364, 37.406517, 46.296978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292469, 37.189251, 46.384739>,  <38.205978, 36.827141, 46.531010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292469, 37.189251, 46.384739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106030, -0.350545, -0.930524,
		-0.970568, 0.239978, 0.020189,
		0.216228, 0.905278, -0.365673,
		38.357338, 37.460835, 46.275036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601395, 37.112663, 46.076962>,  <38.205978, 36.827141, 46.531010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601395, 37.112663, 46.076962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922543, 37.311886, 45.945911>,  <38.115231, 37.431419, 45.867283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922543, 37.311886, 45.945911>,  <37.601395, 37.112663, 46.076962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922543, 37.311886, 45.945911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227638, -0.251793, -0.940628,
		-0.550978, 0.829784, -0.088782,
		0.802873, 0.498055, -0.327623,
		38.163403, 37.461304, 45.847626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389870, 37.668877, 45.565102>,  <37.601395, 37.112663, 46.076962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389870, 37.668877, 45.565102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740322, 37.504570, 45.464169>,  <37.950592, 37.405987, 45.403610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740322, 37.504570, 45.464169>,  <37.389870, 37.668877, 45.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740322, 37.504570, 45.464169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306869, -0.071516, -0.949061,
		0.371795, 0.908932, -0.188708,
		0.876128, -0.410764, -0.252334,
		38.003159, 37.381340, 45.388470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668362, 38.090195, 44.988037>,  <37.389870, 37.668877, 45.565102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668362, 38.090195, 44.988037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812702, 37.717167, 44.992153>,  <37.899307, 37.493351, 44.994625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812702, 37.717167, 44.992153>,  <37.668362, 38.090195, 44.988037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812702, 37.717167, 44.992153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175338, -0.078678, -0.981360,
		0.915994, 0.352318, -0.191906,
		0.360849, -0.932567, 0.010293,
		37.920956, 37.437397, 44.995243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942776, 38.079128, 44.305988>,  <37.668362, 38.090195, 44.988037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942776, 38.079128, 44.305988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935127, 37.700985, 44.436172>,  <37.930538, 37.474098, 44.514282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935127, 37.700985, 44.436172>,  <37.942776, 38.079128, 44.305988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935127, 37.700985, 44.436172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037869, -0.325972, -0.944621,
		0.999100, -0.005734, 0.042032,
		-0.019117, -0.945362, 0.325461,
		37.929394, 37.417377, 44.533810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548740, 37.707935, 43.955498>,  <37.942776, 38.079128, 44.305988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548740, 37.707935, 43.955498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259846, 37.442390, 44.033127>,  <38.086510, 37.283062, 44.079704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259846, 37.442390, 44.033127>,  <38.548740, 37.707935, 43.955498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259846, 37.442390, 44.033127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018727, -0.261723, -0.964961,
		0.691395, -0.700562, 0.176593,
		-0.722234, -0.663862, 0.194074,
		38.043175, 37.243233, 44.091351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748684, 37.155018, 43.580524>,  <38.548740, 37.707935, 43.955498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748684, 37.155018, 43.580524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360020, 37.084133, 43.643097>,  <38.126820, 37.041603, 43.680641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360020, 37.084133, 43.643097>,  <38.748684, 37.155018, 43.580524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360020, 37.084133, 43.643097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090144, -0.333969, -0.938264,
		0.218519, -0.925775, 0.308529,
		-0.971660, -0.177216, 0.156431,
		38.068523, 37.030968, 43.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588295, 36.542015, 43.234360>,  <38.748684, 37.155018, 43.580524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588295, 36.542015, 43.234360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224194, 36.704216, 43.267849>,  <38.005733, 36.801537, 43.287941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224194, 36.704216, 43.267849>,  <38.588295, 36.542015, 43.234360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224194, 36.704216, 43.267849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203186, -0.261278, -0.943636,
		-0.360775, -0.875956, 0.320221,
		-0.910251, 0.405505, 0.083719,
		37.951118, 36.825867, 43.292965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138603, 36.175785, 42.919239>,  <38.588295, 36.542015, 43.234360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138603, 36.175785, 42.919239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884117, 36.484287, 42.927204>,  <37.731426, 36.669388, 42.931984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884117, 36.484287, 42.927204>,  <38.138603, 36.175785, 42.919239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884117, 36.484287, 42.927204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328795, -0.247689, -0.911342,
		-0.697946, -0.586355, 0.411168,
		-0.636212, 0.771258, 0.019917,
		37.693253, 36.715664, 42.933178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609867, 35.926884, 42.476471>,  <38.138603, 36.175785, 42.919239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609867, 35.926884, 42.476471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510654, 36.312157, 42.517956>,  <37.451126, 36.543320, 42.542847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510654, 36.312157, 42.517956>,  <37.609867, 35.926884, 42.476471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510654, 36.312157, 42.517956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405971, -0.006140, -0.913866,
		-0.879583, -0.268776, 0.392547,
		-0.248035, 0.963183, 0.103715,
		37.436245, 36.601112, 42.549068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895863, 35.936844, 42.648506>,  <37.609867, 35.926884, 42.476471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895863, 35.936844, 42.648506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008884, 36.282776, 42.482506>,  <37.076698, 36.490337, 42.382908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008884, 36.282776, 42.482506>,  <36.895863, 35.936844, 42.648506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008884, 36.282776, 42.482506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522439, -0.224091, -0.822703,
		-0.804498, 0.449274, 0.388504,
		0.282558, 0.864833, -0.414999,
		37.093651, 36.542225, 42.358006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362888, 36.093197, 42.305702>,  <36.895863, 35.936844, 42.648506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362888, 36.093197, 42.305702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645679, 36.321381, 42.138485>,  <36.815353, 36.458290, 42.038155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645679, 36.321381, 42.138485>,  <36.362888, 36.093197, 42.305702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645679, 36.321381, 42.138485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264627, -0.334785, -0.904373,
		-0.655861, 0.749998, -0.085728,
		0.706979, 0.570457, -0.418042,
		36.857773, 36.492519, 42.013073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036915, 36.380825, 41.841709>,  <36.362888, 36.093197, 42.305702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036915, 36.380825, 41.841709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420406, 36.381077, 41.727978>,  <36.650501, 36.381229, 41.659737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420406, 36.381077, 41.727978>,  <36.036915, 36.380825, 41.841709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420406, 36.381077, 41.727978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283851, -0.056040, -0.957229,
		-0.016538, 0.998428, -0.053548,
		0.958726, 0.000631, -0.284331,
		36.708023, 36.381268, 41.642677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041599, 36.895840, 41.299690>,  <36.036915, 36.380825, 41.841709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041599, 36.895840, 41.299690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365662, 36.662228, 41.279461>,  <36.560101, 36.522060, 41.267323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365662, 36.662228, 41.279461>,  <36.041599, 36.895840, 41.299690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365662, 36.662228, 41.279461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142480, -0.112488, -0.983385,
		0.568633, 0.803903, -0.174345,
		0.810158, -0.584026, -0.050576,
		36.608707, 36.487019, 41.264290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248119, 36.962658, 40.612499>,  <36.041599, 36.895840, 41.299690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248119, 36.962658, 40.612499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434231, 36.632839, 40.741268>,  <36.545898, 36.434948, 40.818531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434231, 36.632839, 40.741268>,  <36.248119, 36.962658, 40.612499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434231, 36.632839, 40.741268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062952, -0.331947, -0.941195,
		0.882921, 0.458187, -0.102542,
		0.465282, -0.824546, 0.321927,
		36.573814, 36.385475, 40.837845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899502, 36.885326, 40.185387>,  <36.248119, 36.962658, 40.612499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899502, 36.885326, 40.185387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784164, 36.520012, 40.300465>,  <36.714962, 36.300823, 40.369511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784164, 36.520012, 40.300465>,  <36.899502, 36.885326, 40.185387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784164, 36.520012, 40.300465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054290, -0.315565, -0.947350,
		0.955986, -0.257546, 0.140574,
		-0.288347, -0.913285, 0.287693,
		36.697659, 36.246025, 40.386772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527039, 36.465996, 39.808254>,  <36.899502, 36.885326, 40.185387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527039, 36.465996, 39.808254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254929, 36.191410, 39.911015>,  <37.091663, 36.026657, 39.972672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254929, 36.191410, 39.911015>,  <37.527039, 36.465996, 39.808254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254929, 36.191410, 39.911015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359413, -0.617880, -0.699319,
		0.638791, -0.383394, 0.667050,
		-0.680271, -0.686465, 0.256899,
		37.050846, 35.985470, 39.988083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839195, 35.845280, 39.723240>,  <37.527039, 36.465996, 39.808254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839195, 35.845280, 39.723240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456490, 35.729610, 39.735737>,  <37.226864, 35.660210, 39.743237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456490, 35.729610, 39.735737>,  <37.839195, 35.845280, 39.723240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456490, 35.729610, 39.735737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150377, -0.583751, -0.797885,
		0.248966, -0.758692, 0.601999,
		-0.956767, -0.289173, 0.031245,
		37.169460, 35.642860, 39.745110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867588, 35.165695, 39.793221>,  <37.839195, 35.845280, 39.723240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867588, 35.165695, 39.793221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509800, 35.266506, 39.645485>,  <37.295128, 35.326992, 39.556843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509800, 35.266506, 39.645485>,  <37.867588, 35.165695, 39.793221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509800, 35.266506, 39.645485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166508, -0.578857, -0.798248,
		-0.414969, -0.775506, 0.475806,
		-0.894470, 0.252022, -0.369336,
		37.241459, 35.342113, 39.534683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578499, 34.526112, 39.499233>,  <37.867588, 35.165695, 39.793221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578499, 34.526112, 39.499233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361076, 34.803505, 39.310081>,  <37.230621, 34.969940, 39.196590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361076, 34.803505, 39.310081>,  <37.578499, 34.526112, 39.499233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361076, 34.803505, 39.310081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075490, -0.520705, -0.850392,
		-0.835969, -0.497937, 0.230683,
		-0.543559, 0.693487, -0.472883,
		37.198009, 35.011551, 39.168217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272755, 34.238865, 38.902431>,  <37.578499, 34.526112, 39.499233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272755, 34.238865, 38.902431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248623, 34.625641, 38.803333>,  <37.234142, 34.857708, 38.743874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248623, 34.625641, 38.803333>,  <37.272755, 34.238865, 38.902431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248623, 34.625641, 38.803333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248807, -0.225798, -0.941865,
		-0.966672, -0.118466, -0.226960,
		-0.060332, 0.966944, -0.247747,
		37.230522, 34.915726, 38.729008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097038, 34.194477, 38.251053>,  <37.272755, 34.238865, 38.902431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097038, 34.194477, 38.251053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224640, 34.573479, 38.242294>,  <37.301201, 34.800880, 38.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224640, 34.573479, 38.242294>,  <37.097038, 34.194477, 38.251053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224640, 34.573479, 38.242294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241362, -0.103559, -0.964894,
		-0.916506, 0.302517, -0.261726,
		0.319000, 0.947502, -0.021896,
		37.320339, 34.857731, 38.235725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750095, 34.577988, 37.729431>,  <37.097038, 34.194477, 38.251053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750095, 34.577988, 37.729431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091396, 34.778652, 37.786415>,  <37.296177, 34.899052, 37.820606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091396, 34.778652, 37.786415>,  <36.750095, 34.577988, 37.729431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091396, 34.778652, 37.786415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238954, -0.133278, -0.961841,
		-0.463533, 0.854735, -0.233594,
		0.853252, 0.501663, 0.142464,
		37.347370, 34.929150, 37.829155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839127, 35.066677, 37.146832>,  <36.750095, 34.577988, 37.729431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839127, 35.066677, 37.146832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212929, 35.052917, 37.288540>,  <37.437210, 35.044662, 37.373566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212929, 35.052917, 37.288540>,  <36.839127, 35.066677, 37.146832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212929, 35.052917, 37.288540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355145, 0.023737, -0.934510,
		0.023737, 0.999126, 0.034399,
		0.934510, -0.034399, 0.354271,
		37.493282, 35.042599, 37.394821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241722, 35.534679, 36.661945>,  <36.839127, 35.066677, 37.146832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241722, 35.534679, 36.661945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536465, 35.324162, 36.831676>,  <37.713310, 35.197853, 36.933514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536465, 35.324162, 36.831676>,  <37.241722, 35.534679, 36.661945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536465, 35.324162, 36.831676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476459, -0.041002, -0.878240,
		0.479610, 0.849314, 0.220545,
		0.736859, -0.526293, 0.424329,
		37.757523, 35.166275, 36.958977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844448, 35.819427, 36.441589>,  <37.241722, 35.534679, 36.661945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844448, 35.819427, 36.441589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922318, 35.449429, 36.572113>,  <37.969040, 35.227428, 36.650429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922318, 35.449429, 36.572113>,  <37.844448, 35.819427, 36.441589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922318, 35.449429, 36.572113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365302, -0.240373, -0.899319,
		0.910306, 0.294276, 0.291109,
		0.194674, -0.924999, 0.326312,
		37.980721, 35.171928, 36.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462860, 35.739578, 36.152954>,  <37.844448, 35.819427, 36.441589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462860, 35.739578, 36.152954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320938, 35.373421, 36.229027>,  <38.235786, 35.153725, 36.274670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320938, 35.373421, 36.229027>,  <38.462860, 35.739578, 36.152954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320938, 35.373421, 36.229027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318652, -0.309636, -0.895872,
		0.878964, -0.257253, 0.401551,
		-0.354800, -0.915394, 0.190184,
		38.214497, 35.098801, 36.286083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055485, 35.378857, 35.928101>,  <38.462860, 35.739578, 36.152954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055485, 35.378857, 35.928101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721069, 35.159439, 35.932884>,  <38.520420, 35.027790, 35.935753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721069, 35.159439, 35.932884>,  <39.055485, 35.378857, 35.928101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721069, 35.159439, 35.932884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155346, -0.257550, -0.953696,
		0.526220, -0.795469, 0.300535,
		-0.836039, -0.548541, 0.011955,
		38.470257, 34.994877, 35.936470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270370, 34.759674, 35.690594>,  <39.055485, 35.378857, 35.928101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270370, 34.759674, 35.690594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879322, 34.768692, 35.606937>,  <38.644691, 34.774101, 35.556744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879322, 34.768692, 35.606937>,  <39.270370, 34.759674, 35.690594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879322, 34.768692, 35.606937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191050, -0.320915, -0.927639,
		-0.088026, -0.946840, 0.309428,
		-0.977625, 0.022540, -0.209143,
		38.586033, 34.775455, 35.544193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123974, 34.538139, 35.012356>,  <39.270370, 34.759674, 35.690594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123974, 34.538139, 35.012356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062920, 34.929916, 35.065121>,  <39.026287, 35.164982, 35.096779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062920, 34.929916, 35.065121>,  <39.123974, 34.538139, 35.012356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062920, 34.929916, 35.065121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789309, 0.201139, -0.580116,
		-0.594721, 0.015573, -0.803781,
		-0.152637, 0.979439, 0.131913,
		39.017128, 35.223747, 35.104694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030785, 34.937687, 34.378868>,  <39.123974, 34.538139, 35.012356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030785, 34.937687, 34.378868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200874, 35.160118, 34.664516>,  <39.302929, 35.293575, 34.835903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200874, 35.160118, 34.664516>,  <39.030785, 34.937687, 34.378868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200874, 35.160118, 34.664516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801469, 0.135235, -0.582545,
		-0.420513, 0.820055, -0.388173,
		0.425224, 0.556077, 0.714117,
		39.328442, 35.326942, 34.878750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134174, 35.701244, 34.094330>,  <39.030785, 34.937687, 34.378868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134174, 35.701244, 34.094330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395775, 35.574017, 34.368881>,  <39.552734, 35.497681, 34.533611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395775, 35.574017, 34.368881>,  <39.134174, 35.701244, 34.094330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395775, 35.574017, 34.368881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755771, 0.314374, -0.574438,
		-0.033069, 0.894428, 0.445988,
		0.654001, -0.318068, 0.686379,
		39.591976, 35.478596, 34.574795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686405, 36.174725, 34.162472>,  <39.134174, 35.701244, 34.094330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686405, 36.174725, 34.162472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824890, 35.806236, 34.233452>,  <39.907982, 35.585144, 34.276039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824890, 35.806236, 34.233452>,  <39.686405, 36.174725, 34.162472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824890, 35.806236, 34.233452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849979, 0.227953, -0.474946,
		0.397082, 0.315257, 0.861939,
		0.346212, -0.921222, 0.177446,
		39.928753, 35.529869, 34.286686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366421, 36.190563, 33.911037>,  <39.686405, 36.174725, 34.162472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366421, 36.190563, 33.911037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324841, 35.803169, 34.001579>,  <40.299892, 35.570732, 34.055904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324841, 35.803169, 34.001579>,  <40.366421, 36.190563, 33.911037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324841, 35.803169, 34.001579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911813, -0.183699, -0.367220,
		0.397227, 0.168221, 0.902171,
		-0.103954, -0.968481, 0.226357,
		40.293655, 35.512627, 34.069485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991024, 36.016132, 34.315769>,  <40.366421, 36.190563, 33.911037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991024, 36.016132, 34.315769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839798, 35.692059, 34.136585>,  <40.749062, 35.497616, 34.029076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839798, 35.692059, 34.136585>,  <40.991024, 36.016132, 34.315769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839798, 35.692059, 34.136585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918525, -0.267815, -0.290837,
		0.115662, -0.521416, 0.845427,
		-0.378065, -0.810185, -0.447958,
		40.726379, 35.449001, 34.002197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461414, 35.643497, 34.791256>,  <40.991024, 36.016132, 34.315769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461414, 35.643497, 34.791256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272888, 35.943058, 34.977592>,  <41.159771, 36.122795, 35.089394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272888, 35.943058, 34.977592>,  <41.461414, 35.643497, 34.791256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272888, 35.943058, 34.977592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853139, -0.521060, -0.025498,
		0.223634, -0.409442, 0.884503,
		-0.471319, 0.748902, 0.465837,
		41.131493, 36.167728, 35.117344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049927, 35.327698, 35.413601>,  <41.461414, 35.643497, 34.791256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049927, 35.327698, 35.413601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892139, 35.667175, 35.272682>,  <40.797466, 35.870861, 35.188129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892139, 35.667175, 35.272682>,  <41.049927, 35.327698, 35.413601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892139, 35.667175, 35.272682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860031, -0.476011, -0.183740,
		-0.323637, 0.230507, 0.917674,
		-0.394470, 0.848693, -0.352298,
		40.773800, 35.921783, 35.166992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815205, 35.507145, 35.706909>,  <41.049927, 35.327698, 35.413601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815205, 35.507145, 35.706909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117367, 35.641808, 35.482044>,  <42.298664, 35.722607, 35.347126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117367, 35.641808, 35.482044>,  <41.815205, 35.507145, 35.706909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117367, 35.641808, 35.482044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176450, 0.930744, 0.320283,
		0.631056, -0.142748, 0.762490,
		0.755403, 0.336658, -0.562164,
		42.343987, 35.742805, 35.313396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329403, 35.830860, 36.165207>,  <41.815205, 35.507145, 35.706909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329403, 35.830860, 36.165207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407139, 35.987053, 35.805264>,  <42.453781, 36.080769, 35.589298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407139, 35.987053, 35.805264>,  <42.329403, 35.830860, 36.165207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407139, 35.987053, 35.805264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043021, 0.919864, 0.389872,
		0.979990, -0.037056, 0.195569,
		0.194344, 0.390484, -0.899862,
		42.465443, 36.104198, 35.535305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930321, 36.195324, 36.195232>,  <42.329403, 35.830860, 36.165207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930321, 36.195324, 36.195232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768749, 36.354218, 35.865616>,  <42.671806, 36.449554, 35.667847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768749, 36.354218, 35.865616>,  <42.930321, 36.195324, 36.195232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768749, 36.354218, 35.865616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122979, 0.916200, 0.381383,
		0.906486, 0.052712, -0.418933,
		-0.403930, 0.397238, -0.824040,
		42.647572, 36.473389, 35.618404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393841, 36.717648, 35.913445>,  <42.930321, 36.195324, 36.195232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393841, 36.717648, 35.913445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031193, 36.818008, 35.777744>,  <42.813602, 36.878223, 35.696323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031193, 36.818008, 35.777744>,  <43.393841, 36.717648, 35.913445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031193, 36.818008, 35.777744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194279, 0.961928, 0.192224,
		0.374563, 0.108365, -0.920847,
		-0.906619, 0.250901, -0.339250,
		42.759209, 36.893280, 35.675968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418423, 37.467766, 35.910118>,  <43.393841, 36.717648, 35.913445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418423, 37.467766, 35.910118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026726, 37.417641, 35.846394>,  <42.791706, 37.387566, 35.808159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026726, 37.417641, 35.846394>,  <43.418423, 37.467766, 35.910118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026726, 37.417641, 35.846394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154538, 0.970178, 0.186744,
		0.131157, 0.207487, -0.969406,
		-0.979243, -0.125317, -0.159310,
		42.732952, 37.380047, 35.798599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216278, 37.968250, 35.412937>,  <43.418423, 37.467766, 35.910118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216278, 37.968250, 35.412937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894798, 37.863190, 35.626507>,  <42.701908, 37.800152, 35.754650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894798, 37.863190, 35.626507>,  <43.216278, 37.968250, 35.412937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894798, 37.863190, 35.626507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191838, 0.963769, 0.185331,
		-0.563259, 0.046524, -0.824969,
		-0.803702, -0.262650, 0.533927,
		42.653687, 37.784393, 35.786686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784676, 38.590218, 35.436977>,  <43.216278, 37.968250, 35.412937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784676, 38.590218, 35.436977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595039, 38.363098, 35.706150>,  <42.481258, 38.226826, 35.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595039, 38.363098, 35.706150>,  <42.784676, 38.590218, 35.436977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595039, 38.363098, 35.706150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197072, 0.813326, 0.547416,
		-0.858137, 0.126909, -0.497490,
		-0.474093, -0.567799, 0.672934,
		42.452812, 38.192757, 35.908031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062393, 38.817196, 35.538921>,  <42.784676, 38.590218, 35.436977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062393, 38.817196, 35.538921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176640, 38.651302, 35.884502>,  <42.245186, 38.551765, 36.091850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176640, 38.651302, 35.884502>,  <42.062393, 38.817196, 35.538921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176640, 38.651302, 35.884502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272203, 0.829272, 0.488071,
		-0.918874, -0.374572, 0.123962,
		0.285616, -0.414733, 0.863956,
		42.262325, 38.526882, 36.143688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560329, 38.883396, 35.997990>,  <42.062393, 38.817196, 35.538921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560329, 38.883396, 35.997990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882099, 38.834625, 36.230553>,  <42.075161, 38.805363, 36.370090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882099, 38.834625, 36.230553>,  <41.560329, 38.883396, 35.997990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882099, 38.834625, 36.230553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283393, 0.781406, 0.555961,
		-0.522106, -0.611995, 0.594027,
		0.804421, -0.121927, 0.581412,
		42.123425, 38.798046, 36.404976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393970, 38.997883, 36.755814>,  <41.560329, 38.883396, 35.997990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393970, 38.997883, 36.755814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789791, 39.052929, 36.738605>,  <42.027283, 39.085957, 36.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789791, 39.052929, 36.738605>,  <41.393970, 38.997883, 36.755814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789791, 39.052929, 36.738605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096453, 0.853608, 0.511909,
		0.107163, -0.502412, 0.857962,
		0.989552, 0.137611, -0.043016,
		42.086658, 39.094212, 36.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566906, 39.198685, 37.404026>,  <41.393970, 38.997883, 36.755814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566906, 39.198685, 37.404026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864586, 39.322472, 37.167252>,  <42.043194, 39.396744, 37.025185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864586, 39.322472, 37.167252>,  <41.566906, 39.198685, 37.404026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864586, 39.322472, 37.167252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003747, 0.888119, 0.459599,
		0.667944, -0.339816, 0.662099,
		0.744202, 0.309467, -0.591941,
		42.087845, 39.415314, 36.989670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048634, 39.600613, 37.819435>,  <41.566906, 39.198685, 37.404026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048634, 39.600613, 37.819435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150562, 39.716515, 37.450413>,  <42.211720, 39.786057, 37.229000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150562, 39.716515, 37.450413>,  <42.048634, 39.600613, 37.819435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150562, 39.716515, 37.450413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063097, 0.957000, 0.283144,
		0.964926, -0.013942, 0.262151,
		0.254826, 0.289754, -0.922554,
		42.227009, 39.803440, 37.173645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486549, 40.094421, 37.926811>,  <42.048634, 39.600613, 37.819435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486549, 40.094421, 37.926811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346157, 40.175320, 37.561100>,  <42.261921, 40.223858, 37.341671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346157, 40.175320, 37.561100>,  <42.486549, 40.094421, 37.926811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346157, 40.175320, 37.561100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124523, 0.957643, 0.259640,
		0.928066, 0.204977, -0.310928,
		-0.350979, 0.202245, -0.914282,
		42.240864, 40.235992, 37.286816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690998, 40.829170, 37.829296>,  <42.486549, 40.094421, 37.926811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690998, 40.829170, 37.829296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419891, 40.753490, 37.545090>,  <42.257229, 40.708080, 37.374565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419891, 40.753490, 37.545090>,  <42.690998, 40.829170, 37.829296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419891, 40.753490, 37.545090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308368, 0.950380, 0.041079,
		0.667488, 0.246943, -0.702480,
		-0.677767, -0.189203, -0.710517,
		42.216560, 40.696728, 37.331936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760170, 41.330082, 37.333973>,  <42.690998, 40.829170, 37.829296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760170, 41.330082, 37.333973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395565, 41.184910, 37.256584>,  <42.176804, 41.097805, 37.210152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395565, 41.184910, 37.256584>,  <42.760170, 41.330082, 37.333973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395565, 41.184910, 37.256584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336680, 0.928638, -0.155813,
		0.236219, -0.076885, -0.968653,
		-0.911508, -0.362932, -0.193476,
		42.122112, 41.076031, 37.198540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429615, 41.885460, 36.860970>,  <42.760170, 41.330082, 37.333973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429615, 41.885460, 36.860970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143375, 41.647461, 37.007332>,  <41.971630, 41.504662, 37.095150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143375, 41.647461, 37.007332>,  <42.429615, 41.885460, 36.860970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143375, 41.647461, 37.007332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557575, 0.802106, 0.213861,
		-0.420746, -0.050983, -0.905745,
		-0.715600, -0.595001, 0.365910,
		41.928696, 41.468960, 37.117104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851971, 41.859657, 36.300816>,  <42.429615, 41.885460, 36.860970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851971, 41.859657, 36.300816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741642, 41.809422, 36.682003>,  <41.675446, 41.779278, 36.910717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741642, 41.809422, 36.682003>,  <41.851971, 41.859657, 36.300816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741642, 41.809422, 36.682003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516358, 0.855587, -0.036696,
		-0.810737, -0.502194, -0.300843,
		-0.275826, -0.125592, 0.952967,
		41.658894, 41.771744, 36.967892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469456, 42.377159, 36.458961>,  <41.851971, 41.859657, 36.300816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469456, 42.377159, 36.458961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454662, 42.235664, 36.832806>,  <41.445786, 42.150768, 37.057114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454662, 42.235664, 36.832806>,  <41.469456, 42.377159, 36.458961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454662, 42.235664, 36.832806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378391, 0.870570, 0.314527,
		-0.924906, -0.342016, -0.166052,
		-0.036987, -0.353741, 0.934612,
		41.443565, 42.129543, 37.113190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742397, 42.587917, 36.803844>,  <41.469456, 42.377159, 36.458961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742397, 42.587917, 36.803844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004311, 42.531967, 37.100948>,  <41.161457, 42.498398, 37.279213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004311, 42.531967, 37.100948>,  <40.742397, 42.587917, 36.803844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004311, 42.531967, 37.100948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337067, 0.825552, 0.452604,
		-0.676498, -0.546717, 0.493407,
		0.654780, -0.139874, 0.742764,
		41.200745, 42.490005, 37.323776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398376, 42.733074, 37.455929>,  <40.742397, 42.587917, 36.803844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398376, 42.733074, 37.455929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786240, 42.799232, 37.527931>,  <41.018959, 42.838928, 37.571133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786240, 42.799232, 37.527931>,  <40.398376, 42.733074, 37.455929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786240, 42.799232, 37.527931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231249, 0.859371, 0.456075,
		-0.079262, -0.483865, 0.871546,
		0.969660, 0.165395, 0.180009,
		41.077137, 42.848850, 37.581932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470871, 42.821857, 38.137234>,  <40.398376, 42.733074, 37.455929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470871, 42.821857, 38.137234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776844, 43.018143, 37.970337>,  <40.960426, 43.135914, 37.870201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776844, 43.018143, 37.970337>,  <40.470871, 42.821857, 38.137234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776844, 43.018143, 37.970337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245635, 0.821052, 0.515304,
		0.595440, -0.291682, 0.748581,
		0.764928, 0.490710, -0.417240,
		41.006321, 43.165356, 37.845165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782055, 43.210548, 38.715958>,  <40.470871, 42.821857, 38.137234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782055, 43.210548, 38.715958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872795, 43.395416, 38.373043>,  <40.927238, 43.506336, 38.167294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872795, 43.395416, 38.373043>,  <40.782055, 43.210548, 38.715958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872795, 43.395416, 38.373043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197554, 0.883772, 0.424168,
		0.953683, 0.073138, 0.291787,
		0.226851, 0.462166, -0.857288,
		40.940849, 43.534065, 38.115856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409950, 43.714775, 38.894203>,  <40.782055, 43.210548, 38.715958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409950, 43.714775, 38.894203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161362, 43.794647, 38.591179>,  <41.012207, 43.842571, 38.409363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161362, 43.794647, 38.591179>,  <41.409950, 43.714775, 38.894203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161362, 43.794647, 38.591179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086000, 0.943740, 0.319310,
		0.778701, 0.263593, -0.569336,
		-0.621473, 0.199684, -0.757560,
		40.974918, 43.854553, 38.363911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821976, 44.435776, 39.072556>,  <41.409950, 43.714775, 38.894203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821976, 44.435776, 39.072556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891094, 44.829720, 39.066891>,  <41.932564, 45.066086, 39.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891094, 44.829720, 39.066891>,  <41.821976, 44.435776, 39.072556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891094, 44.829720, 39.066891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938526, -0.160268, 0.305749,
		0.298850, -0.066120, -0.952007,
		0.172792, 0.984857, -0.014159,
		41.942932, 45.125175, 39.062645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343887, 44.607693, 38.485397>,  <41.821976, 44.435776, 39.072556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343887, 44.607693, 38.485397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626972, 44.451664, 38.249775>,  <42.796822, 44.358047, 38.108402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626972, 44.451664, 38.249775>,  <42.343887, 44.607693, 38.485397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626972, 44.451664, 38.249775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701650, -0.290506, -0.650611,
		0.082660, 0.873757, -0.479287,
		0.707711, -0.390071, -0.589058,
		42.839287, 44.334644, 38.073059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813595, 44.950382, 38.140282>,  <42.343887, 44.607693, 38.485397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813595, 44.950382, 38.140282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935501, 44.587231, 38.255428>,  <43.008644, 44.369339, 38.324516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935501, 44.587231, 38.255428>,  <42.813595, 44.950382, 38.140282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935501, 44.587231, 38.255428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688586, -0.418846, -0.591961,
		0.658002, -0.017811, -0.752805,
		0.304766, -0.907883, 0.287866,
		43.026932, 44.314865, 38.341789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502972, 45.164803, 38.087364>,  <42.813595, 44.950382, 38.140282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502972, 45.164803, 38.087364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864902, 45.190968, 38.255653>,  <44.082062, 45.206665, 38.356628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.864902, 45.190968, 38.255653>,  <43.502972, 45.164803, 38.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864902, 45.190968, 38.255653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156231, -0.970210, -0.185162,
		0.396077, 0.233269, -0.888093,
		0.904829, 0.065409, 0.420722,
		44.136353, 45.210590, 38.381870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951218, 44.822071, 37.615704>,  <43.502972, 45.164803, 38.087364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951218, 44.822071, 37.615704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155205, 44.785999, 37.957886>,  <44.277599, 44.764359, 38.163193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155205, 44.785999, 37.957886>,  <43.951218, 44.822071, 37.615704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155205, 44.785999, 37.957886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378423, -0.869565, -0.317256,
		0.772480, 0.485515, -0.409329,
		0.509971, -0.090175, 0.855452,
		44.308197, 44.758945, 38.214520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601566, 44.633236, 37.391235>,  <43.951218, 44.822071, 37.615704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601566, 44.633236, 37.391235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528473, 44.520287, 37.767933>,  <44.484619, 44.452515, 37.993950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528473, 44.520287, 37.767933>,  <44.601566, 44.633236, 37.391235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528473, 44.520287, 37.767933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394625, -0.898385, -0.192808,
		0.900490, 0.336402, 0.275594,
		-0.182729, -0.282378, 0.941739,
		44.473656, 44.435574, 38.050453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210320, 44.266621, 37.676426>,  <44.601566, 44.633236, 37.391235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210320, 44.266621, 37.676426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859844, 44.122505, 37.804482>,  <44.649559, 44.036034, 37.881313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859844, 44.122505, 37.804482>,  <45.210320, 44.266621, 37.676426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859844, 44.122505, 37.804482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181399, -0.861897, -0.473527,
		0.446534, -0.356825, 0.820538,
		-0.876186, -0.360291, 0.320139,
		44.596989, 44.014420, 37.900524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421818, 43.609184, 37.886227>,  <45.210320, 44.266621, 37.676426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421818, 43.609184, 37.886227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029247, 43.616402, 37.809837>,  <44.793705, 43.620731, 37.764004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029247, 43.616402, 37.809837>,  <45.421818, 43.609184, 37.886227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029247, 43.616402, 37.809837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061043, -0.914430, -0.400115,
		-0.181854, -0.404342, 0.896346,
		-0.981429, 0.018047, -0.190975,
		44.734818, 43.621815, 37.752544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266541, 42.925144, 37.858051>,  <45.421818, 43.609184, 37.886227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266541, 42.925144, 37.858051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917202, 43.086098, 37.748253>,  <44.707600, 43.182671, 37.682373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917202, 43.086098, 37.748253>,  <45.266541, 42.925144, 37.858051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917202, 43.086098, 37.748253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267805, -0.867384, -0.419435,
		-0.406868, -0.292801, 0.865289,
		-0.873349, 0.402384, -0.274497,
		44.655197, 43.206814, 37.665905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697178, 42.513779, 38.124840>,  <45.266541, 42.925144, 37.858051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697178, 42.513779, 38.124840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616898, 42.714470, 37.788273>,  <44.568729, 42.834885, 37.586334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616898, 42.714470, 37.788273>,  <44.697178, 42.513779, 38.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616898, 42.714470, 37.788273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126669, -0.864975, -0.485564,
		-0.971429, 0.009128, 0.237156,
		-0.200702, 0.501731, -0.841418,
		44.556686, 42.864990, 37.535847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345097, 42.052197, 37.796135>,  <44.697178, 42.513779, 38.124840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345097, 42.052197, 37.796135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353352, 42.332829, 37.511219>,  <44.358303, 42.501209, 37.340267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353352, 42.332829, 37.511219>,  <44.345097, 42.052197, 37.796135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353352, 42.332829, 37.511219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257415, -0.684696, -0.681857,
		-0.966081, 0.197425, 0.166468,
		0.020635, 0.701580, -0.712291,
		44.359543, 42.543304, 37.297531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757378, 42.027859, 37.433495>,  <44.345097, 42.052197, 37.796135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757378, 42.027859, 37.433495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034313, 42.184975, 37.191376>,  <44.200474, 42.279243, 37.046104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034313, 42.184975, 37.191376>,  <43.757378, 42.027859, 37.433495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034313, 42.184975, 37.191376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279435, -0.627459, -0.726781,
		-0.665270, 0.672320, -0.324656,
		0.692338, 0.392785, -0.605299,
		44.242016, 42.302811, 37.009785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478825, 41.939728, 36.760887>,  <43.757378, 42.027859, 37.433495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478825, 41.939728, 36.760887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867519, 42.003838, 36.691563>,  <44.100735, 42.042305, 36.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867519, 42.003838, 36.691563>,  <43.478825, 41.939728, 36.760887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867519, 42.003838, 36.691563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051777, -0.571604, -0.818894,
		-0.230316, 0.804724, -0.547151,
		0.971737, 0.160275, -0.173316,
		44.159042, 42.051922, 36.639568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606640, 41.809731, 35.964634>,  <43.478825, 41.939728, 36.760887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606640, 41.809731, 35.964634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967442, 41.790943, 36.136299>,  <44.183922, 41.779671, 36.239300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967442, 41.790943, 36.136299>,  <43.606640, 41.809731, 35.964634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967442, 41.790943, 36.136299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297957, -0.651644, -0.697554,
		0.312426, 0.757069, -0.573791,
		0.902004, -0.046969, 0.429165,
		44.238041, 41.776852, 36.265049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032890, 41.972435, 35.463486>,  <43.606640, 41.809731, 35.964634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032890, 41.972435, 35.463486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256248, 41.756165, 35.715157>,  <44.390263, 41.626400, 35.866158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256248, 41.756165, 35.715157>,  <44.032890, 41.972435, 35.463486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256248, 41.756165, 35.715157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335715, -0.546272, -0.767387,
		0.758610, 0.639729, -0.123521,
		0.558396, -0.540679, 0.629174,
		44.423767, 41.593960, 35.903908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555885, 41.682964, 35.046261>,  <44.032890, 41.972435, 35.463486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555885, 41.682964, 35.046261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601032, 41.455009, 35.371834>,  <44.628120, 41.318237, 35.567177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601032, 41.455009, 35.371834>,  <44.555885, 41.682964, 35.046261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601032, 41.455009, 35.371834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279544, -0.767866, -0.576400,
		0.953476, 0.292586, 0.072645,
		0.112865, -0.569891, 0.813932,
		44.634892, 41.284042, 35.616013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235191, 41.495781, 35.088799>,  <44.555885, 41.682964, 35.046261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235191, 41.495781, 35.088799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045437, 41.205566, 35.288216>,  <44.931583, 41.031437, 35.407867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045437, 41.205566, 35.288216>,  <45.235191, 41.495781, 35.088799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045437, 41.205566, 35.288216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366245, -0.677649, -0.637695,
		0.800513, -0.119924, 0.587194,
		-0.474387, -0.725541, 0.498546,
		44.903122, 40.987904, 35.437778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682182, 40.884308, 34.996830>,  <45.235191, 41.495781, 35.088799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682182, 40.884308, 34.996830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349792, 40.727478, 35.154694>,  <45.150356, 40.633381, 35.249413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349792, 40.727478, 35.154694>,  <45.682182, 40.884308, 34.996830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349792, 40.727478, 35.154694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166910, -0.852461, -0.495430,
		0.530676, -0.345818, 0.773817,
		-0.830978, -0.392071, 0.394660,
		45.100498, 40.609856, 35.273090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795792, 40.340061, 35.476143>,  <45.682182, 40.884308, 34.996830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795792, 40.340061, 35.476143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420315, 40.235909, 35.385765>,  <45.195026, 40.173416, 35.331539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420315, 40.235909, 35.385765>,  <45.795792, 40.340061, 35.476143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420315, 40.235909, 35.385765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297148, -0.943399, -0.147315,
		-0.174794, -0.205422, 0.962937,
		-0.938696, -0.260385, -0.225941,
		45.138706, 40.157791, 35.317982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633335, 39.675625, 35.900726>,  <45.795792, 40.340061, 35.476143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633335, 39.675625, 35.900726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416813, 39.713844, 35.566574>,  <45.286900, 39.736774, 35.366085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416813, 39.713844, 35.566574>,  <45.633335, 39.675625, 35.900726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416813, 39.713844, 35.566574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231535, -0.938174, -0.257336,
		-0.808317, -0.332718, 0.485719,
		-0.541309, 0.095548, -0.835377,
		45.254421, 39.742508, 35.315960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241127, 39.097446, 35.893806>,  <45.633335, 39.675625, 35.900726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241127, 39.097446, 35.893806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194878, 39.227024, 35.518211>,  <45.167130, 39.304771, 35.292854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194878, 39.227024, 35.518211>,  <45.241127, 39.097446, 35.893806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194878, 39.227024, 35.518211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150982, -0.928610, -0.338952,
		-0.981751, -0.180960, 0.058460,
		-0.115623, 0.323940, -0.938986,
		45.160191, 39.324207, 35.236515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520493, 38.926949, 35.680630>,  <45.241127, 39.097446, 35.893806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520493, 38.926949, 35.680630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768200, 38.964943, 35.368866>,  <44.916824, 38.987740, 35.181808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768200, 38.964943, 35.368866>,  <44.520493, 38.926949, 35.680630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768200, 38.964943, 35.368866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282449, -0.899256, -0.334009,
		-0.732615, 0.426986, -0.530054,
		0.619271, 0.094986, -0.779410,
		44.953979, 38.993439, 35.135044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174061, 38.617077, 35.119843>,  <44.520493, 38.926949, 35.680630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174061, 38.617077, 35.119843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543598, 38.648911, 34.970078>,  <44.765320, 38.668011, 34.880219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543598, 38.648911, 34.970078>,  <44.174061, 38.617077, 35.119843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543598, 38.648911, 34.970078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116318, -0.873520, -0.472687,
		-0.364675, 0.480238, -0.797736,
		0.923841, 0.079586, -0.374412,
		44.820751, 38.672787, 34.857754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080128, 38.559563, 34.374237>,  <44.174061, 38.617077, 35.119843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080128, 38.559563, 34.374237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449837, 38.456200, 34.486618>,  <44.671661, 38.394180, 34.554047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449837, 38.456200, 34.486618>,  <44.080128, 38.559563, 34.374237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449837, 38.456200, 34.486618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112198, -0.887419, -0.447100,
		0.364861, 0.381722, -0.849214,
		0.924277, -0.258410, 0.280956,
		44.727119, 38.378677, 34.570904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241665, 38.108589, 33.795341>,  <44.080128, 38.559563, 34.374237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241665, 38.108589, 33.795341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512882, 38.037762, 34.080688>,  <44.675613, 37.995266, 34.251896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512882, 38.037762, 34.080688>,  <44.241665, 38.108589, 33.795341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512882, 38.037762, 34.080688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086981, -0.944399, -0.317090,
		0.729853, 0.277052, -0.624946,
		0.678048, -0.177070, 0.713370,
		44.716297, 37.984642, 34.294701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700432, 37.789597, 33.469814>,  <44.241665, 38.108589, 33.795341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700432, 37.789597, 33.469814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740143, 37.671684, 33.849972>,  <44.763969, 37.600937, 34.078068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740143, 37.671684, 33.849972>,  <44.700432, 37.789597, 33.469814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740143, 37.671684, 33.849972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127648, -0.943448, -0.305960,
		0.986838, 0.151691, -0.056035,
		0.099278, -0.294780, 0.950394,
		44.769928, 37.583252, 34.135090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166924, 37.302223, 33.345142>,  <44.700432, 37.789597, 33.469814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166924, 37.302223, 33.345142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026550, 37.241405, 33.714733>,  <44.942326, 37.204914, 33.936485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.026550, 37.241405, 33.714733>,  <45.166924, 37.302223, 33.345142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026550, 37.241405, 33.714733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064358, -0.988312, -0.138191,
		0.934186, 0.010969, 0.356618,
		-0.350935, -0.152047, 0.923973,
		44.921268, 37.195793, 33.991924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529007, 36.780224, 33.606251>,  <45.166924, 37.302223, 33.345142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529007, 36.780224, 33.606251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205185, 36.773182, 33.840961>,  <45.010891, 36.768955, 33.981789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205185, 36.773182, 33.840961>,  <45.529007, 36.780224, 33.606251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205185, 36.773182, 33.840961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050137, -0.993825, -0.098988,
		0.584896, -0.109556, 0.803675,
		-0.809557, -0.017604, 0.586777,
		44.962318, 36.767902, 34.016994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665474, 36.210995, 34.146870>,  <45.529007, 36.780224, 33.606251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665474, 36.210995, 34.146870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275490, 36.271210, 34.081402>,  <45.041500, 36.307339, 34.042122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275490, 36.271210, 34.081402>,  <45.665474, 36.210995, 34.146870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275490, 36.271210, 34.081402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170455, -0.978597, 0.115293,
		-0.142811, 0.140305, 0.979755,
		-0.974961, 0.150539, -0.163671,
		44.983002, 36.316372, 34.032299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013363, 36.209297, 34.846931>,  <45.665474, 36.210995, 34.146870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013363, 36.209297, 34.846931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327995, 36.296207, 35.078129>,  <46.516777, 36.348354, 35.216846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327995, 36.296207, 35.078129>,  <46.013363, 36.209297, 34.846931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327995, 36.296207, 35.078129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119797, -0.864563, 0.488037,
		0.605753, -0.453123, -0.654021,
		0.786583, 0.217280, 0.577994,
		46.563969, 36.361393, 35.251526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577103, 35.688183, 34.735287>,  <46.013363, 36.209297, 34.846931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577103, 35.688183, 34.735287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521305, 35.853996, 35.095001>,  <46.487827, 35.953484, 35.310829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521305, 35.853996, 35.095001>,  <46.577103, 35.688183, 34.735287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521305, 35.853996, 35.095001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076826, -0.909954, 0.407532,
		0.987239, -0.012242, 0.158776,
		-0.139490, 0.414529, 0.899282,
		46.479458, 35.978355, 35.364784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055664, 35.335629, 35.173386>,  <46.577103, 35.688183, 34.735287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055664, 35.335629, 35.173386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754322, 35.496521, 35.381489>,  <46.573517, 35.593056, 35.506351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754322, 35.496521, 35.381489>,  <47.055664, 35.335629, 35.173386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754322, 35.496521, 35.381489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029678, -0.811118, 0.584128,
		0.656946, 0.424614, 0.622996,
		-0.753353, 0.402231, 0.520259,
		46.528316, 35.617191, 35.537567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403614, 34.842480, 34.761276>,  <47.055664, 35.335629, 35.173386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403614, 34.842480, 34.761276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596519, 35.164238, 34.900051>,  <47.712261, 35.357292, 34.983318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596519, 35.164238, 34.900051>,  <47.403614, 34.842480, 34.761276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596519, 35.164238, 34.900051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774418, 0.576602, -0.260399,
		-0.409510, -0.143096, 0.901013,
		0.482264, 0.804397, 0.346940,
		47.741199, 35.405556, 35.004131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.929871, 41.581001, 42.765526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532291, 41.585674, 42.721828>,  <33.293743, 41.588478, 42.695610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.532291, 41.585674, 42.721828>,  <33.929871, 41.581001, 42.765526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532291, 41.585674, 42.721828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097106, -0.371744, -0.923243,
		-0.051396, -0.928262, 0.368359,
		-0.993946, 0.011681, -0.109246,
		33.234108, 41.589180, 42.689056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846821, 40.973198, 42.475109>,  <33.929871, 41.581001, 42.765526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846821, 40.973198, 42.475109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.526871, 41.191864, 42.376030>,  <33.334900, 41.323063, 42.316582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.526871, 41.191864, 42.376030>,  <33.846821, 40.973198, 42.475109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526871, 41.191864, 42.376030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010107, -0.400389, -0.916290,
		-0.600083, -0.735419, 0.314735,
		-0.799874, 0.546669, -0.247699,
		33.286907, 41.355865, 42.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500591, 40.467449, 42.258202>,  <33.846821, 40.973198, 42.475109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500591, 40.467449, 42.258202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.292606, 40.775135, 42.109634>,  <33.167816, 40.959747, 42.020496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.292606, 40.775135, 42.109634>,  <33.500591, 40.467449, 42.258202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292606, 40.775135, 42.109634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153253, -0.511765, -0.845346,
		-0.840331, -0.382625, 0.383982,
		-0.519959, 0.769217, -0.371414,
		33.136620, 41.005901, 41.998211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939301, 40.253513, 42.034943>,  <33.500591, 40.467449, 42.258202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939301, 40.253513, 42.034943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983471, 40.583866, 41.813774>,  <33.009975, 40.782078, 41.681072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983471, 40.583866, 41.813774>,  <32.939301, 40.253513, 42.034943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983471, 40.583866, 41.813774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224504, -0.521221, -0.823363,
		-0.968196, 0.215059, 0.127855,
		0.110430, 0.825880, -0.552926,
		33.016602, 40.831631, 41.647896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389587, 40.207733, 41.585934>,  <32.939301, 40.253513, 42.034943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389587, 40.207733, 41.585934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.623661, 40.484707, 41.417130>,  <32.764107, 40.650890, 41.315845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.623661, 40.484707, 41.417130>,  <32.389587, 40.207733, 41.585934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623661, 40.484707, 41.417130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229436, -0.357777, -0.905182,
		-0.777763, 0.626526, -0.050498,
		0.585187, 0.692431, -0.422013,
		32.799217, 40.692436, 41.290527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934263, 40.604649, 41.130863>,  <32.389587, 40.207733, 41.585934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934263, 40.604649, 41.130863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317440, 40.653397, 41.026943>,  <32.547344, 40.682648, 40.964592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317440, 40.653397, 41.026943>,  <31.934263, 40.604649, 41.130863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317440, 40.653397, 41.026943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218835, -0.275430, -0.936082,
		-0.185641, 0.953564, -0.237175,
		0.957940, 0.121873, -0.259804,
		32.604820, 40.689957, 40.949001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943140, 41.085014, 40.495010>,  <31.934263, 40.604649, 41.130863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943140, 41.085014, 40.495010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.269154, 40.853493, 40.505650>,  <32.464760, 40.714581, 40.512032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.269154, 40.853493, 40.505650>,  <31.943140, 41.085014, 40.495010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269154, 40.853493, 40.505650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291122, -0.448765, -0.844901,
		0.500969, 0.680878, -0.534261,
		0.815032, -0.578804, 0.026599,
		32.513664, 40.679852, 40.513630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091587, 41.104557, 39.791134>,  <31.943140, 41.085014, 40.495010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091587, 41.104557, 39.791134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.301758, 40.798115, 39.939198>,  <32.427860, 40.614250, 40.028034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.301758, 40.798115, 39.939198>,  <32.091587, 41.104557, 39.791134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301758, 40.798115, 39.939198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000633, -0.435400, -0.900237,
		0.850841, 0.472771, -0.229254,
		0.525423, -0.766104, 0.370156,
		32.459385, 40.568283, 40.050243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617306, 40.966984, 39.337692>,  <32.091587, 41.104557, 39.791134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617306, 40.966984, 39.337692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599514, 40.628082, 39.549423>,  <32.588837, 40.424744, 39.676460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599514, 40.628082, 39.549423>,  <32.617306, 40.966984, 39.337692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599514, 40.628082, 39.549423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166235, -0.528741, -0.832346,
		0.985083, 0.050967, 0.164362,
		-0.044483, -0.847252, 0.529326,
		32.586170, 40.373905, 39.708221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259640, 40.640213, 39.102608>,  <32.617306, 40.966984, 39.337692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259640, 40.640213, 39.102608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007816, 40.375278, 39.265068>,  <32.856720, 40.216316, 39.362545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007816, 40.375278, 39.265068>,  <33.259640, 40.640213, 39.102608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007816, 40.375278, 39.265068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269957, -0.676661, -0.685020,
		0.728543, -0.321619, 0.604803,
		-0.629562, -0.662338, 0.406153,
		32.818947, 40.176579, 39.386913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624523, 40.103447, 39.266899>,  <33.259640, 40.640213, 39.102608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624523, 40.103447, 39.266899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.253963, 39.960888, 39.218296>,  <33.031628, 39.875351, 39.189133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.253963, 39.960888, 39.218296>,  <33.624523, 40.103447, 39.266899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253963, 39.960888, 39.218296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357825, -0.732776, -0.578793,
		0.117241, -0.579672, 0.806371,
		-0.926399, -0.356398, -0.121509,
		32.976044, 39.853970, 39.181843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723042, 39.378139, 39.314663>,  <33.624523, 40.103447, 39.266899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723042, 39.378139, 39.314663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373543, 39.464344, 39.140247>,  <33.163845, 39.516068, 39.035599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373543, 39.464344, 39.140247>,  <33.723042, 39.378139, 39.314663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373543, 39.464344, 39.140247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225204, -0.615336, -0.755410,
		-0.431109, -0.758231, 0.489111,
		-0.873743, 0.215515, -0.436034,
		33.111420, 39.528999, 39.009438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449997, 38.769367, 38.954010>,  <33.723042, 39.378139, 39.314663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449997, 38.769367, 38.954010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233730, 39.058197, 38.781364>,  <33.103970, 39.231495, 38.677776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233730, 39.058197, 38.781364>,  <33.449997, 38.769367, 38.954010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233730, 39.058197, 38.781364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014769, -0.521134, -0.853347,
		-0.841107, -0.455002, 0.292424,
		-0.540667, 0.722075, -0.431610,
		33.071529, 39.274818, 38.651882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885273, 38.397434, 38.602821>,  <33.449997, 38.769367, 38.954010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885273, 38.397434, 38.602821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.952137, 38.750957, 38.428036>,  <32.992256, 38.963070, 38.323162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.952137, 38.750957, 38.428036>,  <32.885273, 38.397434, 38.602821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952137, 38.750957, 38.428036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017896, -0.445849, -0.894929,
		-0.985767, 0.141778, -0.090346,
		0.167161, 0.883809, -0.436966,
		33.002285, 39.016102, 38.296947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488556, 38.340508, 38.004478>,  <32.885273, 38.397434, 38.602821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488556, 38.340508, 38.004478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712742, 38.661114, 37.921093>,  <32.847252, 38.853477, 37.871063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712742, 38.661114, 37.921093>,  <32.488556, 38.340508, 38.004478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712742, 38.661114, 37.921093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016377, -0.240939, -0.970402,
		-0.828017, 0.547289, -0.121911,
		0.560463, 0.801513, -0.208464,
		32.880882, 38.901569, 37.858555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130981, 38.791580, 37.419338>,  <32.488556, 38.340508, 38.004478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130981, 38.791580, 37.419338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.529472, 38.802681, 37.452206>,  <32.768570, 38.809341, 37.471928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.529472, 38.802681, 37.452206>,  <32.130981, 38.791580, 37.419338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529472, 38.802681, 37.452206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085139, -0.132407, -0.987532,
		-0.016527, 0.990807, -0.134271,
		0.996232, 0.027753, 0.082168,
		32.828342, 38.811008, 37.476856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388424, 39.108379, 36.896717>,  <32.130981, 38.791580, 37.419338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388424, 39.108379, 36.896717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.724239, 38.930050, 37.020924>,  <32.925728, 38.823051, 37.095448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.724239, 38.930050, 37.020924>,  <32.388424, 39.108379, 36.896717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724239, 38.930050, 37.020924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220660, -0.242478, -0.944729,
		0.496475, 0.861654, -0.105195,
		0.839537, -0.445822, 0.310516,
		32.976101, 38.796303, 37.114079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817936, 39.183163, 36.295654>,  <32.388424, 39.108379, 36.896717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817936, 39.183163, 36.295654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042198, 38.938202, 36.518589>,  <33.176758, 38.791225, 36.652348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042198, 38.938202, 36.518589>,  <32.817936, 39.183163, 36.295654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042198, 38.938202, 36.518589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482934, -0.304912, -0.820855,
		0.672634, 0.729375, 0.124799,
		0.560659, -0.612405, 0.557335,
		33.210396, 38.754482, 36.685791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434307, 39.086777, 35.918617>,  <32.817936, 39.183163, 36.295654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434307, 39.086777, 35.918617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420002, 38.768963, 36.161083>,  <33.411419, 38.578274, 36.306564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420002, 38.768963, 36.161083>,  <33.434307, 39.086777, 35.918617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420002, 38.768963, 36.161083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449273, -0.554583, -0.700422,
		0.892678, 0.247287, 0.376794,
		-0.035758, -0.794535, 0.606164,
		33.409275, 38.530602, 36.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146729, 38.898342, 35.959270>,  <33.434307, 39.086777, 35.918617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146729, 38.898342, 35.959270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.920959, 38.580524, 36.048828>,  <33.785496, 38.389835, 36.102562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.920959, 38.580524, 36.048828>,  <34.146729, 38.898342, 35.959270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920959, 38.580524, 36.048828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441591, -0.519776, -0.731321,
		0.697438, -0.313907, 0.644238,
		-0.564426, -0.794541, 0.223893,
		33.751633, 38.342163, 36.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614124, 38.310280, 36.071949>,  <34.146729, 38.898342, 35.959270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614124, 38.310280, 36.071949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.254459, 38.159489, 35.983047>,  <34.038662, 38.069016, 35.929707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.254459, 38.159489, 35.983047>,  <34.614124, 38.310280, 36.071949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254459, 38.159489, 35.983047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394799, -0.479687, -0.783603,
		0.188785, -0.792333, 0.580145,
		-0.899163, -0.376974, -0.222255,
		33.984711, 38.046398, 35.916370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708328, 37.520576, 35.887775>,  <34.614124, 38.310280, 36.071949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708328, 37.520576, 35.887775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380623, 37.671276, 35.714867>,  <34.183998, 37.761696, 35.611122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.380623, 37.671276, 35.714867>,  <34.708328, 37.520576, 35.887775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380623, 37.671276, 35.714867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324281, -0.317320, -0.891151,
		-0.472913, -0.870268, 0.137796,
		-0.819265, 0.376752, -0.432276,
		34.134842, 37.784302, 35.585182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270203, 37.633385, 35.440453>,  <34.708328, 37.520576, 35.887775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270203, 37.633385, 35.440453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642941, 37.488300, 35.436413>,  <35.866585, 37.401249, 35.433990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.642941, 37.488300, 35.436413>,  <35.270203, 37.633385, 35.440453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642941, 37.488300, 35.436413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038919, 0.072244, 0.996627,
		-0.360755, -0.929099, 0.081437,
		0.931848, -0.362708, -0.010097,
		35.922497, 37.379490, 35.433384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280254, 37.017654, 35.777328>,  <35.270203, 37.633385, 35.440453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280254, 37.017654, 35.777328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651058, 37.165108, 35.804951>,  <35.873539, 37.253582, 35.821522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651058, 37.165108, 35.804951>,  <35.280254, 37.017654, 35.777328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651058, 37.165108, 35.804951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023656, -0.126282, 0.991712,
		0.374301, -0.920956, -0.108343,
		0.927005, 0.368635, 0.069054,
		35.929161, 37.275700, 35.825668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553520, 36.671329, 36.350101>,  <35.280254, 37.017654, 35.777328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553520, 36.671329, 36.350101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793198, 36.990303, 36.321655>,  <35.937004, 37.181686, 36.304588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793198, 36.990303, 36.321655>,  <35.553520, 36.671329, 36.350101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793198, 36.990303, 36.321655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111445, 0.004884, 0.993759,
		0.792807, -0.603383, -0.085944,
		0.599197, 0.797437, -0.071117,
		35.972958, 37.229534, 36.300320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976143, 36.667751, 36.832073>,  <35.553520, 36.671329, 36.350101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976143, 36.667751, 36.832073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.085461, 37.037922, 36.727085>,  <36.151051, 37.260025, 36.664093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.085461, 37.037922, 36.727085>,  <35.976143, 36.667751, 36.832073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085461, 37.037922, 36.727085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302129, 0.176467, 0.936791,
		0.913251, -0.335322, -0.231371,
		0.273297, 0.925429, -0.262469,
		36.167450, 37.315552, 36.648346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619358, 36.749363, 37.243126>,  <35.976143, 36.667751, 36.832073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619358, 36.749363, 37.243126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483536, 37.111267, 37.140278>,  <36.402042, 37.328411, 37.078571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483536, 37.111267, 37.140278>,  <36.619358, 36.749363, 37.243126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483536, 37.111267, 37.140278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291968, 0.361243, 0.885583,
		0.894122, 0.225638, -0.386824,
		-0.339559, 0.904760, -0.257117,
		36.381668, 37.382694, 37.063145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123184, 37.241116, 37.465176>,  <36.619358, 36.749363, 37.243126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123184, 37.241116, 37.465176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781185, 37.442211, 37.414227>,  <36.575985, 37.562870, 37.383659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781185, 37.442211, 37.414227>,  <37.123184, 37.241116, 37.465176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781185, 37.442211, 37.414227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179729, 0.517599, 0.836534,
		0.486486, 0.692346, -0.532905,
		-0.855002, 0.502741, -0.127370,
		36.524685, 37.593033, 37.376015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284775, 38.036793, 37.548363>,  <37.123184, 37.241116, 37.465176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284775, 38.036793, 37.548363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904346, 37.931694, 37.613388>,  <36.676090, 37.868637, 37.652401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904346, 37.931694, 37.613388>,  <37.284775, 38.036793, 37.548363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904346, 37.931694, 37.613388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008953, 0.502480, 0.864543,
		-0.308836, 0.823699, -0.475543,
		-0.951073, -0.262745, 0.162559,
		36.619026, 37.852871, 37.662155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042667, 38.700485, 37.863377>,  <37.284775, 38.036793, 37.548363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042667, 38.700485, 37.863377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768330, 38.420490, 37.943012>,  <36.603725, 38.252495, 37.990791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.768330, 38.420490, 37.943012>,  <37.042667, 38.700485, 37.863377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768330, 38.420490, 37.943012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277906, 0.504745, 0.817314,
		-0.672596, 0.505223, -0.540707,
		-0.685845, -0.699988, 0.199085,
		36.562576, 38.210495, 38.002739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407825, 39.105778, 38.045521>,  <37.042667, 38.700485, 37.863377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407825, 39.105778, 38.045521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386658, 38.734715, 38.193386>,  <36.373959, 38.512077, 38.282104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386658, 38.734715, 38.193386>,  <36.407825, 39.105778, 38.045521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386658, 38.734715, 38.193386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285582, 0.368781, 0.884558,
		-0.956892, -0.058758, -0.284438,
		-0.052920, -0.927658, 0.369664,
		36.370781, 38.456417, 38.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690350, 38.935833, 38.337875>,  <36.407825, 39.105778, 38.045521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690350, 38.935833, 38.337875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979939, 38.716225, 38.504944>,  <36.153690, 38.584461, 38.605186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.979939, 38.716225, 38.504944>,  <35.690350, 38.935833, 38.337875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979939, 38.716225, 38.504944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197328, 0.415348, 0.888002,
		-0.661008, -0.725303, 0.192362,
		0.723968, -0.549018, 0.417671,
		36.197128, 38.551517, 38.630245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355961, 38.806103, 38.918690>,  <35.690350, 38.935833, 38.337875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355961, 38.806103, 38.918690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732327, 38.700607, 39.003662>,  <35.958145, 38.637310, 39.054646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732327, 38.700607, 39.003662>,  <35.355961, 38.806103, 38.918690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732327, 38.700607, 39.003662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153332, 0.227531, 0.961623,
		-0.301957, -0.937374, 0.173646,
		0.940910, -0.263743, 0.212434,
		36.014599, 38.621483, 39.067394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209621, 38.399609, 39.523682>,  <35.355961, 38.806103, 38.918690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209621, 38.399609, 39.523682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588478, 38.527477, 39.512905>,  <35.815792, 38.604198, 39.506439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588478, 38.527477, 39.512905>,  <35.209621, 38.399609, 39.523682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588478, 38.527477, 39.512905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021977, 0.148444, 0.988677,
		0.320053, -0.935828, 0.147624,
		0.947145, 0.319673, -0.026943,
		35.872623, 38.623379, 39.504822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589474, 38.022667, 40.046558>,  <35.209621, 38.399609, 39.523682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589474, 38.022667, 40.046558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777294, 38.360237, 39.942783>,  <35.889988, 38.562778, 39.880520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777294, 38.360237, 39.942783>,  <35.589474, 38.022667, 40.046558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777294, 38.360237, 39.942783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060654, 0.323981, 0.944117,
		0.880819, -0.427576, 0.203313,
		0.469552, 0.843928, -0.259434,
		35.918159, 38.613415, 39.864952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043530, 38.040421, 40.532635>,  <35.589474, 38.022667, 40.046558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043530, 38.040421, 40.532635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.031612, 38.409523, 40.378944>,  <36.024464, 38.630985, 40.286732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.031612, 38.409523, 40.378944>,  <36.043530, 38.040421, 40.532635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031612, 38.409523, 40.378944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106367, 0.385140, 0.916708,
		0.993881, -0.013560, -0.109625,
		-0.029790, 0.922759, -0.384225,
		36.022675, 38.686352, 40.263676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489922, 38.463722, 40.964367>,  <36.043530, 38.040421, 40.532635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489922, 38.463722, 40.964367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285416, 38.747280, 40.770016>,  <36.162712, 38.917416, 40.653404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285416, 38.747280, 40.770016>,  <36.489922, 38.463722, 40.964367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285416, 38.747280, 40.770016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020145, 0.555315, 0.831396,
		0.859188, 0.434850, -0.269631,
		-0.511263, 0.708894, -0.485880,
		36.132038, 38.959949, 40.624252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786026, 39.096428, 41.149273>,  <36.489922, 38.463722, 40.964367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786026, 39.096428, 41.149273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419968, 39.196350, 41.022717>,  <36.200333, 39.256306, 40.946785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419968, 39.196350, 41.022717>,  <36.786026, 39.096428, 41.149273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419968, 39.196350, 41.022717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171877, 0.468142, 0.866777,
		0.364643, 0.847608, -0.385482,
		-0.915147, 0.249809, -0.316388,
		36.145424, 39.271294, 40.927799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748333, 39.633762, 41.484329>,  <36.786026, 39.096428, 41.149273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748333, 39.633762, 41.484329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372814, 39.609707, 41.348656>,  <36.147503, 39.595276, 41.267254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372814, 39.609707, 41.348656>,  <36.748333, 39.633762, 41.484329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372814, 39.609707, 41.348656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336014, 0.376706, 0.863242,
		0.075861, 0.924379, -0.373857,
		-0.938797, -0.060135, -0.339182,
		36.091175, 39.591667, 41.246902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483475, 40.263824, 41.548805>,  <36.748333, 39.633762, 41.484329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483475, 40.263824, 41.548805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181675, 40.001854, 41.565781>,  <36.000595, 39.844673, 41.575966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181675, 40.001854, 41.565781>,  <36.483475, 40.263824, 41.548805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181675, 40.001854, 41.565781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232598, 0.327303, 0.915845,
		-0.613699, 0.681135, -0.399284,
		-0.754501, -0.654926, 0.042435,
		35.955326, 39.805378, 41.578510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.875454, 40.695831, 41.739037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753479, 40.326691, 41.833149>,  <35.680294, 40.105206, 41.889614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753479, 40.326691, 41.833149>,  <35.875454, 40.695831, 41.739037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753479, 40.326691, 41.833149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364141, 0.341256, 0.866571,
		-0.880007, 0.178579, -0.440111,
		-0.304942, -0.922851, 0.235279,
		35.661995, 40.049835, 41.903732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101929, 40.724754, 42.002316>,  <35.875454, 40.695831, 41.739037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101929, 40.724754, 42.002316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.269012, 40.387009, 42.136520>,  <35.369263, 40.184361, 42.217045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.269012, 40.387009, 42.136520>,  <35.101929, 40.724754, 42.002316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269012, 40.387009, 42.136520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525369, 0.076816, 0.847400,
		-0.741284, -0.530239, -0.411514,
		0.417714, -0.844361, 0.335514,
		35.394325, 40.133701, 42.237175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593609, 40.279800, 42.241535>,  <35.101929, 40.724754, 42.002316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593609, 40.279800, 42.241535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917889, 40.155952, 42.440292>,  <35.112457, 40.081642, 42.559547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.917889, 40.155952, 42.440292>,  <34.593609, 40.279800, 42.241535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917889, 40.155952, 42.440292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369477, 0.387799, 0.844452,
		-0.454156, -0.868186, 0.199989,
		0.810697, -0.309621, 0.496896,
		35.161098, 40.063065, 42.589359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406586, 39.934345, 42.948906>,  <34.593609, 40.279800, 42.241535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406586, 39.934345, 42.948906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790169, 40.038692, 42.993366>,  <35.020317, 40.101303, 43.020042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790169, 40.038692, 42.993366>,  <34.406586, 39.934345, 42.948906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790169, 40.038692, 42.993366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215986, 0.417998, 0.882399,
		0.183732, -0.870187, 0.457185,
		0.958954, 0.260870, 0.111148,
		35.077854, 40.116955, 43.026711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597775, 39.851658, 43.686329>,  <34.406586, 39.934345, 42.948906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597775, 39.851658, 43.686329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867607, 40.111603, 43.546261>,  <35.029507, 40.267570, 43.462219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867607, 40.111603, 43.546261>,  <34.597775, 39.851658, 43.686329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867607, 40.111603, 43.546261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002483, 0.472350, 0.881408,
		0.738199, -0.595448, 0.317023,
		0.674578, 0.649867, -0.350167,
		35.069981, 40.306564, 43.441212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091797, 39.810760, 44.103157>,  <34.597775, 39.851658, 43.686329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091797, 39.810760, 44.103157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168053, 40.166435, 43.936779>,  <35.213806, 40.379841, 43.836952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168053, 40.166435, 43.936779>,  <35.091797, 39.810760, 44.103157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168053, 40.166435, 43.936779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247341, 0.366534, 0.896925,
		0.949988, -0.273872, -0.150054,
		0.190643, 0.889183, -0.415943,
		35.225246, 40.433189, 43.811996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766186, 40.075405, 44.315830>,  <35.091797, 39.810760, 44.103157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766186, 40.075405, 44.315830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572525, 40.404930, 44.197895>,  <35.456329, 40.602646, 44.127132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572525, 40.404930, 44.197895>,  <35.766186, 40.075405, 44.315830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572525, 40.404930, 44.197895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254901, 0.455146, 0.853152,
		0.837033, 0.337899, -0.430349,
		-0.484151, 0.823812, -0.294841,
		35.427280, 40.652073, 44.109444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182793, 40.546471, 44.606812>,  <35.766186, 40.075405, 44.315830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182793, 40.546471, 44.606812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846409, 40.747131, 44.525681>,  <35.644577, 40.867527, 44.477001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846409, 40.747131, 44.525681>,  <36.182793, 40.546471, 44.606812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846409, 40.747131, 44.525681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172930, 0.604345, 0.777729,
		0.512723, 0.618963, -0.594979,
		-0.840958, 0.501649, -0.202825,
		35.594120, 40.897625, 44.464832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303459, 41.386471, 44.499058>,  <36.182793, 40.546471, 44.606812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303459, 41.386471, 44.499058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930073, 41.335976, 44.633339>,  <35.706039, 41.305679, 44.713909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.930073, 41.335976, 44.633339>,  <36.303459, 41.386471, 44.499058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930073, 41.335976, 44.633339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215594, 0.550528, 0.806498,
		-0.286626, 0.825217, -0.486685,
		-0.933470, -0.126237, 0.335707,
		35.650032, 41.298103, 44.734051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172215, 41.941715, 44.866520>,  <36.303459, 41.386471, 44.499058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172215, 41.941715, 44.866520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874866, 41.695770, 44.971859>,  <35.696457, 41.548203, 45.035061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874866, 41.695770, 44.971859>,  <36.172215, 41.941715, 44.866520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874866, 41.695770, 44.971859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065163, 0.325266, 0.943375,
		-0.665699, 0.718437, -0.201727,
		-0.743370, -0.614858, 0.263345,
		35.651855, 41.511314, 45.050861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725006, 42.359123, 45.197227>,  <36.172215, 41.941715, 44.866520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725006, 42.359123, 45.197227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682774, 41.982304, 45.324604>,  <35.657436, 41.756214, 45.401028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682774, 41.982304, 45.324604>,  <35.725006, 42.359123, 45.197227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682774, 41.982304, 45.324604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007640, 0.319449, 0.947573,
		-0.994382, 0.102475, -0.026530,
		-0.105577, -0.942046, 0.318437,
		35.651100, 41.699688, 45.420135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129288, 42.380085, 45.689709>,  <35.725006, 42.359123, 45.197227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129288, 42.380085, 45.689709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326492, 42.041359, 45.769547>,  <35.444817, 41.838123, 45.817451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326492, 42.041359, 45.769547>,  <35.129288, 42.380085, 45.689709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326492, 42.041359, 45.769547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051089, 0.200843, 0.978290,
		-0.868519, -0.492509, 0.055756,
		0.493015, -0.846816, 0.199597,
		35.474396, 41.787315, 45.829426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868874, 42.222153, 46.218739>,  <35.129288, 42.380085, 45.689709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868874, 42.222153, 46.218739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184128, 41.975967, 46.216103>,  <35.373280, 41.828255, 46.214520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184128, 41.975967, 46.216103>,  <34.868874, 42.222153, 46.218739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184128, 41.975967, 46.216103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020543, 0.015604, 0.999667,
		-0.615158, -0.788009, 0.024942,
		0.788136, -0.615466, -0.006589,
		35.420570, 41.791328, 46.214127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738663, 41.722584, 46.705120>,  <34.868874, 42.222153, 46.218739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738663, 41.722584, 46.705120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135124, 41.748714, 46.658894>,  <35.373001, 41.764393, 46.631157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.135124, 41.748714, 46.658894>,  <34.738663, 41.722584, 46.705120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135124, 41.748714, 46.658894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116244, -0.006726, 0.993198,
		0.064109, -0.997841, -0.014261,
		0.991150, 0.065330, -0.115562,
		35.432468, 41.768314, 46.624226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105335, 41.241169, 47.078392>,  <34.738663, 41.722584, 46.705120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105335, 41.241169, 47.078392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375702, 41.530697, 47.022930>,  <35.537922, 41.704414, 46.989651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375702, 41.530697, 47.022930>,  <35.105335, 41.241169, 47.078392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375702, 41.530697, 47.022930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190360, 0.010290, 0.981660,
		0.711972, -0.689912, -0.130831,
		0.675914, 0.723820, -0.138658,
		35.578476, 41.747841, 46.981335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651676, 41.009224, 47.576782>,  <35.105335, 41.241169, 47.078392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651676, 41.009224, 47.576782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732327, 41.391521, 47.491074>,  <35.780716, 41.620899, 47.439648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732327, 41.391521, 47.491074>,  <35.651676, 41.009224, 47.576782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732327, 41.391521, 47.491074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389746, 0.122410, 0.912751,
		0.898580, -0.267541, -0.347815,
		0.201622, 0.955739, -0.214268,
		35.792812, 41.678242, 47.426792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323277, 41.169113, 47.849907>,  <35.651676, 41.009224, 47.576782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323277, 41.169113, 47.849907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180691, 41.539249, 47.798260>,  <36.095139, 41.761333, 47.767269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180691, 41.539249, 47.798260>,  <36.323277, 41.169113, 47.849907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180691, 41.539249, 47.798260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376538, 0.268758, 0.886559,
		0.855076, 0.267405, -0.444230,
		-0.356461, 0.925345, -0.129120,
		36.073753, 41.816853, 47.759525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924988, 41.645748, 47.990822>,  <36.323277, 41.169113, 47.849907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924988, 41.645748, 47.990822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595455, 41.866890, 48.040852>,  <36.397736, 41.999577, 48.070869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.595455, 41.866890, 48.040852>,  <36.924988, 41.645748, 47.990822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595455, 41.866890, 48.040852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242917, 0.144994, 0.959150,
		0.512138, 0.820564, -0.253750,
		-0.823836, 0.552857, 0.125072,
		36.348305, 42.032745, 48.078373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111431, 42.120564, 48.423965>,  <36.924988, 41.645748, 47.990822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111431, 42.120564, 48.423965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713898, 42.156349, 48.450146>,  <36.475376, 42.177822, 48.465855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713898, 42.156349, 48.450146>,  <37.111431, 42.120564, 48.423965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713898, 42.156349, 48.450146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085335, 0.240602, 0.966865,
		0.070756, 0.966492, -0.246754,
		-0.993837, 0.089468, 0.065452,
		36.415745, 42.183189, 48.469780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004189, 42.711369, 48.779400>,  <37.111431, 42.120564, 48.423965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004189, 42.711369, 48.779400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647430, 42.538181, 48.831665>,  <36.433376, 42.434269, 48.863026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647430, 42.538181, 48.831665>,  <37.004189, 42.711369, 48.779400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647430, 42.538181, 48.831665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013521, 0.314323, 0.949220,
		-0.452049, 0.844833, -0.286196,
		-0.891890, -0.432964, 0.130666,
		36.379864, 42.408291, 48.870865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570602, 43.202839, 49.198040>,  <37.004189, 42.711369, 48.779400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570602, 43.202839, 49.198040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436924, 42.826332, 49.217308>,  <36.356716, 42.600426, 49.228870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436924, 42.826332, 49.217308>,  <36.570602, 43.202839, 49.198040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436924, 42.826332, 49.217308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032733, 0.062669, 0.997498,
		-0.941933, 0.331788, -0.051754,
		-0.334201, -0.941270, 0.048169,
		36.336662, 42.543953, 49.231758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977478, 43.147167, 49.727001>,  <36.570602, 43.202839, 49.198040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977478, 43.147167, 49.727001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138252, 42.786594, 49.662670>,  <36.234718, 42.570251, 49.624069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138252, 42.786594, 49.662670>,  <35.977478, 43.147167, 49.727001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138252, 42.786594, 49.662670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102924, -0.130054, 0.986150,
		-0.909864, -0.412925, 0.040505,
		0.401938, -0.901432, -0.160832,
		36.258835, 42.516167, 49.614422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578655, 43.805290, 49.495937>,  <35.977478, 43.147167, 49.727001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578655, 43.805290, 49.495937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234520, 43.686359, 49.330326>,  <35.028038, 43.615002, 49.230961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234520, 43.686359, 49.330326>,  <35.578655, 43.805290, 49.495937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234520, 43.686359, 49.330326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495862, 0.676339, 0.544689,
		0.118076, 0.673917, -0.729310,
		-0.860336, -0.297323, -0.414030,
		34.976418, 43.597164, 49.206116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161983, 43.392437, 49.947128>,  <35.578655, 43.805290, 49.495937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161983, 43.392437, 49.947128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880512, 43.217983, 50.171490>,  <34.711628, 43.113312, 50.306107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880512, 43.217983, 50.171490>,  <35.161983, 43.392437, 49.947128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880512, 43.217983, 50.171490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599820, -0.058510, -0.797993,
		0.380852, -0.897976, -0.220431,
		-0.703681, -0.436137, 0.560908,
		34.669407, 43.087143, 50.339764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995075, 42.758911, 49.664238>,  <35.161983, 43.392437, 49.947128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995075, 42.758911, 49.664238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672852, 42.862320, 49.877495>,  <34.479519, 42.924366, 50.005447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672852, 42.862320, 49.877495>,  <34.995075, 42.758911, 49.664238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672852, 42.862320, 49.877495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580414, -0.163388, -0.797762,
		-0.119120, -0.952091, 0.281662,
		-0.805562, 0.258510, 0.533144,
		34.431183, 42.939877, 50.037437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493595, 42.249802, 49.405174>,  <34.995075, 42.758911, 49.664238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493595, 42.249802, 49.405174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266323, 42.540401, 49.559769>,  <34.129959, 42.714760, 49.652523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266323, 42.540401, 49.559769>,  <34.493595, 42.249802, 49.405174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266323, 42.540401, 49.559769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659394, -0.120971, -0.742001,
		-0.492308, -0.676438, 0.547782,
		-0.568183, 0.726497, 0.386484,
		34.095867, 42.758350, 49.675713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838879, 41.961964, 49.771431>,  <34.493595, 42.249802, 49.405174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838879, 41.961964, 49.771431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.738968, 42.337994, 49.678589>,  <33.679020, 42.563610, 49.622883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.738968, 42.337994, 49.678589>,  <33.838879, 41.961964, 49.771431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738968, 42.337994, 49.678589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645256, -0.340321, -0.683978,
		-0.721980, -0.021075, 0.691593,
		-0.249779, 0.940073, -0.232106,
		33.664036, 42.620014, 49.608955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182266, 41.856094, 49.492962>,  <33.838879, 41.961964, 49.771431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182266, 41.856094, 49.492962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260517, 42.238441, 49.405293>,  <33.307468, 42.467850, 49.352692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260517, 42.238441, 49.405293>,  <33.182266, 41.856094, 49.492962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260517, 42.238441, 49.405293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671859, -0.032168, -0.739981,
		-0.714377, 0.292017, 0.635918,
		0.195630, 0.955872, -0.219174,
		33.319206, 42.525204, 49.339539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551796, 42.234352, 49.286167>,  <33.182266, 41.856094, 49.492962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551796, 42.234352, 49.286167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860138, 42.426434, 49.118744>,  <33.045143, 42.541683, 49.018291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860138, 42.426434, 49.118744>,  <32.551796, 42.234352, 49.286167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860138, 42.426434, 49.118744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437852, -0.077826, -0.895672,
		-0.462676, 0.873700, 0.150264,
		0.770854, 0.480200, -0.418560,
		33.091393, 42.570492, 48.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179623, 42.661140, 48.890430>,  <32.551796, 42.234352, 49.286167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179623, 42.661140, 48.890430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547894, 42.630886, 48.737255>,  <32.768856, 42.612732, 48.645351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547894, 42.630886, 48.737255>,  <32.179623, 42.661140, 48.890430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547894, 42.630886, 48.737255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390199, -0.152435, -0.908025,
		0.010308, 0.985415, -0.169857,
		0.920673, -0.075638, -0.382936,
		32.824097, 42.608196, 48.622375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154408, 42.933575, 48.267780>,  <32.179623, 42.661140, 48.890430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154408, 42.933575, 48.267780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493690, 42.725243, 48.229259>,  <32.697262, 42.600243, 48.206146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493690, 42.725243, 48.229259>,  <32.154408, 42.933575, 48.267780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493690, 42.725243, 48.229259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301868, -0.325956, -0.895895,
		0.435221, 0.788977, -0.433702,
		0.848209, -0.520833, -0.096304,
		32.748154, 42.568993, 48.200367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345448, 43.005493, 47.584339>,  <32.154408, 42.933575, 48.267780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345448, 43.005493, 47.584339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.572124, 42.694466, 47.693340>,  <32.708130, 42.507851, 47.758739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.572124, 42.694466, 47.693340>,  <32.345448, 43.005493, 47.584339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572124, 42.694466, 47.693340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055002, -0.365693, -0.929109,
		0.822094, 0.511527, -0.250002,
		0.566688, -0.777566, 0.272499,
		32.742130, 42.461197, 47.775089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982117, 43.041214, 47.215656>,  <32.345448, 43.005493, 47.584339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982117, 43.041214, 47.215656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872162, 42.677952, 47.341953>,  <32.806190, 42.459995, 47.417732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.872162, 42.677952, 47.341953>,  <32.982117, 43.041214, 47.215656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872162, 42.677952, 47.341953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162196, -0.279885, -0.946233,
		0.947698, -0.311315, -0.070364,
		-0.274882, -0.908156, 0.315741,
		32.789696, 42.405506, 47.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539707, 42.574154, 47.019943>,  <32.982117, 43.041214, 47.215656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539707, 42.574154, 47.019943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198269, 42.367981, 47.050144>,  <32.993404, 42.244278, 47.068264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198269, 42.367981, 47.050144>,  <33.539707, 42.574154, 47.019943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198269, 42.367981, 47.050144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027391, -0.189147, -0.981567,
		0.520217, -0.835792, 0.175573,
		-0.853595, -0.515437, 0.075504,
		32.942192, 42.213348, 47.072796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699512, 41.836353, 46.745476>,  <33.539707, 42.574154, 47.019943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699512, 41.836353, 46.745476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311279, 41.924019, 46.705612>,  <33.078339, 41.976616, 46.681694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311279, 41.924019, 46.705612>,  <33.699512, 41.836353, 46.745476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311279, 41.924019, 46.705612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044477, -0.243583, -0.968860,
		-0.236584, -0.944800, 0.226673,
		-0.970592, 0.219135, -0.099649,
		33.020103, 41.989769, 46.675716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411758, 41.248920, 46.466434>,  <33.699512, 41.836353, 46.745476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411758, 41.248920, 46.466434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173203, 41.556286, 46.373600>,  <33.030067, 41.740704, 46.317898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173203, 41.556286, 46.373600>,  <33.411758, 41.248920, 46.466434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173203, 41.556286, 46.373600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130402, -0.192549, -0.972584,
		-0.792032, -0.610304, 0.014632,
		-0.596390, 0.768410, -0.232090,
		32.994286, 41.786808, 46.303974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103683, 40.966545, 45.893410>,  <33.411758, 41.248920, 46.466434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103683, 40.966545, 45.893410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014122, 41.356125, 45.879021>,  <32.960384, 41.589870, 45.870388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.014122, 41.356125, 45.879021>,  <33.103683, 40.966545, 45.893410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014122, 41.356125, 45.879021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104174, -0.060618, -0.992710,
		-0.969027, -0.218527, 0.115033,
		-0.223907, 0.973947, -0.035976,
		32.946949, 41.648308, 45.868229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514576, 41.008556, 45.553955>,  <33.103683, 40.966545, 45.893410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514576, 41.008556, 45.553955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677914, 41.371773, 45.516628>,  <32.775917, 41.589703, 45.494232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.677914, 41.371773, 45.516628>,  <32.514576, 41.008556, 45.553955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677914, 41.371773, 45.516628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061432, -0.074658, -0.995315,
		-0.910757, 0.412168, 0.025296,
		0.408348, 0.908044, -0.093315,
		32.800419, 41.644184, 45.488632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121387, 41.274357, 45.046913>,  <32.514576, 41.008556, 45.553955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121387, 41.274357, 45.046913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453728, 41.496944, 45.049232>,  <32.653130, 41.630497, 45.050625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453728, 41.496944, 45.049232>,  <32.121387, 41.274357, 45.046913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453728, 41.496944, 45.049232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004298, 0.004011, -0.999983,
		-0.556485, 0.830858, 0.000941,
		0.830847, 0.556471, 0.005803,
		32.702980, 41.663887, 45.050972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933973, 41.902023, 44.634438>,  <32.121387, 41.274357, 45.046913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933973, 41.902023, 44.634438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333691, 41.892479, 44.646057>,  <32.573521, 41.886753, 44.653030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333691, 41.892479, 44.646057>,  <31.933973, 41.902023, 44.634438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333691, 41.892479, 44.646057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033453, 0.211798, -0.976741,
		0.017151, 0.977022, 0.212446,
		0.999293, -0.023859, 0.029052,
		32.633480, 41.885323, 44.654774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110966, 42.422359, 44.260288>,  <31.933973, 41.902023, 44.634438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110966, 42.422359, 44.260288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438759, 42.193184, 44.265739>,  <32.635437, 42.055679, 44.269009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438759, 42.193184, 44.265739>,  <32.110966, 42.422359, 44.260288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438759, 42.193184, 44.265739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111577, 0.136177, -0.984381,
		0.562133, 0.808207, 0.175522,
		0.819486, -0.572937, 0.013628,
		32.684605, 42.021301, 44.269829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690758, 42.701122, 43.930710>,  <32.110966, 42.422359, 44.260288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690758, 42.701122, 43.930710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801846, 42.317940, 43.901909>,  <32.868496, 42.088028, 43.884628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801846, 42.317940, 43.901909>,  <32.690758, 42.701122, 43.930710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801846, 42.317940, 43.901909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115129, 0.107602, -0.987506,
		0.953740, 0.265957, 0.140172,
		0.277717, -0.957961, -0.072005,
		32.885162, 42.030552, 43.880306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349236, 42.688778, 43.564991>,  <32.690758, 42.701122, 43.930710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349236, 42.688778, 43.564991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147331, 42.345417, 43.528408>,  <33.026188, 42.139400, 43.506458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147331, 42.345417, 43.528408>,  <33.349236, 42.688778, 43.564991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147331, 42.345417, 43.528408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058476, 0.071703, -0.995710,
		0.861277, -0.507943, 0.014003,
		-0.504760, -0.858401, -0.091459,
		32.995903, 42.087898, 43.500969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654022, 42.331966, 43.018024>,  <33.349236, 42.688778, 43.564991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654022, 42.331966, 43.018024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.319138, 42.113274, 43.023098>,  <33.118206, 41.982059, 43.026142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.319138, 42.113274, 43.023098>,  <33.654022, 42.331966, 43.018024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319138, 42.113274, 43.023098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039391, -0.083413, -0.995736,
		0.545459, -0.833142, 0.091370,
		-0.837212, -0.546732, 0.012680,
		33.067974, 41.949253, 43.026901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.151165, 43.440826, 37.309151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839520, 43.367462, 37.548935>,  <41.652534, 43.323444, 37.692806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839520, 43.367462, 37.548935>,  <42.151165, 43.440826, 37.309151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839520, 43.367462, 37.548935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133111, -0.982839, -0.127711,
		0.612592, -0.019706, 0.790153,
		-0.779110, -0.183413, 0.599456,
		41.605785, 43.312439, 37.728771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339931, 42.948135, 37.857082>,  <42.151165, 43.440826, 37.309151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339931, 42.948135, 37.857082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951355, 42.900597, 37.774933>,  <41.718208, 42.872074, 37.725643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.951355, 42.900597, 37.774933>,  <42.339931, 42.948135, 37.857082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951355, 42.900597, 37.774933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142145, -0.984509, -0.102650,
		-0.189989, -0.128911, 0.973286,
		-0.971442, -0.118845, -0.205370,
		41.659924, 42.864944, 37.713322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139832, 42.407459, 38.210407>,  <42.339931, 42.948135, 37.857082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139832, 42.407459, 38.210407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844196, 42.426586, 37.941643>,  <41.666817, 42.438065, 37.780384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844196, 42.426586, 37.941643>,  <42.139832, 42.407459, 38.210407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844196, 42.426586, 37.941643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017334, -0.995796, -0.089941,
		-0.673385, -0.078121, 0.735153,
		-0.739088, 0.047822, -0.671909,
		41.622471, 42.440933, 37.740070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674728, 41.889004, 38.358555>,  <42.139832, 42.407459, 38.210407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674728, 41.889004, 38.358555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618996, 41.965523, 37.969917>,  <41.585556, 42.011433, 37.736736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.618996, 41.965523, 37.969917>,  <41.674728, 41.889004, 38.358555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618996, 41.965523, 37.969917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045794, -0.978868, -0.199297,
		-0.989186, -0.072262, 0.127629,
		-0.139333, 0.191297, -0.971592,
		41.577194, 42.022911, 37.678440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101990, 41.494808, 38.089947>,  <41.674728, 41.889004, 38.358555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101990, 41.494808, 38.089947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299255, 41.600845, 37.758522>,  <41.417614, 41.664467, 37.559666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299255, 41.600845, 37.758522>,  <41.101990, 41.494808, 38.089947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299255, 41.600845, 37.758522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068523, -0.961318, -0.266781,
		-0.867235, 0.074790, -0.492251,
		0.493162, 0.265092, -0.828563,
		41.447205, 41.680374, 37.509953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901066, 40.911266, 37.664688>,  <41.101990, 41.494808, 38.089947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901066, 40.911266, 37.664688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208271, 41.065720, 37.460316>,  <41.392593, 41.158394, 37.337692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208271, 41.065720, 37.460316>,  <40.901066, 40.911266, 37.664688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208271, 41.065720, 37.460316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204682, -0.903946, -0.375483,
		-0.606843, 0.183798, -0.773279,
		0.768015, 0.386135, -0.510933,
		41.438675, 41.181561, 37.307037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887524, 40.694950, 36.986137>,  <40.901066, 40.911266, 37.664688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887524, 40.694950, 36.986137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272476, 40.792370, 37.034313>,  <41.503448, 40.850822, 37.063221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272476, 40.792370, 37.034313>,  <40.887524, 40.694950, 36.986137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272476, 40.792370, 37.034313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271297, -0.885656, -0.376844,
		0.014890, 0.395343, -0.918413,
		0.962381, 0.243551, 0.120443,
		41.561192, 40.865437, 37.070446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288055, 40.396545, 36.476059>,  <40.887524, 40.694950, 36.986137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288055, 40.396545, 36.476059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.592487, 40.510201, 36.709305>,  <41.775146, 40.578392, 36.849255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.592487, 40.510201, 36.709305>,  <41.288055, 40.396545, 36.476059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592487, 40.510201, 36.709305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513766, -0.812836, -0.274485,
		0.395988, 0.508491, -0.764611,
		0.761077, 0.284139, 0.583119,
		41.820808, 40.595444, 36.884239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978897, 40.558903, 36.083866>,  <41.288055, 40.396545, 36.476059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978897, 40.558903, 36.083866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.034409, 40.429932, 36.458412>,  <42.067715, 40.352551, 36.683140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.034409, 40.429932, 36.458412>,  <41.978897, 40.558903, 36.083866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034409, 40.429932, 36.458412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420494, -0.836865, -0.350487,
		0.896619, 0.442376, 0.019442,
		0.138777, -0.322429, 0.936366,
		42.076042, 40.333202, 36.739323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619591, 40.187431, 36.015450>,  <41.978897, 40.558903, 36.083866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619591, 40.187431, 36.015450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478016, 40.067055, 36.369659>,  <42.393070, 39.994827, 36.582188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478016, 40.067055, 36.369659>,  <42.619591, 40.187431, 36.015450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478016, 40.067055, 36.369659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466267, -0.877543, -0.111868,
		0.810754, 0.373297, 0.450918,
		-0.353940, -0.300945, 0.885527,
		42.371834, 39.976772, 36.635319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207756, 39.828102, 36.446278>,  <42.619591, 40.187431, 36.015450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207756, 39.828102, 36.446278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856739, 39.690575, 36.579971>,  <42.646130, 39.608059, 36.660187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856739, 39.690575, 36.579971>,  <43.207756, 39.828102, 36.446278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856739, 39.690575, 36.579971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301510, -0.937651, -0.172922,
		0.372845, -0.050972, 0.926493,
		-0.877541, -0.343820, 0.334230,
		42.593475, 39.587429, 36.680241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398170, 39.180923, 36.783489>,  <43.207756, 39.828102, 36.446278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398170, 39.180923, 36.783489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000629, 39.168896, 36.740887>,  <42.762104, 39.161678, 36.715324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.000629, 39.168896, 36.740887>,  <43.398170, 39.180923, 36.783489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000629, 39.168896, 36.740887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063700, -0.942395, -0.328380,
		-0.090498, -0.333147, 0.938522,
		-0.993858, -0.030066, -0.106506,
		42.702473, 39.159874, 36.708935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125317, 38.560337, 37.182049>,  <43.398170, 39.180923, 36.783489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125317, 38.560337, 37.182049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802898, 38.624462, 36.954159>,  <42.609447, 38.662937, 36.817425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802898, 38.624462, 36.954159>,  <43.125317, 38.560337, 37.182049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802898, 38.624462, 36.954159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027839, -0.951281, -0.307067,
		-0.591195, -0.263371, 0.762315,
		-0.806048, 0.160314, -0.569725,
		42.561085, 38.672558, 36.783241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668598, 37.943035, 37.243141>,  <43.125317, 38.560337, 37.182049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668598, 37.943035, 37.243141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.556381, 38.121975, 36.903454>,  <42.489052, 38.229340, 36.699642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.556381, 38.121975, 36.903454>,  <42.668598, 37.943035, 37.243141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556381, 38.121975, 36.903454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073937, -0.892194, -0.445560,
		-0.956991, -0.062207, 0.283370,
		-0.280537, 0.447349, -0.849222,
		42.472221, 38.256180, 36.648685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105137, 37.542236, 36.968376>,  <42.668598, 37.943035, 37.243141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105137, 37.542236, 36.968376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224850, 37.740131, 36.642025>,  <42.296677, 37.858868, 36.446213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224850, 37.740131, 36.642025>,  <42.105137, 37.542236, 36.968376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224850, 37.740131, 36.642025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129294, -0.826158, -0.548403,
		-0.945363, 0.269617, -0.183289,
		0.299285, 0.494742, -0.815879,
		42.314636, 37.888554, 36.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571026, 37.494026, 36.438812>,  <42.105137, 37.542236, 36.968376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571026, 37.494026, 36.438812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.914291, 37.561256, 36.244778>,  <42.120251, 37.601593, 36.128357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.914291, 37.561256, 36.244778>,  <41.571026, 37.494026, 36.438812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914291, 37.561256, 36.244778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098451, -0.873472, -0.476816,
		-0.503848, 0.456943, -0.733035,
		0.858163, 0.168075, -0.485084,
		42.171741, 37.611679, 36.099251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506271, 37.153316, 35.841362>,  <41.571026, 37.494026, 36.438812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506271, 37.153316, 35.841362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.900551, 37.218960, 35.826042>,  <42.137119, 37.258347, 35.816853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.900551, 37.218960, 35.826042>,  <41.506271, 37.153316, 35.841362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900551, 37.218960, 35.826042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114122, -0.817265, -0.564849,
		-0.123997, 0.552401, -0.824305,
		0.985698, 0.164111, -0.038297,
		42.196259, 37.268192, 35.814552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625412, 37.245872, 35.107597>,  <41.506271, 37.153316, 35.841362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625412, 37.245872, 35.107597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958504, 37.137600, 35.300797>,  <42.158360, 37.072636, 35.416718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958504, 37.137600, 35.300797>,  <41.625412, 37.245872, 35.107597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958504, 37.137600, 35.300797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068708, -0.815092, -0.575243,
		0.549398, 0.512209, -0.660154,
		0.832731, -0.270680, 0.483002,
		42.208324, 37.056396, 35.445698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939709, 36.885983, 34.664356>,  <41.625412, 37.245872, 35.107597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939709, 36.885983, 34.664356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172733, 36.770760, 34.968369>,  <42.312550, 36.701626, 35.150776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172733, 36.770760, 34.968369>,  <41.939709, 36.885983, 34.664356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172733, 36.770760, 34.968369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118548, -0.894980, -0.430067,
		0.804095, 0.340641, -0.487232,
		0.582561, -0.288055, 0.760031,
		42.347500, 36.684341, 35.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636375, 36.678684, 34.361416>,  <41.939709, 36.885983, 34.664356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636375, 36.678684, 34.361416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580097, 36.500153, 34.714912>,  <42.546329, 36.393032, 34.927010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580097, 36.500153, 34.714912>,  <42.636375, 36.678684, 34.361416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580097, 36.500153, 34.714912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205281, -0.886370, -0.414980,
		0.968537, 0.123028, 0.216334,
		-0.140698, -0.446332, 0.883737,
		42.537888, 36.366253, 34.980034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201080, 36.056927, 34.450153>,  <42.636375, 36.678684, 34.361416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201080, 36.056927, 34.450153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875626, 36.011951, 34.678310>,  <42.680351, 35.984966, 34.815205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875626, 36.011951, 34.678310>,  <43.201080, 36.056927, 34.450153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875626, 36.011951, 34.678310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116837, -0.929478, -0.349884,
		0.569510, -0.351323, 0.743123,
		-0.813639, -0.112438, 0.570394,
		42.631535, 35.978222, 34.849430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713188, 36.478065, 34.065693>,  <43.201080, 36.056927, 34.450153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713188, 36.478065, 34.065693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.111156, 36.438015, 34.061470>,  <44.349937, 36.413986, 34.058937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.111156, 36.438015, 34.061470>,  <43.713188, 36.478065, 34.065693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111156, 36.438015, 34.061470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090690, 0.845723, 0.525859,
		-0.043721, -0.524144, 0.850506,
		0.994919, -0.100123, -0.010559,
		44.409634, 36.407978, 34.058304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872025, 36.725533, 34.743641>,  <43.713188, 36.478065, 34.065693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872025, 36.725533, 34.743641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202656, 36.748821, 34.519718>,  <44.401035, 36.762794, 34.385365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202656, 36.748821, 34.519718>,  <43.872025, 36.725533, 34.743641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202656, 36.748821, 34.519718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226807, 0.875843, 0.425978,
		0.515101, -0.479071, 0.710747,
		0.826577, 0.058219, -0.559805,
		44.450630, 36.766289, 34.351776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386398, 37.101875, 35.176628>,  <43.872025, 36.725533, 34.743641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386398, 37.101875, 35.176628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569160, 37.125935, 34.821636>,  <44.678818, 37.140369, 34.608643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569160, 37.125935, 34.821636>,  <44.386398, 37.101875, 35.176628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569160, 37.125935, 34.821636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304647, 0.926791, 0.219655,
		0.835719, -0.370730, 0.405134,
		0.456907, 0.060147, -0.887479,
		44.706234, 37.143978, 34.555393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079624, 37.333260, 35.391651>,  <44.386398, 37.101875, 35.176628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079624, 37.333260, 35.391651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991421, 37.408150, 35.008751>,  <44.938499, 37.453083, 34.779011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.991421, 37.408150, 35.008751>,  <45.079624, 37.333260, 35.391651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991421, 37.408150, 35.008751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377418, 0.921335, 0.093260,
		0.899406, -0.340717, -0.273827,
		-0.220511, 0.187225, -0.957247,
		44.925266, 37.464317, 34.721577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641895, 37.679344, 35.169895>,  <45.079624, 37.333260, 35.391651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641895, 37.679344, 35.169895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390636, 37.787567, 34.878078>,  <45.239883, 37.852501, 34.702988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.390636, 37.787567, 34.878078>,  <45.641895, 37.679344, 35.169895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390636, 37.787567, 34.878078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317696, 0.945065, 0.076950,
		0.710285, -0.183437, -0.679593,
		-0.628144, 0.270560, -0.729542,
		45.202194, 37.868736, 34.659214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003693, 38.114868, 34.690323>,  <45.641895, 37.679344, 35.169895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003693, 38.114868, 34.690323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613373, 38.193905, 34.652870>,  <45.379181, 38.241325, 34.630398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613373, 38.193905, 34.652870>,  <46.003693, 38.114868, 34.690323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613373, 38.193905, 34.652870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187151, 0.976194, 0.109633,
		0.113061, 0.089457, -0.989553,
		-0.975803, 0.197591, -0.093627,
		45.320633, 38.253181, 34.624783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079655, 38.700512, 34.408432>,  <46.003693, 38.114868, 34.690323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079655, 38.700512, 34.408432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698017, 38.691360, 34.527889>,  <45.469036, 38.685871, 34.599564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698017, 38.691360, 34.527889>,  <46.079655, 38.700512, 34.408432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698017, 38.691360, 34.527889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006844, 0.998484, 0.054623,
		-0.299442, 0.050071, -0.952800,
		-0.954090, -0.022877, 0.298645,
		45.411789, 38.684498, 34.617481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684669, 39.222443, 34.070560>,  <46.079655, 38.700512, 34.408432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684669, 39.222443, 34.070560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491287, 39.142498, 34.411461>,  <45.375259, 39.094532, 34.616001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491287, 39.142498, 34.411461>,  <45.684669, 39.222443, 34.070560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491287, 39.142498, 34.411461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077347, 0.979532, 0.185836,
		-0.871946, 0.023924, -0.489017,
		-0.483453, -0.199864, 0.852248,
		45.346252, 39.082539, 34.667137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024818, 39.678429, 33.985962>,  <45.684669, 39.222443, 34.070560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024818, 39.678429, 33.985962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086445, 39.582409, 34.369347>,  <45.123421, 39.524796, 34.599377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086445, 39.582409, 34.369347>,  <45.024818, 39.678429, 33.985962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086445, 39.582409, 34.369347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337718, 0.898823, 0.279400,
		-0.928554, -0.366733, 0.057404,
		0.154061, -0.240052, 0.958457,
		45.132664, 39.510395, 34.656883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379719, 39.763550, 34.352165>,  <45.024818, 39.678429, 33.985962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379719, 39.763550, 34.352165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668720, 39.769878, 34.628639>,  <44.842121, 39.773678, 34.794521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668720, 39.769878, 34.628639>,  <44.379719, 39.763550, 34.352165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668720, 39.769878, 34.628639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439145, 0.782661, 0.441127,
		-0.533981, -0.622247, 0.572427,
		0.722507, 0.015825, 0.691183,
		44.885471, 39.774628, 34.835995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967213, 39.872944, 34.879166>,  <44.379719, 39.763550, 34.352165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967213, 39.872944, 34.879166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.330780, 39.992271, 34.995697>,  <44.548920, 40.063869, 35.065617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.330780, 39.992271, 34.995697>,  <43.967213, 39.872944, 34.879166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330780, 39.992271, 34.995697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414348, 0.724500, 0.550832,
		-0.046746, -0.621374, 0.782118,
		0.908917, 0.298320, 0.291333,
		44.603455, 40.081768, 35.083096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864120, 40.119389, 35.547394>,  <43.967213, 39.872944, 34.879166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864120, 40.119389, 35.547394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.230743, 40.263809, 35.478626>,  <44.450718, 40.350464, 35.437366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.230743, 40.263809, 35.478626>,  <43.864120, 40.119389, 35.547394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230743, 40.263809, 35.478626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173592, 0.746518, 0.642322,
		0.360253, -0.558884, 0.746905,
		0.916561, 0.361055, -0.171918,
		44.505711, 40.372128, 35.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217300, 40.170017, 36.195854>,  <43.864120, 40.119389, 35.547394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217300, 40.170017, 36.195854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420536, 40.413654, 35.952263>,  <44.542477, 40.559837, 35.806107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420536, 40.413654, 35.952263>,  <44.217300, 40.170017, 36.195854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420536, 40.413654, 35.952263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045813, 0.725153, 0.687062,
		0.860083, -0.321192, 0.396349,
		0.508093, 0.609088, -0.608977,
		44.572964, 40.596382, 35.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596214, 40.501102, 36.632286>,  <44.217300, 40.170017, 36.195854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596214, 40.501102, 36.632286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623711, 40.749355, 36.319851>,  <44.640209, 40.898308, 36.132389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.623711, 40.749355, 36.319851>,  <44.596214, 40.501102, 36.632286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623711, 40.749355, 36.319851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147999, 0.780617, 0.607235,
		0.986596, 0.073859, 0.145511,
		0.068739, 0.620631, -0.781084,
		44.644333, 40.935543, 36.085526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112019, 41.044853, 36.810513>,  <44.596214, 40.501102, 36.632286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112019, 41.044853, 36.810513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873955, 41.195240, 36.526417>,  <44.731117, 41.285473, 36.355961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873955, 41.195240, 36.526417>,  <45.112019, 41.044853, 36.810513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873955, 41.195240, 36.526417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075103, 0.853918, 0.514959,
		0.800092, 0.359823, -0.479980,
		-0.595158, 0.375967, -0.710237,
		44.695408, 41.308029, 36.313347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391460, 41.682163, 36.802849>,  <45.112019, 41.044853, 36.810513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391460, 41.682163, 36.802849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043411, 41.703186, 36.606838>,  <44.834583, 41.715801, 36.489231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043411, 41.703186, 36.606838>,  <45.391460, 41.682163, 36.802849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043411, 41.703186, 36.606838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156401, 0.913451, 0.375693,
		0.467362, 0.403539, -0.786593,
		-0.870121, 0.052560, -0.490026,
		44.782375, 41.718956, 36.459831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434814, 42.268875, 36.359818>,  <45.391460, 41.682163, 36.802849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434814, 42.268875, 36.359818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053688, 42.198189, 36.458546>,  <44.825012, 42.155777, 36.517780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053688, 42.198189, 36.458546>,  <45.434814, 42.268875, 36.359818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053688, 42.198189, 36.458546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065213, 0.913257, 0.402131,
		-0.296472, 0.367060, -0.881687,
		-0.952813, -0.176718, 0.246818,
		44.767845, 42.145172, 36.532593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099751, 42.703671, 36.142132>,  <45.434814, 42.268875, 36.359818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099751, 42.703671, 36.142132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838062, 42.593536, 36.423897>,  <44.681049, 42.527458, 36.592957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838062, 42.593536, 36.423897>,  <45.099751, 42.703671, 36.142132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838062, 42.593536, 36.423897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161342, 0.859133, 0.485653,
		-0.738898, 0.431373, -0.517637,
		-0.654216, -0.275331, 0.704410,
		44.641796, 42.510937, 36.635220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840260, 43.295761, 36.355515>,  <45.099751, 42.703671, 36.142132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840260, 43.295761, 36.355515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633793, 43.074287, 36.616898>,  <44.509911, 42.941402, 36.773727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633793, 43.074287, 36.616898>,  <44.840260, 43.295761, 36.355515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633793, 43.074287, 36.616898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115990, 0.801108, 0.587173,
		-0.848596, 0.227287, -0.477730,
		-0.516170, -0.553684, 0.653454,
		44.478943, 42.908180, 36.812935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236618, 43.729568, 36.503380>,  <44.840260, 43.295761, 36.355515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236618, 43.729568, 36.503380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303364, 43.473133, 36.803020>,  <44.343410, 43.319271, 36.982807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303364, 43.473133, 36.803020>,  <44.236618, 43.729568, 36.503380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303364, 43.473133, 36.803020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135971, 0.737534, 0.661480,
		-0.976559, -0.212234, 0.035898,
		0.166864, -0.641093, 0.749103,
		44.353424, 43.280804, 37.027752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681530, 43.812141, 36.979080>,  <44.236618, 43.729568, 36.503380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681530, 43.812141, 36.979080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953476, 43.620319, 37.201000>,  <44.116646, 43.505226, 37.334152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953476, 43.620319, 37.201000>,  <43.681530, 43.812141, 36.979080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953476, 43.620319, 37.201000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160182, 0.641171, 0.750494,
		-0.715626, -0.599107, 0.359096,
		0.679868, -0.479553, 0.554805,
		44.157436, 43.476452, 37.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.159462, 38.946491, 39.355038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779030, 38.833035, 39.404026>,  <36.550770, 38.764961, 39.433418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779030, 38.833035, 39.404026>,  <37.159462, 38.946491, 39.355038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779030, 38.833035, 39.404026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107510, -0.675477, -0.729501,
		0.289640, -0.680647, 0.672926,
		-0.951079, -0.283639, 0.122469,
		36.493706, 38.747944, 39.440765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219158, 38.255268, 39.225212>,  <37.159462, 38.946491, 39.355038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219158, 38.255268, 39.225212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833839, 38.359653, 39.200027>,  <36.602650, 38.422283, 39.184917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833839, 38.359653, 39.200027>,  <37.219158, 38.255268, 39.225212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833839, 38.359653, 39.200027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037547, -0.363213, -0.930950,
		-0.265813, -0.894413, 0.359679,
		-0.963293, 0.260963, -0.062964,
		36.544853, 38.437943, 39.181137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812023, 37.640186, 39.194660>,  <37.219158, 38.255268, 39.225212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812023, 37.640186, 39.194660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599251, 37.929024, 39.017742>,  <36.471588, 38.102325, 38.911591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599251, 37.929024, 39.017742>,  <36.812023, 37.640186, 39.194660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599251, 37.929024, 39.017742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006029, -0.525541, -0.850747,
		-0.846767, -0.449870, 0.283904,
		-0.531929, 0.722096, -0.442299,
		36.439671, 38.145653, 38.885052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307945, 37.340206, 38.859074>,  <36.812023, 37.640186, 39.194660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307945, 37.340206, 38.859074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314564, 37.696964, 38.678295>,  <36.318535, 37.911018, 38.569828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314564, 37.696964, 38.678295>,  <36.307945, 37.340206, 38.859074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314564, 37.696964, 38.678295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179188, -0.442043, -0.878914,
		-0.983676, 0.095526, 0.152502,
		0.016546, 0.891893, -0.451944,
		36.319527, 37.964531, 38.542713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667370, 37.361191, 38.421513>,  <36.307945, 37.340206, 38.859074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667370, 37.361191, 38.421513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952396, 37.606293, 38.284817>,  <36.123413, 37.753353, 38.202797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952396, 37.606293, 38.284817>,  <35.667370, 37.361191, 38.421513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952396, 37.606293, 38.284817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216510, -0.271273, -0.937835,
		-0.667367, 0.742257, -0.060632,
		0.712563, 0.612752, -0.341744,
		36.166164, 37.790119, 38.182293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343273, 37.797558, 37.906696>,  <35.667370, 37.361191, 38.421513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343273, 37.797558, 37.906696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738892, 37.764881, 37.857517>,  <35.976261, 37.745277, 37.828011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738892, 37.764881, 37.857517>,  <35.343273, 37.797558, 37.906696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738892, 37.764881, 37.857517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139988, -0.254835, -0.956798,
		0.046828, 0.963528, -0.263479,
		0.989045, -0.081688, -0.122949,
		36.035606, 37.740376, 37.820633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318653, 38.147957, 37.301693>,  <35.343273, 37.797558, 37.906696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318653, 38.147957, 37.301693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679775, 37.978802, 37.332943>,  <35.896450, 37.877308, 37.351692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679775, 37.978802, 37.332943>,  <35.318653, 38.147957, 37.301693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679775, 37.978802, 37.332943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021619, -0.226077, -0.973870,
		0.429501, 0.877527, -0.213246,
		0.902807, -0.422889, 0.078129,
		35.950619, 37.851936, 37.356380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707825, 38.552559, 36.911694>,  <35.318653, 38.147957, 37.301693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707825, 38.552559, 36.911694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875309, 38.191425, 36.950836>,  <35.975800, 37.974747, 36.974323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875309, 38.191425, 36.950836>,  <35.707825, 38.552559, 36.911694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875309, 38.191425, 36.950836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019234, -0.098919, -0.994910,
		0.907916, 0.418461, -0.024053,
		0.418710, -0.902832, 0.097858,
		36.000923, 37.920574, 36.980194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170238, 38.578663, 36.314735>,  <35.707825, 38.552559, 36.911694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170238, 38.578663, 36.314735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159874, 38.194664, 36.426258>,  <36.153656, 37.964264, 36.493172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159874, 38.194664, 36.426258>,  <36.170238, 38.578663, 36.314735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159874, 38.194664, 36.426258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154256, -0.279398, -0.947704,
		0.987691, 0.018451, 0.155325,
		-0.025911, -0.959998, 0.278805,
		36.152100, 37.906666, 36.509899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662544, 38.220093, 35.947567>,  <36.170238, 38.578663, 36.314735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662544, 38.220093, 35.947567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447472, 37.916885, 36.095245>,  <36.318428, 37.734962, 36.183853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447472, 37.916885, 36.095245>,  <36.662544, 38.220093, 35.947567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447472, 37.916885, 36.095245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112247, -0.498335, -0.859688,
		0.835642, -0.420799, 0.353032,
		-0.537683, -0.758018, 0.369196,
		36.286167, 37.689480, 36.206005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136082, 37.706516, 35.985596>,  <36.662544, 38.220093, 35.947567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136082, 37.706516, 35.985596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756588, 37.588020, 35.941509>,  <36.528893, 37.516922, 35.915058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756588, 37.588020, 35.941509>,  <37.136082, 37.706516, 35.985596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756588, 37.588020, 35.941509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197760, -0.284334, -0.938107,
		0.246565, -0.911810, 0.328342,
		-0.948734, -0.296237, -0.110213,
		36.471970, 37.499149, 35.908447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243362, 37.121235, 35.517311>,  <37.136082, 37.706516, 35.985596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243362, 37.121235, 35.517311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852924, 37.197025, 35.474731>,  <36.618660, 37.242500, 35.449184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852924, 37.197025, 35.474731>,  <37.243362, 37.121235, 35.517311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852924, 37.197025, 35.474731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066271, -0.206985, -0.976097,
		-0.206985, -0.959820, 0.189481,
		0.976097, -0.189481, 0.106451,
		36.560097, 37.253868, 35.442795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975533, 36.587032, 35.130646>,  <37.243362, 37.121235, 35.517311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975533, 36.587032, 35.130646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702568, 36.874943, 35.079685>,  <36.538788, 37.047691, 35.049110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702568, 36.874943, 35.079685>,  <36.975533, 36.587032, 35.130646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702568, 36.874943, 35.079685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153988, -0.311939, -0.937540,
		-0.714564, -0.620171, 0.323709,
		-0.682412, 0.719779, -0.127402,
		36.497845, 37.090878, 35.041466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159519, 35.903748, 35.130959>,  <36.975533, 36.587032, 35.130646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159519, 35.903748, 35.130959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951023, 35.682632, 34.870888>,  <36.825924, 35.549961, 34.714848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951023, 35.682632, 34.870888>,  <37.159519, 35.903748, 35.130959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951023, 35.682632, 34.870888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799392, -0.583004, -0.145186,
		-0.298796, -0.595422, 0.745784,
		-0.521242, -0.552793, -0.650175,
		36.794651, 35.516796, 34.675835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523205, 35.286747, 35.159050>,  <37.159519, 35.903748, 35.130959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523205, 35.286747, 35.159050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774410, 34.977154, 35.126682>,  <37.925133, 34.791397, 35.107262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774410, 34.977154, 35.126682>,  <37.523205, 35.286747, 35.159050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774410, 34.977154, 35.126682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104480, -0.186897, 0.976808,
		-0.771160, -0.604991, -0.198239,
		0.628010, -0.773987, -0.080918,
		37.962814, 34.744957, 35.102406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263390, 34.637367, 35.518188>,  <37.523205, 35.286747, 35.159050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263390, 34.637367, 35.518188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661919, 34.668678, 35.504295>,  <37.901035, 34.687466, 35.495960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661919, 34.668678, 35.504295>,  <37.263390, 34.637367, 35.518188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661919, 34.668678, 35.504295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044394, -0.125263, 0.991130,
		0.073237, -0.989030, -0.128278,
		0.996326, 0.078282, -0.034733,
		37.960815, 34.692162, 35.493874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504211, 34.135162, 35.985039>,  <37.263390, 34.637367, 35.518188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504211, 34.135162, 35.985039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803974, 34.398102, 35.953350>,  <37.983833, 34.555866, 35.934338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803974, 34.398102, 35.953350>,  <37.504211, 34.135162, 35.985039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803974, 34.398102, 35.953350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014284, 0.135675, 0.990650,
		0.661956, -0.741268, 0.111065,
		0.749406, 0.657353, -0.079223,
		38.028797, 34.595306, 35.929585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755821, 33.968773, 36.668633>,  <37.504211, 34.135162, 35.985039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755821, 33.968773, 36.668633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917629, 34.312023, 36.542149>,  <38.014713, 34.517975, 36.466259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917629, 34.312023, 36.542149>,  <37.755821, 33.968773, 36.668633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917629, 34.312023, 36.542149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020200, 0.337289, 0.941184,
		0.914307, -0.387113, 0.119105,
		0.404518, 0.858125, -0.316206,
		38.038986, 34.569462, 36.447289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294895, 33.983627, 37.043415>,  <37.755821, 33.968773, 36.668633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294895, 33.983627, 37.043415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168633, 34.349052, 36.940845>,  <38.092873, 34.568310, 36.879303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168633, 34.349052, 36.940845>,  <38.294895, 33.983627, 37.043415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168633, 34.349052, 36.940845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145522, 0.220439, 0.964484,
		0.937647, 0.341766, 0.063360,
		-0.315661, 0.913566, -0.256429,
		38.073933, 34.623123, 36.863918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582024, 34.362911, 37.578594>,  <38.294895, 33.983627, 37.043415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582024, 34.362911, 37.578594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324001, 34.597744, 37.382946>,  <38.169189, 34.738644, 37.265556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324001, 34.597744, 37.382946>,  <38.582024, 34.362911, 37.578594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324001, 34.597744, 37.382946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344101, 0.348348, 0.871922,
		0.682274, 0.730744, -0.022688,
		-0.645055, 0.587083, -0.489119,
		38.130486, 34.773869, 37.236210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706207, 35.038837, 37.843555>,  <38.582024, 34.362911, 37.578594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706207, 35.038837, 37.843555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329823, 35.019691, 37.709511>,  <38.103992, 35.008202, 37.629082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329823, 35.019691, 37.709511>,  <38.706207, 35.038837, 37.843555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329823, 35.019691, 37.709511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312167, 0.505625, 0.804298,
		0.130941, 0.861425, -0.490716,
		-0.940960, -0.047869, -0.335115,
		38.047535, 35.005329, 37.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412025, 35.679043, 38.027691>,  <38.706207, 35.038837, 37.843555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412025, 35.679043, 38.027691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095852, 35.442291, 37.964581>,  <37.906147, 35.300240, 37.926712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095852, 35.442291, 37.964581>,  <38.412025, 35.679043, 38.027691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095852, 35.442291, 37.964581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338541, 0.207449, 0.917799,
		-0.510492, 0.778876, -0.364350,
		-0.790435, -0.591876, -0.157781,
		37.858723, 35.264729, 37.917248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875519, 36.007973, 38.367336>,  <38.412025, 35.679043, 38.027691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875519, 36.007973, 38.367336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694820, 35.653385, 38.327141>,  <37.586403, 35.440632, 38.303024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694820, 35.653385, 38.327141>,  <37.875519, 36.007973, 38.367336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694820, 35.653385, 38.327141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450968, 0.129712, 0.883064,
		-0.769774, 0.444239, -0.458366,
		-0.451747, -0.886469, -0.100489,
		37.559296, 35.387444, 38.296993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237949, 36.170212, 38.378036>,  <37.875519, 36.007973, 38.367336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237949, 36.170212, 38.378036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263275, 35.787945, 38.493053>,  <37.278473, 35.558582, 38.562065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263275, 35.787945, 38.493053>,  <37.237949, 36.170212, 38.378036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263275, 35.787945, 38.493053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515941, 0.215287, 0.829130,
		-0.854281, -0.200855, -0.479439,
		0.063318, -0.955672, 0.287545,
		37.282272, 35.501244, 38.579315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576767, 36.001610, 38.625145>,  <37.237949, 36.170212, 38.378036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576767, 36.001610, 38.625145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791149, 35.705566, 38.787621>,  <36.919777, 35.527939, 38.885105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791149, 35.705566, 38.787621>,  <36.576767, 36.001610, 38.625145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791149, 35.705566, 38.787621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475488, 0.132938, 0.869620,
		-0.697613, -0.659214, -0.280665,
		0.535954, -0.740111, 0.406188,
		36.951935, 35.483532, 38.909477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109207, 35.682995, 39.009178>,  <36.576767, 36.001610, 38.625145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109207, 35.682995, 39.009178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446865, 35.551250, 39.178383>,  <36.649460, 35.472206, 39.279907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446865, 35.551250, 39.178383>,  <36.109207, 35.682995, 39.009178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446865, 35.551250, 39.178383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333433, 0.295319, 0.895326,
		-0.419807, -0.896833, 0.139473,
		0.844147, -0.329359, 0.423011,
		36.700108, 35.452442, 39.305286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900372, 35.385609, 39.710587>,  <36.109207, 35.682995, 39.009178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900372, 35.385609, 39.710587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291862, 35.466568, 39.724056>,  <36.526756, 35.515144, 39.732136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291862, 35.466568, 39.724056>,  <35.900372, 35.385609, 39.710587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291862, 35.466568, 39.724056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090151, 0.276776, 0.956696,
		0.184313, -0.939377, 0.289134,
		0.978725, 0.202397, 0.033672,
		36.585480, 35.527287, 39.734158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087566, 35.035461, 40.291553>,  <35.900372, 35.385609, 39.710587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087566, 35.035461, 40.291553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366268, 35.319057, 40.247997>,  <36.533489, 35.489216, 40.221863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366268, 35.319057, 40.247997>,  <36.087566, 35.035461, 40.291553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366268, 35.319057, 40.247997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037776, 0.115327, 0.992609,
		0.716310, -0.695723, 0.053572,
		0.696759, 0.708992, -0.108892,
		36.575294, 35.531754, 40.215328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788731, 34.551865, 40.755737>,  <36.087566, 35.035461, 40.291553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788731, 34.551865, 40.755737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392693, 34.580750, 40.803886>,  <35.155067, 34.598080, 40.832775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392693, 34.580750, 40.803886>,  <35.788731, 34.551865, 40.755737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392693, 34.580750, 40.803886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134592, -0.244943, -0.960150,
		-0.039848, -0.966845, 0.252236,
		-0.990100, 0.072209, 0.120369,
		35.095661, 34.602413, 40.839996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555740, 34.163624, 40.200954>,  <35.788731, 34.551865, 40.755737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555740, 34.163624, 40.200954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215431, 34.344952, 40.307301>,  <35.011246, 34.453747, 40.371109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215431, 34.344952, 40.307301>,  <35.555740, 34.163624, 40.200954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215431, 34.344952, 40.307301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285243, 0.026576, -0.958087,
		-0.441383, -0.890953, 0.106696,
		-0.850775, 0.453317, 0.265869,
		34.960197, 34.480946, 40.387062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057755, 33.787666, 40.041824>,  <35.555740, 34.163624, 40.200954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057755, 33.787666, 40.041824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861500, 34.136032, 40.052990>,  <34.743748, 34.345051, 40.059689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861500, 34.136032, 40.052990>,  <35.057755, 33.787666, 40.041824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861500, 34.136032, 40.052990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407388, -0.200949, -0.890873,
		-0.770269, -0.448464, 0.453394,
		-0.490633, 0.870919, 0.027914,
		34.714310, 34.397308, 40.061363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305546, 33.663982, 39.885319>,  <35.057755, 33.787666, 40.041824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305546, 33.663982, 39.885319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377113, 34.043926, 39.782753>,  <34.420055, 34.271893, 39.721214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377113, 34.043926, 39.782753>,  <34.305546, 33.663982, 39.885319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377113, 34.043926, 39.782753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377283, -0.174459, -0.909517,
		-0.908650, 0.259472, 0.327153,
		0.178920, 0.949862, -0.256417,
		34.430790, 34.328884, 39.705830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723778, 33.964996, 39.584274>,  <34.305546, 33.663982, 39.885319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723778, 33.964996, 39.584274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007088, 34.222195, 39.467720>,  <34.177074, 34.376514, 39.397789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007088, 34.222195, 39.467720>,  <33.723778, 33.964996, 39.584274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007088, 34.222195, 39.467720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387797, 0.009488, -0.921696,
		-0.589884, 0.765809, 0.256073,
		0.708273, 0.642998, -0.291381,
		34.219570, 34.415092, 39.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390022, 34.492302, 39.204788>,  <33.723778, 33.964996, 39.584274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390022, 34.492302, 39.204788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771782, 34.510887, 39.086830>,  <34.000839, 34.522038, 39.016056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771782, 34.510887, 39.086830>,  <33.390022, 34.492302, 39.204788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771782, 34.510887, 39.086830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289141, -0.101950, -0.951842,
		-0.074294, 0.993704, -0.083866,
		0.954399, 0.046467, -0.294895,
		34.058102, 34.524826, 38.998363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352783, 34.983257, 38.727451>,  <33.390022, 34.492302, 39.204788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352783, 34.983257, 38.727451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678883, 34.771801, 38.632870>,  <33.874542, 34.644928, 38.576122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678883, 34.771801, 38.632870>,  <33.352783, 34.983257, 38.727451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678883, 34.771801, 38.632870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236884, 0.068175, -0.969143,
		0.528452, 0.846101, -0.069648,
		0.815245, -0.528644, -0.236455,
		33.923454, 34.613209, 38.561932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516403, 35.365845, 38.138847>,  <33.352783, 34.983257, 38.727451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516403, 35.365845, 38.138847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701427, 35.011681, 38.120560>,  <33.812443, 34.799183, 38.109585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701427, 35.011681, 38.120560>,  <33.516403, 35.365845, 38.138847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701427, 35.011681, 38.120560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181130, -0.043891, -0.982479,
		0.867886, 0.462741, -0.180676,
		0.462563, -0.885406, -0.045724,
		33.840195, 34.746059, 38.106842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939732, 35.538258, 37.638512>,  <33.516403, 35.365845, 38.138847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939732, 35.538258, 37.638512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907059, 35.142483, 37.686428>,  <33.887455, 34.905018, 37.715179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907059, 35.142483, 37.686428>,  <33.939732, 35.538258, 37.638512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907059, 35.142483, 37.686428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232921, -0.097917, -0.967554,
		0.969059, -0.106934, -0.222462,
		-0.081682, -0.989433, 0.119795,
		33.882553, 34.845654, 37.722366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242710, 35.293118, 37.032669>,  <33.939732, 35.538258, 37.638512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242710, 35.293118, 37.032669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029457, 34.979633, 37.160145>,  <33.901505, 34.791542, 37.236629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029457, 34.979633, 37.160145>,  <34.242710, 35.293118, 37.032669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029457, 34.979633, 37.160145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254089, -0.210975, -0.943890,
		0.806973, -0.584197, -0.086654,
		-0.533136, -0.783712, 0.318689,
		33.869514, 34.744518, 37.255753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474796, 34.799564, 36.553310>,  <34.242710, 35.293118, 37.032669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474796, 34.799564, 36.553310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118923, 34.697872, 36.705009>,  <33.905399, 34.636856, 36.796028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118923, 34.697872, 36.705009>,  <34.474796, 34.799564, 36.553310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118923, 34.697872, 36.705009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353200, -0.143136, -0.924533,
		0.289329, -0.956493, 0.037552,
		-0.889684, -0.254231, 0.379247,
		33.852016, 34.621605, 36.818783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385223, 34.231461, 36.148014>,  <34.474796, 34.799564, 36.553310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385223, 34.231461, 36.148014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033688, 34.345161, 36.301296>,  <33.822765, 34.413383, 36.393265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033688, 34.345161, 36.301296>,  <34.385223, 34.231461, 36.148014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033688, 34.345161, 36.301296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437243, -0.158393, -0.885285,
		-0.190946, -0.945576, 0.263488,
		-0.878839, 0.284250, 0.383202,
		33.770035, 34.430435, 36.416256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.842007, 34.634335, 44.552937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657391, 34.987885, 44.522629>,  <35.546619, 35.200016, 44.504444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.657391, 34.987885, 44.522629>,  <35.842007, 34.634335, 44.552937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657391, 34.987885, 44.522629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387921, -0.277896, -0.878801,
		-0.797807, -0.376213, 0.471135,
		-0.461543, 0.883877, -0.075766,
		35.518929, 35.253048, 44.499901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186989, 34.446674, 44.333794>,  <35.842007, 34.634335, 44.552937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186989, 34.446674, 44.333794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.230549, 34.832870, 44.239159>,  <35.256687, 35.064587, 44.182377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.230549, 34.832870, 44.239159>,  <35.186989, 34.446674, 44.333794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230549, 34.832870, 44.239159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411168, -0.172935, -0.895005,
		-0.905030, 0.194747, 0.378145,
		0.108905, 0.965488, -0.236585,
		35.263222, 35.122517, 44.168182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545254, 34.668301, 44.112873>,  <35.186989, 34.446674, 44.333794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545254, 34.668301, 44.112873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785686, 34.948559, 43.959099>,  <34.929947, 35.116714, 43.866837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785686, 34.948559, 43.959099>,  <34.545254, 34.668301, 44.112873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785686, 34.948559, 43.959099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481376, -0.066566, -0.873983,
		-0.637944, 0.710396, 0.297263,
		0.601086, 0.700647, -0.384433,
		34.966011, 35.158752, 43.843769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185909, 34.875202, 43.517487>,  <34.545254, 34.668301, 44.112873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185909, 34.875202, 43.517487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533047, 35.057098, 43.437431>,  <34.741329, 35.166237, 43.389397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533047, 35.057098, 43.437431>,  <34.185909, 34.875202, 43.517487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533047, 35.057098, 43.437431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179458, -0.088727, -0.979756,
		-0.463294, 0.886193, 0.004606,
		0.867844, 0.454742, -0.200141,
		34.793400, 35.193520, 43.377388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083416, 35.465977, 43.011959>,  <34.185909, 34.875202, 43.517487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083416, 35.465977, 43.011959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453846, 35.318081, 42.981823>,  <34.676105, 35.229343, 42.963741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.453846, 35.318081, 42.981823>,  <34.083416, 35.465977, 43.011959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453846, 35.318081, 42.981823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130618, -0.126804, -0.983290,
		0.354007, 0.920443, -0.165725,
		0.926077, -0.369738, -0.075337,
		34.731670, 35.207161, 42.959221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223755, 35.740700, 42.240574>,  <34.083416, 35.465977, 43.011959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223755, 35.740700, 42.240574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502697, 35.470039, 42.335091>,  <34.670063, 35.307644, 42.391800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.502697, 35.470039, 42.335091>,  <34.223755, 35.740700, 42.240574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502697, 35.470039, 42.335091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111166, -0.223584, -0.968325,
		0.708054, 0.701533, -0.080696,
		0.697353, -0.676655, 0.236296,
		34.711903, 35.267044, 42.405979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781261, 35.920013, 41.828415>,  <34.223755, 35.740700, 42.240574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781261, 35.920013, 41.828415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.811966, 35.535458, 41.934128>,  <34.830387, 35.304726, 41.997555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.811966, 35.535458, 41.934128>,  <34.781261, 35.920013, 41.828415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811966, 35.535458, 41.934128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165519, -0.249098, -0.954229,
		0.983215, 0.116991, 0.140007,
		0.076761, -0.961386, 0.264281,
		34.834995, 35.247044, 42.013412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385620, 35.649082, 41.506989>,  <34.781261, 35.920013, 41.828415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385620, 35.649082, 41.506989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165451, 35.321594, 41.572384>,  <35.033352, 35.125099, 41.611622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165451, 35.321594, 41.572384>,  <35.385620, 35.649082, 41.506989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165451, 35.321594, 41.572384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204473, -0.322051, -0.924378,
		0.809462, -0.475367, 0.344670,
		-0.550420, -0.818724, 0.163488,
		35.000324, 35.075977, 41.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720886, 35.214363, 41.053177>,  <35.385620, 35.649082, 41.506989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720886, 35.214363, 41.053177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380993, 35.020863, 41.137032>,  <35.177059, 34.904762, 41.187344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.380993, 35.020863, 41.137032>,  <35.720886, 35.214363, 41.053177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380993, 35.020863, 41.137032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023105, -0.363079, -0.931472,
		0.526713, -0.796342, 0.297342,
		-0.849729, -0.483748, 0.209638,
		35.126076, 34.875740, 41.199924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420673, 35.191261, 40.971085>,  <35.720886, 35.214363, 41.053177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420673, 35.191261, 40.971085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506866, 35.531078, 40.778484>,  <36.558582, 35.734970, 40.662926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506866, 35.531078, 40.778484>,  <36.420673, 35.191261, 40.971085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506866, 35.531078, 40.778484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396373, 0.374541, 0.838216,
		0.892444, -0.371471, -0.256032,
		0.215479, 0.849546, -0.481499,
		36.571510, 35.785942, 40.634033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163696, 35.275963, 41.242222>,  <36.420673, 35.191261, 40.971085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163696, 35.275963, 41.242222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996304, 35.619663, 41.124538>,  <36.895866, 35.825882, 41.053928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996304, 35.619663, 41.124538>,  <37.163696, 35.275963, 41.242222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996304, 35.619663, 41.124538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380769, 0.460085, 0.802083,
		0.824551, 0.223634, -0.519715,
		-0.418486, 0.859249, -0.294211,
		36.870758, 35.877438, 41.036274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674534, 35.814362, 41.293072>,  <37.163696, 35.275963, 41.242222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674534, 35.814362, 41.293072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324699, 36.008144, 41.285034>,  <37.114799, 36.124413, 41.280212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324699, 36.008144, 41.285034>,  <37.674534, 35.814362, 41.293072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324699, 36.008144, 41.285034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274634, 0.529100, 0.802888,
		0.399599, 0.696674, -0.595791,
		-0.874584, 0.484458, -0.020097,
		37.062325, 36.153481, 41.279003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926807, 36.470757, 41.278664>,  <37.674534, 35.814362, 41.293072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926807, 36.470757, 41.278664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545704, 36.448765, 41.398148>,  <37.317043, 36.435570, 41.469837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545704, 36.448765, 41.398148>,  <37.926807, 36.470757, 41.278664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545704, 36.448765, 41.398148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264790, 0.331425, 0.905563,
		-0.148784, 0.941879, -0.301211,
		-0.952759, -0.054976, 0.298711,
		37.259876, 36.432274, 41.487762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786526, 37.201702, 41.413525>,  <37.926807, 36.470757, 41.278664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786526, 37.201702, 41.413525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504967, 36.984829, 41.597076>,  <37.336033, 36.854706, 41.707207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504967, 36.984829, 41.597076>,  <37.786526, 37.201702, 41.413525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504967, 36.984829, 41.597076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236396, 0.430389, 0.871138,
		-0.669811, 0.721669, -0.174780,
		-0.703897, -0.542180, 0.458879,
		37.293797, 36.822174, 41.734741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521511, 37.645870, 41.803120>,  <37.786526, 37.201702, 41.413525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521511, 37.645870, 41.803120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365044, 37.308228, 41.949806>,  <37.271164, 37.105644, 42.037819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365044, 37.308228, 41.949806>,  <37.521511, 37.645870, 41.803120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365044, 37.308228, 41.949806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238320, 0.291965, 0.926261,
		-0.888928, 0.449716, 0.086961,
		-0.391165, -0.844104, 0.366712,
		37.247696, 37.054996, 42.059818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007282, 37.778217, 42.421677>,  <37.521511, 37.645870, 41.803120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007282, 37.778217, 42.421677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149246, 37.408833, 42.479992>,  <37.234425, 37.187202, 42.514980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149246, 37.408833, 42.479992>,  <37.007282, 37.778217, 42.421677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149246, 37.408833, 42.479992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132595, 0.204083, 0.969933,
		-0.925450, -0.324908, 0.194877,
		0.354910, -0.923464, 0.145787,
		37.255718, 37.131794, 42.523727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000511, 37.783306, 43.113274>,  <37.007282, 37.778217, 42.421677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000511, 37.783306, 43.113274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174637, 37.427097, 43.060406>,  <37.279110, 37.213371, 43.028687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.174637, 37.427097, 43.060406>,  <37.000511, 37.783306, 43.113274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174637, 37.427097, 43.060406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156614, -0.069662, 0.985200,
		-0.886553, -0.449568, 0.109144,
		0.435311, -0.890526, -0.132168,
		37.305229, 37.159939, 43.020756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738968, 37.363609, 43.648598>,  <37.000511, 37.783306, 43.113274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738968, 37.363609, 43.648598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078331, 37.190456, 43.526733>,  <37.281948, 37.086567, 43.453613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078331, 37.190456, 43.526733>,  <36.738968, 37.363609, 43.648598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078331, 37.190456, 43.526733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271207, -0.138807, 0.952460,
		-0.454590, -0.890701, -0.000365,
		0.848407, -0.432880, -0.304665,
		37.332851, 37.060593, 43.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866093, 36.643005, 43.994366>,  <36.738968, 37.363609, 43.648598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866093, 36.643005, 43.994366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214420, 36.811348, 43.892735>,  <37.423416, 36.912354, 43.831757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.214420, 36.811348, 43.892735>,  <36.866093, 36.643005, 43.994366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214420, 36.811348, 43.892735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296376, -0.037094, 0.954351,
		0.392222, -0.906368, -0.157035,
		0.870818, 0.420859, -0.254076,
		37.475666, 36.937607, 43.816513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177444, 36.468399, 44.616890>,  <36.866093, 36.643005, 43.994366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177444, 36.468399, 44.616890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.450329, 36.696644, 44.434029>,  <37.614059, 36.833591, 44.324310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.450329, 36.696644, 44.434029>,  <37.177444, 36.468399, 44.616890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450329, 36.696644, 44.434029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484538, 0.115403, 0.867125,
		0.547548, -0.813071, -0.197754,
		0.682213, 0.570612, -0.457152,
		37.654991, 36.867828, 44.296883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733154, 36.183014, 44.840618>,  <37.177444, 36.468399, 44.616890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733154, 36.183014, 44.840618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.858479, 36.548172, 44.735954>,  <37.933674, 36.767265, 44.673157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.858479, 36.548172, 44.735954>,  <37.733154, 36.183014, 44.840618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858479, 36.548172, 44.735954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341974, 0.148591, 0.927887,
		0.885941, -0.380198, -0.265630,
		0.313310, 0.912891, -0.261660,
		37.952473, 36.822041, 44.657455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508705, 36.284859, 44.998150>,  <37.733154, 36.183014, 44.840618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508705, 36.284859, 44.998150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334286, 36.644699, 44.988571>,  <38.229633, 36.860603, 44.982826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.334286, 36.644699, 44.988571>,  <38.508705, 36.284859, 44.998150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334286, 36.644699, 44.988571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422667, 0.228217, 0.877080,
		0.794488, 0.372332, -0.479747,
		-0.436052, 0.899603, -0.023944,
		38.203472, 36.914581, 44.981388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139111, 36.795685, 45.092701>,  <38.508705, 36.284859, 44.998150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139111, 36.795685, 45.092701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785252, 36.948177, 45.200081>,  <38.572937, 37.039673, 45.264511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785252, 36.948177, 45.200081>,  <39.139111, 36.795685, 45.092701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785252, 36.948177, 45.200081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379933, 0.255626, 0.888992,
		0.270289, 0.888436, -0.370980,
		-0.884644, 0.381232, 0.268453,
		38.519859, 37.062546, 45.280617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.986126, 40.311512, 45.264679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294170, 40.063236, 45.205788>,  <30.478998, 39.914272, 45.170452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.294170, 40.063236, 45.205788>,  <29.986126, 40.311512, 45.264679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294170, 40.063236, 45.205788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108761, 0.099657, -0.989060,
		0.628568, 0.777700, 0.009241,
		0.770113, -0.620686, -0.147225,
		30.525204, 39.877029, 45.161621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324305, 40.667461, 44.670444>,  <29.986126, 40.311512, 45.264679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324305, 40.667461, 44.670444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.462463, 40.292229, 44.659828>,  <30.545359, 40.067089, 44.653458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.462463, 40.292229, 44.659828>,  <30.324305, 40.667461, 44.670444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462463, 40.292229, 44.659828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049467, 0.010044, -0.998725,
		0.937152, 0.346269, -0.042935,
		0.345396, -0.938082, -0.026541,
		30.566082, 40.010803, 44.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889502, 40.721931, 44.182056>,  <30.324305, 40.667461, 44.670444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889502, 40.721931, 44.182056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816870, 40.329494, 44.208862>,  <30.773291, 40.094032, 44.224945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.816870, 40.329494, 44.208862>,  <30.889502, 40.721931, 44.182056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816870, 40.329494, 44.208862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146470, -0.094372, -0.984703,
		0.972407, -0.168984, 0.160836,
		-0.181578, -0.981090, 0.067017,
		30.762396, 40.035168, 44.228966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464174, 40.263859, 43.900646>,  <30.889502, 40.721931, 44.182056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464174, 40.263859, 43.900646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.141830, 40.029724, 43.864937>,  <30.948425, 39.889244, 43.843510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.141830, 40.029724, 43.864937>,  <31.464174, 40.263859, 43.900646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141830, 40.029724, 43.864937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290176, -0.258991, -0.921261,
		0.516130, -0.768311, 0.378562,
		-0.805859, -0.585340, -0.089272,
		30.900072, 39.854122, 43.838154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711521, 39.551346, 43.633575>,  <31.464174, 40.263859, 43.900646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711521, 39.551346, 43.633575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328470, 39.621876, 43.542484>,  <31.098640, 39.664196, 43.487827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328470, 39.621876, 43.542484>,  <31.711521, 39.551346, 43.633575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328470, 39.621876, 43.542484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163421, -0.318436, -0.933752,
		-0.237165, -0.931401, 0.276126,
		-0.957626, 0.176328, -0.227732,
		31.041183, 39.674774, 43.474163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620255, 39.180965, 43.100986>,  <31.711521, 39.551346, 43.633575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620255, 39.180965, 43.100986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281649, 39.390526, 43.063168>,  <31.078485, 39.516262, 43.040478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281649, 39.390526, 43.063168>,  <31.620255, 39.180965, 43.100986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281649, 39.390526, 43.063168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034581, -0.231329, -0.972261,
		-0.531243, -0.819763, 0.213940,
		-0.846513, 0.523905, -0.094543,
		31.027695, 39.547699, 43.034805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324144, 38.877697, 42.653683>,  <31.620255, 39.180965, 43.100986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324144, 38.877697, 42.653683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.106304, 39.212074, 42.626530>,  <30.975599, 39.412701, 42.610237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.106304, 39.212074, 42.626530>,  <31.324144, 38.877697, 42.653683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106304, 39.212074, 42.626530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216493, -0.218308, -0.951563,
		-0.810272, -0.503527, 0.299867,
		-0.544602, 0.835944, -0.067879,
		30.942924, 39.462856, 42.606167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664219, 38.695724, 42.428986>,  <31.324144, 38.877697, 42.653683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664219, 38.695724, 42.428986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664484, 39.089211, 42.357098>,  <30.664644, 39.325302, 42.313965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664484, 39.089211, 42.357098>,  <30.664219, 38.695724, 42.428986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664484, 39.089211, 42.357098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266761, -0.173036, -0.948102,
		-0.963763, 0.048573, 0.262302,
		0.000664, 0.983717, -0.179723,
		30.664682, 39.384327, 42.303181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080296, 38.867870, 42.017082>,  <30.664219, 38.695724, 42.428986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080296, 38.867870, 42.017082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349726, 39.157955, 41.959995>,  <30.511383, 39.332005, 41.925743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349726, 39.157955, 41.959995>,  <30.080296, 38.867870, 42.017082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349726, 39.157955, 41.959995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167069, -0.038701, -0.985186,
		-0.719991, 0.687438, 0.095093,
		0.673573, 0.725212, -0.142714,
		30.551798, 39.375519, 41.917179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795383, 39.334278, 41.508526>,  <30.080296, 38.867870, 42.017082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795383, 39.334278, 41.508526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.187506, 39.412735, 41.499344>,  <30.422779, 39.459808, 41.493835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.187506, 39.412735, 41.499344>,  <29.795383, 39.334278, 41.508526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187506, 39.412735, 41.499344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007698, -0.154115, -0.988023,
		-0.197330, 0.968389, -0.152590,
		0.980307, 0.196141, -0.022957,
		30.481598, 39.471577, 41.492458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875988, 39.726479, 40.953037>,  <29.795383, 39.334278, 41.508526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875988, 39.726479, 40.953037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248285, 39.613121, 41.045475>,  <30.471664, 39.545105, 41.100937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.248285, 39.613121, 41.045475>,  <29.875988, 39.726479, 40.953037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248285, 39.613121, 41.045475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169481, -0.225684, -0.959345,
		0.324027, 0.932070, -0.162024,
		0.930743, -0.283394, 0.231096,
		30.527508, 39.528103, 41.114803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356165, 40.080296, 40.520508>,  <29.875988, 39.726479, 40.953037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356165, 40.080296, 40.520508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526222, 39.732521, 40.621166>,  <30.628258, 39.523857, 40.681561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526222, 39.732521, 40.621166>,  <30.356165, 40.080296, 40.520508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526222, 39.732521, 40.621166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053495, -0.253406, -0.965880,
		0.903543, 0.424100, -0.061223,
		0.425144, -0.869439, 0.251651,
		30.653765, 39.471691, 40.696663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869967, 39.869946, 39.971699>,  <30.356165, 40.080296, 40.520508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869967, 39.869946, 39.971699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795767, 39.536709, 40.180138>,  <30.751247, 39.336765, 40.305202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.795767, 39.536709, 40.180138>,  <30.869967, 39.869946, 39.971699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795767, 39.536709, 40.180138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108050, -0.509794, -0.853484,
		0.976686, -0.214624, 0.004550,
		-0.185498, -0.833095, 0.521098,
		30.740118, 39.286781, 40.336468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330986, 39.397274, 39.642361>,  <30.869967, 39.869946, 39.971699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330986, 39.397274, 39.642361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.033964, 39.191967, 39.814487>,  <30.855751, 39.068783, 39.917763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.033964, 39.191967, 39.814487>,  <31.330986, 39.397274, 39.642361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033964, 39.191967, 39.814487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026895, -0.619104, -0.784848,
		0.669246, -0.594366, 0.445914,
		-0.742554, -0.513263, 0.430318,
		30.811197, 39.037987, 39.943584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006866, 39.315575, 39.862556>,  <31.330986, 39.397274, 39.642361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006866, 39.315575, 39.862556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276623, 39.576908, 39.724941>,  <32.438477, 39.733707, 39.642372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276623, 39.576908, 39.724941>,  <32.006866, 39.315575, 39.862556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276623, 39.576908, 39.724941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150964, 0.334091, 0.930372,
		0.722778, -0.679370, 0.126679,
		0.674390, 0.653329, -0.344034,
		32.478939, 39.772907, 39.621731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505634, 39.286652, 40.445019>,  <32.006866, 39.315575, 39.862556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505634, 39.286652, 40.445019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537724, 39.611145, 40.213341>,  <32.556976, 39.805840, 40.074333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.537724, 39.611145, 40.213341>,  <32.505634, 39.286652, 40.445019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537724, 39.611145, 40.213341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222657, 0.551802, 0.803703,
		0.971590, -0.193438, -0.136359,
		0.080224, 0.811231, -0.579195,
		32.561790, 39.854515, 40.039581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237740, 39.662174, 40.559116>,  <32.505634, 39.286652, 40.445019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237740, 39.662174, 40.559116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.962906, 39.913883, 40.413830>,  <32.798004, 40.064907, 40.326656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.962906, 39.913883, 40.413830>,  <33.237740, 39.662174, 40.559116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962906, 39.913883, 40.413830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268549, 0.684451, 0.677796,
		0.675123, 0.368164, -0.639268,
		-0.687088, 0.629271, -0.363219,
		32.756779, 40.102665, 40.304863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690075, 40.205750, 40.454842>,  <33.237740, 39.662174, 40.559116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690075, 40.205750, 40.454842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313862, 40.340698, 40.470757>,  <33.088135, 40.421665, 40.480305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313862, 40.340698, 40.470757>,  <33.690075, 40.205750, 40.454842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313862, 40.340698, 40.470757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271097, 0.674834, 0.686371,
		0.204712, 0.656339, -0.726162,
		-0.940532, 0.337369, 0.039785,
		33.031704, 40.441910, 40.482693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811413, 40.898060, 40.504017>,  <33.690075, 40.205750, 40.454842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811413, 40.898060, 40.504017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438614, 40.838924, 40.636391>,  <33.214935, 40.803444, 40.715816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438614, 40.838924, 40.636391>,  <33.811413, 40.898060, 40.504017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438614, 40.838924, 40.636391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210675, 0.522014, 0.826509,
		-0.294941, 0.840027, -0.455373,
		-0.932001, -0.147836, 0.330936,
		33.159012, 40.794575, 40.735672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582020, 41.591305, 40.720139>,  <33.811413, 40.898060, 40.504017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582020, 41.591305, 40.720139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332363, 41.331844, 40.894356>,  <33.182568, 41.176167, 40.998886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332363, 41.331844, 40.894356>,  <33.582020, 41.591305, 40.720139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332363, 41.331844, 40.894356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061878, 0.514665, 0.855155,
		-0.778858, 0.560688, -0.281086,
		-0.624140, -0.648652, 0.435546,
		33.145123, 41.137249, 41.025021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053276, 42.018177, 41.067825>,  <33.582020, 41.591305, 40.720139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053276, 42.018177, 41.067825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041676, 41.662003, 41.249500>,  <33.034718, 41.448299, 41.358505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041676, 41.662003, 41.249500>,  <33.053276, 42.018177, 41.067825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041676, 41.662003, 41.249500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036895, 0.455021, 0.889716,
		-0.998898, 0.009043, -0.046048,
		-0.028999, -0.890434, 0.454186,
		33.032974, 41.394871, 41.385757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464214, 42.012348, 41.491821>,  <33.053276, 42.018177, 41.067825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464214, 42.012348, 41.491821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687546, 41.718658, 41.646320>,  <32.821545, 41.542446, 41.739021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687546, 41.718658, 41.646320>,  <32.464214, 42.012348, 41.491821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687546, 41.718658, 41.646320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118990, 0.389886, 0.913143,
		-0.821044, -0.555792, 0.130319,
		0.558327, -0.734224, 0.386247,
		32.855045, 41.498390, 41.762196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036461, 41.893600, 42.079033>,  <32.464214, 42.012348, 41.491821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036461, 41.893600, 42.079033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397781, 41.732613, 42.138458>,  <32.614574, 41.636021, 42.174114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397781, 41.732613, 42.138458>,  <32.036461, 41.893600, 42.079033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397781, 41.732613, 42.138458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005941, 0.334518, 0.942370,
		-0.428969, -0.852126, 0.299779,
		0.903300, -0.402467, 0.148561,
		32.668770, 41.611874, 42.183025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937090, 41.662262, 42.666126>,  <32.036461, 41.893600, 42.079033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937090, 41.662262, 42.666126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.334915, 41.621181, 42.659203>,  <32.573608, 41.596535, 42.655048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.334915, 41.621181, 42.659203>,  <31.937090, 41.662262, 42.666126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334915, 41.621181, 42.659203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013031, -0.042175, 0.999025,
		-0.103331, -0.993818, -0.040607,
		0.994562, -0.102701, -0.017309,
		32.633286, 41.590370, 42.654011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123447, 41.079281, 43.080204>,  <31.937090, 41.662262, 42.666126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123447, 41.079281, 43.080204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439117, 41.324795, 43.071533>,  <32.628521, 41.472103, 43.066330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439117, 41.324795, 43.071533>,  <32.123447, 41.079281, 43.080204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439117, 41.324795, 43.071533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068313, -0.052649, 0.996274,
		0.610358, -0.787714, -0.083479,
		0.789174, 0.613787, -0.021677,
		32.675869, 41.508930, 43.065029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530788, 40.806442, 43.624031>,  <32.123447, 41.079281, 43.080204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530788, 40.806442, 43.624031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683441, 41.169895, 43.556217>,  <32.775032, 41.387966, 43.515530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683441, 41.169895, 43.556217>,  <32.530788, 40.806442, 43.624031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683441, 41.169895, 43.556217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418954, -0.006550, 0.907984,
		0.823915, -0.417542, -0.383175,
		0.381631, 0.908634, -0.169534,
		32.797932, 41.442486, 43.505356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167732, 40.795551, 43.859715>,  <32.530788, 40.806442, 43.624031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167732, 40.795551, 43.859715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069077, 41.183105, 43.851482>,  <33.009884, 41.415638, 43.846542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069077, 41.183105, 43.851482>,  <33.167732, 40.795551, 43.859715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069077, 41.183105, 43.851482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328036, 0.103450, 0.938984,
		0.911901, 0.224834, -0.343345,
		-0.246635, 0.968890, -0.020582,
		32.995087, 41.473774, 43.845306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723148, 41.284443, 44.157833>,  <33.167732, 40.795551, 43.859715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723148, 41.284443, 44.157833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385818, 41.490726, 44.218281>,  <33.183418, 41.614498, 44.254547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385818, 41.490726, 44.218281>,  <33.723148, 41.284443, 44.157833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385818, 41.490726, 44.218281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316072, 0.248571, 0.915593,
		0.434621, 0.819910, -0.372629,
		-0.843329, 0.515714, 0.151117,
		33.132820, 41.645439, 44.263615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472111, 41.565250, 44.246014>,  <33.723148, 41.284443, 44.157833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472111, 41.565250, 44.246014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815620, 41.374512, 44.320992>,  <35.021725, 41.260071, 44.365978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.815620, 41.374512, 44.320992>,  <34.472111, 41.565250, 44.246014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815620, 41.374512, 44.320992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034878, -0.310585, -0.949906,
		0.511172, 0.822288, -0.250090,
		0.858770, -0.476843, 0.187442,
		35.073250, 41.231461, 44.377224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990784, 41.756496, 43.646538>,  <34.472111, 41.565250, 44.246014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990784, 41.756496, 43.646538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108105, 41.407234, 43.802265>,  <35.178497, 41.197678, 43.895702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108105, 41.407234, 43.802265>,  <34.990784, 41.756496, 43.646538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108105, 41.407234, 43.802265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107078, -0.374660, -0.920958,
		0.950003, 0.311809, -0.016394,
		0.293305, -0.873158, 0.389316,
		35.196095, 41.145287, 43.919060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468285, 41.548042, 43.147007>,  <34.990784, 41.756496, 43.646538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468285, 41.548042, 43.147007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412556, 41.216698, 43.364048>,  <35.379120, 41.017891, 43.494270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412556, 41.216698, 43.364048>,  <35.468285, 41.548042, 43.147007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412556, 41.216698, 43.364048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119496, -0.558002, -0.821191,
		0.983011, -0.049572, 0.176728,
		-0.139322, -0.828358, 0.542599,
		35.370758, 40.968189, 43.526829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959347, 41.074978, 42.900497>,  <35.468285, 41.548042, 43.147007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959347, 41.074978, 42.900497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693222, 40.838291, 43.082592>,  <35.533546, 40.696278, 43.191849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693222, 40.838291, 43.082592>,  <35.959347, 41.074978, 42.900497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693222, 40.838291, 43.082592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180191, -0.719011, -0.671234,
		0.724497, -0.364549, 0.584986,
		-0.665308, -0.591716, 0.455233,
		35.493629, 40.660778, 43.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303764, 40.383087, 42.997627>,  <35.959347, 41.074978, 42.900497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303764, 40.383087, 42.997627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921192, 40.274090, 43.039570>,  <35.691650, 40.208691, 43.064735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921192, 40.274090, 43.039570>,  <36.303764, 40.383087, 42.997627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921192, 40.274090, 43.039570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126207, -0.709698, -0.693109,
		0.263286, -0.649674, 0.713165,
		-0.956427, -0.272492, 0.104861,
		35.634266, 40.192341, 43.071030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274143, 39.624874, 42.997818>,  <36.303764, 40.383087, 42.997627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274143, 39.624874, 42.997818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934422, 39.794151, 42.871590>,  <35.730587, 39.895718, 42.795853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934422, 39.794151, 42.871590>,  <36.274143, 39.624874, 42.997818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934422, 39.794151, 42.871590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091535, -0.470678, -0.877544,
		-0.519912, -0.774186, 0.361010,
		-0.849302, 0.423201, -0.315576,
		35.679630, 39.921112, 42.776917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920708, 39.028805, 42.756382>,  <36.274143, 39.624874, 42.997818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920708, 39.028805, 42.756382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765129, 39.355549, 42.585991>,  <35.671783, 39.551598, 42.483757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765129, 39.355549, 42.585991>,  <35.920708, 39.028805, 42.756382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765129, 39.355549, 42.585991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154897, -0.397814, -0.904296,
		-0.908146, -0.417704, 0.028198,
		-0.388945, 0.816865, -0.425974,
		35.648445, 39.600609, 42.458199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661015, 38.773964, 42.140133>,  <35.920708, 39.028805, 42.756382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661015, 38.773964, 42.140133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.632637, 39.162880, 42.051037>,  <35.615608, 39.396229, 41.997581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.632637, 39.162880, 42.051037>,  <35.661015, 38.773964, 42.140133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632637, 39.162880, 42.051037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196076, -0.205347, -0.958846,
		-0.978019, -0.111700, -0.176075,
		-0.070947, 0.972294, -0.222735,
		35.611355, 39.454567, 41.984215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060223, 38.943645, 41.702255>,  <35.661015, 38.773964, 42.140133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060223, 38.943645, 41.702255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348957, 39.215664, 41.650875>,  <35.522198, 39.378876, 41.620049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348957, 39.215664, 41.650875>,  <35.060223, 38.943645, 41.702255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348957, 39.215664, 41.650875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075077, -0.261451, -0.962292,
		-0.687984, 0.684970, -0.239779,
		0.721832, 0.680044, -0.128449,
		35.565506, 39.419678, 41.612339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869343, 39.170235, 41.114460>,  <35.060223, 38.943645, 41.702255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869343, 39.170235, 41.114460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244049, 39.305550, 41.150303>,  <35.468872, 39.386738, 41.171810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244049, 39.305550, 41.150303>,  <34.869343, 39.170235, 41.114460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244049, 39.305550, 41.150303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115903, -0.058299, -0.991548,
		-0.330205, 0.939235, -0.093821,
		0.936766, 0.338288, 0.089610,
		35.525078, 39.407036, 41.177185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964359, 39.611824, 40.575630>,  <34.869343, 39.170235, 41.114460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964359, 39.611824, 40.575630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334213, 39.504314, 40.683559>,  <35.556126, 39.439808, 40.748318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334213, 39.504314, 40.683559>,  <34.964359, 39.611824, 40.575630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334213, 39.504314, 40.683559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241421, -0.134303, -0.961082,
		0.294549, 0.953795, -0.059295,
		0.924639, -0.268770, 0.269825,
		35.611607, 39.423683, 40.764507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352840, 39.772770, 40.016144>,  <34.964359, 39.611824, 40.575630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352840, 39.772770, 40.016144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604706, 39.535496, 40.216805>,  <35.755825, 39.393131, 40.337200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604706, 39.535496, 40.216805>,  <35.352840, 39.772770, 40.016144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604706, 39.535496, 40.216805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355291, -0.354373, -0.864979,
		0.690865, 0.722878, -0.012382,
		0.629662, -0.593185, 0.501656,
		35.793606, 39.357540, 40.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001839, 39.901104, 39.654205>,  <35.352840, 39.772770, 40.016144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001839, 39.901104, 39.654205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998806, 39.552227, 39.849846>,  <35.996986, 39.342899, 39.967232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998806, 39.552227, 39.849846>,  <36.001839, 39.901104, 39.654205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998806, 39.552227, 39.849846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430652, -0.444281, -0.785591,
		0.902486, 0.204676, 0.378980,
		-0.007582, -0.872194, 0.489102,
		35.996532, 39.290569, 39.996578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644344, 39.647449, 39.690166>,  <36.001839, 39.901104, 39.654205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644344, 39.647449, 39.690166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430134, 39.311310, 39.723701>,  <36.301605, 39.109627, 39.743820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430134, 39.311310, 39.723701>,  <36.644344, 39.647449, 39.690166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430134, 39.311310, 39.723701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470614, -0.379380, -0.796613,
		0.701236, -0.387155, 0.598647,
		-0.535528, -0.840346, 0.083834,
		36.269474, 39.059204, 39.748852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.238134, 34.656826, 26.477686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257624, 34.260952, 26.531574>,  <29.269318, 34.023426, 26.563908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257624, 34.260952, 26.531574>,  <29.238134, 34.656826, 26.477686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257624, 34.260952, 26.531574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849108, 0.029984, 0.527367,
		-0.525967, -0.140087, -0.838889,
		0.048724, -0.989685, 0.134720,
		29.272242, 33.964046, 26.571991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525751, 34.422447, 26.431196>,  <29.238134, 34.656826, 26.477686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525751, 34.422447, 26.431196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729284, 34.124779, 26.604309>,  <28.851404, 33.946178, 26.708176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729284, 34.124779, 26.604309>,  <28.525751, 34.422447, 26.431196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729284, 34.124779, 26.604309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777045, -0.180651, 0.602964,
		-0.370527, -0.643097, -0.670176,
		0.508832, -0.744172, 0.432779,
		28.881935, 33.901527, 26.734144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042818, 33.831272, 26.473530>,  <28.525751, 34.422447, 26.431196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042818, 33.831272, 26.473530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317402, 33.743462, 26.750826>,  <28.482153, 33.690777, 26.917204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.317402, 33.743462, 26.750826>,  <28.042818, 33.831272, 26.473530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317402, 33.743462, 26.750826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725335, -0.139095, 0.674197,
		-0.051579, -0.965640, -0.254714,
		0.686460, -0.219528, 0.693238,
		28.523340, 33.677605, 26.958797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894499, 33.171692, 26.806925>,  <28.042818, 33.831272, 26.473530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894499, 33.171692, 26.806925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112432, 33.375431, 27.073374>,  <28.243193, 33.497673, 27.233244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112432, 33.375431, 27.073374>,  <27.894499, 33.171692, 26.806925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112432, 33.375431, 27.073374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653874, -0.239273, 0.717773,
		0.524981, -0.826627, 0.202686,
		0.544833, 0.509348, 0.666124,
		28.275883, 33.528236, 27.273211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830954, 32.781483, 27.406275>,  <27.894499, 33.171692, 26.806925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830954, 32.781483, 27.406275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001274, 33.106762, 27.564968>,  <28.103466, 33.301929, 27.660185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001274, 33.106762, 27.564968>,  <27.830954, 32.781483, 27.406275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001274, 33.106762, 27.564968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488097, -0.162762, 0.857479,
		0.761875, -0.558761, 0.327616,
		0.425802, 0.813200, 0.396734,
		28.129015, 33.350723, 27.683989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948843, 32.491180, 28.082907>,  <27.830954, 32.781483, 27.406275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948843, 32.491180, 28.082907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938810, 32.891052, 28.084478>,  <27.932791, 33.130974, 28.085421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938810, 32.891052, 28.084478>,  <27.948843, 32.491180, 28.082907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938810, 32.891052, 28.084478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639216, -0.019057, 0.768791,
		0.768618, 0.016772, 0.639488,
		-0.025081, 0.999678, 0.003927,
		27.931286, 33.190956, 28.085657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132748, 32.738937, 28.815525>,  <27.948843, 32.491180, 28.082907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132748, 32.738937, 28.815525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957390, 33.060757, 28.655270>,  <27.852175, 33.253849, 28.559116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.957390, 33.060757, 28.655270>,  <28.132748, 32.738937, 28.815525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957390, 33.060757, 28.655270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354670, 0.254724, 0.899625,
		0.825844, 0.536486, 0.173680,
		-0.438396, 0.804549, -0.400638,
		27.825871, 33.302120, 28.535078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454504, 33.240585, 29.343969>,  <28.132748, 32.738937, 28.815525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454504, 33.240585, 29.343969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123343, 33.380165, 29.168327>,  <27.924646, 33.463913, 29.062943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123343, 33.380165, 29.168327>,  <28.454504, 33.240585, 29.343969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123343, 33.380165, 29.168327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385495, 0.214644, 0.897397,
		0.407395, 0.912230, -0.043187,
		-0.827903, 0.348947, -0.439105,
		27.874971, 33.484848, 29.036596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318708, 33.914776, 29.624369>,  <28.454504, 33.240585, 29.343969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318708, 33.914776, 29.624369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966295, 33.805843, 29.469648>,  <27.754847, 33.740482, 29.376816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966295, 33.805843, 29.469648>,  <28.318708, 33.914776, 29.624369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966295, 33.805843, 29.469648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460855, 0.309636, 0.831708,
		-0.106733, 0.911022, -0.398306,
		-0.881034, -0.272332, -0.386801,
		27.701984, 33.724144, 29.353609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892015, 34.413101, 29.836510>,  <28.318708, 33.914776, 29.624369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892015, 34.413101, 29.836510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637360, 34.118141, 29.746244>,  <27.484566, 33.941166, 29.692085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.637360, 34.118141, 29.746244>,  <27.892015, 34.413101, 29.836510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637360, 34.118141, 29.746244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561040, 0.242132, 0.791584,
		-0.529076, 0.630563, -0.567864,
		-0.636642, -0.737403, -0.225665,
		27.446367, 33.896919, 29.678545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179628, 34.651466, 29.975163>,  <27.892015, 34.413101, 29.836510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179628, 34.651466, 29.975163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089962, 34.263168, 29.940748>,  <27.036161, 34.030190, 29.920099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089962, 34.263168, 29.940748>,  <27.179628, 34.651466, 29.975163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089962, 34.263168, 29.940748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695247, 0.097434, 0.712137,
		-0.682921, 0.219453, -0.696749,
		-0.224167, -0.970745, -0.086034,
		27.022713, 33.971943, 29.914938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462488, 34.564880, 29.864614>,  <27.179628, 34.651466, 29.975163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462488, 34.564880, 29.864614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605108, 34.235664, 30.041466>,  <26.690680, 34.038136, 30.147577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605108, 34.235664, 30.041466>,  <26.462488, 34.564880, 29.864614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605108, 34.235664, 30.041466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608757, 0.154322, 0.778203,
		-0.708722, -0.546616, -0.446009,
		0.356550, -0.823040, 0.442128,
		26.712072, 33.988750, 30.174105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877073, 34.285431, 30.226688>,  <26.462488, 34.564880, 29.864614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877073, 34.285431, 30.226688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184961, 34.087688, 30.388254>,  <26.369694, 33.969044, 30.485193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184961, 34.087688, 30.388254>,  <25.877073, 34.285431, 30.226688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184961, 34.087688, 30.388254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416039, 0.091437, 0.904738,
		-0.484192, -0.864439, -0.135289,
		0.769721, -0.494352, 0.403914,
		26.415878, 33.939384, 30.509428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534891, 33.962460, 30.833275>,  <25.877073, 34.285431, 30.226688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534891, 33.962460, 30.833275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.924938, 33.923042, 30.912708>,  <26.158966, 33.899391, 30.960367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.924938, 33.923042, 30.912708>,  <25.534891, 33.962460, 30.833275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924938, 33.923042, 30.912708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167723, 0.257820, 0.951524,
		-0.144961, -0.961155, 0.234878,
		0.975118, -0.098540, 0.198581,
		26.217474, 33.893482, 30.972282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654390, 33.415161, 31.408947>,  <25.534891, 33.962460, 30.833275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654390, 33.415161, 31.408947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.963991, 33.668262, 31.399685>,  <26.149752, 33.820126, 31.394127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.963991, 33.668262, 31.399685>,  <25.654390, 33.415161, 31.408947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963991, 33.668262, 31.399685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122141, 0.185091, 0.975101,
		0.621289, -0.751903, 0.220547,
		0.774003, 0.632758, -0.023157,
		26.196192, 33.858089, 31.392738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100246, 33.281139, 31.997200>,  <25.654390, 33.415161, 31.408947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100246, 33.281139, 31.997200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.209057, 33.654106, 31.902037>,  <26.274343, 33.877888, 31.844938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.209057, 33.654106, 31.902037>,  <26.100246, 33.281139, 31.997200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209057, 33.654106, 31.902037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098164, 0.219056, 0.970762,
		0.957270, -0.287428, -0.031940,
		0.272027, 0.932416, -0.237911,
		26.290665, 33.933830, 31.830664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584087, 33.417049, 32.495296>,  <26.100246, 33.281139, 31.997200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584087, 33.417049, 32.495296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505272, 33.792397, 32.381702>,  <26.457983, 34.017605, 32.313545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505272, 33.792397, 32.381702>,  <26.584087, 33.417049, 32.495296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505272, 33.792397, 32.381702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320062, 0.335357, 0.886057,
		0.926680, 0.083695, -0.366413,
		-0.197038, 0.938366, -0.283981,
		26.446161, 34.073906, 32.296509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055218, 33.873714, 32.748074>,  <26.584087, 33.417049, 32.495296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055218, 33.873714, 32.748074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751945, 34.123386, 32.672634>,  <26.569983, 34.273190, 32.627369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751945, 34.123386, 32.672634>,  <27.055218, 33.873714, 32.748074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751945, 34.123386, 32.672634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149823, 0.448266, 0.881255,
		0.634601, 0.639892, -0.433381,
		-0.758178, 0.624176, -0.188600,
		26.524492, 34.310638, 32.616055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286648, 34.515713, 33.146927>,  <27.055218, 33.873714, 32.748074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286648, 34.515713, 33.146927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.894720, 34.509167, 33.067238>,  <26.659563, 34.505241, 33.019424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.894720, 34.509167, 33.067238>,  <27.286648, 34.515713, 33.146927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894720, 34.509167, 33.067238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197634, 0.228659, 0.953234,
		0.029956, 0.973369, -0.227278,
		-0.979818, -0.016362, -0.199221,
		26.600775, 34.504257, 33.007473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560371, 34.561123, 33.840736>,  <27.286648, 34.515713, 33.146927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560371, 34.561123, 33.840736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717278, 34.857922, 34.058205>,  <27.811420, 35.035999, 34.188686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717278, 34.857922, 34.058205>,  <27.560371, 34.561123, 33.840736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717278, 34.857922, 34.058205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888794, -0.153445, -0.431856,
		-0.237010, 0.652611, -0.719670,
		0.392264, 0.741993, 0.543669,
		27.834957, 35.080521, 34.221306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701298, 35.233143, 33.429317>,  <27.560371, 34.561123, 33.840736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701298, 35.233143, 33.429317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946659, 35.131355, 33.728378>,  <28.093876, 35.070282, 33.907814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946659, 35.131355, 33.728378>,  <27.701298, 35.233143, 33.429317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946659, 35.131355, 33.728378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734464, -0.164222, -0.658479,
		0.290340, 0.953037, 0.086161,
		0.613405, -0.254465, 0.747651,
		28.130680, 35.055016, 33.952675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410318, 35.504677, 33.294827>,  <27.701298, 35.233143, 33.429317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410318, 35.504677, 33.294827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453547, 35.201382, 33.552013>,  <28.479485, 35.019405, 33.706326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453547, 35.201382, 33.552013>,  <28.410318, 35.504677, 33.294827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453547, 35.201382, 33.552013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752656, -0.360125, -0.551198,
		0.649484, 0.543499, 0.531770,
		0.108072, -0.758234, 0.642963,
		28.485968, 34.973911, 33.744904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141802, 35.428249, 33.514458>,  <28.410318, 35.504677, 33.294827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141802, 35.428249, 33.514458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996319, 35.058304, 33.558895>,  <28.909029, 34.836338, 33.585556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996319, 35.058304, 33.558895>,  <29.141802, 35.428249, 33.514458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996319, 35.058304, 33.558895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758220, -0.363214, -0.541459,
		0.541126, -0.112702, 0.833355,
		-0.363710, -0.924864, 0.111091,
		28.887205, 34.780846, 33.592224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720135, 35.037807, 33.744179>,  <29.141802, 35.428249, 33.514458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720135, 35.037807, 33.744179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.442186, 34.795517, 33.589130>,  <29.275417, 34.650143, 33.496101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.442186, 34.795517, 33.589130>,  <29.720135, 35.037807, 33.744179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442186, 34.795517, 33.589130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690610, -0.411767, -0.594564,
		0.200532, -0.680841, 0.704445,
		-0.694871, -0.605725, -0.387623,
		29.233725, 34.613800, 33.472843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077944, 34.326714, 33.670048>,  <29.720135, 35.037807, 33.744179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077944, 34.326714, 33.670048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.766321, 34.237484, 33.435677>,  <29.579348, 34.183945, 33.295055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.766321, 34.237484, 33.435677>,  <30.077944, 34.326714, 33.670048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766321, 34.237484, 33.435677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624805, -0.353560, -0.696142,
		-0.051870, -0.908423, 0.414820,
		-0.779056, -0.223073, -0.585927,
		29.532604, 34.170563, 33.259899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254190, 33.755375, 33.486248>,  <30.077944, 34.326714, 33.670048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254190, 33.755375, 33.486248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.990343, 33.856407, 33.203094>,  <29.832035, 33.917027, 33.033203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.990343, 33.856407, 33.203094>,  <30.254190, 33.755375, 33.486248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990343, 33.856407, 33.203094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601559, -0.387218, -0.698705,
		-0.450589, -0.886715, 0.103472,
		-0.659618, 0.252584, -0.707887,
		29.792458, 33.932182, 32.990726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248222, 33.176292, 32.974552>,  <30.254190, 33.755375, 33.486248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248222, 33.176292, 32.974552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.076050, 33.474506, 32.771019>,  <29.972746, 33.653435, 32.648899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.076050, 33.474506, 32.771019>,  <30.248222, 33.176292, 32.974552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076050, 33.474506, 32.771019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227848, -0.455728, -0.860464,
		-0.873393, -0.486306, 0.026291,
		-0.430430, 0.745533, -0.508833,
		29.946920, 33.698166, 32.618370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990562, 32.787945, 32.368141>,  <30.248222, 33.176292, 32.974552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990562, 32.787945, 32.368141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014597, 33.177021, 32.278458>,  <30.029016, 33.410465, 32.224648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014597, 33.177021, 32.278458>,  <29.990562, 32.787945, 32.368141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014597, 33.177021, 32.278458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435636, -0.227651, -0.870859,
		-0.898115, -0.045350, -0.437416,
		0.060085, 0.972686, -0.224213,
		30.032623, 33.468826, 32.211193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900187, 32.785446, 31.613312>,  <29.990562, 32.787945, 32.368141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900187, 32.785446, 31.613312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.041513, 33.146458, 31.711782>,  <30.126310, 33.363064, 31.770864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.041513, 33.146458, 31.711782>,  <29.900187, 32.785446, 31.613312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041513, 33.146458, 31.711782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480202, 0.050865, -0.875682,
		-0.802853, 0.427607, -0.415426,
		0.353317, 0.902532, 0.246175,
		30.147509, 33.417217, 31.785635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749647, 33.207573, 31.027866>,  <29.900187, 32.785446, 31.613312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749647, 33.207573, 31.027866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042419, 33.389496, 31.230816>,  <30.218082, 33.498650, 31.352587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042419, 33.389496, 31.230816>,  <29.749647, 33.207573, 31.027866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042419, 33.389496, 31.230816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491912, 0.162558, -0.855335,
		-0.471490, 0.875629, -0.104744,
		0.731929, 0.454807, 0.507376,
		30.261997, 33.525936, 31.383028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699600, 33.839211, 30.893257>,  <29.749647, 33.207573, 31.027866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699600, 33.839211, 30.893257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081696, 33.794224, 31.002707>,  <30.310953, 33.767231, 31.068377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.081696, 33.794224, 31.002707>,  <29.699600, 33.839211, 30.893257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081696, 33.794224, 31.002707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294695, 0.280563, -0.913477,
		0.025965, 0.953224, 0.301147,
		0.955239, -0.112465, 0.273625,
		30.368267, 33.760483, 31.084795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071743, 34.398472, 30.657131>,  <29.699600, 33.839211, 30.893257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071743, 34.398472, 30.657131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.356466, 34.128796, 30.735916>,  <30.527300, 33.966988, 30.783188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.356466, 34.128796, 30.735916>,  <30.071743, 34.398472, 30.657131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356466, 34.128796, 30.735916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469786, 0.248525, -0.847075,
		0.522142, 0.695485, 0.493628,
		0.711806, -0.674193, 0.196964,
		30.570007, 33.926537, 30.795006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547808, 34.628468, 30.306032>,  <30.071743, 34.398472, 30.657131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547808, 34.628468, 30.306032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683701, 34.258354, 30.373482>,  <30.765236, 34.036285, 30.413952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683701, 34.258354, 30.373482>,  <30.547808, 34.628468, 30.306032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683701, 34.258354, 30.373482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523908, 0.037284, -0.850958,
		0.781090, 0.377441, 0.497430,
		0.339732, -0.925283, 0.168622,
		30.785620, 33.980770, 30.424068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173763, 34.608654, 30.108118>,  <30.547808, 34.628468, 30.306032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173763, 34.608654, 30.108118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.071754, 34.221882, 30.107769>,  <31.010550, 33.989819, 30.107559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.071754, 34.221882, 30.107769>,  <31.173763, 34.608654, 30.108118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071754, 34.221882, 30.107769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404147, -0.105772, -0.908558,
		0.878424, -0.232055, 0.417758,
		-0.255022, -0.966935, -0.000871,
		30.995247, 33.931801, 30.107508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801767, 34.299671, 29.863268>,  <31.173763, 34.608654, 30.108118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801767, 34.299671, 29.863268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.527925, 34.012451, 29.813108>,  <31.363621, 33.840118, 29.783012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.527925, 34.012451, 29.813108>,  <31.801767, 34.299671, 29.863268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527925, 34.012451, 29.813108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340030, -0.162427, -0.926281,
		0.644746, -0.676775, 0.355356,
		-0.684603, -0.718048, -0.125400,
		31.322544, 33.797035, 29.775488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035973, 33.644566, 29.508194>,  <31.801767, 34.299671, 29.863268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035973, 33.644566, 29.508194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642611, 33.620125, 29.439859>,  <31.406593, 33.605461, 29.398859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.642611, 33.620125, 29.439859>,  <32.035973, 33.644566, 29.508194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642611, 33.620125, 29.439859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179430, -0.187949, -0.965650,
		0.026899, -0.980276, 0.195794,
		-0.983403, -0.061106, -0.170835,
		31.347589, 33.601791, 29.388609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881474, 33.020386, 29.323616>,  <32.035973, 33.644566, 29.508194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881474, 33.020386, 29.323616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.586983, 33.248375, 29.177681>,  <31.410288, 33.385166, 29.090120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.586983, 33.248375, 29.177681>,  <31.881474, 33.020386, 29.323616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586983, 33.248375, 29.177681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157448, -0.380053, -0.911466,
		-0.658166, -0.728487, 0.190064,
		-0.736225, 0.569971, -0.364837,
		31.366116, 33.419365, 29.068230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469339, 32.509331, 28.881313>,  <31.881474, 33.020386, 29.323616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469339, 32.509331, 28.881313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352795, 32.883888, 28.803053>,  <31.282867, 33.108624, 28.756096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352795, 32.883888, 28.803053>,  <31.469339, 32.509331, 28.881313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352795, 32.883888, 28.803053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005718, -0.206227, -0.978488,
		-0.956596, -0.283974, 0.065441,
		-0.291361, 0.936392, -0.195652,
		31.265387, 33.164806, 28.744358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000076, 32.384590, 28.439087>,  <31.469339, 32.509331, 28.881313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000076, 32.384590, 28.439087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.048832, 32.779400, 28.397278>,  <31.078085, 33.016285, 28.372192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.048832, 32.779400, 28.397278>,  <31.000076, 32.384590, 28.439087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048832, 32.779400, 28.397278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085202, -0.094512, -0.991871,
		-0.988880, 0.129804, 0.072576,
		0.121889, 0.987025, -0.104521,
		31.085400, 33.075508, 28.365921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523010, 32.628136, 27.906319>,  <31.000076, 32.384590, 28.439087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523010, 32.628136, 27.906319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821213, 32.894188, 27.923367>,  <31.000134, 33.053822, 27.933596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.821213, 32.894188, 27.923367>,  <30.523010, 32.628136, 27.906319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821213, 32.894188, 27.923367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086807, -0.033500, -0.995662,
		-0.660821, 0.745971, -0.082713,
		0.745506, 0.665135, 0.042618,
		31.044865, 33.093727, 27.936152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395428, 33.099697, 27.323940>,  <30.523010, 32.628136, 27.906319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395428, 33.099697, 27.323940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.778494, 33.121468, 27.437019>,  <31.008333, 33.134529, 27.504866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.778494, 33.121468, 27.437019>,  <30.395428, 33.099697, 27.323940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778494, 33.121468, 27.437019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279589, 0.058236, -0.958352,
		-0.068619, 0.996818, 0.040555,
		0.957664, 0.054423, 0.282696,
		31.065794, 33.137794, 27.521828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700069, 33.700596, 27.093336>,  <30.395428, 33.099697, 27.323940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700069, 33.700596, 27.093336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996380, 33.435448, 27.136894>,  <31.174166, 33.276360, 27.163029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996380, 33.435448, 27.136894>,  <30.700069, 33.700596, 27.093336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996380, 33.435448, 27.136894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317438, 0.202557, -0.926393,
		0.592017, 0.720817, 0.360469,
		0.740776, -0.662867, 0.108898,
		31.218613, 33.236588, 27.169563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.916180, 38.376213, 45.257061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673450, 38.111839, 45.433662>,  <38.527813, 37.953217, 45.539623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673450, 38.111839, 45.433662>,  <38.916180, 38.376213, 45.257061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673450, 38.111839, 45.433662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055389, 0.518955, 0.853005,
		-0.792903, 0.542080, -0.278307,
		-0.606825, -0.660935, 0.441507,
		38.491402, 37.913559, 45.566113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542683, 38.764767, 45.735588>,  <38.916180, 38.376213, 45.257061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542683, 38.764767, 45.735588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.482979, 38.392696, 45.869747>,  <38.447155, 38.169453, 45.950241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.482979, 38.392696, 45.869747>,  <38.542683, 38.764767, 45.735588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482979, 38.392696, 45.869747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122459, 0.353972, 0.927204,
		-0.981186, 0.097321, -0.166742,
		-0.149259, -0.930179, 0.335395,
		38.438202, 38.113644, 45.970367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931423, 38.727520, 46.057674>,  <38.542683, 38.764767, 45.735588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931423, 38.727520, 46.057674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.090309, 38.401516, 46.226425>,  <38.185638, 38.205914, 46.327675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.090309, 38.401516, 46.226425>,  <37.931423, 38.727520, 46.057674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090309, 38.401516, 46.226425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269443, 0.335873, 0.902546,
		-0.877282, -0.472175, -0.086185,
		0.397212, -0.815009, 0.421879,
		38.209473, 38.157013, 46.352989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464066, 38.538563, 46.562019>,  <37.931423, 38.727520, 46.057674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464066, 38.538563, 46.562019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816311, 38.378704, 46.663853>,  <38.027657, 38.282787, 46.724953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816311, 38.378704, 46.663853>,  <37.464066, 38.538563, 46.562019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816311, 38.378704, 46.663853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160699, 0.253540, 0.953883,
		-0.445763, -0.880908, 0.159046,
		0.880608, -0.399648, 0.254579,
		38.080494, 38.258808, 46.740227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230579, 38.158485, 47.137016>,  <37.464066, 38.538563, 46.562019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230579, 38.158485, 47.137016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628540, 38.184902, 47.167522>,  <37.867317, 38.200752, 47.185825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628540, 38.184902, 47.167522>,  <37.230579, 38.158485, 47.137016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628540, 38.184902, 47.167522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092291, 0.290382, 0.952450,
		0.040754, -0.954629, 0.294996,
		0.994898, 0.066041, 0.076270,
		37.927010, 38.204716, 47.190403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500389, 37.755440, 47.775909>,  <37.230579, 38.158485, 47.137016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500389, 37.755440, 47.775909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758705, 38.037937, 47.659859>,  <37.913692, 38.207436, 47.590229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.758705, 38.037937, 47.659859>,  <37.500389, 37.755440, 47.775909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758705, 38.037937, 47.659859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006496, 0.385058, 0.922869,
		0.763489, -0.594093, 0.253254,
		0.645788, 0.706246, -0.290129,
		37.952442, 38.249809, 47.572819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846027, 37.740952, 48.319378>,  <37.500389, 37.755440, 47.775909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846027, 37.740952, 48.319378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947697, 38.072906, 48.120712>,  <38.008698, 38.272079, 48.001511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947697, 38.072906, 48.120712>,  <37.846027, 37.740952, 48.319378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947697, 38.072906, 48.120712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066381, 0.497353, 0.865005,
		0.964878, -0.252831, 0.071325,
		0.254174, 0.829890, -0.496668,
		38.023949, 38.321873, 47.971710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334965, 38.035717, 48.731228>,  <37.846027, 37.740952, 48.319378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334965, 38.035717, 48.731228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178806, 38.328648, 48.508053>,  <38.085110, 38.504406, 48.374149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178806, 38.328648, 48.508053>,  <38.334965, 38.035717, 48.731228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178806, 38.328648, 48.508053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008150, 0.608751, 0.793319,
		0.920612, 0.305160, -0.243622,
		-0.390395, 0.732325, -0.557936,
		38.061687, 38.548344, 48.340672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677166, 38.617622, 48.991329>,  <38.334965, 38.035717, 48.731228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677166, 38.617622, 48.991329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360271, 38.774021, 48.803932>,  <38.170135, 38.867859, 48.691494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360271, 38.774021, 48.803932>,  <38.677166, 38.617622, 48.991329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360271, 38.774021, 48.803932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124177, 0.648384, 0.751118,
		0.597447, 0.653239, -0.465120,
		-0.792236, 0.390996, -0.468492,
		38.122601, 38.891319, 48.663383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684811, 39.402321, 48.858349>,  <38.677166, 38.617622, 48.991329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684811, 39.402321, 48.858349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300762, 39.291298, 48.871758>,  <38.070332, 39.224686, 48.879803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300762, 39.291298, 48.871758>,  <38.684811, 39.402321, 48.858349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300762, 39.291298, 48.871758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184095, 0.717894, 0.671370,
		-0.210405, 0.638428, -0.740364,
		-0.960124, -0.277557, 0.033517,
		38.012726, 39.208031, 48.881813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295673, 40.113384, 49.008755>,  <38.684811, 39.402321, 48.858349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295673, 40.113384, 49.008755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968857, 39.882977, 49.018955>,  <37.772766, 39.744732, 49.025074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968857, 39.882977, 49.018955>,  <38.295673, 40.113384, 49.008755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968857, 39.882977, 49.018955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428381, 0.636040, 0.641828,
		-0.385921, 0.513477, -0.766425,
		-0.817041, -0.576016, 0.025497,
		37.723743, 39.710171, 49.026604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661198, 40.490635, 48.874771>,  <38.295673, 40.113384, 49.008755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661198, 40.490635, 48.874771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539509, 40.171196, 49.082497>,  <37.466496, 39.979530, 49.207130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539509, 40.171196, 49.082497>,  <37.661198, 40.490635, 48.874771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539509, 40.171196, 49.082497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588792, 0.586185, 0.556518,
		-0.748850, -0.136465, -0.648538,
		-0.304218, -0.798602, 0.519314,
		37.448242, 39.931614, 49.238289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897861, 40.510616, 48.995430>,  <37.661198, 40.490635, 48.874771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897861, 40.510616, 48.995430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095913, 40.304428, 49.275181>,  <37.214745, 40.180714, 49.443031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095913, 40.304428, 49.275181>,  <36.897861, 40.510616, 48.995430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095913, 40.304428, 49.275181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386865, 0.589967, 0.708713,
		-0.777934, -0.621472, 0.092693,
		0.495131, -0.515472, 0.699381,
		37.244453, 40.149788, 49.484997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500256, 40.549049, 49.426216>,  <36.897861, 40.510616, 48.995430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500256, 40.549049, 49.426216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819889, 40.453426, 49.646873>,  <37.011669, 40.396053, 49.779270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819889, 40.453426, 49.646873>,  <36.500256, 40.549049, 49.426216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819889, 40.453426, 49.646873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385421, 0.500516, 0.775200,
		-0.461427, -0.832066, 0.307816,
		0.799084, -0.239059, 0.551647,
		37.059616, 40.381710, 49.812366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508472, 41.256042, 49.370010>,  <36.500256, 40.549049, 49.426216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508472, 41.256042, 49.370010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404053, 41.624084, 49.486813>,  <36.341400, 41.844910, 49.556892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404053, 41.624084, 49.486813>,  <36.508472, 41.256042, 49.370010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404053, 41.624084, 49.486813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451730, 0.150889, -0.879303,
		-0.853108, -0.361449, 0.376247,
		-0.261051, 0.920102, 0.292002,
		36.325737, 41.900116, 49.574413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926979, 41.261257, 49.163849>,  <36.508472, 41.256042, 49.370010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926979, 41.261257, 49.163849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008785, 41.651184, 49.199413>,  <36.057869, 41.885139, 49.220753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008785, 41.651184, 49.199413>,  <35.926979, 41.261257, 49.163849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008785, 41.651184, 49.199413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398006, 0.165795, -0.902277,
		-0.894296, 0.149142, 0.421890,
		0.204515, 0.974817, 0.088911,
		36.070141, 41.943630, 49.226086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314754, 41.638138, 48.942905>,  <35.926979, 41.261257, 49.163849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314754, 41.638138, 48.942905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631622, 41.880280, 48.911884>,  <35.821743, 42.025566, 48.893272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631622, 41.880280, 48.911884>,  <35.314754, 41.638138, 48.942905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631622, 41.880280, 48.911884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193008, 0.127947, -0.972819,
		-0.578982, 0.785603, 0.218194,
		0.792167, 0.605358, -0.077548,
		35.869274, 42.061886, 48.888618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095867, 42.245598, 48.539574>,  <35.314754, 41.638138, 48.942905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095867, 42.245598, 48.539574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495335, 42.230701, 48.525246>,  <35.735016, 42.221764, 48.516647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495335, 42.230701, 48.525246>,  <35.095867, 42.245598, 48.539574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495335, 42.230701, 48.525246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033157, 0.069869, -0.997005,
		0.039632, 0.996861, 0.068541,
		0.998664, -0.037241, -0.035822,
		35.794933, 42.219528, 48.514500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295872, 42.797634, 48.204960>,  <35.095867, 42.245598, 48.539574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295872, 42.797634, 48.204960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606388, 42.550274, 48.156033>,  <35.792698, 42.401859, 48.126675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.606388, 42.550274, 48.156033>,  <35.295872, 42.797634, 48.204960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606388, 42.550274, 48.156033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013685, 0.177461, -0.984033,
		0.630229, 0.765568, 0.129298,
		0.776289, -0.618396, -0.122318,
		35.839275, 42.364754, 48.119339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569523, 43.008835, 47.607079>,  <35.295872, 42.797634, 48.204960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569523, 43.008835, 47.607079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710400, 42.637733, 47.656445>,  <35.794926, 42.415073, 47.686066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710400, 42.637733, 47.656445>,  <35.569523, 43.008835, 47.607079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710400, 42.637733, 47.656445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048243, -0.113694, -0.992344,
		0.934683, 0.355450, 0.004715,
		0.352193, -0.927755, 0.123416,
		35.816059, 42.359406, 47.693470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150700, 42.890503, 47.234997>,  <35.569523, 43.008835, 47.607079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150700, 42.890503, 47.234997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026779, 42.512981, 47.281040>,  <35.952427, 42.286469, 47.308666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026779, 42.512981, 47.281040>,  <36.150700, 42.890503, 47.234997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026779, 42.512981, 47.281040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191396, -0.180495, -0.964774,
		0.931338, -0.276857, 0.236558,
		-0.309802, -0.943807, 0.115112,
		35.933838, 42.229839, 47.315575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665890, 42.460373, 46.909622>,  <36.150700, 42.890503, 47.234997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665890, 42.460373, 46.909622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308956, 42.281151, 46.931507>,  <36.094795, 42.173618, 46.944637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308956, 42.281151, 46.931507>,  <36.665890, 42.460373, 46.909622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308956, 42.281151, 46.931507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080437, -0.277112, -0.957465,
		0.444160, -0.849973, 0.283316,
		-0.892330, -0.448056, 0.054713,
		36.041256, 42.146732, 46.947922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748451, 41.859043, 46.496632>,  <36.665890, 42.460373, 46.909622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748451, 41.859043, 46.496632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348957, 41.848358, 46.513660>,  <36.109261, 41.841946, 46.523880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348957, 41.848358, 46.513660>,  <36.748451, 41.859043, 46.496632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348957, 41.848358, 46.513660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018003, -0.600737, -0.799244,
		0.046927, -0.799000, 0.599497,
		-0.998736, -0.026714, 0.042575,
		36.049335, 41.840343, 46.526432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569321, 41.206989, 46.359543>,  <36.748451, 41.859043, 46.496632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569321, 41.206989, 46.359543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201759, 41.359921, 46.320679>,  <35.981224, 41.451679, 46.297359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201759, 41.359921, 46.320679>,  <36.569321, 41.206989, 46.359543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201759, 41.359921, 46.320679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101051, -0.466221, -0.878878,
		-0.381321, -0.797785, 0.467047,
		-0.918903, 0.382330, -0.097163,
		35.926090, 41.474621, 46.291531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197739, 40.712296, 46.047585>,  <36.569321, 41.206989, 46.359543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197739, 40.712296, 46.047585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976456, 41.036961, 45.972584>,  <35.843685, 41.231762, 45.927582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976456, 41.036961, 45.972584>,  <36.197739, 40.712296, 46.047585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976456, 41.036961, 45.972584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282587, -0.394584, -0.874327,
		-0.783650, -0.430697, 0.447653,
		-0.553207, 0.811667, -0.187506,
		35.810493, 41.280460, 45.916332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360153, 40.518333, 45.870243>,  <36.197739, 40.712296, 46.047585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360153, 40.518333, 45.870243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473507, 40.871281, 45.719978>,  <35.541519, 41.083050, 45.629822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473507, 40.871281, 45.719978>,  <35.360153, 40.518333, 45.870243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473507, 40.871281, 45.719978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278402, -0.299155, -0.912688,
		-0.917706, 0.363229, 0.160876,
		0.283387, 0.882367, -0.375660,
		35.558521, 41.135990, 45.607281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785847, 40.661251, 45.425968>,  <35.360153, 40.518333, 45.870243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785847, 40.661251, 45.425968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039257, 40.946575, 45.306080>,  <35.191303, 41.117771, 45.234146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039257, 40.946575, 45.306080>,  <34.785847, 40.661251, 45.425968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039257, 40.946575, 45.306080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229277, -0.196908, -0.953236,
		-0.738974, 0.672616, 0.038801,
		0.633522, 0.713313, -0.299725,
		35.229313, 41.160568, 45.216164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413082, 41.173313, 44.926548>,  <34.785847, 40.661251, 45.425968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413082, 41.173313, 44.926548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804100, 41.205837, 44.848778>,  <35.038712, 41.225353, 44.802116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804100, 41.205837, 44.848778>,  <34.413082, 41.173313, 44.926548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804100, 41.205837, 44.848778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178792, -0.168447, -0.969360,
		-0.111571, 0.982351, -0.150126,
		0.977540, 0.081311, -0.194430,
		35.097363, 41.230232, 44.790447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999832, 41.840885, 44.778469>,  <34.413082, 41.173313, 44.926548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999832, 41.840885, 44.778469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603722, 41.870415, 44.731316>,  <33.366055, 41.888130, 44.703026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603722, 41.870415, 44.731316>,  <33.999832, 41.840885, 44.778469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603722, 41.870415, 44.731316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107929, 0.126719, 0.986050,
		0.087728, 0.989188, -0.117520,
		-0.990280, 0.073820, -0.117879,
		33.306637, 41.892559, 44.695953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819408, 42.413017, 45.119576>,  <33.999832, 41.840885, 44.778469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819408, 42.413017, 45.119576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488503, 42.189835, 45.093307>,  <33.289959, 42.055923, 45.077545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488503, 42.189835, 45.093307>,  <33.819408, 42.413017, 45.119576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488503, 42.189835, 45.093307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179195, 0.151269, 0.972115,
		-0.532468, 0.815964, -0.225123,
		-0.827265, -0.557961, -0.065670,
		33.240322, 42.022446, 45.073605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334793, 42.791271, 45.354523>,  <33.819408, 42.413017, 45.119576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334793, 42.791271, 45.354523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156536, 42.435123, 45.391701>,  <33.049580, 42.221436, 45.414005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156536, 42.435123, 45.391701>,  <33.334793, 42.791271, 45.354523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156536, 42.435123, 45.391701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317108, 0.254098, 0.913716,
		-0.837163, 0.377722, -0.395581,
		-0.445647, -0.890371, 0.092943,
		33.022842, 42.168011, 45.419582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660477, 42.886787, 45.729820>,  <33.334793, 42.791271, 45.354523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660477, 42.886787, 45.729820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751328, 42.500690, 45.781544>,  <32.805836, 42.269032, 45.812576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751328, 42.500690, 45.781544>,  <32.660477, 42.886787, 45.729820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751328, 42.500690, 45.781544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337884, 0.046426, 0.940042,
		-0.913373, -0.257196, -0.315595,
		0.227124, -0.965243, 0.129307,
		32.819466, 42.211117, 45.820335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152176, 42.755955, 46.133713>,  <32.660477, 42.886787, 45.729820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152176, 42.755955, 46.133713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404224, 42.449059, 46.181519>,  <32.555454, 42.264919, 46.210201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404224, 42.449059, 46.181519>,  <32.152176, 42.755955, 46.133713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404224, 42.449059, 46.181519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269824, -0.072025, 0.960212,
		-0.728105, -0.637303, -0.252405,
		0.630125, -0.767240, 0.119518,
		32.593262, 42.218887, 46.217373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731726, 42.169441, 46.578053>,  <32.152176, 42.755955, 46.133713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731726, 42.169441, 46.578053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128262, 42.138760, 46.620697>,  <32.366184, 42.120350, 46.646286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128262, 42.138760, 46.620697>,  <31.731726, 42.169441, 46.578053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128262, 42.138760, 46.620697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116945, -0.146006, 0.982347,
		-0.059779, -0.986306, -0.153710,
		0.991338, -0.076699, 0.106615,
		32.425663, 42.115749, 46.652683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940388, 41.419559, 46.868938>,  <31.731726, 42.169441, 46.578053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940388, 41.419559, 46.868938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174889, 41.729427, 46.963760>,  <32.315590, 41.915348, 47.020653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174889, 41.729427, 46.963760>,  <31.940388, 41.419559, 46.868938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174889, 41.729427, 46.963760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019178, -0.279259, 0.960024,
		0.809902, -0.567362, -0.148860,
		0.586252, 0.774671, 0.237053,
		32.350765, 41.961830, 47.034878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332668, 40.932819, 47.188526>,  <31.940388, 41.419559, 46.868938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332668, 40.932819, 47.188526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052204, 40.703682, 47.358341>,  <31.883926, 40.566200, 47.460228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.052204, 40.703682, 47.358341>,  <32.332668, 40.932819, 47.188526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052204, 40.703682, 47.358341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119394, -0.492680, -0.861981,
		0.702940, -0.655071, 0.277052,
		-0.701157, -0.572843, 0.424536,
		31.841858, 40.531830, 47.485703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377647, 40.398609, 46.815395>,  <32.332668, 40.932819, 47.188526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377647, 40.398609, 46.815395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024841, 40.339348, 46.994328>,  <31.813158, 40.303791, 47.101685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024841, 40.339348, 46.994328>,  <32.377647, 40.398609, 46.815395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024841, 40.339348, 46.994328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360250, -0.399936, -0.842776,
		0.303762, -0.904490, 0.299377,
		-0.882014, -0.148153, 0.447328,
		31.760237, 40.294903, 47.128525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144459, 39.604294, 46.814327>,  <32.377647, 40.398609, 46.815395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144459, 39.604294, 46.814327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832409, 39.852360, 46.847317>,  <31.645180, 40.001202, 46.867111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832409, 39.852360, 46.847317>,  <32.144459, 39.604294, 46.814327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832409, 39.852360, 46.847317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415498, -0.415034, -0.809387,
		-0.467734, -0.665683, 0.581457,
		-0.780119, 0.620172, 0.082465,
		31.598372, 40.038410, 46.872059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533684, 39.165081, 46.718430>,  <32.144459, 39.604294, 46.814327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533684, 39.165081, 46.718430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430206, 39.538467, 46.619057>,  <31.368120, 39.762501, 46.559433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430206, 39.538467, 46.619057>,  <31.533684, 39.165081, 46.718430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430206, 39.538467, 46.619057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442432, -0.343127, -0.828564,
		-0.858680, -0.104432, 0.501760,
		-0.258696, 0.933465, -0.248432,
		31.352598, 39.818508, 46.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092745, 38.916298, 46.340530>,  <31.533684, 39.165081, 46.718430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092745, 38.916298, 46.340530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.095091, 39.310860, 46.274841>,  <31.096498, 39.547596, 46.235428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.095091, 39.310860, 46.274841>,  <31.092745, 38.916298, 46.340530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095091, 39.310860, 46.274841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512179, -0.138084, -0.847706,
		-0.858859, 0.089083, 0.504406,
		0.005866, 0.986406, -0.164221,
		31.096851, 39.606781, 46.225574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378937, 39.204838, 46.187824>,  <31.092745, 38.916298, 46.340530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378937, 39.204838, 46.187824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642225, 39.467075, 46.039803>,  <30.800198, 39.624420, 45.950989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642225, 39.467075, 46.039803>,  <30.378937, 39.204838, 46.187824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642225, 39.467075, 46.039803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464394, -0.033285, -0.885003,
		-0.592523, 0.754377, 0.282547,
		0.658221, 0.655598, -0.370050,
		30.839691, 39.663754, 45.928787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963535, 39.820236, 45.847809>,  <30.378937, 39.204838, 46.187824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963535, 39.820236, 45.847809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339516, 39.785809, 45.715694>,  <30.565104, 39.765152, 45.636425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339516, 39.785809, 45.715694>,  <29.963535, 39.820236, 45.847809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339516, 39.785809, 45.715694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320419, 0.110855, -0.940767,
		0.117588, 0.990102, 0.076618,
		0.939949, -0.086073, -0.330283,
		30.621500, 39.759987, 45.616608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.118595, 38.193069, 50.362873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.515251, 38.241055, 50.381908>,  <35.753242, 38.269844, 50.393330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.515251, 38.241055, 50.381908>,  <35.118595, 38.193069, 50.362873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515251, 38.241055, 50.381908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115434, -0.659611, -0.742690,
		-0.057702, 0.741973, -0.667942,
		0.991638, 0.119958, 0.047588,
		35.812744, 38.277042, 50.396183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300251, 38.517746, 49.745270>,  <35.118595, 38.193069, 50.362873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300251, 38.517746, 49.745270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603870, 38.305622, 49.896332>,  <35.786041, 38.178349, 49.986969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603870, 38.305622, 49.896332>,  <35.300251, 38.517746, 49.745270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603870, 38.305622, 49.896332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117624, -0.458829, -0.880705,
		0.640321, 0.712918, -0.285897,
		0.759048, -0.530305, 0.377654,
		35.831585, 38.146530, 50.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815098, 38.555122, 49.238007>,  <35.300251, 38.517746, 49.745270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815098, 38.555122, 49.238007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955219, 38.245319, 49.448689>,  <36.039291, 38.059437, 49.575096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955219, 38.245319, 49.448689>,  <35.815098, 38.555122, 49.238007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955219, 38.245319, 49.448689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079264, -0.535806, -0.840612,
		0.933275, 0.336221, -0.126306,
		0.350308, -0.774511, 0.526705,
		36.060310, 38.012966, 49.606701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421371, 38.353828, 48.841007>,  <35.815098, 38.555122, 49.238007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421371, 38.353828, 48.841007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.304104, 38.055744, 49.080574>,  <36.233742, 37.876892, 49.224316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.304104, 38.055744, 49.080574>,  <36.421371, 38.353828, 48.841007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304104, 38.055744, 49.080574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060168, -0.639586, -0.766361,
		0.954165, -0.188638, 0.232346,
		-0.293170, -0.745215, 0.598921,
		36.216152, 37.832180, 49.260250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901268, 37.837082, 48.748341>,  <36.421371, 38.353828, 48.841007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901268, 37.837082, 48.748341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562477, 37.665462, 48.873913>,  <36.359203, 37.562492, 48.949257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.562477, 37.665462, 48.873913>,  <36.901268, 37.837082, 48.748341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562477, 37.665462, 48.873913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012857, -0.606857, -0.794707,
		0.531479, -0.669060, 0.519508,
		-0.846974, -0.429049, 0.313929,
		36.308384, 37.536747, 48.968090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016972, 37.240032, 48.600746>,  <36.901268, 37.837082, 48.748341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016972, 37.240032, 48.600746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620735, 37.239674, 48.655472>,  <36.382992, 37.239460, 48.688309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620735, 37.239674, 48.655472>,  <37.016972, 37.240032, 48.600746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620735, 37.239674, 48.655472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118980, -0.488120, -0.864628,
		0.067557, -0.872776, 0.483423,
		-0.990595, -0.000894, 0.136819,
		36.323555, 37.239407, 48.696518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819633, 36.587673, 48.639038>,  <37.016972, 37.240032, 48.600746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819633, 36.587673, 48.639038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487617, 36.790852, 48.546925>,  <36.288410, 36.912758, 48.491657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487617, 36.790852, 48.546925>,  <36.819633, 36.587673, 48.639038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487617, 36.790852, 48.546925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189848, -0.645591, -0.739709,
		-0.524403, -0.570266, 0.632296,
		-0.830036, 0.507946, -0.230286,
		36.238605, 36.943237, 48.477840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460056, 36.060089, 48.435768>,  <36.819633, 36.587673, 48.639038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460056, 36.060089, 48.435768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.267960, 36.382328, 48.296986>,  <36.152702, 36.575672, 48.213715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.267960, 36.382328, 48.296986>,  <36.460056, 36.060089, 48.435768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267960, 36.382328, 48.296986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150010, -0.465163, -0.872422,
		-0.864216, -0.366922, 0.344237,
		-0.480237, 0.805600, -0.346960,
		36.123890, 36.624008, 48.192898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730373, 35.934208, 48.188007>,  <36.460056, 36.060089, 48.435768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730373, 35.934208, 48.188007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800751, 36.263985, 47.972847>,  <35.842979, 36.461853, 47.843750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800751, 36.263985, 47.972847>,  <35.730373, 35.934208, 48.188007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800751, 36.263985, 47.972847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385449, -0.445093, -0.808283,
		-0.905799, 0.349546, 0.239469,
		0.175947, 0.824445, -0.537897,
		35.853535, 36.511318, 47.811478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184628, 35.933800, 47.727837>,  <35.730373, 35.934208, 48.188007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184628, 35.933800, 47.727837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448578, 36.201481, 47.591175>,  <35.606949, 36.362091, 47.509178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448578, 36.201481, 47.591175>,  <35.184628, 35.933800, 47.727837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448578, 36.201481, 47.591175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266756, -0.216434, -0.939147,
		-0.702425, 0.710862, 0.035693,
		0.659879, 0.669202, -0.341656,
		35.646542, 36.402241, 47.488678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703163, 36.231915, 47.327290>,  <35.184628, 35.933800, 47.727837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703163, 36.231915, 47.327290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.077209, 36.316990, 47.213928>,  <35.301640, 36.368034, 47.145912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.077209, 36.316990, 47.213928>,  <34.703163, 36.231915, 47.327290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077209, 36.316990, 47.213928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195902, -0.356140, -0.913667,
		-0.295258, 0.909906, -0.291367,
		0.935118, 0.212688, -0.283406,
		35.357746, 36.380795, 47.128906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606441, 36.486919, 46.672832>,  <34.703163, 36.231915, 47.327290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606441, 36.486919, 46.672832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002232, 36.429989, 46.683254>,  <35.239708, 36.395832, 46.689507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002232, 36.429989, 46.683254>,  <34.606441, 36.486919, 46.672832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002232, 36.429989, 46.683254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004826, -0.212416, -0.977167,
		0.144611, 0.966759, -0.210867,
		0.989477, -0.142327, 0.026052,
		35.299076, 36.387291, 46.691071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173843, 37.065178, 46.491188>,  <34.606441, 36.486919, 46.672832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173843, 37.065178, 46.491188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.828468, 36.877316, 46.564838>,  <33.621243, 36.764599, 46.609028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.828468, 36.877316, 46.564838>,  <34.173843, 37.065178, 46.491188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828468, 36.877316, 46.564838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030187, 0.412439, 0.910485,
		-0.503556, 0.780587, -0.370291,
		-0.863435, -0.469658, 0.184122,
		33.569439, 36.736420, 46.620075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625080, 37.632362, 46.627399>,  <34.173843, 37.065178, 46.491188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625080, 37.632362, 46.627399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.540123, 37.299992, 46.833096>,  <33.489151, 37.100567, 46.956512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.540123, 37.299992, 46.833096>,  <33.625080, 37.632362, 46.627399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540123, 37.299992, 46.833096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083108, 0.508983, 0.856755,
		-0.973644, 0.224704, -0.039047,
		-0.212390, -0.830930, 0.514244,
		33.476406, 37.050713, 46.987370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056435, 37.821575, 47.047001>,  <33.625080, 37.632362, 46.627399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056435, 37.821575, 47.047001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.092293, 37.465302, 47.225281>,  <33.113808, 37.251537, 47.332249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.092293, 37.465302, 47.225281>,  <33.056435, 37.821575, 47.047001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092293, 37.465302, 47.225281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105027, 0.436555, 0.893526,
		-0.990420, -0.126915, -0.054409,
		0.089649, -0.890681, 0.445702,
		33.119186, 37.198097, 47.358990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516838, 37.718842, 47.558144>,  <33.056435, 37.821575, 47.047001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516838, 37.718842, 47.558144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821331, 37.483376, 47.666954>,  <33.004028, 37.342094, 47.732239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.821331, 37.483376, 47.666954>,  <32.516838, 37.718842, 47.558144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821331, 37.483376, 47.666954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120995, 0.283185, 0.951402,
		-0.637090, -0.757153, 0.144344,
		0.761233, -0.588664, 0.272026,
		33.049702, 37.306778, 47.748562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275883, 37.231262, 48.230438>,  <32.516838, 37.718842, 47.558144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275883, 37.231262, 48.230438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.672615, 37.254787, 48.185173>,  <32.910656, 37.268902, 48.158012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.672615, 37.254787, 48.185173>,  <32.275883, 37.231262, 48.230438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672615, 37.254787, 48.185173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085989, 0.346899, 0.933952,
		0.094182, -0.936057, 0.339009,
		0.991834, 0.058810, -0.113162,
		32.970165, 37.272430, 48.151226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496159, 36.989555, 48.947109>,  <32.275883, 37.231262, 48.230438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496159, 36.989555, 48.947109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781826, 37.192528, 48.754246>,  <32.953228, 37.314312, 48.638527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781826, 37.192528, 48.754246>,  <32.496159, 36.989555, 48.947109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781826, 37.192528, 48.754246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255830, 0.451950, 0.854571,
		0.651545, -0.733661, 0.192955,
		0.714171, 0.507428, -0.482158,
		32.996078, 37.344757, 48.609600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071732, 37.011986, 49.467140>,  <32.496159, 36.989555, 48.947109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071732, 37.011986, 49.467140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131058, 37.294678, 49.190434>,  <33.166653, 37.464294, 49.024410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131058, 37.294678, 49.190434>,  <33.071732, 37.011986, 49.467140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131058, 37.294678, 49.190434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311218, 0.630604, 0.710972,
		0.938694, -0.320738, -0.126418,
		0.148316, 0.706729, -0.691764,
		33.175552, 37.506695, 48.982903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473053, 37.437752, 49.842625>,  <33.071732, 37.011986, 49.467140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473053, 37.437752, 49.842625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404476, 37.708099, 49.555901>,  <33.363331, 37.870308, 49.383865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404476, 37.708099, 49.555901>,  <33.473053, 37.437752, 49.842625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404476, 37.708099, 49.555901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314036, 0.727115, 0.610479,
		0.933804, -0.120444, -0.336902,
		-0.171438, 0.675868, -0.716807,
		33.353046, 37.910858, 49.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076477, 37.883949, 49.772026>,  <33.473053, 37.437752, 49.842625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076477, 37.883949, 49.772026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759872, 38.093006, 49.645309>,  <33.569908, 38.218437, 49.569279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.759872, 38.093006, 49.645309>,  <34.076477, 37.883949, 49.772026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759872, 38.093006, 49.645309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242401, 0.744305, 0.622296,
		0.561024, 0.415765, -0.715815,
		-0.791514, 0.522637, -0.316791,
		33.522419, 38.249798, 49.550274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254944, 38.544609, 49.562263>,  <34.076477, 37.883949, 49.772026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254944, 38.544609, 49.562263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867802, 38.590752, 49.651661>,  <33.635517, 38.618435, 49.705299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867802, 38.590752, 49.651661>,  <34.254944, 38.544609, 49.562263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867802, 38.590752, 49.651661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217867, 0.828486, 0.515892,
		-0.125650, 0.548001, -0.826987,
		-0.967856, 0.115352, 0.223490,
		33.577446, 38.625359, 49.718708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242397, 39.250412, 49.565926>,  <34.254944, 38.544609, 49.562263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242397, 39.250412, 49.565926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.903549, 39.129032, 49.740421>,  <33.700241, 39.056202, 49.845119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.903549, 39.129032, 49.740421>,  <34.242397, 39.250412, 49.565926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903549, 39.129032, 49.740421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030844, 0.847617, 0.529711,
		-0.530510, 0.435272, -0.727391,
		-0.847118, -0.303453, 0.436243,
		33.649414, 39.037994, 49.871296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856014, 39.894806, 49.579086>,  <34.242397, 39.250412, 49.565926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856014, 39.894806, 49.579086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722664, 39.644302, 49.860985>,  <33.642654, 39.493999, 50.030125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.722664, 39.644302, 49.860985>,  <33.856014, 39.894806, 49.579086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722664, 39.644302, 49.860985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066031, 0.761181, 0.645169,
		-0.940480, 0.168546, -0.295109,
		-0.333372, -0.626255, 0.704746,
		33.622654, 39.456425, 50.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357685, 40.284039, 49.875565>,  <33.856014, 39.894806, 49.579086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357685, 40.284039, 49.875565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479748, 40.005718, 50.135639>,  <33.552986, 39.838726, 50.291683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479748, 40.005718, 50.135639>,  <33.357685, 40.284039, 49.875565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479748, 40.005718, 50.135639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056448, 0.668337, 0.741714,
		-0.950628, -0.263039, 0.164670,
		0.305155, -0.695799, 0.650188,
		33.571293, 39.796978, 50.330696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076813, 39.794849, 50.493755>,  <33.357685, 40.284039, 49.875565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076813, 39.794849, 50.493755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.788754, 40.041843, 50.620304>,  <32.615917, 40.190041, 50.696236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.788754, 40.041843, 50.620304>,  <33.076813, 39.794849, 50.493755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788754, 40.041843, 50.620304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388642, 0.018729, -0.921199,
		-0.574756, -0.786356, 0.226495,
		-0.720148, 0.617490, 0.316375,
		32.572708, 40.227089, 50.715218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360760, 39.472576, 50.398754>,  <33.076813, 39.794849, 50.493755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360760, 39.472576, 50.398754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.355251, 39.872425, 50.389221>,  <32.351948, 40.112335, 50.383503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.355251, 39.872425, 50.389221>,  <32.360760, 39.472576, 50.398754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355251, 39.872425, 50.389221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395630, -0.027334, -0.918003,
		-0.918307, -0.003210, 0.395856,
		-0.013767, 0.999621, -0.023831,
		32.351120, 40.172310, 50.382072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665680, 39.764690, 50.127846>,  <32.360760, 39.472576, 50.398754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665680, 39.764690, 50.127846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.896608, 40.083878, 50.058620>,  <32.035164, 40.275391, 50.017086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.896608, 40.083878, 50.058620>,  <31.665680, 39.764690, 50.127846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896608, 40.083878, 50.058620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314234, 0.021504, -0.949102,
		-0.753631, 0.602316, 0.263163,
		0.577319, 0.797968, -0.173062,
		32.069805, 40.323269, 50.006702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250259, 40.280609, 49.884041>,  <31.665680, 39.764690, 50.127846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250259, 40.280609, 49.884041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.616537, 40.360970, 49.744820>,  <31.836304, 40.409187, 49.661289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.616537, 40.360970, 49.744820>,  <31.250259, 40.280609, 49.884041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616537, 40.360970, 49.744820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357181, 0.009944, -0.933982,
		-0.184181, 0.979560, 0.080865,
		0.915696, 0.200906, -0.348049,
		31.891247, 40.421242, 49.640404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141382, 40.833523, 49.358139>,  <31.250259, 40.280609, 49.884041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141382, 40.833523, 49.358139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.516951, 40.711800, 49.293854>,  <31.742290, 40.638767, 49.255283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.516951, 40.711800, 49.293854>,  <31.141382, 40.833523, 49.358139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516951, 40.711800, 49.293854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158914, 0.030831, -0.986811,
		0.305249, 0.952075, -0.019411,
		0.938919, -0.304308, -0.160709,
		31.798626, 40.620506, 49.245640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409220, 41.378010, 48.909698>,  <31.141382, 40.833523, 49.358139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409220, 41.378010, 48.909698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.651741, 41.063240, 48.863842>,  <31.797253, 40.874378, 48.836327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.651741, 41.063240, 48.863842>,  <31.409220, 41.378010, 48.909698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651741, 41.063240, 48.863842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121436, 0.050854, -0.991295,
		0.785908, 0.614947, -0.064729,
		0.606302, -0.786927, -0.114644,
		31.833632, 40.827164, 48.829449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665960, 41.567017, 48.335461>,  <31.409220, 41.378010, 48.909698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665960, 41.567017, 48.335461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779293, 41.183548, 48.345798>,  <31.847292, 40.953465, 48.352001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.779293, 41.183548, 48.345798>,  <31.665960, 41.567017, 48.335461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779293, 41.183548, 48.345798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075447, -0.049149, -0.995938,
		0.956049, 0.280231, -0.086254,
		0.283332, -0.958673, 0.025846,
		31.864292, 40.895947, 48.353554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952787, 41.481716, 47.652386>,  <31.665960, 41.567017, 48.335461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952787, 41.481716, 47.652386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920233, 41.105087, 47.783119>,  <31.900700, 40.879108, 47.861561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920233, 41.105087, 47.783119>,  <31.952787, 41.481716, 47.652386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920233, 41.105087, 47.783119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079963, -0.320695, -0.943801,
		0.993470, -0.102947, -0.049191,
		-0.081386, -0.941571, 0.326833,
		31.895817, 40.822617, 47.881168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684513, 41.192261, 47.933281>,  <31.952787, 41.481716, 47.652386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684513, 41.192261, 47.933281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.711246, 41.562912, 47.785282>,  <32.727287, 41.785301, 47.696484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.711246, 41.562912, 47.785282>,  <32.684513, 41.192261, 47.933281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711246, 41.562912, 47.785282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321519, 0.331043, 0.887151,
		0.944542, -0.178252, -0.275803,
		0.066834, 0.926627, -0.369995,
		32.731297, 41.840900, 47.674282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376255, 41.407700, 48.131264>,  <32.684513, 41.192261, 47.933281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376255, 41.407700, 48.131264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.179077, 41.739918, 48.027569>,  <33.060768, 41.939247, 47.965351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.179077, 41.739918, 48.027569>,  <33.376255, 41.407700, 48.131264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179077, 41.739918, 48.027569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443596, 0.496229, 0.746311,
		0.748482, 0.252896, -0.613040,
		-0.492947, 0.830542, -0.259235,
		33.031193, 41.989082, 47.949799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877899, 41.907871, 47.986904>,  <33.376255, 41.407700, 48.131264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877899, 41.907871, 47.986904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542881, 42.107594, 48.075645>,  <33.341869, 42.227425, 48.128891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.542881, 42.107594, 48.075645>,  <33.877899, 41.907871, 47.986904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542881, 42.107594, 48.075645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490650, 0.508680, 0.707465,
		0.240387, 0.701385, -0.671024,
		-0.837542, 0.499304, 0.221855,
		33.291618, 42.257385, 48.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048080, 42.588314, 48.173100>,  <33.877899, 41.907871, 47.986904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048080, 42.588314, 48.173100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665825, 42.606598, 48.289490>,  <33.436470, 42.617569, 48.359325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665825, 42.606598, 48.289490>,  <34.048080, 42.588314, 48.173100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665825, 42.606598, 48.289490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272869, 0.509340, 0.816159,
		-0.110904, 0.859351, -0.499216,
		-0.955638, 0.045705, 0.290978,
		33.379135, 42.620308, 48.376781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921646, 43.214809, 48.318188>,  <34.048080, 42.588314, 48.173100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921646, 43.214809, 48.318188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642040, 43.030003, 48.536514>,  <33.474277, 42.919117, 48.667511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642040, 43.030003, 48.536514>,  <33.921646, 43.214809, 48.318188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642040, 43.030003, 48.536514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353709, 0.439973, 0.825417,
		-0.621504, 0.770039, -0.144127,
		-0.699015, -0.462021, 0.545815,
		33.432335, 42.891396, 48.700260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824005, 43.680229, 48.815681>,  <33.921646, 43.214809, 48.318188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824005, 43.680229, 48.815681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.670288, 43.346649, 48.974102>,  <33.578056, 43.146503, 49.069153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.670288, 43.346649, 48.974102>,  <33.824005, 43.680229, 48.815681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670288, 43.346649, 48.974102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354706, 0.262690, 0.897317,
		-0.852352, 0.485312, 0.194856,
		-0.384292, -0.833946, 0.396048,
		33.555000, 43.096466, 49.092915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460159, 43.889282, 49.403900>,  <33.824005, 43.680229, 48.815681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460159, 43.889282, 49.403900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516792, 43.499439, 49.473282>,  <33.550774, 43.265533, 49.514912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516792, 43.499439, 49.473282>,  <33.460159, 43.889282, 49.403900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516792, 43.499439, 49.473282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393523, 0.216194, 0.893532,
		-0.908346, -0.058254, 0.414142,
		0.141587, -0.974611, 0.173455,
		33.559269, 43.207054, 49.525318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328850, 43.749287, 50.100868>,  <33.460159, 43.889282, 49.403900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328850, 43.749287, 50.100868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.551189, 43.439651, 49.979660>,  <33.684593, 43.253868, 49.906937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.551189, 43.439651, 49.979660>,  <33.328850, 43.749287, 50.100868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551189, 43.439651, 49.979660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578006, 0.097914, 0.810137,
		-0.597450, -0.625458, 0.501853,
		0.555845, -0.774090, -0.303020,
		33.717941, 43.207424, 49.888756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272747, 43.271412, 50.629574>,  <33.328850, 43.749287, 50.100868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272747, 43.271412, 50.629574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624596, 43.203011, 50.452026>,  <33.835705, 43.161968, 50.345497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624596, 43.203011, 50.452026>,  <33.272747, 43.271412, 50.629574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624596, 43.203011, 50.452026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429226, -0.116805, 0.895613,
		-0.205002, -0.978322, -0.029343,
		0.879625, -0.171007, -0.443866,
		33.888481, 43.151707, 50.318867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.054108, 38.299740, 35.196159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377621, 38.089916, 35.302521>,  <33.571728, 37.964020, 35.366337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377621, 38.089916, 35.302521>,  <33.054108, 38.299740, 35.196159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377621, 38.089916, 35.302521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381565, -0.123991, 0.915988,
		-0.447523, -0.842296, -0.300436,
		0.808784, -0.524562, 0.265902,
		33.620255, 37.932549, 35.382290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835014, 37.681763, 35.551270>,  <33.054108, 38.299740, 35.196159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835014, 37.681763, 35.551270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202690, 37.794220, 35.661579>,  <33.423294, 37.861694, 35.727764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202690, 37.794220, 35.661579>,  <32.835014, 37.681763, 35.551270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202690, 37.794220, 35.661579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317528, 0.114849, 0.941268,
		0.232957, -0.952769, 0.194838,
		0.919188, 0.281142, 0.275776,
		33.478447, 37.878563, 35.744312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970448, 37.336437, 36.227924>,  <32.835014, 37.681763, 35.551270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970448, 37.336437, 36.227924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200848, 37.663071, 36.212925>,  <33.339088, 37.859051, 36.203926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200848, 37.663071, 36.212925>,  <32.970448, 37.336437, 36.227924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200848, 37.663071, 36.212925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272134, 0.234811, 0.933170,
		0.770820, -0.527303, 0.357473,
		0.576002, 0.816588, -0.037500,
		33.373650, 37.908047, 36.201675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278679, 37.393814, 36.891338>,  <32.970448, 37.336437, 36.227924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278679, 37.393814, 36.891338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324692, 37.751007, 36.717281>,  <33.352299, 37.965324, 36.612846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324692, 37.751007, 36.717281>,  <33.278679, 37.393814, 36.891338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324692, 37.751007, 36.717281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219740, 0.450077, 0.865532,
		0.968753, -0.003946, 0.247997,
		0.115033, 0.892981, -0.435147,
		33.359203, 38.018902, 36.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742786, 37.788574, 37.377380>,  <33.278679, 37.393814, 36.891338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742786, 37.788574, 37.377380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596252, 38.096375, 37.168125>,  <33.508331, 38.281055, 37.042572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596252, 38.096375, 37.168125>,  <33.742786, 37.788574, 37.377380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596252, 38.096375, 37.168125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075798, 0.535675, 0.841016,
		0.927391, 0.347746, -0.137910,
		-0.366334, 0.769497, -0.523139,
		33.486351, 38.327225, 37.011185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100311, 38.401714, 37.544231>,  <33.742786, 37.788574, 37.377380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100311, 38.401714, 37.544231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747967, 38.535366, 37.410107>,  <33.536560, 38.615559, 37.329632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747967, 38.535366, 37.410107>,  <34.100311, 38.401714, 37.544231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747967, 38.535366, 37.410107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102140, 0.557512, 0.823862,
		0.462221, 0.759958, -0.456963,
		-0.880863, 0.334131, -0.335316,
		33.483707, 38.635605, 37.309513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021309, 39.100513, 37.725368>,  <34.100311, 38.401714, 37.544231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021309, 39.100513, 37.725368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642689, 39.082020, 37.597679>,  <33.415516, 39.070923, 37.521065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642689, 39.082020, 37.597679>,  <34.021309, 39.100513, 37.725368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642689, 39.082020, 37.597679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298782, 0.498583, 0.813722,
		0.121543, 0.865608, -0.485746,
		-0.946550, -0.046230, -0.319228,
		33.358723, 39.068150, 37.501911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723492, 39.868980, 37.610607>,  <34.021309, 39.100513, 37.725368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723492, 39.868980, 37.610607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460518, 39.573799, 37.671532>,  <33.302734, 39.396690, 37.708088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460518, 39.573799, 37.671532>,  <33.723492, 39.868980, 37.610607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460518, 39.573799, 37.671532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346236, 0.475387, 0.808781,
		-0.669253, 0.478985, -0.568043,
		-0.657434, -0.737957, 0.152312,
		33.263287, 39.352413, 37.717224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046139, 40.232357, 37.738003>,  <33.723492, 39.868980, 37.610607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046139, 40.232357, 37.738003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029774, 39.876148, 37.919243>,  <33.019955, 39.662422, 38.027988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029774, 39.876148, 37.919243>,  <33.046139, 40.232357, 37.738003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029774, 39.876148, 37.919243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312055, 0.442189, 0.840887,
		-0.949183, -0.106987, -0.295984,
		-0.040917, -0.890518, 0.453103,
		33.017498, 39.608994, 38.055176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383621, 40.166889, 38.055676>,  <33.046139, 40.232357, 37.738003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383621, 40.166889, 38.055676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603065, 39.894043, 38.249069>,  <32.734730, 39.730335, 38.365105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603065, 39.894043, 38.249069>,  <32.383621, 40.166889, 38.055676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603065, 39.894043, 38.249069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398124, 0.295375, 0.868477,
		-0.735206, -0.668938, -0.109520,
		0.548607, -0.682112, 0.483481,
		32.767647, 39.689411, 38.394115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964058, 39.782097, 38.503574>,  <32.383621, 40.166889, 38.055676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964058, 39.782097, 38.503574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327469, 39.710384, 38.654537>,  <32.545517, 39.667355, 38.745113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327469, 39.710384, 38.654537>,  <31.964058, 39.782097, 38.503574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327469, 39.710384, 38.654537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323525, 0.269727, 0.906961,
		-0.264398, -0.946100, 0.187052,
		0.908529, -0.179283, 0.377403,
		32.600029, 39.656601, 38.767757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844313, 39.271042, 39.139786>,  <31.964058, 39.782097, 38.503574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844313, 39.271042, 39.139786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195862, 39.460873, 39.159233>,  <32.406792, 39.574772, 39.170902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195862, 39.460873, 39.159233>,  <31.844313, 39.271042, 39.139786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195862, 39.460873, 39.159233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188836, 0.252497, 0.948992,
		0.438092, -0.843223, 0.311529,
		0.878872, 0.474574, 0.048614,
		32.459522, 39.603245, 39.173817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521086, 38.676449, 39.436878>,  <31.844313, 39.271042, 39.139786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521086, 38.676449, 39.436878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141027, 38.669323, 39.561394>,  <30.912992, 38.665047, 39.636105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141027, 38.669323, 39.561394>,  <31.521086, 38.676449, 39.436878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141027, 38.669323, 39.561394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218041, -0.675714, -0.704180,
		0.222887, -0.736949, 0.638144,
		-0.950147, -0.017812, 0.311293,
		30.855984, 38.663979, 39.654781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351383, 37.971062, 39.427990>,  <31.521086, 38.676449, 39.436878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351383, 37.971062, 39.427990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994974, 38.152004, 39.412758>,  <30.781128, 38.260571, 39.403618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994974, 38.152004, 39.412758>,  <31.351383, 37.971062, 39.427990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994974, 38.152004, 39.412758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300120, -0.649938, -0.698218,
		-0.340597, -0.610699, 0.714871,
		-0.891023, 0.452358, -0.038084,
		30.727667, 38.287712, 39.401333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888365, 37.446114, 39.376854>,  <31.351383, 37.971062, 39.427990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888365, 37.446114, 39.376854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698076, 37.763283, 39.224556>,  <30.583904, 37.953583, 39.133179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698076, 37.763283, 39.224556>,  <30.888365, 37.446114, 39.376854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698076, 37.763283, 39.224556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328335, -0.561649, -0.759438,
		-0.816019, -0.236268, 0.527532,
		-0.475719, 0.792923, -0.380742,
		30.555361, 38.001160, 39.110332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211630, 37.173870, 39.071712>,  <30.888365, 37.446114, 39.376854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211630, 37.173870, 39.071712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196129, 37.542934, 38.918251>,  <30.186829, 37.764374, 38.826176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196129, 37.542934, 38.918251>,  <30.211630, 37.173870, 39.071712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196129, 37.542934, 38.918251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341259, -0.373078, -0.862760,
		-0.939170, 0.097492, 0.329325,
		-0.038752, 0.922664, -0.383654,
		30.184504, 37.819733, 38.803154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554611, 37.314060, 38.763210>,  <30.211630, 37.173870, 39.071712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554611, 37.314060, 38.763210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791733, 37.575371, 38.574821>,  <29.934006, 37.732159, 38.461788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791733, 37.575371, 38.574821>,  <29.554611, 37.314060, 38.763210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791733, 37.575371, 38.574821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302252, -0.361583, -0.881987,
		-0.746476, 0.665197, -0.016894,
		0.592804, 0.653276, -0.470971,
		29.969574, 37.771355, 38.433529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261629, 37.402279, 38.122322>,  <29.554611, 37.314060, 38.763210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261629, 37.402279, 38.122322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636591, 37.532585, 38.073093>,  <29.861568, 37.610767, 38.043556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636591, 37.532585, 38.073093>,  <29.261629, 37.402279, 38.122322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636591, 37.532585, 38.073093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052709, -0.482075, -0.874543,
		-0.344227, 0.813314, -0.469071,
		0.937406, 0.325766, -0.123074,
		29.917812, 37.630314, 38.036171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309502, 37.505516, 37.453709>,  <29.261629, 37.402279, 38.122322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309502, 37.505516, 37.453709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688450, 37.451778, 37.569942>,  <29.915819, 37.419537, 37.639683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688450, 37.451778, 37.569942>,  <29.309502, 37.505516, 37.453709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688450, 37.451778, 37.569942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203137, -0.449273, -0.869994,
		0.247430, 0.883235, -0.398339,
		0.947372, -0.134345, 0.290581,
		29.972662, 37.411476, 37.657116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646420, 37.931904, 36.819828>,  <29.309502, 37.505516, 37.453709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646420, 37.931904, 36.819828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900452, 37.675022, 36.991528>,  <30.052870, 37.520893, 37.094547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900452, 37.675022, 36.991528>,  <29.646420, 37.931904, 36.819828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900452, 37.675022, 36.991528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276968, -0.329427, -0.902644,
		0.721085, 0.692137, -0.031343,
		0.635079, -0.642202, 0.429245,
		30.090975, 37.482361, 37.120300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316936, 38.102684, 36.468315>,  <29.646420, 37.931904, 36.819828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316936, 38.102684, 36.468315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317028, 37.735428, 36.626816>,  <30.317083, 37.515072, 36.721916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317028, 37.735428, 36.626816>,  <30.316936, 38.102684, 36.468315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317028, 37.735428, 36.626816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149636, -0.391756, -0.907820,
		0.988741, 0.059499, 0.137298,
		0.000227, -0.918144, 0.396248,
		30.317097, 37.459984, 36.745689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896774, 37.787399, 36.205620>,  <30.316936, 38.102684, 36.468315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896774, 37.787399, 36.205620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653864, 37.494797, 36.329632>,  <30.508118, 37.319237, 36.404037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653864, 37.494797, 36.329632>,  <30.896774, 37.787399, 36.205620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653864, 37.494797, 36.329632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007773, -0.384734, -0.922995,
		0.794454, -0.562921, 0.227953,
		-0.607274, -0.731505, 0.310029,
		30.471682, 37.275345, 36.422642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038294, 37.062733, 35.894344>,  <30.896774, 37.787399, 36.205620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038294, 37.062733, 35.894344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646160, 37.039684, 35.969841>,  <30.410879, 37.025856, 36.015137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646160, 37.039684, 35.969841>,  <31.038294, 37.062733, 35.894344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646160, 37.039684, 35.969841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108783, -0.640179, -0.760484,
		0.164647, -0.766061, 0.621322,
		-0.980336, -0.057622, 0.188738,
		30.352060, 37.022396, 36.026463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866434, 36.392517, 35.928787>,  <31.038294, 37.062733, 35.894344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866434, 36.392517, 35.928787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507343, 36.556633, 35.864601>,  <30.291889, 36.655102, 35.826092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507343, 36.556633, 35.864601>,  <30.866434, 36.392517, 35.928787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507343, 36.556633, 35.864601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104740, -0.552556, -0.826869,
		-0.427917, -0.725497, 0.539018,
		-0.897728, 0.410288, -0.160460,
		30.238026, 36.679718, 35.816463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354952, 35.883492, 35.808502>,  <30.866434, 36.392517, 35.928787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354952, 35.883492, 35.808502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306681, 36.234196, 35.622288>,  <30.277718, 36.444618, 35.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306681, 36.234196, 35.622288>,  <30.354952, 35.883492, 35.808502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306681, 36.234196, 35.622288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088106, -0.457650, -0.884757,
		-0.988774, -0.147785, -0.022021,
		-0.120676, 0.876765, -0.465533,
		30.270477, 36.497227, 35.482628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882442, 35.359318, 36.009247>,  <30.354952, 35.883492, 35.808502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882442, 35.359318, 36.009247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259867, 35.357517, 36.141712>,  <31.486322, 35.356438, 36.221191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259867, 35.357517, 36.141712>,  <30.882442, 35.359318, 36.009247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259867, 35.357517, 36.141712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137585, -0.914874, 0.379573,
		0.301267, -0.403714, -0.863859,
		0.943562, -0.004502, 0.331166,
		31.542934, 35.356167, 36.241062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187860, 35.013458, 36.178558>,  <30.882442, 35.359318, 36.009247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187860, 35.013458, 36.178558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438244, 34.706825, 36.235859>,  <30.588474, 34.522846, 36.270241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438244, 34.706825, 36.235859>,  <30.187860, 35.013458, 36.178558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438244, 34.706825, 36.235859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262773, 0.380278, 0.886757,
		-0.734252, -0.517430, 0.439477,
		0.625958, -0.766586, 0.143253,
		30.626032, 34.476849, 36.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092918, 34.826077, 36.854763>,  <30.187860, 35.013458, 36.178558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092918, 34.826077, 36.854763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449690, 34.685307, 36.741196>,  <30.663752, 34.600845, 36.673054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449690, 34.685307, 36.741196>,  <30.092918, 34.826077, 36.854763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449690, 34.685307, 36.741196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374825, 0.224217, 0.899574,
		-0.252926, -0.908776, 0.331897,
		0.891927, -0.351928, -0.283922,
		30.717268, 34.579727, 36.656017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515997, 34.440788, 37.414848>,  <30.092918, 34.826077, 36.854763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515997, 34.440788, 37.414848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799875, 34.596485, 37.179962>,  <30.970201, 34.689903, 37.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799875, 34.596485, 37.179962>,  <30.515997, 34.440788, 37.414848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799875, 34.596485, 37.179962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594435, 0.116524, 0.795657,
		0.378126, -0.913737, -0.148681,
		0.709696, 0.389239, -0.587217,
		31.012785, 34.713257, 37.003796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968487, 33.905380, 37.230469>,  <30.515997, 34.440788, 37.414848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968487, 33.905380, 37.230469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116026, 34.276539, 37.252232>,  <31.204550, 34.499233, 37.265289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116026, 34.276539, 37.252232>,  <30.968487, 33.905380, 37.230469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116026, 34.276539, 37.252232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436967, -0.224766, 0.870942,
		0.820374, -0.297468, -0.488364,
		0.368845, 0.927897, 0.054408,
		31.226679, 34.554909, 37.268555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599623, 33.857960, 37.485538>,  <30.968487, 33.905380, 37.230469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599623, 33.857960, 37.485538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483074, 34.230125, 37.574467>,  <31.413145, 34.453426, 37.627823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483074, 34.230125, 37.574467>,  <31.599623, 33.857960, 37.485538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483074, 34.230125, 37.574467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286355, -0.136911, 0.948291,
		0.912745, 0.339967, -0.226537,
		-0.291372, 0.930418, 0.222316,
		31.395662, 34.509251, 37.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048775, 34.196491, 37.948887>,  <31.599623, 33.857960, 37.485538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048775, 34.196491, 37.948887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724234, 34.417618, 38.024883>,  <31.529509, 34.550293, 38.070480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724234, 34.417618, 38.024883>,  <32.048775, 34.196491, 37.948887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724234, 34.417618, 38.024883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221114, -0.010636, 0.975190,
		0.541124, 0.833234, -0.113606,
		-0.811353, 0.552819, 0.189995,
		31.480827, 34.583462, 38.081882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207401, 34.610889, 38.522339>,  <32.048775, 34.196491, 37.948887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207401, 34.610889, 38.522339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823336, 34.721561, 38.538025>,  <31.592897, 34.787964, 38.547436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823336, 34.721561, 38.538025>,  <32.207401, 34.610889, 38.522339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823336, 34.721561, 38.538025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105000, 0.227168, 0.968178,
		0.258967, 0.933726, -0.247169,
		-0.960162, 0.276679, 0.039212,
		31.535288, 34.804565, 38.549789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160583, 35.313274, 38.812561>,  <32.207401, 34.610889, 38.522339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160583, 35.313274, 38.812561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820021, 35.121643, 38.897976>,  <31.615685, 35.006664, 38.949226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820021, 35.121643, 38.897976>,  <32.160583, 35.313274, 38.812561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820021, 35.121643, 38.897976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152231, 0.163893, 0.974661,
		-0.501935, 0.862336, -0.066608,
		-0.851403, -0.479077, 0.213538,
		31.564600, 34.977921, 38.962036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794731, 35.788795, 39.271885>,  <32.160583, 35.313274, 38.812561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794731, 35.788795, 39.271885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618629, 35.431423, 39.307564>,  <31.512968, 35.216999, 39.328972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618629, 35.431423, 39.307564>,  <31.794731, 35.788795, 39.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618629, 35.431423, 39.307564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320221, -0.063430, 0.945217,
		-0.838829, 0.444698, 0.314021,
		-0.440255, -0.893432, 0.089195,
		31.486553, 35.163395, 39.334324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293356, 35.772717, 39.885597>,  <31.794731, 35.788795, 39.271885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293356, 35.772717, 39.885597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417192, 35.400146, 39.809063>,  <31.491493, 35.176605, 39.763142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417192, 35.400146, 39.809063>,  <31.293356, 35.772717, 39.885597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417192, 35.400146, 39.809063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163871, -0.145949, 0.975626,
		-0.936643, -0.333398, 0.107449,
		0.309590, -0.931421, -0.191337,
		31.510069, 35.120720, 39.751663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109501, 35.368858, 40.400585>,  <31.293356, 35.772717, 39.885597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109501, 35.368858, 40.400585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367144, 35.107151, 40.242065>,  <31.521730, 34.950127, 40.146954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367144, 35.107151, 40.242065>,  <31.109501, 35.368858, 40.400585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367144, 35.107151, 40.242065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367027, -0.190206, 0.910556,
		-0.671131, -0.731948, 0.117622,
		0.644108, -0.654273, -0.396298,
		31.560375, 34.910870, 40.123177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201569, 34.945045, 40.933006>,  <31.109501, 35.368858, 40.400585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201569, 34.945045, 40.933006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526354, 34.883266, 40.707844>,  <31.721226, 34.846199, 40.572746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526354, 34.883266, 40.707844>,  <31.201569, 34.945045, 40.933006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526354, 34.883266, 40.707844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551754, -0.111616, 0.826504,
		-0.190483, -0.981675, -0.005410,
		0.811963, -0.154450, -0.562904,
		31.769943, 34.836933, 40.538971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441645, 34.396275, 41.187702>,  <31.201569, 34.945045, 40.933006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441645, 34.396275, 41.187702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740456, 34.572330, 40.988411>,  <31.919743, 34.677963, 40.868835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740456, 34.572330, 40.988411>,  <31.441645, 34.396275, 41.187702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740456, 34.572330, 40.988411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597526, -0.116029, 0.793411,
		0.291403, -0.890401, -0.349671,
		0.747026, 0.440140, -0.498226,
		31.964563, 34.704372, 40.838943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991323, 33.946270, 41.354771>,  <31.441645, 34.396275, 41.187702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991323, 33.946270, 41.354771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128044, 34.302032, 41.233360>,  <32.210075, 34.515491, 41.160515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128044, 34.302032, 41.233360>,  <31.991323, 33.946270, 41.354771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128044, 34.302032, 41.233360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647819, 0.010991, 0.761715,
		0.680810, -0.456986, -0.572418,
		0.341802, 0.889406, -0.303527,
		32.230583, 34.568855, 41.142303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642223, 33.878624, 41.506180>,  <31.991323, 33.946270, 41.354771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642223, 33.878624, 41.506180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606476, 34.271202, 41.438328>,  <32.585026, 34.506748, 41.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606476, 34.271202, 41.438328>,  <32.642223, 33.878624, 41.506180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606476, 34.271202, 41.438328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474640, 0.191701, 0.859050,
		0.875631, -0.003740, -0.482967,
		-0.089372, 0.981446, -0.169634,
		32.579662, 34.565636, 41.387436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995125, 34.146439, 42.028236>,  <32.642223, 33.878624, 41.506180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995125, 34.146439, 42.028236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860413, 34.510239, 41.930752>,  <32.779587, 34.728519, 41.872261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860413, 34.510239, 41.930752>,  <32.995125, 34.146439, 42.028236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860413, 34.510239, 41.930752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294308, 0.347544, 0.890278,
		0.894406, 0.228102, -0.384718,
		-0.336781, 0.909496, -0.243714,
		32.759377, 34.783089, 41.857639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535480, 34.690948, 42.201771>,  <32.995125, 34.146439, 42.028236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535480, 34.690948, 42.201771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168396, 34.849827, 42.199059>,  <32.948147, 34.945152, 42.197433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168396, 34.849827, 42.199059>,  <33.535480, 34.690948, 42.201771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168396, 34.849827, 42.199059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119083, 0.291337, 0.949180,
		0.378981, 0.870265, -0.314662,
		-0.917711, 0.397192, -0.006778,
		32.893082, 34.968983, 42.197025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604687, 35.430004, 42.478695>,  <33.535480, 34.690948, 42.201771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604687, 35.430004, 42.478695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212399, 35.361393, 42.516144>,  <32.977024, 35.320225, 42.538612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212399, 35.361393, 42.516144>,  <33.604687, 35.430004, 42.478695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212399, 35.361393, 42.516144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028423, 0.599194, 0.800099,
		-0.193335, 0.782013, -0.592517,
		-0.980721, -0.171528, 0.093618,
		32.918182, 35.309933, 42.544228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312489, 36.062408, 42.600822>,  <33.604687, 35.430004, 42.478695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312489, 36.062408, 42.600822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066822, 35.779118, 42.740086>,  <32.919422, 35.609142, 42.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066822, 35.779118, 42.740086>,  <33.312489, 36.062408, 42.600822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066822, 35.779118, 42.740086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099323, 0.507030, 0.856187,
		-0.782899, 0.491263, -0.381745,
		-0.614169, -0.708224, 0.348160,
		32.882572, 35.566650, 42.844532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881321, 36.476295, 42.897373>,  <33.312489, 36.062408, 42.600822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881321, 36.476295, 42.897373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839516, 36.110268, 43.053181>,  <32.814434, 35.890652, 43.146664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839516, 36.110268, 43.053181>,  <32.881321, 36.476295, 42.897373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839516, 36.110268, 43.053181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179512, 0.402585, 0.897608,
		-0.978188, 0.023890, -0.206342,
		-0.104514, -0.915071, 0.389515,
		32.808163, 35.835747, 43.170036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403519, 36.613441, 43.392101>,  <32.881321, 36.476295, 42.897373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403519, 36.613441, 43.392101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537651, 36.245911, 43.475338>,  <32.618130, 36.025391, 43.525280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537651, 36.245911, 43.475338>,  <32.403519, 36.613441, 43.392101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537651, 36.245911, 43.475338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063645, 0.198281, 0.978077,
		-0.939949, -0.341222, 0.008010,
		0.335330, -0.918832, 0.208091,
		32.638248, 35.970261, 43.537766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946556, 36.334476, 43.938152>,  <32.403519, 36.613441, 43.392101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946556, 36.334476, 43.938152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294357, 36.141403, 43.980072>,  <32.503036, 36.025558, 44.005226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294357, 36.141403, 43.980072>,  <31.946556, 36.334476, 43.938152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294357, 36.141403, 43.980072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124930, 0.420199, 0.898791,
		-0.477869, -0.768407, 0.425666,
		0.869502, -0.482683, 0.104803,
		32.555206, 35.996597, 44.011513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948318, 35.900295, 44.645329>,  <31.946556, 36.334476, 43.938152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948318, 35.900295, 44.645329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334747, 35.940197, 44.550034>,  <32.566605, 35.964138, 44.492855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334747, 35.940197, 44.550034>,  <31.948318, 35.900295, 44.645329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334747, 35.940197, 44.550034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214247, 0.205661, 0.954883,
		0.144242, -0.973527, 0.177313,
		0.966071, 0.099746, -0.238240,
		32.624569, 35.970123, 44.478561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292622, 35.458023, 45.112606>,  <31.948318, 35.900295, 44.645329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292622, 35.458023, 45.112606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573524, 35.706589, 44.973652>,  <32.742065, 35.855728, 44.890278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573524, 35.706589, 44.973652>,  <32.292622, 35.458023, 45.112606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573524, 35.706589, 44.973652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330527, 0.147591, 0.932185,
		0.630545, -0.769454, -0.101748,
		0.702257, 0.621415, -0.347388,
		32.784203, 35.893013, 44.869434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827805, 35.319866, 45.490044>,  <32.292622, 35.458023, 45.112606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827805, 35.319866, 45.490044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964188, 35.661907, 45.333809>,  <33.046017, 35.867130, 45.240070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964188, 35.661907, 45.333809>,  <32.827805, 35.319866, 45.490044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964188, 35.661907, 45.333809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410511, 0.238344, 0.880156,
		0.845712, -0.460434, -0.269762,
		0.340958, 0.855098, -0.390583,
		33.066475, 35.918438, 45.216633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528843, 35.294788, 45.695404>,  <32.827805, 35.319866, 45.490044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528843, 35.294788, 45.695404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408901, 35.666214, 45.607899>,  <33.336937, 35.889069, 45.555397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408901, 35.666214, 45.607899>,  <33.528843, 35.294788, 45.695404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408901, 35.666214, 45.607899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281619, 0.305255, 0.909676,
		0.911469, 0.211167, -0.353034,
		-0.299859, 0.928562, -0.218762,
		33.318943, 35.944782, 45.542271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977654, 35.742775, 45.950497>,  <33.528843, 35.294788, 45.695404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977654, 35.742775, 45.950497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672054, 35.995876, 45.900021>,  <33.488693, 36.147736, 45.869736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672054, 35.995876, 45.900021>,  <33.977654, 35.742775, 45.950497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672054, 35.995876, 45.900021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207936, 0.426612, 0.880207,
		0.610791, 0.646238, -0.457505,
		-0.764001, 0.632754, -0.126194,
		33.442856, 36.185703, 45.862164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248611, 36.492195, 46.032612>,  <33.977654, 35.742775, 45.950497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248611, 36.492195, 46.032612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863071, 36.483963, 46.138874>,  <33.631748, 36.479023, 46.202633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863071, 36.483963, 46.138874>,  <34.248611, 36.492195, 46.032612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863071, 36.483963, 46.138874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230312, 0.437019, 0.869466,
		-0.133986, 0.899217, -0.416481,
		-0.963848, -0.020576, 0.265655,
		33.573917, 36.477791, 46.218571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943123, 36.823483, 46.088165>,  <34.248611, 36.492195, 46.032612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943123, 36.823483, 46.088165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229305, 36.562576, 46.188305>,  <35.401016, 36.406033, 46.248390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229305, 36.562576, 46.188305>,  <34.943123, 36.823483, 46.088165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229305, 36.562576, 46.188305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152672, -0.203710, -0.967054,
		0.681771, 0.730107, -0.046164,
		0.715457, -0.652262, 0.250350,
		35.443943, 36.366898, 46.263409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519749, 36.939854, 45.572865>,  <34.943123, 36.823483, 46.088165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519749, 36.939854, 45.572865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560589, 36.564495, 45.704914>,  <35.585094, 36.339279, 45.784145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560589, 36.564495, 45.704914>,  <35.519749, 36.939854, 45.572865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560589, 36.564495, 45.704914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087851, -0.322058, -0.942635,
		0.990887, 0.125248, 0.049557,
		0.102103, -0.938399, 0.330127,
		35.591221, 36.282974, 45.803951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069546, 36.707279, 45.168182>,  <35.519749, 36.939854, 45.572865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069546, 36.707279, 45.168182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894733, 36.377274, 45.311489>,  <35.789845, 36.179272, 45.397472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894733, 36.377274, 45.311489>,  <36.069546, 36.707279, 45.168182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894733, 36.377274, 45.311489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058637, -0.371344, -0.926642,
		0.897532, -0.425980, 0.113913,
		-0.437032, -0.825012, 0.358271,
		35.763622, 36.129768, 45.418972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386967, 36.075554, 44.818790>,  <36.069546, 36.707279, 45.168182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386967, 36.075554, 44.818790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029488, 35.966141, 44.961052>,  <35.814999, 35.900494, 45.046410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029488, 35.966141, 44.961052>,  <36.386967, 36.075554, 44.818790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029488, 35.966141, 44.961052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300369, -0.224093, -0.927125,
		0.333294, -0.935395, 0.118112,
		-0.893697, -0.273529, 0.355652,
		35.761379, 35.884083, 45.067749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354565, 35.364265, 44.632214>,  <36.386967, 36.075554, 44.818790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354565, 35.364265, 44.632214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983616, 35.503952, 44.685917>,  <35.761047, 35.587765, 44.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983616, 35.503952, 44.685917>,  <36.354565, 35.364265, 44.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983616, 35.503952, 44.685917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273154, -0.386772, -0.880792,
		-0.255661, -0.853497, 0.454072,
		-0.927375, 0.349216, 0.134253,
		35.705402, 35.608715, 44.726192>
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
