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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.114418, 53.868076, 49.837589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356499, 53.727318, 50.123219>,  <36.501747, 53.642864, 50.294594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356499, 53.727318, 50.123219>,  <36.114418, 53.868076, 49.837589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356499, 53.727318, 50.123219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325072, -0.928044, -0.181831,
		0.726673, -0.122078, -0.676050,
		0.605206, -0.351897, 0.714069,
		36.538059, 53.621750, 50.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771324, 54.210609, 49.667049>,  <36.114418, 53.868076, 49.837589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771324, 54.210609, 49.667049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945393, 54.284737, 50.019478>,  <37.049831, 54.329212, 50.230934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945393, 54.284737, 50.019478>,  <36.771324, 54.210609, 49.667049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945393, 54.284737, 50.019478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683599, -0.704860, -0.189380,
		0.585938, 0.684712, -0.433414,
		0.435166, 0.185316, 0.881072,
		37.075943, 54.340332, 50.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397663, 54.118587, 49.449951>,  <36.771324, 54.210609, 49.667049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397663, 54.118587, 49.449951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384548, 54.061428, 49.845631>,  <37.376678, 54.027134, 50.083038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384548, 54.061428, 49.845631>,  <37.397663, 54.118587, 49.449951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384548, 54.061428, 49.845631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798996, -0.598340, -0.059953,
		0.600442, 0.788397, 0.133792,
		-0.032786, -0.142897, 0.989194,
		37.374714, 54.018559, 50.142387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000839, 54.269192, 49.926830>,  <37.397663, 54.118587, 49.449951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000839, 54.269192, 49.926830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827042, 53.946495, 50.087021>,  <37.722763, 53.752876, 50.183136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827042, 53.946495, 50.087021>,  <38.000839, 54.269192, 49.926830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827042, 53.946495, 50.087021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874639, -0.484066, -0.026208,
		0.214999, 0.338883, 0.915933,
		-0.434491, -0.806745, 0.400474,
		37.696693, 53.704472, 50.207165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420296, 54.073669, 50.550644>,  <38.000839, 54.269192, 49.926830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420296, 54.073669, 50.550644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222889, 53.791744, 50.346809>,  <38.104446, 53.622589, 50.224510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222889, 53.791744, 50.346809>,  <38.420296, 54.073669, 50.550644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222889, 53.791744, 50.346809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869644, -0.408522, -0.277182,
		-0.012814, -0.579951, 0.814550,
		-0.493514, -0.704817, -0.509586,
		38.074833, 53.580299, 50.193935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674110, 53.323498, 50.784904>,  <38.420296, 54.073669, 50.550644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674110, 53.323498, 50.784904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537281, 53.383560, 50.413864>,  <38.455185, 53.419598, 50.191242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537281, 53.383560, 50.413864>,  <38.674110, 53.323498, 50.784904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537281, 53.383560, 50.413864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886295, -0.276415, -0.371585,
		-0.312199, -0.949235, -0.038532,
		-0.342071, 0.150160, -0.927598,
		38.434658, 53.428608, 50.135586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585606, 52.757435, 50.403183>,  <38.674110, 53.323498, 50.784904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585606, 52.757435, 50.403183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687801, 53.057949, 50.159775>,  <38.749119, 53.238258, 50.013729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687801, 53.057949, 50.159775>,  <38.585606, 52.757435, 50.403183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687801, 53.057949, 50.159775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824502, -0.498007, -0.268673,
		-0.504896, -0.433080, -0.746673,
		0.255492, 0.751286, -0.608518,
		38.764450, 53.283333, 49.977219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887424, 52.412739, 49.728725>,  <38.585606, 52.757435, 50.403183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887424, 52.412739, 49.728725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991940, 52.779465, 49.849503>,  <39.054649, 52.999500, 49.921970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991940, 52.779465, 49.849503>,  <38.887424, 52.412739, 49.728725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991940, 52.779465, 49.849503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962468, -0.223685, -0.153691,
		-0.073367, 0.330768, -0.940856,
		0.261292, 0.916819, 0.301942,
		39.070328, 53.054512, 49.940086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169086, 52.670177, 49.122864>,  <38.887424, 52.412739, 49.728725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169086, 52.670177, 49.122864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318840, 52.807953, 49.467236>,  <39.408691, 52.890617, 49.673859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318840, 52.807953, 49.467236>,  <39.169086, 52.670177, 49.122864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318840, 52.807953, 49.467236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926576, -0.174976, -0.332928,
		0.035969, 0.922359, -0.384655,
		0.374384, 0.344437, 0.860929,
		39.431156, 52.911285, 49.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781914, 53.128288, 48.979115>,  <39.169086, 52.670177, 49.122864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781914, 53.128288, 48.979115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806736, 52.932018, 49.326767>,  <39.821629, 52.814255, 49.535358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806736, 52.932018, 49.326767>,  <39.781914, 53.128288, 48.979115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806736, 52.932018, 49.326767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887852, -0.370650, -0.272648,
		0.455925, 0.788577, 0.412649,
		0.062056, -0.490678, 0.869128,
		39.825352, 52.784813, 49.587505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412872, 52.973030, 48.565449>,  <39.781914, 53.128288, 48.979115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412872, 52.973030, 48.565449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739948, 52.899261, 48.783577>,  <40.936195, 52.855000, 48.914455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739948, 52.899261, 48.783577>,  <40.412872, 52.973030, 48.565449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739948, 52.899261, 48.783577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573805, 0.185112, -0.797798,
		0.046183, 0.965258, 0.257184,
		0.817689, -0.184418, 0.545321,
		40.985256, 52.843937, 48.947174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940258, 53.507637, 48.566704>,  <40.412872, 52.973030, 48.565449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940258, 53.507637, 48.566704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094513, 53.140369, 48.603027>,  <41.187065, 52.920010, 48.624821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094513, 53.140369, 48.603027>,  <40.940258, 53.507637, 48.566704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094513, 53.140369, 48.603027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558831, 0.154124, -0.814833,
		0.734162, 0.364973, 0.572539,
		0.385634, -0.918172, 0.090806,
		41.210201, 52.864918, 48.630268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408077, 54.122120, 48.436024>,  <40.940258, 53.507637, 48.566704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408077, 54.122120, 48.436024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025627, 54.114288, 48.552940>,  <40.796158, 54.109589, 48.623093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025627, 54.114288, 48.552940>,  <41.408077, 54.122120, 48.436024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025627, 54.114288, 48.552940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245476, -0.598079, 0.762917,
		0.159877, 0.801198, 0.576646,
		-0.956128, -0.019580, 0.292294,
		40.738789, 54.108414, 48.640629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228012, 54.037842, 48.445744>,  <41.408077, 54.122120, 48.436024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228012, 54.037842, 48.445744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379654, 53.683472, 48.552635>,  <42.470638, 53.470848, 48.616772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379654, 53.683472, 48.552635>,  <42.228012, 54.037842, 48.445744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379654, 53.683472, 48.552635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925258, 0.358751, -0.123267,
		0.013337, 0.293987, 0.955716,
		0.379103, -0.885929, 0.267229,
		42.493385, 53.417694, 48.632805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588150, 54.024693, 49.019669>,  <42.228012, 54.037842, 48.445744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588150, 54.024693, 49.019669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719955, 53.725380, 48.789368>,  <42.799038, 53.545792, 48.651188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719955, 53.725380, 48.789368>,  <42.588150, 54.024693, 49.019669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719955, 53.725380, 48.789368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944146, 0.259573, 0.203001,
		-0.002454, -0.610484, 0.792025,
		0.329518, -0.748286, -0.575749,
		42.818810, 53.500893, 48.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156670, 53.543285, 49.399147>,  <42.588150, 54.024693, 49.019669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156670, 53.543285, 49.399147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207397, 53.524632, 49.002815>,  <43.237835, 53.513439, 48.765015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207397, 53.524632, 49.002815>,  <43.156670, 53.543285, 49.399147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207397, 53.524632, 49.002815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981044, 0.153445, 0.118348,
		0.146519, -0.987056, 0.065213,
		0.126823, -0.046637, -0.990828,
		43.245445, 53.510639, 48.705566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707150, 53.037697, 49.140617>,  <43.156670, 53.543285, 49.399147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707150, 53.037697, 49.140617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662868, 53.407639, 48.995079>,  <43.636299, 53.629604, 48.907757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662868, 53.407639, 48.995079>,  <43.707150, 53.037697, 49.140617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662868, 53.407639, 48.995079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938692, 0.217570, 0.267432,
		0.326499, -0.311931, -0.892243,
		-0.110705, 0.924858, -0.363844,
		43.629658, 53.685097, 48.885925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968899, 53.176247, 48.406830>,  <43.707150, 53.037697, 49.140617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968899, 53.176247, 48.406830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809795, 53.237865, 48.045044>,  <43.714333, 53.274837, 47.827972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809795, 53.237865, 48.045044>,  <43.968899, 53.176247, 48.406830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809795, 53.237865, 48.045044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853663, 0.423398, -0.303305,
		0.336225, -0.892751, -0.299914,
		-0.397758, 0.154047, -0.904465,
		43.690468, 53.284081, 47.773705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297604, 52.805618, 47.765076>,  <43.968899, 53.176247, 48.406830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297604, 52.805618, 47.765076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162712, 53.162895, 47.646088>,  <44.081776, 53.377262, 47.574696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162712, 53.162895, 47.646088>,  <44.297604, 52.805618, 47.765076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162712, 53.162895, 47.646088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911126, 0.230135, -0.341889,
		-0.236913, -0.386329, -0.891416,
		-0.337227, 0.893190, -0.297472,
		44.061543, 53.430851, 47.556847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463779, 53.080494, 47.085011>,  <44.297604, 52.805618, 47.765076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463779, 53.080494, 47.085011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456219, 53.437344, 47.265572>,  <44.451683, 53.651451, 47.373909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456219, 53.437344, 47.265572>,  <44.463779, 53.080494, 47.085011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456219, 53.437344, 47.265572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854287, 0.248981, -0.456292,
		-0.519458, 0.376998, -0.766835,
		-0.018906, 0.892122, 0.451399,
		44.450546, 53.704979, 47.400990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611732, 53.563362, 46.557213>,  <44.463779, 53.080494, 47.085011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611732, 53.563362, 46.557213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710445, 53.688843, 46.923969>,  <44.769672, 53.764130, 47.144024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710445, 53.688843, 46.923969>,  <44.611732, 53.563362, 46.557213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710445, 53.688843, 46.923969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862533, 0.360188, -0.355390,
		-0.441739, 0.878553, -0.181688,
		0.246787, 0.313702, 0.916890,
		44.784481, 53.782955, 47.199036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657162, 54.304283, 46.577393>,  <44.611732, 53.563362, 46.557213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657162, 54.304283, 46.577393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896553, 54.127953, 46.844971>,  <45.040188, 54.022152, 47.005520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896553, 54.127953, 46.844971>,  <44.657162, 54.304283, 46.577393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896553, 54.127953, 46.844971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801120, 0.323654, -0.503443,
		0.005425, 0.837208, 0.546858,
		0.598479, -0.440830, 0.668948,
		45.076096, 53.995705, 47.045654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048138, 54.734364, 46.772499>,  <44.657162, 54.304283, 46.577393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048138, 54.734364, 46.772499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258171, 54.398720, 46.829323>,  <45.384190, 54.197334, 46.863419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258171, 54.398720, 46.829323>,  <45.048138, 54.734364, 46.772499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258171, 54.398720, 46.829323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698463, 0.329519, -0.635269,
		0.486249, 0.432792, 0.759113,
		0.525081, -0.839111, 0.142061,
		45.415695, 54.146988, 46.871941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801861, 54.899361, 46.766281>,  <45.048138, 54.734364, 46.772499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801861, 54.899361, 46.766281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763599, 54.511543, 46.676102>,  <45.740643, 54.278851, 46.621994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763599, 54.511543, 46.676102>,  <45.801861, 54.899361, 46.766281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763599, 54.511543, 46.676102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763618, 0.073816, -0.641435,
		0.638544, -0.233516, 0.733302,
		-0.095656, -0.969547, -0.225452,
		45.734901, 54.220680, 46.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832947, 55.110344, 47.467995>,  <45.801861, 54.899361, 46.766281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832947, 55.110344, 47.467995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091545, 55.280758, 47.721146>,  <46.246704, 55.383007, 47.873035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091545, 55.280758, 47.721146>,  <45.832947, 55.110344, 47.467995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091545, 55.280758, 47.721146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760496, -0.293891, -0.579029,
		-0.060692, 0.855640, -0.514000,
		0.646500, 0.426038, 0.632874,
		46.285496, 55.408569, 47.911007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342140, 55.570869, 47.072414>,  <45.832947, 55.110344, 47.467995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342140, 55.570869, 47.072414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502762, 55.468193, 47.424065>,  <46.599133, 55.406586, 47.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502762, 55.468193, 47.424065>,  <46.342140, 55.570869, 47.072414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502762, 55.468193, 47.424065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820633, -0.325315, -0.469821,
		0.406593, 0.910098, 0.080020,
		0.401551, -0.256694, 0.879127,
		46.623226, 55.391186, 47.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.974823, 55.911541, 47.131424>,  <46.342140, 55.570869, 47.072414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.974823, 55.911541, 47.131424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987381, 55.569702, 47.338760>,  <46.994915, 55.364597, 47.463161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987381, 55.569702, 47.338760>,  <46.974823, 55.911541, 47.131424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.987381, 55.569702, 47.338760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892920, -0.209048, -0.398738,
		0.449119, 0.475355, 0.756525,
		0.031392, -0.854597, 0.518342,
		46.996799, 55.313324, 47.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584316, 55.936775, 47.529293>,  <46.974823, 55.911541, 47.131424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584316, 55.936775, 47.529293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496151, 55.565178, 47.410374>,  <47.443253, 55.342220, 47.339024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496151, 55.565178, 47.410374>,  <47.584316, 55.936775, 47.529293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.496151, 55.565178, 47.410374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810500, -0.004855, -0.585718,
		0.542687, -0.370057, 0.754022,
		-0.220410, -0.928996, -0.297296,
		47.430027, 55.286480, 47.321186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.098198, 55.576675, 47.689392>,  <47.584316, 55.936775, 47.529293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.098198, 55.576675, 47.689392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918396, 55.421635, 47.367470>,  <47.810516, 55.328609, 47.174316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918396, 55.421635, 47.367470>,  <48.098198, 55.576675, 47.689392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.918396, 55.421635, 47.367470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843744, 0.111626, -0.525011,
		0.293335, -0.915041, 0.276864,
		-0.449502, -0.387606, -0.804804,
		47.783546, 55.305351, 47.126030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.384895, 56.046558, 48.264187>,  <48.098198, 55.576675, 47.689392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.384895, 56.046558, 48.264187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.778366, 56.026062, 48.195183>,  <49.014446, 56.013763, 48.153778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.778366, 56.026062, 48.195183>,  <48.384895, 56.046558, 48.264187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.778366, 56.026062, 48.195183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169824, 0.581464, 0.795650,
		0.059543, -0.811957, 0.580672,
		0.983674, -0.051237, -0.172512,
		49.073467, 56.010693, 48.143429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.598785, 56.152241, 48.916954>,  <48.384895, 56.046558, 48.264187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.598785, 56.152241, 48.916954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.923271, 56.139545, 48.683399>,  <49.117962, 56.131927, 48.543266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.923271, 56.139545, 48.683399>,  <48.598785, 56.152241, 48.916954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.923271, 56.139545, 48.683399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455182, 0.661087, 0.596467,
		0.367064, -0.749637, 0.550734,
		0.811217, -0.031742, -0.583883,
		49.166637, 56.130024, 48.508236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.238544, 56.218014, 49.358727>,  <48.598785, 56.152241, 48.916954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.238544, 56.218014, 49.358727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.411255, 56.336807, 49.018051>,  <49.514881, 56.408085, 48.813644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.411255, 56.336807, 49.018051>,  <49.238544, 56.218014, 49.358727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.411255, 56.336807, 49.018051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758984, 0.390561, 0.520966,
		0.487354, -0.871357, -0.056772,
		0.431774, 0.296984, -0.851687,
		49.540787, 56.425903, 48.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.913502, 55.896797, 49.281479>,  <49.238544, 56.218014, 49.358727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.913502, 55.896797, 49.281479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.897182, 56.245766, 49.086658>,  <49.887390, 56.455147, 48.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.897182, 56.245766, 49.086658>,  <49.913502, 55.896797, 49.281479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.897182, 56.245766, 49.086658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919680, 0.223322, 0.322978,
		0.390542, -0.434758, -0.811457,
		-0.040799, 0.872418, -0.487055,
		49.884941, 56.507492, 48.940540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.386055, 56.043327, 48.698639>,  <49.913502, 55.896797, 49.281479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.386055, 56.043327, 48.698639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.302971, 56.394077, 48.872047>,  <50.253120, 56.604527, 48.976093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.302971, 56.394077, 48.872047>,  <50.386055, 56.043327, 48.698639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.302971, 56.394077, 48.872047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958610, 0.094236, 0.268677,
		0.194743, 0.471388, -0.860156,
		-0.207709, 0.876877, 0.433525,
		50.240658, 56.657139, 49.002106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.820557, 56.572769, 48.436905>,  <50.386055, 56.043327, 48.698639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.820557, 56.572769, 48.436905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.716476, 56.671692, 48.810242>,  <50.654026, 56.731045, 49.034245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.716476, 56.671692, 48.810242>,  <50.820557, 56.572769, 48.436905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.716476, 56.671692, 48.810242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964980, 0.033285, 0.260204,
		0.033285, 0.968364, -0.247311,
		-0.260204, 0.247311, 0.933344,
		50.638416, 56.745884, 49.090244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.314552, 57.027046, 48.638123>,  <50.820557, 56.572769, 48.436905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.314552, 57.027046, 48.638123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.162292, 56.902267, 48.986328>,  <51.070938, 56.827400, 49.195251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.162292, 56.902267, 48.986328>,  <51.314552, 57.027046, 48.638123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.162292, 56.902267, 48.986328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901848, 0.082844, 0.424036,
		-0.204393, 0.946482, 0.249792,
		-0.380649, -0.311944, 0.870516,
		51.048100, 56.808685, 49.247482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.586403, 57.536297, 49.115616>,  <51.314552, 57.027046, 48.638123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.586403, 57.536297, 49.115616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.495747, 57.175529, 49.262688>,  <51.441353, 56.959068, 49.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.495747, 57.175529, 49.262688>,  <51.586403, 57.536297, 49.115616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.495747, 57.175529, 49.262688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783716, 0.055265, 0.618656,
		-0.578294, 0.428364, 0.694320,
		-0.226638, -0.901915, 0.367675,
		51.427753, 56.904957, 49.372990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.436783, 57.768932, 49.749001>,  <51.586403, 57.536297, 49.115616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.436783, 57.768932, 49.749001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.551876, 57.388145, 49.707104>,  <51.620934, 57.159672, 49.681965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.551876, 57.388145, 49.707104>,  <51.436783, 57.768932, 49.749001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.551876, 57.388145, 49.707104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764289, 0.162340, 0.624106,
		-0.577124, -0.259626, 0.774288,
		0.287732, -0.951966, -0.104739,
		51.638195, 57.102554, 49.675682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.439426, 57.433533, 50.376568>,  <51.436783, 57.768932, 49.749001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.439426, 57.433533, 50.376568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.729816, 57.247887, 50.173565>,  <51.904049, 57.136497, 50.051765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.729816, 57.247887, 50.173565>,  <51.439426, 57.433533, 50.376568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.729816, 57.247887, 50.173565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553588, -0.043477, 0.831655,
		-0.408050, -0.884706, 0.225367,
		0.725972, -0.464117, -0.507503,
		51.947609, 57.108650, 50.021313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.809677, 56.806179, 50.626690>,  <51.439426, 57.433533, 50.376568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.809677, 56.806179, 50.626690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.111549, 56.973183, 50.424248>,  <52.292671, 57.073387, 50.302784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.111549, 56.973183, 50.424248>,  <51.809677, 56.806179, 50.626690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.111549, 56.973183, 50.424248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535446, 0.053840, 0.842852,
		0.379150, -0.907074, -0.182924,
		0.754680, 0.417513, -0.506103,
		52.337952, 57.098438, 50.272415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.437675, 56.442657, 50.789112>,  <51.809677, 56.806179, 50.626690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.437675, 56.442657, 50.789112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.532394, 56.818214, 50.689178>,  <52.589226, 57.043549, 50.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.532394, 56.818214, 50.689178>,  <52.437675, 56.442657, 50.789112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.532394, 56.818214, 50.689178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632490, 0.046220, 0.773188,
		0.737484, -0.341105, -0.582893,
		0.236797, 0.938888, -0.249832,
		52.603432, 57.099880, 50.614227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.139915, 56.509285, 50.597694>,  <52.437675, 56.442657, 50.789112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.139915, 56.509285, 50.597694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.002560, 56.847603, 50.761017>,  <52.920147, 57.050594, 50.859013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.002560, 56.847603, 50.761017>,  <53.139915, 56.509285, 50.597694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.002560, 56.847603, 50.761017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644997, -0.103636, 0.757125,
		0.682687, 0.523348, -0.509946,
		-0.343392, 0.845793, 0.408309,
		52.899544, 57.101341, 50.883511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.706184, 56.874142, 50.559166>,  <53.139915, 56.509285, 50.597694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.706184, 56.874142, 50.559166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.458614, 57.029037, 50.832508>,  <53.310070, 57.121975, 50.996513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.458614, 57.029037, 50.832508>,  <53.706184, 56.874142, 50.559166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.458614, 57.029037, 50.832508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760273, 0.076861, 0.645041,
		0.197263, 0.918770, -0.341979,
		-0.618929, 0.387240, 0.683354,
		53.272934, 57.145210, 51.037514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.114632, 57.405602, 50.823200>,  <53.706184, 56.874142, 50.559166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.114632, 57.405602, 50.823200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.863544, 57.282230, 51.109093>,  <53.712891, 57.208206, 51.280628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.863544, 57.282230, 51.109093>,  <54.114632, 57.405602, 50.823200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.863544, 57.282230, 51.109093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741203, 0.043759, 0.669853,
		-0.237878, 0.950240, 0.201141,
		-0.627720, -0.308430, 0.714730,
		53.675228, 57.189701, 51.323513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.130577, 57.945251, 51.297016>,  <54.114632, 57.405602, 50.823200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.130577, 57.945251, 51.297016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.037346, 57.613426, 51.499992>,  <53.981407, 57.414330, 51.621777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.037346, 57.613426, 51.499992>,  <54.130577, 57.945251, 51.297016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.037346, 57.613426, 51.499992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703582, 0.216356, 0.676877,
		-0.671301, 0.514792, 0.533239,
		-0.233081, -0.829566, 0.507438,
		53.967422, 57.364555, 51.652225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.124306, 57.979404, 52.026981>,  <54.130577, 57.945251, 51.297016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.124306, 57.979404, 52.026981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.175911, 57.582829, 52.034954>,  <54.206875, 57.344883, 52.039738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.175911, 57.582829, 52.034954>,  <54.124306, 57.979404, 52.026981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.175911, 57.582829, 52.034954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555902, 0.088951, 0.826475,
		-0.821175, -0.095549, 0.562621,
		0.129015, -0.991442, 0.019928,
		54.214615, 57.285397, 52.040932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.829670, 57.721363, 52.699284>,  <54.124306, 57.979404, 52.026981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.829670, 57.721363, 52.699284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.087532, 57.452457, 52.553696>,  <54.242249, 57.291115, 52.466343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.087532, 57.452457, 52.553696>,  <53.829670, 57.721363, 52.699284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.087532, 57.452457, 52.553696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540928, 0.064705, 0.838576,
		-0.540197, -0.737475, 0.405361,
		0.644658, -0.672268, -0.363968,
		54.280930, 57.250778, 52.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.924797, 57.099613, 53.158882>,  <53.829670, 57.721363, 52.699284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.924797, 57.099613, 53.158882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.251518, 57.167984, 52.938477>,  <54.447552, 57.209007, 52.806232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.251518, 57.167984, 52.938477>,  <53.924797, 57.099613, 53.158882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.251518, 57.167984, 52.938477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576084, -0.190291, 0.794932,
		0.031020, -0.966734, -0.253897,
		0.816801, 0.170925, -0.551017,
		54.496559, 57.219261, 52.773170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.423130, 56.537605, 53.021633>,  <53.924797, 57.099613, 53.158882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.423130, 56.537605, 53.021633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.609108, 56.891685, 53.027939>,  <54.720695, 57.104134, 53.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.609108, 56.891685, 53.027939>,  <54.423130, 56.537605, 53.021633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.609108, 56.891685, 53.027939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596517, -0.326378, 0.733243,
		0.654212, -0.331511, -0.679784,
		0.464945, 0.885199, 0.015768,
		54.748592, 57.157246, 53.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.116585, 56.237339, 53.163410>,  <54.423130, 56.537605, 53.021633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.116585, 56.237339, 53.163410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.073792, 56.606033, 53.312515>,  <55.048115, 56.827251, 53.401978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.073792, 56.606033, 53.312515>,  <55.116585, 56.237339, 53.163410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.073792, 56.606033, 53.312515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582264, -0.245820, 0.774946,
		0.805930, 0.299955, -0.510396,
		-0.106984, 0.921737, 0.372767,
		55.041695, 56.882553, 53.424347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.721279, 56.738018, 53.260220>,  <55.116585, 56.237339, 53.163410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.721279, 56.738018, 53.260220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.453606, 56.813080, 53.547825>,  <55.293003, 56.858116, 53.720387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.453606, 56.813080, 53.547825>,  <55.721279, 56.738018, 53.260220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.453606, 56.813080, 53.547825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698377, -0.171782, 0.694810,
		0.253895, 0.967098, -0.016097,
		-0.669184, 0.187651, 0.719013,
		55.252850, 56.869373, 53.763527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.855122, 57.405258, 53.574661>,  <55.721279, 56.738018, 53.260220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.855122, 57.405258, 53.574661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.686363, 57.155190, 53.837315>,  <55.585106, 57.005150, 53.994907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.686363, 57.155190, 53.837315>,  <55.855122, 57.405258, 53.574661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.686363, 57.155190, 53.837315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782568, 0.114602, 0.611927,
		-0.457809, 0.772029, 0.440887,
		-0.421899, -0.625170, 0.656631,
		55.559795, 56.967640, 54.034306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.705994, 57.687691, 54.217178>,  <55.855122, 57.405258, 53.574661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.705994, 57.687691, 54.217178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.794868, 57.298203, 54.237213>,  <55.848194, 57.064510, 54.249233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.794868, 57.298203, 54.237213>,  <55.705994, 57.687691, 54.217178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.794868, 57.298203, 54.237213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818708, 0.214222, 0.532753,
		-0.529481, -0.077360, 0.844787,
		0.222186, -0.973717, 0.050091,
		55.861523, 57.006088, 54.252239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.870159, 57.457088, 54.892715>,  <55.705994, 57.687691, 54.217178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.870159, 57.457088, 54.892715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.085060, 57.228786, 54.644329>,  <56.214001, 57.091805, 54.495296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.085060, 57.228786, 54.644329>,  <55.870159, 57.457088, 54.892715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.085060, 57.228786, 54.644329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821679, 0.188095, 0.538019,
		-0.190276, -0.799287, 0.570030,
		0.537251, -0.570754, -0.620968,
		56.246235, 57.057560, 54.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.466896, 57.242260, 55.277546>,  <55.870159, 57.457088, 54.892715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.466896, 57.242260, 55.277546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.626556, 57.144882, 54.923958>,  <56.722355, 57.086456, 54.711803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.626556, 57.144882, 54.923958>,  <56.466896, 57.242260, 55.277546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.626556, 57.144882, 54.923958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898657, 0.295149, 0.324503,
		0.181907, -0.923917, 0.336580,
		0.399155, -0.243441, -0.883975,
		56.746304, 57.071850, 54.658764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.035374, 56.736496, 55.217182>,  <56.466896, 57.242260, 55.277546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.035374, 56.736496, 55.217182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.053947, 57.048367, 54.967400>,  <57.065090, 57.235489, 54.817532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.053947, 57.048367, 54.967400>,  <57.035374, 56.736496, 55.217182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.053947, 57.048367, 54.967400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786039, 0.357248, 0.504497,
		0.616431, -0.514273, -0.596268,
		0.046433, 0.779678, -0.624457,
		57.067879, 57.282269, 54.780064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.753742, 56.705574, 54.898659>,  <57.035374, 56.736496, 55.217182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.753742, 56.705574, 54.898659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.596359, 57.072319, 54.925644>,  <57.501930, 57.292366, 54.941833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.596359, 57.072319, 54.925644>,  <57.753742, 56.705574, 54.898659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.596359, 57.072319, 54.925644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870077, 0.347665, 0.349421,
		0.296918, 0.196178, -0.934534,
		-0.393454, 0.916866, 0.067462,
		57.478325, 57.347378, 54.945881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.067177, 57.253410, 54.468388>,  <57.753742, 56.705574, 54.898659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.067177, 57.253410, 54.468388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.925957, 57.437042, 54.794479>,  <57.841225, 57.547222, 54.990135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.925957, 57.437042, 54.794479>,  <58.067177, 57.253410, 54.468388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.925957, 57.437042, 54.794479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924698, 0.303866, 0.229345,
		-0.142433, 0.834813, -0.531790,
		-0.353054, 0.459079, 0.815230,
		57.820042, 57.574764, 55.039047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.185860, 57.995560, 54.517689>,  <58.067177, 57.253410, 54.468388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.185860, 57.995560, 54.517689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.178955, 57.838799, 54.885628>,  <58.174812, 57.744743, 55.106392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.178955, 57.838799, 54.885628>,  <58.185860, 57.995560, 54.517689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.178955, 57.838799, 54.885628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941139, 0.304245, 0.147281,
		-0.337578, 0.868245, 0.363583,
		-0.017257, -0.391901, 0.919846,
		58.173779, 57.721230, 55.161583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.385330, 58.517666, 54.982216>,  <58.185860, 57.995560, 54.517689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.385330, 58.517666, 54.982216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.457718, 58.146694, 55.113136>,  <58.501152, 57.924110, 55.191689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.457718, 58.146694, 55.113136>,  <58.385330, 58.517666, 54.982216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.457718, 58.146694, 55.113136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983080, 0.180168, -0.033052,
		-0.028316, 0.327748, 0.944341,
		0.180972, -0.927427, 0.327305,
		58.512009, 57.868465, 55.211327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.905468, 58.514137, 55.560055>,  <58.385330, 58.517666, 54.982216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.905468, 58.514137, 55.560055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.926567, 58.154358, 55.386520>,  <58.939228, 57.938492, 55.282402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.926567, 58.154358, 55.386520>,  <58.905468, 58.514137, 55.560055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.926567, 58.154358, 55.386520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991394, -0.004956, 0.130822,
		-0.119818, -0.436999, 0.891446,
		0.052751, -0.899448, -0.433832,
		58.942394, 57.884521, 55.256371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.267365, 57.943573, 55.975113>,  <58.905468, 58.514137, 55.560055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.267365, 57.943573, 55.975113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.332977, 57.890961, 55.584053>,  <59.372345, 57.859394, 55.349419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.332977, 57.890961, 55.584053>,  <59.267365, 57.943573, 55.975113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.332977, 57.890961, 55.584053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978363, 0.148376, 0.144191,
		0.126094, -0.980145, 0.153021,
		0.164033, -0.131529, -0.977647,
		59.382187, 57.851501, 55.290760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.873405, 57.419571, 56.000591>,  <59.267365, 57.943573, 55.975113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.873405, 57.419571, 56.000591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.823074, 57.652599, 55.679398>,  <59.792877, 57.792416, 55.486683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.823074, 57.652599, 55.679398>,  <59.873405, 57.419571, 56.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.823074, 57.652599, 55.679398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953622, 0.294133, 0.063962,
		0.273446, -0.757693, -0.592561,
		-0.125829, 0.582570, -0.802982,
		59.785324, 57.827370, 55.438503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.349762, 57.174923, 55.456436>,  <59.873405, 57.419571, 56.000591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.349762, 57.174923, 55.456436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.282188, 57.564491, 55.395859>,  <60.241642, 57.798233, 55.359512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.282188, 57.564491, 55.395859>,  <60.349762, 57.174923, 55.456436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.282188, 57.564491, 55.395859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985614, 0.167705, -0.020967,
		0.004977, -0.152806, -0.988244,
		-0.168938, 0.973923, -0.151443,
		60.231506, 57.856667, 55.350426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.619068, 57.468307, 54.862595>,  <60.349762, 57.174923, 55.456436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.619068, 57.468307, 54.862595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.607330, 57.719940, 55.173309>,  <60.600288, 57.870918, 55.359737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.607330, 57.719940, 55.173309>,  <60.619068, 57.468307, 54.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.607330, 57.719940, 55.173309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989913, -0.089468, 0.109856,
		0.138605, 0.772175, -0.620108,
		-0.029348, 0.629079, 0.776787,
		60.598526, 57.908665, 55.406345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.059624, 58.198757, 54.692177>,  <60.619068, 57.468307, 54.862595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.059624, 58.198757, 54.692177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.047867, 58.061909, 55.067856>,  <61.040813, 57.979801, 55.293262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.047867, 58.061909, 55.067856>,  <61.059624, 58.198757, 54.692177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.047867, 58.061909, 55.067856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997144, 0.055362, 0.051374,
		-0.069571, 0.938023, 0.339518,
		-0.029394, -0.342122, 0.939196,
		61.039047, 57.959270, 55.349613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.548870, 58.494923, 55.089188>,  <61.059624, 58.198757, 54.692177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.548870, 58.494923, 55.089188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.498764, 58.183891, 55.335663>,  <61.468700, 57.997272, 55.483547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.498764, 58.183891, 55.335663>,  <61.548870, 58.494923, 55.089188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.498764, 58.183891, 55.335663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985396, -0.025313, 0.168386,
		-0.115335, 0.628280, 0.769391,
		-0.125269, -0.777576, 0.616185,
		61.461182, 57.950619, 55.520519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.067142, 58.623566, 55.658493>,  <61.548870, 58.494923, 55.089188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.067142, 58.623566, 55.658493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.946411, 58.242584, 55.641846>,  <61.873970, 58.013996, 55.631859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.946411, 58.242584, 55.641846>,  <62.067142, 58.623566, 55.658493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.946411, 58.242584, 55.641846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921540, -0.302663, 0.243228,
		-0.244258, 0.035063, 0.969076,
		-0.301832, -0.952452, -0.041616,
		61.855862, 57.956848, 55.629360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.274189, 58.264290, 56.242657>,  <62.067142, 58.623566, 55.658493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.274189, 58.264290, 56.242657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.258621, 58.022102, 55.924690>,  <62.249283, 57.876789, 55.733910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.258621, 58.022102, 55.924690>,  <62.274189, 58.264290, 56.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.258621, 58.022102, 55.924690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900308, -0.366374, 0.234983,
		-0.433511, -0.706524, 0.559367,
		-0.038917, -0.605470, -0.794916,
		62.246944, 57.840462, 55.686214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.470470, 57.541931, 56.453472>,  <62.274189, 58.264290, 56.242657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.470470, 57.541931, 56.453472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.513992, 57.553543, 56.056015>,  <62.540104, 57.560509, 55.817543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.513992, 57.553543, 56.056015>,  <62.470470, 57.541931, 56.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.513992, 57.553543, 56.056015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908349, -0.408955, 0.087515,
		-0.403813, -0.912093, -0.070862,
		0.108801, 0.029028, -0.993640,
		62.546631, 57.562252, 55.757923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.598072, 56.839420, 56.291821>,  <62.470470, 57.541931, 56.453472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.598072, 56.839420, 56.291821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.773460, 57.116882, 56.063232>,  <62.878693, 57.283360, 55.926079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.773460, 57.116882, 56.063232>,  <62.598072, 56.839420, 56.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.773460, 57.116882, 56.063232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878211, -0.195539, 0.436475,
		0.191020, -0.693254, -0.694918,
		0.438471, 0.693660, -0.571471,
		62.905003, 57.324982, 55.891792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.333721, 56.578773, 56.038708>,  <62.598072, 56.839420, 56.291821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.333721, 56.578773, 56.038708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.376228, 56.975624, 56.012192>,  <63.401733, 57.213734, 55.996284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.376228, 56.975624, 56.012192>,  <63.333721, 56.578773, 56.038708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.376228, 56.975624, 56.012192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897228, -0.066943, 0.436464,
		0.428590, -0.105856, -0.897277,
		0.106269, 0.992126, -0.066286,
		63.408108, 57.273262, 55.992306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.988777, 56.570107, 56.112312>,  <63.333721, 56.578773, 56.038708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.988777, 56.570107, 56.112312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.943367, 56.965935, 56.076843>,  <63.916119, 57.203430, 56.055561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.943367, 56.965935, 56.076843>,  <63.988777, 56.570107, 56.112312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.943367, 56.965935, 56.076843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837223, 0.143339, 0.527743,
		0.534949, -0.014325, -0.844763,
		-0.113528, 0.989570, -0.088673,
		63.909309, 57.262806, 56.050240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.649605, 56.825817, 55.786381>,  <63.988777, 56.570107, 56.112312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.649605, 56.825817, 55.786381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.490944, 57.127502, 55.995697>,  <64.395752, 57.308514, 56.121288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.490944, 57.127502, 55.995697>,  <64.649605, 56.825817, 55.786381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.490944, 57.127502, 55.995697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890071, 0.176510, 0.420260,
		0.224599, 0.632462, -0.741315,
		-0.396648, 0.754212, 0.523292,
		64.371948, 57.353767, 56.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.916328, 57.533749, 55.641151>,  <64.649605, 56.825817, 55.786381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.916328, 57.533749, 55.641151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.801437, 57.466583, 56.018364>,  <64.732506, 57.426285, 56.244690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.801437, 57.466583, 56.018364>,  <64.916328, 57.533749, 55.641151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.801437, 57.466583, 56.018364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913820, 0.247072, 0.322318,
		-0.287119, 0.954337, 0.082482,
		-0.287221, -0.167917, 0.943031,
		64.715271, 57.416206, 56.301273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.155762, 58.016396, 56.105289>,  <64.916328, 57.533749, 55.641151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.155762, 58.016396, 56.105289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.131897, 57.669930, 56.303764>,  <65.117577, 57.462051, 56.422848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.131897, 57.669930, 56.303764>,  <65.155762, 58.016396, 56.105289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.131897, 57.669930, 56.303764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844572, 0.221166, 0.487631,
		-0.532108, 0.448161, 0.718341,
		-0.059664, -0.866162, 0.496188,
		65.113998, 57.410080, 56.452621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.293472, 58.023834, 56.835938>,  <65.155762, 58.016396, 56.105289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.293472, 58.023834, 56.835938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.414360, 57.658180, 56.727852>,  <65.486893, 57.438789, 56.663002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.414360, 57.658180, 56.727852>,  <65.293472, 58.023834, 56.835938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.414360, 57.658180, 56.727852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873803, 0.152392, 0.461784,
		-0.380955, -0.375674, 0.844832,
		0.302226, -0.914136, -0.270211,
		65.505028, 57.383938, 56.646790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.585434, 57.602737, 57.401592>,  <65.293472, 58.023834, 56.835938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.585434, 57.602737, 57.401592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.731651, 57.496933, 57.044624>,  <65.819382, 57.433453, 56.830444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.731651, 57.496933, 57.044624>,  <65.585434, 57.602737, 57.401592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.731651, 57.496933, 57.044624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928986, 0.163404, 0.332091,
		0.057984, -0.950439, 0.305458,
		0.365545, -0.264510, -0.892419,
		65.841316, 57.417580, 56.776897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.092384, 57.052441, 57.521473>,  <65.585434, 57.602737, 57.401592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.092384, 57.052441, 57.521473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.157791, 57.225365, 57.166763>,  <66.197037, 57.329121, 56.953938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.157791, 57.225365, 57.166763>,  <66.092384, 57.052441, 57.521473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.157791, 57.225365, 57.166763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973331, 0.075900, 0.216483,
		0.160894, -0.898525, -0.408369,
		0.163520, 0.432309, -0.886775,
		66.206848, 57.355057, 56.900730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.748055, 56.914581, 57.432068>,  <66.092384, 57.052441, 57.521473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.748055, 56.914581, 57.432068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.688095, 57.226723, 57.189224>,  <66.652122, 57.414005, 57.043518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.688095, 57.226723, 57.189224>,  <66.748055, 56.914581, 57.432068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.688095, 57.226723, 57.189224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937659, 0.306946, 0.163033,
		0.313574, -0.544828, -0.777711,
		-0.149891, 0.780351, -0.607113,
		66.643127, 57.460827, 57.007092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.352188, 56.939289, 56.879238>,  <66.748055, 56.914581, 57.432068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.352188, 56.939289, 56.879238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.177521, 57.291748, 56.951790>,  <67.072716, 57.503223, 56.995323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.177521, 57.291748, 56.951790>,  <67.352188, 56.939289, 56.879238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.177521, 57.291748, 56.951790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894987, 0.405065, 0.186868,
		0.091186, 0.243936, -0.965495,
		-0.436672, 0.881145, 0.181383,
		67.046516, 57.556091, 57.006207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.535690, 57.472084, 56.504578>,  <67.352188, 56.939289, 56.879238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.535690, 57.472084, 56.504578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.439178, 57.686569, 56.828125>,  <67.381271, 57.815258, 57.022251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.439178, 57.686569, 56.828125>,  <67.535690, 57.472084, 56.504578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.439178, 57.686569, 56.828125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931189, 0.362615, 0.037382,
		-0.273263, 0.762226, -0.586804,
		-0.241278, 0.536210, 0.808866,
		67.366798, 57.847431, 57.070786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.878853, 58.101810, 56.325466>,  <67.535690, 57.472084, 56.504578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.878853, 58.101810, 56.325466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.842873, 58.020775, 56.715515>,  <67.821281, 57.972153, 56.949543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.842873, 58.020775, 56.715515>,  <67.878853, 58.101810, 56.325466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.842873, 58.020775, 56.715515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994152, 0.040480, 0.100114,
		-0.059755, 0.978426, 0.197765,
		-0.089949, -0.202591, 0.975124,
		67.815887, 57.959999, 57.008053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.079796, 58.577290, 56.715141>,  <67.878853, 58.101810, 56.325466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.079796, 58.577290, 56.715141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.155983, 58.247658, 56.928535>,  <68.201698, 58.049877, 57.056572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.155983, 58.247658, 56.928535>,  <68.079796, 58.577290, 56.715141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.155983, 58.247658, 56.928535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971209, 0.237392, 0.019960,
		-0.143094, 0.514328, 0.845572,
		0.190466, -0.824083, 0.533489,
		68.213120, 58.000435, 57.088581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.520927, 58.757259, 57.324951>,  <68.079796, 58.577290, 56.715141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.520927, 58.757259, 57.324951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.558365, 58.372856, 57.220871>,  <68.580826, 58.142216, 57.158424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.558365, 58.372856, 57.220871>,  <68.520927, 58.757259, 57.324951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.558365, 58.372856, 57.220871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968753, 0.027617, 0.246488,
		-0.229691, -0.275139, 0.933563,
		0.093600, -0.961008, -0.260198,
		68.586449, 58.084553, 57.142811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.722794, 58.197784, 57.884308>,  <68.520927, 58.757259, 57.324951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.722794, 58.197784, 57.884308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.884537, 58.144875, 57.522316>,  <68.981583, 58.113129, 57.305119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.884537, 58.144875, 57.522316>,  <68.722794, 58.197784, 57.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.884537, 58.144875, 57.522316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913647, 0.013309, 0.406291,
		-0.041696, -0.991124, 0.126230,
		0.404365, -0.132271, -0.904983,
		69.005844, 58.105194, 57.250820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.046852, 57.576393, 57.574173>,  <68.722794, 58.197784, 57.884308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.046852, 57.576393, 57.574173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.256683, 57.870575, 57.402626>,  <69.382584, 58.047085, 57.299698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.256683, 57.870575, 57.402626>,  <69.046852, 57.576393, 57.574173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.256683, 57.870575, 57.402626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806248, -0.267341, 0.527724,
		0.273465, -0.622602, -0.733201,
		0.524577, 0.735456, -0.428864,
		69.414055, 58.091213, 57.273968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.760963, 57.436077, 57.590115>,  <69.046852, 57.576393, 57.574173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.760963, 57.436077, 57.590115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.807678, 57.821365, 57.493309>,  <69.835709, 58.052536, 57.435226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.807678, 57.821365, 57.493309>,  <69.760963, 57.436077, 57.590115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.807678, 57.821365, 57.493309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956991, -0.043988, 0.286764,
		0.265569, -0.265102, -0.926927,
		0.116796, 0.963216, -0.242019,
		69.842720, 58.110329, 57.420704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.284180, 57.465702, 57.092033>,  <69.760963, 57.436077, 57.590115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.284180, 57.465702, 57.092033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.227295, 57.763939, 57.352455>,  <70.193169, 57.942883, 57.508709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.227295, 57.763939, 57.352455>,  <70.284180, 57.465702, 57.092033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.227295, 57.763939, 57.352455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956773, -0.065046, 0.283469,
		0.253701, 0.663221, -0.704112,
		-0.142203, 0.745592, 0.651054,
		70.184631, 57.987617, 57.547771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.790054, 58.033707, 57.050827>,  <70.284180, 57.465702, 57.092033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.790054, 58.033707, 57.050827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.650841, 58.042252, 57.425720>,  <70.567314, 58.047379, 57.650658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.650841, 58.042252, 57.425720>,  <70.790054, 58.033707, 57.050827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.650841, 58.042252, 57.425720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927613, 0.152514, 0.340990,
		-0.135655, 0.988070, -0.072901,
		-0.348040, 0.021367, 0.937236,
		70.546432, 58.048660, 57.706890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.987724, 58.631287, 57.584003>,  <70.790054, 58.033707, 57.050827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.987724, 58.631287, 57.584003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.910309, 58.313965, 57.814903>,  <70.863861, 58.123573, 57.953442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.910309, 58.313965, 57.814903>,  <70.987724, 58.631287, 57.584003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.910309, 58.313965, 57.814903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885121, 0.112616, 0.451529,
		-0.423206, 0.598321, 0.680374,
		-0.193538, -0.793303, 0.577246,
		70.852249, 58.075974, 57.988079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.126640, 58.708641, 58.326756>,  <70.987724, 58.631287, 57.584003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.126640, 58.708641, 58.326756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.205643, 58.326744, 58.237808>,  <71.253044, 58.097607, 58.184441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.205643, 58.326744, 58.237808>,  <71.126640, 58.708641, 58.326756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.205643, 58.326744, 58.237808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950935, 0.131498, 0.280055,
		-0.238140, -0.266775, 0.933874,
		0.197514, -0.954746, -0.222370,
		71.264900, 58.040321, 58.171097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.258698, 58.271049, 58.914661>,  <71.126640, 58.708641, 58.326756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.258698, 58.271049, 58.914661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.443932, 58.104050, 58.601936>,  <71.555077, 58.003849, 58.414299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.443932, 58.104050, 58.601936>,  <71.258698, 58.271049, 58.914661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.443932, 58.104050, 58.601936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877056, 0.088728, 0.472124,
		-0.127743, -0.904334, 0.407262,
		0.463093, -0.417502, -0.781817,
		71.582863, 57.978798, 58.367390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.629089, 57.531128, 59.123840>,  <71.258698, 58.271049, 58.914661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.629089, 57.531128, 59.123840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.790878, 57.756615, 58.835777>,  <71.887955, 57.891907, 58.662941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.790878, 57.756615, 58.835777>,  <71.629089, 57.531128, 59.123840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.790878, 57.756615, 58.835777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821052, 0.123017, 0.557441,
		0.402828, -0.816759, -0.413079,
		0.404479, 0.563713, -0.720156,
		71.912224, 57.925728, 58.619732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.307159, 57.259842, 58.923084>,  <71.629089, 57.531128, 59.123840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.307159, 57.259842, 58.923084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.275734, 57.658501, 58.913956>,  <72.256882, 57.897697, 58.908478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.275734, 57.658501, 58.913956>,  <72.307159, 57.259842, 58.923084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.275734, 57.658501, 58.913956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728230, 0.073004, 0.681434,
		0.680815, 0.036919, -0.731524,
		-0.078562, 0.996648, -0.022817,
		72.252167, 57.957497, 58.907112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.949745, 57.560959, 58.831013>,  <72.307159, 57.259842, 58.923084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.949745, 57.560959, 58.831013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.725502, 57.810295, 59.049065>,  <72.590958, 57.959896, 59.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.725502, 57.810295, 59.049065>,  <72.949745, 57.560959, 58.831013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.725502, 57.810295, 59.049065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723745, 0.048934, 0.688330,
		0.402389, 0.780417, -0.478573,
		-0.560603, 0.623342, 0.545132,
		72.557320, 57.997299, 59.212605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.345802, 58.255707, 59.050747>,  <72.949745, 57.560959, 58.831013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.345802, 58.255707, 59.050747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.064987, 58.129906, 59.306320>,  <72.896500, 58.054424, 59.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.064987, 58.129906, 59.306320>,  <73.345802, 58.255707, 59.050747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.064987, 58.129906, 59.306320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695859, -0.112173, 0.709364,
		-0.151424, 0.942606, 0.297598,
		-0.702033, -0.314501, 0.638935,
		72.854378, 58.035557, 59.498001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.604874, 58.450279, 59.667027>,  <73.345802, 58.255707, 59.050747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.604874, 58.450279, 59.667027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.315376, 58.215004, 59.811371>,  <73.141678, 58.073841, 59.897980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.315376, 58.215004, 59.811371>,  <73.604874, 58.450279, 59.667027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.315376, 58.215004, 59.811371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531267, -0.141210, 0.835353,
		-0.440385, 0.796303, 0.414684,
		-0.723752, -0.588185, 0.360863,
		73.098251, 58.038548, 59.919628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.371994, 58.694386, 60.292355>,  <73.604874, 58.450279, 59.667027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.371994, 58.694386, 60.292355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.325462, 58.297279, 60.304260>,  <73.297546, 58.059017, 60.311401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.325462, 58.297279, 60.304260>,  <73.371994, 58.694386, 60.292355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.325462, 58.297279, 60.304260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308547, -0.007641, 0.951178,
		-0.944069, 0.119830, 0.307204,
		-0.116326, -0.992765, 0.029760,
		73.290565, 57.999451, 60.313187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.979424, 58.451385, 60.929649>,  <73.371994, 58.694386, 60.292355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.979424, 58.451385, 60.929649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.225273, 58.157715, 60.814255>,  <73.372780, 57.981514, 60.745018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.225273, 58.157715, 60.814255>,  <72.979424, 58.451385, 60.929649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.225273, 58.157715, 60.814255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355876, -0.068310, 0.932033,
		-0.703985, -0.675512, 0.219291,
		0.614620, -0.734178, -0.288488,
		73.409660, 57.937462, 60.727707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
