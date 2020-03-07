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
	<0.080440, 4.411150, 3.157868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.316010, 4.703285, 3.296303>,  <0.457351, 4.878566, 3.379364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.316010, 4.703285, 3.296303>,  <0.080440, 4.411150, 3.157868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.316010, 4.703285, 3.296303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571078, -0.073045, -0.817639,
		-0.571873, 0.679170, -0.460098,
		0.588924, 0.730338, 0.346087,
		0.492687, 4.922387, 3.400129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.169304, 4.853079, 2.601085>,  <0.080440, 4.411150, 3.157868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.169304, 4.853079, 2.601085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.483055, 4.877167, 2.848026>,  <0.671306, 4.891619, 2.996191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.483055, 4.877167, 2.848026>,  <0.169304, 4.853079, 2.601085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.483055, 4.877167, 2.848026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616447, 0.034833, -0.786626,
		-0.068874, 0.997577, -0.009800,
		0.784379, 0.060219, 0.617352,
		0.718369, 4.895233, 3.033232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.473734, 5.465925, 2.342049>,  <0.169304, 4.853079, 2.601085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.473734, 5.465925, 2.342049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.695271, 5.190102, 2.528713>,  <0.828192, 5.024608, 2.640712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.695271, 5.190102, 2.528713>,  <0.473734, 5.465925, 2.342049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.695271, 5.190102, 2.528713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664668, 0.028591, -0.746592,
		0.501475, 0.723666, 0.474161,
		0.553840, -0.689557, 0.466660,
		0.861423, 4.983234, 2.668711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.275858, 5.573124, 2.524709>,  <0.473734, 5.465925, 2.342049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.275858, 5.573124, 2.524709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.189220, 5.188660, 2.456291>,  <1.137238, 4.957981, 2.415241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.189220, 5.188660, 2.456291>,  <1.275858, 5.573124, 2.524709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.189220, 5.188660, 2.456291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695462, -0.028951, -0.717980,
		0.685142, -0.274465, 0.674722,
		-0.216594, -0.961161, -0.171044,
		1.124242, 4.900311, 2.404978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.968309, 5.355890, 2.326092>,  <1.275858, 5.573124, 2.524709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.968309, 5.355890, 2.326092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718399, 5.068825, 2.203053>,  <1.568453, 4.896586, 2.129229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718399, 5.068825, 2.203053>,  <1.968309, 5.355890, 2.326092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718399, 5.068825, 2.203053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547870, -0.122246, -0.827583,
		0.556322, -0.685578, 0.469562,
		-0.624775, -0.717662, -0.307599,
		1.530967, 4.853526, 2.110773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.393057, 4.716844, 2.177573>,  <1.968309, 5.355890, 2.326092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.393057, 4.716844, 2.177573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.047138, 4.680954, 1.979958>,  <1.839587, 4.659420, 1.861388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.047138, 4.680954, 1.979958>,  <2.393057, 4.716844, 2.177573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.047138, 4.680954, 1.979958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498511, -0.035638, -0.866151,
		0.060111, -0.995329, 0.075549,
		-0.864797, -0.089727, -0.494040,
		1.787699, 4.654037, 1.831746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.440817, 4.099776, 1.807400>,  <2.393057, 4.716844, 2.177573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.440817, 4.099776, 1.807400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.163078, 4.305237, 1.605789>,  <1.996435, 4.428513, 1.484822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.163078, 4.305237, 1.605789>,  <2.440817, 4.099776, 1.807400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.163078, 4.305237, 1.605789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597006, 0.020064, -0.801986,
		-0.401828, -0.857765, -0.320584,
		-0.694348, 0.513651, -0.504028,
		1.954774, 4.459332, 1.454581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.326150, 3.699781, 1.249811>,  <2.440817, 4.099776, 1.807400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.326150, 3.699781, 1.249811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.224525, 4.075089, 1.155914>,  <2.163551, 4.300273, 1.099576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.224525, 4.075089, 1.155914>,  <2.326150, 3.699781, 1.249811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.224525, 4.075089, 1.155914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330406, -0.143907, -0.932804,
		-0.909002, -0.314550, -0.273448,
		-0.254062, 0.938269, -0.234741,
		2.148307, 4.356569, 1.085492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.321504, 4.278080, 0.464063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.046893, 4.437111, 0.220551>,  <2.882127, 4.532529, 0.074443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.046893, 4.437111, 0.220551>,  <3.321504, 4.278080, 0.464063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.046893, 4.437111, 0.220551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627826, 0.098200, 0.772134,
		0.366765, 0.912299, 0.182192,
		-0.686526, 0.397577, -0.608781,
		2.840935, 4.556384, 0.037916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.930876, 4.873009, 0.862536>,  <3.321504, 4.278080, 0.464063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.930876, 4.873009, 0.862536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.706531, 4.772179, 0.547096>,  <2.571923, 4.711680, 0.357832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.706531, 4.772179, 0.547096>,  <2.930876, 4.873009, 0.862536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.706531, 4.772179, 0.547096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808497, -0.038282, 0.587253,
		-0.178222, 0.966950, -0.182331,
		-0.560865, -0.252075, -0.788599,
		2.538271, 4.696556, 0.310516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.498807, 5.443611, 0.561599>,  <2.930876, 4.873009, 0.862536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.498807, 5.443611, 0.561599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.369588, 5.065201, 0.572021>,  <2.292057, 4.838155, 0.578275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.369588, 5.065201, 0.572021>,  <2.498807, 5.443611, 0.561599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.369588, 5.065201, 0.572021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732933, 0.267509, 0.625498,
		-0.598707, 0.182967, -0.779790,
		-0.323046, -0.946024, 0.026057,
		2.272675, 4.781394, 0.579839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.753789, 5.494965, 0.700265>,  <2.498807, 5.443611, 0.561599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.753789, 5.494965, 0.700265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.842443, 5.112747, 0.778046>,  <1.895635, 4.883416, 0.824714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.842443, 5.112747, 0.778046>,  <1.753789, 5.494965, 0.700265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.842443, 5.112747, 0.778046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704013, -0.018822, 0.709938,
		-0.674718, -0.294243, -0.676888,
		0.221635, -0.955545, 0.194451,
		1.908933, 4.826084, 0.836381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.032887, 5.114319, 0.839822>,  <1.753789, 5.494965, 0.700265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.032887, 5.114319, 0.839822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.315453, 4.899895, 1.024696>,  <1.484993, 4.771240, 1.135621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.315453, 4.899895, 1.024696>,  <1.032887, 5.114319, 0.839822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.315453, 4.899895, 1.024696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593078, -0.091902, 0.799883,
		-0.386311, -0.839161, -0.382848,
		0.706415, -0.536062, 0.462185,
		1.527378, 4.739077, 1.163352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.700849, 4.585835, 1.071528>,  <1.032887, 5.114319, 0.839822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.700849, 4.585835, 1.071528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.020242, 4.601082, 1.311852>,  <1.211878, 4.610230, 1.456046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.020242, 4.601082, 1.311852>,  <0.700849, 4.585835, 1.071528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.020242, 4.601082, 1.311852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588520, -0.160723, 0.792346,
		0.126767, -0.986263, -0.105902,
		0.798483, 0.038118, 0.600809,
		1.259787, 4.612517, 1.492094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.709712, 4.033144, 1.544191>,  <0.700849, 4.585835, 1.071528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.709712, 4.033144, 1.544191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.929631, 4.318420, 1.718124>,  <1.061582, 4.489587, 1.822484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.929631, 4.318420, 1.718124>,  <0.709712, 4.033144, 1.544191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.929631, 4.318420, 1.718124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505756, -0.130074, 0.852814,
		0.664781, -0.688794, 0.289187,
		0.549797, 0.713193, 0.434833,
		1.094570, 4.532378, 1.848574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.924325, 3.685949, 2.098511>,  <0.709712, 4.033144, 1.544191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.924325, 3.685949, 2.098511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.949547, 4.074318, 2.190887>,  <0.964681, 4.307339, 2.246313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.949547, 4.074318, 2.190887>,  <0.924325, 3.685949, 2.098511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.949547, 4.074318, 2.190887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425047, -0.183240, 0.886430,
		0.902972, -0.154056, 0.401133,
		0.063056, 0.970922, 0.230941,
		0.968464, 4.365594, 2.260170>
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
