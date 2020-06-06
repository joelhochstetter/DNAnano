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
	<24.325445, 35.551540, 34.938038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340219, 35.179855, 35.085117>,  <24.349085, 34.956844, 35.173367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340219, 35.179855, 35.085117>,  <24.325445, 35.551540, 34.938038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340219, 35.179855, 35.085117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051038, 0.369226, 0.927937,
		-0.998013, -0.015508, 0.061063,
		0.036937, -0.929210, 0.367701,
		24.351301, 34.901093, 35.195427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895411, 35.530666, 35.590031>,  <24.325445, 35.551540, 34.938038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895411, 35.530666, 35.590031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184137, 35.254169, 35.603733>,  <24.357372, 35.088272, 35.611954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.184137, 35.254169, 35.603733>,  <23.895411, 35.530666, 35.590031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184137, 35.254169, 35.603733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261242, 0.317964, 0.911401,
		-0.640887, -0.648914, 0.410092,
		0.721815, -0.691238, 0.034256,
		24.400682, 35.046799, 35.614010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997143, 35.178680, 36.202797>,  <23.895411, 35.530666, 35.590031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997143, 35.178680, 36.202797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364538, 35.117393, 36.056973>,  <24.584974, 35.080620, 35.969479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364538, 35.117393, 36.056973>,  <23.997143, 35.178680, 36.202797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364538, 35.117393, 36.056973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393620, 0.265637, 0.880057,
		-0.038003, -0.951819, 0.304296,
		0.918488, -0.153222, -0.364561,
		24.640085, 35.071426, 35.947605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491987, 34.858444, 36.623703>,  <23.997143, 35.178680, 36.202797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491987, 34.858444, 36.623703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676214, 35.107433, 36.370590>,  <24.786751, 35.256824, 36.218723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676214, 35.107433, 36.370590>,  <24.491987, 34.858444, 36.623703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676214, 35.107433, 36.370590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412887, 0.480830, 0.773516,
		0.785749, -0.617523, -0.035555,
		0.460568, 0.622470, -0.632778,
		24.814384, 35.294174, 36.180756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376228, 34.955940, 36.669270>,  <24.491987, 34.858444, 36.623703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376228, 34.955940, 36.669270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112181, 35.249535, 36.605373>,  <24.953753, 35.425690, 36.567036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112181, 35.249535, 36.605373>,  <25.376228, 34.955940, 36.669270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112181, 35.249535, 36.605373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344900, 0.485075, 0.803584,
		0.667300, 0.475367, -0.573356,
		-0.660118, 0.733981, -0.159736,
		24.914145, 35.469730, 36.557453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950882, 35.205353, 36.378803>,  <25.376228, 34.955940, 36.669270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950882, 35.205353, 36.378803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197634, 35.347694, 36.659611>,  <26.345686, 35.433098, 36.828094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197634, 35.347694, 36.659611>,  <25.950882, 35.205353, 36.378803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197634, 35.347694, 36.659611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391278, 0.912577, -0.118761,
		-0.682906, -0.201421, 0.702189,
		0.616881, 0.355854, 0.702016,
		26.382698, 35.454449, 36.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505178, 35.773281, 36.621181>,  <25.950882, 35.205353, 36.378803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505178, 35.773281, 36.621181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863714, 35.890614, 36.754166>,  <26.078836, 35.961014, 36.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863714, 35.890614, 36.754166>,  <25.505178, 35.773281, 36.621181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863714, 35.890614, 36.754166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334678, 0.939467, 0.073433,
		-0.290796, -0.177089, 0.940254,
		0.896342, 0.293328, 0.332461,
		26.132616, 35.978611, 36.853905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288931, 36.282261, 37.070606>,  <25.505178, 35.773281, 36.621181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288931, 36.282261, 37.070606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676329, 36.373417, 37.030445>,  <25.908768, 36.428112, 37.006348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676329, 36.373417, 37.030445>,  <25.288931, 36.282261, 37.070606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676329, 36.373417, 37.030445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224772, 0.973527, 0.041505,
		0.107200, -0.017631, 0.994081,
		0.968497, 0.227891, -0.100399,
		25.966877, 36.441784, 37.000324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515665, 36.641010, 37.684772>,  <25.288931, 36.282261, 37.070606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515665, 36.641010, 37.684772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797750, 36.742756, 37.420055>,  <25.967001, 36.803802, 37.261223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797750, 36.742756, 37.420055>,  <25.515665, 36.641010, 37.684772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797750, 36.742756, 37.420055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200045, 0.966888, 0.158460,
		0.680189, 0.020640, 0.732746,
		0.705213, 0.254365, -0.661795,
		26.009314, 36.819065, 37.221516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091923, 36.998402, 38.061924>,  <25.515665, 36.641010, 37.684772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091923, 36.998402, 38.061924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115934, 37.108189, 37.678036>,  <26.130342, 37.174061, 37.447704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115934, 37.108189, 37.678036>,  <26.091923, 36.998402, 38.061924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115934, 37.108189, 37.678036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082265, 0.959543, 0.269276,
		0.994801, 0.062786, 0.080182,
		0.060031, 0.274472, -0.959719,
		26.133944, 37.190529, 37.390121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638168, 37.377438, 38.081123>,  <26.091923, 36.998402, 38.061924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638168, 37.377438, 38.081123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458864, 37.503082, 37.746365>,  <26.351282, 37.578468, 37.545509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458864, 37.503082, 37.746365>,  <26.638168, 37.377438, 38.081123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458864, 37.503082, 37.746365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025536, 0.931345, 0.363242,
		0.893538, 0.184199, -0.409464,
		-0.448261, 0.314114, -0.836896,
		26.324387, 37.597317, 37.495296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019526, 37.951580, 37.887962>,  <26.638168, 37.377438, 38.081123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019526, 37.951580, 37.887962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648275, 37.985134, 37.742886>,  <26.425526, 38.005268, 37.655842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648275, 37.985134, 37.742886>,  <27.019526, 37.951580, 37.887962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648275, 37.985134, 37.742886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002072, 0.975430, 0.220301,
		0.372258, 0.203716, -0.905496,
		-0.928127, 0.083885, -0.362690,
		26.369837, 38.010300, 37.634079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022564, 38.634178, 37.705639>,  <27.019526, 37.951580, 37.887962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022564, 38.634178, 37.705639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638641, 38.524960, 37.679672>,  <26.408287, 38.459431, 37.664093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638641, 38.524960, 37.679672>,  <27.022564, 38.634178, 37.705639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638641, 38.524960, 37.679672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278229, 0.895361, 0.347732,
		-0.036824, 0.351818, -0.935344,
		-0.959809, -0.273045, -0.064915,
		26.350698, 38.443047, 37.660198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703545, 39.086899, 37.294117>,  <27.022564, 38.634178, 37.705639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703545, 39.086899, 37.294117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428690, 38.957592, 37.554375>,  <26.263777, 38.880009, 37.710529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428690, 38.957592, 37.554375>,  <26.703545, 39.086899, 37.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428690, 38.957592, 37.554375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157475, 0.940537, 0.300986,
		-0.709255, 0.104358, -0.697185,
		-0.687139, -0.323265, 0.650646,
		26.222548, 38.860611, 37.749569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188343, 39.508526, 37.254158>,  <26.703545, 39.086899, 37.294117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188343, 39.508526, 37.254158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104174, 39.336201, 37.605183>,  <26.053671, 39.232807, 37.815800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104174, 39.336201, 37.605183>,  <26.188343, 39.508526, 37.254158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104174, 39.336201, 37.605183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334066, 0.875316, 0.349604,
		-0.918761, -0.219599, -0.328108,
		-0.210426, -0.430812, 0.877566,
		26.041046, 39.206959, 37.868454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491266, 39.778881, 37.477154>,  <26.188343, 39.508526, 37.254158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491266, 39.778881, 37.477154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667727, 39.630478, 37.804016>,  <25.773603, 39.541435, 38.000134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667727, 39.630478, 37.804016>,  <25.491266, 39.778881, 37.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667727, 39.630478, 37.804016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496488, 0.657613, 0.566608,
		-0.747587, -0.655666, 0.105906,
		0.441151, -0.371008, 0.817153,
		25.800072, 39.519176, 38.049164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917007, 39.842918, 37.939991>,  <25.491266, 39.778881, 37.477154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917007, 39.842918, 37.939991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251091, 39.796547, 38.155022>,  <25.451542, 39.768723, 38.284039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251091, 39.796547, 38.155022>,  <24.917007, 39.842918, 37.939991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251091, 39.796547, 38.155022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294303, 0.731536, 0.615012,
		-0.464554, -0.671874, 0.576867,
		0.835209, -0.115933, 0.537573,
		25.501654, 39.761768, 38.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729536, 39.744045, 38.628078>,  <24.917007, 39.842918, 37.939991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729536, 39.744045, 38.628078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104200, 39.884109, 38.631054>,  <25.328999, 39.968147, 38.632839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104200, 39.884109, 38.631054>,  <24.729536, 39.744045, 38.628078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104200, 39.884109, 38.631054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307882, 0.813074, 0.494084,
		0.166959, -0.465080, 0.869382,
		0.936661, 0.350159, 0.007439,
		25.385199, 39.989159, 38.633286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840792, 39.995548, 39.356808>,  <24.729536, 39.744045, 38.628078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840792, 39.995548, 39.356808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113085, 40.180691, 39.129700>,  <25.276461, 40.291775, 38.993435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113085, 40.180691, 39.129700>,  <24.840792, 39.995548, 39.356808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113085, 40.180691, 39.129700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232774, 0.871592, 0.431443,
		0.694562, -0.161535, 0.701063,
		0.680735, 0.462853, -0.567774,
		25.317305, 40.319546, 38.959366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218590, 40.373528, 39.848465>,  <24.840792, 39.995548, 39.356808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218590, 40.373528, 39.848465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290321, 40.553650, 39.498592>,  <25.333361, 40.661724, 39.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290321, 40.553650, 39.498592>,  <25.218590, 40.373528, 39.848465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290321, 40.553650, 39.498592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101904, 0.892813, 0.438749,
		0.978497, 0.010452, 0.205996,
		0.179330, 0.450306, -0.874680,
		25.344120, 40.688744, 39.236187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793587, 40.788551, 39.899757>,  <25.218590, 40.373528, 39.848465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793587, 40.788551, 39.899757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568506, 40.940056, 39.605846>,  <25.433458, 41.030960, 39.429501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568506, 40.940056, 39.605846>,  <25.793587, 40.788551, 39.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568506, 40.940056, 39.605846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027894, 0.897050, 0.441047,
		0.826188, 0.227683, -0.515338,
		-0.562703, 0.378762, -0.734782,
		25.399694, 41.053684, 39.385410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086563, 41.380489, 39.600948>,  <25.793587, 40.788551, 39.899757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086563, 41.380489, 39.600948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694925, 41.432514, 39.538387>,  <25.459944, 41.463730, 39.500851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694925, 41.432514, 39.538387>,  <26.086563, 41.380489, 39.600948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694925, 41.432514, 39.538387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100579, 0.977855, 0.183530,
		0.176811, 0.163961, -0.970492,
		-0.979092, 0.130061, -0.156404,
		25.401197, 41.471531, 39.491467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979589, 41.984577, 39.134216>,  <26.086563, 41.380489, 39.600948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979589, 41.984577, 39.134216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638493, 41.953777, 39.340866>,  <25.433834, 41.935295, 39.464855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638493, 41.953777, 39.340866>,  <25.979589, 41.984577, 39.134216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638493, 41.953777, 39.340866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076820, 0.959830, 0.269861,
		-0.516656, 0.269808, -0.812570,
		-0.852740, -0.077003, 0.516628,
		25.382671, 41.930676, 39.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561749, 42.601959, 38.961803>,  <25.979589, 41.984577, 39.134216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561749, 42.601959, 38.961803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397942, 42.455639, 39.296104>,  <25.299658, 42.367847, 39.496685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397942, 42.455639, 39.296104>,  <25.561749, 42.601959, 38.961803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397942, 42.455639, 39.296104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041832, 0.907602, 0.417741,
		-0.911343, 0.206034, -0.356377,
		-0.409517, -0.365798, 0.835756,
		25.275085, 42.345901, 39.546833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897066, 42.927288, 39.168381>,  <25.561749, 42.601959, 38.961803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897066, 42.927288, 39.168381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097044, 42.809292, 39.494091>,  <25.217030, 42.738495, 39.689518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097044, 42.809292, 39.494091>,  <24.897066, 42.927288, 39.168381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097044, 42.809292, 39.494091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237165, 0.857633, 0.456309,
		-0.832953, -0.421245, 0.358806,
		0.499942, -0.294988, 0.814272,
		25.247026, 42.720795, 39.738373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409859, 42.937622, 39.765968>,  <24.897066, 42.927288, 39.168381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409859, 42.937622, 39.765968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794235, 43.037861, 39.812946>,  <25.024860, 43.098003, 39.841133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.794235, 43.037861, 39.812946>,  <24.409859, 42.937622, 39.765968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.794235, 43.037861, 39.812946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267801, 0.949030, 0.166208,
		-0.069811, -0.191169, 0.979072,
		0.960942, 0.250593, 0.117448,
		25.082518, 43.113037, 39.848179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521265, 43.227169, 40.409393>,  <24.409859, 42.937622, 39.765968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521265, 43.227169, 40.409393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784693, 43.365734, 40.142178>,  <24.942749, 43.448875, 39.981846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784693, 43.365734, 40.142178>,  <24.521265, 43.227169, 40.409393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784693, 43.365734, 40.142178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327079, 0.931272, 0.160472,
		0.677719, 0.112820, 0.726615,
		0.658572, 0.346415, -0.668042,
		24.982264, 43.469658, 39.941765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790804, 43.922958, 40.737984>,  <24.521265, 43.227169, 40.409393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790804, 43.922958, 40.737984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871994, 43.908512, 40.346577>,  <24.920708, 43.899845, 40.111732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871994, 43.908512, 40.346577>,  <24.790804, 43.922958, 40.737984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871994, 43.908512, 40.346577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140080, 0.987970, -0.065524,
		0.969113, 0.150370, 0.195474,
		0.202975, -0.036118, -0.978518,
		24.932886, 43.897678, 40.053020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089855, 44.498226, 40.507545>,  <24.790804, 43.922958, 40.737984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089855, 44.498226, 40.507545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975153, 44.381767, 40.142467>,  <24.906332, 44.311893, 39.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975153, 44.381767, 40.142467>,  <25.089855, 44.498226, 40.507545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975153, 44.381767, 40.142467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097633, 0.956623, -0.274481,
		0.953013, 0.010396, -0.302752,
		-0.286766, -0.291143, -0.912689,
		24.889126, 44.294426, 39.868660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474085, 44.823132, 39.825142>,  <25.089855, 44.498226, 40.507545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474085, 44.823132, 39.825142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097961, 44.724838, 39.730968>,  <24.872288, 44.665863, 39.674465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097961, 44.724838, 39.730968>,  <25.474085, 44.823132, 39.825142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097961, 44.724838, 39.730968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128581, 0.897069, -0.422770,
		0.315093, -0.367262, -0.875120,
		-0.940310, -0.245736, -0.235437,
		24.815868, 44.651119, 39.660336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423580, 44.928471, 39.050640>,  <25.474085, 44.823132, 39.825142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423580, 44.928471, 39.050640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069193, 44.970966, 39.231205>,  <24.856560, 44.996464, 39.339542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069193, 44.970966, 39.231205>,  <25.423580, 44.928471, 39.050640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069193, 44.970966, 39.231205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122937, 0.884769, -0.449523,
		-0.447153, -0.453758, -0.770816,
		-0.885969, 0.106244, 0.451411,
		24.803402, 45.002838, 39.366627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121414, 44.577671, 38.462215>,  <25.423580, 44.928471, 39.050640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121414, 44.577671, 38.462215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312380, 44.772232, 38.169506>,  <25.426958, 44.888969, 37.993881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312380, 44.772232, 38.169506>,  <25.121414, 44.577671, 38.462215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312380, 44.772232, 38.169506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773769, 0.627351, -0.087819,
		0.416362, 0.608149, 0.675868,
		0.477413, 0.486401, -0.731772,
		25.455605, 44.918152, 37.949974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048107, 43.903683, 38.004517>,  <25.121414, 44.577671, 38.462215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048107, 43.903683, 38.004517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079632, 44.237301, 37.786098>,  <25.098547, 44.437469, 37.655048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079632, 44.237301, 37.786098>,  <25.048107, 43.903683, 38.004517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079632, 44.237301, 37.786098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547047, -0.494090, -0.675732,
		-0.833384, -0.245457, -0.495200,
		0.078810, 0.834042, -0.546043,
		25.103275, 44.487514, 37.622284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822466, 43.815739, 37.338284>,  <25.048107, 43.903683, 38.004517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822466, 43.815739, 37.338284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107172, 44.096092, 37.319710>,  <25.277996, 44.264305, 37.308567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107172, 44.096092, 37.319710>,  <24.822466, 43.815739, 37.338284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107172, 44.096092, 37.319710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628799, -0.665236, -0.402582,
		-0.313048, 0.257350, -0.914206,
		0.711767, 0.700879, -0.046430,
		25.320702, 44.306355, 37.305782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078230, 43.801056, 36.598816>,  <24.822466, 43.815739, 37.338284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078230, 43.801056, 36.598816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324497, 43.888523, 36.901638>,  <25.472258, 43.941006, 37.083332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324497, 43.888523, 36.901638>,  <25.078230, 43.801056, 36.598816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324497, 43.888523, 36.901638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668963, -0.652782, -0.355477,
		0.416460, 0.725299, -0.548181,
		0.615670, 0.218670, 0.757056,
		25.509197, 43.954124, 37.128754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822088, 43.903957, 36.345833>,  <25.078230, 43.801056, 36.598816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822088, 43.903957, 36.345833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835228, 43.815434, 36.735691>,  <25.843111, 43.762318, 36.969608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835228, 43.815434, 36.735691>,  <25.822088, 43.903957, 36.345833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835228, 43.815434, 36.735691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804622, -0.572617, -0.157140,
		0.592878, 0.789387, 0.159260,
		0.032850, -0.221309, 0.974650,
		25.845083, 43.749043, 37.028088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549355, 44.055031, 36.518425>,  <25.822088, 43.903957, 36.345833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549355, 44.055031, 36.518425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411203, 43.783611, 36.777744>,  <26.328314, 43.620762, 36.933334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411203, 43.783611, 36.777744>,  <26.549355, 44.055031, 36.518425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411203, 43.783611, 36.777744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772364, -0.597921, -0.214348,
		0.533076, 0.426691, 0.730592,
		-0.345376, -0.678547, 0.648298,
		26.307590, 43.580048, 36.972233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078697, 43.856525, 37.003799>,  <26.549355, 44.055031, 36.518425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078697, 43.856525, 37.003799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825743, 43.547573, 37.027531>,  <26.673969, 43.362202, 37.041771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825743, 43.547573, 37.027531>,  <27.078697, 43.856525, 37.003799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825743, 43.547573, 37.027531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772802, -0.623736, 0.117177,
		-0.053501, 0.119949, 0.991337,
		-0.632388, -0.772377, 0.059327,
		26.636026, 43.315861, 37.045330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450270, 43.370514, 37.485497>,  <27.078697, 43.856525, 37.003799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450270, 43.370514, 37.485497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176029, 43.145794, 37.300316>,  <27.011484, 43.010960, 37.189209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176029, 43.145794, 37.300316>,  <27.450270, 43.370514, 37.485497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176029, 43.145794, 37.300316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655777, -0.752748, -0.057688,
		-0.316078, -0.343145, 0.884504,
		-0.685603, -0.561803, -0.462953,
		26.970348, 42.977253, 37.161430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503740, 42.673553, 37.754192>,  <27.450270, 43.370514, 37.485497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503740, 42.673553, 37.754192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276386, 42.624065, 37.428829>,  <27.139975, 42.594372, 37.233612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276386, 42.624065, 37.428829>,  <27.503740, 42.673553, 37.754192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276386, 42.624065, 37.428829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466123, -0.863090, -0.194433,
		-0.677988, -0.489661, 0.548238,
		-0.568385, -0.123723, -0.813408,
		27.105871, 42.586948, 37.184807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257975, 42.036629, 37.808678>,  <27.503740, 42.673553, 37.754192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257975, 42.036629, 37.808678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236807, 42.122429, 37.418560>,  <27.224106, 42.173908, 37.184490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236807, 42.122429, 37.418560>,  <27.257975, 42.036629, 37.808678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236807, 42.122429, 37.418560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566927, -0.797552, -0.206169,
		-0.822067, -0.563828, -0.079399,
		-0.052919, 0.214498, -0.975290,
		27.220932, 42.186779, 37.125973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845451, 41.527592, 37.541992>,  <27.257975, 42.036629, 37.808678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845451, 41.527592, 37.541992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069216, 41.671867, 37.243473>,  <27.203474, 41.758434, 37.064362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069216, 41.671867, 37.243473>,  <26.845451, 41.527592, 37.541992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069216, 41.671867, 37.243473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252078, -0.931743, -0.261363,
		-0.789631, -0.041917, -0.612148,
		0.559409, 0.360690, -0.746300,
		27.237038, 41.780075, 37.019585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765104, 40.993553, 37.076530>,  <26.845451, 41.527592, 37.541992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765104, 40.993553, 37.076530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082237, 41.195660, 36.940228>,  <27.272518, 41.316925, 36.858444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082237, 41.195660, 36.940228>,  <26.765104, 40.993553, 37.076530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082237, 41.195660, 36.940228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373038, -0.844503, -0.384263,
		-0.481930, 0.177540, -0.858034,
		0.792835, 0.505267, -0.340761,
		27.320087, 41.347240, 36.837997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971088, 40.580982, 36.502777>,  <26.765104, 40.993553, 37.076530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971088, 40.580982, 36.502777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285015, 40.815834, 36.582119>,  <27.473372, 40.956745, 36.629723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285015, 40.815834, 36.582119>,  <26.971088, 40.580982, 36.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285015, 40.815834, 36.582119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619351, -0.731913, -0.284091,
		-0.021618, 0.345811, -0.938055,
		0.784817, 0.587127, 0.198356,
		27.520460, 40.991974, 36.641624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428265, 40.491669, 35.880032>,  <26.971088, 40.580982, 36.502777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428265, 40.491669, 35.880032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648109, 40.618038, 36.189384>,  <27.780018, 40.693859, 36.374996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648109, 40.618038, 36.189384>,  <27.428265, 40.491669, 35.880032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648109, 40.618038, 36.189384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562480, -0.824409, -0.062971,
		0.617689, 0.469622, -0.630805,
		0.549614, 0.315919, 0.773382,
		27.812994, 40.712814, 36.421398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102509, 40.411610, 35.689526>,  <27.428265, 40.491669, 35.880032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102509, 40.411610, 35.689526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141247, 40.430946, 36.087177>,  <28.164490, 40.442547, 36.325768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141247, 40.430946, 36.087177>,  <28.102509, 40.411610, 35.689526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141247, 40.430946, 36.087177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624366, -0.780798, -0.022858,
		0.775106, 0.622911, -0.105795,
		0.096843, 0.048338, 0.994125,
		28.170300, 40.445446, 36.385414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847492, 40.160385, 35.810032>,  <28.102509, 40.411610, 35.689526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847492, 40.160385, 35.810032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678072, 40.138123, 36.171696>,  <28.576420, 40.124767, 36.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678072, 40.138123, 36.171696>,  <28.847492, 40.160385, 35.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678072, 40.138123, 36.171696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367215, -0.922973, 0.115210,
		0.828105, 0.380819, 0.411362,
		-0.423550, -0.055652, 0.904162,
		28.551006, 40.121426, 36.442944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339962, 39.952164, 36.208988>,  <28.847492, 40.160385, 35.810032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339962, 39.952164, 36.208988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003946, 39.846985, 36.398808>,  <28.802338, 39.783878, 36.512699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003946, 39.846985, 36.398808>,  <29.339962, 39.952164, 36.208988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003946, 39.846985, 36.398808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375737, -0.912940, 0.159256,
		0.391356, 0.312086, 0.865704,
		-0.840037, -0.262951, 0.474547,
		28.751936, 39.768101, 36.541172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553114, 39.525799, 36.819004>,  <29.339962, 39.952164, 36.208988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553114, 39.525799, 36.819004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177290, 39.420811, 36.731060>,  <28.951796, 39.357819, 36.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177290, 39.420811, 36.731060>,  <29.553114, 39.525799, 36.819004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177290, 39.420811, 36.731060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191266, -0.934959, 0.298781,
		-0.283985, 0.238670, 0.928649,
		-0.939558, -0.262468, -0.219865,
		28.895422, 39.342072, 36.665100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350805, 39.202103, 37.466354>,  <29.553114, 39.525799, 36.819004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350805, 39.202103, 37.466354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113411, 39.095310, 37.162647>,  <28.970974, 39.031235, 36.980423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113411, 39.095310, 37.162647>,  <29.350805, 39.202103, 37.466354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113411, 39.095310, 37.162647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110403, -0.961465, 0.251785,
		-0.797236, 0.065606, 0.600093,
		-0.593487, -0.266984, -0.759271,
		28.935366, 39.015217, 36.934864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916180, 38.599987, 37.738632>,  <29.350805, 39.202103, 37.466354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916180, 38.599987, 37.738632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844679, 38.584141, 37.345394>,  <28.801779, 38.574631, 37.109451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844679, 38.584141, 37.345394>,  <28.916180, 38.599987, 37.738632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844679, 38.584141, 37.345394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045718, -0.997775, 0.048522,
		-0.982831, 0.053619, 0.176545,
		-0.178754, -0.039618, -0.983096,
		28.791052, 38.572254, 37.050465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327328, 38.219772, 37.658260>,  <28.916180, 38.599987, 37.738632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327328, 38.219772, 37.658260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511856, 38.195080, 37.304226>,  <28.622572, 38.180264, 37.091805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511856, 38.195080, 37.304226>,  <28.327328, 38.219772, 37.658260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511856, 38.195080, 37.304226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276070, -0.958042, -0.077072,
		-0.843190, 0.279900, -0.459006,
		0.461319, -0.061732, -0.885084,
		28.650251, 38.176559, 37.038700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810392, 38.016037, 37.165398>,  <28.327328, 38.219772, 37.658260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810392, 38.016037, 37.165398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164776, 37.901268, 37.019657>,  <28.377405, 37.832405, 36.932213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164776, 37.901268, 37.019657>,  <27.810392, 38.016037, 37.165398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164776, 37.901268, 37.019657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295300, -0.954804, 0.033858,
		-0.357599, 0.077596, -0.930646,
		0.885957, -0.286927, -0.364352,
		28.430563, 37.815189, 36.910351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760229, 37.410027, 36.849133>,  <27.810392, 38.016037, 37.165398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760229, 37.410027, 36.849133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159977, 37.405159, 36.862492>,  <28.399826, 37.402237, 36.870506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159977, 37.405159, 36.862492>,  <27.760229, 37.410027, 36.849133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159977, 37.405159, 36.862492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010806, -0.999111, -0.040757,
		0.033860, 0.040371, -0.998611,
		0.999368, -0.012171, 0.033393,
		28.459787, 37.401508, 36.872509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091419, 36.970169, 36.364830>,  <27.760229, 37.410027, 36.849133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091419, 36.970169, 36.364830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371693, 36.974117, 36.650192>,  <28.539856, 36.976486, 36.821411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371693, 36.974117, 36.650192>,  <28.091419, 36.970169, 36.364830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371693, 36.974117, 36.650192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003811, -0.999942, 0.010097,
		0.713463, -0.004356, -0.700679,
		0.700683, 0.009874, 0.713405,
		28.581898, 36.977081, 36.864212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596889, 36.365284, 36.205990>,  <28.091419, 36.970169, 36.364830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596889, 36.365284, 36.205990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634300, 36.467323, 36.590942>,  <28.656746, 36.528545, 36.821915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634300, 36.467323, 36.590942>,  <28.596889, 36.365284, 36.205990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634300, 36.467323, 36.590942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143409, -0.959989, 0.240529,
		0.985234, 0.115519, -0.126366,
		0.093524, 0.255100, 0.962381,
		28.662357, 36.543854, 36.879658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090132, 35.952477, 36.412834>,  <28.596889, 36.365284, 36.205990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090132, 35.952477, 36.412834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937166, 36.071053, 36.762894>,  <28.845387, 36.142197, 36.972931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937166, 36.071053, 36.762894>,  <29.090132, 35.952477, 36.412834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937166, 36.071053, 36.762894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074745, -0.934110, 0.349073,
		0.920964, 0.198903, 0.335057,
		-0.382412, 0.296439, 0.875149,
		28.822443, 36.159985, 37.025436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477978, 35.595615, 37.075333>,  <29.090132, 35.952477, 36.412834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477978, 35.595615, 37.075333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118448, 35.703850, 37.213257>,  <28.902731, 35.768791, 37.296013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118448, 35.703850, 37.213257>,  <29.477978, 35.595615, 37.075333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118448, 35.703850, 37.213257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025200, -0.817289, 0.575676,
		0.437582, 0.508743, 0.741419,
		-0.898825, 0.270589, 0.344810,
		28.848801, 35.785027, 37.316700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141682, 35.817875, 37.330547>,  <29.477978, 35.595615, 37.075333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141682, 35.817875, 37.330547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984249, 35.496784, 37.151337>,  <29.889790, 35.304131, 37.043812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984249, 35.496784, 37.151337>,  <30.141682, 35.817875, 37.330547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984249, 35.496784, 37.151337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916562, -0.380172, -0.124026,
		-0.070766, -0.459455, 0.885377,
		-0.393580, -0.802727, -0.448023,
		29.866175, 35.255966, 37.016930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362551, 35.214249, 37.571419>,  <30.141682, 35.817875, 37.330547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362551, 35.214249, 37.571419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267677, 35.169125, 37.185463>,  <30.210754, 35.142048, 36.953888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267677, 35.169125, 37.185463>,  <30.362551, 35.214249, 37.571419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267677, 35.169125, 37.185463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949352, -0.237633, -0.205578,
		-0.206098, -0.964782, 0.163460,
		-0.237182, -0.112812, -0.964893,
		30.196524, 35.135281, 36.895996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511034, 34.573338, 37.220989>,  <30.362551, 35.214249, 37.571419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511034, 34.573338, 37.220989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541651, 34.838299, 36.922901>,  <30.560020, 34.997276, 36.744049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541651, 34.838299, 36.922901>,  <30.511034, 34.573338, 37.220989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541651, 34.838299, 36.922901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905392, -0.359231, -0.226315,
		-0.417620, -0.657396, -0.627236,
		0.076544, 0.662408, -0.745223,
		30.564613, 35.037022, 36.699333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596352, 34.235672, 36.521069>,  <30.511034, 34.573338, 37.220989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596352, 34.235672, 36.521069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741898, 34.608158, 36.529430>,  <30.829226, 34.831650, 36.534447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741898, 34.608158, 36.529430>,  <30.596352, 34.235672, 36.521069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741898, 34.608158, 36.529430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915918, -0.353626, -0.189852,
		-0.169400, 0.088229, -0.981590,
		0.363866, 0.931217, 0.020907,
		30.851057, 34.887524, 36.535702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035940, 34.449879, 35.860424>,  <30.596352, 34.235672, 36.521069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035940, 34.449879, 35.860424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159601, 34.627510, 36.196812>,  <31.233797, 34.734089, 36.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159601, 34.627510, 36.196812>,  <31.035940, 34.449879, 35.860424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159601, 34.627510, 36.196812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907237, -0.402915, -0.120752,
		0.285215, 0.800286, -0.527442,
		0.309150, 0.444075, 0.840966,
		31.252346, 34.760731, 36.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737543, 34.629169, 35.700954>,  <31.035940, 34.449879, 35.860424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737543, 34.629169, 35.700954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706902, 34.595219, 36.098331>,  <31.688517, 34.574848, 36.336758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706902, 34.595219, 36.098331>,  <31.737543, 34.629169, 35.700954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706902, 34.595219, 36.098331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930527, -0.363960, 0.040659,
		0.358123, 0.927540, 0.106857,
		-0.076605, -0.084873, 0.993443,
		31.683920, 34.569756, 36.396366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388454, 34.781311, 36.027218>,  <31.737543, 34.629169, 35.700954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388454, 34.781311, 36.027218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183800, 34.560501, 36.290577>,  <32.061005, 34.428013, 36.448593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183800, 34.560501, 36.290577>,  <32.388454, 34.781311, 36.027218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183800, 34.560501, 36.290577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789434, -0.604503, 0.106627,
		0.339144, 0.574319, 0.745076,
		-0.511639, -0.552027, 0.658401,
		32.030308, 34.394894, 36.488098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744957, 35.219154, 36.515869>,  <32.388454, 34.781311, 36.027218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744957, 35.219154, 36.515869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134647, 35.139748, 36.473015>,  <33.368462, 35.092106, 36.447300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134647, 35.139748, 36.473015>,  <32.744957, 35.219154, 36.515869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134647, 35.139748, 36.473015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101841, -0.036740, 0.994122,
		-0.201283, -0.979409, -0.015576,
		0.974225, -0.198513, -0.107140,
		33.426914, 35.080193, 36.440872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987068, 34.594463, 36.931450>,  <32.744957, 35.219154, 36.515869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987068, 34.594463, 36.931450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320534, 34.807594, 36.873363>,  <33.520615, 34.935474, 36.838512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320534, 34.807594, 36.873363>,  <32.987068, 34.594463, 36.931450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320534, 34.807594, 36.873363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260969, -0.148343, 0.953881,
		0.486716, -0.833118, -0.262721,
		0.833668, 0.532831, -0.145217,
		33.570633, 34.967445, 36.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586662, 34.193058, 37.269855>,  <32.987068, 34.594463, 36.931450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586662, 34.193058, 37.269855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671261, 34.583237, 37.245277>,  <33.722019, 34.817345, 37.230530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671261, 34.583237, 37.245277>,  <33.586662, 34.193058, 37.269855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671261, 34.583237, 37.245277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315555, -0.008646, 0.948868,
		0.925038, -0.220068, -0.309635,
		0.211493, 0.975446, -0.061446,
		33.734707, 34.875870, 37.226845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107773, 34.254494, 37.705681>,  <33.586662, 34.193058, 37.269855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107773, 34.254494, 37.705681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004967, 34.638935, 37.665249>,  <33.943283, 34.869602, 37.640987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004967, 34.638935, 37.665249>,  <34.107773, 34.254494, 37.705681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004967, 34.638935, 37.665249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262714, 0.170144, 0.949754,
		0.930013, 0.217545, -0.296225,
		-0.257015, 0.961106, -0.101084,
		33.927860, 34.927265, 37.634922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680305, 34.670181, 37.931541>,  <34.107773, 34.254494, 37.705681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680305, 34.670181, 37.931541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361229, 34.909882, 37.958611>,  <34.169781, 35.053703, 37.974850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361229, 34.909882, 37.958611>,  <34.680305, 34.670181, 37.931541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361229, 34.909882, 37.958611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224465, 0.190883, 0.955604,
		0.559732, 0.777469, -0.286778,
		-0.797694, 0.599254, 0.067671,
		34.121922, 35.089657, 37.978912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848625, 35.331501, 38.196999>,  <34.680305, 34.670181, 37.931541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848625, 35.331501, 38.196999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454296, 35.328381, 38.264053>,  <34.217701, 35.326508, 38.304287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454296, 35.328381, 38.264053>,  <34.848625, 35.331501, 38.196999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454296, 35.328381, 38.264053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136665, 0.542423, 0.828915,
		-0.097392, 0.840070, -0.533665,
		-0.985818, -0.007797, 0.167635,
		34.158550, 35.326042, 38.314342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681896, 36.026154, 38.401814>,  <34.848625, 35.331501, 38.196999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681896, 36.026154, 38.401814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390434, 35.774868, 38.510921>,  <34.215557, 35.624096, 38.576385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390434, 35.774868, 38.510921>,  <34.681896, 36.026154, 38.401814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390434, 35.774868, 38.510921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057325, 0.452819, 0.889757,
		-0.682474, 0.632693, -0.365963,
		-0.728658, -0.628215, 0.272768,
		34.171837, 35.586403, 38.592751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170647, 36.370583, 38.768513>,  <34.681896, 36.026154, 38.401814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170647, 36.370583, 38.768513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092152, 36.001644, 38.901638>,  <34.045055, 35.780281, 38.981514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092152, 36.001644, 38.901638>,  <34.170647, 36.370583, 38.768513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092152, 36.001644, 38.901638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177167, 0.300471, 0.937192,
		-0.964418, 0.242878, 0.104445,
		-0.196240, -0.922349, 0.332810,
		34.033279, 35.724941, 39.001480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824615, 36.513359, 39.354496>,  <34.170647, 36.370583, 38.768513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824615, 36.513359, 39.354496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905640, 36.124752, 39.403698>,  <33.954254, 35.891590, 39.433220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905640, 36.124752, 39.403698>,  <33.824615, 36.513359, 39.354496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905640, 36.124752, 39.403698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082651, 0.142126, 0.986392,
		-0.975776, -0.189635, 0.109086,
		0.202559, -0.971514, 0.123010,
		33.966408, 35.833298, 39.440601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451080, 36.320580, 39.962139>,  <33.824615, 36.513359, 39.354496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451080, 36.320580, 39.962139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719421, 36.025475, 39.932049>,  <33.880424, 35.848412, 39.913994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719421, 36.025475, 39.932049>,  <33.451080, 36.320580, 39.962139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719421, 36.025475, 39.932049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099663, -0.010828, 0.994962,
		-0.734865, -0.674969, 0.066264,
		0.670851, -0.737767, -0.075227,
		33.920677, 35.804146, 39.909481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283924, 35.866337, 40.426937>,  <33.451080, 36.320580, 39.962139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283924, 35.866337, 40.426937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671394, 35.791451, 40.361675>,  <33.903877, 35.746521, 40.322517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671394, 35.791451, 40.361675>,  <33.283924, 35.866337, 40.426937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671394, 35.791451, 40.361675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123255, -0.207911, 0.970351,
		-0.215598, -0.960062, -0.178321,
		0.968672, -0.187227, -0.163157,
		33.961998, 35.735287, 40.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476006, 35.354286, 40.867229>,  <33.283924, 35.866337, 40.426937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476006, 35.354286, 40.867229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837784, 35.504135, 40.785606>,  <34.054852, 35.594044, 40.736633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837784, 35.504135, 40.785606>,  <33.476006, 35.354286, 40.867229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837784, 35.504135, 40.785606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321964, -0.285638, 0.902635,
		0.279864, -0.882080, -0.378959,
		0.904442, 0.374626, -0.204058,
		34.109116, 35.616524, 40.724388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960072, 34.868938, 41.097988>,  <33.476006, 35.354286, 40.867229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960072, 34.868938, 41.097988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170292, 35.207958, 41.068447>,  <34.296425, 35.411369, 41.050724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170292, 35.207958, 41.068447>,  <33.960072, 34.868938, 41.097988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170292, 35.207958, 41.068447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445144, -0.199969, 0.872845,
		0.725014, -0.491598, -0.482376,
		0.525549, 0.847552, -0.073851,
		34.327957, 35.462223, 41.046291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663799, 34.670750, 41.216343>,  <33.960072, 34.868938, 41.097988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663799, 34.670750, 41.216343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618904, 35.055611, 41.315681>,  <34.591969, 35.286526, 41.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618904, 35.055611, 41.315681>,  <34.663799, 34.670750, 41.216343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618904, 35.055611, 41.315681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475010, -0.167567, 0.863879,
		0.872793, 0.214923, -0.438223,
		-0.112236, 0.962148, 0.248342,
		34.585232, 35.344254, 41.390182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218884, 34.811020, 41.496929>,  <34.663799, 34.670750, 41.216343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218884, 34.811020, 41.496929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981323, 35.109764, 41.616577>,  <34.838787, 35.289013, 41.688366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981323, 35.109764, 41.616577>,  <35.218884, 34.811020, 41.496929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981323, 35.109764, 41.616577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435466, -0.014203, 0.900093,
		0.676496, 0.664824, -0.316799,
		-0.593904, 0.746865, 0.299117,
		34.803150, 35.333824, 41.706310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642204, 35.150417, 41.905293>,  <35.218884, 34.811020, 41.496929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642204, 35.150417, 41.905293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280502, 35.269947, 42.027298>,  <35.063480, 35.341663, 42.100502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280502, 35.269947, 42.027298>,  <35.642204, 35.150417, 41.905293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280502, 35.269947, 42.027298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309498, -0.033460, 0.950311,
		0.294179, 0.953722, -0.062228,
		-0.904251, 0.298821, 0.305018,
		35.009228, 35.359592, 42.118805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797676, 35.615959, 42.531208>,  <35.642204, 35.150417, 41.905293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797676, 35.615959, 42.531208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405739, 35.538757, 42.551819>,  <35.170578, 35.492435, 42.564186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405739, 35.538757, 42.551819>,  <35.797676, 35.615959, 42.531208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405739, 35.538757, 42.551819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068463, -0.082135, 0.994267,
		-0.187665, 0.977754, 0.093693,
		-0.979844, -0.193003, 0.051526,
		35.111786, 35.480858, 42.567276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608265, 36.203068, 43.039646>,  <35.797676, 35.615959, 42.531208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608265, 36.203068, 43.039646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354301, 35.894035, 43.040665>,  <35.201923, 35.708614, 43.041275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354301, 35.894035, 43.040665>,  <35.608265, 36.203068, 43.039646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354301, 35.894035, 43.040665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212492, 0.177798, 0.960851,
		-0.742790, 0.609512, -0.277054,
		-0.634910, -0.772582, 0.002550,
		35.163830, 35.662262, 43.041431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988632, 36.469524, 43.357410>,  <35.608265, 36.203068, 43.039646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988632, 36.469524, 43.357410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977978, 36.070240, 43.378830>,  <34.971584, 35.830669, 43.391682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977978, 36.070240, 43.378830>,  <34.988632, 36.469524, 43.357410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977978, 36.070240, 43.378830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222341, 0.058144, 0.973234,
		-0.974605, 0.014012, -0.223492,
		-0.026632, -0.998210, 0.053552,
		34.969990, 35.770779, 43.394897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437668, 36.381062, 43.809155>,  <34.988632, 36.469524, 43.357410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437668, 36.381062, 43.809155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631020, 36.031609, 43.831463>,  <34.747032, 35.821938, 43.844849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631020, 36.031609, 43.831463>,  <34.437668, 36.381062, 43.809155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631020, 36.031609, 43.831463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170507, -0.031465, 0.984854,
		-0.858646, -0.485567, -0.164170,
		0.483378, -0.873633, 0.055775,
		34.776031, 35.769520, 43.848194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042896, 35.957531, 44.325401>,  <34.437668, 36.381062, 43.809155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042896, 35.957531, 44.325401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414356, 35.811924, 44.296856>,  <34.637234, 35.724560, 44.279728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414356, 35.811924, 44.296856>,  <34.042896, 35.957531, 44.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414356, 35.811924, 44.296856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003310, -0.200508, 0.979686,
		-0.370932, -0.909554, -0.187408,
		0.928654, -0.364018, -0.071364,
		34.692951, 35.702721, 44.275448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028774, 35.271378, 44.657719>,  <34.042896, 35.957531, 44.325401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028774, 35.271378, 44.657719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411274, 35.388004, 44.648117>,  <34.640774, 35.457981, 44.642357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411274, 35.388004, 44.648117>,  <34.028774, 35.271378, 44.657719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411274, 35.388004, 44.648117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082388, -0.189663, 0.978387,
		0.280710, -0.937560, -0.205387,
		0.956250, 0.291564, -0.024004,
		34.698151, 35.475475, 44.640915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372272, 34.861038, 45.075287>,  <34.028774, 35.271378, 44.657719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372272, 34.861038, 45.075287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625694, 35.170441, 45.068485>,  <34.777748, 35.356083, 45.064404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625694, 35.170441, 45.068485>,  <34.372272, 34.861038, 45.075287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625694, 35.170441, 45.068485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242803, -0.177914, 0.953621,
		0.734611, -0.608299, -0.300529,
		0.633555, 0.773510, -0.017000,
		34.815762, 35.402493, 45.063385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882790, 34.611584, 45.484505>,  <34.372272, 34.861038, 45.075287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882790, 34.611584, 45.484505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981941, 34.997002, 45.444229>,  <35.041431, 35.228252, 45.420063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981941, 34.997002, 45.444229>,  <34.882790, 34.611584, 45.484505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981941, 34.997002, 45.444229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440266, -0.019455, 0.897657,
		0.862974, -0.266839, -0.429038,
		0.247877, 0.963545, -0.100691,
		35.056305, 35.286064, 45.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572472, 34.664421, 45.752262>,  <34.882790, 34.611584, 45.484505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572472, 34.664421, 45.752262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416901, 35.029400, 45.803131>,  <35.323559, 35.248386, 45.833652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416901, 35.029400, 45.803131>,  <35.572472, 34.664421, 45.752262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416901, 35.029400, 45.803131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362576, 0.024698, 0.931627,
		0.846920, 0.408447, -0.340437,
		-0.388928, 0.912448, 0.127176,
		35.300220, 35.303135, 45.841286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105972, 34.983509, 46.110126>,  <35.572472, 34.664421, 45.752262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105972, 34.983509, 46.110126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761002, 35.181595, 46.152042>,  <35.554020, 35.300446, 46.177193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761002, 35.181595, 46.152042>,  <36.105972, 34.983509, 46.110126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761002, 35.181595, 46.152042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252017, 0.240555, 0.937348,
		0.438977, 0.834806, -0.332263,
		-0.862431, 0.495210, 0.104787,
		35.502274, 35.330158, 46.183479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224117, 35.639362, 46.420528>,  <36.105972, 34.983509, 46.110126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224117, 35.639362, 46.420528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834534, 35.589142, 46.496052>,  <35.600784, 35.559010, 46.541367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834534, 35.589142, 46.496052>,  <36.224117, 35.639362, 46.420528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834534, 35.589142, 46.496052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132106, 0.362567, 0.922547,
		-0.184282, 0.923462, -0.336538,
		-0.973955, -0.125550, 0.188809,
		35.542347, 35.551476, 46.552696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884403, 36.295570, 46.687252>,  <36.224117, 35.639362, 46.420528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884403, 36.295570, 46.687252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649448, 36.005413, 46.830795>,  <35.508476, 35.831318, 46.916920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649448, 36.005413, 46.830795>,  <35.884403, 36.295570, 46.687252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649448, 36.005413, 46.830795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085422, 0.385367, 0.918801,
		-0.804786, 0.570345, -0.164395,
		-0.587386, -0.725395, 0.358858,
		35.473232, 35.787796, 46.938454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611847, 36.592129, 47.156338>,  <35.884403, 36.295570, 46.687252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611847, 36.592129, 47.156338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527798, 36.216618, 47.265549>,  <35.477367, 35.991310, 47.331074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527798, 36.216618, 47.265549>,  <35.611847, 36.592129, 47.156338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527798, 36.216618, 47.265549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249113, 0.218630, 0.943474,
		-0.945405, 0.266261, 0.187923,
		-0.210125, -0.938779, 0.273023,
		35.464760, 35.934982, 47.347454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199993, 36.619865, 47.827911>,  <35.611847, 36.592129, 47.156338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199993, 36.619865, 47.827911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332169, 36.242466, 47.837959>,  <35.411472, 36.016026, 47.843987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332169, 36.242466, 47.837959>,  <35.199993, 36.619865, 47.827911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332169, 36.242466, 47.837959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123426, 0.069578, 0.989912,
		-0.935723, -0.324002, 0.139443,
		0.330436, -0.943494, 0.025115,
		35.431301, 35.959419, 47.845493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794071, 36.279446, 48.307823>,  <35.199993, 36.619865, 47.827911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794071, 36.279446, 48.307823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127426, 36.064537, 48.255966>,  <35.327438, 35.935593, 48.224850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127426, 36.064537, 48.255966>,  <34.794071, 36.279446, 48.307823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127426, 36.064537, 48.255966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249111, 0.155754, 0.955868,
		-0.493370, -0.828902, 0.263644,
		0.833384, -0.537273, -0.129644,
		35.377441, 35.903355, 48.217072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771465, 35.847294, 48.781185>,  <34.794071, 36.279446, 48.307823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771465, 35.847294, 48.781185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161850, 35.809898, 48.702446>,  <35.396080, 35.787460, 48.655201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161850, 35.809898, 48.702446>,  <34.771465, 35.847294, 48.781185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161850, 35.809898, 48.702446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160617, -0.301902, 0.939711,
		-0.147283, -0.948744, -0.279630,
		0.975966, -0.093490, -0.196849,
		35.454639, 35.781853, 48.643391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906502, 35.205696, 49.100338>,  <34.771465, 35.847294, 48.781185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906502, 35.205696, 49.100338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248425, 35.409389, 49.060364>,  <35.453579, 35.531605, 49.036381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248425, 35.409389, 49.060364>,  <34.906502, 35.205696, 49.100338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248425, 35.409389, 49.060364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365809, -0.454689, 0.812060,
		0.368090, -0.730711, -0.574954,
		0.854806, 0.509235, -0.099934,
		35.504868, 35.562160, 49.030384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441452, 34.728802, 49.240501>,  <34.906502, 35.205696, 49.100338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441452, 34.728802, 49.240501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624809, 35.078403, 49.304989>,  <35.734825, 35.288166, 49.343681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624809, 35.078403, 49.304989>,  <35.441452, 34.728802, 49.240501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624809, 35.078403, 49.304989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563294, -0.426028, 0.707955,
		0.687440, -0.233707, -0.687610,
		0.458395, 0.874003, 0.161223,
		35.762329, 35.340603, 49.353355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042465, 34.525536, 49.467476>,  <35.441452, 34.728802, 49.240501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042465, 34.525536, 49.467476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059982, 34.910912, 49.573200>,  <36.070492, 35.142139, 49.636635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059982, 34.910912, 49.573200>,  <36.042465, 34.525536, 49.467476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059982, 34.910912, 49.573200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512758, -0.248730, 0.821713,
		0.857416, 0.099542, -0.504905,
		0.043790, 0.963444, 0.264306,
		36.073120, 35.199944, 49.652493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676346, 34.687786, 49.623871>,  <36.042465, 34.525536, 49.467476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676346, 34.687786, 49.623871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467094, 34.969776, 49.815426>,  <36.341541, 35.138969, 49.930359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467094, 34.969776, 49.815426>,  <36.676346, 34.687786, 49.623871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467094, 34.969776, 49.815426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428027, -0.268573, 0.862938,
		0.736971, 0.656409, -0.161250,
		-0.523132, 0.704979, 0.478891,
		36.310154, 35.181271, 49.959095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172745, 35.002312, 50.050266>,  <36.676346, 34.687786, 49.623871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172745, 35.002312, 50.050266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811638, 35.083454, 50.201981>,  <36.594975, 35.132141, 50.293011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811638, 35.083454, 50.201981>,  <37.172745, 35.002312, 50.050266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811638, 35.083454, 50.201981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327830, -0.246348, 0.912053,
		0.278451, 0.947714, 0.155893,
		-0.902769, 0.202856, 0.379285,
		36.540806, 35.144310, 50.315765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324265, 35.239223, 50.649464>,  <37.172745, 35.002312, 50.050266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324265, 35.239223, 50.649464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940907, 35.156025, 50.727669>,  <36.710892, 35.106106, 50.774593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940907, 35.156025, 50.727669>,  <37.324265, 35.239223, 50.649464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940907, 35.156025, 50.727669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226226, -0.135713, 0.964575,
		-0.174091, 0.968670, 0.177119,
		-0.958391, -0.207992, 0.195512,
		36.653389, 35.093628, 50.786324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182621, 35.629253, 51.221684>,  <37.324265, 35.239223, 50.649464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182621, 35.629253, 51.221684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894360, 35.353195, 51.195248>,  <36.721405, 35.187561, 51.179386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894360, 35.353195, 51.195248>,  <37.182621, 35.629253, 51.221684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894360, 35.353195, 51.195248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074086, -0.171435, 0.982406,
		-0.689330, 0.703074, 0.174675,
		-0.720650, -0.690142, -0.066087,
		36.678165, 35.146152, 51.175423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748501, 35.779022, 51.661564>,  <37.182621, 35.629253, 51.221684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748501, 35.779022, 51.661564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705517, 35.386471, 51.597885>,  <36.679726, 35.150940, 51.559677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705517, 35.386471, 51.597885>,  <36.748501, 35.779022, 51.661564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705517, 35.386471, 51.597885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089009, -0.168974, 0.981593,
		-0.990217, 0.091313, 0.105510,
		-0.107461, -0.981382, -0.159193,
		36.673279, 35.092056, 51.550129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914413, 35.666740, 52.401340>,  <36.748501, 35.779022, 51.661564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914413, 35.666740, 52.401340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693382, 35.400898, 52.200161>,  <36.560764, 35.241394, 52.079453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693382, 35.400898, 52.200161>,  <36.914413, 35.666740, 52.401340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693382, 35.400898, 52.200161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316776, -0.390693, 0.864299,
		-0.770918, 0.636912, 0.005356,
		-0.552574, -0.664607, -0.502950,
		36.527611, 35.201515, 52.049274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303501, 35.674736, 52.789684>,  <36.914413, 35.666740, 52.401340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303501, 35.674736, 52.789684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295780, 35.342617, 52.566887>,  <36.291149, 35.143345, 52.433208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295780, 35.342617, 52.566887>,  <36.303501, 35.674736, 52.789684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295780, 35.342617, 52.566887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567104, -0.449717, 0.690034,
		-0.823420, 0.329188, -0.462185,
		-0.019298, -0.830295, -0.556990,
		36.289989, 35.093529, 52.399792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606468, 35.335457, 52.923424>,  <36.303501, 35.674736, 52.789684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606468, 35.335457, 52.923424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839226, 35.054081, 52.760174>,  <35.978882, 34.885254, 52.662224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839226, 35.054081, 52.760174>,  <35.606468, 35.335457, 52.923424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839226, 35.054081, 52.760174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419116, -0.689451, 0.590761,
		-0.696943, -0.172716, -0.696017,
		0.581903, -0.703439, -0.408120,
		36.013794, 34.843048, 52.637737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161186, 34.883373, 52.635265>,  <35.606468, 35.335457, 52.923424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161186, 34.883373, 52.635265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493587, 34.685757, 52.737530>,  <35.693027, 34.567188, 52.798889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493587, 34.685757, 52.737530>,  <35.161186, 34.883373, 52.635265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493587, 34.685757, 52.737530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548541, -0.651408, 0.524184,
		-0.092426, -0.575840, -0.812321,
		0.830999, -0.494040, 0.255665,
		35.742886, 34.537544, 52.814228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130024, 34.168880, 52.448517>,  <35.161186, 34.883373, 52.635265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130024, 34.168880, 52.448517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376801, 34.173794, 52.763283>,  <35.524868, 34.176743, 52.952141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376801, 34.173794, 52.763283>,  <35.130024, 34.168880, 52.448517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376801, 34.173794, 52.763283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487691, -0.778794, 0.394509,
		0.617689, -0.627159, -0.474481,
		0.616943, 0.012284, 0.786912,
		35.561882, 34.177479, 52.999355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799656, 33.803745, 52.494122>,  <35.130024, 34.168880, 52.448517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799656, 33.803745, 52.494122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100269, 33.708038, 52.740032>,  <36.280636, 33.650616, 52.887581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100269, 33.708038, 52.740032>,  <35.799656, 33.803745, 52.494122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100269, 33.708038, 52.740032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658854, 0.225063, -0.717815,
		0.033382, 0.944510, 0.326781,
		0.751530, -0.239264, 0.614781,
		36.325729, 33.636261, 52.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377449, 34.236401, 52.416790>,  <35.799656, 33.803745, 52.494122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377449, 34.236401, 52.416790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538776, 33.883728, 52.514740>,  <36.635574, 33.672123, 52.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538776, 33.883728, 52.514740>,  <36.377449, 34.236401, 52.416790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538776, 33.883728, 52.514740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463620, -0.033826, -0.885388,
		0.788916, 0.470627, 0.395123,
		0.403322, -0.881684, 0.244878,
		36.659775, 33.619225, 52.588203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959335, 34.159912, 51.997818>,  <36.377449, 34.236401, 52.416790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959335, 34.159912, 51.997818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879387, 33.791309, 52.131008>,  <36.831417, 33.570148, 52.210922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879387, 33.791309, 52.131008>,  <36.959335, 34.159912, 51.997818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879387, 33.791309, 52.131008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263953, -0.377906, -0.887421,
		0.943600, -0.089477, 0.318767,
		-0.199868, -0.921510, 0.332974,
		36.819427, 33.514854, 52.230900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492435, 33.779373, 51.711193>,  <36.959335, 34.159912, 51.997818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492435, 33.779373, 51.711193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164753, 33.552311, 51.743858>,  <36.968143, 33.416073, 51.763458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164753, 33.552311, 51.743858>,  <37.492435, 33.779373, 51.711193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164753, 33.552311, 51.743858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084629, -0.260491, -0.961760,
		0.567223, -0.780967, 0.261435,
		-0.819205, -0.567658, 0.081664,
		36.918991, 33.382015, 51.768356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474514, 32.973537, 51.596230>,  <37.492435, 33.779373, 51.711193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474514, 32.973537, 51.596230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118847, 33.124481, 51.492702>,  <36.905449, 33.215046, 51.430584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118847, 33.124481, 51.492702>,  <37.474514, 32.973537, 51.596230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118847, 33.124481, 51.492702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094485, -0.402024, -0.910741,
		-0.447730, -0.834252, 0.321810,
		-0.889162, 0.377360, -0.258822,
		36.852097, 33.237690, 51.415054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299164, 32.443146, 51.159748>,  <37.474514, 32.973537, 51.596230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299164, 32.443146, 51.159748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077972, 32.766396, 51.078617>,  <36.945255, 32.960346, 51.029938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077972, 32.766396, 51.078617>,  <37.299164, 32.443146, 51.159748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077972, 32.766396, 51.078617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063488, -0.283595, -0.956840,
		-0.830770, -0.516239, 0.208129,
		-0.552983, 0.808128, -0.202828,
		36.912079, 33.008835, 51.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563622, 32.285908, 50.898983>,  <37.299164, 32.443146, 51.159748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563622, 32.285908, 50.898983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675751, 32.649876, 50.776695>,  <36.743027, 32.868256, 50.703323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675751, 32.649876, 50.776695>,  <36.563622, 32.285908, 50.898983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675751, 32.649876, 50.776695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220298, -0.249008, -0.943114,
		-0.934286, 0.331722, 0.130652,
		0.280319, 0.909921, -0.305722,
		36.759846, 32.922852, 50.684978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985073, 32.561691, 50.534149>,  <36.563622, 32.285908, 50.898983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985073, 32.561691, 50.534149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315121, 32.749615, 50.408634>,  <36.513149, 32.862370, 50.333324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315121, 32.749615, 50.408634>,  <35.985073, 32.561691, 50.534149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315121, 32.749615, 50.408634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288167, -0.127759, -0.949019,
		-0.485945, 0.873476, 0.029967,
		0.825116, 0.469807, -0.313791,
		36.562656, 32.890556, 50.314495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714298, 33.113873, 50.081459>,  <35.985073, 32.561691, 50.534149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714298, 33.113873, 50.081459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099033, 33.065609, 49.983231>,  <36.329876, 33.036652, 49.924294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099033, 33.065609, 49.983231>,  <35.714298, 33.113873, 50.081459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099033, 33.065609, 49.983231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266386, -0.208003, -0.941155,
		0.062479, 0.970658, -0.232207,
		0.961839, -0.120659, -0.245574,
		36.387585, 33.029411, 49.909557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749489, 33.367229, 49.322124>,  <35.714298, 33.113873, 50.081459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749489, 33.367229, 49.322124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090176, 33.162628, 49.367619>,  <36.294590, 33.039867, 49.394917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090176, 33.162628, 49.367619>,  <35.749489, 33.367229, 49.322124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090176, 33.162628, 49.367619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015965, -0.242285, -0.970074,
		0.523755, 0.824415, -0.214525,
		0.851719, -0.511506, 0.113736,
		36.345692, 33.009178, 49.401741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332539, 33.541492, 48.798550>,  <35.749489, 33.367229, 49.322124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332539, 33.541492, 48.798550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412445, 33.166653, 48.913052>,  <36.460388, 32.941750, 48.981754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412445, 33.166653, 48.913052>,  <36.332539, 33.541492, 48.798550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412445, 33.166653, 48.913052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073938, -0.276893, -0.958052,
		0.977051, 0.212548, 0.013974,
		0.199762, -0.937098, 0.286254,
		36.472374, 32.885525, 48.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894821, 33.374245, 48.359207>,  <36.332539, 33.541492, 48.798550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894821, 33.374245, 48.359207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749428, 33.029423, 48.500484>,  <36.662189, 32.822529, 48.585251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749428, 33.029423, 48.500484>,  <36.894821, 33.374245, 48.359207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749428, 33.029423, 48.500484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069476, -0.403152, -0.912492,
		0.929005, -0.307140, 0.206432,
		-0.363487, -0.862052, 0.353191,
		36.640381, 32.770805, 48.606441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267418, 32.865555, 48.010231>,  <36.894821, 33.374245, 48.359207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267418, 32.865555, 48.010231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927582, 32.696774, 48.136810>,  <36.723679, 32.595505, 48.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927582, 32.696774, 48.136810>,  <37.267418, 32.865555, 48.010231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927582, 32.696774, 48.136810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070766, -0.503364, -0.861172,
		0.522668, -0.754041, 0.397795,
		-0.849594, -0.421956, 0.316452,
		36.672703, 32.570187, 48.231747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469582, 32.199524, 47.889778>,  <37.267418, 32.865555, 48.010231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469582, 32.199524, 47.889778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072411, 32.186710, 47.935490>,  <36.834106, 32.179024, 47.962917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072411, 32.186710, 47.935490>,  <37.469582, 32.199524, 47.889778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072411, 32.186710, 47.935490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071350, -0.608318, -0.790479,
		0.094840, -0.793046, 0.601733,
		-0.992932, -0.032035, 0.114277,
		36.774532, 32.177101, 47.969772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280800, 31.561634, 47.756031>,  <37.469582, 32.199524, 47.889778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280800, 31.561634, 47.756031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922211, 31.728550, 47.696430>,  <36.707058, 31.828699, 47.660667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922211, 31.728550, 47.696430>,  <37.280800, 31.561634, 47.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922211, 31.728550, 47.696430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220767, -0.712217, -0.666339,
		-0.384179, -0.564462, 0.730609,
		-0.896475, 0.417288, -0.149004,
		36.653267, 31.853737, 47.651730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777805, 30.959330, 47.607944>,  <37.280800, 31.561634, 47.756031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777805, 30.959330, 47.607944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626030, 31.309155, 47.487171>,  <36.534966, 31.519051, 47.414707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626030, 31.309155, 47.487171>,  <36.777805, 30.959330, 47.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626030, 31.309155, 47.487171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290637, -0.422487, -0.858508,
		-0.878382, -0.238000, 0.414489,
		-0.379441, 0.874564, -0.301933,
		36.512199, 31.571524, 47.396591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307549, 30.728836, 47.272579>,  <36.777805, 30.959330, 47.607944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307549, 30.728836, 47.272579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368340, 31.105179, 47.151459>,  <36.404816, 31.330984, 47.078785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368340, 31.105179, 47.151459>,  <36.307549, 30.728836, 47.272579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368340, 31.105179, 47.151459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173368, -0.276233, -0.945325,
		-0.973060, 0.196166, 0.121133,
		0.151980, 0.940858, -0.302800,
		36.413933, 31.387436, 47.060619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845253, 30.855661, 46.745880>,  <36.307549, 30.728836, 47.272579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845253, 30.855661, 46.745880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123043, 31.127153, 46.650360>,  <36.289719, 31.290049, 46.593048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123043, 31.127153, 46.650360>,  <35.845253, 30.855661, 46.745880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123043, 31.127153, 46.650360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394077, 0.081117, -0.915491,
		-0.602000, 0.729895, 0.323806,
		0.694478, 0.678730, -0.238803,
		36.331387, 31.330772, 46.578720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588196, 31.583857, 46.411057>,  <35.845253, 30.855661, 46.745880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588196, 31.583857, 46.411057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958988, 31.540884, 46.267303>,  <36.181465, 31.515100, 46.181049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958988, 31.540884, 46.267303>,  <35.588196, 31.583857, 46.411057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958988, 31.540884, 46.267303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333551, 0.202199, -0.920793,
		0.171588, 0.973434, 0.151602,
		0.926985, -0.107430, -0.359385,
		36.237083, 31.508656, 46.159489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467773, 31.788574, 45.733383>,  <35.588196, 31.583857, 46.411057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467773, 31.788574, 45.733383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852699, 31.681028, 45.717110>,  <36.083656, 31.616501, 45.707348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852699, 31.681028, 45.717110>,  <35.467773, 31.788574, 45.733383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852699, 31.681028, 45.717110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003430, 0.161589, -0.986852,
		0.271901, 0.949527, 0.156422,
		0.962319, -0.268863, -0.040680,
		36.141396, 31.600370, 45.704906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797810, 32.337219, 45.327541>,  <35.467773, 31.788574, 45.733383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797810, 32.337219, 45.327541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025818, 32.008774, 45.315861>,  <36.162624, 31.811707, 45.308853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025818, 32.008774, 45.315861>,  <35.797810, 32.337219, 45.327541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025818, 32.008774, 45.315861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012837, 0.044440, -0.998930,
		0.821531, 0.569035, 0.035872,
		0.570020, -0.821112, -0.029205,
		36.196823, 31.762440, 45.307098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272793, 32.538433, 44.864212>,  <35.797810, 32.337219, 45.327541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272793, 32.538433, 44.864212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281799, 32.139927, 44.897537>,  <36.287205, 31.900822, 44.917534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281799, 32.139927, 44.897537>,  <36.272793, 32.538433, 44.864212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281799, 32.139927, 44.897537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248699, -0.075136, -0.965662,
		0.968319, 0.042464, 0.246079,
		0.022516, -0.996269, 0.083317,
		36.288555, 31.841045, 44.922531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599621, 32.452675, 44.234489>,  <36.272793, 32.538433, 44.864212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599621, 32.452675, 44.234489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485840, 32.088196, 44.353695>,  <36.417572, 31.869509, 44.425217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485840, 32.088196, 44.353695>,  <36.599621, 32.452675, 44.234489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485840, 32.088196, 44.353695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001363, -0.311238, -0.950331,
		0.958689, -0.269918, 0.089775,
		-0.284453, -0.911195, 0.298012,
		36.400505, 31.814837, 44.443100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059090, 31.914007, 43.889446>,  <36.599621, 32.452675, 44.234489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059090, 31.914007, 43.889446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737381, 31.696205, 43.984665>,  <36.544357, 31.565523, 44.041794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737381, 31.696205, 43.984665>,  <37.059090, 31.914007, 43.889446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737381, 31.696205, 43.984665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033171, -0.441078, -0.896855,
		0.593340, -0.713416, 0.372807,
		-0.804268, -0.544507, 0.238045,
		36.496101, 31.532852, 44.056080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203197, 31.184793, 43.577900>,  <37.059090, 31.914007, 43.889446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203197, 31.184793, 43.577900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810581, 31.189938, 43.654224>,  <36.575012, 31.193024, 43.700020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810581, 31.189938, 43.654224>,  <37.203197, 31.184793, 43.577900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810581, 31.189938, 43.654224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183217, -0.349214, -0.918956,
		0.054816, -0.936955, 0.345125,
		-0.981543, 0.012859, 0.190809,
		36.516117, 31.193796, 43.711468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901535, 30.537664, 43.335209>,  <37.203197, 31.184793, 43.577900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901535, 30.537664, 43.335209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603340, 30.804256, 43.338284>,  <36.424423, 30.964212, 43.340130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603340, 30.804256, 43.338284>,  <36.901535, 30.537664, 43.335209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603340, 30.804256, 43.338284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183707, -0.194369, -0.963573,
		-0.640709, -0.719739, 0.267336,
		-0.745483, 0.666481, 0.007687,
		36.379696, 31.004200, 43.340591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229870, 30.162474, 43.081375>,  <36.901535, 30.537664, 43.335209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229870, 30.162474, 43.081375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178371, 30.555687, 43.029110>,  <36.147472, 30.791615, 42.997749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178371, 30.555687, 43.029110>,  <36.229870, 30.162474, 43.081375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178371, 30.555687, 43.029110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291985, -0.163495, -0.942345,
		-0.947718, -0.083170, 0.308079,
		-0.128745, 0.983032, -0.130663,
		36.139748, 30.850597, 42.989910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509998, 30.297867, 42.788914>,  <36.229870, 30.162474, 43.081375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509998, 30.297867, 42.788914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726437, 30.620560, 42.693920>,  <35.856300, 30.814175, 42.636925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726437, 30.620560, 42.693920>,  <35.509998, 30.297867, 42.788914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726437, 30.620560, 42.693920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353371, -0.038144, -0.934705,
		-0.763114, 0.589687, 0.264435,
		0.541098, 0.806730, -0.237487,
		35.888767, 30.862579, 42.622673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084045, 30.831030, 42.419338>,  <35.509998, 30.297867, 42.788914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084045, 30.831030, 42.419338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449730, 30.961134, 42.322659>,  <35.669140, 31.039196, 42.264652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449730, 30.961134, 42.322659>,  <35.084045, 30.831030, 42.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449730, 30.961134, 42.322659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188893, -0.185630, -0.964293,
		-0.358510, 0.927226, -0.108267,
		0.914216, 0.325258, -0.241697,
		35.723995, 31.058712, 42.250149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988449, 31.241089, 41.849911>,  <35.084045, 30.831030, 42.419338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988449, 31.241089, 41.849911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385017, 31.189320, 41.842659>,  <35.622959, 31.158258, 41.838306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385017, 31.189320, 41.842659>,  <34.988449, 31.241089, 41.849911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385017, 31.189320, 41.842659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020378, -0.016054, -0.999663,
		0.129091, 0.991459, -0.018554,
		0.991423, -0.129425, -0.018131,
		35.682446, 31.150492, 41.837219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292755, 31.821739, 41.505039>,  <34.988449, 31.241089, 41.849911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292755, 31.821739, 41.505039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547611, 31.514084, 41.485126>,  <35.700523, 31.329491, 41.473179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547611, 31.514084, 41.485126>,  <35.292755, 31.821739, 41.505039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547611, 31.514084, 41.485126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134933, 0.174898, -0.975297,
		0.758846, 0.614683, 0.215217,
		0.637139, -0.769140, -0.049780,
		35.738754, 31.283342, 41.470192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864902, 32.060207, 41.101883>,  <35.292755, 31.821739, 41.505039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864902, 32.060207, 41.101883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822220, 31.662495, 41.103264>,  <35.796608, 31.423866, 41.104092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822220, 31.662495, 41.103264>,  <35.864902, 32.060207, 41.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822220, 31.662495, 41.103264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194464, -0.024271, -0.980609,
		0.975088, -0.103969, 0.195942,
		-0.106709, -0.994284, 0.003448,
		35.790207, 31.364210, 41.104298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484417, 31.791119, 40.799267>,  <35.864902, 32.060207, 41.101883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484417, 31.791119, 40.799267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197441, 31.515495, 40.758312>,  <36.025257, 31.350121, 40.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197441, 31.515495, 40.758312>,  <36.484417, 31.791119, 40.799267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197441, 31.515495, 40.758312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269995, -0.139559, -0.952694,
		0.642175, -0.711139, 0.286168,
		-0.717436, -0.689061, -0.102383,
		35.982212, 31.308777, 40.727596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709457, 31.544392, 40.198830>,  <36.484417, 31.791119, 40.799267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709457, 31.544392, 40.198830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354244, 31.365143, 40.239971>,  <36.141117, 31.257593, 40.264656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354244, 31.365143, 40.239971>,  <36.709457, 31.544392, 40.198830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354244, 31.365143, 40.239971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035398, -0.156412, -0.987057,
		0.458409, -0.880184, 0.123037,
		-0.888036, -0.448120, 0.102857,
		36.087833, 31.230707, 40.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707794, 30.868481, 39.762794>,  <36.709457, 31.544392, 40.198830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707794, 30.868481, 39.762794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331802, 30.986153, 39.831955>,  <36.106209, 31.056757, 39.873451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331802, 30.986153, 39.831955>,  <36.707794, 30.868481, 39.762794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331802, 30.986153, 39.831955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225849, -0.156540, -0.961503,
		-0.255792, -0.942842, 0.213585,
		-0.939980, 0.294183, 0.172899,
		36.049809, 31.074408, 39.883823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418056, 30.467514, 39.332165>,  <36.707794, 30.868481, 39.762794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418056, 30.467514, 39.332165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129337, 30.722599, 39.439739>,  <35.956104, 30.875650, 39.504284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129337, 30.722599, 39.439739>,  <36.418056, 30.467514, 39.332165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129337, 30.722599, 39.439739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374337, -0.032884, -0.926709,
		-0.582129, -0.769573, 0.262455,
		-0.721801, 0.637711, 0.268937,
		35.912796, 30.913912, 39.520420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831806, 30.158375, 39.016094>,  <36.418056, 30.467514, 39.332165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831806, 30.158375, 39.016094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727768, 30.534639, 39.103275>,  <35.665344, 30.760399, 39.155582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727768, 30.534639, 39.103275>,  <35.831806, 30.158375, 39.016094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727768, 30.534639, 39.103275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224101, 0.160748, -0.961217,
		-0.939217, -0.298852, 0.168993,
		-0.260096, 0.940663, 0.217950,
		35.649738, 30.816839, 39.168659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138645, 30.285109, 38.742207>,  <35.831806, 30.158375, 39.016094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138645, 30.285109, 38.742207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277607, 30.657455, 38.787460>,  <35.360985, 30.880863, 38.814613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277607, 30.657455, 38.787460>,  <35.138645, 30.285109, 38.742207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277607, 30.657455, 38.787460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317664, 0.230343, -0.919800,
		-0.882271, 0.283601, 0.375724,
		0.347402, 0.930866, 0.113135,
		35.381828, 30.936716, 38.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600124, 30.747917, 38.636200>,  <35.138645, 30.285109, 38.742207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600124, 30.747917, 38.636200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936153, 30.954115, 38.568623>,  <35.137772, 31.077833, 38.528076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936153, 30.954115, 38.568623>,  <34.600124, 30.747917, 38.636200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936153, 30.954115, 38.568623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416237, 0.412802, -0.810149,
		-0.347886, 0.750905, 0.561352,
		0.840073, 0.515495, -0.168946,
		35.188175, 31.108763, 38.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329067, 31.502491, 38.525494>,  <34.600124, 30.747917, 38.636200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329067, 31.502491, 38.525494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706429, 31.490377, 38.393391>,  <34.932846, 31.483109, 38.314129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706429, 31.490377, 38.393391>,  <34.329067, 31.502491, 38.525494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706429, 31.490377, 38.393391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294157, 0.383489, -0.875447,
		0.153162, 0.923049, 0.352877,
		0.943405, -0.030284, -0.330257,
		34.989449, 31.481293, 38.294315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399399, 32.201336, 38.327133>,  <34.329067, 31.502491, 38.525494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399399, 32.201336, 38.327133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664520, 31.973368, 38.132862>,  <34.823593, 31.836586, 38.016300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664520, 31.973368, 38.132862>,  <34.399399, 32.201336, 38.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664520, 31.973368, 38.132862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175941, 0.511918, -0.840824,
		0.727831, 0.642750, 0.239028,
		0.662802, -0.569923, -0.485676,
		34.863361, 31.802391, 37.987160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742893, 32.637501, 37.902397>,  <34.399399, 32.201336, 38.327133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742893, 32.637501, 37.902397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850544, 32.284431, 37.748280>,  <34.915134, 32.072590, 37.655807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850544, 32.284431, 37.748280>,  <34.742893, 32.637501, 37.902397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850544, 32.284431, 37.748280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103648, 0.371187, -0.922755,
		0.957510, 0.288276, 0.008409,
		0.269129, -0.882676, -0.385294,
		34.931282, 32.019630, 37.632690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220711, 32.801792, 37.343849>,  <34.742893, 32.637501, 37.902397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220711, 32.801792, 37.343849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063652, 32.442146, 37.266472>,  <34.969418, 32.226360, 37.220043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063652, 32.442146, 37.266472>,  <35.220711, 32.801792, 37.343849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063652, 32.442146, 37.266472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249210, 0.306487, -0.918673,
		0.885281, -0.312506, -0.344410,
		-0.392648, -0.899114, -0.193447,
		34.945858, 32.172413, 37.208439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688229, 32.592449, 36.818680>,  <35.220711, 32.801792, 37.343849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688229, 32.592449, 36.818680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342915, 32.392307, 36.792202>,  <35.135727, 32.272221, 36.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342915, 32.392307, 36.792202>,  <35.688229, 32.592449, 36.818680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342915, 32.392307, 36.792202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029661, 0.080630, -0.996303,
		0.503843, -0.862057, -0.054766,
		-0.863286, -0.500356, -0.066195,
		35.083927, 32.242199, 36.772343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725937, 32.190651, 36.271885>,  <35.688229, 32.592449, 36.818680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725937, 32.190651, 36.271885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343338, 32.265831, 36.361134>,  <35.113777, 32.310940, 36.414680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343338, 32.265831, 36.361134>,  <35.725937, 32.190651, 36.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343338, 32.265831, 36.361134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181923, 0.213610, -0.959831,
		-0.228059, -0.958669, -0.170125,
		-0.956501, 0.187948, 0.223120,
		35.056389, 32.322216, 36.428070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375824, 32.043217, 36.618835>,  <35.725937, 32.190651, 36.271885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375824, 32.043217, 36.618835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713257, 32.148937, 36.431858>,  <36.915718, 32.212368, 36.319672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713257, 32.148937, 36.431858>,  <36.375824, 32.043217, 36.618835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713257, 32.148937, 36.431858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492326, -0.033080, 0.869782,
		0.214423, -0.963872, -0.158029,
		0.843586, 0.264303, -0.467446,
		36.966331, 32.228230, 36.291626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902531, 31.541809, 36.806576>,  <36.375824, 32.043217, 36.618835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902531, 31.541809, 36.806576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049191, 31.892942, 36.683300>,  <37.137184, 32.103622, 36.609333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049191, 31.892942, 36.683300>,  <36.902531, 31.541809, 36.806576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049191, 31.892942, 36.683300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659356, -0.011469, 0.751744,
		0.656370, -0.478832, -0.583008,
		0.366646, 0.877832, -0.308193,
		37.159184, 32.156292, 36.590843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600471, 31.490004, 36.896896>,  <36.902531, 31.541809, 36.806576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600471, 31.490004, 36.896896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509445, 31.879509, 36.897366>,  <37.454830, 32.113213, 36.897648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509445, 31.879509, 36.897366>,  <37.600471, 31.490004, 36.896896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509445, 31.879509, 36.897366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740476, 0.172265, 0.649631,
		0.632383, 0.148705, -0.760249,
		-0.227568, 0.973762, 0.001175,
		37.441174, 32.171638, 36.897717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143799, 31.628347, 37.221756>,  <37.600471, 31.490004, 36.896896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143799, 31.628347, 37.221756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953232, 31.979174, 37.197174>,  <37.838890, 32.189671, 37.182426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953232, 31.979174, 37.197174>,  <38.143799, 31.628347, 37.221756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953232, 31.979174, 37.197174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594586, 0.372886, 0.712336,
		0.647682, 0.302833, -0.699143,
		-0.476420, 0.877068, -0.061452,
		37.810307, 32.242294, 37.178738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709610, 32.179371, 37.234821>,  <38.143799, 31.628347, 37.221756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709610, 32.179371, 37.234821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367523, 32.358624, 37.338955>,  <38.162270, 32.466175, 37.401436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367523, 32.358624, 37.338955>,  <38.709610, 32.179371, 37.234821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367523, 32.358624, 37.338955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450892, 0.395702, 0.800072,
		0.255525, 0.801621, -0.540473,
		-0.855221, 0.448134, 0.260333,
		38.110958, 32.493065, 37.417053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873898, 32.893040, 37.288616>,  <38.709610, 32.179371, 37.234821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873898, 32.893040, 37.288616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542671, 32.796028, 37.490799>,  <38.343933, 32.737823, 37.612106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542671, 32.796028, 37.490799>,  <38.873898, 32.893040, 37.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542671, 32.796028, 37.490799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368032, 0.444958, 0.816434,
		-0.422911, 0.862087, -0.279199,
		-0.828070, -0.242525, 0.505453,
		38.294250, 32.723270, 37.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943504, 33.441685, 37.839340>,  <38.873898, 32.893040, 37.288616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943504, 33.441685, 37.839340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665958, 33.185844, 37.971680>,  <38.499432, 33.032341, 38.051083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665958, 33.185844, 37.971680>,  <38.943504, 33.441685, 37.839340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665958, 33.185844, 37.971680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291307, 0.170863, 0.941247,
		-0.658550, 0.749480, 0.067764,
		-0.693867, -0.639599, 0.330851,
		38.457798, 32.993965, 38.070934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539700, 33.755138, 38.356869>,  <38.943504, 33.441685, 37.839340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539700, 33.755138, 38.356869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470703, 33.371861, 38.448174>,  <38.429306, 33.141891, 38.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470703, 33.371861, 38.448174>,  <38.539700, 33.755138, 38.356869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470703, 33.371861, 38.448174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164586, 0.200438, 0.965783,
		-0.971163, 0.204162, 0.123131,
		-0.172496, -0.958198, 0.228260,
		38.418953, 33.084400, 38.516651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070881, 33.726326, 38.824169>,  <38.539700, 33.755138, 38.356869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070881, 33.726326, 38.824169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247669, 33.371941, 38.880352>,  <38.353741, 33.159309, 38.914062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247669, 33.371941, 38.880352>,  <38.070881, 33.726326, 38.824169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247669, 33.371941, 38.880352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162320, 0.232983, 0.958838,
		-0.882221, -0.400980, 0.246782,
		0.441971, -0.885965, 0.140455,
		38.380260, 33.106152, 38.922489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943810, 33.586330, 39.471611>,  <38.070881, 33.726326, 38.824169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943810, 33.586330, 39.471611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240757, 33.328117, 39.399864>,  <38.418926, 33.173187, 39.356815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240757, 33.328117, 39.399864>,  <37.943810, 33.586330, 39.471611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240757, 33.328117, 39.399864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089994, -0.169213, 0.981462,
		-0.663921, -0.744748, -0.067524,
		0.742368, -0.645537, -0.179367,
		38.463467, 33.134457, 39.346054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835678, 33.150719, 40.023064>,  <37.943810, 33.586330, 39.471611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835678, 33.150719, 40.023064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196938, 33.046291, 39.886730>,  <38.413692, 32.983635, 39.804932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196938, 33.046291, 39.886730>,  <37.835678, 33.150719, 40.023064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196938, 33.046291, 39.886730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229270, -0.377915, 0.897003,
		-0.362971, -0.888274, -0.281463,
		0.903154, -0.261055, -0.340827,
		38.467884, 32.967972, 39.784481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934017, 32.344906, 40.187645>,  <37.835678, 33.150719, 40.023064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934017, 32.344906, 40.187645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290646, 32.524597, 40.164650>,  <38.504623, 32.632412, 40.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290646, 32.524597, 40.164650>,  <37.934017, 32.344906, 40.187645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290646, 32.524597, 40.164650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281863, -0.451028, 0.846833,
		0.354488, -0.771213, -0.528742,
		0.891567, 0.449226, -0.057492,
		38.558117, 32.659367, 40.147404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437988, 31.766226, 40.389900>,  <37.934017, 32.344906, 40.187645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437988, 31.766226, 40.389900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618324, 32.116631, 40.458416>,  <38.726528, 32.326874, 40.499527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618324, 32.116631, 40.458416>,  <38.437988, 31.766226, 40.389900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618324, 32.116631, 40.458416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435477, -0.383381, 0.814481,
		0.779166, -0.292609, -0.554328,
		0.450843, 0.876013, 0.171293,
		38.753578, 32.379433, 40.509804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131363, 31.533562, 40.690895>,  <38.437988, 31.766226, 40.389900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131363, 31.533562, 40.690895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113953, 31.926939, 40.761257>,  <39.103508, 32.162968, 40.803474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113953, 31.926939, 40.761257>,  <39.131363, 31.533562, 40.690895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113953, 31.926939, 40.761257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343518, -0.150601, 0.926992,
		0.938137, 0.100774, -0.331277,
		-0.043526, 0.983445, 0.175902,
		39.100895, 32.221973, 40.814026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713730, 31.574949, 41.056278>,  <39.131363, 31.533562, 40.690895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713730, 31.574949, 41.056278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486763, 31.894541, 41.135952>,  <39.350582, 32.086296, 41.183758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486763, 31.894541, 41.135952>,  <39.713730, 31.574949, 41.056278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486763, 31.894541, 41.135952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182064, -0.114176, 0.976636,
		0.803052, 0.590421, -0.080680,
		-0.567415, 0.798978, 0.199184,
		39.316540, 32.134235, 41.195705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177055, 32.026947, 41.339901>,  <39.713730, 31.574949, 41.056278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177055, 32.026947, 41.339901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810944, 32.120529, 41.471066>,  <39.591278, 32.176678, 41.549763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810944, 32.120529, 41.471066>,  <40.177055, 32.026947, 41.339901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810944, 32.120529, 41.471066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305186, -0.128562, 0.943575,
		0.262914, 0.963709, 0.046270,
		-0.915280, 0.233958, 0.327911,
		39.536358, 32.190716, 41.569439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196800, 32.349869, 42.034012>,  <40.177055, 32.026947, 41.339901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196800, 32.349869, 42.034012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812035, 32.240723, 42.027412>,  <39.581177, 32.175236, 42.023453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812035, 32.240723, 42.027412>,  <40.196800, 32.349869, 42.034012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812035, 32.240723, 42.027412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007584, -0.086981, 0.996181,
		-0.273261, 0.958112, 0.085737,
		-0.961910, -0.272868, -0.016502,
		39.523460, 32.158863, 42.022461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860558, 32.743942, 42.568146>,  <40.196800, 32.349869, 42.034012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860558, 32.743942, 42.568146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551445, 32.498314, 42.503986>,  <39.365978, 32.350937, 42.465492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551445, 32.498314, 42.503986>,  <39.860558, 32.743942, 42.568146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551445, 32.498314, 42.503986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097871, -0.134406, 0.986081,
		-0.627085, 0.777720, 0.043766,
		-0.772778, -0.614074, -0.160400,
		39.319611, 32.314091, 42.455868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176285, 33.002392, 42.927277>,  <39.860558, 32.743942, 42.568146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176285, 33.002392, 42.927277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180698, 32.609398, 42.852867>,  <39.183346, 32.373604, 42.808220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180698, 32.609398, 42.852867>,  <39.176285, 33.002392, 42.927277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180698, 32.609398, 42.852867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289387, -0.181213, 0.939903,
		-0.957149, 0.043462, -0.286317,
		0.011034, -0.982483, -0.186025,
		39.184010, 32.314651, 42.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624638, 32.737263, 43.399162>,  <39.176285, 33.002392, 42.927277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624638, 32.737263, 43.399162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817722, 32.398243, 43.310940>,  <38.933575, 32.194832, 43.258007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817722, 32.398243, 43.310940>,  <38.624638, 32.737263, 43.399162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817722, 32.398243, 43.310940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029186, -0.267264, 0.963181,
		-0.875292, -0.458504, -0.153748,
		0.482714, -0.847552, -0.220552,
		38.962536, 32.143978, 43.244774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135006, 32.175606, 43.717781>,  <38.624638, 32.737263, 43.399162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135006, 32.175606, 43.717781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500183, 32.015217, 43.687443>,  <38.719288, 31.918983, 43.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500183, 32.015217, 43.687443>,  <38.135006, 32.175606, 43.717781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500183, 32.015217, 43.687443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054855, -0.304759, 0.950848,
		-0.404383, -0.863910, -0.300223,
		0.912943, -0.400976, -0.075850,
		38.774067, 31.894924, 43.664688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088486, 31.447001, 43.871616>,  <38.135006, 32.175606, 43.717781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088486, 31.447001, 43.871616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471901, 31.549629, 43.921219>,  <38.701950, 31.611206, 43.950981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471901, 31.549629, 43.921219>,  <38.088486, 31.447001, 43.871616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471901, 31.549629, 43.921219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011342, -0.469175, 0.883032,
		0.284743, -0.845012, -0.452632,
		0.958537, 0.256572, 0.124010,
		38.759460, 31.626600, 43.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499134, 30.874981, 44.172543>,  <38.088486, 31.447001, 43.871616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499134, 30.874981, 44.172543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707390, 31.204063, 44.263832>,  <38.832344, 31.401514, 44.318607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707390, 31.204063, 44.263832>,  <38.499134, 30.874981, 44.172543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707390, 31.204063, 44.263832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069639, -0.307342, 0.949048,
		0.850933, -0.478217, -0.217307,
		0.520638, 0.822708, 0.228225,
		38.863583, 31.450876, 44.332298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984043, 30.682432, 44.688377>,  <38.499134, 30.874981, 44.172543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984043, 30.682432, 44.688377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964981, 31.076721, 44.752972>,  <38.953545, 31.313295, 44.791729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964981, 31.076721, 44.752972>,  <38.984043, 30.682432, 44.688377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964981, 31.076721, 44.752972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157836, -0.152202, 0.975665,
		0.986315, 0.071984, -0.148329,
		-0.047656, 0.985725, 0.161481,
		38.950684, 31.372438, 44.801414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522507, 30.882864, 45.269226>,  <38.984043, 30.682432, 44.688377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522507, 30.882864, 45.269226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248104, 31.173775, 45.260609>,  <39.083462, 31.348322, 45.255440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248104, 31.173775, 45.260609>,  <39.522507, 30.882864, 45.269226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248104, 31.173775, 45.260609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136349, 0.157583, 0.978047,
		0.714706, 0.668009, -0.207266,
		-0.686006, 0.727277, -0.021543,
		39.042301, 31.391958, 45.254147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870289, 31.500814, 45.632469>,  <39.522507, 30.882864, 45.269226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870289, 31.500814, 45.632469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478683, 31.582329, 45.632759>,  <39.243721, 31.631237, 45.632931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478683, 31.582329, 45.632759>,  <39.870289, 31.500814, 45.632469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478683, 31.582329, 45.632759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105249, 0.502593, 0.858093,
		0.174507, 0.840161, -0.513494,
		-0.979015, 0.203788, 0.000720,
		39.184978, 31.643465, 45.632977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817871, 32.232658, 45.653522>,  <39.870289, 31.500814, 45.632469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817871, 32.232658, 45.653522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472958, 32.077797, 45.784103>,  <39.266006, 31.984879, 45.862450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472958, 32.077797, 45.784103>,  <39.817871, 32.232658, 45.653522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472958, 32.077797, 45.784103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076482, 0.537671, 0.839679,
		-0.500609, 0.749012, -0.434017,
		-0.862288, -0.387156, 0.326449,
		39.214272, 31.961651, 45.882038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451820, 32.788250, 45.957047>,  <39.817871, 32.232658, 45.653522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451820, 32.788250, 45.957047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281853, 32.457260, 46.103874>,  <39.179874, 32.258667, 46.191971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281853, 32.457260, 46.103874>,  <39.451820, 32.788250, 45.957047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281853, 32.457260, 46.103874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043809, 0.386224, 0.921364,
		-0.904173, 0.407582, -0.127862,
		-0.424915, -0.827471, 0.367069,
		39.154377, 32.209019, 46.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896301, 32.948559, 46.306271>,  <39.451820, 32.788250, 45.957047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896301, 32.948559, 46.306271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015900, 32.609924, 46.482403>,  <39.087658, 32.406742, 46.588081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015900, 32.609924, 46.482403>,  <38.896301, 32.948559, 46.306271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015900, 32.609924, 46.482403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097254, 0.486074, 0.868490,
		-0.949284, -0.216854, 0.227670,
		0.299000, -0.846585, 0.440332,
		39.105598, 32.355949, 46.614502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574505, 32.936256, 46.958965>,  <38.896301, 32.948559, 46.306271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574505, 32.936256, 46.958965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839207, 32.637226, 46.981632>,  <38.998028, 32.457809, 46.995232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839207, 32.637226, 46.981632>,  <38.574505, 32.936256, 46.958965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839207, 32.637226, 46.981632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311162, 0.342641, 0.886440,
		-0.682095, -0.568976, 0.459362,
		0.661759, -0.747572, 0.056670,
		39.037735, 32.412956, 46.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488071, 32.718975, 47.620628>,  <38.574505, 32.936256, 46.958965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488071, 32.718975, 47.620628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856869, 32.616962, 47.504086>,  <39.078148, 32.555756, 47.434158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856869, 32.616962, 47.504086>,  <38.488071, 32.718975, 47.620628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856869, 32.616962, 47.504086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377305, 0.422642, 0.824024,
		-0.087012, -0.869674, 0.485897,
		0.921993, -0.255031, -0.291357,
		39.133465, 32.540455, 47.416679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821575, 32.495979, 48.297169>,  <38.488071, 32.718975, 47.620628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821575, 32.495979, 48.297169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133648, 32.530304, 48.049313>,  <39.320892, 32.550900, 47.900597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133648, 32.530304, 48.049313>,  <38.821575, 32.495979, 48.297169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133648, 32.530304, 48.049313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545986, 0.390059, 0.741454,
		0.305322, -0.916783, 0.257464,
		0.780178, 0.085810, -0.619644,
		39.367702, 32.556049, 47.863419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474480, 32.177017, 48.583656>,  <38.821575, 32.495979, 48.297169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474480, 32.177017, 48.583656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556473, 32.483349, 48.339855>,  <39.605671, 32.667149, 48.193577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556473, 32.483349, 48.339855>,  <39.474480, 32.177017, 48.583656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556473, 32.483349, 48.339855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673955, 0.341135, 0.655295,
		0.709764, -0.545102, -0.446205,
		0.204987, 0.765827, -0.609500,
		39.617970, 32.713097, 48.157005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087818, 32.423557, 48.789665>,  <39.474480, 32.177017, 48.583656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087818, 32.423557, 48.789665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991810, 32.722157, 48.541431>,  <39.934204, 32.901318, 48.392490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991810, 32.722157, 48.541431>,  <40.087818, 32.423557, 48.789665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991810, 32.722157, 48.541431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613324, 0.612135, 0.499124,
		0.752478, -0.260817, -0.604774,
		-0.240024, 0.746502, -0.620583,
		39.919804, 32.946106, 48.355255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739124, 32.730900, 48.625736>,  <40.087818, 32.423557, 48.789665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739124, 32.730900, 48.625736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451996, 33.003227, 48.567463>,  <40.279720, 33.166622, 48.532501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451996, 33.003227, 48.567463>,  <40.739124, 32.730900, 48.625736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451996, 33.003227, 48.567463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439334, 0.605255, 0.663816,
		0.540111, 0.412499, -0.733570,
		-0.717820, 0.680816, -0.145680,
		40.236649, 33.207474, 48.523758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017574, 33.333374, 48.864853>,  <40.739124, 32.730900, 48.625736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017574, 33.333374, 48.864853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630219, 33.429680, 48.838753>,  <40.397804, 33.487465, 48.823093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630219, 33.429680, 48.838753>,  <41.017574, 33.333374, 48.864853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630219, 33.429680, 48.838753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120512, 0.680566, 0.722708,
		0.218410, 0.691998, -0.688067,
		-0.968387, 0.240767, -0.065248,
		40.339703, 33.501911, 48.819180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997612, 34.077301, 49.180725>,  <41.017574, 33.333374, 48.864853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997612, 34.077301, 49.180725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621769, 33.944374, 49.147991>,  <40.396263, 33.864616, 49.128349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621769, 33.944374, 49.147991>,  <40.997612, 34.077301, 49.180725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621769, 33.944374, 49.147991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291712, 0.652584, 0.699313,
		-0.178987, 0.680955, -0.710115,
		-0.939611, -0.332317, -0.081839,
		40.339886, 33.844681, 49.123440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619938, 34.710686, 49.266758>,  <40.997612, 34.077301, 49.180725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619938, 34.710686, 49.266758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370529, 34.416458, 49.372715>,  <40.220882, 34.239922, 49.436287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370529, 34.416458, 49.372715>,  <40.619938, 34.710686, 49.266758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370529, 34.416458, 49.372715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229061, 0.495827, 0.837667,
		-0.747498, 0.461627, -0.477648,
		-0.623521, -0.735565, 0.264888,
		40.183472, 34.195789, 49.452183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148392, 35.159554, 49.631908>,  <40.619938, 34.710686, 49.266758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148392, 35.159554, 49.631908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290981, 35.528423, 49.691933>,  <41.376534, 35.749744, 49.727947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290981, 35.528423, 49.691933>,  <41.148392, 35.159554, 49.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290981, 35.528423, 49.691933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111339, 0.117536, -0.986808,
		-0.927647, 0.368480, -0.060776,
		0.356475, 0.922176, 0.150058,
		41.397923, 35.805077, 49.736950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905159, 35.513054, 49.115105>,  <41.148392, 35.159554, 49.631908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905159, 35.513054, 49.115105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198994, 35.753078, 49.241791>,  <41.375294, 35.897091, 49.317802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198994, 35.753078, 49.241791>,  <40.905159, 35.513054, 49.115105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198994, 35.753078, 49.241791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056849, 0.410701, -0.909996,
		-0.676125, 0.686479, 0.267584,
		0.734590, 0.600060, 0.316711,
		41.419373, 35.933098, 49.336803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718548, 36.137535, 48.972672>,  <40.905159, 35.513054, 49.115105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718548, 36.137535, 48.972672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118305, 36.140434, 48.986332>,  <41.358158, 36.142174, 48.994530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118305, 36.140434, 48.986332>,  <40.718548, 36.137535, 48.972672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118305, 36.140434, 48.986332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032073, 0.195931, -0.980093,
		-0.013797, 0.980591, 0.195579,
		0.999390, 0.007250, 0.034154,
		41.418121, 36.142609, 48.996578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767139, 36.720642, 48.613617>,  <40.718548, 36.137535, 48.972672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767139, 36.720642, 48.613617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130795, 36.554348, 48.603508>,  <41.348988, 36.454571, 48.597443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130795, 36.554348, 48.603508>,  <40.767139, 36.720642, 48.613617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130795, 36.554348, 48.603508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006079, 0.047422, -0.998856,
		0.416460, 0.908248, 0.040585,
		0.909133, -0.415738, -0.025271,
		41.403534, 36.429626, 48.595928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119560, 37.085991, 48.134575>,  <40.767139, 36.720642, 48.613617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119560, 37.085991, 48.134575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316990, 36.739185, 48.161915>,  <41.435448, 36.531101, 48.178318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316990, 36.739185, 48.161915>,  <41.119560, 37.085991, 48.134575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316990, 36.739185, 48.161915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012552, -0.085682, -0.996244,
		0.869611, 0.490865, -0.053173,
		0.493577, -0.867012, 0.068349,
		41.465065, 36.479080, 48.182419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687233, 37.146175, 47.668888>,  <41.119560, 37.085991, 48.134575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687233, 37.146175, 47.668888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632004, 36.753502, 47.721386>,  <41.598866, 36.517899, 47.752884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.632004, 36.753502, 47.721386>,  <41.687233, 37.146175, 47.668888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632004, 36.753502, 47.721386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008255, -0.133647, -0.990995,
		0.990388, -0.135745, 0.026557,
		-0.138072, -0.981688, 0.131242,
		41.590584, 36.458996, 47.760757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142033, 36.729710, 47.286739>,  <41.687233, 37.146175, 47.668888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142033, 36.729710, 47.286739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879135, 36.445236, 47.386536>,  <41.721397, 36.274551, 47.446411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879135, 36.445236, 47.386536>,  <42.142033, 36.729710, 47.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879135, 36.445236, 47.386536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073238, -0.389728, -0.918013,
		0.750109, -0.585088, 0.308233,
		-0.657246, -0.711185, 0.249488,
		41.681961, 36.231880, 47.461384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397415, 36.123974, 47.076954>,  <42.142033, 36.729710, 47.286739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397415, 36.123974, 47.076954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999599, 36.084347, 47.090107>,  <41.760910, 36.060570, 47.098000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999599, 36.084347, 47.090107>,  <42.397415, 36.123974, 47.076954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999599, 36.084347, 47.090107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001579, -0.300692, -0.953720,
		0.104374, -0.948562, 0.298893,
		-0.994537, -0.099071, 0.032882,
		41.701237, 36.054626, 47.099972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249855, 35.404999, 46.731392>,  <42.397415, 36.123974, 47.076954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249855, 35.404999, 46.731392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909153, 35.614563, 46.733696>,  <41.704731, 35.740303, 46.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909153, 35.614563, 46.733696>,  <42.249855, 35.404999, 46.731392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909153, 35.614563, 46.733696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188098, -0.295513, -0.936638,
		-0.489016, -0.798867, 0.350250,
		-0.851753, 0.523912, 0.005755,
		41.653625, 35.771736, 46.735424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786610, 34.924847, 46.510685>,  <42.249855, 35.404999, 46.731392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786610, 34.924847, 46.510685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626888, 35.289742, 46.474083>,  <41.531055, 35.508678, 46.452122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626888, 35.289742, 46.474083>,  <41.786610, 34.924847, 46.510685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626888, 35.289742, 46.474083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128364, -0.154456, -0.979625,
		-0.907789, -0.379420, 0.178773,
		-0.399302, 0.912241, -0.091510,
		41.507099, 35.563416, 46.446629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281097, 34.774078, 46.109550>,  <41.786610, 34.924847, 46.510685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281097, 34.774078, 46.109550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342335, 35.167648, 46.072769>,  <41.379078, 35.403790, 46.050701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342335, 35.167648, 46.072769>,  <41.281097, 34.774078, 46.109550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342335, 35.167648, 46.072769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034546, -0.098318, -0.994555,
		-0.987607, 0.149086, -0.049043,
		0.153096, 0.983924, -0.091949,
		41.388264, 35.462826, 46.045185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726479, 34.964733, 45.710903>,  <41.281097, 34.774078, 46.109550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726479, 34.964733, 45.710903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989975, 35.261967, 45.663765>,  <41.148075, 35.440308, 45.635483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989975, 35.261967, 45.663765>,  <40.726479, 34.964733, 45.710903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989975, 35.261967, 45.663765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087827, -0.079616, -0.992949,
		-0.747224, 0.664448, 0.012816,
		0.658743, 0.743081, -0.117848,
		41.187599, 35.484890, 45.628410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496841, 35.442154, 45.169910>,  <40.726479, 34.964733, 45.710903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496841, 35.442154, 45.169910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895592, 35.466972, 45.189499>,  <41.134842, 35.481861, 45.201252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895592, 35.466972, 45.189499>,  <40.496841, 35.442154, 45.169910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895592, 35.466972, 45.189499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061399, -0.217642, -0.974096,
		-0.049779, 0.974055, -0.220770,
		0.996871, 0.062044, 0.048972,
		41.194653, 35.485584, 45.204189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690853, 35.829998, 44.610970>,  <40.496841, 35.442154, 45.169910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690853, 35.829998, 44.610970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038876, 35.652481, 44.696808>,  <41.247688, 35.545971, 44.748310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038876, 35.652481, 44.696808>,  <40.690853, 35.829998, 44.610970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038876, 35.652481, 44.696808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103595, -0.261004, -0.959763,
		0.481945, 0.857279, -0.181113,
		0.870056, -0.443790, 0.214599,
		41.299892, 35.519344, 44.761189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304184, 36.025284, 44.227097>,  <40.690853, 35.829998, 44.610970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304184, 36.025284, 44.227097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420803, 35.656128, 44.327709>,  <41.490776, 35.434635, 44.388077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420803, 35.656128, 44.327709>,  <41.304184, 36.025284, 44.227097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420803, 35.656128, 44.327709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016740, -0.257988, -0.966003,
		0.956410, 0.285847, -0.059767,
		0.291548, -0.922894, 0.251527,
		41.508266, 35.379261, 44.403168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893059, 35.865200, 43.735107>,  <41.304184, 36.025284, 44.227097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893059, 35.865200, 43.735107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784492, 35.504627, 43.870018>,  <41.719353, 35.288284, 43.950966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784492, 35.504627, 43.870018>,  <41.893059, 35.865200, 43.735107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784492, 35.504627, 43.870018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005358, -0.351842, -0.936044,
		0.962446, -0.252254, 0.100327,
		-0.271420, -0.901430, 0.337277,
		41.703068, 35.234200, 43.971203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296230, 35.422028, 43.333275>,  <41.893059, 35.865200, 43.735107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296230, 35.422028, 43.333275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984989, 35.216915, 43.478386>,  <41.798244, 35.093845, 43.565453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984989, 35.216915, 43.478386>,  <42.296230, 35.422028, 43.333275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984989, 35.216915, 43.478386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140090, -0.421333, -0.896021,
		0.612317, -0.748017, 0.256005,
		-0.778102, -0.512785, 0.362779,
		41.751560, 35.063080, 43.587219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346455, 34.749172, 42.862225>,  <42.296230, 35.422028, 43.333275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346455, 34.749172, 42.862225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983631, 34.721485, 43.028332>,  <41.765938, 34.704872, 43.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983631, 34.721485, 43.028332>,  <42.346455, 34.749172, 42.862225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983631, 34.721485, 43.028332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291367, -0.608783, -0.737895,
		0.303881, -0.790312, 0.532037,
		-0.907062, -0.069214, 0.415269,
		41.711514, 34.700722, 43.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131340, 34.094051, 42.702858>,  <42.346455, 34.749172, 42.862225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131340, 34.094051, 42.702858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786678, 34.272930, 42.798828>,  <41.579880, 34.380257, 42.856411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786678, 34.272930, 42.798828>,  <42.131340, 34.094051, 42.702858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786678, 34.272930, 42.798828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447559, -0.446754, -0.774663,
		-0.239239, -0.774873, 0.585095,
		-0.861658, 0.447195, 0.239920,
		41.528179, 34.407089, 42.870804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630707, 33.577961, 42.650814>,  <42.131340, 34.094051, 42.702858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630707, 33.577961, 42.650814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400707, 33.905045, 42.640007>,  <41.262707, 34.101295, 42.633522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400707, 33.905045, 42.640007>,  <41.630707, 33.577961, 42.650814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400707, 33.905045, 42.640007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584805, -0.433872, -0.685389,
		-0.572172, -0.378296, 0.727675,
		-0.574998, 0.817709, -0.027020,
		41.228207, 34.150356, 42.631901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985493, 33.311642, 42.753109>,  <41.630707, 33.577961, 42.650814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985493, 33.311642, 42.753109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961178, 33.669056, 42.575165>,  <40.946590, 33.883503, 42.468399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961178, 33.669056, 42.575165>,  <40.985493, 33.311642, 42.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961178, 33.669056, 42.575165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475549, -0.417778, -0.774154,
		-0.877586, 0.164497, 0.450314,
		-0.060785, 0.893533, -0.444863,
		40.942944, 33.937115, 42.441708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257069, 33.338707, 42.542877>,  <40.985493, 33.311642, 42.753109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257069, 33.338707, 42.542877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476826, 33.585995, 42.318031>,  <40.608681, 33.734367, 42.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476826, 33.585995, 42.318031>,  <40.257069, 33.338707, 42.542877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476826, 33.585995, 42.318031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481506, -0.315564, -0.817662,
		-0.682878, 0.719878, 0.124309,
		0.549390, 0.618219, -0.562117,
		40.641644, 33.771461, 42.149395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775925, 33.673546, 42.108498>,  <40.257069, 33.338707, 42.542877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775925, 33.673546, 42.108498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128574, 33.739754, 41.931709>,  <40.340164, 33.779476, 41.825638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128574, 33.739754, 41.931709>,  <39.775925, 33.673546, 42.108498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128574, 33.739754, 41.931709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419018, -0.156373, -0.894411,
		-0.217151, 0.973731, -0.068509,
		0.881629, 0.165515, -0.441968,
		40.393063, 33.789410, 41.799118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746433, 34.235813, 41.639141>,  <39.775925, 33.673546, 42.108498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746433, 34.235813, 41.639141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065525, 34.056057, 41.478310>,  <40.256981, 33.948204, 41.381813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065525, 34.056057, 41.478310>,  <39.746433, 34.235813, 41.639141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065525, 34.056057, 41.478310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367969, 0.165460, -0.914998,
		0.477723, 0.877877, -0.033370,
		0.797734, -0.449395, -0.402075,
		40.304844, 33.921238, 41.357689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934185, 34.576244, 41.065201>,  <39.746433, 34.235813, 41.639141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934185, 34.576244, 41.065201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154083, 34.253078, 40.980293>,  <40.286022, 34.059181, 40.929348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154083, 34.253078, 40.980293>,  <39.934185, 34.576244, 41.065201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154083, 34.253078, 40.980293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279395, 0.061643, -0.958196,
		0.787223, 0.586069, -0.191839,
		0.549744, -0.807913, -0.212272,
		40.319008, 34.010704, 40.916611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514095, 34.741745, 40.495804>,  <39.934185, 34.576244, 41.065201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514095, 34.741745, 40.495804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375168, 34.367016, 40.479160>,  <40.291813, 34.142178, 40.469173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375168, 34.367016, 40.479160>,  <40.514095, 34.741745, 40.495804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375168, 34.367016, 40.479160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198515, 0.116812, -0.973112,
		0.916496, -0.329717, -0.226544,
		-0.347315, -0.936825, -0.041604,
		40.270973, 34.085968, 40.466679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912304, 34.374981, 40.011505>,  <40.514095, 34.741745, 40.495804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912304, 34.374981, 40.011505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553463, 34.198727, 40.024456>,  <40.338158, 34.092972, 40.032227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553463, 34.198727, 40.024456>,  <40.912304, 34.374981, 40.011505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553463, 34.198727, 40.024456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103067, 0.137444, -0.985133,
		0.429636, -0.887100, -0.168716,
		-0.897101, -0.440638, 0.032380,
		40.284332, 34.066536, 40.034168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919834, 33.835766, 39.549931>,  <40.912304, 34.374981, 40.011505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919834, 33.835766, 39.549931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535847, 33.942780, 39.583122>,  <40.305454, 34.006989, 39.603035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535847, 33.942780, 39.583122>,  <40.919834, 33.835766, 39.549931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535847, 33.942780, 39.583122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058936, 0.096687, -0.993568,
		-0.273839, -0.958684, -0.077049,
		-0.959968, 0.267537, 0.082978,
		40.247856, 34.023041, 39.608017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675049, 33.428802, 39.022141>,  <40.919834, 33.835766, 39.549931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675049, 33.428802, 39.022141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403721, 33.704586, 39.123749>,  <40.240925, 33.870056, 39.184715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403721, 33.704586, 39.123749>,  <40.675049, 33.428802, 39.022141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403721, 33.704586, 39.123749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033368, 0.316457, -0.948020,
		-0.734011, -0.651535, -0.191652,
		-0.678317, 0.689462, 0.254023,
		40.200226, 33.911423, 39.199955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096550, 33.340191, 38.521133>,  <40.675049, 33.428802, 39.022141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096550, 33.340191, 38.521133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084995, 33.713703, 38.663807>,  <40.078064, 33.937809, 38.749413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084995, 33.713703, 38.663807>,  <40.096550, 33.340191, 38.521133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084995, 33.713703, 38.663807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104051, 0.357707, -0.928019,
		-0.994152, 0.010305, -0.107494,
		-0.028888, 0.933777, 0.356688,
		40.076328, 33.993835, 38.770813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746166, 33.656254, 37.987854>,  <40.096550, 33.340191, 38.521133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746166, 33.656254, 37.987854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926353, 33.944595, 38.198547>,  <40.034466, 34.117599, 38.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926353, 33.944595, 38.198547>,  <39.746166, 33.656254, 37.987854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926353, 33.944595, 38.198547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037800, 0.574053, -0.817945,
		-0.891990, 0.388372, 0.231346,
		0.450472, 0.720854, 0.526730,
		40.061497, 34.160851, 38.356567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307274, 34.293819, 37.885662>,  <39.746166, 33.656254, 37.987854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307274, 34.293819, 37.885662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687027, 34.398708, 37.954845>,  <39.914879, 34.461643, 37.996357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687027, 34.398708, 37.954845>,  <39.307274, 34.293819, 37.885662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687027, 34.398708, 37.954845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014056, 0.514591, -0.857321,
		-0.313811, 0.816355, 0.484857,
		0.949381, 0.262222, 0.172959,
		39.971840, 34.477375, 38.006733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348270, 34.996979, 37.799526>,  <39.307274, 34.293819, 37.885662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348270, 34.996979, 37.799526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735672, 34.900269, 37.775700>,  <39.968113, 34.842243, 37.761402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735672, 34.900269, 37.775700>,  <39.348270, 34.996979, 37.799526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735672, 34.900269, 37.775700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155370, 0.773704, -0.614200,
		0.194588, 0.585599, 0.786899,
		0.968502, -0.241776, -0.059569,
		40.026222, 34.827736, 37.757828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691998, 35.612747, 37.808186>,  <39.348270, 34.996979, 37.799526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691998, 35.612747, 37.808186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969654, 35.372025, 37.650196>,  <40.136246, 35.227592, 37.555401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969654, 35.372025, 37.650196>,  <39.691998, 35.612747, 37.808186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969654, 35.372025, 37.650196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169513, 0.669923, -0.722820,
		0.699598, 0.434784, 0.567033,
		0.694139, -0.601802, -0.394975,
		40.177895, 35.191483, 37.531704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242794, 35.995529, 37.743435>,  <39.691998, 35.612747, 37.808186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242794, 35.995529, 37.743435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285110, 35.706268, 37.470421>,  <40.310501, 35.532711, 37.306610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285110, 35.706268, 37.470421>,  <40.242794, 35.995529, 37.743435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285110, 35.706268, 37.470421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119117, 0.690664, -0.713298,
		0.987229, -0.005844, 0.159203,
		0.105787, -0.723152, -0.682539,
		40.316845, 35.489323, 37.265659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709717, 36.238117, 37.292492>,  <40.242794, 35.995529, 37.743435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709717, 36.238117, 37.292492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526642, 35.957508, 37.073994>,  <40.416798, 35.789143, 36.942894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526642, 35.957508, 37.073994>,  <40.709717, 36.238117, 37.292492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526642, 35.957508, 37.073994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146304, 0.546575, -0.824531,
		0.876992, -0.457297, -0.147526,
		-0.457690, -0.701524, -0.546246,
		40.389336, 35.747051, 36.910118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212200, 36.002754, 36.639473>,  <40.709717, 36.238117, 37.292492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212200, 36.002754, 36.639473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837021, 35.906734, 36.539364>,  <40.611916, 35.849125, 36.479298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837021, 35.906734, 36.539364>,  <41.212200, 36.002754, 36.639473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837021, 35.906734, 36.539364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127812, 0.431591, -0.892969,
		0.322367, -0.869545, -0.374129,
		-0.937947, -0.240045, -0.250269,
		40.555637, 35.834721, 36.464283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300240, 35.914993, 35.975636>,  <41.212200, 36.002754, 36.639473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300240, 35.914993, 35.975636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900562, 35.927429, 35.985756>,  <40.660755, 35.934891, 35.991829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900562, 35.927429, 35.985756>,  <41.300240, 35.914993, 35.975636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900562, 35.927429, 35.985756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006905, 0.488200, -0.872705,
		-0.039487, -0.872178, -0.487593,
		-0.999196, 0.031094, 0.025300,
		40.600803, 35.936756, 35.993347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053566, 35.523396, 35.355202>,  <41.300240, 35.914993, 35.975636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053566, 35.523396, 35.355202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794956, 35.796944, 35.490452>,  <40.639790, 35.961071, 35.571602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794956, 35.796944, 35.490452>,  <41.053566, 35.523396, 35.355202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794956, 35.796944, 35.490452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001823, 0.444592, -0.895731,
		-0.762891, -0.578496, -0.288687,
		-0.646525, 0.683871, 0.338121,
		40.600998, 36.002106, 35.591888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697445, 35.602146, 34.798065>,  <41.053566, 35.523396, 35.355202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697445, 35.602146, 34.798065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596622, 35.934738, 34.996098>,  <40.536129, 36.134293, 35.114918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596622, 35.934738, 34.996098>,  <40.697445, 35.602146, 34.798065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596622, 35.934738, 34.996098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204434, 0.545802, -0.812593,
		-0.945873, -0.103608, -0.307556,
		-0.252055, 0.831484, 0.495078,
		40.521008, 36.184185, 35.144623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725601, 36.072861, 34.371788>,  <40.697445, 35.602146, 34.798065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725601, 36.072861, 34.371788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721886, 36.326164, 34.681343>,  <40.719658, 36.478146, 34.867077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721886, 36.326164, 34.681343>,  <40.725601, 36.072861, 34.371788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721886, 36.326164, 34.681343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514195, 0.666784, -0.539447,
		-0.857623, 0.392917, -0.331812,
		-0.009289, 0.633258, 0.773885,
		40.719097, 36.516140, 34.913509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549450, 36.595665, 34.082123>,  <40.725601, 36.072861, 34.371788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549450, 36.595665, 34.082123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758629, 36.724590, 34.397755>,  <40.884136, 36.801945, 34.587135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758629, 36.724590, 34.397755>,  <40.549450, 36.595665, 34.082123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758629, 36.724590, 34.397755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587294, 0.534685, -0.607617,
		-0.617750, 0.781171, 0.090320,
		0.522945, 0.322310, 0.789078,
		40.915512, 36.821285, 34.634480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833107, 37.255394, 33.868473>,  <40.549450, 36.595665, 34.082123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833107, 37.255394, 33.868473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088207, 37.106918, 34.138432>,  <41.241268, 37.017834, 34.300407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088207, 37.106918, 34.138432>,  <40.833107, 37.255394, 33.868473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088207, 37.106918, 34.138432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767039, 0.385887, -0.512583,
		-0.070169, 0.844576, 0.530818,
		0.637752, -0.371190, 0.674900,
		41.279533, 36.995560, 34.340900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313358, 37.741951, 34.244686>,  <40.833107, 37.255394, 33.868473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313358, 37.741951, 34.244686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449352, 37.371399, 34.179905>,  <41.530949, 37.149067, 34.141037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449352, 37.371399, 34.179905>,  <41.313358, 37.741951, 34.244686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449352, 37.371399, 34.179905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854717, 0.376213, -0.357661,
		0.392260, -0.016828, 0.919700,
		0.339985, -0.926380, -0.161957,
		41.551346, 37.093483, 34.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031136, 37.577061, 34.609779>,  <41.313358, 37.741951, 34.244686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031136, 37.577061, 34.609779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957073, 37.360168, 34.281948>,  <41.912636, 37.230034, 34.085251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957073, 37.360168, 34.281948>,  <42.031136, 37.577061, 34.609779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957073, 37.360168, 34.281948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805261, 0.394314, -0.442799,
		0.563270, -0.741958, 0.363628,
		-0.185155, -0.542230, -0.819575,
		41.901527, 37.197498, 34.036076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724602, 37.429096, 34.439342>,  <42.031136, 37.577061, 34.609779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724602, 37.429096, 34.439342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479881, 37.403206, 34.124001>,  <42.333050, 37.387672, 33.934795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479881, 37.403206, 34.124001>,  <42.724602, 37.429096, 34.439342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479881, 37.403206, 34.124001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775313, 0.148503, -0.613871,
		0.156800, -0.986792, -0.040681,
		-0.611804, -0.064714, -0.788358,
		42.296341, 37.383785, 33.887493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061478, 37.323269, 35.127945>,  <42.724602, 37.429096, 34.439342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061478, 37.323269, 35.127945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362301, 37.144043, 34.934597>,  <43.542793, 37.036507, 34.818588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362301, 37.144043, 34.934597>,  <43.061478, 37.323269, 35.127945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362301, 37.144043, 34.934597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128117, 0.620015, -0.774059,
		0.646529, 0.644063, 0.408880,
		0.752054, -0.448067, -0.483373,
		43.587917, 37.009624, 34.789585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412605, 37.847042, 34.935715>,  <43.061478, 37.323269, 35.127945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412605, 37.847042, 34.935715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461994, 37.531540, 34.694843>,  <43.491627, 37.342239, 34.550320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461994, 37.531540, 34.694843>,  <43.412605, 37.847042, 34.935715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461994, 37.531540, 34.694843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038817, 0.602514, -0.797163,
		0.991589, 0.121799, 0.043774,
		0.123468, -0.788759, -0.602175,
		43.499035, 37.294910, 34.514191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987118, 38.148087, 34.467300>,  <43.412605, 37.847042, 34.935715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987118, 38.148087, 34.467300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803776, 37.846344, 34.279324>,  <43.693771, 37.665298, 34.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803776, 37.846344, 34.279324>,  <43.987118, 38.148087, 34.467300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803776, 37.846344, 34.279324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070839, 0.496067, -0.865389,
		0.885940, -0.429949, -0.173939,
		-0.458359, -0.754361, -0.469943,
		43.666267, 37.620037, 34.138340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429363, 38.075157, 33.843220>,  <43.987118, 38.148087, 34.467300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429363, 38.075157, 33.843220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075981, 37.912804, 33.749607>,  <43.863953, 37.815392, 33.693439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075981, 37.912804, 33.749607>,  <44.429363, 38.075157, 33.843220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075981, 37.912804, 33.749607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008206, 0.512840, -0.858445,
		0.468447, -0.756476, -0.456401,
		-0.883453, -0.405881, -0.234031,
		43.810944, 37.791039, 33.679398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500149, 38.019806, 33.091702>,  <44.429363, 38.075157, 33.843220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500149, 38.019806, 33.091702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114010, 37.953175, 33.172050>,  <43.882324, 37.913197, 33.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114010, 37.953175, 33.172050>,  <44.500149, 38.019806, 33.091702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114010, 37.953175, 33.172050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252125, 0.396822, -0.882590,
		0.067314, -0.902653, -0.425072,
		-0.965351, -0.166582, 0.200870,
		43.824406, 37.903198, 33.232311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247654, 37.678089, 32.486324>,  <44.500149, 38.019806, 33.091702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247654, 37.678089, 32.486324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967457, 37.876808, 32.691265>,  <43.799339, 37.996040, 32.814228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967457, 37.876808, 32.691265>,  <44.247654, 37.678089, 32.486324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967457, 37.876808, 32.691265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182451, 0.569397, -0.801561,
		-0.689940, -0.654968, -0.308219,
		-0.700496, 0.496794, 0.512349,
		43.757309, 38.025845, 32.844971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648457, 37.864532, 32.001884>,  <44.247654, 37.678089, 32.486324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648457, 37.864532, 32.001884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586399, 38.116577, 32.306225>,  <43.549164, 38.267803, 32.488827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586399, 38.116577, 32.306225>,  <43.648457, 37.864532, 32.001884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586399, 38.116577, 32.306225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079143, 0.759770, -0.645357,
		-0.984716, -0.160339, -0.068005,
		-0.155144, 0.630112, 0.760848,
		43.539856, 38.305611, 32.534477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185734, 38.325768, 31.703381>,  <43.648457, 37.864532, 32.001884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185734, 38.325768, 31.703381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292511, 38.518906, 32.036991>,  <43.356579, 38.634789, 32.237156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292511, 38.518906, 32.036991>,  <43.185734, 38.325768, 31.703381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292511, 38.518906, 32.036991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118474, 0.842424, -0.525630,
		-0.956402, 0.239125, 0.167677,
		0.266946, 0.482848, 0.834025,
		43.372593, 38.663761, 32.287197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793362, 38.940914, 31.792673>,  <43.185734, 38.325768, 31.703381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793362, 38.940914, 31.792673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148647, 38.999672, 31.966803>,  <43.361816, 39.034927, 32.071281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148647, 38.999672, 31.966803>,  <42.793362, 38.940914, 31.792673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148647, 38.999672, 31.966803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148307, 0.805120, -0.574271,
		-0.434843, 0.574635, 0.693330,
		0.888210, 0.146892, 0.435323,
		43.415112, 39.043739, 32.097401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854530, 39.566673, 31.643549>,  <42.793362, 38.940914, 31.792673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854530, 39.566673, 31.643549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230499, 39.479572, 31.748722>,  <43.456081, 39.427311, 31.811827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230499, 39.479572, 31.748722>,  <42.854530, 39.566673, 31.643549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230499, 39.479572, 31.748722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328040, 0.789374, -0.518921,
		-0.094557, 0.573997, 0.813380,
		0.939919, -0.217754, 0.262935,
		43.512474, 39.414246, 31.827602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103317, 40.173340, 31.585592>,  <42.854530, 39.566673, 31.643549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103317, 40.173340, 31.585592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411530, 39.918560, 31.576048>,  <43.596458, 39.765694, 31.570322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411530, 39.918560, 31.576048>,  <43.103317, 40.173340, 31.585592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411530, 39.918560, 31.576048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441741, 0.560621, -0.700406,
		0.459500, 0.529148, 0.713346,
		0.770535, -0.636951, -0.023859,
		43.642689, 39.727474, 31.568890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649494, 40.570793, 31.578894>,  <43.103317, 40.173340, 31.585592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649494, 40.570793, 31.578894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800755, 40.223904, 31.449322>,  <43.891510, 40.015770, 31.371578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800755, 40.223904, 31.449322>,  <43.649494, 40.570793, 31.578894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800755, 40.223904, 31.449322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551967, 0.492126, -0.673160,
		0.743194, 0.075754, 0.664774,
		0.378147, -0.867222, -0.323931,
		43.914200, 39.963737, 31.352142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221878, 40.768211, 31.391012>,  <43.649494, 40.570793, 31.578894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221878, 40.768211, 31.391012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175419, 40.413589, 31.211887>,  <44.147545, 40.200817, 31.104412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175419, 40.413589, 31.211887>,  <44.221878, 40.768211, 31.391012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175419, 40.413589, 31.211887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449637, 0.355086, -0.819598,
		0.885628, -0.296545, 0.357385,
		-0.116145, -0.886552, -0.447812,
		44.140575, 40.147625, 31.077543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851223, 40.524704, 31.166716>,  <44.221878, 40.768211, 31.391012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851223, 40.524704, 31.166716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575489, 40.384064, 30.913357>,  <44.410049, 40.299679, 30.761341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575489, 40.384064, 30.913357>,  <44.851223, 40.524704, 31.166716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575489, 40.384064, 30.913357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512901, 0.380597, -0.769466,
		0.511616, -0.855290, -0.082022,
		-0.689334, -0.351603, -0.633399,
		44.368687, 40.278584, 30.723337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212170, 40.344646, 30.596806>,  <44.851223, 40.524704, 31.166716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212170, 40.344646, 30.596806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843567, 40.404274, 30.453356>,  <44.622406, 40.440052, 30.367287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843567, 40.404274, 30.453356>,  <45.212170, 40.344646, 30.596806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843567, 40.404274, 30.453356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388105, 0.387712, -0.836094,
		0.014407, -0.909647, -0.415132,
		-0.921502, 0.149069, -0.358624,
		44.567116, 40.448994, 30.345768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223713, 40.234451, 29.872137>,  <45.212170, 40.344646, 30.596806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223713, 40.234451, 29.872137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905037, 40.470940, 29.922318>,  <44.713833, 40.612835, 29.952425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905037, 40.470940, 29.922318>,  <45.223713, 40.234451, 29.872137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905037, 40.470940, 29.922318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272562, 0.536721, -0.798524,
		-0.539439, -0.601983, -0.588746,
		-0.796690, 0.591224, 0.125450,
		44.666031, 40.648308, 29.959953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078674, 40.412323, 29.192242>,  <45.223713, 40.234451, 29.872137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078674, 40.412323, 29.192242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886776, 40.697018, 29.397486>,  <44.771637, 40.867836, 29.520632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886776, 40.697018, 29.397486>,  <45.078674, 40.412323, 29.192242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886776, 40.697018, 29.397486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063252, 0.611332, -0.788842,
		-0.875127, -0.345985, -0.338300,
		-0.479741, 0.711736, 0.513109,
		44.742855, 40.910538, 29.551418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721474, 40.756752, 28.724226>,  <45.078674, 40.412323, 29.192242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721474, 40.756752, 28.724226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713039, 40.999565, 29.041985>,  <44.707977, 41.145252, 29.232639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713039, 40.999565, 29.041985>,  <44.721474, 40.756752, 28.724226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713039, 40.999565, 29.041985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340539, 0.751423, -0.565152,
		-0.939994, 0.258606, -0.222564,
		-0.021088, 0.607032, 0.794398,
		44.706715, 41.181675, 29.280304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359409, 41.365543, 28.539602>,  <44.721474, 40.756752, 28.724226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359409, 41.365543, 28.539602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560833, 41.488586, 28.862539>,  <44.681686, 41.562412, 29.056301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560833, 41.488586, 28.862539>,  <44.359409, 41.365543, 28.539602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560833, 41.488586, 28.862539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206093, 0.864725, -0.458015,
		-0.839019, 0.397026, 0.372046,
		0.503561, 0.307607, 0.807344,
		44.711903, 41.580868, 29.104742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132046, 42.134796, 28.710892>,  <44.359409, 41.365543, 28.539602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132046, 42.134796, 28.710892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481140, 42.065228, 28.893360>,  <44.690598, 42.023487, 29.002842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481140, 42.065228, 28.893360>,  <44.132046, 42.134796, 28.710892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481140, 42.065228, 28.893360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379922, 0.828754, -0.410884,
		-0.306593, 0.531900, 0.789356,
		0.872732, -0.173919, 0.456171,
		44.742958, 42.013050, 29.030210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241608, 42.775169, 29.050419>,  <44.132046, 42.134796, 28.710892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241608, 42.775169, 29.050419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586658, 42.583294, 28.986206>,  <44.793690, 42.468166, 28.947680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586658, 42.583294, 28.986206>,  <44.241608, 42.775169, 29.050419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586658, 42.583294, 28.986206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404029, 0.844340, -0.351924,
		0.304357, 0.238720, 0.922160,
		0.862628, -0.479690, -0.160531,
		44.845448, 42.439388, 28.938047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601219, 43.382301, 29.031281>,  <44.241608, 42.775169, 29.050419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601219, 43.382301, 29.031281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855412, 43.108166, 28.889025>,  <45.007927, 42.943684, 28.803671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855412, 43.108166, 28.889025>,  <44.601219, 43.382301, 29.031281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855412, 43.108166, 28.889025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578240, 0.727653, -0.368998,
		0.511669, 0.028847, 0.858699,
		0.635479, -0.685338, -0.355637,
		45.046055, 42.902565, 28.782333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747692, 44.048634, 29.478237>,  <44.601219, 43.382301, 29.031281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747692, 44.048634, 29.478237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949417, 44.366879, 29.343975>,  <45.070454, 44.557827, 29.263418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.949417, 44.366879, 29.343975>,  <44.747692, 44.048634, 29.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949417, 44.366879, 29.343975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470957, 0.579225, 0.665355,
		0.723787, -0.177469, 0.666812,
		0.504314, 0.795615, -0.335656,
		45.100712, 44.605564, 29.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951920, 43.422245, 29.793266>,  <44.747692, 44.048634, 29.478237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951920, 43.422245, 29.793266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223415, 43.701351, 29.884861>,  <45.386314, 43.868813, 29.939817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223415, 43.701351, 29.884861>,  <44.951920, 43.422245, 29.793266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223415, 43.701351, 29.884861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087144, 0.233081, -0.968545,
		-0.729187, 0.677349, 0.097397,
		0.678744, 0.697762, 0.228986,
		45.427040, 43.910679, 29.953556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321789, 42.856735, 29.711767>,  <44.951920, 43.422245, 29.793266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321789, 42.856735, 29.711767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480423, 43.080055, 29.420284>,  <45.575603, 43.214046, 29.245394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.480423, 43.080055, 29.420284>,  <45.321789, 42.856735, 29.711767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480423, 43.080055, 29.420284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188979, 0.826454, 0.530340,
		0.898335, -0.072616, 0.433269,
		0.396588, 0.558302, -0.728709,
		45.599400, 43.247547, 29.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714790, 43.316250, 30.060740>,  <45.321789, 42.856735, 29.711767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714790, 43.316250, 30.060740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585335, 43.464657, 29.712578>,  <45.507664, 43.553703, 29.503681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585335, 43.464657, 29.712578>,  <45.714790, 43.316250, 30.060740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585335, 43.464657, 29.712578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444204, 0.752656, 0.485996,
		0.835429, 0.543923, -0.078778,
		-0.323637, 0.371022, -0.870403,
		45.488243, 43.575962, 29.451456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755951, 43.780483, 30.729002>,  <45.714790, 43.316250, 30.060740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755951, 43.780483, 30.729002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608952, 44.052147, 30.983149>,  <45.520752, 44.215145, 31.135637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608952, 44.052147, 30.983149>,  <45.755951, 43.780483, 30.729002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608952, 44.052147, 30.983149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928363, 0.227077, 0.294241,
		0.055558, 0.697985, -0.713954,
		-0.367499, 0.679156, 0.635367,
		45.498703, 44.255894, 31.173759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088310, 44.415440, 30.609961>,  <45.755951, 43.780483, 30.729002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088310, 44.415440, 30.609961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991287, 44.389706, 30.997162>,  <45.933075, 44.374264, 31.229483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991287, 44.389706, 30.997162>,  <46.088310, 44.415440, 30.609961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991287, 44.389706, 30.997162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933721, 0.255335, 0.250935,
		-0.263309, 0.964710, -0.001862,
		-0.242555, -0.064335, 0.968002,
		45.918522, 44.370407, 31.287563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497932, 44.206352, 31.152956>,  <46.088310, 44.415440, 30.609961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497932, 44.206352, 31.152956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758015, 44.389347, 31.395588>,  <46.914062, 44.499146, 31.541166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.758015, 44.389347, 31.395588>,  <46.497932, 44.206352, 31.152956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.758015, 44.389347, 31.395588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461078, -0.872157, 0.163551,
		0.603855, 0.173339, -0.778018,
		0.650204, 0.457489, 0.606580,
		46.953075, 44.526592, 31.577562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178764, 44.059586, 30.884073>,  <46.497932, 44.206352, 31.152956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178764, 44.059586, 30.884073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148952, 44.096935, 31.281208>,  <47.131065, 44.119347, 31.519489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148952, 44.096935, 31.281208>,  <47.178764, 44.059586, 30.884073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148952, 44.096935, 31.281208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326396, -0.938483, 0.112764,
		0.942290, 0.332462, 0.039466,
		-0.074528, 0.093375, 0.992838,
		47.126595, 44.124947, 31.579060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.816654, 43.922920, 31.103779>,  <47.178764, 44.059586, 30.884073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.816654, 43.922920, 31.103779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536617, 43.844238, 31.378347>,  <47.368595, 43.797028, 31.543089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536617, 43.844238, 31.378347>,  <47.816654, 43.922920, 31.103779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536617, 43.844238, 31.378347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489549, -0.832041, 0.260862,
		0.519819, 0.518665, 0.678803,
		-0.700093, -0.196706, 0.686423,
		47.326588, 43.785225, 31.584274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.130196, 43.513546, 31.606043>,  <47.816654, 43.922920, 31.103779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.130196, 43.513546, 31.606043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753597, 43.427643, 31.709934>,  <47.527637, 43.376102, 31.772270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753597, 43.427643, 31.709934>,  <48.130196, 43.513546, 31.606043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753597, 43.427643, 31.709934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305111, -0.870469, 0.386252,
		0.143136, 0.442902, 0.885071,
		-0.941498, -0.214759, 0.259730,
		47.471149, 43.363216, 31.787853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.192535, 43.051239, 32.095695>,  <48.130196, 43.513546, 31.606043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.192535, 43.051239, 32.095695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810734, 42.997822, 31.989052>,  <47.581654, 42.965771, 31.925066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810734, 42.997822, 31.989052>,  <48.192535, 43.051239, 32.095695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.810734, 42.997822, 31.989052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035139, -0.938251, 0.344165,
		-0.296110, 0.319140, 0.900260,
		-0.954507, -0.133545, -0.266611,
		47.524380, 42.957760, 31.909069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.816528, 42.810390, 32.615170>,  <48.192535, 43.051239, 32.095695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.816528, 42.810390, 32.615170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585068, 42.699020, 32.308537>,  <47.446194, 42.632198, 32.124557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.585068, 42.699020, 32.308537>,  <47.816528, 42.810390, 32.615170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585068, 42.699020, 32.308537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062939, -0.921878, 0.382335,
		-0.813145, 0.269486, 0.515919,
		-0.578648, -0.278422, -0.766581,
		47.411472, 42.615494, 32.078564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285824, 42.333263, 32.895504>,  <47.816528, 42.810390, 32.615170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285824, 42.333263, 32.895504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280212, 42.279541, 32.499168>,  <47.276844, 42.247307, 32.261368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280212, 42.279541, 32.499168>,  <47.285824, 42.333263, 32.895504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280212, 42.279541, 32.499168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281829, -0.950231, 0.132793,
		-0.959362, 0.281111, -0.024520,
		-0.014030, -0.134307, -0.990840,
		47.276005, 42.239250, 32.201916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657001, 41.995308, 32.773495>,  <47.285824, 42.333263, 32.895504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657001, 41.995308, 32.773495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861668, 41.951660, 32.432606>,  <46.984467, 41.925472, 32.228073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.861668, 41.951660, 32.432606>,  <46.657001, 41.995308, 32.773495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861668, 41.951660, 32.432606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303540, -0.950896, -0.060491,
		-0.803777, 0.289636, -0.519667,
		0.511670, -0.109118, -0.852225,
		47.015167, 41.918926, 32.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176525, 41.825626, 32.223053>,  <46.657001, 41.995308, 32.773495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176525, 41.825626, 32.223053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546104, 41.700790, 32.134583>,  <46.767853, 41.625889, 32.081501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546104, 41.700790, 32.134583>,  <46.176525, 41.825626, 32.223053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546104, 41.700790, 32.134583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326491, -0.944696, -0.030871,
		-0.199307, 0.100735, -0.974746,
		0.923948, -0.312093, -0.221174,
		46.823288, 41.607162, 32.068230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094280, 41.316147, 31.688517>,  <46.176525, 41.825626, 32.223053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094280, 41.316147, 31.688517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456421, 41.233089, 31.836695>,  <46.673706, 41.183254, 31.925602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456421, 41.233089, 31.836695>,  <46.094280, 41.316147, 31.688517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456421, 41.233089, 31.836695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226257, -0.974043, 0.006986,
		0.359378, -0.090140, -0.928828,
		0.905348, -0.207643, 0.370444,
		46.728024, 41.170795, 31.947828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402374, 40.763893, 31.234474>,  <46.094280, 41.316147, 31.688517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402374, 40.763893, 31.234474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597042, 40.755825, 31.583815>,  <46.713844, 40.750984, 31.793419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597042, 40.755825, 31.583815>,  <46.402374, 40.763893, 31.234474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597042, 40.755825, 31.583815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240319, -0.964252, 0.111645,
		0.839880, -0.264218, -0.474121,
		0.486671, -0.020172, 0.873353,
		46.743042, 40.749775, 31.845819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907448, 40.121807, 31.186367>,  <46.402374, 40.763893, 31.234474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907448, 40.121807, 31.186367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889328, 40.216663, 31.574535>,  <46.878456, 40.273575, 31.807436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889328, 40.216663, 31.574535>,  <46.907448, 40.121807, 31.186367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889328, 40.216663, 31.574535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194462, -0.954927, 0.224274,
		0.979863, -0.178550, 0.089376,
		-0.045303, 0.237138, 0.970419,
		46.875736, 40.287804, 31.865662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242203, 39.652046, 31.470018>,  <46.907448, 40.121807, 31.186367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242203, 39.652046, 31.470018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014496, 39.802135, 31.762632>,  <46.877872, 39.892189, 31.938202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014496, 39.802135, 31.762632>,  <47.242203, 39.652046, 31.470018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014496, 39.802135, 31.762632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245749, -0.926760, 0.284119,
		0.784567, -0.018036, 0.619782,
		-0.569265, 0.375222, 0.731537,
		46.843716, 39.914703, 31.982094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479977, 39.304295, 32.025234>,  <47.242203, 39.652046, 31.470018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479977, 39.304295, 32.025234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121311, 39.440670, 32.138195>,  <46.906113, 39.522495, 32.205971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121311, 39.440670, 32.138195>,  <47.479977, 39.304295, 32.025234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121311, 39.440670, 32.138195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182942, -0.866235, 0.464940,
		0.403143, 0.365233, 0.839095,
		-0.896665, 0.340943, 0.282400,
		46.852310, 39.542953, 32.222916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418564, 39.053349, 32.686028>,  <47.479977, 39.304295, 32.025234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418564, 39.053349, 32.686028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041119, 39.146755, 32.592159>,  <46.814651, 39.202801, 32.535839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041119, 39.146755, 32.592159>,  <47.418564, 39.053349, 32.686028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041119, 39.146755, 32.592159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320388, -0.822665, 0.469653,
		-0.083380, 0.518354, 0.851092,
		-0.943610, 0.233520, -0.234668,
		46.758038, 39.216812, 32.521759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012737, 39.088680, 33.323944>,  <47.418564, 39.053349, 32.686028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012737, 39.088680, 33.323944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774326, 39.020428, 33.010094>,  <46.631279, 38.979477, 32.821785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774326, 39.020428, 33.010094>,  <47.012737, 39.088680, 33.323944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774326, 39.020428, 33.010094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368085, -0.810384, 0.455842,
		-0.713629, 0.560503, 0.420204,
		-0.596027, -0.170631, -0.784625,
		46.595520, 38.969238, 32.774708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434513, 38.762119, 33.645786>,  <47.012737, 39.088680, 33.323944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434513, 38.762119, 33.645786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377705, 38.673920, 33.259789>,  <46.343620, 38.621002, 33.028191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377705, 38.673920, 33.259789>,  <46.434513, 38.762119, 33.645786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377705, 38.673920, 33.259789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269353, -0.929480, 0.252021,
		-0.952512, 0.295716, 0.072613,
		-0.142019, -0.220495, -0.964994,
		46.335098, 38.607773, 32.970291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744625, 38.534698, 33.630661>,  <46.434513, 38.762119, 33.645786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744625, 38.534698, 33.630661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965660, 38.371040, 33.340214>,  <46.098282, 38.272846, 33.165943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965660, 38.371040, 33.340214>,  <45.744625, 38.534698, 33.630661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965660, 38.371040, 33.340214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310969, -0.909515, 0.275829,
		-0.773271, 0.073382, -0.629816,
		0.552586, -0.409143, -0.726120,
		46.131435, 38.248299, 33.122379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485065, 37.940639, 33.582874>,  <45.744625, 38.534698, 33.630661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485065, 37.940639, 33.582874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818035, 37.862003, 33.375633>,  <46.017815, 37.814823, 33.251289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818035, 37.862003, 33.375633>,  <45.485065, 37.940639, 33.582874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818035, 37.862003, 33.375633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077776, -0.967151, 0.242012,
		-0.548659, -0.161160, -0.820366,
		0.832421, -0.196586, -0.518102,
		46.067760, 37.803028, 33.220203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313343, 37.361225, 33.122253>,  <45.485065, 37.940639, 33.582874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313343, 37.361225, 33.122253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713219, 37.368988, 33.115906>,  <45.953144, 37.373646, 33.112099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713219, 37.368988, 33.115906>,  <45.313343, 37.361225, 33.122253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713219, 37.368988, 33.115906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019003, -0.999505, -0.025080,
		-0.016344, 0.024770, -0.999559,
		0.999686, 0.019405, -0.015865,
		46.013123, 37.374809, 33.111145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473129, 36.937710, 32.532566>,  <45.313343, 37.361225, 33.122253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473129, 36.937710, 32.532566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776535, 36.948650, 32.792999>,  <45.958576, 36.955215, 32.949261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776535, 36.948650, 32.792999>,  <45.473129, 36.937710, 32.532566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776535, 36.948650, 32.792999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044949, -0.994544, 0.094138,
		0.650109, -0.100671, -0.753142,
		0.758510, 0.027347, 0.651087,
		46.004089, 36.956856, 32.988327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899723, 36.375622, 32.237778>,  <45.473129, 36.937710, 32.532566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899723, 36.375622, 32.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987564, 36.449596, 32.620937>,  <46.040268, 36.493980, 32.850834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987564, 36.449596, 32.620937>,  <45.899723, 36.375622, 32.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987564, 36.449596, 32.620937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034338, -0.982725, 0.181857,
		0.974985, -0.007043, -0.222157,
		0.219600, 0.184937, 0.957901,
		46.053444, 36.505077, 32.908306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402512, 35.877907, 32.466385>,  <45.899723, 36.375622, 32.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402512, 35.877907, 32.466385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277927, 36.037491, 32.811367>,  <46.203178, 36.133240, 33.018356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277927, 36.037491, 32.811367>,  <46.402512, 35.877907, 32.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277927, 36.037491, 32.811367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179741, -0.866479, 0.465734,
		0.933105, 0.300076, 0.198164,
		-0.311461, 0.398961, 0.862452,
		46.184490, 36.157181, 33.070103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989704, 35.650669, 32.923080>,  <46.402512, 35.877907, 32.466385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989704, 35.650669, 32.923080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660690, 35.732269, 33.135426>,  <46.463280, 35.781227, 33.262833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660690, 35.732269, 33.135426>,  <46.989704, 35.650669, 32.923080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660690, 35.732269, 33.135426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146378, -0.826060, 0.544241,
		0.549549, 0.525366, 0.649605,
		-0.822539, 0.203999, 0.530862,
		46.413929, 35.793468, 33.294685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211662, 35.688271, 33.576763>,  <46.989704, 35.650669, 32.923080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211662, 35.688271, 33.576763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828075, 35.580318, 33.542038>,  <46.597923, 35.515545, 33.521202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828075, 35.580318, 33.542038>,  <47.211662, 35.688271, 33.576763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828075, 35.580318, 33.542038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181032, -0.818590, 0.545103,
		-0.218175, 0.507023, 0.833863,
		-0.958972, -0.269883, -0.086809,
		46.540382, 35.499352, 33.515995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574043, 36.154510, 33.976185>,  <47.211662, 35.688271, 33.576763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574043, 36.154510, 33.976185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366203, 35.830612, 34.085232>,  <47.241501, 35.636272, 34.150661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366203, 35.830612, 34.085232>,  <47.574043, 36.154510, 33.976185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366203, 35.830612, 34.085232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687054, -0.206311, 0.696701,
		-0.507910, 0.549309, 0.663541,
		-0.519600, -0.809750, 0.272618,
		47.210323, 35.587688, 34.167019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474628, 36.078289, 34.743713>,  <47.574043, 36.154510, 33.976185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474628, 36.078289, 34.743713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446007, 35.719166, 34.569901>,  <47.428833, 35.503693, 34.465614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446007, 35.719166, 34.569901>,  <47.474628, 36.078289, 34.743713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446007, 35.719166, 34.569901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720587, -0.347750, 0.599854,
		-0.689663, -0.270193, 0.671834,
		-0.071554, -0.897812, -0.434528,
		47.424541, 35.449821, 34.439541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422394, 35.660107, 35.371906>,  <47.474628, 36.078289, 34.743713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422394, 35.660107, 35.371906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567783, 35.466969, 35.053223>,  <47.655018, 35.351086, 34.862011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567783, 35.466969, 35.053223>,  <47.422394, 35.660107, 35.371906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567783, 35.466969, 35.053223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688094, -0.437376, 0.578989,
		-0.628023, -0.758661, 0.173266,
		0.363474, -0.482842, -0.796712,
		47.676826, 35.322117, 34.814209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491806, 34.963310, 35.387657>,  <47.422394, 35.660107, 35.371906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491806, 34.963310, 35.387657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762218, 35.092426, 35.122692>,  <47.924465, 35.169895, 34.963715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762218, 35.092426, 35.122692>,  <47.491806, 34.963310, 35.387657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762218, 35.092426, 35.122692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641235, -0.700591, 0.313034,
		-0.363035, -0.636382, -0.680605,
		0.676035, 0.322785, -0.662409,
		47.965031, 35.189262, 34.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.544868, 38.377834, 44.085289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218945, 38.151588, 44.136147>,  <37.023392, 38.015839, 44.166660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218945, 38.151588, 44.136147>,  <37.544868, 38.377834, 44.085289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218945, 38.151588, 44.136147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042962, -0.159797, -0.986215,
		0.578139, -0.809036, 0.105903,
		-0.814807, -0.565619, 0.127143,
		36.974503, 37.981903, 44.174290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682831, 37.797680, 43.735813>,  <37.544868, 38.377834, 44.085289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682831, 37.797680, 43.735813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284710, 37.791142, 43.773975>,  <37.045837, 37.787220, 43.796875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284710, 37.791142, 43.773975>,  <37.682831, 37.797680, 43.735813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284710, 37.791142, 43.773975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091666, -0.157555, -0.983247,
		0.031102, -0.987375, 0.155317,
		-0.995304, -0.016344, 0.095409,
		36.986118, 37.786240, 43.802597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470879, 37.090721, 43.446537>,  <37.682831, 37.797680, 43.735813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470879, 37.090721, 43.446537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175137, 37.358974, 43.422516>,  <36.997692, 37.519928, 43.408104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175137, 37.358974, 43.422516>,  <37.470879, 37.090721, 43.446537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175137, 37.358974, 43.422516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105152, -0.203100, -0.973496,
		-0.665057, -0.713441, 0.220681,
		-0.739353, 0.670635, -0.060053,
		36.953331, 37.560165, 43.404499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040276, 36.749310, 42.904743>,  <37.470879, 37.090721, 43.446537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040276, 36.749310, 42.904743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871578, 37.111217, 42.928486>,  <36.770359, 37.328362, 42.942734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871578, 37.111217, 42.928486>,  <37.040276, 36.749310, 42.904743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871578, 37.111217, 42.928486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359136, -0.106577, -0.927180,
		-0.832557, -0.412354, 0.369883,
		-0.421747, 0.904768, 0.059359,
		36.745052, 37.382648, 42.946293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354191, 36.662224, 42.707130>,  <37.040276, 36.749310, 42.904743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354191, 36.662224, 42.707130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434299, 37.050518, 42.654133>,  <36.482365, 37.283497, 42.622334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434299, 37.050518, 42.654133>,  <36.354191, 36.662224, 42.707130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434299, 37.050518, 42.654133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465146, -0.024812, -0.884886,
		-0.862281, 0.238851, 0.446566,
		0.200276, 0.970739, -0.132496,
		36.494381, 37.341740, 42.614384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798836, 36.939270, 42.342140>,  <36.354191, 36.662224, 42.707130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798836, 36.939270, 42.342140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048298, 37.247204, 42.287865>,  <36.197975, 37.431965, 42.255299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.048298, 37.247204, 42.287865>,  <35.798836, 36.939270, 42.342140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048298, 37.247204, 42.287865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451962, 0.213480, -0.866116,
		-0.637796, 0.601485, 0.481073,
		0.623655, 0.769832, -0.135692,
		36.235394, 37.478153, 42.247158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430363, 37.550106, 42.137932>,  <35.798836, 36.939270, 42.342140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430363, 37.550106, 42.137932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792595, 37.657269, 42.006382>,  <36.009933, 37.721565, 41.927452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792595, 37.657269, 42.006382>,  <35.430363, 37.550106, 42.137932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792595, 37.657269, 42.006382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391123, 0.227289, -0.891831,
		-0.164180, 0.936250, 0.310612,
		0.905576, 0.267908, -0.328873,
		36.064266, 37.737640, 41.907719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332134, 38.105888, 41.605545>,  <35.430363, 37.550106, 42.137932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332134, 38.105888, 41.605545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684242, 37.932255, 41.528915>,  <35.895508, 37.828075, 41.482937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684242, 37.932255, 41.528915>,  <35.332134, 38.105888, 41.605545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684242, 37.932255, 41.528915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164066, 0.100377, -0.981329,
		0.445209, 0.895262, 0.017141,
		0.880268, -0.434085, -0.191571,
		35.948322, 37.802029, 41.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532345, 38.436615, 40.953667>,  <35.332134, 38.105888, 41.605545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532345, 38.436615, 40.953667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779148, 38.123127, 40.982151>,  <35.927231, 37.935032, 40.999241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779148, 38.123127, 40.982151>,  <35.532345, 38.436615, 40.953667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779148, 38.123127, 40.982151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094167, -0.016312, -0.995423,
		0.781299, 0.620894, 0.063736,
		0.617012, -0.783725, 0.071213,
		35.964252, 37.888008, 41.003513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114307, 38.542484, 40.480240>,  <35.532345, 38.436615, 40.953667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114307, 38.542484, 40.480240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074718, 38.148281, 40.535336>,  <36.050964, 37.911758, 40.568394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074718, 38.148281, 40.535336>,  <36.114307, 38.542484, 40.480240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074718, 38.148281, 40.535336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057454, -0.143844, -0.987931,
		0.993430, -0.089867, 0.070858,
		-0.098974, -0.985512, 0.137736,
		36.045025, 37.852627, 40.576656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703644, 38.246273, 40.135361>,  <36.114307, 38.542484, 40.480240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703644, 38.246273, 40.135361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412666, 37.972809, 40.158768>,  <36.238079, 37.808731, 40.172813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412666, 37.972809, 40.158768>,  <36.703644, 38.246273, 40.135361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412666, 37.972809, 40.158768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114511, -0.205046, -0.972031,
		0.676540, -0.700401, 0.227447,
		-0.727448, -0.683663, 0.058518,
		36.194431, 37.767712, 40.176323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064137, 37.656525, 40.073032>,  <36.703644, 38.246273, 40.135361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064137, 37.656525, 40.073032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683460, 37.597263, 39.965450>,  <36.455055, 37.561707, 39.900902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683460, 37.597263, 39.965450>,  <37.064137, 37.656525, 40.073032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683460, 37.597263, 39.965450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294333, -0.190526, -0.936519,
		0.087510, -0.970437, 0.224929,
		-0.951688, -0.148159, -0.268959,
		36.397953, 37.552814, 39.884762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224991, 37.064964, 39.665741>,  <37.064137, 37.656525, 40.073032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224991, 37.064964, 39.665741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858486, 37.186634, 39.561478>,  <36.638584, 37.259636, 39.498920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858486, 37.186634, 39.561478>,  <37.224991, 37.064964, 39.665741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858486, 37.186634, 39.561478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217266, -0.169330, -0.961313,
		-0.336549, -0.937445, 0.089063,
		-0.916259, 0.304179, -0.260662,
		36.583607, 37.277889, 39.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937187, 36.569065, 39.155891>,  <37.224991, 37.064964, 39.665741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937187, 36.569065, 39.155891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703609, 36.889526, 39.103497>,  <36.563461, 37.081802, 39.072060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703609, 36.889526, 39.103497>,  <36.937187, 36.569065, 39.155891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703609, 36.889526, 39.103497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080173, -0.103655, -0.991377,
		-0.807824, -0.589412, -0.003703,
		-0.583946, 0.801155, -0.130990,
		36.528427, 37.129871, 39.064201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391136, 36.314091, 38.797905>,  <36.937187, 36.569065, 39.155891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391136, 36.314091, 38.797905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438164, 36.703251, 38.718258>,  <36.466381, 36.936745, 38.670471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438164, 36.703251, 38.718258>,  <36.391136, 36.314091, 38.797905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438164, 36.703251, 38.718258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062960, -0.192798, -0.979217,
		-0.991067, 0.127660, 0.038587,
		0.117568, 0.972899, -0.199113,
		36.473434, 36.995121, 38.658524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164108, 36.364609, 38.121120>,  <36.391136, 36.314091, 38.797905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164108, 36.364609, 38.121120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310009, 36.735565, 38.154346>,  <36.397549, 36.958138, 38.174282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310009, 36.735565, 38.154346>,  <36.164108, 36.364609, 38.121120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310009, 36.735565, 38.154346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072520, 0.060643, -0.995522,
		-0.928275, 0.369146, -0.045135,
		0.364756, 0.927391, 0.083064,
		36.419437, 37.013783, 38.179264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752380, 36.720253, 37.650387>,  <36.164108, 36.364609, 38.121120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752380, 36.720253, 37.650387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109875, 36.881496, 37.729111>,  <36.324371, 36.978241, 37.776344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109875, 36.881496, 37.729111>,  <35.752380, 36.720253, 37.650387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109875, 36.881496, 37.729111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173985, 0.092883, -0.980358,
		-0.413471, 0.910426, 0.012878,
		0.893740, 0.403109, 0.196805,
		36.377998, 37.002430, 37.788151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791916, 37.362621, 37.250389>,  <35.752380, 36.720253, 37.650387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791916, 37.362621, 37.250389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169380, 37.290047, 37.361088>,  <36.395859, 37.246502, 37.427505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169380, 37.290047, 37.361088>,  <35.791916, 37.362621, 37.250389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169380, 37.290047, 37.361088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309165, 0.185163, -0.932809,
		0.118004, 0.965813, 0.230825,
		0.943659, -0.181438, 0.276746,
		36.452477, 37.235615, 37.444111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156494, 37.998104, 37.198570>,  <35.791916, 37.362621, 37.250389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156494, 37.998104, 37.198570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421547, 37.701561, 37.156040>,  <36.580578, 37.523636, 37.130520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421547, 37.701561, 37.156040>,  <36.156494, 37.998104, 37.198570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421547, 37.701561, 37.156040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223177, 0.330974, -0.916869,
		0.714922, 0.583814, 0.384768,
		0.662630, -0.741361, -0.106327,
		36.620335, 37.479153, 37.124142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624237, 38.401054, 36.819935>,  <36.156494, 37.998104, 37.198570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624237, 38.401054, 36.819935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711952, 38.011120, 36.803890>,  <36.764580, 37.777161, 36.794266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711952, 38.011120, 36.803890>,  <36.624237, 38.401054, 36.819935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711952, 38.011120, 36.803890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326816, 0.112128, -0.938413,
		0.919296, 0.192673, 0.343180,
		0.219286, -0.974836, -0.040110,
		36.777737, 37.718670, 36.791859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283424, 38.331264, 36.438629>,  <36.624237, 38.401054, 36.819935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283424, 38.331264, 36.438629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117615, 37.968868, 36.404324>,  <37.018127, 37.751431, 36.383739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117615, 37.968868, 36.404324>,  <37.283424, 38.331264, 36.438629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117615, 37.968868, 36.404324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112949, 0.042290, -0.992701,
		0.903002, -0.421184, 0.084800,
		-0.414523, -0.905989, -0.085760,
		36.993259, 37.697071, 36.378597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757164, 37.894512, 35.979824>,  <37.283424, 38.331264, 36.438629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757164, 37.894512, 35.979824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386623, 37.744167, 35.970043>,  <37.164299, 37.653961, 35.964172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386623, 37.744167, 35.970043>,  <37.757164, 37.894512, 35.979824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386623, 37.744167, 35.970043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087378, -0.151290, -0.984620,
		0.366380, -0.914243, 0.172990,
		-0.926354, -0.375860, -0.024456,
		37.108719, 37.631409, 35.962708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537125, 37.980175, 35.884609>,  <37.757164, 37.894512, 35.979824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537125, 37.980175, 35.884609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.931183, 38.046600, 35.867111>,  <39.167618, 38.086456, 35.856613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.931183, 38.046600, 35.867111>,  <38.537125, 37.980175, 35.884609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931183, 38.046600, 35.867111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028297, 0.094291, 0.995142,
		0.169383, -0.981597, 0.088191,
		0.985144, 0.166064, -0.043748,
		39.226727, 38.096420, 35.853989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853958, 37.630650, 36.384693>,  <38.537125, 37.980175, 35.884609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853958, 37.630650, 36.384693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143555, 37.893684, 36.301350>,  <39.317314, 38.051506, 36.251343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143555, 37.893684, 36.301350>,  <38.853958, 37.630650, 36.384693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143555, 37.893684, 36.301350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089726, 0.209710, 0.973638,
		0.683946, -0.723603, 0.092826,
		0.723994, 0.657587, -0.208356,
		39.360752, 38.090961, 36.238842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337502, 37.390865, 36.810158>,  <38.853958, 37.630650, 36.384693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337502, 37.390865, 36.810158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429070, 37.771534, 36.728264>,  <39.484013, 37.999935, 36.679127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429070, 37.771534, 36.728264>,  <39.337502, 37.390865, 36.810158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429070, 37.771534, 36.728264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241486, 0.148222, 0.959018,
		0.943016, -0.268981, -0.195884,
		0.228924, 0.951672, -0.204731,
		39.497746, 38.057037, 36.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000942, 37.612312, 37.156509>,  <39.337502, 37.390865, 36.810158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000942, 37.612312, 37.156509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.832443, 37.968166, 37.085972>,  <39.731342, 38.181679, 37.043652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.832443, 37.968166, 37.085972>,  <40.000942, 37.612312, 37.156509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832443, 37.968166, 37.085972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109076, 0.242719, 0.963945,
		0.900363, 0.386825, -0.199283,
		-0.421247, 0.889637, -0.176342,
		39.706070, 38.235058, 37.033070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381672, 38.005840, 37.626766>,  <40.000942, 37.612312, 37.156509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381672, 38.005840, 37.626766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045959, 38.215969, 37.570702>,  <39.844532, 38.342045, 37.537064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.045959, 38.215969, 37.570702>,  <40.381672, 38.005840, 37.626766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045959, 38.215969, 37.570702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024819, 0.220506, 0.975070,
		0.543130, 0.821837, -0.172029,
		-0.839282, 0.525320, -0.140161,
		39.794174, 38.373566, 37.528652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587208, 38.618984, 37.879139>,  <40.381672, 38.005840, 37.626766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587208, 38.618984, 37.879139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187557, 38.612148, 37.863853>,  <39.947769, 38.608047, 37.854683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187557, 38.612148, 37.863853>,  <40.587208, 38.618984, 37.879139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187557, 38.612148, 37.863853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041853, 0.396449, 0.917102,
		-0.000524, 0.917897, -0.396817,
		-0.999124, -0.017088, -0.038210,
		39.887821, 38.607021, 37.852390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368790, 39.363182, 38.109070>,  <40.587208, 38.618984, 37.879139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368790, 39.363182, 38.109070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064930, 39.107948, 38.159317>,  <39.882614, 38.954807, 38.189465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064930, 39.107948, 38.159317>,  <40.368790, 39.363182, 38.109070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064930, 39.107948, 38.159317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168157, 0.379314, 0.909859,
		-0.628219, 0.670048, -0.395444,
		-0.759647, -0.638088, 0.125619,
		39.837036, 38.916523, 38.197002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029007, 39.768368, 38.537354>,  <40.368790, 39.363182, 38.109070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029007, 39.768368, 38.537354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848923, 39.411419, 38.549870>,  <39.740871, 39.197250, 38.557377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.848923, 39.411419, 38.549870>,  <40.029007, 39.768368, 38.537354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848923, 39.411419, 38.549870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114971, 0.092679, 0.989036,
		-0.885491, 0.441675, -0.144322,
		-0.450208, -0.892375, 0.031287,
		39.713860, 39.143707, 38.559258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444798, 39.911633, 38.891933>,  <40.029007, 39.768368, 38.537354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444798, 39.911633, 38.891933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506554, 39.518654, 38.933819>,  <39.543610, 39.282867, 38.958950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506554, 39.518654, 38.933819>,  <39.444798, 39.911633, 38.891933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506554, 39.518654, 38.933819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085297, 0.092334, 0.992068,
		-0.984321, -0.162100, -0.069543,
		0.154392, -0.982445, 0.104713,
		39.552872, 39.223919, 38.965233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950222, 39.710316, 39.366310>,  <39.444798, 39.911633, 38.891933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950222, 39.710316, 39.366310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218250, 39.415314, 39.399986>,  <39.379066, 39.238312, 39.420193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.218250, 39.415314, 39.399986>,  <38.950222, 39.710316, 39.366310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218250, 39.415314, 39.399986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203217, -0.073171, 0.976396,
		-0.713940, -0.671362, -0.198904,
		0.670069, -0.737509, 0.084192,
		39.419270, 39.194061, 39.425243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612072, 39.193054, 39.792091>,  <38.950222, 39.710316, 39.366310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612072, 39.193054, 39.792091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999557, 39.095005, 39.807674>,  <39.232048, 39.036175, 39.817024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999557, 39.095005, 39.807674>,  <38.612072, 39.193054, 39.792091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999557, 39.095005, 39.807674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093271, -0.214068, 0.972355,
		-0.230017, -0.945561, -0.230233,
		0.968706, -0.245132, 0.038954,
		39.290169, 39.021469, 39.819363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643208, 38.573860, 40.145088>,  <38.612072, 39.193054, 39.792091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643208, 38.573860, 40.145088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013454, 38.721596, 40.178131>,  <39.235603, 38.810238, 40.197956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013454, 38.721596, 40.178131>,  <38.643208, 38.573860, 40.145088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013454, 38.721596, 40.178131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025631, -0.278952, 0.959963,
		0.377599, -0.886438, -0.267669,
		0.925614, 0.369342, 0.082611,
		39.291138, 38.832397, 40.202915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938633, 38.138504, 40.647396>,  <38.643208, 38.573860, 40.145088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938633, 38.138504, 40.647396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166206, 38.465996, 40.616405>,  <39.302750, 38.662491, 40.597813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166206, 38.465996, 40.616405>,  <38.938633, 38.138504, 40.647396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166206, 38.465996, 40.616405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024046, 0.077604, 0.996694,
		0.822035, -0.568911, 0.024463,
		0.568929, 0.818730, -0.077473,
		39.336884, 38.711613, 40.593163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522125, 37.999550, 40.986656>,  <38.938633, 38.138504, 40.647396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522125, 37.999550, 40.986656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496712, 38.398685, 40.979870>,  <39.481464, 38.638165, 40.975796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496712, 38.398685, 40.979870>,  <39.522125, 37.999550, 40.986656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496712, 38.398685, 40.979870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214226, 0.030242, 0.976316,
		0.974716, 0.058392, -0.215683,
		-0.063532, 0.997836, -0.016969,
		39.477654, 38.698036, 40.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077869, 38.273804, 41.381901>,  <39.522125, 37.999550, 40.986656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077869, 38.273804, 41.381901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.806648, 38.567749, 41.387810>,  <39.643917, 38.744118, 41.391357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.806648, 38.567749, 41.387810>,  <40.077869, 38.273804, 41.381901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806648, 38.567749, 41.387810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061092, 0.036314, 0.997471,
		0.732470, 0.677240, -0.069517,
		-0.678052, 0.734865, 0.014775,
		39.603233, 38.788208, 41.392242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285641, 38.620277, 41.939720>,  <40.077869, 38.273804, 41.381901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285641, 38.620277, 41.939720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928017, 38.796013, 41.904770>,  <39.713444, 38.901455, 41.883801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928017, 38.796013, 41.904770>,  <40.285641, 38.620277, 41.939720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928017, 38.796013, 41.904770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096518, 0.001536, 0.995330,
		0.437425, 0.898318, 0.041031,
		-0.894060, 0.439343, -0.087376,
		39.659798, 38.927814, 41.878555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231895, 39.279533, 42.352512>,  <40.285641, 38.620277, 41.939720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231895, 39.279533, 42.352512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868088, 39.117748, 42.314198>,  <39.649803, 39.020676, 42.291210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868088, 39.117748, 42.314198>,  <40.231895, 39.279533, 42.352512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868088, 39.117748, 42.314198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128568, 0.054620, 0.990195,
		-0.395269, 0.912921, -0.101680,
		-0.909523, -0.404466, -0.095783,
		39.595230, 38.996407, 42.285461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837326, 39.595375, 42.958870>,  <40.231895, 39.279533, 42.352512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837326, 39.595375, 42.958870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642887, 39.273052, 42.823593>,  <39.526222, 39.079659, 42.742428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642887, 39.273052, 42.823593>,  <39.837326, 39.595375, 42.958870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642887, 39.273052, 42.823593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213383, -0.265837, 0.940105,
		-0.847452, 0.529150, -0.042723,
		-0.486099, -0.805811, -0.338196,
		39.497059, 39.031307, 42.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.060368, 39.598938, 43.323498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151581, 39.230213, 43.198109>,  <39.206310, 39.008980, 43.122875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.151581, 39.230213, 43.198109>,  <39.060368, 39.598938, 43.323498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151581, 39.230213, 43.198109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314651, -0.374450, 0.872228,
		-0.921409, -0.100263, -0.375436,
		0.228034, -0.921811, -0.313473,
		39.219990, 38.953671, 43.104065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468037, 39.142532, 43.416359>,  <39.060368, 39.598938, 43.323498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468037, 39.142532, 43.416359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796745, 38.915276, 43.398907>,  <38.993969, 38.778923, 43.388435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796745, 38.915276, 43.398907>,  <38.468037, 39.142532, 43.416359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796745, 38.915276, 43.398907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210932, -0.374434, 0.902943,
		-0.529338, -0.732811, -0.427539,
		0.821772, -0.568143, -0.043629,
		39.043278, 38.744831, 43.385818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266441, 38.567303, 43.834579>,  <38.468037, 39.142532, 43.416359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266441, 38.567303, 43.834579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656536, 38.492096, 43.787987>,  <38.890591, 38.446972, 43.760029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656536, 38.492096, 43.787987>,  <38.266441, 38.567303, 43.834579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656536, 38.492096, 43.787987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037076, -0.380233, 0.924147,
		-0.218047, -0.905578, -0.363845,
		0.975233, -0.188018, -0.116484,
		38.949104, 38.435692, 43.753040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431244, 37.889561, 43.997013>,  <38.266441, 38.567303, 43.834579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431244, 37.889561, 43.997013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.768520, 38.098129, 44.049393>,  <38.970886, 38.223270, 44.080822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.768520, 38.098129, 44.049393>,  <38.431244, 37.889561, 43.997013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768520, 38.098129, 44.049393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118768, -0.418225, 0.900546,
		0.524332, -0.743779, -0.414571,
		0.843191, 0.521422, 0.130952,
		39.021477, 38.254555, 44.088676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953300, 37.395855, 44.205650>,  <38.431244, 37.889561, 43.997013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953300, 37.395855, 44.205650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.107262, 37.745094, 44.325348>,  <39.199638, 37.954639, 44.397167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.107262, 37.745094, 44.325348>,  <38.953300, 37.395855, 44.205650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107262, 37.745094, 44.325348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196621, -0.394348, 0.897680,
		0.901772, -0.286679, -0.323454,
		0.384900, 0.873101, 0.299245,
		39.222733, 38.007023, 44.415123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406551, 37.217384, 44.779644>,  <38.953300, 37.395855, 44.205650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406551, 37.217384, 44.779644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391689, 37.612194, 44.842140>,  <39.382771, 37.849079, 44.879639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391689, 37.612194, 44.842140>,  <39.406551, 37.217384, 44.779644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391689, 37.612194, 44.842140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216790, -0.144662, 0.965440,
		0.975511, 0.069743, -0.208601,
		-0.037156, 0.987020, 0.156239,
		39.380543, 37.908298, 44.889011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970657, 37.408745, 45.254765>,  <39.406551, 37.217384, 44.779644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970657, 37.408745, 45.254765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723770, 37.722477, 45.279633>,  <39.575638, 37.910717, 45.294552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723770, 37.722477, 45.279633>,  <39.970657, 37.408745, 45.254765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723770, 37.722477, 45.279633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165156, 0.051898, 0.984901,
		0.769260, 0.618170, -0.161570,
		-0.617221, 0.784329, 0.062172,
		39.538605, 37.957775, 45.298283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333241, 37.939175, 45.686619>,  <39.970657, 37.408745, 45.254765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333241, 37.939175, 45.686619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947529, 38.045101, 45.684334>,  <39.716103, 38.108658, 45.682964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947529, 38.045101, 45.684334>,  <40.333241, 37.939175, 45.686619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947529, 38.045101, 45.684334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022788, 0.104433, 0.994271,
		0.263898, 0.958627, -0.106737,
		-0.964281, 0.264819, -0.005714,
		39.658245, 38.124546, 45.682621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225296, 38.607601, 45.938488>,  <40.333241, 37.939175, 45.686619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225296, 38.607601, 45.938488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879333, 38.429794, 46.031731>,  <39.671757, 38.323109, 46.087677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879333, 38.429794, 46.031731>,  <40.225296, 38.607601, 45.938488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879333, 38.429794, 46.031731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061363, 0.367295, 0.928078,
		-0.498167, 0.817006, -0.290399,
		-0.864907, -0.444518, 0.233108,
		39.619862, 38.296440, 46.101662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759689, 39.142357, 46.196426>,  <40.225296, 38.607601, 45.938488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759689, 39.142357, 46.196426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635704, 38.791199, 46.342426>,  <39.561314, 38.580505, 46.430027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.635704, 38.791199, 46.342426>,  <39.759689, 39.142357, 46.196426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635704, 38.791199, 46.342426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101210, 0.412193, 0.905458,
		-0.945346, 0.243718, -0.216617,
		-0.309964, -0.877894, 0.364998,
		39.542713, 38.527832, 46.451927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294537, 39.371132, 46.826805>,  <39.759689, 39.142357, 46.196426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294537, 39.371132, 46.826805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325951, 38.973255, 46.853386>,  <39.344799, 38.734528, 46.869335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325951, 38.973255, 46.853386>,  <39.294537, 39.371132, 46.826805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325951, 38.973255, 46.853386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132876, 0.055618, 0.989571,
		-0.988016, -0.086550, -0.127803,
		0.078539, -0.994694, 0.066452,
		39.349514, 38.674847, 46.873322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804344, 39.175842, 47.336742>,  <39.294537, 39.371132, 46.826805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804344, 39.175842, 47.336742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063923, 38.872753, 47.309231>,  <39.219669, 38.690899, 47.292725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063923, 38.872753, 47.309231>,  <38.804344, 39.175842, 47.336742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063923, 38.872753, 47.309231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006765, -0.096144, 0.995345,
		-0.760807, -0.645457, -0.067518,
		0.648943, -0.757722, -0.068781,
		39.258606, 38.645435, 47.288597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534657, 38.678932, 47.722748>,  <38.804344, 39.175842, 47.336742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534657, 38.678932, 47.722748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927105, 38.601578, 47.722553>,  <39.162575, 38.555164, 47.722435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927105, 38.601578, 47.722553>,  <38.534657, 38.678932, 47.722748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927105, 38.601578, 47.722553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028508, -0.147131, 0.988706,
		-0.191277, -0.970028, -0.149866,
		0.981122, -0.193389, -0.000489,
		39.221443, 38.543564, 47.722408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656464, 38.342556, 48.280926>,  <38.534657, 38.678932, 47.722748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656464, 38.342556, 48.280926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044014, 38.389908, 48.193970>,  <39.276546, 38.418320, 48.141796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044014, 38.389908, 48.193970>,  <38.656464, 38.342556, 48.280926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044014, 38.389908, 48.193970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223743, -0.043134, 0.973693,
		0.105894, -0.992031, -0.068280,
		0.968878, 0.118386, -0.217393,
		39.334679, 38.425423, 48.128754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015236, 37.833019, 48.672710>,  <38.656464, 38.342556, 48.280926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015236, 37.833019, 48.672710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275177, 38.125286, 48.588989>,  <39.431141, 38.300648, 48.538757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275177, 38.125286, 48.588989>,  <39.015236, 37.833019, 48.672710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275177, 38.125286, 48.588989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272932, 0.032670, 0.961478,
		0.709362, -0.681948, -0.178193,
		0.649856, 0.730671, -0.209301,
		39.470135, 38.344486, 48.526199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657364, 37.711700, 48.936249>,  <39.015236, 37.833019, 48.672710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657364, 37.711700, 48.936249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682240, 38.109894, 48.907547>,  <39.697163, 38.348808, 48.890324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682240, 38.109894, 48.907547>,  <39.657364, 37.711700, 48.936249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682240, 38.109894, 48.907547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303863, 0.049599, 0.951424,
		0.950684, -0.080969, -0.299406,
		0.062185, 0.995482, -0.071756,
		39.700893, 38.408539, 48.886021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360535, 37.851044, 49.057732>,  <39.657364, 37.711700, 48.936249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360535, 37.851044, 49.057732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146893, 38.179653, 49.137566>,  <40.018707, 38.376820, 49.185467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.146893, 38.179653, 49.137566>,  <40.360535, 37.851044, 49.057732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146893, 38.179653, 49.137566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348048, -0.001469, 0.937476,
		0.770448, 0.570179, -0.285144,
		-0.534110, 0.821519, 0.199582,
		39.986660, 38.426109, 49.197441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862339, 38.342823, 49.426838>,  <40.360535, 37.851044, 49.057732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862339, 38.342823, 49.426838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484062, 38.444157, 49.508312>,  <40.257095, 38.504955, 49.557198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484062, 38.444157, 49.508312>,  <40.862339, 38.342823, 49.426838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484062, 38.444157, 49.508312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228534, 0.072536, 0.970830,
		0.231170, 0.964656, -0.126492,
		-0.945692, 0.253334, 0.203689,
		40.200356, 38.520157, 49.569420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002541, 38.870270, 49.901669>,  <40.862339, 38.342823, 49.426838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002541, 38.870270, 49.901669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.612167, 38.796291, 49.947876>,  <40.377941, 38.751904, 49.975601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.612167, 38.796291, 49.947876>,  <41.002541, 38.870270, 49.901669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612167, 38.796291, 49.947876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113890, 0.019460, 0.993303,
		-0.185958, 0.982556, 0.002072,
		-0.975935, -0.184949, 0.115522,
		40.319386, 38.740807, 49.982533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750561, 39.279488, 50.490532>,  <41.002541, 38.870270, 49.901669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750561, 39.279488, 50.490532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.450119, 39.015507, 50.483425>,  <40.269855, 38.857121, 50.479160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.450119, 39.015507, 50.483425>,  <40.750561, 39.279488, 50.490532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450119, 39.015507, 50.483425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023827, 0.000198, 0.999716,
		-0.659757, 0.751311, -0.015873,
		-0.751101, -0.659948, -0.017771,
		40.224789, 38.817524, 50.478092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235790, 39.512142, 51.024803>,  <40.750561, 39.279488, 50.490532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235790, 39.512142, 51.024803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178501, 39.122013, 50.957596>,  <40.144127, 38.887936, 50.917271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178501, 39.122013, 50.957596>,  <40.235790, 39.512142, 51.024803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178501, 39.122013, 50.957596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049373, -0.162515, 0.985470,
		-0.988458, 0.149436, -0.024879,
		-0.143221, -0.975325, -0.168017,
		40.135536, 38.829414, 50.907192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611633, 39.229572, 51.413658>,  <40.235790, 39.512142, 51.024803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611633, 39.229572, 51.413658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876251, 38.938030, 51.343082>,  <40.035023, 38.763103, 51.300735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876251, 38.938030, 51.343082>,  <39.611633, 39.229572, 51.413658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876251, 38.938030, 51.343082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060733, -0.286586, 0.956128,
		-0.747445, -0.621803, -0.233854,
		0.661542, -0.728855, -0.176443,
		40.074715, 38.719376, 51.290150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280773, 38.573524, 51.662933>,  <39.611633, 39.229572, 51.413658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280773, 38.573524, 51.662933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.679871, 38.550457, 51.676716>,  <39.919327, 38.536617, 51.684986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.679871, 38.550457, 51.676716>,  <39.280773, 38.573524, 51.662933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679871, 38.550457, 51.676716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051558, -0.328547, 0.943079,
		-0.043065, -0.942725, -0.330779,
		0.997741, -0.057668, 0.034456,
		39.979195, 38.533157, 51.687054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067455, 38.588959, 52.341156>,  <39.280773, 38.573524, 51.662933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067455, 38.588959, 52.341156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742619, 38.392757, 52.467594>,  <38.547718, 38.275036, 52.543457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742619, 38.392757, 52.467594>,  <39.067455, 38.588959, 52.341156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742619, 38.392757, 52.467594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128148, -0.378557, -0.916664,
		0.569284, -0.784922, 0.244566,
		-0.812092, -0.490501, 0.316093,
		38.498989, 38.245605, 52.562424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058468, 37.908897, 52.149944>,  <39.067455, 38.588959, 52.341156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058468, 37.908897, 52.149944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661789, 37.924282, 52.199024>,  <38.423782, 37.933514, 52.228474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661789, 37.924282, 52.199024>,  <39.058468, 37.908897, 52.149944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661789, 37.924282, 52.199024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123285, -0.013166, -0.992284,
		-0.036556, -0.999173, 0.017800,
		-0.991698, 0.038468, 0.122702,
		38.364281, 37.935822, 52.235836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833687, 37.501751, 51.562263>,  <39.058468, 37.908897, 52.149944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833687, 37.501751, 51.562263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490978, 37.666565, 51.686310>,  <38.285355, 37.765453, 51.760738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490978, 37.666565, 51.686310>,  <38.833687, 37.501751, 51.562263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490978, 37.666565, 51.686310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313000, 0.062440, -0.947698,
		-0.409847, -0.909027, 0.075470,
		-0.856771, 0.412033, 0.310116,
		38.233948, 37.790176, 51.779346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215229, 36.990547, 51.383583>,  <38.833687, 37.501751, 51.562263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215229, 36.990547, 51.383583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088242, 37.369678, 51.395176>,  <38.012051, 37.597157, 51.402130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088242, 37.369678, 51.395176>,  <38.215229, 36.990547, 51.383583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088242, 37.369678, 51.395176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454405, -0.125235, -0.881948,
		-0.832304, -0.293157, 0.470455,
		-0.317467, 0.947826, 0.028978,
		37.993000, 37.654026, 51.403870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579296, 36.882702, 51.137554>,  <38.215229, 36.990547, 51.383583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579296, 36.882702, 51.137554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600956, 37.282021, 51.128910>,  <37.613953, 37.521614, 51.123726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600956, 37.282021, 51.128910>,  <37.579296, 36.882702, 51.137554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600956, 37.282021, 51.128910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464377, 0.006021, -0.885617,
		-0.883981, 0.057993, 0.463913,
		0.054153, 0.998299, -0.021608,
		37.617203, 37.581509, 51.122429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971722, 37.053707, 50.845074>,  <37.579296, 36.882702, 51.137554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971722, 37.053707, 50.845074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185493, 37.391132, 50.823952>,  <37.313759, 37.593586, 50.811279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185493, 37.391132, 50.823952>,  <36.971722, 37.053707, 50.845074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185493, 37.391132, 50.823952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416720, 0.208624, -0.884771,
		-0.735342, 0.494855, 0.463024,
		0.534432, 0.843560, -0.052806,
		37.345821, 37.644199, 50.808109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396698, 37.498016, 50.573940>,  <36.971722, 37.053707, 50.845074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396698, 37.498016, 50.573940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757545, 37.651829, 50.495640>,  <36.974052, 37.744118, 50.448658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.757545, 37.651829, 50.495640>,  <36.396698, 37.498016, 50.573940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757545, 37.651829, 50.495640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267918, 0.143559, -0.952686,
		-0.338239, 0.911879, 0.232530,
		0.902117, 0.384535, -0.195751,
		37.028179, 37.767189, 50.436913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354668, 38.067707, 50.056896>,  <36.396698, 37.498016, 50.573940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354668, 38.067707, 50.056896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744152, 37.982815, 50.023785>,  <36.977840, 37.931881, 50.003918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744152, 37.982815, 50.023785>,  <36.354668, 38.067707, 50.056896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744152, 37.982815, 50.023785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037950, 0.207187, -0.977565,
		0.224621, 0.955003, 0.193685,
		0.973707, -0.212231, -0.082781,
		37.036263, 37.919144, 49.998951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700775, 38.651764, 49.706779>,  <36.354668, 38.067707, 50.056896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700775, 38.651764, 49.706779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921570, 38.323711, 49.646507>,  <37.054047, 38.126881, 49.610344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921570, 38.323711, 49.646507>,  <36.700775, 38.651764, 49.706779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921570, 38.323711, 49.646507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116345, 0.254686, -0.960000,
		0.825699, 0.512372, 0.236000,
		0.551983, -0.820128, -0.150682,
		37.087166, 38.077675, 49.601303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075577, 38.862148, 49.159924>,  <36.700775, 38.651764, 49.706779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075577, 38.862148, 49.159924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148106, 38.468964, 49.171921>,  <37.191624, 38.233051, 49.179119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148106, 38.468964, 49.171921>,  <37.075577, 38.862148, 49.159924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148106, 38.468964, 49.171921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049715, -0.039626, -0.997977,
		0.982166, 0.179466, -0.056053,
		0.181324, -0.982966, 0.029998,
		37.202503, 38.174072, 49.180920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696495, 38.627361, 48.739349>,  <37.075577, 38.862148, 49.159924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696495, 38.627361, 48.739349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433353, 38.326283, 48.749760>,  <37.275471, 38.145634, 48.756004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433353, 38.326283, 48.749760>,  <37.696495, 38.627361, 48.739349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433353, 38.326283, 48.749760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017792, -0.050073, -0.998587,
		0.752938, -0.656459, 0.046332,
		-0.657851, -0.752698, 0.026023,
		37.235996, 38.100471, 48.757565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928204, 38.191235, 48.230988>,  <37.696495, 38.627361, 48.739349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928204, 38.191235, 48.230988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545612, 38.080746, 48.268600>,  <37.316055, 38.014450, 48.291168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.545612, 38.080746, 48.268600>,  <37.928204, 38.191235, 48.230988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545612, 38.080746, 48.268600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049290, -0.164678, -0.985115,
		0.287600, -0.946879, 0.143896,
		-0.956481, -0.276226, 0.094033,
		37.258667, 37.997879, 48.296810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866585, 37.590088, 47.940327>,  <37.928204, 38.191235, 48.230988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866585, 37.590088, 47.940327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490303, 37.725716, 47.936203>,  <37.264534, 37.807091, 47.933727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490303, 37.725716, 47.936203>,  <37.866585, 37.590088, 47.940327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490303, 37.725716, 47.936203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075144, -0.237931, -0.968371,
		-0.330796, -0.910177, 0.249302,
		-0.940706, 0.339067, -0.010313,
		37.208092, 37.827435, 47.933109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437698, 37.126770, 47.430870>,  <37.866585, 37.590088, 47.940327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437698, 37.126770, 47.430870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215054, 37.455063, 47.482388>,  <37.081467, 37.652039, 47.513298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.215054, 37.455063, 47.482388>,  <37.437698, 37.126770, 47.430870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215054, 37.455063, 47.482388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119733, 0.074159, -0.990033,
		-0.822102, -0.566480, 0.056992,
		-0.556608, 0.820732, 0.128793,
		37.048073, 37.701283, 47.521027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699665, 37.026344, 47.153465>,  <37.437698, 37.126770, 47.430870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699665, 37.026344, 47.153465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796860, 37.414352, 47.154812>,  <36.855179, 37.647160, 47.155621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796860, 37.414352, 47.154812>,  <36.699665, 37.026344, 47.153465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796860, 37.414352, 47.154812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060128, 0.018521, -0.998019,
		-0.968164, 0.242305, 0.062826,
		0.242988, 0.970024, 0.003362,
		36.869755, 37.705360, 47.155819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294788, 37.236965, 46.643810>,  <36.699665, 37.026344, 47.153465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294788, 37.236965, 46.643810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535458, 37.554375, 46.680279>,  <36.679859, 37.744820, 46.702160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535458, 37.554375, 46.680279>,  <36.294788, 37.236965, 46.643810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535458, 37.554375, 46.680279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178139, 0.244581, -0.953125,
		-0.778624, 0.557229, 0.288515,
		0.601674, 0.793522, 0.091173,
		36.715961, 37.792431, 46.707630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920200, 37.871250, 46.451687>,  <36.294788, 37.236965, 46.643810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920200, 37.871250, 46.451687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308487, 37.926064, 46.372757>,  <36.541458, 37.958950, 46.325401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308487, 37.926064, 46.372757>,  <35.920200, 37.871250, 46.451687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308487, 37.926064, 46.372757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216812, 0.145941, -0.965243,
		-0.103471, 0.979757, 0.171377,
		0.970714, 0.137032, -0.197322,
		36.599701, 37.967175, 46.313560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913380, 38.367592, 45.921967>,  <35.920200, 37.871250, 46.451687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913380, 38.367592, 45.921967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300079, 38.265373, 45.918041>,  <36.532097, 38.204041, 45.915688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300079, 38.265373, 45.918041>,  <35.913380, 38.367592, 45.921967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300079, 38.265373, 45.918041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033511, 0.164629, -0.985786,
		0.253531, 0.952677, 0.167718,
		0.966747, -0.255548, -0.009814,
		36.590103, 38.188709, 45.915096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238026, 38.873600, 45.425938>,  <35.913380, 38.367592, 45.921967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238026, 38.873600, 45.425938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467804, 38.546375, 45.437130>,  <36.605671, 38.350040, 45.443848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.467804, 38.546375, 45.437130>,  <36.238026, 38.873600, 45.425938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467804, 38.546375, 45.437130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065770, 0.012053, -0.997762,
		0.815897, 0.575000, 0.060728,
		0.574445, -0.818065, 0.027984,
		36.640137, 38.300957, 45.445526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412457, 38.856396, 44.661831>,  <36.238026, 38.873600, 45.425938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412457, 38.856396, 44.661831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559238, 38.517513, 44.815495>,  <36.647308, 38.314182, 44.907692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559238, 38.517513, 44.815495>,  <36.412457, 38.856396, 44.661831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559238, 38.517513, 44.815495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142898, -0.356729, -0.923214,
		0.919197, 0.393675, -0.009839,
		0.366956, -0.847210, 0.384159,
		36.669327, 38.263351, 44.930744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064766, 38.764946, 44.480042>,  <36.412457, 38.856396, 44.661831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064766, 38.764946, 44.480042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943649, 38.387066, 44.530411>,  <36.870979, 38.160339, 44.560631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943649, 38.387066, 44.530411>,  <37.064766, 38.764946, 44.480042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943649, 38.387066, 44.530411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147823, -0.177079, -0.973032,
		0.941523, -0.276010, 0.193266,
		-0.302790, -0.944702, 0.125923,
		36.852814, 38.103657, 44.568188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.906399, 41.946274, 28.265652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.652077, 42.208164, 28.429157>,  <45.499485, 42.365299, 28.527260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.652077, 42.208164, 28.429157>,  <45.906399, 41.946274, 28.265652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652077, 42.208164, 28.429157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344142, -0.714500, 0.609144,
		0.690883, 0.246624, 0.679601,
		-0.635804, 0.654726, 0.408762,
		45.461334, 42.404583, 28.551786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984955, 41.795502, 28.955799>,  <45.906399, 41.946274, 28.265652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984955, 41.795502, 28.955799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.641689, 42.000553, 28.944715>,  <45.435730, 42.123585, 28.938065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.641689, 42.000553, 28.944715>,  <45.984955, 41.795502, 28.955799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641689, 42.000553, 28.944715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386778, -0.610115, 0.691493,
		0.337570, 0.604132, 0.721852,
		-0.858166, 0.512624, -0.027709,
		45.384239, 42.154339, 28.936403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897175, 41.817829, 29.638266>,  <45.984955, 41.795502, 28.955799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897175, 41.817829, 29.638266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548378, 41.889240, 29.455944>,  <45.339100, 41.932087, 29.346550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.548378, 41.889240, 29.455944>,  <45.897175, 41.817829, 29.638266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548378, 41.889240, 29.455944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440031, -0.693843, 0.570048,
		-0.214486, 0.697645, 0.683584,
		-0.871991, 0.178531, -0.455805,
		45.286781, 41.942799, 29.319202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347065, 41.876553, 30.219448>,  <45.897175, 41.817829, 29.638266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347065, 41.876553, 30.219448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.185669, 41.778053, 29.866959>,  <45.088829, 41.718952, 29.655464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.185669, 41.778053, 29.866959>,  <45.347065, 41.876553, 30.219448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185669, 41.778053, 29.866959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596943, -0.659060, 0.457492,
		-0.693436, 0.710635, 0.118930,
		-0.403492, -0.246247, -0.881224,
		45.064621, 41.704178, 29.602591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567413, 41.944954, 30.340780>,  <45.347065, 41.876553, 30.219448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567413, 41.944954, 30.340780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610981, 41.708324, 30.021236>,  <44.637123, 41.566345, 29.829510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610981, 41.708324, 30.021236>,  <44.567413, 41.944954, 30.340780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610981, 41.708324, 30.021236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570896, -0.695115, 0.436913,
		-0.813766, 0.408475, -0.413441,
		0.108921, -0.591576, -0.798858,
		44.643658, 41.530853, 29.781580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920990, 41.702412, 30.147902>,  <44.567413, 41.944954, 30.340780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920990, 41.702412, 30.147902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190319, 41.449436, 29.994717>,  <44.351917, 41.297653, 29.902805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.190319, 41.449436, 29.994717>,  <43.920990, 41.702412, 30.147902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190319, 41.449436, 29.994717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450410, -0.761635, 0.465879,
		-0.586316, -0.141196, -0.797682,
		0.673323, -0.632437, -0.382962,
		44.392315, 41.259705, 29.879827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515610, 41.184788, 29.966223>,  <43.920990, 41.702412, 30.147902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515610, 41.184788, 29.966223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.882309, 41.024998, 29.966028>,  <44.102329, 40.929123, 29.965912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.882309, 41.024998, 29.966028>,  <43.515610, 41.184788, 29.966223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882309, 41.024998, 29.966028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322977, -0.741912, 0.587582,
		-0.235081, -0.538507, -0.809165,
		0.916746, -0.399471, -0.000484,
		44.157333, 40.905155, 29.965883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316593, 40.534267, 30.095901>,  <43.515610, 41.184788, 29.966223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316593, 40.534267, 30.095901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710510, 40.504311, 30.158609>,  <43.946861, 40.486336, 30.196234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710510, 40.504311, 30.158609>,  <43.316593, 40.534267, 30.095901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710510, 40.504311, 30.158609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165812, -0.674548, 0.719369,
		0.051876, -0.734423, -0.676707,
		0.984792, -0.074888, 0.156769,
		44.005947, 40.481846, 30.205641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502216, 39.782078, 29.940670>,  <43.316593, 40.534267, 30.095901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502216, 39.782078, 29.940670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.760899, 39.940151, 30.201624>,  <43.916107, 40.034996, 30.358196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.760899, 39.940151, 30.201624>,  <43.502216, 39.782078, 29.940670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760899, 39.940151, 30.201624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236031, -0.709651, 0.663841,
		0.725303, -0.583291, -0.365658,
		0.646702, 0.395180, 0.652386,
		43.954910, 40.058704, 30.397341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721130, 39.128014, 30.434481>,  <43.502216, 39.782078, 29.940670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721130, 39.128014, 30.434481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.880383, 39.430134, 30.642714>,  <43.975933, 39.611408, 30.767653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.880383, 39.430134, 30.642714>,  <43.721130, 39.128014, 30.434481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880383, 39.430134, 30.642714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139058, -0.511248, 0.848109,
		0.906726, -0.410052, -0.098514,
		0.398134, 0.755304, 0.520582,
		43.999825, 39.656723, 30.798889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209671, 38.839130, 30.845280>,  <43.721130, 39.128014, 30.434481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209671, 38.839130, 30.845280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135155, 39.197948, 31.005577>,  <44.090443, 39.413239, 31.101755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.135155, 39.197948, 31.005577>,  <44.209671, 38.839130, 30.845280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135155, 39.197948, 31.005577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028435, -0.412637, 0.910452,
		0.982082, 0.158217, 0.102380,
		-0.186295, 0.897050, 0.400744,
		44.079266, 39.467064, 31.125801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672493, 38.868073, 31.502947>,  <44.209671, 38.839130, 30.845280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672493, 38.868073, 31.502947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350147, 39.104832, 31.509117>,  <44.156738, 39.246887, 31.512819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350147, 39.104832, 31.509117>,  <44.672493, 38.868073, 31.502947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350147, 39.104832, 31.509117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073953, -0.126466, 0.989210,
		0.587459, 0.796032, 0.145687,
		-0.805867, 0.591895, 0.015424,
		44.108387, 39.282402, 31.513744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693352, 39.067451, 32.121040>,  <44.672493, 38.868073, 31.502947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693352, 39.067451, 32.121040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.321201, 39.185677, 32.034290>,  <44.097912, 39.256611, 31.982241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.321201, 39.185677, 32.034290>,  <44.693352, 39.067451, 32.121040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321201, 39.185677, 32.034290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292421, -0.241540, 0.925283,
		0.221094, 0.924285, 0.311152,
		-0.930380, 0.295561, -0.216877,
		44.042088, 39.274345, 31.969227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452782, 39.346519, 32.837257>,  <44.693352, 39.067451, 32.121040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452782, 39.346519, 32.837257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137730, 39.248554, 32.611107>,  <43.948696, 39.189777, 32.475418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137730, 39.248554, 32.611107>,  <44.452782, 39.346519, 32.837257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137730, 39.248554, 32.611107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401070, -0.492794, 0.772203,
		-0.467734, 0.834969, 0.289916,
		-0.787634, -0.244909, -0.565378,
		43.901440, 39.175083, 32.441494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929054, 39.251884, 33.340096>,  <44.452782, 39.346519, 32.837257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929054, 39.251884, 33.340096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746502, 39.081154, 33.027805>,  <43.636971, 38.978714, 32.840431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746502, 39.081154, 33.027805>,  <43.929054, 39.251884, 33.340096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746502, 39.081154, 33.027805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348827, -0.721368, 0.598287,
		-0.818555, 0.545388, 0.180333,
		-0.456385, -0.426826, -0.780726,
		43.609585, 38.953106, 32.793587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309837, 39.141636, 33.509781>,  <43.929054, 39.251884, 33.340096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309837, 39.141636, 33.509781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369236, 38.885662, 33.208202>,  <43.404877, 38.732079, 33.027256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369236, 38.885662, 33.208202>,  <43.309837, 39.141636, 33.509781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369236, 38.885662, 33.208202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156032, -0.768012, 0.621137,
		-0.976525, 0.025400, -0.213900,
		0.148501, -0.639932, -0.753946,
		43.413788, 38.693684, 32.982018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828407, 38.632149, 33.526611>,  <43.309837, 39.141636, 33.509781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828407, 38.632149, 33.526611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115173, 38.450195, 33.315289>,  <43.287235, 38.341022, 33.188496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115173, 38.450195, 33.315289>,  <42.828407, 38.632149, 33.526611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115173, 38.450195, 33.315289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107475, -0.820861, 0.560925,
		-0.688824, -0.345357, -0.637378,
		0.716918, -0.454881, -0.528311,
		43.330250, 38.313732, 33.156796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557308, 37.975029, 33.199673>,  <42.828407, 38.632149, 33.526611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557308, 37.975029, 33.199673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.954174, 37.959564, 33.247189>,  <43.192295, 37.950287, 33.275700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.954174, 37.959564, 33.247189>,  <42.557308, 37.975029, 33.199673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954174, 37.959564, 33.247189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097488, -0.834236, 0.542722,
		0.078117, -0.550051, -0.831470,
		0.992166, -0.038662, 0.118791,
		43.251823, 37.947964, 33.282825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682697, 37.305462, 33.439724>,  <42.557308, 37.975029, 33.199673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682697, 37.305462, 33.439724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.053837, 37.435799, 33.512302>,  <43.276520, 37.514000, 33.555851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.053837, 37.435799, 33.512302>,  <42.682697, 37.305462, 33.439724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053837, 37.435799, 33.512302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128364, -0.735790, 0.664933,
		0.350171, -0.593666, -0.724528,
		0.927849, 0.325843, 0.181447,
		43.332191, 37.533550, 33.566738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096848, 36.670696, 33.479282>,  <42.682697, 37.305462, 33.439724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096848, 36.670696, 33.479282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292419, 36.948040, 33.691021>,  <43.409763, 37.114445, 33.818062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292419, 36.948040, 33.691021>,  <43.096848, 36.670696, 33.479282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292419, 36.948040, 33.691021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142464, -0.662141, 0.735713,
		0.860611, -0.284299, -0.422519,
		0.488930, 0.693356, 0.529344,
		43.439098, 37.156048, 33.849823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806011, 36.309475, 33.660072>,  <43.096848, 36.670696, 33.479282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806011, 36.309475, 33.660072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750690, 36.603840, 33.925194>,  <43.717499, 36.780460, 34.084267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750690, 36.603840, 33.925194>,  <43.806011, 36.309475, 33.660072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750690, 36.603840, 33.925194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255211, -0.620150, 0.741809,
		0.956942, 0.271751, -0.102042,
		-0.138306, 0.735911, 0.662802,
		43.709198, 36.824612, 34.124035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454491, 36.596619, 34.003883>,  <43.806011, 36.309475, 33.660072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454491, 36.596619, 34.003883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155979, 36.350060, 34.104378>,  <43.976871, 36.202126, 34.164673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.155979, 36.350060, 34.104378>,  <44.454491, 36.596619, 34.003883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155979, 36.350060, 34.104378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660102, -0.733890, 0.160224,
		0.085618, 0.285413, 0.954573,
		-0.746281, -0.616397, 0.251235,
		43.932095, 36.165142, 34.179749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207478, 36.174892, 33.912792>,  <44.454491, 36.596619, 34.003883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207478, 36.174892, 33.912792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569935, 36.057159, 33.791290>,  <45.787411, 35.986519, 33.718388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.569935, 36.057159, 33.791290>,  <45.207478, 36.174892, 33.912792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569935, 36.057159, 33.791290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223612, 0.942955, -0.246645,
		0.359023, 0.155573, 0.920271,
		0.906146, -0.294335, -0.303755,
		45.841778, 35.968861, 33.700165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791752, 36.603443, 34.204994>,  <45.207478, 36.174892, 33.912792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791752, 36.603443, 34.204994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921371, 36.465614, 33.852570>,  <45.999142, 36.382919, 33.641117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921371, 36.465614, 33.852570>,  <45.791752, 36.603443, 34.204994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921371, 36.465614, 33.852570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373064, 0.902384, -0.215698,
		0.869376, -0.258795, 0.420965,
		0.324050, -0.344569, -0.881058,
		46.018585, 36.362244, 33.588253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390488, 36.894642, 34.122219>,  <45.791752, 36.603443, 34.204994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390488, 36.894642, 34.122219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.340916, 36.774414, 33.743950>,  <46.311172, 36.702278, 33.516987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.340916, 36.774414, 33.743950>,  <46.390488, 36.894642, 34.122219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340916, 36.774414, 33.743950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344999, 0.880514, -0.325073,
		0.930385, -0.366543, -0.005429,
		-0.123933, -0.300570, -0.945673,
		46.303734, 36.684242, 33.460247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.028366, 37.028698, 33.750416>,  <46.390488, 36.894642, 34.122219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.028366, 37.028698, 33.750416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.714554, 37.001141, 33.503914>,  <46.526268, 36.984608, 33.356014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.714554, 37.001141, 33.503914>,  <47.028366, 37.028698, 33.750416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714554, 37.001141, 33.503914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232181, 0.888877, -0.394956,
		0.574980, -0.452937, -0.681356,
		-0.784531, -0.068894, -0.616250,
		46.479195, 36.980473, 33.319038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.285130, 37.356659, 33.215256>,  <47.028366, 37.028698, 33.750416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.285130, 37.356659, 33.215256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.889736, 37.359375, 33.154778>,  <46.652500, 37.361004, 33.118492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.889736, 37.359375, 33.154778>,  <47.285130, 37.356659, 33.215256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889736, 37.359375, 33.154778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063759, 0.924691, -0.375343,
		0.137259, -0.380659, -0.914472,
		-0.988481, 0.006787, -0.151193,
		46.593193, 37.361412, 33.109421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159985, 37.512280, 32.511963>,  <47.285130, 37.356659, 33.215256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159985, 37.512280, 32.511963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.833790, 37.609928, 32.721870>,  <46.638073, 37.668518, 32.847813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.833790, 37.609928, 32.721870>,  <47.159985, 37.512280, 32.511963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.833790, 37.609928, 32.721870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053213, 0.871228, -0.487985,
		-0.576318, -0.425872, -0.697489,
		-0.815491, 0.244119, 0.524766,
		46.589142, 37.683163, 32.879299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744793, 37.802464, 32.072075>,  <47.159985, 37.512280, 32.511963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744793, 37.802464, 32.072075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562347, 37.931934, 32.403664>,  <46.452881, 38.009617, 32.602615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562347, 37.931934, 32.403664>,  <46.744793, 37.802464, 32.072075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562347, 37.931934, 32.403664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060606, 0.940644, -0.333939,
		-0.887855, -0.102074, -0.448659,
		-0.456115, 0.323681, 0.828969,
		46.425514, 38.029037, 32.652355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299274, 38.246586, 31.757860>,  <46.744793, 37.802464, 32.072075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299274, 38.246586, 31.757860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266060, 38.363731, 32.138878>,  <46.246132, 38.434017, 32.367489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266060, 38.363731, 32.138878>,  <46.299274, 38.246586, 31.757860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266060, 38.363731, 32.138878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094975, 0.949167, -0.300103,
		-0.992010, -0.115387, -0.051002,
		-0.083037, 0.292862, 0.952542,
		46.241150, 38.451591, 32.424641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762440, 38.758163, 31.844475>,  <46.299274, 38.246586, 31.757860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762440, 38.758163, 31.844475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.005177, 38.824249, 32.155460>,  <46.150818, 38.863899, 32.342052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.005177, 38.824249, 32.155460>,  <45.762440, 38.758163, 31.844475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005177, 38.824249, 32.155460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064484, 0.964701, -0.255331,
		-0.792205, 0.205079, 0.574765,
		0.606839, 0.165211, 0.777465,
		46.187229, 38.873814, 32.388699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587925, 39.399033, 31.998165>,  <45.762440, 38.758163, 31.844475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587925, 39.399033, 31.998165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942333, 39.341492, 32.174473>,  <46.154976, 39.306965, 32.280258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942333, 39.341492, 32.174473>,  <45.587925, 39.399033, 31.998165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942333, 39.341492, 32.174473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198609, 0.976772, -0.080441,
		-0.418962, 0.158814, 0.894008,
		0.886017, -0.143856, 0.440772,
		46.208138, 39.298336, 32.306705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637215, 39.996391, 32.314960>,  <45.587925, 39.399033, 31.998165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637215, 39.996391, 32.314960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006512, 39.843147, 32.303265>,  <46.228088, 39.751202, 32.296249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006512, 39.843147, 32.303265>,  <45.637215, 39.996391, 32.314960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006512, 39.843147, 32.303265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376567, 0.917337, -0.129190,
		0.076313, 0.108264, 0.991189,
		0.923241, -0.383108, -0.029236,
		46.283485, 39.728214, 32.294495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010860, 40.350357, 32.855812>,  <45.637215, 39.996391, 32.314960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010860, 40.350357, 32.855812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265652, 40.233292, 32.570545>,  <46.418526, 40.163052, 32.399387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265652, 40.233292, 32.570545>,  <46.010860, 40.350357, 32.855812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265652, 40.233292, 32.570545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420795, 0.907148, 0.003568,
		0.645902, -0.302369, 0.700987,
		0.636978, -0.292668, -0.713165,
		46.456745, 40.145493, 32.356594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730415, 40.585308, 33.084179>,  <46.010860, 40.350357, 32.855812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730415, 40.585308, 33.084179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.774059, 40.489429, 32.698299>,  <46.800247, 40.431904, 32.466770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.774059, 40.489429, 32.698299>,  <46.730415, 40.585308, 33.084179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774059, 40.489429, 32.698299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579030, 0.804166, -0.134316,
		0.807972, -0.543934, 0.226533,
		0.109112, -0.239693, -0.964698,
		46.806793, 40.417522, 32.408890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411293, 40.661293, 32.960449>,  <46.730415, 40.585308, 33.084179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411293, 40.661293, 32.960449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.223351, 40.688087, 32.608368>,  <47.110584, 40.704163, 32.397121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.223351, 40.688087, 32.608368>,  <47.411293, 40.661293, 32.960449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223351, 40.688087, 32.608368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448458, 0.876970, -0.172651,
		0.760344, -0.475853, -0.442086,
		-0.469853, 0.066983, -0.880200,
		47.082394, 40.708183, 32.344307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866867, 40.957462, 32.456539>,  <47.411293, 40.661293, 32.960449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866867, 40.957462, 32.456539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.513508, 41.023674, 32.281174>,  <47.301491, 41.063400, 32.175957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.513508, 41.023674, 32.281174>,  <47.866867, 40.957462, 32.456539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513508, 41.023674, 32.281174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269797, 0.944585, -0.187001,
		0.383161, -0.283478, -0.879106,
		-0.883401, 0.165529, -0.438409,
		47.248489, 41.073334, 32.149651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.115631, 41.225296, 31.823874>,  <47.866867, 40.957462, 32.456539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.115631, 41.225296, 31.823874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.734821, 41.331123, 31.885403>,  <47.506336, 41.394619, 31.922319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.734821, 41.331123, 31.885403>,  <48.115631, 41.225296, 31.823874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734821, 41.331123, 31.885403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244727, 0.959949, -0.136409,
		-0.183750, -0.092220, -0.978637,
		-0.952021, 0.264564, 0.153822,
		47.449215, 41.410492, 31.931549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.889210, 41.582424, 31.309292>,  <48.115631, 41.225296, 31.823874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.889210, 41.582424, 31.309292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.593742, 41.673691, 31.563005>,  <47.416462, 41.728451, 31.715233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.593742, 41.673691, 31.563005>,  <47.889210, 41.582424, 31.309292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593742, 41.673691, 31.563005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019189, 0.933472, -0.358136,
		-0.673801, -0.276714, -0.685144,
		-0.738664, 0.228165, 0.634284,
		47.372143, 41.742142, 31.753290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375923, 42.017616, 30.910900>,  <47.889210, 41.582424, 31.309292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375923, 42.017616, 30.910900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.328964, 42.087200, 31.301992>,  <47.300789, 42.128948, 31.536648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.328964, 42.087200, 31.301992>,  <47.375923, 42.017616, 30.910900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.328964, 42.087200, 31.301992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173671, 0.965770, -0.192681,
		-0.977781, -0.192424, -0.083166,
		-0.117396, 0.173957, 0.977731,
		47.293747, 42.139385, 31.595312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717125, 42.349396, 30.990265>,  <47.375923, 42.017616, 30.910900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717125, 42.349396, 30.990265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.937847, 42.425220, 31.315123>,  <47.070278, 42.470715, 31.510036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.937847, 42.425220, 31.315123>,  <46.717125, 42.349396, 30.990265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937847, 42.425220, 31.315123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241736, 0.968373, -0.061784,
		-0.798171, -0.162232, 0.580175,
		0.551803, 0.189564, 0.812145,
		47.103390, 42.482090, 31.558765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263710, 42.848064, 31.484262>,  <46.717125, 42.349396, 30.990265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263710, 42.848064, 31.484262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.651150, 42.867146, 31.581867>,  <46.883614, 42.878593, 31.640430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.651150, 42.867146, 31.581867>,  <46.263710, 42.848064, 31.484262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651150, 42.867146, 31.581867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055627, 0.998121, 0.025685,
		-0.242328, -0.038453, 0.969432,
		0.968598, 0.047703, 0.244012,
		46.941730, 42.881454, 31.655071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.404671, 39.450474, 40.231976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056427, 39.253906, 40.222607>,  <39.847481, 39.135963, 40.216984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056427, 39.253906, 40.222607>,  <40.404671, 39.450474, 40.231976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056427, 39.253906, 40.222607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109718, -0.147528, -0.982953,
		0.479591, -0.858334, 0.182357,
		-0.870606, -0.491424, -0.023422,
		39.795246, 39.106480, 40.215580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562580, 38.708702, 39.848053>,  <40.404671, 39.450474, 40.231976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562580, 38.708702, 39.848053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180420, 38.826797, 39.850739>,  <39.951122, 38.897655, 39.852348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180420, 38.826797, 39.850739>,  <40.562580, 38.708702, 39.848053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180420, 38.826797, 39.850739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061863, -0.177855, -0.982110,
		-0.288760, -0.938725, 0.188187,
		-0.955401, 0.295235, 0.006715,
		39.893799, 38.915367, 39.852753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276081, 38.158607, 39.501522>,  <40.562580, 38.708702, 39.848053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276081, 38.158607, 39.501522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024418, 38.469006, 39.483658>,  <39.873421, 38.655243, 39.472939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024418, 38.469006, 39.483658>,  <40.276081, 38.158607, 39.501522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024418, 38.469006, 39.483658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079172, -0.121135, -0.989473,
		-0.773234, -0.619000, 0.137650,
		-0.629159, 0.775993, -0.044658,
		39.835670, 38.701805, 39.470261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670055, 37.950096, 39.106953>,  <40.276081, 38.158607, 39.501522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670055, 37.950096, 39.106953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659813, 38.347775, 39.065147>,  <39.653667, 38.586380, 39.040066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659813, 38.347775, 39.065147>,  <39.670055, 37.950096, 39.106953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659813, 38.347775, 39.065147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189786, -0.107480, -0.975925,
		-0.981492, -0.005153, 0.191436,
		-0.025604, 0.994194, -0.104512,
		39.652130, 38.646034, 39.033794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986824, 38.136593, 39.006439>,  <39.670055, 37.950096, 39.106953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986824, 38.136593, 39.006439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248539, 38.394154, 38.847794>,  <39.405567, 38.548691, 38.752605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248539, 38.394154, 38.847794>,  <38.986824, 38.136593, 39.006439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248539, 38.394154, 38.847794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250206, -0.310599, -0.917020,
		-0.713654, 0.699231, -0.042115,
		0.654290, 0.643898, -0.396612,
		39.444824, 38.587322, 38.728809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680630, 38.304527, 38.393917>,  <38.986824, 38.136593, 39.006439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680630, 38.304527, 38.393917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040707, 38.466049, 38.328674>,  <39.256752, 38.562962, 38.289528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040707, 38.466049, 38.328674>,  <38.680630, 38.304527, 38.393917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040707, 38.466049, 38.328674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120633, -0.128672, -0.984323,
		-0.418460, 0.905752, -0.067117,
		0.900188, 0.403803, -0.163108,
		39.310764, 38.587189, 38.279743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546604, 38.680794, 37.824009>,  <38.680630, 38.304527, 38.393917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546604, 38.680794, 37.824009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944378, 38.643551, 37.843739>,  <39.183041, 38.621204, 37.855576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944378, 38.643551, 37.843739>,  <38.546604, 38.680794, 37.824009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944378, 38.643551, 37.843739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036184, -0.137857, -0.989791,
		0.098961, 0.986066, -0.133720,
		0.994433, -0.093112, 0.049322,
		39.242706, 38.615616, 37.858536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873135, 39.207397, 37.443352>,  <38.546604, 38.680794, 37.824009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873135, 39.207397, 37.443352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137470, 38.907608, 37.459263>,  <39.296070, 38.727734, 37.468811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137470, 38.907608, 37.459263>,  <38.873135, 39.207397, 37.443352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137470, 38.907608, 37.459263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228992, 0.150869, -0.961666,
		0.714744, 0.644611, 0.271324,
		0.660835, -0.749476, 0.039778,
		39.335720, 38.682766, 37.471195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154087, 39.392197, 36.795307>,  <38.873135, 39.207397, 37.443352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154087, 39.392197, 36.795307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318054, 39.037033, 36.878819>,  <39.416435, 38.823936, 36.928925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318054, 39.037033, 36.878819>,  <39.154087, 39.392197, 36.795307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318054, 39.037033, 36.878819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210118, -0.130819, -0.968884,
		0.887592, 0.441030, 0.132941,
		0.409916, -0.887907, 0.208783,
		39.441029, 38.770660, 36.941452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704876, 39.295971, 36.387718>,  <39.154087, 39.392197, 36.795307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704876, 39.295971, 36.387718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658543, 38.910664, 36.484631>,  <39.630741, 38.679478, 36.542778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658543, 38.910664, 36.484631>,  <39.704876, 39.295971, 36.387718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658543, 38.910664, 36.484631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179524, -0.260205, -0.948717,
		0.976910, -0.066401, 0.203070,
		-0.115836, -0.963267, 0.242277,
		39.623791, 38.621685, 36.557312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244137, 39.018276, 36.010849>,  <39.704876, 39.295971, 36.387718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244137, 39.018276, 36.010849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968929, 38.737324, 36.083843>,  <39.803806, 38.568752, 36.127640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968929, 38.737324, 36.083843>,  <40.244137, 39.018276, 36.010849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968929, 38.737324, 36.083843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104923, -0.345102, -0.932682,
		0.718072, -0.622552, 0.311131,
		-0.688015, -0.702377, 0.182488,
		39.762524, 38.526611, 36.138588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489750, 38.434605, 35.720303>,  <40.244137, 39.018276, 36.010849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489750, 38.434605, 35.720303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107731, 38.319386, 35.748318>,  <39.878517, 38.250252, 35.765125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107731, 38.319386, 35.748318>,  <40.489750, 38.434605, 35.720303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107731, 38.319386, 35.748318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036560, -0.348899, -0.936447,
		0.294180, -0.891794, 0.343747,
		-0.955051, -0.288051, 0.070035,
		39.821217, 38.232971, 35.769329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011883, 37.840519, 35.789669>,  <40.489750, 38.434605, 35.720303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011883, 37.840519, 35.789669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053890, 37.717304, 35.411446>,  <41.079094, 37.643375, 35.184509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053890, 37.717304, 35.411446>,  <41.011883, 37.840519, 35.789669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053890, 37.717304, 35.411446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470935, 0.822044, -0.320101,
		0.875894, 0.478916, -0.058730,
		0.105023, -0.308032, -0.945561,
		41.085396, 37.624893, 35.127777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693619, 37.337818, 35.373550>,  <41.011883, 37.840519, 35.789669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693619, 37.337818, 35.373550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522385, 37.041584, 35.166367>,  <40.419643, 36.863846, 35.042057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522385, 37.041584, 35.166367>,  <40.693619, 37.337818, 35.373550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522385, 37.041584, 35.166367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298045, -0.425376, 0.854532,
		-0.853179, 0.520187, -0.038630,
		-0.428083, -0.740582, -0.517961,
		40.393959, 36.819408, 35.010979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052776, 37.205456, 35.778660>,  <40.693619, 37.337818, 35.373550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052776, 37.205456, 35.778660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184086, 36.892944, 35.566303>,  <40.262871, 36.705437, 35.438889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184086, 36.892944, 35.566303>,  <40.052776, 37.205456, 35.778660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184086, 36.892944, 35.566303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281539, -0.617419, 0.734526,
		-0.901649, -0.091660, -0.422643,
		0.328274, -0.781276, -0.530890,
		40.282570, 36.658562, 35.407036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607227, 36.692688, 36.159901>,  <40.052776, 37.205456, 35.778660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607227, 36.692688, 36.159901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884747, 36.491123, 35.954094>,  <40.051258, 36.370186, 35.830612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884747, 36.491123, 35.954094>,  <39.607227, 36.692688, 36.159901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884747, 36.491123, 35.954094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083899, -0.766121, 0.637196,
		-0.715266, -0.398918, -0.573811,
		0.693798, -0.503907, -0.514511,
		40.092884, 36.339951, 35.799740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309090, 36.036274, 36.089890>,  <39.607227, 36.692688, 36.159901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309090, 36.036274, 36.089890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703831, 35.986916, 36.048130>,  <39.940674, 35.957302, 36.023075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703831, 35.986916, 36.048130>,  <39.309090, 36.036274, 36.089890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703831, 35.986916, 36.048130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015948, -0.717071, 0.696817,
		-0.160846, -0.685990, -0.709610,
		0.986851, -0.123397, -0.104397,
		39.999886, 35.949898, 36.016811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449875, 35.255867, 36.156689>,  <39.309090, 36.036274, 36.089890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449875, 35.255867, 36.156689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790283, 35.446983, 36.243847>,  <39.994530, 35.561653, 36.296143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790283, 35.446983, 36.243847>,  <39.449875, 35.255867, 36.156689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790283, 35.446983, 36.243847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167385, -0.640100, 0.749836,
		0.497737, -0.601656, -0.624715,
		0.851023, 0.477789, 0.217893,
		40.045589, 35.590321, 36.309216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062195, 34.770294, 36.192238>,  <39.449875, 35.255867, 36.156689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062195, 34.770294, 36.192238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192326, 35.065151, 36.429142>,  <40.270405, 35.242065, 36.571285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192326, 35.065151, 36.429142>,  <40.062195, 34.770294, 36.192238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192326, 35.065151, 36.429142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113703, -0.652287, 0.749395,
		0.938740, -0.176456, -0.296023,
		0.325327, 0.737146, 0.592265,
		40.289925, 35.286297, 36.606823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506229, 34.441021, 36.561150>,  <40.062195, 34.770294, 36.192238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506229, 34.441021, 36.561150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497463, 34.787510, 36.760822>,  <40.492203, 34.995403, 36.880627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497463, 34.787510, 36.760822>,  <40.506229, 34.441021, 36.561150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497463, 34.787510, 36.760822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295515, -0.471373, 0.830950,
		0.955087, 0.165726, -0.245650,
		-0.021917, 0.866223, 0.499177,
		40.490887, 35.047379, 36.910576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984882, 34.262047, 37.054970>,  <40.506229, 34.441021, 36.561150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984882, 34.262047, 37.054970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793472, 34.580933, 37.202190>,  <40.678627, 34.772263, 37.290524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793472, 34.580933, 37.202190>,  <40.984882, 34.262047, 37.054970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793472, 34.580933, 37.202190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042346, -0.397722, 0.916529,
		0.877053, 0.454167, 0.156560,
		-0.478524, 0.797214, 0.368055,
		40.649914, 34.820095, 37.312607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238621, 34.439510, 37.769932>,  <40.984882, 34.262047, 37.054970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238621, 34.439510, 37.769932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869637, 34.593109, 37.786034>,  <40.648247, 34.685268, 37.795696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869637, 34.593109, 37.786034>,  <41.238621, 34.439510, 37.769932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869637, 34.593109, 37.786034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148994, -0.450218, 0.880400,
		0.356191, 0.806135, 0.472520,
		-0.922458, 0.383993, 0.040254,
		40.592899, 34.708305, 37.798111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172722, 34.750904, 38.528969>,  <41.238621, 34.439510, 37.769932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172722, 34.750904, 38.528969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804733, 34.703533, 38.379501>,  <40.583939, 34.675110, 38.289822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804733, 34.703533, 38.379501>,  <41.172722, 34.750904, 38.528969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804733, 34.703533, 38.379501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334424, -0.260160, 0.905802,
		-0.204482, 0.958276, 0.199736,
		-0.919972, -0.118424, -0.373669,
		40.528740, 34.668007, 38.267403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737637, 35.124298, 38.919022>,  <41.172722, 34.750904, 38.528969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737637, 35.124298, 38.919022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521725, 34.825649, 38.763485>,  <40.392178, 34.646461, 38.670162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521725, 34.825649, 38.763485>,  <40.737637, 35.124298, 38.919022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521725, 34.825649, 38.763485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356565, -0.215643, 0.909043,
		-0.762562, 0.629327, -0.149820,
		-0.539778, -0.746623, -0.388837,
		40.359791, 34.601662, 38.646835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061016, 35.181667, 39.260239>,  <40.737637, 35.124298, 38.919022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061016, 35.181667, 39.260239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056011, 34.812748, 39.105728>,  <40.053009, 34.591396, 39.013023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056011, 34.812748, 39.105728>,  <40.061016, 35.181667, 39.260239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056011, 34.812748, 39.105728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325224, -0.361548, 0.873792,
		-0.945554, 0.136556, -0.295432,
		-0.012509, -0.922299, -0.386275,
		40.052258, 34.536057, 38.989845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437511, 34.901657, 39.567707>,  <40.061016, 35.181667, 39.260239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437511, 34.901657, 39.567707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663925, 34.592533, 39.452908>,  <39.799774, 34.407059, 39.384029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663925, 34.592533, 39.452908>,  <39.437511, 34.901657, 39.567707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663925, 34.592533, 39.452908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200567, -0.466774, 0.861333,
		-0.799612, -0.429982, -0.419210,
		0.566034, -0.772812, -0.286998,
		39.833736, 34.360691, 39.366810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999783, 34.299477, 39.764683>,  <39.437511, 34.901657, 39.567707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999783, 34.299477, 39.764683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386524, 34.209724, 39.715954>,  <39.618568, 34.155872, 39.686714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386524, 34.209724, 39.715954>,  <38.999783, 34.299477, 39.764683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386524, 34.209724, 39.715954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047846, -0.309475, 0.949703,
		-0.250790, -0.924057, -0.288483,
		0.966858, -0.224373, -0.121826,
		39.676582, 34.142410, 39.679405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096584, 33.633678, 40.074192>,  <38.999783, 34.299477, 39.764683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096584, 33.633678, 40.074192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459858, 33.800922, 40.066246>,  <39.677822, 33.901268, 40.061478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459858, 33.800922, 40.066246>,  <39.096584, 33.633678, 40.074192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459858, 33.800922, 40.066246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214642, -0.424441, 0.879647,
		0.359355, -0.803142, -0.475212,
		0.908181, 0.418106, -0.019863,
		39.732311, 33.926353, 40.060287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729855, 33.244171, 40.019539>,  <39.096584, 33.633678, 40.074192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729855, 33.244171, 40.019539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368622, 33.075188, 40.050449>,  <39.151882, 32.973797, 40.068996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368622, 33.075188, 40.050449>,  <39.729855, 33.244171, 40.019539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368622, 33.075188, 40.050449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080845, -0.009500, -0.996681,
		0.421793, -0.906331, -0.025575,
		-0.903080, -0.422461, 0.077279,
		39.097698, 32.948448, 40.073631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725464, 32.873657, 39.300079>,  <39.729855, 33.244171, 40.019539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725464, 32.873657, 39.300079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358208, 32.888268, 39.457909>,  <39.137856, 32.897034, 39.552605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358208, 32.888268, 39.457909>,  <39.725464, 32.873657, 39.300079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358208, 32.888268, 39.457909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394449, -0.179308, -0.901254,
		0.037834, -0.983115, 0.179036,
		-0.918139, 0.036522, 0.394573,
		39.082767, 32.899223, 39.576279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426277, 32.263000, 39.118172>,  <39.725464, 32.873657, 39.300079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426277, 32.263000, 39.118172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138763, 32.533436, 39.182976>,  <38.966255, 32.695698, 39.221859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138763, 32.533436, 39.182976>,  <39.426277, 32.263000, 39.118172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138763, 32.533436, 39.182976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452716, -0.278314, -0.847107,
		-0.527633, -0.682232, 0.506126,
		-0.718785, 0.676093, 0.162010,
		38.923126, 32.736263, 39.231579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858856, 31.898075, 39.093998>,  <39.426277, 32.263000, 39.118172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858856, 31.898075, 39.093998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712193, 32.265774, 39.036659>,  <38.624195, 32.486393, 39.002254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712193, 32.265774, 39.036659>,  <38.858856, 31.898075, 39.093998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712193, 32.265774, 39.036659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663943, -0.366473, -0.651827,
		-0.651723, -0.143822, 0.744697,
		-0.366658, 0.919246, -0.143349,
		38.602196, 32.541546, 38.993656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281933, 31.858078, 38.838924>,  <38.858856, 31.898075, 39.093998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281933, 31.858078, 38.838924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290157, 32.245625, 38.740231>,  <38.295094, 32.478153, 38.681015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290157, 32.245625, 38.740231>,  <38.281933, 31.858078, 38.838924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290157, 32.245625, 38.740231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459049, -0.210087, -0.863213,
		-0.888173, 0.131014, 0.440437,
		0.020563, 0.968865, -0.246735,
		38.296326, 32.536285, 38.666210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611702, 32.091858, 38.532230>,  <38.281933, 31.858078, 38.838924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611702, 32.091858, 38.532230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859127, 32.371532, 38.388840>,  <38.007584, 32.539337, 38.302803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859127, 32.371532, 38.388840>,  <37.611702, 32.091858, 38.532230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859127, 32.371532, 38.388840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529621, 0.034005, -0.847553,
		-0.580411, 0.714126, 0.391341,
		0.618567, 0.699191, -0.358479,
		38.044697, 32.581291, 38.281296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190659, 32.516899, 38.271069>,  <37.611702, 32.091858, 38.532230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190659, 32.516899, 38.271069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536613, 32.591587, 38.084690>,  <37.744186, 32.636398, 37.972862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536613, 32.591587, 38.084690>,  <37.190659, 32.516899, 38.271069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536613, 32.591587, 38.084690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491327, 0.124833, -0.861983,
		-0.102781, 0.974451, 0.199705,
		0.864889, 0.186716, -0.465944,
		37.796082, 32.647602, 37.944908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100933, 33.157433, 37.829937>,  <37.190659, 32.516899, 38.271069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100933, 33.157433, 37.829937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401405, 32.923317, 37.707851>,  <37.581688, 32.782848, 37.634602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401405, 32.923317, 37.707851>,  <37.100933, 33.157433, 37.829937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401405, 32.923317, 37.707851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411780, -0.054124, -0.909675,
		0.515906, 0.809014, -0.281668,
		0.751185, -0.585292, -0.305213,
		37.626762, 32.747730, 37.616287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239563, 33.418949, 37.239994>,  <37.100933, 33.157433, 37.829937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239563, 33.418949, 37.239994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416256, 33.061295, 37.210617>,  <37.522274, 32.846703, 37.192989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416256, 33.061295, 37.210617>,  <37.239563, 33.418949, 37.239994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416256, 33.061295, 37.210617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447959, -0.148898, -0.881568,
		0.777304, 0.422320, -0.466309,
		0.441737, -0.894134, -0.073444,
		37.548779, 32.793053, 37.188583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419376, 33.447826, 36.620995>,  <37.239563, 33.418949, 37.239994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419376, 33.447826, 36.620995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433979, 33.057232, 36.705978>,  <37.442741, 32.822876, 36.756969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433979, 33.057232, 36.705978>,  <37.419376, 33.447826, 36.620995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433979, 33.057232, 36.705978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541974, -0.197964, -0.816747,
		0.839602, -0.085327, -0.536459,
		0.036509, -0.976489, 0.212456,
		37.444931, 32.764286, 36.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663090, 33.205654, 35.991070>,  <37.419376, 33.447826, 36.620995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663090, 33.205654, 35.991070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528172, 32.879856, 36.179890>,  <37.447220, 32.684380, 36.293182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528172, 32.879856, 36.179890>,  <37.663090, 33.205654, 35.991070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528172, 32.879856, 36.179890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216858, -0.420727, -0.880887,
		0.916080, -0.399491, -0.034718,
		-0.337299, -0.814491, 0.472052,
		37.426983, 32.635509, 36.321507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008251, 32.520649, 35.640545>,  <37.663090, 33.205654, 35.991070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008251, 32.520649, 35.640545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677670, 32.445164, 35.852718>,  <37.479321, 32.399872, 35.980022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677670, 32.445164, 35.852718>,  <38.008251, 32.520649, 35.640545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677670, 32.445164, 35.852718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423069, -0.413452, -0.806270,
		0.371465, -0.890755, 0.261859,
		-0.826454, -0.188717, 0.530433,
		37.429733, 32.388550, 36.011848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.021881, 31.617493, 43.451733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638172, 31.695534, 43.533447>,  <39.407948, 31.742357, 43.582474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638172, 31.695534, 43.533447>,  <40.021881, 31.617493, 43.451733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638172, 31.695534, 43.533447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204131, 0.021114, -0.978716,
		-0.195263, -0.980556, 0.019573,
		-0.959272, 0.195103, 0.204284,
		39.350391, 31.754065, 43.594734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701550, 31.123940, 43.074791>,  <40.021881, 31.617493, 43.451733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701550, 31.123940, 43.074791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.465542, 31.445261, 43.107235>,  <39.323936, 31.638054, 43.126701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.465542, 31.445261, 43.107235>,  <39.701550, 31.123940, 43.074791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465542, 31.445261, 43.107235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055564, 0.059819, -0.996662,
		-0.805473, -0.592558, 0.009340,
		-0.590021, 0.803303, 0.081108,
		39.288536, 31.686253, 43.131569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099010, 31.027136, 42.664555>,  <39.701550, 31.123940, 43.074791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099010, 31.027136, 42.664555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128456, 31.424450, 42.700264>,  <39.146126, 31.662838, 42.721687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128456, 31.424450, 42.700264>,  <39.099010, 31.027136, 42.664555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128456, 31.424450, 42.700264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185484, 0.101590, -0.977382,
		-0.979886, 0.055395, 0.191717,
		0.073618, 0.993283, 0.089271,
		39.150543, 31.722435, 42.727047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524536, 31.262192, 42.341908>,  <39.099010, 31.027136, 42.664555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524536, 31.262192, 42.341908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796898, 31.554665, 42.358585>,  <38.960316, 31.730148, 42.368591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796898, 31.554665, 42.358585>,  <38.524536, 31.262192, 42.341908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796898, 31.554665, 42.358585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208466, 0.248075, -0.946045,
		-0.702074, 0.635476, 0.321343,
		0.680906, 0.731183, 0.041692,
		39.001171, 31.774019, 42.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274036, 31.863365, 42.127846>,  <38.524536, 31.262192, 42.341908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274036, 31.863365, 42.127846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662189, 31.955254, 42.097950>,  <38.895081, 32.010387, 42.080013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662189, 31.955254, 42.097950>,  <38.274036, 31.863365, 42.127846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662189, 31.955254, 42.097950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179002, 0.476004, -0.861033,
		-0.162223, 0.848910, 0.503027,
		0.970382, 0.229722, -0.074738,
		38.953304, 32.024170, 42.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284981, 32.539078, 41.929260>,  <38.274036, 31.863365, 42.127846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284981, 32.539078, 41.929260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641613, 32.399929, 41.813290>,  <38.855595, 32.316441, 41.743706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641613, 32.399929, 41.813290>,  <38.284981, 32.539078, 41.929260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641613, 32.399929, 41.813290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141478, 0.394209, -0.908066,
		0.430186, 0.850636, 0.302254,
		0.891585, -0.347875, -0.289929,
		38.909088, 32.295567, 41.726311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452618, 33.059914, 41.546524>,  <38.284981, 32.539078, 41.929260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452618, 33.059914, 41.546524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729893, 32.793488, 41.436356>,  <38.896255, 32.633633, 41.370255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.729893, 32.793488, 41.436356>,  <38.452618, 33.059914, 41.546524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729893, 32.793488, 41.436356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026201, 0.358590, -0.933128,
		0.720284, 0.654046, 0.231117,
		0.693184, -0.666062, -0.275423,
		38.937847, 32.593670, 41.353729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936119, 33.469540, 41.152267>,  <38.452618, 33.059914, 41.546524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936119, 33.469540, 41.152267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.981606, 33.083557, 41.057667>,  <39.008900, 32.851967, 41.000908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.981606, 33.083557, 41.057667>,  <38.936119, 33.469540, 41.152267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981606, 33.083557, 41.057667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062443, 0.230629, -0.971036,
		0.991549, 0.125194, -0.034028,
		0.113720, -0.964954, -0.236497,
		39.015720, 32.794071, 40.986717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472961, 33.463699, 40.662685>,  <38.936119, 33.469540, 41.152267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472961, 33.463699, 40.662685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249046, 33.134472, 40.624310>,  <39.114697, 32.936935, 40.601284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249046, 33.134472, 40.624310>,  <39.472961, 33.463699, 40.662685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249046, 33.134472, 40.624310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088715, 0.174640, -0.980628,
		0.823876, -0.540428, -0.170779,
		-0.559783, -0.823067, -0.095937,
		39.081112, 32.887550, 40.595528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086506, 32.950531, 40.712280>,  <39.472961, 33.463699, 40.662685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086506, 32.950531, 40.712280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.242840, 33.284969, 40.558292>,  <40.336639, 33.485630, 40.465900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.242840, 33.284969, 40.558292>,  <40.086506, 32.950531, 40.712280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242840, 33.284969, 40.558292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416140, 0.212552, 0.884109,
		0.821022, -0.505740, -0.264858,
		0.390833, 0.836091, -0.384969,
		40.360088, 33.535797, 40.442802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819321, 32.870296, 40.854290>,  <40.086506, 32.950531, 40.712280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819321, 32.870296, 40.854290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664379, 33.239063, 40.856316>,  <40.571415, 33.460323, 40.857533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.664379, 33.239063, 40.856316>,  <40.819321, 32.870296, 40.854290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664379, 33.239063, 40.856316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458436, 0.187845, 0.868649,
		0.799870, 0.338798, -0.495402,
		-0.387355, 0.921917, 0.005065,
		40.548172, 33.515636, 40.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419067, 33.299522, 41.033344>,  <40.819321, 32.870296, 40.854290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419067, 33.299522, 41.033344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097645, 33.519276, 41.124973>,  <40.904793, 33.651127, 41.179951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097645, 33.519276, 41.124973>,  <41.419067, 33.299522, 41.033344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097645, 33.519276, 41.124973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411152, 0.234015, 0.881017,
		0.430408, 0.802132, -0.413924,
		-0.803557, 0.549382, 0.229076,
		40.856579, 33.684090, 41.193695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531010, 34.026028, 41.248219>,  <41.419067, 33.299522, 41.033344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531010, 34.026028, 41.248219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.170807, 33.965687, 41.411350>,  <40.954685, 33.929482, 41.509228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.170807, 33.965687, 41.411350>,  <41.531010, 34.026028, 41.248219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170807, 33.965687, 41.411350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305291, 0.448537, 0.840007,
		-0.309643, 0.880942, -0.357859,
		-0.900510, -0.150851, 0.407830,
		40.900654, 33.920433, 41.533699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322353, 34.661842, 41.513657>,  <41.531010, 34.026028, 41.248219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322353, 34.661842, 41.513657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.109669, 34.391323, 41.717583>,  <40.982059, 34.229012, 41.839939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.109669, 34.391323, 41.717583>,  <41.322353, 34.661842, 41.513657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109669, 34.391323, 41.717583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316687, 0.399527, 0.860284,
		-0.785491, 0.618870, 0.001743,
		-0.531707, -0.676297, 0.509813,
		40.950157, 34.188435, 41.870525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865326, 35.138447, 41.992409>,  <41.322353, 34.661842, 41.513657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865326, 35.138447, 41.992409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.865967, 34.763649, 42.132149>,  <40.866352, 34.538773, 42.215992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.865967, 34.763649, 42.132149>,  <40.865326, 35.138447, 41.992409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865967, 34.763649, 42.132149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199191, 0.342644, 0.918106,
		-0.979959, 0.068120, 0.187188,
		0.001598, -0.936993, 0.349346,
		40.866447, 34.482552, 42.236954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613434, 35.261806, 42.600197>,  <40.865326, 35.138447, 41.992409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613434, 35.261806, 42.600197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776810, 34.897881, 42.629662>,  <40.874836, 34.679527, 42.647339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.776810, 34.897881, 42.629662>,  <40.613434, 35.261806, 42.600197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776810, 34.897881, 42.629662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403332, 0.252277, 0.879591,
		-0.818843, -0.329547, 0.469994,
		0.408435, -0.909810, 0.073658,
		40.899342, 34.624939, 42.651760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446213, 35.010521, 43.232567>,  <40.613434, 35.261806, 42.600197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446213, 35.010521, 43.232567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774315, 34.799976, 43.143005>,  <40.971176, 34.673649, 43.089268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774315, 34.799976, 43.143005>,  <40.446213, 35.010521, 43.232567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774315, 34.799976, 43.143005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368788, 0.187425, 0.910421,
		-0.437247, -0.829346, 0.347852,
		0.820250, -0.526362, -0.223902,
		41.020390, 34.642067, 43.075836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523720, 34.616512, 43.734020>,  <40.446213, 35.010521, 43.232567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523720, 34.616512, 43.734020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883656, 34.659004, 43.564781>,  <41.099617, 34.684498, 43.463238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883656, 34.659004, 43.564781>,  <40.523720, 34.616512, 43.734020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883656, 34.659004, 43.564781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413244, 0.103080, 0.904768,
		0.139734, -0.988983, 0.048852,
		0.899836, 0.106239, -0.423095,
		41.153606, 34.690872, 43.437855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991276, 34.153221, 44.103870>,  <40.523720, 34.616512, 43.734020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991276, 34.153221, 44.103870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.232754, 34.432018, 43.949078>,  <41.377640, 34.599297, 43.856201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.232754, 34.432018, 43.949078>,  <40.991276, 34.153221, 44.103870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232754, 34.432018, 43.949078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270098, 0.277885, 0.921861,
		0.750065, -0.661047, -0.020497,
		0.603697, 0.696991, -0.386979,
		41.413864, 34.641117, 43.832985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645111, 34.038868, 44.465393>,  <40.991276, 34.153221, 44.103870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645111, 34.038868, 44.465393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627209, 34.408287, 44.313053>,  <41.616467, 34.629940, 44.221649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.627209, 34.408287, 44.313053>,  <41.645111, 34.038868, 44.465393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627209, 34.408287, 44.313053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248054, 0.379570, 0.891289,
		0.967712, -0.054583, -0.246078,
		-0.044755, 0.923551, -0.380854,
		41.613781, 34.685352, 44.198795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163494, 34.376873, 44.721046>,  <41.645111, 34.038868, 44.465393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163494, 34.376873, 44.721046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.928177, 34.687569, 44.631077>,  <41.786987, 34.873985, 44.577095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.928177, 34.687569, 44.631077>,  <42.163494, 34.376873, 44.721046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928177, 34.687569, 44.631077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333244, 0.486296, 0.807753,
		0.736793, 0.400239, -0.544927,
		-0.588290, 0.776740, -0.224922,
		41.751690, 34.920589, 44.563599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379959, 34.921352, 45.177147>,  <42.163494, 34.376873, 44.721046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379959, 34.921352, 45.177147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.058338, 35.113377, 45.036842>,  <41.865364, 35.228592, 44.952660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.058338, 35.113377, 45.036842>,  <42.379959, 34.921352, 45.177147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058338, 35.113377, 45.036842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105803, 0.465011, 0.878960,
		0.585064, 0.743844, -0.323103,
		-0.804056, 0.480062, -0.350762,
		41.817120, 35.257397, 44.931614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461876, 35.563972, 45.265095>,  <42.379959, 34.921352, 45.177147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461876, 35.563972, 45.265095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063908, 35.527870, 45.247238>,  <41.825127, 35.506210, 45.236523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.063908, 35.527870, 45.247238>,  <42.461876, 35.563972, 45.265095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063908, 35.527870, 45.247238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086919, 0.545936, 0.833306,
		-0.050838, 0.832951, -0.551006,
		-0.994917, -0.090256, -0.044646,
		41.765434, 35.500793, 45.233845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.452835, 36.111977, 46.446869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777962, 35.903149, 46.343510>,  <34.973038, 35.777851, 46.281494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777962, 35.903149, 46.343510>,  <34.452835, 36.111977, 46.446869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777962, 35.903149, 46.343510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107634, 0.301351, -0.947419,
		0.572484, 0.797894, 0.188752,
		0.812820, -0.522067, -0.258399,
		35.021809, 35.746529, 46.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775074, 36.470684, 45.955685>,  <34.452835, 36.111977, 46.446869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775074, 36.470684, 45.955685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920467, 36.102406, 45.898838>,  <35.007702, 35.881439, 45.864731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920467, 36.102406, 45.898838>,  <34.775074, 36.470684, 45.955685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920467, 36.102406, 45.898838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203103, 0.070568, -0.976611,
		0.909192, 0.383846, -0.161346,
		0.363482, -0.920696, -0.142121,
		35.029510, 35.826195, 45.856201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079716, 36.575565, 45.339035>,  <34.775074, 36.470684, 45.955685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079716, 36.575565, 45.339035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101292, 36.176971, 45.364697>,  <35.114235, 35.937817, 45.380093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101292, 36.176971, 45.364697>,  <35.079716, 36.575565, 45.339035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101292, 36.176971, 45.364697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038405, -0.062127, -0.997329,
		0.997806, 0.056258, 0.034918,
		0.053938, -0.996481, 0.064152,
		35.117474, 35.878029, 45.383942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591858, 36.384102, 44.869160>,  <35.079716, 36.575565, 45.339035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591858, 36.384102, 44.869160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377239, 36.056297, 44.949680>,  <35.248466, 35.859615, 44.997993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377239, 36.056297, 44.949680>,  <35.591858, 36.384102, 44.869160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377239, 36.056297, 44.949680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039830, -0.262872, -0.964008,
		0.842928, -0.509221, 0.173685,
		-0.536550, -0.819507, 0.201300,
		35.216274, 35.810444, 45.010071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963158, 35.903774, 44.585747>,  <35.591858, 36.384102, 44.869160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963158, 35.903774, 44.585747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584515, 35.774929, 44.591000>,  <35.357330, 35.697620, 44.594151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584515, 35.774929, 44.591000>,  <35.963158, 35.903774, 44.585747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584515, 35.774929, 44.591000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067661, -0.238322, -0.968827,
		0.315206, -0.916211, 0.247392,
		-0.946608, -0.322118, 0.013129,
		35.300533, 35.678295, 44.594936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945122, 35.243591, 44.223083>,  <35.963158, 35.903774, 44.585747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945122, 35.243591, 44.223083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.563820, 35.361137, 44.251232>,  <35.335041, 35.431667, 44.268120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.563820, 35.361137, 44.251232>,  <35.945122, 35.243591, 44.223083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563820, 35.361137, 44.251232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148339, -0.252192, -0.956240,
		-0.263274, -0.921973, 0.283996,
		-0.953249, 0.293880, 0.070369,
		35.277843, 35.449299, 44.272343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527699, 34.751099, 43.748260>,  <35.945122, 35.243591, 44.223083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527699, 34.751099, 43.748260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262516, 35.046066, 43.799957>,  <35.103405, 35.223045, 43.830975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262516, 35.046066, 43.799957>,  <35.527699, 34.751099, 43.748260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262516, 35.046066, 43.799957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271088, -0.075529, -0.959587,
		-0.697855, -0.671199, 0.249978,
		-0.662955, 0.737419, 0.129246,
		35.063629, 35.267292, 43.838730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850513, 34.490505, 43.438457>,  <35.527699, 34.751099, 43.748260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850513, 34.490505, 43.438457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888237, 34.888554, 43.426842>,  <34.910870, 35.127384, 43.419872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888237, 34.888554, 43.426842>,  <34.850513, 34.490505, 43.438457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888237, 34.888554, 43.426842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226271, -0.006976, -0.974039,
		-0.969489, 0.098427, 0.224509,
		0.094305, 0.995120, -0.029035,
		34.916527, 35.187088, 43.418133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259117, 34.697571, 43.138435>,  <34.850513, 34.490505, 43.438457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259117, 34.697571, 43.138435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527779, 34.990543, 43.093838>,  <34.688976, 35.166328, 43.067078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527779, 34.990543, 43.093838>,  <34.259117, 34.697571, 43.138435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527779, 34.990543, 43.093838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210179, 0.044059, -0.976669,
		-0.710429, 0.679415, 0.183534,
		0.671651, 0.732430, -0.111498,
		34.729275, 35.210274, 43.060387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817394, 35.268169, 42.779346>,  <34.259117, 34.697571, 43.138435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817394, 35.268169, 42.779346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201454, 35.361439, 42.717720>,  <34.431892, 35.417400, 42.680744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201454, 35.361439, 42.717720>,  <33.817394, 35.268169, 42.779346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201454, 35.361439, 42.717720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205123, 0.213544, -0.955157,
		-0.189818, 0.948699, 0.252864,
		0.960153, 0.233174, -0.154065,
		34.489502, 35.431393, 42.671501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913528, 35.969391, 42.468735>,  <33.817394, 35.268169, 42.779346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913528, 35.969391, 42.468735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248913, 35.776489, 42.367207>,  <34.450142, 35.660748, 42.306290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248913, 35.776489, 42.367207>,  <33.913528, 35.969391, 42.468735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248913, 35.776489, 42.367207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041259, 0.408246, -0.911939,
		0.543405, 0.775093, 0.322399,
		0.838456, -0.482250, -0.253823,
		34.500450, 35.631813, 42.291061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232647, 36.491383, 42.035172>,  <33.913528, 35.969391, 42.468735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232647, 36.491383, 42.035172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384666, 36.130489, 41.953655>,  <34.475880, 35.913952, 41.904747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384666, 36.130489, 41.953655>,  <34.232647, 36.491383, 42.035172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384666, 36.130489, 41.953655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084154, 0.185680, -0.979000,
		0.921130, 0.389217, -0.005359,
		0.380049, -0.902238, -0.203790,
		34.498680, 35.859818, 41.892517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581631, 36.663788, 41.446255>,  <34.232647, 36.491383, 42.035172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581631, 36.663788, 41.446255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572758, 36.263893, 41.443848>,  <34.567432, 36.023956, 41.442402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572758, 36.263893, 41.443848>,  <34.581631, 36.663788, 41.446255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572758, 36.263893, 41.443848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038395, 0.005163, -0.999249,
		0.999016, -0.022401, 0.038270,
		-0.022187, -0.999736, -0.006018,
		34.566101, 35.963974, 41.442043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112244, 36.457085, 40.967785>,  <34.581631, 36.663788, 41.446255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112244, 36.457085, 40.967785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855148, 36.151150, 40.985279>,  <34.700890, 35.967590, 40.995777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855148, 36.151150, 40.985279>,  <35.112244, 36.457085, 40.967785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855148, 36.151150, 40.985279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036214, -0.026696, -0.998987,
		0.765230, -0.643671, -0.010539,
		-0.642738, -0.764837, 0.043739,
		34.662327, 35.921700, 40.998402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822803, 36.624783, 40.709667>,  <35.112244, 36.457085, 40.967785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822803, 36.624783, 40.709667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930004, 37.006554, 40.657135>,  <35.994324, 37.235615, 40.625618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930004, 37.006554, 40.657135>,  <35.822803, 36.624783, 40.709667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930004, 37.006554, 40.657135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280495, 0.053109, 0.958385,
		0.921683, -0.293684, -0.253478,
		0.268000, 0.954426, -0.131327,
		36.010403, 37.292881, 40.617737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476734, 36.696686, 41.052841>,  <35.822803, 36.624783, 40.709667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476734, 36.696686, 41.052841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340832, 37.070515, 41.010624>,  <36.259289, 37.294811, 40.985294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340832, 37.070515, 41.010624>,  <36.476734, 36.696686, 41.052841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340832, 37.070515, 41.010624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457892, 0.262393, 0.849403,
		0.821522, 0.240264, -0.517083,
		-0.339760, 0.934571, -0.105547,
		36.238903, 37.350887, 40.978958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039204, 37.174076, 41.287395>,  <36.476734, 36.696686, 41.052841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039204, 37.174076, 41.287395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683853, 37.347706, 41.347218>,  <36.470642, 37.451881, 41.383110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683853, 37.347706, 41.347218>,  <37.039204, 37.174076, 41.287395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683853, 37.347706, 41.347218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309187, 0.324834, 0.893805,
		0.339395, 0.840277, -0.422784,
		-0.888378, 0.434072, 0.149556,
		36.417339, 37.477928, 41.392086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226349, 37.825626, 41.453617>,  <37.039204, 37.174076, 41.287395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226349, 37.825626, 41.453617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871597, 37.757809, 41.625523>,  <36.658745, 37.717117, 41.728668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.871597, 37.757809, 41.625523>,  <37.226349, 37.825626, 41.453617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871597, 37.757809, 41.625523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351721, 0.355393, 0.866019,
		-0.299561, 0.919213, -0.255561,
		-0.886880, -0.169539, 0.429768,
		36.605534, 37.706947, 41.754452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216816, 38.259071, 41.956661>,  <37.226349, 37.825626, 41.453617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216816, 38.259071, 41.956661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921673, 38.004684, 42.047089>,  <36.744587, 37.852051, 42.101345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921673, 38.004684, 42.047089>,  <37.216816, 38.259071, 41.956661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921673, 38.004684, 42.047089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200589, 0.113183, 0.973115,
		-0.644461, 0.763367, 0.044056,
		-0.737858, -0.635972, 0.226065,
		36.700314, 37.813892, 42.114906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785664, 38.588940, 42.439842>,  <37.216816, 38.259071, 41.956661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785664, 38.588940, 42.439842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.686371, 38.207371, 42.507263>,  <36.626797, 37.978428, 42.547714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.686371, 38.207371, 42.507263>,  <36.785664, 38.588940, 42.439842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686371, 38.207371, 42.507263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017676, 0.169505, 0.985371,
		-0.968540, 0.247577, -0.025215,
		-0.248229, -0.953925, 0.168548,
		36.611900, 37.921192, 42.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247147, 38.615318, 42.993351>,  <36.785664, 38.588940, 42.439842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247147, 38.615318, 42.993351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386948, 38.240646, 42.984528>,  <36.470829, 38.015842, 42.979233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386948, 38.240646, 42.984528>,  <36.247147, 38.615318, 42.993351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386948, 38.240646, 42.984528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072386, -0.050464, 0.996099,
		-0.934134, -0.346544, -0.085440,
		0.349504, -0.936675, -0.022055,
		36.491798, 37.959644, 42.977909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864048, 38.233856, 43.454475>,  <36.247147, 38.615318, 42.993351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864048, 38.233856, 43.454475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211918, 38.037769, 43.431328>,  <36.420639, 37.920116, 43.417439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211918, 38.037769, 43.431328>,  <35.864048, 38.233856, 43.454475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211918, 38.037769, 43.431328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084191, 0.031782, 0.995943,
		-0.486389, -0.871021, 0.068912,
		0.869677, -0.490217, -0.057873,
		36.472820, 37.890705, 43.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730511, 37.763821, 43.875080>,  <35.864048, 38.233856, 43.454475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730511, 37.763821, 43.875080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129539, 37.756241, 43.848278>,  <36.368958, 37.751694, 43.832195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.129539, 37.756241, 43.848278>,  <35.730511, 37.763821, 43.875080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129539, 37.756241, 43.848278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068352, 0.082472, 0.994247,
		-0.013312, -0.996413, 0.083567,
		0.997573, -0.018947, -0.067009,
		36.428810, 37.750557, 43.828175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948513, 37.221657, 44.251633>,  <35.730511, 37.763821, 43.875080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948513, 37.221657, 44.251633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265549, 37.464748, 44.231777>,  <36.455772, 37.610603, 44.219864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.265549, 37.464748, 44.231777>,  <35.948513, 37.221657, 44.251633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265549, 37.464748, 44.231777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044914, 0.023006, 0.998726,
		0.608097, -0.793811, -0.009062,
		0.792591, 0.607729, -0.049643,
		36.503326, 37.647068, 44.216885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170231, 37.129108, 44.887787>,  <35.948513, 37.221657, 44.251633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170231, 37.129108, 44.887787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446815, 37.399105, 44.784813>,  <36.612766, 37.561104, 44.723026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.446815, 37.399105, 44.784813>,  <36.170231, 37.129108, 44.887787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446815, 37.399105, 44.784813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291519, 0.065347, 0.954331,
		0.660988, -0.734926, -0.151588,
		0.691457, 0.674991, -0.257438,
		36.654251, 37.601601, 44.707581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820869, 36.976269, 45.166241>,  <36.170231, 37.129108, 44.887787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820869, 36.976269, 45.166241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832367, 37.374092, 45.126186>,  <36.839268, 37.612785, 45.102154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832367, 37.374092, 45.126186>,  <36.820869, 36.976269, 45.166241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832367, 37.374092, 45.126186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186487, 0.093086, 0.978038,
		0.982037, -0.046791, -0.182796,
		0.028748, 0.994558, -0.100140,
		36.840992, 37.672459, 45.096146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380161, 37.247463, 45.421089>,  <36.820869, 36.976269, 45.166241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380161, 37.247463, 45.421089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145710, 37.570251, 45.450073>,  <37.005039, 37.763924, 45.467464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145710, 37.570251, 45.450073>,  <37.380161, 37.247463, 45.421089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145710, 37.570251, 45.450073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201259, 0.058385, 0.977797,
		0.784826, 0.587694, -0.196631,
		-0.586125, 0.806974, 0.072457,
		36.969872, 37.812344, 45.471809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810917, 37.713295, 45.835392>,  <37.380161, 37.247463, 45.421089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810917, 37.713295, 45.835392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446609, 37.877911, 45.848885>,  <37.228024, 37.976681, 45.856979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446609, 37.877911, 45.848885>,  <37.810917, 37.713295, 45.835392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446609, 37.877911, 45.848885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113956, 0.171992, 0.978485,
		0.396880, 0.895018, -0.203542,
		-0.910769, 0.411536, 0.033732,
		37.173378, 38.001369, 45.859005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371780, 38.289768, 45.652027>,  <37.810917, 37.713295, 45.835392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371780, 38.289768, 45.652027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770668, 38.264706, 45.668201>,  <39.009998, 38.249668, 45.677906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770668, 38.264706, 45.668201>,  <38.371780, 38.289768, 45.652027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770668, 38.264706, 45.668201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054126, 0.235200, -0.970439,
		0.051297, 0.969925, 0.237937,
		0.997216, -0.062659, 0.040433,
		39.069832, 38.245907, 45.680332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740417, 39.011097, 45.329533>,  <38.371780, 38.289768, 45.652027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740417, 39.011097, 45.329533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985638, 38.695190, 45.321072>,  <39.132771, 38.505646, 45.315994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985638, 38.695190, 45.321072>,  <38.740417, 39.011097, 45.329533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985638, 38.695190, 45.321072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196757, 0.178550, -0.964057,
		0.765153, 0.586852, 0.264851,
		0.613048, -0.789763, -0.021151,
		39.169552, 38.458263, 45.314728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326118, 39.223980, 45.003971>,  <38.740417, 39.011097, 45.329533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326118, 39.223980, 45.003971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338589, 38.824825, 44.981144>,  <39.346073, 38.585335, 44.967449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.338589, 38.824825, 44.981144>,  <39.326118, 39.223980, 45.003971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338589, 38.824825, 44.981144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010555, 0.057420, -0.998295,
		0.999458, 0.030522, 0.012323,
		0.031178, -0.997884, -0.057066,
		39.347942, 38.525459, 44.964024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879601, 39.122540, 44.591377>,  <39.326118, 39.223980, 45.003971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879601, 39.122540, 44.591377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641750, 38.802280, 44.562023>,  <39.499039, 38.610126, 44.544411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641750, 38.802280, 44.562023>,  <39.879601, 39.122540, 44.591377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641750, 38.802280, 44.562023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003202, 0.093628, -0.995602,
		0.803994, -0.591779, -0.058237,
		-0.594629, -0.800644, -0.073382,
		39.463360, 38.562088, 44.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198345, 38.836151, 44.041183>,  <39.879601, 39.122540, 44.591377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198345, 38.836151, 44.041183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.840981, 38.658928, 44.070866>,  <39.626560, 38.552593, 44.088676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.840981, 38.658928, 44.070866>,  <40.198345, 38.836151, 44.041183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840981, 38.658928, 44.070866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024104, -0.117673, -0.992760,
		0.448585, -0.888735, 0.094451,
		-0.893415, -0.443061, 0.074209,
		39.572956, 38.526009, 44.093128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224693, 38.221569, 43.702381>,  <40.198345, 38.836151, 44.041183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224693, 38.221569, 43.702381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.832432, 38.299511, 43.709858>,  <39.597076, 38.346275, 43.714344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.832432, 38.299511, 43.709858>,  <40.224693, 38.221569, 43.702381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832432, 38.299511, 43.709858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025114, -0.030520, -0.999219,
		-0.194132, -0.980357, 0.034823,
		-0.980654, 0.194855, 0.018696,
		39.538235, 38.357967, 43.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994236, 37.935566, 43.166981>,  <40.224693, 38.221569, 43.702381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994236, 37.935566, 43.166981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710876, 38.204128, 43.254059>,  <39.540863, 38.365265, 43.306305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.710876, 38.204128, 43.254059>,  <39.994236, 37.935566, 43.166981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710876, 38.204128, 43.254059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040790, 0.346854, -0.937032,
		-0.704637, -0.654909, -0.273096,
		-0.708395, 0.671406, 0.217693,
		39.498360, 38.405552, 43.319366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504860, 37.816322, 42.618599>,  <39.994236, 37.935566, 43.166981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504860, 37.816322, 42.618599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383286, 38.160789, 42.781574>,  <39.310341, 38.367470, 42.879360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383286, 38.160789, 42.781574>,  <39.504860, 37.816322, 42.618599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383286, 38.160789, 42.781574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028200, 0.419349, -0.907387,
		-0.952274, -0.287279, -0.103171,
		-0.303937, 0.861172, 0.407436,
		39.292103, 38.419140, 42.903805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791000, 37.996925, 42.351311>,  <39.504860, 37.816322, 42.618599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791000, 37.996925, 42.351311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001709, 38.321522, 42.452492>,  <39.128136, 38.516281, 42.513199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.001709, 38.321522, 42.452492>,  <38.791000, 37.996925, 42.351311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001709, 38.321522, 42.452492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077567, 0.342241, -0.936405,
		-0.846459, 0.473653, 0.243229,
		0.526774, 0.811495, 0.252953,
		39.159740, 38.564972, 42.528378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363987, 38.616943, 42.262711>,  <38.791000, 37.996925, 42.351311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363987, 38.616943, 42.262711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.754425, 38.703175, 42.251705>,  <38.988689, 38.754913, 42.245102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.754425, 38.703175, 42.251705>,  <38.363987, 38.616943, 42.262711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754425, 38.703175, 42.251705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117824, 0.418571, -0.900508,
		-0.182611, 0.882228, 0.433968,
		0.976100, 0.215575, -0.027512,
		39.047256, 38.767845, 42.243450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427559, 39.154446, 41.829086>,  <38.363987, 38.616943, 42.262711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427559, 39.154446, 41.829086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820610, 39.084709, 41.854546>,  <39.056438, 39.042866, 41.869820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820610, 39.084709, 41.854546>,  <38.427559, 39.154446, 41.829086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820610, 39.084709, 41.854546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105167, 0.240479, -0.964940,
		0.152927, 0.954868, 0.254636,
		0.982626, -0.174344, 0.063644,
		39.115398, 39.032406, 41.873638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682640, 39.699104, 41.330555>,  <38.427559, 39.154446, 41.829086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682640, 39.699104, 41.330555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981800, 39.436218, 41.367908>,  <39.161297, 39.278488, 41.390320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981800, 39.436218, 41.367908>,  <38.682640, 39.699104, 41.330555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981800, 39.436218, 41.367908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221751, 0.114758, -0.968327,
		0.625682, 0.744916, 0.231565,
		0.747896, -0.657214, 0.093384,
		39.206169, 39.239056, 41.395924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211178, 39.936920, 40.907990>,  <38.682640, 39.699104, 41.330555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211178, 39.936920, 40.907990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.295364, 39.547226, 40.940403>,  <39.345875, 39.313408, 40.959850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.295364, 39.547226, 40.940403>,  <39.211178, 39.936920, 40.907990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295364, 39.547226, 40.940403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366416, 0.001766, -0.930449,
		0.906335, 0.225520, 0.357348,
		0.210466, -0.974237, 0.081034,
		39.358505, 39.254955, 40.964714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883888, 39.893070, 40.638618>,  <39.211178, 39.936920, 40.907990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883888, 39.893070, 40.638618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.726559, 39.525936, 40.617157>,  <39.632160, 39.305656, 40.604282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.726559, 39.525936, 40.617157>,  <39.883888, 39.893070, 40.638618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726559, 39.525936, 40.617157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345288, -0.093381, -0.933839,
		0.852101, -0.385823, 0.353646,
		-0.393320, -0.917835, -0.053650,
		39.608562, 39.250587, 40.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.824930, 41.838520, 40.737896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.968840, 41.988724, 40.396240>,  <25.055185, 42.078846, 40.191246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.968840, 41.988724, 40.396240>,  <24.824930, 41.838520, 40.737896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968840, 41.988724, 40.396240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419226, -0.752773, -0.507525,
		-0.833553, 0.540674, -0.113408,
		0.359776, 0.375506, -0.854141,
		25.076773, 42.101376, 40.139999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.277689, 41.786465, 40.166214>,  <24.824930, 41.838520, 40.737896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.277689, 41.786465, 40.166214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.624214, 41.809559, 39.967751>,  <24.832129, 41.823414, 39.848675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.624214, 41.809559, 39.967751>,  <24.277689, 41.786465, 40.166214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.624214, 41.809559, 39.967751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273781, -0.775922, -0.568321,
		-0.417790, 0.628181, -0.656384,
		0.866311, 0.057734, -0.496156,
		24.884108, 41.826878, 39.818905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.162977, 41.810238, 39.452595>,  <24.277689, 41.786465, 40.166214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.162977, 41.810238, 39.452595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.530622, 41.661297, 39.504108>,  <24.751209, 41.571934, 39.535015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.530622, 41.661297, 39.504108>,  <24.162977, 41.810238, 39.452595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530622, 41.661297, 39.504108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259588, -0.818196, -0.513001,
		0.296383, 0.438077, -0.848673,
		0.919115, -0.372350, 0.128780,
		24.806356, 41.549591, 39.542744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.444132, 41.524677, 38.822784>,  <24.162977, 41.810238, 39.452595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.444132, 41.524677, 38.822784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.642673, 41.328705, 39.109447>,  <24.761799, 41.211121, 39.281445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.642673, 41.328705, 39.109447>,  <24.444132, 41.524677, 38.822784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642673, 41.328705, 39.109447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251525, -0.871284, -0.421425,
		0.830883, 0.028918, -0.555695,
		0.496355, -0.489927, 0.716662,
		24.791580, 41.181728, 39.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999706, 41.548058, 38.274830>,  <24.444132, 41.524677, 38.822784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999706, 41.548058, 38.274830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.120792, 41.394463, 38.623753>,  <25.193443, 41.302307, 38.833107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.120792, 41.394463, 38.623753>,  <24.999706, 41.548058, 38.274830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120792, 41.394463, 38.623753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246998, -0.852373, -0.460926,
		0.920519, 0.354987, -0.163182,
		0.302714, -0.383985, 0.872307,
		25.211607, 41.279266, 38.885445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587488, 41.152248, 37.983963>,  <24.999706, 41.548058, 38.274830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587488, 41.152248, 37.983963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.503029, 41.021614, 38.352474>,  <25.452353, 40.943233, 38.573582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.503029, 41.021614, 38.352474>,  <25.587488, 41.152248, 37.983963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503029, 41.021614, 38.352474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310689, -0.916075, -0.253532,
		0.926762, 0.232699, 0.294895,
		-0.211149, -0.326584, 0.921281,
		25.439684, 40.923637, 38.628857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173506, 40.939571, 38.264946>,  <25.587488, 41.152248, 37.983963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173506, 40.939571, 38.264946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.903486, 40.744984, 38.486813>,  <25.741474, 40.628231, 38.619930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.903486, 40.744984, 38.486813>,  <26.173506, 40.939571, 38.264946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903486, 40.744984, 38.486813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432487, -0.870016, -0.236700,
		0.597715, 0.080101, 0.797697,
		-0.675049, -0.486472, 0.554665,
		25.700972, 40.599041, 38.653214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637432, 40.414791, 38.679924>,  <26.173506, 40.939571, 38.264946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637432, 40.414791, 38.679924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257452, 40.289967, 38.674171>,  <26.029463, 40.215073, 38.670719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257452, 40.289967, 38.674171>,  <26.637432, 40.414791, 38.679924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257452, 40.289967, 38.674171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296185, -0.885066, -0.359073,
		0.099329, -0.345360, 0.933199,
		-0.949952, -0.312066, -0.014378,
		25.972467, 40.196346, 38.669857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590809, 39.740467, 39.033669>,  <26.637432, 40.414791, 38.679924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590809, 39.740467, 39.033669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264423, 39.723019, 38.803085>,  <26.068592, 39.712551, 38.664738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264423, 39.723019, 38.803085>,  <26.590809, 39.740467, 39.033669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264423, 39.723019, 38.803085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233616, -0.936983, -0.259780,
		-0.528796, -0.346640, 0.774735,
		-0.815965, -0.043620, -0.576454,
		26.019634, 39.709934, 38.630150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401478, 39.055946, 39.106472>,  <26.590809, 39.740467, 39.033669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401478, 39.055946, 39.106472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.203983, 39.204903, 38.792133>,  <26.085487, 39.294277, 38.603531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.203983, 39.204903, 38.792133>,  <26.401478, 39.055946, 39.106472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203983, 39.204903, 38.792133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235432, -0.812681, -0.533030,
		-0.837136, -0.448188, 0.313577,
		-0.493736, 0.372393, -0.785843,
		26.055862, 39.316620, 38.556381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857056, 38.641953, 39.005054>,  <26.401478, 39.055946, 39.106472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857056, 38.641953, 39.005054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926731, 38.820621, 38.654022>,  <25.968536, 38.927822, 38.443405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926731, 38.820621, 38.654022>,  <25.857056, 38.641953, 39.005054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926731, 38.820621, 38.654022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048525, -0.894014, -0.445403,
		-0.983516, 0.035000, -0.177401,
		0.174188, 0.446670, -0.877579,
		25.978987, 38.954624, 38.390747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355770, 38.328297, 38.558941>,  <25.857056, 38.641953, 39.005054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355770, 38.328297, 38.558941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.626694, 38.498116, 38.318604>,  <25.789248, 38.600006, 38.174400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.626694, 38.498116, 38.318604>,  <25.355770, 38.328297, 38.558941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626694, 38.498116, 38.318604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045164, -0.791160, -0.609940,
		-0.734311, 0.440254, -0.516685,
		0.677309, 0.424550, -0.600841,
		25.829885, 38.625481, 38.138351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069031, 38.058781, 37.836662>,  <25.355770, 38.328297, 38.558941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069031, 38.058781, 37.836662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.443104, 38.178627, 37.761124>,  <25.667547, 38.250534, 37.715801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.443104, 38.178627, 37.761124>,  <25.069031, 38.058781, 37.836662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443104, 38.178627, 37.761124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127836, -0.782832, -0.608959,
		-0.330286, 0.545348, -0.770394,
		0.935184, 0.299615, -0.188843,
		25.723660, 38.268513, 37.704472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194153, 38.182896, 37.082050>,  <25.069031, 38.058781, 37.836662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194153, 38.182896, 37.082050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.537729, 38.094959, 37.267044>,  <25.743876, 38.042198, 37.378040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.537729, 38.094959, 37.267044>,  <25.194153, 38.182896, 37.082050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537729, 38.094959, 37.267044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065830, -0.848256, -0.525479,
		0.507825, 0.481801, -0.714130,
		0.858941, -0.219840, 0.462483,
		25.795412, 38.029007, 37.405788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503681, 37.830154, 36.562916>,  <25.194153, 38.182896, 37.082050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503681, 37.830154, 36.562916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.774614, 37.787235, 36.854042>,  <25.937174, 37.761482, 37.028717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.774614, 37.787235, 36.854042>,  <25.503681, 37.830154, 36.562916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774614, 37.787235, 36.854042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376646, -0.799239, -0.468354,
		0.631950, 0.591358, -0.500934,
		0.677331, -0.107301, 0.727811,
		25.977814, 37.755047, 37.072384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109669, 37.509209, 36.139549>,  <25.503681, 37.830154, 36.562916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109669, 37.509209, 36.139549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.127195, 37.426960, 36.530609>,  <26.137712, 37.377613, 36.765244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.127195, 37.426960, 36.530609>,  <26.109669, 37.509209, 36.139549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127195, 37.426960, 36.530609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384276, -0.899833, -0.206476,
		0.922178, 0.384735, 0.039586,
		0.043817, -0.205619, 0.977651,
		26.140341, 37.365273, 36.823906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837622, 37.141399, 36.242680>,  <26.109669, 37.509209, 36.139549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837622, 37.141399, 36.242680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.562532, 37.059700, 36.521339>,  <26.397478, 37.010681, 36.688534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.562532, 37.059700, 36.521339>,  <26.837622, 37.141399, 36.242680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562532, 37.059700, 36.521339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335732, -0.940307, 0.055745,
		0.643678, 0.272225, 0.715243,
		-0.687722, -0.204248, 0.696650,
		26.356216, 36.998425, 36.730335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195724, 36.884144, 36.765079>,  <26.837622, 37.141399, 36.242680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195724, 36.884144, 36.765079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830717, 36.733067, 36.827892>,  <26.611713, 36.642422, 36.865582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830717, 36.733067, 36.827892>,  <27.195724, 36.884144, 36.765079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830717, 36.733067, 36.827892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407722, -0.870653, 0.275184,
		0.032786, 0.315136, 0.948480,
		-0.912517, -0.377694, 0.157034,
		26.556961, 36.619759, 36.875004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283854, 36.488441, 37.275845>,  <27.195724, 36.884144, 36.765079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283854, 36.488441, 37.275845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937595, 36.349243, 37.131870>,  <26.729839, 36.265724, 37.045486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937595, 36.349243, 37.131870>,  <27.283854, 36.488441, 37.275845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937595, 36.349243, 37.131870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265318, -0.928538, 0.259658,
		-0.424571, 0.129276, 0.896118,
		-0.865648, -0.348000, -0.359931,
		26.677900, 36.244843, 37.023891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730455, 36.086811, 37.802517>,  <27.283854, 36.488441, 37.275845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730455, 36.086811, 37.802517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.102676, 35.982742, 37.699455>,  <28.326008, 35.920300, 37.637619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.102676, 35.982742, 37.699455>,  <27.730455, 36.086811, 37.802517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102676, 35.982742, 37.699455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268002, 0.963406, -0.004901,
		0.249498, -0.064491, 0.966225,
		0.930551, -0.260173, -0.257652,
		28.381842, 35.904690, 37.622158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230906, 36.504398, 38.168797>,  <27.730455, 36.086811, 37.802517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230906, 36.504398, 38.168797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423706, 36.392906, 37.836536>,  <28.539387, 36.326012, 37.637180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423706, 36.392906, 37.836536>,  <28.230906, 36.504398, 38.168797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423706, 36.392906, 37.836536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379394, 0.920956, -0.088885,
		0.789769, -0.272302, 0.549652,
		0.482002, -0.278733, -0.830652,
		28.568306, 36.309288, 37.587341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886011, 36.862686, 38.099625>,  <28.230906, 36.504398, 38.168797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886011, 36.862686, 38.099625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828140, 36.761967, 37.716862>,  <28.793417, 36.701534, 37.487206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828140, 36.761967, 37.716862>,  <28.886011, 36.862686, 38.099625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828140, 36.761967, 37.716862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306355, 0.908162, -0.285287,
		0.940859, -0.334427, -0.054251,
		-0.144677, -0.251795, -0.956905,
		28.784737, 36.686428, 37.429790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487627, 37.092731, 37.751854>,  <28.886011, 36.862686, 38.099625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487627, 37.092731, 37.751854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191074, 37.057434, 37.485752>,  <29.013142, 37.036255, 37.326092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191074, 37.057434, 37.485752>,  <29.487627, 37.092731, 37.751854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191074, 37.057434, 37.485752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207525, 0.912580, -0.352323,
		0.638189, -0.399263, -0.658258,
		-0.741383, -0.088244, -0.665255,
		28.968660, 37.030960, 37.286175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726240, 37.412342, 37.075516>,  <29.487627, 37.092731, 37.751854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726240, 37.412342, 37.075516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330349, 37.419842, 37.018826>,  <29.092813, 37.424339, 36.984810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330349, 37.419842, 37.018826>,  <29.726240, 37.412342, 37.075516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330349, 37.419842, 37.018826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079628, 0.895640, -0.437594,
		0.118735, -0.444385, -0.887933,
		-0.989728, 0.018747, -0.141729,
		29.033430, 37.425465, 36.976307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667747, 37.611259, 36.361069>,  <29.726240, 37.412342, 37.075516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667747, 37.611259, 36.361069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318607, 37.677299, 36.544754>,  <29.109123, 37.716923, 36.654964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318607, 37.677299, 36.544754>,  <29.667747, 37.611259, 36.361069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318607, 37.677299, 36.544754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013830, 0.932283, -0.361465,
		-0.487793, -0.321855, -0.811460,
		-0.872850, 0.165097, 0.459213,
		29.056753, 37.726830, 36.682518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332207, 38.102047, 35.896038>,  <29.667747, 37.611259, 36.361069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332207, 38.102047, 35.896038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120987, 38.119640, 36.235268>,  <28.994255, 38.130196, 36.438805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120987, 38.119640, 36.235268>,  <29.332207, 38.102047, 35.896038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120987, 38.119640, 36.235268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010693, 0.998234, -0.058429,
		-0.849145, -0.039922, -0.526648,
		-0.528051, 0.043983, 0.848073,
		28.962572, 38.132835, 36.489689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690586, 38.358925, 35.780434>,  <29.332207, 38.102047, 35.896038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690586, 38.358925, 35.780434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702562, 38.426834, 36.174446>,  <28.709747, 38.467579, 36.410854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702562, 38.426834, 36.174446>,  <28.690586, 38.358925, 35.780434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702562, 38.426834, 36.174446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248118, 0.955889, -0.157207,
		-0.968267, -0.239697, 0.070741,
		0.029939, 0.169770, 0.985029,
		28.711544, 38.477764, 36.469955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104237, 38.675392, 36.052822>,  <28.690586, 38.358925, 35.780434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104237, 38.675392, 36.052822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.361986, 38.774109, 36.342339>,  <28.516636, 38.833340, 36.516048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.361986, 38.774109, 36.342339>,  <28.104237, 38.675392, 36.052822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361986, 38.774109, 36.342339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468202, 0.875674, 0.118245,
		-0.604623, -0.415074, 0.679812,
		0.644374, 0.246796, 0.723791,
		28.555298, 38.848148, 36.559475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661097, 38.944187, 36.667191>,  <28.104237, 38.675392, 36.052822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661097, 38.944187, 36.667191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.040512, 39.070850, 36.666504>,  <28.268162, 39.146847, 36.666092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.040512, 39.070850, 36.666504>,  <27.661097, 38.944187, 36.667191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040512, 39.070850, 36.666504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314261, 0.942011, 0.117707,
		0.038891, -0.111109, 0.993047,
		0.948540, 0.316654, -0.001719,
		28.325073, 39.165848, 36.665989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581541, 39.484623, 36.960987>,  <27.661097, 38.944187, 36.667191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581541, 39.484623, 36.960987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954556, 39.569027, 36.843784>,  <28.178364, 39.619671, 36.773464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954556, 39.569027, 36.843784>,  <27.581541, 39.484623, 36.960987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954556, 39.569027, 36.843784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254669, 0.959625, -0.119433,
		0.255970, 0.185994, 0.948623,
		0.932536, 0.211013, -0.293002,
		28.234316, 39.632332, 36.755882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811625, 39.944721, 37.462505>,  <27.581541, 39.484623, 36.960987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811625, 39.944721, 37.462505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045933, 39.991676, 37.141731>,  <28.186518, 40.019848, 36.949268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045933, 39.991676, 37.141731>,  <27.811625, 39.944721, 37.462505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045933, 39.991676, 37.141731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197942, 0.980213, -0.001102,
		0.785934, 0.159381, 0.597416,
		0.585770, 0.117387, -0.801931,
		28.221664, 40.026894, 36.901154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319876, 40.498363, 37.612358>,  <27.811625, 39.944721, 37.462505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319876, 40.498363, 37.612358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250706, 40.490906, 37.218456>,  <28.209204, 40.486431, 36.982113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.250706, 40.490906, 37.218456>,  <28.319876, 40.498363, 37.612358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250706, 40.490906, 37.218456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266588, 0.963387, 0.028572,
		0.948171, 0.267466, -0.171564,
		-0.172925, -0.018646, -0.984758,
		28.198828, 40.485313, 36.923027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682377, 41.141682, 37.310013>,  <28.319876, 40.498363, 37.612358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682377, 41.141682, 37.310013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421108, 41.025391, 37.030342>,  <28.264347, 40.955616, 36.862541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421108, 41.025391, 37.030342>,  <28.682377, 41.141682, 37.310013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421108, 41.025391, 37.030342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381751, 0.923856, -0.027513,
		0.653935, 0.248939, -0.714422,
		-0.653174, -0.290723, -0.699174,
		28.225157, 40.938175, 36.820591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632469, 41.681908, 36.898136>,  <28.682377, 41.141682, 37.310013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632469, 41.681908, 36.898136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296556, 41.483994, 36.808731>,  <28.095009, 41.365246, 36.755089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296556, 41.483994, 36.808731>,  <28.632469, 41.681908, 36.898136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296556, 41.483994, 36.808731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482723, 0.868874, -0.109707,
		0.248488, 0.015766, -0.968507,
		-0.839781, -0.494782, -0.223515,
		28.044622, 41.335560, 36.741676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365419, 41.945595, 36.312180>,  <28.632469, 41.681908, 36.898136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365419, 41.945595, 36.312180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049822, 41.783894, 36.497250>,  <27.860464, 41.686874, 36.608292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049822, 41.783894, 36.497250>,  <28.365419, 41.945595, 36.312180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049822, 41.783894, 36.497250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505556, 0.855097, -0.114991,
		-0.349145, -0.324634, -0.879039,
		-0.788994, -0.404255, 0.462673,
		27.813124, 41.662617, 36.636051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837915, 42.312096, 35.992970>,  <28.365419, 41.945595, 36.312180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837915, 42.312096, 35.992970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658762, 42.140076, 36.306519>,  <27.551270, 42.036865, 36.494648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658762, 42.140076, 36.306519>,  <27.837915, 42.312096, 35.992970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658762, 42.140076, 36.306519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707001, 0.707030, -0.016070,
		-0.547312, -0.561397, -0.620712,
		-0.447884, -0.430049, 0.783874,
		27.524397, 42.011063, 36.541679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207565, 42.382492, 35.836777>,  <27.837915, 42.312096, 35.992970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207565, 42.382492, 35.836777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198332, 42.304585, 36.229008>,  <27.192791, 42.257839, 36.464348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198332, 42.304585, 36.229008>,  <27.207565, 42.382492, 35.836777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198332, 42.304585, 36.229008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742623, 0.660003, 0.113608,
		-0.669312, -0.725577, -0.159874,
		-0.023086, -0.194765, 0.980578,
		27.191406, 42.246155, 36.523182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542967, 42.312222, 36.027016>,  <27.207565, 42.382492, 35.836777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542967, 42.312222, 36.027016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720568, 42.415020, 36.370369>,  <26.827129, 42.476700, 36.576382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.720568, 42.415020, 36.370369>,  <26.542967, 42.312222, 36.027016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720568, 42.415020, 36.370369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852779, 0.415226, 0.316790,
		-0.275008, -0.872663, 0.403521,
		0.444004, 0.256995, 0.858379,
		26.853769, 42.492119, 36.627884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061602, 42.233864, 36.558247>,  <26.542967, 42.312222, 36.027016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061602, 42.233864, 36.558247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.333843, 42.474300, 36.725803>,  <26.497189, 42.618561, 36.826336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.333843, 42.474300, 36.725803>,  <26.061602, 42.233864, 36.558247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333843, 42.474300, 36.725803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729815, 0.606505, 0.315472,
		-0.064433, -0.520424, 0.851473,
		0.680602, 0.601091, 0.418892,
		26.538023, 42.654629, 36.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790573, 42.349373, 37.216499>,  <26.061602, 42.233864, 36.558247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790573, 42.349373, 37.216499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.054146, 42.641567, 37.144718>,  <26.212290, 42.816883, 37.101650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.054146, 42.641567, 37.144718>,  <25.790573, 42.349373, 37.216499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054146, 42.641567, 37.144718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626523, 0.665012, 0.406483,
		0.416265, -0.155417, 0.895862,
		0.658933, 0.730483, -0.179449,
		26.251825, 42.860714, 37.090885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654991, 42.808048, 37.777176>,  <25.790573, 42.349373, 37.216499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654991, 42.808048, 37.777176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.868952, 43.055565, 37.547054>,  <25.997328, 43.204075, 37.408981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.868952, 43.055565, 37.547054>,  <25.654991, 42.808048, 37.777176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868952, 43.055565, 37.547054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512947, 0.778892, 0.360849,
		0.671389, 0.102080, 0.734041,
		0.534904, 0.618794, -0.575301,
		26.029423, 43.241203, 37.374462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986774, 43.379250, 38.242130>,  <25.654991, 42.808048, 37.777176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986774, 43.379250, 38.242130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.940216, 43.491070, 37.860909>,  <25.912281, 43.558163, 37.632175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.940216, 43.491070, 37.860909>,  <25.986774, 43.379250, 38.242130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940216, 43.491070, 37.860909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616375, 0.732101, 0.290017,
		0.778803, 0.621193, 0.087095,
		-0.116394, 0.279549, -0.953050,
		25.905298, 43.574936, 37.574993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.222130, 36.247799, 45.657902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.906841, 36.002380, 45.638866>,  <41.717667, 35.855129, 45.627445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.906841, 36.002380, 45.638866>,  <42.222130, 36.247799, 45.657902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906841, 36.002380, 45.638866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386114, 0.432865, 0.814582,
		-0.479186, 0.660446, -0.578093,
		-0.788224, -0.613546, -0.047585,
		41.670376, 35.818317, 45.624592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572491, 36.681618, 45.829224>,  <42.222130, 36.247799, 45.657902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572491, 36.681618, 45.829224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.489220, 36.296211, 45.896515>,  <41.439259, 36.064968, 45.936890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.489220, 36.296211, 45.896515>,  <41.572491, 36.681618, 45.829224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489220, 36.296211, 45.896515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508413, 0.253532, 0.822945,
		-0.835572, 0.085785, -0.542642,
		-0.208173, -0.963516, 0.168230,
		41.426769, 36.007156, 45.946983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999001, 36.759609, 46.247677>,  <41.572491, 36.681618, 45.829224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999001, 36.759609, 46.247677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.134872, 36.388664, 46.310429>,  <41.216396, 36.166096, 46.348080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.134872, 36.388664, 46.310429>,  <40.999001, 36.759609, 46.247677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134872, 36.388664, 46.310429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202201, 0.090895, 0.975117,
		-0.918550, -0.362948, -0.156640,
		0.339679, -0.927366, 0.156880,
		41.236774, 36.110455, 46.357494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508434, 36.325733, 46.625988>,  <40.999001, 36.759609, 46.247677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508434, 36.325733, 46.625988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.857758, 36.138493, 46.679970>,  <41.067352, 36.026146, 46.712360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.857758, 36.138493, 46.679970>,  <40.508434, 36.325733, 46.625988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857758, 36.138493, 46.679970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165230, -0.023998, 0.985963,
		-0.458297, -0.883346, -0.098303,
		0.873306, -0.468106, 0.134957,
		41.119751, 35.998062, 46.720455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404484, 35.749107, 47.114101>,  <40.508434, 36.325733, 46.625988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404484, 35.749107, 47.114101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.796726, 35.827259, 47.107849>,  <41.032070, 35.874149, 47.104099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.796726, 35.827259, 47.107849>,  <40.404484, 35.749107, 47.114101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796726, 35.827259, 47.107849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029500, -0.068290, 0.997229,
		0.193767, -0.978348, -0.072729,
		0.980604, 0.195375, -0.015629,
		41.090908, 35.885872, 47.103161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717937, 35.396740, 47.721630>,  <40.404484, 35.749107, 47.114101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717937, 35.396740, 47.721630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.016647, 35.647518, 47.632851>,  <41.195873, 35.797985, 47.579582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.016647, 35.647518, 47.632851>,  <40.717937, 35.396740, 47.721630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016647, 35.647518, 47.632851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188667, 0.120305, 0.974644,
		0.637752, -0.769716, -0.028443,
		0.746778, 0.626948, -0.221945,
		41.240681, 35.835602, 47.566269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453194, 35.167305, 48.047516>,  <40.717937, 35.396740, 47.721630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453194, 35.167305, 48.047516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.489513, 35.555454, 47.957962>,  <41.511307, 35.788345, 47.904232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.489513, 35.555454, 47.957962>,  <41.453194, 35.167305, 48.047516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489513, 35.555454, 47.957962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402458, 0.169879, 0.899538,
		0.910924, -0.171782, -0.375111,
		0.090801, 0.970377, -0.223882,
		41.516754, 35.846569, 47.890797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143597, 35.359936, 48.306332>,  <41.453194, 35.167305, 48.047516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143597, 35.359936, 48.306332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.939713, 35.702110, 48.269600>,  <41.817383, 35.907413, 48.247562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.939713, 35.702110, 48.269600>,  <42.143597, 35.359936, 48.306332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939713, 35.702110, 48.269600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250865, 0.249871, 0.935217,
		0.822961, 0.453651, -0.341959,
		-0.509707, 0.855433, -0.091829,
		41.786800, 35.958740, 48.242050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612579, 35.831188, 48.601303>,  <42.143597, 35.359936, 48.306332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612579, 35.831188, 48.601303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.261482, 36.022636, 48.610111>,  <42.050823, 36.137505, 48.615395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.261482, 36.022636, 48.610111>,  <42.612579, 35.831188, 48.601303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261482, 36.022636, 48.610111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102794, 0.143230, 0.984337,
		0.467974, 0.866259, -0.174919,
		-0.877744, 0.478624, 0.022018,
		41.998158, 36.166225, 48.616718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703114, 36.076080, 49.172527>,  <42.612579, 35.831188, 48.601303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703114, 36.076080, 49.172527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308270, 36.109207, 49.117752>,  <42.071362, 36.129086, 49.084885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.308270, 36.109207, 49.117752>,  <42.703114, 36.076080, 49.172527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308270, 36.109207, 49.117752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130486, 0.078895, 0.988306,
		0.092657, 0.993437, -0.067071,
		-0.987111, 0.082822, -0.136940,
		42.012135, 36.134052, 49.076672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498520, 36.602291, 49.657436>,  <42.703114, 36.076080, 49.172527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498520, 36.602291, 49.657436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.170731, 36.394836, 49.559875>,  <41.974056, 36.270363, 49.501339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.170731, 36.394836, 49.559875>,  <42.498520, 36.602291, 49.657436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170731, 36.394836, 49.559875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353920, 0.123211, 0.927125,
		-0.450786, 0.846072, -0.284522,
		-0.819471, -0.518633, -0.243900,
		41.924889, 36.239246, 49.486706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960964, 36.971016, 49.909588>,  <42.498520, 36.602291, 49.657436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960964, 36.971016, 49.909588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.777069, 36.622272, 49.842060>,  <41.666733, 36.413025, 49.801544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.777069, 36.622272, 49.842060>,  <41.960964, 36.971016, 49.909588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777069, 36.622272, 49.842060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492815, 0.092328, 0.865222,
		-0.738764, 0.480976, -0.472112,
		-0.459740, -0.871859, -0.168824,
		41.639149, 36.360714, 49.791412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224991, 36.626087, 49.948586>,  <41.960964, 36.971016, 49.909588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224991, 36.626087, 49.948586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.001724, 36.590683, 50.278584>,  <40.867764, 36.569443, 50.476582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.001724, 36.590683, 50.278584>,  <41.224991, 36.626087, 49.948586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001724, 36.590683, 50.278584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474384, 0.849799, -0.229784,
		-0.680743, -0.519622, -0.516316,
		-0.558166, -0.088508, 0.824995,
		40.834274, 36.564129, 50.526081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173058, 37.267181, 49.768600>,  <41.224991, 36.626087, 49.948586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173058, 37.267181, 49.768600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.787838, 37.216690, 49.673431>,  <40.556705, 37.186394, 49.616329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.787838, 37.216690, 49.673431>,  <41.173058, 37.267181, 49.768600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787838, 37.216690, 49.673431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101486, -0.648188, 0.754687,
		-0.249485, 0.750944, 0.611424,
		-0.963046, -0.126232, -0.237923,
		40.498924, 37.178822, 49.602055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689098, 37.482418, 50.305389>,  <41.173058, 37.267181, 49.768600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689098, 37.482418, 50.305389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569920, 37.176704, 50.076618>,  <40.498413, 36.993275, 49.939358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569920, 37.176704, 50.076618>,  <40.689098, 37.482418, 50.305389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569920, 37.176704, 50.076618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132088, -0.626383, 0.768243,
		-0.945399, 0.153352, 0.287582,
		-0.297948, -0.764283, -0.571926,
		40.480534, 36.947418, 49.905041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032585, 37.557652, 50.638176>,  <40.689098, 37.482418, 50.305389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032585, 37.557652, 50.638176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066708, 37.947662, 50.720188>,  <40.087181, 38.181671, 50.769398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066708, 37.947662, 50.720188>,  <40.032585, 37.557652, 50.638176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066708, 37.947662, 50.720188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473353, 0.220739, -0.852767,
		-0.876732, -0.024306, 0.480364,
		0.085308, 0.975030, 0.205034,
		40.092300, 38.240170, 50.781700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388149, 37.805462, 50.371555>,  <40.032585, 37.557652, 50.638176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388149, 37.805462, 50.371555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.643105, 38.108574, 50.427402>,  <39.796078, 38.290443, 50.460911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.643105, 38.108574, 50.427402>,  <39.388149, 37.805462, 50.371555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643105, 38.108574, 50.427402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190156, 0.330282, -0.924530,
		-0.746707, 0.562740, 0.354616,
		0.637393, 0.757785, 0.139615,
		39.834324, 38.335911, 50.469288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052429, 38.406128, 50.149704>,  <39.388149, 37.805462, 50.371555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052429, 38.406128, 50.149704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433220, 38.520020, 50.104698>,  <39.661694, 38.588356, 50.077694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433220, 38.520020, 50.104698>,  <39.052429, 38.406128, 50.149704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433220, 38.520020, 50.104698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179733, 0.222254, -0.958279,
		-0.247846, 0.932487, 0.262758,
		0.951981, 0.284732, -0.112514,
		39.718815, 38.605438, 50.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128147, 39.096348, 49.894543>,  <39.052429, 38.406128, 50.149704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128147, 39.096348, 49.894543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465031, 38.904789, 49.795475>,  <39.667160, 38.789852, 49.736034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465031, 38.904789, 49.795475>,  <39.128147, 39.096348, 49.894543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465031, 38.904789, 49.795475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191574, 0.163575, -0.967751,
		0.503969, 0.862495, 0.046019,
		0.842208, -0.478900, -0.247668,
		39.717693, 38.761120, 49.721176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284348, 39.477299, 49.295883>,  <39.128147, 39.096348, 49.894543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284348, 39.477299, 49.295883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503860, 39.143391, 49.278008>,  <39.635567, 38.943047, 49.267281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.503860, 39.143391, 49.278008>,  <39.284348, 39.477299, 49.295883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503860, 39.143391, 49.278008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077250, 0.002590, -0.997008,
		0.832390, 0.550589, -0.063065,
		0.548779, -0.834772, -0.044689,
		39.668495, 38.892960, 49.264603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529930, 39.617008, 48.639927>,  <39.284348, 39.477299, 49.295883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529930, 39.617008, 48.639927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635258, 39.239635, 48.720516>,  <39.698456, 39.013210, 48.768871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635258, 39.239635, 48.720516>,  <39.529930, 39.617008, 48.639927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635258, 39.239635, 48.720516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015448, -0.204696, -0.978704,
		0.964584, 0.260827, -0.039326,
		0.263322, -0.943435, 0.201476,
		39.714256, 38.956604, 48.780960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176628, 39.421371, 48.367496>,  <39.529930, 39.617008, 48.639927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176628, 39.421371, 48.367496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.970139, 39.080284, 48.399437>,  <39.846245, 38.875629, 48.418602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.970139, 39.080284, 48.399437>,  <40.176628, 39.421371, 48.367496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970139, 39.080284, 48.399437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180578, -0.199508, -0.963114,
		0.837200, -0.482764, 0.256973,
		-0.516225, -0.852723, 0.079851,
		39.815269, 38.824467, 48.423393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598591, 38.749702, 47.996799>,  <40.176628, 39.421371, 48.367496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598591, 38.749702, 47.996799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.208187, 38.666641, 48.022961>,  <39.973946, 38.616802, 48.038658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.208187, 38.666641, 48.022961>,  <40.598591, 38.749702, 47.996799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208187, 38.666641, 48.022961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020559, -0.211167, -0.977234,
		0.216739, -0.955137, 0.201832,
		-0.976013, -0.207655, 0.065405,
		39.915382, 38.604343, 48.042583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473320, 38.262306, 47.512981>,  <40.598591, 38.749702, 47.996799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473320, 38.262306, 47.512981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.095875, 38.363651, 47.598221>,  <39.869408, 38.424458, 47.649364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.095875, 38.363651, 47.598221>,  <40.473320, 38.262306, 47.512981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095875, 38.363651, 47.598221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254709, -0.144426, -0.956172,
		-0.211484, -0.956529, 0.200816,
		-0.943609, 0.253364, 0.213093,
		39.812790, 38.439659, 47.662148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133568, 37.732311, 47.290272>,  <40.473320, 38.262306, 47.512981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133568, 37.732311, 47.290272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.882153, 38.043419, 47.289333>,  <39.731304, 38.230083, 47.288769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.882153, 38.043419, 47.289333>,  <40.133568, 37.732311, 47.290272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882153, 38.043419, 47.289333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269196, -0.220376, -0.937533,
		-0.729704, -0.588647, 0.347888,
		-0.628542, 0.777772, -0.002348,
		39.693588, 38.276749, 47.288628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554802, 37.438095, 47.024197>,  <40.133568, 37.732311, 47.290272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554802, 37.438095, 47.024197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.527878, 37.834164, 46.975159>,  <39.511723, 38.071804, 46.945736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.527878, 37.834164, 46.975159>,  <39.554802, 37.438095, 47.024197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527878, 37.834164, 46.975159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491167, -0.139840, -0.859767,
		-0.868461, 0.002347, 0.495752,
		-0.067308, 0.990171, -0.122598,
		39.507687, 38.131214, 46.938377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880463, 37.508785, 46.791397>,  <39.554802, 37.438095, 47.024197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880463, 37.508785, 46.791397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.092808, 37.828850, 46.679741>,  <39.220215, 38.020889, 46.612747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.092808, 37.828850, 46.679741>,  <38.880463, 37.508785, 46.791397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092808, 37.828850, 46.679741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409046, -0.046543, -0.911326,
		-0.742203, 0.597972, 0.302596,
		0.530864, 0.800164, -0.279142,
		39.252068, 38.068897, 46.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445755, 37.815418, 46.255630>,  <38.880463, 37.508785, 46.791397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445755, 37.815418, 46.255630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822578, 37.944412, 46.218712>,  <39.048676, 38.021809, 46.196560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822578, 37.944412, 46.218712>,  <38.445755, 37.815418, 46.255630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822578, 37.944412, 46.218712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082440, -0.044134, -0.995618,
		-0.325147, 0.945545, -0.014991,
		0.942063, 0.322486, -0.092301,
		39.105198, 38.041157, 46.191021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841702, 38.306477, 46.253803>,  <38.445755, 37.815418, 46.255630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841702, 38.306477, 46.253803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449821, 38.226715, 46.261974>,  <37.214691, 38.178860, 46.266876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449821, 38.226715, 46.261974>,  <37.841702, 38.306477, 46.253803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449821, 38.226715, 46.261974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003817, 0.083355, 0.996512,
		-0.200412, 0.976366, -0.080902,
		-0.979704, -0.199404, 0.020432,
		37.155910, 38.166893, 46.268105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601631, 38.735550, 46.724777>,  <37.841702, 38.306477, 46.253803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601631, 38.735550, 46.724777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.310150, 38.461636, 46.721493>,  <37.135262, 38.297287, 46.719524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.310150, 38.461636, 46.721493>,  <37.601631, 38.735550, 46.724777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310150, 38.461636, 46.721493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090288, 0.084183, 0.992351,
		-0.678857, 0.723866, -0.123172,
		-0.728698, -0.684786, -0.008208,
		37.091541, 38.256199, 46.719032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071178, 38.956688, 47.191082>,  <37.601631, 38.735550, 46.724777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071178, 38.956688, 47.191082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032402, 38.560146, 47.155708>,  <37.009136, 38.322220, 47.134483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.032402, 38.560146, 47.155708>,  <37.071178, 38.956688, 47.191082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032402, 38.560146, 47.155708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049189, -0.083974, 0.995253,
		-0.994074, 0.100833, -0.040623,
		-0.096943, -0.991353, -0.088436,
		37.003319, 38.262741, 47.129177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450111, 38.832710, 47.630814>,  <37.071178, 38.956688, 47.191082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450111, 38.832710, 47.630814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640411, 38.482067, 47.601898>,  <36.754593, 38.271683, 47.584549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640411, 38.482067, 47.601898>,  <36.450111, 38.832710, 47.630814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640411, 38.482067, 47.601898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035442, -0.101223, 0.994232,
		-0.878865, -0.470447, -0.079226,
		0.475753, -0.876604, -0.072288,
		36.783138, 38.219086, 47.580212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016499, 38.332020, 47.947010>,  <36.450111, 38.832710, 47.630814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016499, 38.332020, 47.947010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.385639, 38.177982, 47.949936>,  <36.607124, 38.085560, 47.951691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.385639, 38.177982, 47.949936>,  <36.016499, 38.332020, 47.947010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385639, 38.177982, 47.949936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064061, -0.134722, 0.988811,
		-0.379801, -0.912990, -0.148998,
		0.922848, -0.385096, 0.007319,
		36.662495, 38.062454, 47.952133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026951, 37.727810, 48.401550>,  <36.016499, 38.332020, 47.947010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026951, 37.727810, 48.401550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415874, 37.814987, 48.367802>,  <36.649227, 37.867294, 48.347553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415874, 37.814987, 48.367802>,  <36.026951, 37.727810, 48.401550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415874, 37.814987, 48.367802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140301, -0.255606, 0.956547,
		0.186903, -0.941896, -0.279105,
		0.972308, 0.217940, -0.084375,
		36.707565, 37.880371, 48.342487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304039, 37.165485, 48.646557>,  <36.026951, 37.727810, 48.401550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304039, 37.165485, 48.646557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569317, 37.461956, 48.688183>,  <36.728481, 37.639839, 48.713158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569317, 37.461956, 48.688183>,  <36.304039, 37.165485, 48.646557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569317, 37.461956, 48.688183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043933, -0.177350, 0.983167,
		0.747160, -0.647455, -0.150179,
		0.663191, 0.741181, 0.104064,
		36.768272, 37.684311, 48.719402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477650, 36.441601, 48.799129>,  <36.304039, 37.165485, 48.646557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477650, 36.441601, 48.799129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214577, 36.153221, 48.886478>,  <36.056732, 35.980194, 48.938889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.214577, 36.153221, 48.886478>,  <36.477650, 36.441601, 48.799129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214577, 36.153221, 48.886478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332181, 0.017389, -0.943055,
		0.676097, -0.692771, -0.250922,
		-0.657684, -0.720949, 0.218369,
		36.017273, 35.936935, 48.951988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707172, 35.925541, 48.370621>,  <36.477650, 36.441601, 48.799129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707172, 35.925541, 48.370621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323029, 35.867031, 48.465542>,  <36.092541, 35.831924, 48.522495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323029, 35.867031, 48.465542>,  <36.707172, 35.925541, 48.370621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323029, 35.867031, 48.465542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190886, -0.275308, -0.942215,
		0.203150, -0.950163, 0.236474,
		-0.960361, -0.146272, 0.237301,
		36.034920, 35.823151, 48.536732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509331, 35.264534, 48.106464>,  <36.707172, 35.925541, 48.370621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509331, 35.264534, 48.106464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160870, 35.459431, 48.130764>,  <35.951794, 35.576370, 48.145344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160870, 35.459431, 48.130764>,  <36.509331, 35.264534, 48.106464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160870, 35.459431, 48.130764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240602, -0.315742, -0.917833,
		-0.428025, -0.814189, 0.392290,
		-0.871152, 0.487241, 0.060750,
		35.899525, 35.605602, 48.148991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931114, 34.799431, 47.912296>,  <36.509331, 35.264534, 48.106464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931114, 34.799431, 47.912296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795185, 35.172562, 47.864384>,  <35.713627, 35.396442, 47.835636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795185, 35.172562, 47.864384>,  <35.931114, 34.799431, 47.912296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795185, 35.172562, 47.864384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468357, -0.278293, -0.838567,
		-0.815575, -0.228866, 0.531468,
		-0.339824, 0.932831, -0.119778,
		35.693237, 35.452412, 47.828449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218834, 34.743122, 47.763184>,  <35.931114, 34.799431, 47.912296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218834, 34.743122, 47.763184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308048, 35.108711, 47.627586>,  <35.361576, 35.328064, 47.546227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308048, 35.108711, 47.627586>,  <35.218834, 34.743122, 47.763184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308048, 35.108711, 47.627586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469243, -0.204151, -0.859147,
		-0.854440, 0.350689, 0.383341,
		0.223034, 0.913969, -0.338993,
		35.374958, 35.382900, 47.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603497, 34.968021, 47.383892>,  <35.218834, 34.743122, 47.763184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603497, 34.968021, 47.383892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887283, 35.203785, 47.229362>,  <35.057556, 35.345242, 47.136642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887283, 35.203785, 47.229362>,  <34.603497, 34.968021, 47.383892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887283, 35.203785, 47.229362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502303, 0.038421, -0.863838,
		-0.494311, 0.806921, 0.323320,
		0.709471, 0.589409, -0.386327,
		35.100124, 35.380608, 47.113464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323566, 35.637283, 46.996719>,  <34.603497, 34.968021, 47.383892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323566, 35.637283, 46.996719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682232, 35.544025, 46.846180>,  <34.897430, 35.488071, 46.755856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682232, 35.544025, 46.846180>,  <34.323566, 35.637283, 46.996719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682232, 35.544025, 46.846180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363430, 0.097810, -0.926473,
		0.252817, 0.967510, 0.002969,
		0.896662, -0.233149, -0.376350,
		34.951229, 35.474079, 46.733276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.495651, 33.179855, 49.892673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.694695, 33.491444, 49.740047>,  <39.814121, 33.678394, 49.648472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.694695, 33.491444, 49.740047>,  <39.495651, 33.179855, 49.892673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694695, 33.491444, 49.740047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346823, -0.224518, -0.910662,
		-0.795045, 0.585491, 0.158441,
		0.497612, 0.778968, -0.381563,
		39.843979, 33.725136, 49.625580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143784, 33.476097, 49.329716>,  <39.495651, 33.179855, 49.892673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143784, 33.476097, 49.329716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.517872, 33.596378, 49.254940>,  <39.742325, 33.668549, 49.210075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.517872, 33.596378, 49.254940>,  <39.143784, 33.476097, 49.329716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517872, 33.596378, 49.254940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090204, -0.308202, -0.947035,
		-0.342391, 0.902546, -0.261111,
		0.935217, 0.300703, -0.186939,
		39.798439, 33.686588, 49.198860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131374, 33.878944, 48.807194>,  <39.143784, 33.476097, 49.329716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131374, 33.878944, 48.807194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.511101, 33.753231, 48.805019>,  <39.738937, 33.677803, 48.803715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.511101, 33.753231, 48.805019>,  <39.131374, 33.878944, 48.807194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511101, 33.753231, 48.805019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158544, -0.463814, -0.871631,
		0.271419, 0.828313, -0.490132,
		0.949313, -0.314284, -0.005436,
		39.795895, 33.658947, 48.803387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325546, 34.073811, 48.239040>,  <39.131374, 33.878944, 48.807194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325546, 34.073811, 48.239040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.597504, 33.796719, 48.335262>,  <39.760677, 33.630463, 48.392994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.597504, 33.796719, 48.335262>,  <39.325546, 34.073811, 48.239040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597504, 33.796719, 48.335262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184778, -0.479287, -0.857987,
		0.709649, 0.538891, -0.453866,
		0.679893, -0.692734, 0.240550,
		39.801472, 33.588898, 48.407429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647358, 33.971416, 47.650959>,  <39.325546, 34.073811, 48.239040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647358, 33.971416, 47.650959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.713909, 33.640411, 47.865452>,  <39.753841, 33.441811, 47.994148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.713909, 33.640411, 47.865452>,  <39.647358, 33.971416, 47.650959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713909, 33.640411, 47.865452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314568, -0.559941, -0.766494,
		0.934540, -0.041152, -0.353471,
		0.166380, -0.827510, 0.536233,
		39.763824, 33.392159, 48.026321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104355, 33.547974, 47.351528>,  <39.647358, 33.971416, 47.650959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104355, 33.547974, 47.351528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.909328, 33.297241, 47.594627>,  <39.792313, 33.146801, 47.740486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.909328, 33.297241, 47.594627>,  <40.104355, 33.547974, 47.351528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909328, 33.297241, 47.594627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186368, -0.605326, -0.773852,
		0.852961, -0.490571, 0.178317,
		-0.487570, -0.626833, 0.607746,
		39.763058, 33.109192, 47.776951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397774, 32.861919, 47.147964>,  <40.104355, 33.547974, 47.351528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397774, 32.861919, 47.147964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.068821, 32.783653, 47.361660>,  <39.871449, 32.736694, 47.489876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.068821, 32.783653, 47.361660>,  <40.397774, 32.861919, 47.147964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068821, 32.783653, 47.361660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269291, -0.693296, -0.668448,
		0.501175, -0.693583, 0.517461,
		-0.822378, -0.195662, 0.534238,
		39.822109, 32.724957, 47.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346684, 32.071049, 47.188541>,  <40.397774, 32.861919, 47.147964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346684, 32.071049, 47.188541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.981876, 32.224052, 47.247746>,  <39.762993, 32.315857, 47.283268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.981876, 32.224052, 47.247746>,  <40.346684, 32.071049, 47.188541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981876, 32.224052, 47.247746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386240, -0.679565, -0.623707,
		-0.137994, -0.626000, 0.767517,
		-0.912018, 0.382514, 0.148011,
		39.708271, 32.338806, 47.292149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904957, 31.437466, 47.172096>,  <40.346684, 32.071049, 47.188541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904957, 31.437466, 47.172096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.637287, 31.728765, 47.112961>,  <39.476685, 31.903545, 47.077480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.637287, 31.728765, 47.112961>,  <39.904957, 31.437466, 47.172096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637287, 31.728765, 47.112961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442224, -0.550152, -0.708358,
		-0.597201, -0.408633, 0.690196,
		-0.669171, 0.728253, -0.147844,
		39.436535, 31.947241, 47.068607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287987, 31.159851, 46.995083>,  <39.904957, 31.437466, 47.172096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287987, 31.159851, 46.995083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.209679, 31.538673, 46.893288>,  <39.162693, 31.765966, 46.832211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.209679, 31.538673, 46.893288>,  <39.287987, 31.159851, 46.995083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209679, 31.538673, 46.893288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480159, -0.318843, -0.817182,
		-0.855057, -0.037783, 0.517156,
		-0.195766, 0.947054, -0.254487,
		39.150948, 31.822790, 46.816940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575775, 31.224550, 46.902092>,  <39.287987, 31.159851, 46.995083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575775, 31.224550, 46.902092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.776638, 31.496584, 46.688427>,  <38.897156, 31.659805, 46.560230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.776638, 31.496584, 46.688427>,  <38.575775, 31.224550, 46.902092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776638, 31.496584, 46.688427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302807, -0.440299, -0.845248,
		-0.810031, 0.586191, -0.015162,
		0.502153, 0.680086, -0.534158,
		38.927284, 31.700609, 46.528179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168716, 31.387938, 46.335846>,  <38.575775, 31.224550, 46.902092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168716, 31.387938, 46.335846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.520947, 31.537083, 46.218838>,  <38.732285, 31.626570, 46.148632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.520947, 31.537083, 46.218838>,  <38.168716, 31.387938, 46.335846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520947, 31.537083, 46.218838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176664, -0.314489, -0.932677,
		-0.439753, 0.872967, -0.211059,
		0.880572, 0.372861, -0.292519,
		38.785118, 31.648941, 46.131081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344788, 31.482523, 46.376137>,  <38.168716, 31.387938, 46.335846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344788, 31.482523, 46.376137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.991348, 31.589520, 46.222412>,  <36.779285, 31.653717, 46.130177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.991348, 31.589520, 46.222412>,  <37.344788, 31.482523, 46.376137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991348, 31.589520, 46.222412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245467, 0.434326, 0.866664,
		0.398743, 0.860122, -0.318111,
		-0.883601, 0.267491, -0.384316,
		36.726269, 31.669767, 46.107117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187698, 32.242664, 46.375114>,  <37.344788, 31.482523, 46.376137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187698, 32.242664, 46.375114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.866283, 32.008827, 46.419983>,  <36.673435, 31.868526, 46.446903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.866283, 32.008827, 46.419983>,  <37.187698, 32.242664, 46.375114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866283, 32.008827, 46.419983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167460, 0.402840, 0.899821,
		-0.571212, 0.704256, -0.421592,
		-0.803538, -0.584588, 0.112172,
		36.625221, 31.833450, 46.453636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627773, 32.520332, 46.543205>,  <37.187698, 32.242664, 46.375114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627773, 32.520332, 46.543205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.523571, 32.170155, 46.706047>,  <36.461048, 31.960047, 46.803753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.523571, 32.170155, 46.706047>,  <36.627773, 32.520332, 46.543205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523571, 32.170155, 46.706047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058567, 0.435212, 0.898421,
		-0.963694, 0.210204, -0.164648,
		-0.260508, -0.875446, 0.407100,
		36.445419, 31.907520, 46.828178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024021, 32.687447, 46.923256>,  <36.627773, 32.520332, 46.543205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024021, 32.687447, 46.923256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182266, 32.349777, 47.067959>,  <36.277214, 32.147175, 47.154781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.182266, 32.349777, 47.067959>,  <36.024021, 32.687447, 46.923256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182266, 32.349777, 47.067959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106986, 0.348849, 0.931052,
		-0.912164, -0.407040, 0.047695,
		0.395614, -0.844170, 0.361755,
		36.300949, 32.096527, 47.176487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557419, 32.454304, 47.496403>,  <36.024021, 32.687447, 46.923256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557419, 32.454304, 47.496403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920261, 32.292557, 47.543118>,  <36.137966, 32.195507, 47.571148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920261, 32.292557, 47.543118>,  <35.557419, 32.454304, 47.496403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920261, 32.292557, 47.543118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009950, 0.297998, 0.954515,
		-0.420776, -0.864688, 0.274340,
		0.907110, -0.404367, 0.116787,
		36.192394, 32.171246, 47.578152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416855, 32.208557, 48.063114>,  <35.557419, 32.454304, 47.496403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416855, 32.208557, 48.063114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814369, 32.218655, 48.019749>,  <36.052879, 32.224712, 47.993729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.814369, 32.218655, 48.019749>,  <35.416855, 32.208557, 48.063114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814369, 32.218655, 48.019749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096327, 0.293081, 0.951223,
		0.055783, -0.955754, 0.288828,
		0.993785, 0.025240, -0.108413,
		36.112503, 32.226227, 47.987225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658298, 31.888983, 48.623249>,  <35.416855, 32.208557, 48.063114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658298, 31.888983, 48.623249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960434, 32.115143, 48.490711>,  <36.141716, 32.250839, 48.411190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960434, 32.115143, 48.490711>,  <35.658298, 31.888983, 48.623249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960434, 32.115143, 48.490711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175013, 0.313209, 0.933418,
		0.631534, -0.763036, 0.137626,
		0.755338, 0.565399, -0.331344,
		36.187035, 32.284763, 48.391308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005779, 31.653994, 49.198101>,  <35.658298, 31.888983, 48.623249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005779, 31.653994, 49.198101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.210857, 31.947939, 49.020512>,  <36.333904, 32.124306, 48.913956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.210857, 31.947939, 49.020512>,  <36.005779, 31.653994, 49.198101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210857, 31.947939, 49.020512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426008, 0.231227, 0.874672,
		0.745426, -0.637579, -0.194509,
		0.512697, 0.734866, -0.443976,
		36.364666, 32.168400, 48.887318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755276, 31.678501, 49.413059>,  <36.005779, 31.653994, 49.198101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755276, 31.678501, 49.413059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693058, 32.049885, 49.278137>,  <36.655727, 32.272717, 49.197186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.693058, 32.049885, 49.278137>,  <36.755276, 31.678501, 49.413059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693058, 32.049885, 49.278137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425473, 0.371129, 0.825371,
		0.891505, -0.015134, -0.452759,
		-0.155540, 0.928458, -0.337302,
		36.646397, 32.328423, 49.176945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347534, 32.151192, 49.519260>,  <36.755276, 31.678501, 49.413059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347534, 32.151192, 49.519260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029144, 32.393196, 49.511402>,  <36.838112, 32.538399, 49.506687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029144, 32.393196, 49.511402>,  <37.347534, 32.151192, 49.519260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029144, 32.393196, 49.511402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281530, 0.398735, 0.872783,
		0.535878, 0.689181, -0.487712,
		-0.795974, 0.605012, -0.019648,
		36.790352, 32.574699, 49.505508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650135, 32.759312, 49.704067>,  <37.347534, 32.151192, 49.519260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650135, 32.759312, 49.704067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.262978, 32.847973, 49.751499>,  <37.030685, 32.901169, 49.779957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.262978, 32.847973, 49.751499>,  <37.650135, 32.759312, 49.704067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262978, 32.847973, 49.751499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226688, 0.565739, 0.792813,
		0.108641, 0.794236, -0.597818,
		-0.967889, 0.221651, 0.118581,
		36.972610, 32.914467, 49.787075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553219, 33.566257, 49.775475>,  <37.650135, 32.759312, 49.704067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553219, 33.566257, 49.775475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.254452, 33.367306, 49.951988>,  <37.075191, 33.247936, 50.057896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.254452, 33.367306, 49.951988>,  <37.553219, 33.566257, 49.775475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254452, 33.367306, 49.951988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179312, 0.488409, 0.853993,
		-0.640285, 0.716988, -0.275614,
		-0.746915, -0.497378, 0.441285,
		37.030376, 33.218094, 50.084373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240330, 34.044338, 50.221928>,  <37.553219, 33.566257, 49.775475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240330, 34.044338, 50.221928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077805, 33.705238, 50.358303>,  <36.980289, 33.501778, 50.440128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.077805, 33.705238, 50.358303>,  <37.240330, 34.044338, 50.221928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077805, 33.705238, 50.358303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067989, 0.344042, 0.936490,
		-0.911202, 0.403685, -0.082150,
		-0.406310, -0.847746, 0.340938,
		36.955910, 33.450916, 50.460583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617622, 34.221581, 50.663593>,  <37.240330, 34.044338, 50.221928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617622, 34.221581, 50.663593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.741146, 33.859062, 50.779015>,  <36.815262, 33.641552, 50.848267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.741146, 33.859062, 50.779015>,  <36.617622, 34.221581, 50.663593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741146, 33.859062, 50.779015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125614, 0.261866, 0.956895,
		-0.942791, -0.331749, -0.032976,
		0.308814, -0.906294, 0.288557,
		36.833790, 33.587173, 50.865582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326309, 33.893192, 51.267231>,  <36.617622, 34.221581, 50.663593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326309, 33.893192, 51.267231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.410233, 34.268009, 51.378891>,  <36.460587, 34.492901, 51.445885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.410233, 34.268009, 51.378891>,  <36.326309, 33.893192, 51.267231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410233, 34.268009, 51.378891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318244, 0.335404, -0.886693,
		-0.924500, 0.097201, 0.368581,
		0.209811, 0.937047, 0.279147,
		36.473175, 34.549122, 51.462635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653912, 34.297253, 51.127701>,  <36.326309, 33.893192, 51.267231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653912, 34.297253, 51.127701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960510, 34.553997, 51.136692>,  <36.144470, 34.708042, 51.142086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960510, 34.553997, 51.136692>,  <35.653912, 34.297253, 51.127701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960510, 34.553997, 51.136692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264651, 0.347543, -0.899541,
		-0.585191, 0.683542, 0.436258,
		0.766493, 0.641860, 0.022479,
		36.190456, 34.746555, 51.143436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299938, 34.888905, 50.959709>,  <35.653912, 34.297253, 51.127701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299938, 34.888905, 50.959709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691826, 34.942471, 50.900097>,  <35.926960, 34.974609, 50.864330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691826, 34.942471, 50.900097>,  <35.299938, 34.888905, 50.959709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691826, 34.942471, 50.900097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187355, 0.348774, -0.918289,
		-0.070993, 0.927590, 0.366791,
		0.979724, 0.133912, -0.149028,
		35.985744, 34.982643, 50.855389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357670, 35.462437, 50.696571>,  <35.299938, 34.888905, 50.959709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357670, 35.462437, 50.696571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.735489, 35.385742, 50.589935>,  <35.962181, 35.339725, 50.525955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.735489, 35.385742, 50.589935>,  <35.357670, 35.462437, 50.696571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735489, 35.385742, 50.589935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128131, 0.532282, -0.836814,
		0.302351, 0.824567, 0.478197,
		0.944546, -0.191740, -0.266588,
		36.018852, 35.328220, 50.509960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713589, 36.118004, 50.630680>,  <35.357670, 35.462437, 50.696571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713589, 36.118004, 50.630680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.891460, 35.828915, 50.419044>,  <35.998184, 35.655460, 50.292065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.891460, 35.828915, 50.419044>,  <35.713589, 36.118004, 50.630680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891460, 35.828915, 50.419044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109572, 0.542373, -0.832962,
		0.888963, 0.428372, 0.161991,
		0.444678, -0.722723, -0.529087,
		36.024864, 35.612099, 50.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009674, 36.491894, 50.097694>,  <35.713589, 36.118004, 50.630680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009674, 36.491894, 50.097694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042336, 36.115620, 49.965973>,  <36.061932, 35.889854, 49.886940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.042336, 36.115620, 49.965973>,  <36.009674, 36.491894, 50.097694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042336, 36.115620, 49.965973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047063, 0.326396, -0.944061,
		0.995549, 0.092586, -0.017619,
		0.081656, -0.940688, -0.329300,
		36.066833, 35.833412, 49.867184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413486, 36.552551, 49.558693>,  <36.009674, 36.491894, 50.097694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413486, 36.552551, 49.558693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219288, 36.208759, 49.494709>,  <36.102768, 36.002483, 49.456318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219288, 36.208759, 49.494709>,  <36.413486, 36.552551, 49.558693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219288, 36.208759, 49.494709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010530, 0.177209, -0.984117,
		0.874173, -0.479474, -0.076985,
		-0.485501, -0.859478, -0.159961,
		36.073639, 35.950916, 49.446720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020435, 36.876549, 49.235394>,  <36.413486, 36.552551, 49.558693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020435, 36.876549, 49.235394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.114117, 37.265007, 49.217419>,  <37.170326, 37.498081, 49.206635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.114117, 37.265007, 49.217419>,  <37.020435, 36.876549, 49.235394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114117, 37.265007, 49.217419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208594, -0.005053, 0.977989,
		0.949546, -0.238420, -0.203759,
		0.234202, 0.971149, -0.044935,
		37.184376, 37.556351, 49.203938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683571, 36.906376, 49.537258>,  <37.020435, 36.876549, 49.235394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683571, 36.906376, 49.537258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.513035, 37.267822, 49.553844>,  <37.410713, 37.484688, 49.563797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.513035, 37.267822, 49.553844>,  <37.683571, 36.906376, 49.537258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513035, 37.267822, 49.553844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362120, 0.128491, 0.923233,
		0.828917, 0.408626, -0.381997,
		-0.426340, 0.903612, 0.041463,
		37.385132, 37.538906, 49.566284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177837, 37.507957, 49.764133>,  <37.683571, 36.906376, 49.537258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177837, 37.507957, 49.764133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.805866, 37.628521, 49.848408>,  <37.582684, 37.700859, 49.898972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.805866, 37.628521, 49.848408>,  <38.177837, 37.507957, 49.764133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805866, 37.628521, 49.848408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244317, 0.078180, 0.966539,
		0.274850, 0.950285, -0.146340,
		-0.929928, 0.301407, 0.210683,
		37.526886, 37.718945, 49.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348675, 38.002716, 50.249794>,  <38.177837, 37.507957, 49.764133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348675, 38.002716, 50.249794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.950199, 37.978073, 50.274517>,  <37.711113, 37.963287, 50.289352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.950199, 37.978073, 50.274517>,  <38.348675, 38.002716, 50.249794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950199, 37.978073, 50.274517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062697, -0.012622, 0.997953,
		-0.060697, 0.998021, 0.016436,
		-0.996185, -0.061603, 0.061807,
		37.651344, 37.959591, 50.293060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204510, 38.627056, 50.623730>,  <38.348675, 38.002716, 50.249794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204510, 38.627056, 50.623730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.914619, 38.355965, 50.673450>,  <37.740685, 38.193310, 50.703285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.914619, 38.355965, 50.673450>,  <38.204510, 38.627056, 50.623730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914619, 38.355965, 50.673450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220403, -0.057089, 0.973737,
		-0.652835, 0.733091, 0.190748,
		-0.724727, -0.677731, 0.124306,
		37.697201, 38.152645, 50.710743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767445, 38.882969, 51.178429>,  <38.204510, 38.627056, 50.623730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767445, 38.882969, 51.178429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.698826, 38.489552, 51.155762>,  <37.657654, 38.253502, 51.142162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.698826, 38.489552, 51.155762>,  <37.767445, 38.882969, 51.178429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698826, 38.489552, 51.155762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071298, -0.069764, 0.995013,
		-0.982593, 0.166648, 0.082093,
		-0.171544, -0.983545, -0.056668,
		37.647362, 38.194489, 51.138760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143597, 38.706051, 51.546379>,  <37.767445, 38.882969, 51.178429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143597, 38.706051, 51.546379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.403603, 38.402546, 51.529545>,  <37.559605, 38.220444, 51.519444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.403603, 38.402546, 51.529545>,  <37.143597, 38.706051, 51.546379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403603, 38.402546, 51.529545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068441, -0.113608, 0.991166,
		-0.756837, -0.641388, -0.125776,
		0.650011, -0.758759, -0.042086,
		37.598606, 38.174919, 51.516918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208130, 38.485451, 52.190552>,  <37.143597, 38.706051, 51.546379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208130, 38.485451, 52.190552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507065, 38.256092, 52.056267>,  <37.686424, 38.118477, 51.975697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507065, 38.256092, 52.056267>,  <37.208130, 38.485451, 52.190552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507065, 38.256092, 52.056267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190912, -0.298641, 0.935075,
		-0.636429, -0.762907, -0.113717,
		0.747336, -0.573399, -0.335712,
		37.731266, 38.084072, 51.955555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074070, 37.733551, 52.423309>,  <37.208130, 38.485451, 52.190552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074070, 37.733551, 52.423309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.464085, 37.812469, 52.382565>,  <37.698093, 37.859821, 52.358116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.464085, 37.812469, 52.382565>,  <37.074070, 37.733551, 52.423309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464085, 37.812469, 52.382565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155611, -0.279923, 0.947327,
		0.158386, -0.939531, -0.303636,
		0.975038, 0.197293, -0.101865,
		37.756596, 37.871658, 52.352005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.932690, 37.051132, 36.035728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301041, 37.204720, 36.008728>,  <36.522049, 37.296871, 35.992527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301041, 37.204720, 36.008728>,  <35.932690, 37.051132, 36.035728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301041, 37.204720, 36.008728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175164, -0.252817, 0.951526,
		0.348295, -0.888059, -0.300071,
		0.920874, 0.383973, -0.067501,
		36.577301, 37.319912, 35.988476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447826, 36.550224, 36.305214>,  <35.932690, 37.051132, 36.035728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447826, 36.550224, 36.305214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618244, 36.911228, 36.330410>,  <36.720497, 37.127831, 36.345528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618244, 36.911228, 36.330410>,  <36.447826, 36.550224, 36.305214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618244, 36.911228, 36.330410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326982, -0.218532, 0.919416,
		0.843545, -0.371116, -0.388208,
		0.426046, 0.902506, 0.062993,
		36.746059, 37.181980, 36.349308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020233, 36.407001, 36.768097>,  <36.447826, 36.550224, 36.305214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020233, 36.407001, 36.768097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970909, 36.803616, 36.751877>,  <36.941315, 37.041584, 36.742146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970909, 36.803616, 36.751877>,  <37.020233, 36.407001, 36.768097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970909, 36.803616, 36.751877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245447, 0.070067, 0.966874,
		0.961535, 0.109277, -0.252011,
		-0.123315, 0.991539, -0.040550,
		36.933914, 37.101078, 36.739712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635929, 36.666500, 37.042992>,  <37.020233, 36.407001, 36.768097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635929, 36.666500, 37.042992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322136, 36.912949, 37.071213>,  <37.133858, 37.060818, 37.088146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322136, 36.912949, 37.071213>,  <37.635929, 36.666500, 37.042992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322136, 36.912949, 37.071213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120193, 0.039448, 0.991967,
		0.608388, 0.786663, -0.105000,
		-0.784486, 0.616121, 0.070552,
		37.086792, 37.097786, 37.092377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748760, 37.028553, 37.662468>,  <37.635929, 36.666500, 37.042992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748760, 37.028553, 37.662468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356873, 37.071678, 37.594902>,  <37.121742, 37.097553, 37.554363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356873, 37.071678, 37.594902>,  <37.748760, 37.028553, 37.662468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356873, 37.071678, 37.594902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154006, 0.134237, 0.978909,
		0.128211, 0.985067, -0.114911,
		-0.979716, 0.107810, -0.168917,
		37.062958, 37.104023, 37.544228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572769, 37.579948, 38.038979>,  <37.748760, 37.028553, 37.662468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572769, 37.579948, 38.038979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205803, 37.444019, 37.956150>,  <36.985622, 37.362461, 37.906452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205803, 37.444019, 37.956150>,  <37.572769, 37.579948, 38.038979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205803, 37.444019, 37.956150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262838, 0.126759, 0.956477,
		-0.298785, 0.931908, -0.205608,
		-0.917412, -0.339822, -0.207067,
		36.930580, 37.342072, 37.894032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154259, 38.051331, 38.243092>,  <37.572769, 37.579948, 38.038979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154259, 38.051331, 38.243092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915958, 37.730331, 38.229973>,  <36.772976, 37.537731, 38.222099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915958, 37.730331, 38.229973>,  <37.154259, 38.051331, 38.243092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915958, 37.730331, 38.229973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274156, 0.164802, 0.947459,
		-0.754927, 0.573446, -0.318191,
		-0.595755, -0.802496, -0.032800,
		36.737232, 37.489582, 38.220135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510967, 38.263504, 38.425556>,  <37.154259, 38.051331, 38.243092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510967, 38.263504, 38.425556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481522, 37.870300, 38.492809>,  <36.463856, 37.634377, 38.533161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481522, 37.870300, 38.492809>,  <36.510967, 38.263504, 38.425556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481522, 37.870300, 38.492809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289400, 0.182393, 0.939671,
		-0.954374, 0.020513, -0.297910,
		-0.073613, -0.983012, 0.168135,
		36.459438, 37.575397, 38.543251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829937, 38.197792, 38.782555>,  <36.510967, 38.263504, 38.425556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829937, 38.197792, 38.782555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027489, 37.860577, 38.867752>,  <36.146019, 37.658249, 38.918873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027489, 37.860577, 38.867752>,  <35.829937, 38.197792, 38.782555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027489, 37.860577, 38.867752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271754, 0.083034, 0.958778,
		-0.825973, -0.531404, -0.188090,
		0.493880, -0.843039, 0.212995,
		36.175652, 37.607666, 38.931652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370152, 37.772346, 39.147221>,  <35.829937, 38.197792, 38.782555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370152, 37.772346, 39.147221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720108, 37.610779, 39.254116>,  <35.930080, 37.513840, 39.318253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720108, 37.610779, 39.254116>,  <35.370152, 37.772346, 39.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720108, 37.610779, 39.254116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265729, 0.060975, 0.962118,
		-0.404911, -0.912761, -0.053987,
		0.874892, -0.403918, 0.267236,
		35.982574, 37.489605, 39.334286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172775, 37.290001, 39.653545>,  <35.370152, 37.772346, 39.147221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172775, 37.290001, 39.653545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562050, 37.364273, 39.707844>,  <35.795616, 37.408836, 39.740421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562050, 37.364273, 39.707844>,  <35.172775, 37.290001, 39.653545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562050, 37.364273, 39.707844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126832, -0.059121, 0.990161,
		0.191883, -0.980829, -0.033985,
		0.973188, 0.185685, 0.135745,
		35.854008, 37.419979, 39.748566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313625, 36.769859, 40.176678>,  <35.172775, 37.290001, 39.653545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313625, 36.769859, 40.176678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580128, 37.067829, 40.162884>,  <35.740028, 37.246609, 40.154606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580128, 37.067829, 40.162884>,  <35.313625, 36.769859, 40.176678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580128, 37.067829, 40.162884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009805, 0.037489, 0.999249,
		0.745655, -0.666098, 0.017674,
		0.666260, 0.744922, -0.034485,
		35.780006, 37.291306, 40.152538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233406, 36.074360, 40.371235>,  <35.313625, 36.769859, 40.176678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233406, 36.074360, 40.371235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893703, 35.905941, 40.498669>,  <34.689884, 35.804890, 40.575127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893703, 35.905941, 40.498669>,  <35.233406, 36.074360, 40.371235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893703, 35.905941, 40.498669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234374, -0.240054, -0.942042,
		0.473117, -0.874698, 0.105185,
		-0.849252, -0.421044, 0.318580,
		34.638927, 35.779629, 40.594242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229275, 35.440666, 39.991283>,  <35.233406, 36.074360, 40.371235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229275, 35.440666, 39.991283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845428, 35.497402, 40.088463>,  <34.615120, 35.531445, 40.146770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845428, 35.497402, 40.088463>,  <35.229275, 35.440666, 39.991283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845428, 35.497402, 40.088463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263440, -0.150052, -0.952934,
		-0.098713, -0.978450, 0.181359,
		-0.959612, 0.141844, 0.242951,
		34.557545, 35.539955, 40.161346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887932, 34.899799, 39.680073>,  <35.229275, 35.440666, 39.991283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887932, 34.899799, 39.680073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597069, 35.161152, 39.764297>,  <34.422550, 35.317963, 39.814831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597069, 35.161152, 39.764297>,  <34.887932, 34.899799, 39.680073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597069, 35.161152, 39.764297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426608, -0.189805, -0.884296,
		-0.537813, -0.732853, 0.416755,
		-0.727161, 0.653377, 0.210561,
		34.378922, 35.357166, 39.827465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217915, 34.573818, 39.607044>,  <34.887932, 34.899799, 39.680073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217915, 34.573818, 39.607044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115299, 34.957329, 39.558167>,  <34.053730, 35.187435, 39.528839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115299, 34.957329, 39.558167>,  <34.217915, 34.573818, 39.607044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115299, 34.957329, 39.558167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379448, -0.216182, -0.899603,
		-0.888937, -0.184414, 0.419265,
		-0.256537, 0.958779, -0.122197,
		34.038338, 35.244961, 39.521507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562435, 34.531258, 39.439747>,  <34.217915, 34.573818, 39.607044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562435, 34.531258, 39.439747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696342, 34.886646, 39.314171>,  <33.776688, 35.099880, 39.238827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696342, 34.886646, 39.314171>,  <33.562435, 34.531258, 39.439747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696342, 34.886646, 39.314171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256954, -0.234462, -0.937551,
		-0.906590, 0.394530, 0.149805,
		0.334769, 0.888467, -0.313937,
		33.796772, 35.153187, 39.219990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092655, 34.801136, 38.936756>,  <33.562435, 34.531258, 39.439747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092655, 34.801136, 38.936756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406559, 35.032936, 38.848820>,  <33.594902, 35.172016, 38.796059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406559, 35.032936, 38.848820>,  <33.092655, 34.801136, 38.936756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406559, 35.032936, 38.848820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140071, -0.179704, -0.973697,
		-0.603764, 0.794913, -0.059854,
		0.784761, 0.579500, -0.219843,
		33.641987, 35.206787, 38.782867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881191, 35.191872, 38.333782>,  <33.092655, 34.801136, 38.936756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881191, 35.191872, 38.333782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275967, 35.255764, 38.342228>,  <33.512833, 35.294098, 38.347294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275967, 35.255764, 38.342228>,  <32.881191, 35.191872, 38.333782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275967, 35.255764, 38.342228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019130, 0.013942, -0.999720,
		-0.159976, 0.987063, 0.010704,
		0.986935, 0.159727, 0.021113,
		33.572048, 35.303680, 38.348560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055996, 35.840614, 37.963490>,  <32.881191, 35.191872, 38.333782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055996, 35.840614, 37.963490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378414, 35.604862, 37.985111>,  <33.571865, 35.463409, 37.998085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378414, 35.604862, 37.985111>,  <33.055996, 35.840614, 37.963490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378414, 35.604862, 37.985111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054492, -0.017037, -0.998369,
		0.589342, 0.807675, 0.018384,
		0.806044, -0.589382, 0.054052,
		33.620228, 35.428047, 38.001328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532864, 36.169914, 37.564625>,  <33.055996, 35.840614, 37.963490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532864, 36.169914, 37.564625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620926, 35.780048, 37.580406>,  <33.673763, 35.546127, 37.589874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620926, 35.780048, 37.580406>,  <33.532864, 36.169914, 37.564625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620926, 35.780048, 37.580406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194892, 0.004318, -0.980815,
		0.955797, 0.223624, 0.190905,
		0.220158, -0.974666, 0.039456,
		33.686974, 35.487648, 37.592243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985703, 36.145725, 37.062504>,  <33.532864, 36.169914, 37.564625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985703, 36.145725, 37.062504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918575, 35.755730, 37.120785>,  <33.878300, 35.521732, 37.155754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918575, 35.755730, 37.120785>,  <33.985703, 36.145725, 37.062504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918575, 35.755730, 37.120785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238361, -0.183544, -0.953675,
		0.956567, -0.125318, 0.263202,
		-0.167821, -0.974991, 0.145702,
		33.868229, 35.463234, 37.164494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436981, 35.851826, 36.588840>,  <33.985703, 36.145725, 37.062504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436981, 35.851826, 36.588840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188072, 35.551445, 36.677246>,  <34.038727, 35.371216, 36.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188072, 35.551445, 36.677246>,  <34.436981, 35.851826, 36.588840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188072, 35.551445, 36.677246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045372, -0.316466, -0.947518,
		0.781487, -0.579584, 0.230999,
		-0.622270, -0.750954, 0.221017,
		34.001392, 35.326160, 36.743549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723042, 35.117661, 36.362019>,  <34.436981, 35.851826, 36.588840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723042, 35.117661, 36.362019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323578, 35.110924, 36.381599>,  <34.083900, 35.106884, 36.393349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323578, 35.110924, 36.381599>,  <34.723042, 35.117661, 36.362019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323578, 35.110924, 36.381599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045280, -0.174265, -0.983657,
		0.025096, -0.984555, 0.173269,
		-0.998659, -0.016840, 0.048954,
		34.023979, 35.105873, 36.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461906, 34.472866, 36.126205>,  <34.723042, 35.117661, 36.362019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461906, 34.472866, 36.126205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216633, 34.786079, 36.084496>,  <34.069469, 34.974007, 36.059467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216633, 34.786079, 36.084496>,  <34.461906, 34.472866, 36.126205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216633, 34.786079, 36.084496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038611, -0.102140, -0.994020,
		-0.788999, -0.613540, 0.032396,
		-0.613181, 0.783030, -0.104277,
		34.032677, 35.020988, 36.053211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134823, 33.825150, 36.060043>,  <34.461906, 34.472866, 36.126205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134823, 33.825150, 36.060043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871918, 33.709385, 36.338394>,  <33.714176, 33.639927, 36.505405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871918, 33.709385, 36.338394>,  <34.134823, 33.825150, 36.060043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871918, 33.709385, 36.338394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051634, 0.938454, 0.341524,
		-0.751893, 0.188539, -0.631751,
		-0.657260, -0.289409, 0.695882,
		33.674740, 33.622562, 36.547157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094475, 33.080406, 36.178375>,  <34.134823, 33.825150, 36.060043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094475, 33.080406, 36.178375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992722, 32.836197, 35.878361>,  <33.931667, 32.689671, 35.698353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992722, 32.836197, 35.878361>,  <34.094475, 33.080406, 36.178375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992722, 32.836197, 35.878361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912098, -0.409281, 0.023798,
		-0.321503, -0.678049, 0.660973,
		-0.254387, -0.610524, -0.750032,
		33.916405, 32.653038, 35.653351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402725, 32.511021, 35.760750>,  <34.094475, 33.080406, 36.178375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402725, 32.511021, 35.760750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588760, 32.163998, 35.831226>,  <34.700382, 31.955784, 35.873512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588760, 32.163998, 35.831226>,  <34.402725, 32.511021, 35.760750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588760, 32.163998, 35.831226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039555, 0.178466, 0.983151,
		-0.884382, -0.464217, 0.048686,
		0.465084, -0.867556, 0.176195,
		34.728287, 31.903730, 35.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018322, 32.180408, 36.349983>,  <34.402725, 32.511021, 35.760750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018322, 32.180408, 36.349983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385796, 32.022697, 36.340553>,  <34.606281, 31.928070, 36.334896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385796, 32.022697, 36.340553>,  <34.018322, 32.180408, 36.349983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385796, 32.022697, 36.340553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030583, 0.011493, 0.999466,
		-0.393801, -0.918918, 0.022616,
		0.918687, -0.394282, -0.023578,
		34.661400, 31.904413, 36.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991680, 31.574482, 36.643871>,  <34.018322, 32.180408, 36.349983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991680, 31.574482, 36.643871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349926, 31.746349, 36.689922>,  <34.564873, 31.849470, 36.717552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349926, 31.746349, 36.689922>,  <33.991680, 31.574482, 36.643871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349926, 31.746349, 36.689922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063573, -0.379807, 0.922879,
		0.440259, -0.819227, -0.367477,
		0.895617, 0.429668, 0.115132,
		34.618610, 31.875250, 36.724461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417290, 31.072840, 36.925224>,  <33.991680, 31.574482, 36.643871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417290, 31.072840, 36.925224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587250, 31.420048, 37.027985>,  <34.689224, 31.628372, 37.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587250, 31.420048, 37.027985>,  <34.417290, 31.072840, 36.925224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587250, 31.420048, 37.027985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276862, -0.394808, 0.876056,
		0.861863, -0.301108, -0.408075,
		0.424898, 0.868021, 0.256905,
		34.714718, 31.680454, 37.105057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115971, 30.865707, 37.048679>,  <34.417290, 31.072840, 36.925224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115971, 30.865707, 37.048679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047523, 31.219185, 37.222946>,  <35.006454, 31.431271, 37.327507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047523, 31.219185, 37.222946>,  <35.115971, 30.865707, 37.048679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047523, 31.219185, 37.222946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331184, -0.364864, 0.870167,
		0.927919, 0.293190, -0.230229,
		-0.171122, 0.883693, 0.435664,
		34.996185, 31.484293, 37.353645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762859, 31.104687, 37.368317>,  <35.115971, 30.865707, 37.048679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762859, 31.104687, 37.368317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482185, 31.314056, 37.561668>,  <35.313782, 31.439678, 37.677681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482185, 31.314056, 37.561668>,  <35.762859, 31.104687, 37.368317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482185, 31.314056, 37.561668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429107, -0.231135, 0.873180,
		0.568770, 0.820124, -0.062420,
		-0.701689, 0.523424, 0.483384,
		35.271679, 31.471083, 37.706684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196659, 31.356071, 37.804306>,  <35.762859, 31.104687, 37.368317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196659, 31.356071, 37.804306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832661, 31.419449, 37.957565>,  <35.614262, 31.457476, 38.049519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832661, 31.419449, 37.957565>,  <36.196659, 31.356071, 37.804306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832661, 31.419449, 37.957565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367794, -0.118103, 0.922377,
		0.191397, 0.980279, 0.049198,
		-0.909997, 0.158445, 0.383146,
		35.559662, 31.466982, 38.072510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289825, 31.822809, 38.359352>,  <36.196659, 31.356071, 37.804306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289825, 31.822809, 38.359352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947502, 31.621916, 38.408924>,  <35.742107, 31.501379, 38.438667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947502, 31.621916, 38.408924>,  <36.289825, 31.822809, 38.359352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947502, 31.621916, 38.408924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210606, -0.119461, 0.970244,
		-0.472485, 0.856440, 0.208009,
		-0.855805, -0.502234, 0.123928,
		35.690762, 31.471245, 38.446102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927380, 32.092846, 38.924717>,  <36.289825, 31.822809, 38.359352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927380, 32.092846, 38.924717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777164, 31.724630, 38.881668>,  <35.687035, 31.503700, 38.855839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777164, 31.724630, 38.881668>,  <35.927380, 32.092846, 38.924717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777164, 31.724630, 38.881668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067016, -0.142786, 0.987482,
		-0.924381, 0.363623, 0.115312,
		-0.375537, -0.920538, -0.107620,
		35.664505, 31.448469, 38.849380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349018, 32.084827, 39.289276>,  <35.927380, 32.092846, 38.924717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349018, 32.084827, 39.289276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473396, 31.705809, 39.259697>,  <35.548023, 31.478397, 39.241947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473396, 31.705809, 39.259697>,  <35.349018, 32.084827, 39.289276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473396, 31.705809, 39.259697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042034, -0.091443, 0.994923,
		-0.949498, -0.306257, -0.068262,
		0.310944, -0.947547, -0.073952,
		35.566681, 31.421545, 39.237511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978096, 31.836468, 39.769157>,  <35.349018, 32.084827, 39.289276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978096, 31.836468, 39.769157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255188, 31.555635, 39.703182>,  <35.421444, 31.387136, 39.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255188, 31.555635, 39.703182>,  <34.978096, 31.836468, 39.769157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255188, 31.555635, 39.703182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092618, -0.313413, 0.945089,
		-0.715225, -0.639416, -0.282136,
		0.692730, -0.702082, -0.164940,
		35.463009, 31.345011, 39.653702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778954, 31.260338, 40.171375>,  <34.978096, 31.836468, 39.769157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778954, 31.260338, 40.171375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164299, 31.197517, 40.084415>,  <35.395508, 31.159824, 40.032238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164299, 31.197517, 40.084415>,  <34.778954, 31.260338, 40.171375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164299, 31.197517, 40.084415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153891, -0.340187, 0.927680,
		-0.219652, -0.927150, -0.303555,
		0.963364, -0.157053, -0.217403,
		35.453308, 31.150402, 40.019196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931309, 30.706890, 40.417686>,  <34.778954, 31.260338, 40.171375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931309, 30.706890, 40.417686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300205, 30.856939, 40.380257>,  <35.521542, 30.946968, 40.357800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300205, 30.856939, 40.380257>,  <34.931309, 30.706890, 40.417686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300205, 30.856939, 40.380257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218372, -0.305698, 0.926748,
		0.319041, -0.875117, -0.363843,
		0.922240, 0.375124, -0.093571,
		35.576878, 30.969477, 40.352184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296791, 30.225323, 40.664097>,  <34.931309, 30.706890, 40.417686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296791, 30.225323, 40.664097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506073, 30.565006, 40.692657>,  <35.631641, 30.768816, 40.709793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506073, 30.565006, 40.692657>,  <35.296791, 30.225323, 40.664097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506073, 30.565006, 40.692657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162683, -0.181769, 0.969791,
		0.836535, -0.495783, -0.233254,
		0.523204, 0.849211, 0.071400,
		35.663033, 30.819769, 40.714077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930580, 30.065147, 41.113781>,  <35.296791, 30.225323, 40.664097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930580, 30.065147, 41.113781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890556, 30.463053, 41.105465>,  <35.866543, 30.701796, 41.100475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890556, 30.463053, 41.105465>,  <35.930580, 30.065147, 41.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890556, 30.463053, 41.105465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236238, 0.044053, 0.970696,
		0.966530, 0.092215, -0.239409,
		-0.100059, 0.994764, -0.020794,
		35.860538, 30.761482, 41.099228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507099, 30.231464, 41.493378>,  <35.930580, 30.065147, 41.113781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507099, 30.231464, 41.493378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295723, 30.569805, 41.464298>,  <36.168896, 30.772810, 41.446850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295723, 30.569805, 41.464298>,  <36.507099, 30.231464, 41.493378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295723, 30.569805, 41.464298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196033, 0.204891, 0.958953,
		0.826027, 0.492500, -0.274088,
		-0.528442, 0.845851, -0.072699,
		36.137192, 30.823561, 41.442490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908619, 30.786493, 41.845566>,  <36.507099, 30.231464, 41.493378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908619, 30.786493, 41.845566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528526, 30.909542, 41.825874>,  <36.300468, 30.983372, 41.814060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528526, 30.909542, 41.825874>,  <36.908619, 30.786493, 41.845566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528526, 30.909542, 41.825874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074299, 0.377221, 0.923138,
		0.302548, 0.873540, -0.381305,
		-0.950234, 0.307624, -0.049224,
		36.243458, 31.001829, 41.811108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956966, 31.460880, 42.091335>,  <36.908619, 30.786493, 41.845566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956966, 31.460880, 42.091335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575203, 31.347191, 42.127819>,  <36.346146, 31.278976, 42.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575203, 31.347191, 42.127819>,  <36.956966, 31.460880, 42.091335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575203, 31.347191, 42.127819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006529, 0.285606, 0.958325,
		-0.298428, 0.915230, -0.270730,
		-0.954410, -0.284224, 0.091208,
		36.288879, 31.261923, 42.155182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615589, 31.926268, 42.495422>,  <36.956966, 31.460880, 42.091335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615589, 31.926268, 42.495422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377144, 31.606461, 42.524864>,  <36.234077, 31.414576, 42.542530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377144, 31.606461, 42.524864>,  <36.615589, 31.926268, 42.495422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377144, 31.606461, 42.524864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096675, 0.162480, 0.981964,
		-0.797057, 0.578249, -0.174150,
		-0.596116, -0.799517, 0.073604,
		36.198311, 31.366606, 42.546944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947029, 32.135368, 42.846138>,  <36.615589, 31.926268, 42.495422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947029, 32.135368, 42.846138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013008, 31.743357, 42.890556>,  <36.052593, 31.508148, 42.917210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013008, 31.743357, 42.890556>,  <35.947029, 32.135368, 42.846138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013008, 31.743357, 42.890556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230812, 0.071111, 0.970396,
		-0.958916, -0.185691, -0.214474,
		0.164943, -0.980032, 0.111049,
		36.062492, 31.449347, 42.923870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476948, 31.948500, 43.349087>,  <35.947029, 32.135368, 42.846138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476948, 31.948500, 43.349087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744297, 31.651472, 43.331783>,  <35.904705, 31.473255, 43.321404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744297, 31.651472, 43.331783>,  <35.476948, 31.948500, 43.349087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744297, 31.651472, 43.331783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050928, -0.012333, 0.998626,
		-0.742084, -0.669654, 0.029574,
		0.668370, -0.742571, -0.043257,
		35.944809, 31.428701, 43.318806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210548, 31.435503, 43.778061>,  <35.476948, 31.948500, 43.349087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210548, 31.435503, 43.778061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606430, 31.378292, 43.775677>,  <35.843960, 31.343966, 43.774246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606430, 31.378292, 43.775677>,  <35.210548, 31.435503, 43.778061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606430, 31.378292, 43.775677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001477, -0.031426, 0.999505,
		-0.143142, -0.989220, -0.030891,
		0.989701, -0.143025, -0.005960,
		35.903339, 31.335384, 43.773888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410458, 31.026520, 44.362556>,  <35.210548, 31.435503, 43.778061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410458, 31.026520, 44.362556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755337, 31.196486, 44.252235>,  <35.962265, 31.298464, 44.186043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755337, 31.196486, 44.252235>,  <35.410458, 31.026520, 44.362556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755337, 31.196486, 44.252235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247585, 0.121536, 0.961213,
		0.441952, -0.897038, -0.000414,
		0.862195, 0.424913, -0.275806,
		36.013996, 31.323959, 44.169495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856049, 30.655861, 44.724522>,  <35.410458, 31.026520, 44.362556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856049, 30.655861, 44.724522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022289, 31.011072, 44.645855>,  <36.122036, 31.224199, 44.598656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022289, 31.011072, 44.645855>,  <35.856049, 30.655861, 44.724522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022289, 31.011072, 44.645855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163207, 0.139910, 0.976621,
		0.894782, -0.437988, -0.086785,
		0.415606, 0.888027, -0.196671,
		36.146973, 31.277481, 44.586853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638428, 30.588350, 44.903435>,  <35.856049, 30.655861, 44.724522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638428, 30.588350, 44.903435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495373, 30.961872, 44.907520>,  <36.409538, 31.185986, 44.909969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495373, 30.961872, 44.907520>,  <36.638428, 30.588350, 44.903435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495373, 30.961872, 44.907520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109340, 0.031011, 0.993521,
		0.927436, 0.356440, -0.113193,
		-0.357640, 0.933804, 0.010212,
		36.388081, 31.242014, 44.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185722, 30.933882, 45.279095>,  <36.638428, 30.588350, 44.903435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185722, 30.933882, 45.279095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881702, 31.193817, 45.281471>,  <36.699291, 31.349777, 45.282898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881702, 31.193817, 45.281471>,  <37.185722, 30.933882, 45.279095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881702, 31.193817, 45.281471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175277, 0.196181, 0.964775,
		0.625780, 0.734320, -0.263009,
		-0.760051, 0.649837, 0.005943,
		36.653687, 31.388769, 45.283253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478241, 31.398178, 45.643196>,  <37.185722, 30.933882, 45.279095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478241, 31.398178, 45.643196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086514, 31.474726, 45.669449>,  <36.851475, 31.520655, 45.685200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086514, 31.474726, 45.669449>,  <37.478241, 31.398178, 45.643196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086514, 31.474726, 45.669449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130618, 0.350367, 0.927460,
		0.154493, 0.916854, -0.368119,
		-0.979322, 0.191369, 0.065629,
		36.792717, 31.532137, 45.689137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915371, 31.987362, 45.702194>,  <37.478241, 31.398178, 45.643196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915371, 31.987362, 45.702194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305035, 31.901953, 45.672764>,  <38.538834, 31.850706, 45.655106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305035, 31.901953, 45.672764>,  <37.915371, 31.987362, 45.702194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305035, 31.901953, 45.672764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082192, -0.031735, -0.996111,
		0.210360, 0.976422, -0.048465,
		0.974163, -0.213525, -0.073579,
		38.597282, 31.837894, 45.650692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303772, 32.501587, 45.144527>,  <37.915371, 31.987362, 45.702194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303772, 32.501587, 45.144527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521557, 32.168743, 45.186779>,  <38.652229, 31.969038, 45.212132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521557, 32.168743, 45.186779>,  <38.303772, 32.501587, 45.144527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521557, 32.168743, 45.186779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275438, 0.058416, -0.959542,
		0.792272, 0.551529, 0.260999,
		0.544462, -0.832108, 0.105631,
		38.684895, 31.919111, 45.218468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889061, 32.621494, 44.778477>,  <38.303772, 32.501587, 45.144527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889061, 32.621494, 44.778477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937504, 32.225098, 44.801315>,  <38.966568, 31.987259, 44.815018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937504, 32.225098, 44.801315>,  <38.889061, 32.621494, 44.778477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937504, 32.225098, 44.801315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443896, 0.002621, -0.896074,
		0.887857, 0.133864, 0.440217,
		0.121106, -0.990996, 0.057095,
		38.973835, 31.927799, 44.818443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597549, 32.468075, 44.576553>,  <38.889061, 32.621494, 44.778477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597549, 32.468075, 44.576553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356674, 32.153301, 44.522732>,  <39.212147, 31.964437, 44.490440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356674, 32.153301, 44.522732>,  <39.597549, 32.468075, 44.576553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356674, 32.153301, 44.522732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104827, 0.089139, -0.990488,
		0.791439, -0.610569, 0.028813,
		-0.602192, -0.786931, -0.134553,
		39.176018, 31.917221, 44.482365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061089, 32.003147, 44.127434>,  <39.597549, 32.468075, 44.576553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061089, 32.003147, 44.127434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675308, 31.907072, 44.083366>,  <39.443840, 31.849426, 44.056927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675308, 31.907072, 44.083366>,  <40.061089, 32.003147, 44.127434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675308, 31.907072, 44.083366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130224, -0.069256, -0.989063,
		0.229933, -0.968252, 0.098073,
		-0.964454, -0.240190, -0.110165,
		39.385971, 31.835014, 44.050316>
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
