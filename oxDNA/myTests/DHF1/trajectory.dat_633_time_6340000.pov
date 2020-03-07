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
	<0.877319, 4.718760, -0.928516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.000469, 4.366693, -0.784006>,  <1.074360, 4.155454, -0.697301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.000469, 4.366693, -0.784006>,  <0.877319, 4.718760, -0.928516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.000469, 4.366693, -0.784006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165501, 0.423473, 0.890663,
		-0.936921, -0.214423, 0.276046,
		0.307876, -0.880167, 0.361273,
		1.092832, 4.102643, -0.675624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.538072, 4.598739, -0.305016>,  <0.877319, 4.718760, -0.928516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.538072, 4.598739, -0.305016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.883274, 4.396860, -0.313987>,  <1.090395, 4.275733, -0.319370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.883274, 4.396860, -0.313987>,  <0.538072, 4.598739, -0.305016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.883274, 4.396860, -0.313987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116604, 0.155797, 0.980883,
		-0.491554, -0.849122, 0.193303,
		0.863005, -0.504697, -0.022428,
		1.142176, 4.245451, -0.320715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.600742, 4.389348, 0.392199>,  <0.538072, 4.598739, -0.305016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.600742, 4.389348, 0.392199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978539, 4.345980, 0.268146>,  <1.205216, 4.319959, 0.193715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978539, 4.345980, 0.268146>,  <0.600742, 4.389348, 0.392199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978539, 4.345980, 0.268146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320234, 0.092928, 0.942770,
		-0.073395, -0.989752, 0.122490,
		0.944491, -0.108420, -0.310131,
		1.261886, 4.313454, 0.175107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.922507, 3.862895, 0.806950>,  <0.600742, 4.389348, 0.392199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.922507, 3.862895, 0.806950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.171837, 4.157988, 0.703245>,  <1.321435, 4.335043, 0.641022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.171837, 4.157988, 0.703245>,  <0.922507, 3.862895, 0.806950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.171837, 4.157988, 0.703245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207636, 0.163500, 0.964446,
		0.753892, -0.654995, -0.051266,
		0.623325, 0.737733, -0.259262,
		1.358834, 4.379307, 0.625467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.562481, 3.722695, 1.132081>,  <0.922507, 3.862895, 0.806950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.562481, 3.722695, 1.132081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600746, 4.112303, 1.049976>,  <1.623705, 4.346068, 1.000713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600746, 4.112303, 1.049976>,  <1.562481, 3.722695, 1.132081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.600746, 4.112303, 1.049976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325185, 0.164314, 0.931266,
		0.940799, -0.155835, -0.301018,
		0.095663, 0.974021, -0.205262,
		1.629445, 4.404509, 0.988397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.193709, 3.871491, 1.267003>,  <1.562481, 3.722695, 1.132081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.193709, 3.871491, 1.267003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.984264, 4.211889, 1.283183>,  <1.858598, 4.416129, 1.292890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.984264, 4.211889, 1.283183>,  <2.193709, 3.871491, 1.267003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.984264, 4.211889, 1.283183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372706, 0.186114, 0.909094,
		0.766108, 0.491087, -0.414623,
		-0.523611, 0.850997, 0.040448,
		1.827181, 4.467188, 1.295317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.729306, 4.354512, 1.468741>,  <2.193709, 3.871491, 1.267003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.729306, 4.354512, 1.468741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.357101, 4.476831, 1.549372>,  <2.133778, 4.550223, 1.597751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.357101, 4.476831, 1.549372>,  <2.729306, 4.354512, 1.468741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.357101, 4.476831, 1.549372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242579, 0.102202, 0.964733,
		0.274411, 0.946595, -0.169280,
		-0.930513, 0.305798, 0.201579,
		2.077948, 4.568571, 1.609846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.918150, 4.893490, 1.968301>,  <2.729306, 4.354512, 1.468741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.918150, 4.893490, 1.968301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.528671, 4.802729, 1.976603>,  <2.294984, 4.748272, 1.981584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.528671, 4.802729, 1.976603>,  <2.918150, 4.893490, 1.968301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.528671, 4.802729, 1.976603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016888, 0.162708, 0.986530,
		-0.227224, 0.960230, -0.162260,
		-0.973696, -0.226903, 0.020754,
		2.236562, 4.734658, 1.982829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.938285, -0.164047, 2.866309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598351, -0.038419, 3.035608>,  <2.394390, 0.036958, 3.137188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.598351, -0.038419, 3.035608>,  <2.938285, -0.164047, 2.866309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.598351, -0.038419, 3.035608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395889, 0.149734, -0.906009,
		-0.347926, -0.937518, -0.002912,
		-0.849835, 0.314071, 0.423249,
		2.343400, 0.055802, 3.162583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.404388, -0.578645, 2.676044>,  <2.938285, -0.164047, 2.866309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.404388, -0.578645, 2.676044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256844, -0.213848, 2.747833>,  <2.168317, 0.005030, 2.790907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256844, -0.213848, 2.747833>,  <2.404388, -0.578645, 2.676044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.256844, -0.213848, 2.747833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301016, 0.065475, -0.951369,
		-0.879392, -0.404948, 0.250373,
		-0.368861, 0.911992, 0.179474,
		2.146185, 0.059750, 2.801676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.685917, -0.559554, 2.563760>,  <2.404388, -0.578645, 2.676044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.685917, -0.559554, 2.563760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863976, -0.211401, 2.479590>,  <1.970811, -0.002509, 2.429088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863976, -0.211401, 2.479590>,  <1.685917, -0.559554, 2.563760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863976, -0.211401, 2.479590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410773, -0.010324, -0.911679,
		-0.795682, 0.492268, 0.352934,
		0.445146, 0.870383, -0.210425,
		1.997519, 0.049714, 2.416462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.121585, -0.270491, 2.275347>,  <1.685917, -0.559554, 2.563760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.121585, -0.270491, 2.275347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.474907, -0.145257, 2.135776>,  <1.686900, -0.070117, 2.052033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.474907, -0.145257, 2.135776>,  <1.121585, -0.270491, 2.275347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.474907, -0.145257, 2.135776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295105, -0.206984, -0.932776,
		-0.364260, 0.926896, -0.090437,
		0.883305, 0.313084, -0.348927,
		1.739898, -0.051332, 2.031098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.995911, 0.183179, 1.710359>,  <1.121585, -0.270491, 2.275347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.995911, 0.183179, 1.710359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.357849, 0.020642, 1.659539>,  <1.575012, -0.076880, 1.629047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.357849, 0.020642, 1.659539>,  <0.995911, 0.183179, 1.710359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.357849, 0.020642, 1.659539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214924, -0.178369, -0.960204,
		0.367510, 0.896142, -0.248729,
		0.904845, -0.406343, -0.127050,
		1.629303, -0.101261, 1.621424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.340849, 0.629535, 1.237203>,  <0.995911, 0.183179, 1.710359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.340849, 0.629535, 1.237203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.524284, 0.274235, 1.247861>,  <1.634345, 0.061055, 1.254256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.524284, 0.274235, 1.247861>,  <1.340849, 0.629535, 1.237203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.524284, 0.274235, 1.247861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101057, -0.081917, -0.991503,
		0.882884, 0.451998, -0.127330,
		0.458588, -0.888250, 0.026646,
		1.661861, 0.007760, 1.255855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.812486, 0.658889, 0.764443>,  <1.340849, 0.629535, 1.237203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.812486, 0.658889, 0.764443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.753136, 0.268350, 0.827344>,  <1.717525, 0.034026, 0.865085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.753136, 0.268350, 0.827344>,  <1.812486, 0.658889, 0.764443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.753136, 0.268350, 0.827344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123106, -0.139541, -0.982534,
		0.981239, -0.165144, -0.099490,
		-0.148376, -0.976348, 0.157253,
		1.708623, -0.024555, 0.874520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.978390, 0.347942, 0.100735>,  <1.812486, 0.658889, 0.764443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.978390, 0.347942, 0.100735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.772438, 0.051468, 0.273034>,  <1.648867, -0.126417, 0.376413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.772438, 0.051468, 0.273034>,  <1.978390, 0.347942, 0.100735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.772438, 0.051468, 0.273034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374203, -0.257753, -0.890806,
		0.771279, -0.619844, -0.144643,
		-0.514879, -0.741186, 0.430747,
		1.617975, -0.170888, 0.402258>
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
