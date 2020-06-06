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
	<24.190565, 34.896622, 35.186684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363008, 35.107727, 34.893944>,  <24.466475, 35.234390, 34.718300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363008, 35.107727, 34.893944>,  <24.190565, 34.896622, 35.186684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363008, 35.107727, 34.893944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580394, 0.458827, 0.672770,
		0.690859, -0.714800, -0.108508,
		0.431110, 0.527767, -0.731851,
		24.492342, 35.266056, 34.674389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991270, 34.854549, 35.207603>,  <24.190565, 34.896622, 35.186684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991270, 34.854549, 35.207603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866112, 35.205799, 35.062828>,  <24.791018, 35.416550, 34.975964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866112, 35.205799, 35.062828>,  <24.991270, 34.854549, 35.207603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866112, 35.205799, 35.062828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356523, 0.461795, 0.812180,
		0.880334, 0.125089, -0.457565,
		-0.312896, 0.878122, -0.361936,
		24.772243, 35.469234, 34.954247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597460, 35.124832, 35.023979>,  <24.991270, 34.854549, 35.207603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597460, 35.124832, 35.023979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348783, 35.408497, 35.156994>,  <25.199577, 35.578697, 35.236805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348783, 35.408497, 35.156994>,  <25.597460, 35.124832, 35.023979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348783, 35.408497, 35.156994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574948, 0.124859, 0.808607,
		0.531915, 0.693898, -0.485357,
		-0.621692, 0.709166, 0.332541,
		25.162275, 35.621246, 35.256756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041393, 35.750416, 35.232033>,  <25.597460, 35.124832, 35.023979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041393, 35.750416, 35.232033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703728, 35.742702, 35.446327>,  <25.501129, 35.738075, 35.574905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703728, 35.742702, 35.446327>,  <26.041393, 35.750416, 35.232033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703728, 35.742702, 35.446327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507764, 0.291765, 0.810585,
		-0.171942, 0.956296, -0.236505,
		-0.844163, -0.019285, 0.535739,
		25.450480, 35.736916, 35.607048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977484, 36.380543, 35.641579>,  <26.041393, 35.750416, 35.232033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977484, 36.380543, 35.641579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775272, 36.069668, 35.791466>,  <25.653946, 35.883141, 35.881397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775272, 36.069668, 35.791466>,  <25.977484, 36.380543, 35.641579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775272, 36.069668, 35.791466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300073, 0.248823, 0.920893,
		-0.808947, 0.577982, 0.107427,
		-0.505530, -0.777189, 0.374722,
		25.623613, 35.836510, 35.903881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474438, 36.605690, 36.265682>,  <25.977484, 36.380543, 35.641579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474438, 36.605690, 36.265682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616055, 36.231617, 36.262100>,  <25.701025, 36.007172, 36.259953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616055, 36.231617, 36.262100>,  <25.474438, 36.605690, 36.265682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616055, 36.231617, 36.262100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467791, 0.168792, 0.867572,
		-0.809830, -0.311346, 0.497231,
		0.354043, -0.935186, -0.008952,
		25.722267, 35.951061, 36.259415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264320, 36.275253, 36.818935>,  <25.474438, 36.605690, 36.265682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264320, 36.275253, 36.818935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612526, 36.103889, 36.722046>,  <25.821449, 36.001072, 36.663910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612526, 36.103889, 36.722046>,  <25.264320, 36.275253, 36.818935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612526, 36.103889, 36.722046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306137, 0.086001, 0.948095,
		-0.385339, -0.899484, 0.206016,
		0.870513, -0.428407, -0.242226,
		25.873680, 35.975368, 36.649380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338312, 35.741631, 37.292965>,  <25.264320, 36.275253, 36.818935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338312, 35.741631, 37.292965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705921, 35.753242, 37.135712>,  <25.926487, 35.760208, 37.041359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705921, 35.753242, 37.135712>,  <25.338312, 35.741631, 37.292965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705921, 35.753242, 37.135712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389093, 0.093266, 0.916465,
		0.063263, -0.995218, 0.074421,
		0.919024, 0.029022, -0.393133,
		25.981628, 35.761951, 37.017773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670790, 35.243870, 37.639034>,  <25.338312, 35.741631, 37.292965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670790, 35.243870, 37.639034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926226, 35.527885, 37.520344>,  <26.079487, 35.698296, 37.449131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926226, 35.527885, 37.520344>,  <25.670790, 35.243870, 37.639034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926226, 35.527885, 37.520344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318653, 0.106992, 0.941814,
		0.700475, -0.695982, -0.157934,
		0.638588, 0.710043, -0.296722,
		26.117802, 35.740898, 37.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199732, 35.079960, 37.982212>,  <25.670790, 35.243870, 37.639034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199732, 35.079960, 37.982212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270384, 35.461323, 37.884380>,  <26.312775, 35.690140, 37.825680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270384, 35.461323, 37.884380>,  <26.199732, 35.079960, 37.982212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270384, 35.461323, 37.884380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181265, 0.212731, 0.960150,
		0.967443, -0.213924, -0.135245,
		0.176629, 0.953405, -0.244582,
		26.323372, 35.747345, 37.811005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645105, 35.284859, 38.550835>,  <26.199732, 35.079960, 37.982212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645105, 35.284859, 38.550835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545240, 35.628338, 38.371811>,  <26.485321, 35.834427, 38.264397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545240, 35.628338, 38.371811>,  <26.645105, 35.284859, 38.550835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545240, 35.628338, 38.371811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083073, 0.479484, 0.873610,
		0.964763, 0.180928, -0.191044,
		-0.249663, 0.858697, -0.447558,
		26.470341, 35.885948, 38.237545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270967, 35.798599, 38.489788>,  <26.645105, 35.284859, 38.550835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270967, 35.798599, 38.489788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923412, 35.994896, 38.515724>,  <26.714878, 36.112675, 38.531284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923412, 35.994896, 38.515724>,  <27.270967, 35.798599, 38.489788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923412, 35.994896, 38.515724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264879, 0.350281, 0.898411,
		0.418176, 0.797795, -0.434342,
		-0.868889, 0.490742, 0.064840,
		26.662746, 36.142117, 38.535175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452129, 36.242729, 38.948689>,  <27.270967, 35.798599, 38.489788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452129, 36.242729, 38.948689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063463, 36.331009, 38.914856>,  <26.830263, 36.383976, 38.894554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063463, 36.331009, 38.914856>,  <27.452129, 36.242729, 38.948689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063463, 36.331009, 38.914856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076938, 0.633721, 0.769726,
		0.223483, 0.741409, -0.632746,
		-0.971666, 0.220703, -0.084583,
		26.771963, 36.397221, 38.889481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303879, 37.047867, 39.066952>,  <27.452129, 36.242729, 38.948689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303879, 37.047867, 39.066952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968328, 36.849731, 39.157215>,  <26.766998, 36.730850, 39.211372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968328, 36.849731, 39.157215>,  <27.303879, 37.047867, 39.066952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968328, 36.849731, 39.157215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029677, 0.455574, 0.889703,
		-0.543510, 0.739656, -0.396871,
		-0.838878, -0.495340, 0.225659,
		26.716665, 36.701130, 39.224915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903662, 37.511330, 39.404942>,  <27.303879, 37.047867, 39.066952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903662, 37.511330, 39.404942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759562, 37.156742, 39.521145>,  <26.673101, 36.943989, 39.590866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759562, 37.156742, 39.521145>,  <26.903662, 37.511330, 39.404942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759562, 37.156742, 39.521145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000688, 0.311676, 0.950188,
		-0.932854, 0.342108, -0.112892,
		-0.360253, -0.886465, 0.290513,
		26.651485, 36.890804, 39.608299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768501, 37.697384, 39.982807>,  <26.903662, 37.511330, 39.404942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768501, 37.697384, 39.982807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661547, 37.313240, 40.014332>,  <26.597374, 37.082752, 40.033249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661547, 37.313240, 40.014332>,  <26.768501, 37.697384, 39.982807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661547, 37.313240, 40.014332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101864, 0.109507, 0.988753,
		-0.958189, 0.256353, -0.127107,
		-0.267389, -0.960360, 0.078816,
		26.581329, 37.025131, 40.037975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030342, 37.648960, 40.215958>,  <26.768501, 37.697384, 39.982807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030342, 37.648960, 40.215958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231537, 37.321262, 40.326115>,  <26.352255, 37.124645, 40.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231537, 37.321262, 40.326115>,  <26.030342, 37.648960, 40.215958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231537, 37.321262, 40.326115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426262, 0.042043, 0.903622,
		-0.751867, -0.571899, -0.328066,
		0.502988, -0.819246, 0.275390,
		26.382433, 37.075489, 40.408733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512115, 37.207581, 40.592178>,  <26.030342, 37.648960, 40.215958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.512115, 37.207581, 40.592178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873522, 37.077923, 40.704311>,  <26.090366, 37.000130, 40.771591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873522, 37.077923, 40.704311>,  <25.512115, 37.207581, 40.592178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873522, 37.077923, 40.704311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336896, -0.132945, 0.932109,
		-0.264872, -0.936619, -0.229322,
		0.903518, -0.324147, 0.280330,
		26.144577, 36.980679, 40.788410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418715, 36.489414, 40.991131>,  <25.512115, 37.207581, 40.592178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418715, 36.489414, 40.991131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755320, 36.669769, 41.110168>,  <25.957283, 36.777981, 41.181591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755320, 36.669769, 41.110168>,  <25.418715, 36.489414, 40.991131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755320, 36.669769, 41.110168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324509, -0.018525, 0.945701,
		0.431917, -0.892389, 0.130728,
		0.841512, 0.450887, 0.297589,
		26.007772, 36.805035, 41.199444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479837, 36.295723, 41.721157>,  <25.418715, 36.489414, 40.991131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479837, 36.295723, 41.721157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764769, 36.570053, 41.661510>,  <25.935726, 36.734650, 41.625725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764769, 36.570053, 41.661510>,  <25.479837, 36.295723, 41.721157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764769, 36.570053, 41.661510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029236, 0.241267, 0.970018,
		0.701240, -0.686610, 0.191911,
		0.712326, 0.685826, -0.149112,
		25.978466, 36.775803, 41.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967409, 36.183594, 42.223507>,  <25.479837, 36.295723, 41.721157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967409, 36.183594, 42.223507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994400, 36.569340, 42.121181>,  <26.010595, 36.800789, 42.059788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994400, 36.569340, 42.121181>,  <25.967409, 36.183594, 42.223507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994400, 36.569340, 42.121181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040650, 0.258841, 0.965064,
		0.996892, -0.054722, 0.056668,
		0.067478, 0.964369, -0.255812,
		26.014643, 36.858650, 42.044437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368904, 36.496693, 42.814720>,  <25.967409, 36.183594, 42.223507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368904, 36.496693, 42.814720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172052, 36.787384, 42.623024>,  <26.053942, 36.961800, 42.508007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172052, 36.787384, 42.623024>,  <26.368904, 36.496693, 42.814720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172052, 36.787384, 42.623024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206155, 0.437566, 0.875235,
		0.845758, 0.529528, -0.065521,
		-0.492131, 0.726730, -0.479240,
		26.024412, 37.005402, 42.479252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765556, 37.106361, 42.942753>,  <26.368904, 36.496693, 42.814720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765556, 37.106361, 42.942753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388456, 37.213497, 42.863274>,  <26.162195, 37.277779, 42.815586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388456, 37.213497, 42.863274>,  <26.765556, 37.106361, 42.942753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388456, 37.213497, 42.863274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074062, 0.412785, 0.907812,
		0.325167, 0.870558, -0.369318,
		-0.942752, 0.267838, -0.198700,
		26.105631, 37.293850, 42.803665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731247, 37.683254, 43.281200>,  <26.765556, 37.106361, 42.942753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731247, 37.683254, 43.281200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350353, 37.573780, 43.227028>,  <26.121817, 37.508095, 43.194523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350353, 37.573780, 43.227028>,  <26.731247, 37.683254, 43.281200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350353, 37.573780, 43.227028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229211, 0.347566, 0.909209,
		-0.201765, 0.896824, -0.393696,
		-0.952236, -0.273686, -0.135435,
		26.064682, 37.491673, 43.186398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331673, 37.918076, 43.596344>,  <26.731247, 37.683254, 43.281200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331673, 37.918076, 43.596344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360552, 37.519238, 43.606049>,  <27.377880, 37.279934, 43.611874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360552, 37.519238, 43.606049>,  <27.331673, 37.918076, 43.596344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360552, 37.519238, 43.606049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734786, 0.069626, 0.674716,
		-0.674446, -0.030885, 0.737678,
		0.072200, -0.997095, 0.024265,
		27.382212, 37.220108, 43.613327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155735, 37.709530, 44.262291>,  <27.331673, 37.918076, 43.596344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155735, 37.709530, 44.262291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389782, 37.445942, 44.073231>,  <27.530210, 37.287788, 43.959793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389782, 37.445942, 44.073231>,  <27.155735, 37.709530, 44.262291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389782, 37.445942, 44.073231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735592, 0.185929, 0.651409,
		-0.341378, -0.728829, 0.593522,
		0.585119, -0.658967, -0.472649,
		27.565317, 37.248253, 43.931435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663998, 37.298489, 44.720486>,  <27.155735, 37.709530, 44.262291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663998, 37.298489, 44.720486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823975, 37.275238, 44.354607>,  <27.919962, 37.261288, 44.135078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823975, 37.275238, 44.354607>,  <27.663998, 37.298489, 44.720486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823975, 37.275238, 44.354607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916494, 0.035309, 0.398488,
		0.009136, -0.997685, 0.067390,
		0.399945, -0.058122, -0.914694,
		27.943958, 37.257801, 44.080200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221863, 36.800037, 44.631916>,  <27.663998, 37.298489, 44.720486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221863, 36.800037, 44.631916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277124, 37.066216, 44.338497>,  <28.310282, 37.225922, 44.162445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277124, 37.066216, 44.338497>,  <28.221863, 36.800037, 44.631916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277124, 37.066216, 44.338497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963661, 0.080656, 0.254662,
		0.228629, -0.742073, -0.630124,
		0.138154, 0.665449, -0.733547,
		28.318571, 37.265850, 44.118435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631842, 36.522991, 44.144753>,  <28.221863, 36.800037, 44.631916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631842, 36.522991, 44.144753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680052, 36.919979, 44.153561>,  <28.708977, 37.158173, 44.158844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.680052, 36.919979, 44.153561>,  <28.631842, 36.522991, 44.144753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680052, 36.919979, 44.153561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980873, -0.122472, 0.151291,
		0.152848, 0.003363, -0.988244,
		0.120524, 0.992466, 0.022018,
		28.716209, 37.217720, 44.160168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327694, 36.449039, 44.070156>,  <28.631842, 36.522991, 44.144753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327694, 36.449039, 44.070156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457193, 36.598156, 43.722313>,  <29.534893, 36.687626, 43.513607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457193, 36.598156, 43.722313>,  <29.327694, 36.449039, 44.070156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457193, 36.598156, 43.722313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340590, 0.811571, 0.474712,
		0.882715, -0.449866, 0.135776,
		0.323749, 0.372791, -0.869606,
		29.554317, 36.709991, 43.461430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000736, 36.696861, 44.181419>,  <29.327694, 36.449039, 44.070156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000736, 36.696861, 44.181419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868788, 36.859699, 43.840725>,  <29.789619, 36.957401, 43.636307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868788, 36.859699, 43.840725>,  <30.000736, 36.696861, 44.181419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868788, 36.859699, 43.840725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445436, 0.862609, 0.239776,
		0.832329, -0.300300, -0.465883,
		-0.329870, 0.407094, -0.851739,
		29.769827, 36.981827, 43.585201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641600, 37.093967, 44.246967>,  <30.000736, 36.696861, 44.181419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641600, 37.093967, 44.246967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966492, 37.308689, 44.338284>,  <31.161427, 37.437523, 44.393074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966492, 37.308689, 44.338284>,  <30.641600, 37.093967, 44.246967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966492, 37.308689, 44.338284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016785, 0.369692, -0.929003,
		-0.583094, 0.758397, 0.291265,
		0.812231, 0.536807, 0.228295,
		31.210161, 37.469730, 44.406773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476885, 37.750031, 43.957779>,  <30.641600, 37.093967, 44.246967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476885, 37.750031, 43.957779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872242, 37.689934, 43.948776>,  <31.109457, 37.653877, 43.943375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872242, 37.689934, 43.948776>,  <30.476885, 37.750031, 43.957779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872242, 37.689934, 43.948776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064363, 0.548337, -0.833777,
		0.137608, 0.822651, 0.551642,
		0.988393, -0.150240, -0.022507,
		31.168760, 37.644863, 43.942024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731430, 38.360748, 43.837193>,  <30.476885, 37.750031, 43.957779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731430, 38.360748, 43.837193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002922, 38.093117, 43.716091>,  <31.165817, 37.932537, 43.643433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002922, 38.093117, 43.716091>,  <30.731430, 38.360748, 43.837193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002922, 38.093117, 43.716091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107967, 0.498679, -0.860036,
		0.726408, 0.551046, 0.410707,
		0.678730, -0.669080, -0.302749,
		31.206541, 37.892391, 43.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122171, 38.859039, 43.517124>,  <30.731430, 38.360748, 43.837193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122171, 38.859039, 43.517124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181004, 38.491051, 43.371788>,  <31.216303, 38.270256, 43.284588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181004, 38.491051, 43.371788>,  <31.122171, 38.859039, 43.517124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181004, 38.491051, 43.371788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070444, 0.356657, -0.931576,
		0.986613, 0.162610, -0.012350,
		0.147079, -0.919975, -0.363337,
		31.225128, 38.215057, 43.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607635, 38.884377, 42.916870>,  <31.122171, 38.859039, 43.517124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607635, 38.884377, 42.916870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402414, 38.543015, 42.880032>,  <31.279282, 38.338200, 42.857929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402414, 38.543015, 42.880032>,  <31.607635, 38.884377, 42.916870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402414, 38.543015, 42.880032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151028, 0.195366, -0.969032,
		0.844967, -0.483254, -0.229121,
		-0.513051, -0.853403, -0.092093,
		31.248499, 38.286995, 42.852406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755096, 38.792408, 42.361412>,  <31.607635, 38.884377, 42.916870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755096, 38.792408, 42.361412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452932, 38.531006, 42.380531>,  <31.271633, 38.374165, 42.392002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452932, 38.531006, 42.380531>,  <31.755096, 38.792408, 42.361412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452932, 38.531006, 42.380531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371138, 0.366613, -0.853142,
		0.540011, -0.662212, -0.519484,
		-0.755411, -0.653507, 0.047797,
		31.226309, 38.334953, 42.394871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744377, 38.315025, 41.702232>,  <31.755096, 38.792408, 42.361412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744377, 38.315025, 41.702232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380487, 38.349552, 41.864689>,  <31.162153, 38.370270, 41.962162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380487, 38.349552, 41.864689>,  <31.744377, 38.315025, 41.702232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380487, 38.349552, 41.864689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378714, 0.228511, -0.896860,
		-0.170221, -0.969707, -0.175193,
		-0.909726, 0.086316, 0.406139,
		31.107569, 38.375446, 41.986530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285536, 37.887920, 41.311848>,  <31.744377, 38.315025, 41.702232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285536, 37.887920, 41.311848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030813, 38.130581, 41.502197>,  <30.877979, 38.276176, 41.616405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030813, 38.130581, 41.502197>,  <31.285536, 37.887920, 41.311848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030813, 38.130581, 41.502197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562354, 0.056798, -0.824944,
		-0.527482, -0.792937, 0.304983,
		-0.636806, 0.606651, 0.475871,
		30.839771, 38.312576, 41.644958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601213, 37.609520, 41.058678>,  <31.285536, 37.887920, 41.311848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601213, 37.609520, 41.058678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561548, 37.987911, 41.182159>,  <30.537750, 38.214947, 41.256248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561548, 37.987911, 41.182159>,  <30.601213, 37.609520, 41.058678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561548, 37.987911, 41.182159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577256, 0.198013, -0.792191,
		-0.810520, -0.256759, 0.526433,
		-0.099162, 0.945973, 0.308709,
		30.531799, 38.271702, 41.274773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846701, 37.722443, 41.144688>,  <30.601213, 37.609520, 41.058678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846701, 37.722443, 41.144688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013922, 38.085060, 41.121330>,  <30.114254, 38.302631, 41.107315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013922, 38.085060, 41.121330>,  <29.846701, 37.722443, 41.144688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013922, 38.085060, 41.121330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457655, 0.154645, -0.875578,
		-0.784720, 0.392762, 0.479534,
		0.418051, 0.906545, -0.058396,
		30.139338, 38.357025, 41.103813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269289, 38.046318, 40.973827>,  <29.846701, 37.722443, 41.144688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269289, 38.046318, 40.973827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575663, 38.281349, 40.869446>,  <29.759487, 38.422367, 40.806816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575663, 38.281349, 40.869446>,  <29.269289, 38.046318, 40.973827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575663, 38.281349, 40.869446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400158, 0.118007, -0.908817,
		-0.503209, 0.800515, 0.325510,
		0.765934, 0.587580, -0.260950,
		29.805443, 38.457623, 40.791161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945013, 38.584980, 40.634876>,  <29.269289, 38.046318, 40.973827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945013, 38.584980, 40.634876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327827, 38.591190, 40.519054>,  <29.557516, 38.594917, 40.449562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327827, 38.591190, 40.519054>,  <28.945013, 38.584980, 40.634876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327827, 38.591190, 40.519054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287345, 0.184827, -0.939825,
		0.038922, 0.982648, 0.181349,
		0.957036, 0.015530, -0.289553,
		29.614939, 38.595848, 40.432190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032661, 39.169846, 40.211666>,  <28.945013, 38.584980, 40.634876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032661, 39.169846, 40.211666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331701, 38.924644, 40.109436>,  <29.511126, 38.777523, 40.048096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331701, 38.924644, 40.109436>,  <29.032661, 39.169846, 40.211666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331701, 38.924644, 40.109436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279079, 0.059242, -0.958439,
		0.602669, 0.787855, -0.126788,
		0.747600, -0.613005, -0.255577,
		29.555981, 38.740742, 40.032764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267523, 39.430523, 39.609543>,  <29.032661, 39.169846, 40.211666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267523, 39.430523, 39.609543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434437, 39.067017, 39.607658>,  <29.534586, 38.848915, 39.606525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434437, 39.067017, 39.607658>,  <29.267523, 39.430523, 39.609543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434437, 39.067017, 39.607658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024904, -0.006249, -0.999670,
		0.908433, 0.417266, -0.025239,
		0.417287, -0.908763, -0.004715,
		29.559624, 38.794388, 39.606243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842852, 39.413876, 39.050507>,  <29.267523, 39.430523, 39.609543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842852, 39.413876, 39.050507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721127, 39.036743, 39.104858>,  <29.648090, 38.810463, 39.137470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721127, 39.036743, 39.104858>,  <29.842852, 39.413876, 39.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721127, 39.036743, 39.104858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092252, -0.112804, -0.989325,
		0.948094, -0.313600, -0.052650,
		-0.304314, -0.942831, 0.135879,
		29.629833, 38.753895, 39.145622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234758, 39.156960, 38.616146>,  <29.842852, 39.413876, 39.050507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234758, 39.156960, 38.616146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954208, 38.879379, 38.681267>,  <29.785879, 38.712830, 38.720341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954208, 38.879379, 38.681267>,  <30.234758, 39.156960, 38.616146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954208, 38.879379, 38.681267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177315, -0.051362, -0.982813,
		0.690387, -0.718187, -0.087024,
		-0.701374, -0.693952, 0.162805,
		29.743795, 38.671192, 38.730106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353710, 38.532990, 38.132774>,  <30.234758, 39.156960, 38.616146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353710, 38.532990, 38.132774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971333, 38.528381, 38.250103>,  <29.741907, 38.525616, 38.320499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971333, 38.528381, 38.250103>,  <30.353710, 38.532990, 38.132774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971333, 38.528381, 38.250103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281908, -0.242599, -0.928264,
		0.081858, -0.970058, 0.228663,
		-0.955943, -0.011524, 0.293326,
		29.684549, 38.524925, 38.338100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951946, 37.894402, 37.790897>,  <30.353710, 38.532990, 38.132774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951946, 37.894402, 37.790897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670094, 38.162819, 37.883156>,  <29.500982, 38.323868, 37.938511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670094, 38.162819, 37.883156>,  <29.951946, 37.894402, 37.790897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670094, 38.162819, 37.883156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451089, -0.172704, -0.875609,
		-0.547736, -0.721025, 0.424392,
		-0.704630, 0.671041, 0.230651,
		29.458704, 38.364132, 37.952351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357965, 37.581554, 37.564754>,  <29.951946, 37.894402, 37.790897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357965, 37.581554, 37.564754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223116, 37.954739, 37.615234>,  <29.142206, 38.178650, 37.645523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223116, 37.954739, 37.615234>,  <29.357965, 37.581554, 37.564754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223116, 37.954739, 37.615234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618990, -0.118652, -0.776384,
		-0.709366, -0.339851, 0.617496,
		-0.337122, 0.932965, 0.126196,
		29.121979, 38.234627, 37.653091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704031, 37.531979, 37.487839>,  <29.357965, 37.581554, 37.564754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704031, 37.531979, 37.487839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743267, 37.927238, 37.440620>,  <28.766808, 38.164394, 37.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743267, 37.927238, 37.440620>,  <28.704031, 37.531979, 37.487839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743267, 37.927238, 37.440620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627568, -0.030644, -0.777958,
		-0.772358, 0.150393, 0.617127,
		0.098088, 0.988151, -0.118050,
		28.772694, 38.223682, 37.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994694, 37.941132, 37.560978>,  <28.704031, 37.531979, 37.487839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994694, 37.941132, 37.560978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240297, 38.161949, 37.335323>,  <28.387659, 38.294437, 37.199932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240297, 38.161949, 37.335323>,  <27.994694, 37.941132, 37.560978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240297, 38.161949, 37.335323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661262, -0.030462, -0.749536,
		-0.430959, 0.833261, 0.346339,
		0.614009, 0.552040, -0.564132,
		28.424500, 38.327560, 37.166084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571997, 38.437607, 37.355011>,  <27.994694, 37.941132, 37.560978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571997, 38.437607, 37.355011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886236, 38.441906, 37.107555>,  <28.074780, 38.444485, 36.959080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886236, 38.441906, 37.107555>,  <27.571997, 38.437607, 37.355011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886236, 38.441906, 37.107555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612009, 0.160527, -0.774387,
		0.090984, 0.986973, 0.132689,
		0.785600, 0.010750, -0.618642,
		28.121916, 38.445129, 36.921963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320509, 38.841324, 36.815517>,  <27.571997, 38.437607, 37.355011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320509, 38.841324, 36.815517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653667, 38.676910, 36.667286>,  <27.853563, 38.578262, 36.578346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653667, 38.676910, 36.667286>,  <27.320509, 38.841324, 36.815517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653667, 38.676910, 36.667286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356004, 0.114751, -0.927412,
		0.423724, 0.904368, -0.050754,
		0.832898, -0.411035, -0.370582,
		27.903538, 38.553600, 36.556110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481699, 39.248749, 36.288269>,  <27.320509, 38.841324, 36.815517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481699, 39.248749, 36.288269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664307, 38.900337, 36.215714>,  <27.773870, 38.691292, 36.172180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664307, 38.900337, 36.215714>,  <27.481699, 39.248749, 36.288269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664307, 38.900337, 36.215714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301446, 0.040389, -0.952627,
		0.837091, 0.489570, -0.244130,
		0.456518, -0.871028, -0.181388,
		27.801262, 38.639030, 36.161297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721245, 39.289452, 35.552265>,  <27.481699, 39.248749, 36.288269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721245, 39.289452, 35.552265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739847, 38.897514, 35.629974>,  <27.751009, 38.662354, 35.676601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739847, 38.897514, 35.629974>,  <27.721245, 39.289452, 35.552265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739847, 38.897514, 35.629974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372943, -0.197451, -0.906601,
		0.926688, -0.030290, -0.374609,
		0.046506, -0.979844, 0.194272,
		27.753799, 38.603561, 35.688255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219448, 38.903179, 35.155724>,  <27.721245, 39.289452, 35.552265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219448, 38.903179, 35.155724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895452, 38.692890, 35.259670>,  <27.701056, 38.566719, 35.322041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895452, 38.692890, 35.259670>,  <28.219448, 38.903179, 35.155724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895452, 38.692890, 35.259670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269216, -0.060341, -0.961188,
		0.520997, -0.848515, -0.092656,
		-0.809991, -0.525720, 0.259871,
		27.652454, 38.535175, 35.337631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682775, 38.867161, 34.557495>,  <28.219448, 38.903179, 35.155724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682775, 38.867161, 34.557495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060139, 38.991924, 34.512428>,  <29.286556, 39.066780, 34.485386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060139, 38.991924, 34.512428>,  <28.682775, 38.867161, 34.557495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060139, 38.991924, 34.512428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331607, -0.891298, 0.309232,
		-0.003973, -0.329095, -0.944289,
		0.943409, 0.311905, -0.112671,
		29.343161, 39.085495, 34.478626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017694, 38.381443, 34.937279>,  <28.682775, 38.867161, 34.557495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017694, 38.381443, 34.937279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290592, 38.546158, 34.695625>,  <29.454330, 38.644985, 34.550632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290592, 38.546158, 34.695625>,  <29.017694, 38.381443, 34.937279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290592, 38.546158, 34.695625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696104, -0.618518, 0.364521,
		-0.223562, -0.669231, -0.708626,
		0.682246, 0.411784, -0.604131,
		29.495266, 38.669693, 34.514385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302340, 37.786350, 34.559258>,  <29.017694, 38.381443, 34.937279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302340, 37.786350, 34.559258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520576, 38.112637, 34.636127>,  <29.651518, 38.308411, 34.682251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520576, 38.112637, 34.636127>,  <29.302340, 37.786350, 34.559258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520576, 38.112637, 34.636127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645590, -0.555310, 0.524255,
		0.534363, -0.161962, -0.829593,
		0.545591, 0.815720, 0.192176,
		29.684254, 38.357353, 34.693779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995131, 37.708305, 34.314213>,  <29.302340, 37.786350, 34.559258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995131, 37.708305, 34.314213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983246, 37.939468, 34.640438>,  <29.976114, 38.078167, 34.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983246, 37.939468, 34.640438>,  <29.995131, 37.708305, 34.314213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983246, 37.939468, 34.640438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619937, -0.629382, 0.468569,
		0.784089, 0.519517, -0.339568,
		-0.029712, 0.577911, 0.815559,
		29.974333, 38.112843, 34.885105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732618, 37.876190, 34.490860>,  <29.995131, 37.708305, 34.314213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732618, 37.876190, 34.490860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464041, 37.884804, 34.787155>,  <30.302895, 37.889973, 34.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464041, 37.884804, 34.787155>,  <30.732618, 37.876190, 34.490860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464041, 37.884804, 34.787155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445996, -0.786541, 0.427132,
		0.591820, 0.617163, 0.518516,
		-0.671444, 0.021529, 0.740742,
		30.262608, 37.891262, 35.009377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829479, 38.407990, 34.899845>,  <30.732618, 37.876190, 34.490860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829479, 38.407990, 34.899845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685711, 38.040344, 34.964409>,  <30.599449, 37.819759, 35.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685711, 38.040344, 34.964409>,  <30.829479, 38.407990, 34.899845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685711, 38.040344, 34.964409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711643, -0.158079, 0.684525,
		-0.603639, 0.360898, 0.710895,
		-0.359422, -0.919110, 0.161408,
		30.577885, 37.764610, 35.012833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663565, 38.405426, 35.681248>,  <30.829479, 38.407990, 34.899845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663565, 38.405426, 35.681248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763342, 38.051624, 35.523552>,  <30.823208, 37.839344, 35.428936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763342, 38.051624, 35.523552>,  <30.663565, 38.405426, 35.681248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763342, 38.051624, 35.523552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481099, -0.240124, 0.843140,
		-0.840430, -0.399984, 0.365638,
		0.249444, -0.884508, -0.394239,
		30.838175, 37.786274, 35.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465546, 37.807903, 36.127056>,  <30.663565, 38.405426, 35.681248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465546, 37.807903, 36.127056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765717, 37.658302, 35.909073>,  <30.945820, 37.568542, 35.778282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765717, 37.658302, 35.909073>,  <30.465546, 37.807903, 36.127056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765717, 37.658302, 35.909073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536602, -0.136632, 0.832700,
		-0.385894, -0.917306, 0.098161,
		0.750429, -0.374008, -0.544954,
		30.990845, 37.546101, 35.745586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711050, 37.074123, 36.340858>,  <30.465546, 37.807903, 36.127056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711050, 37.074123, 36.340858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053684, 37.153847, 36.150475>,  <31.259264, 37.201679, 36.036243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053684, 37.153847, 36.150475>,  <30.711050, 37.074123, 36.340858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053684, 37.153847, 36.150475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509166, -0.176747, 0.842324,
		0.083756, -0.963866, -0.252879,
		0.856583, 0.199307, -0.475964,
		31.310659, 37.213638, 36.007687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141439, 36.479275, 36.327957>,  <30.711050, 37.074123, 36.340858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141439, 36.479275, 36.327957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405575, 36.771580, 36.258747>,  <31.564056, 36.946964, 36.217220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405575, 36.771580, 36.258747>,  <31.141439, 36.479275, 36.327957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405575, 36.771580, 36.258747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603865, -0.379732, 0.700822,
		0.446430, -0.567265, -0.692034,
		0.660339, 0.730763, -0.173027,
		31.603676, 36.990810, 36.206841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758450, 36.106190, 36.364269>,  <31.141439, 36.479275, 36.327957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758450, 36.106190, 36.364269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864674, 36.491825, 36.363312>,  <31.928408, 36.723206, 36.362736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864674, 36.491825, 36.363312>,  <31.758450, 36.106190, 36.364269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864674, 36.491825, 36.363312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741699, -0.202712, 0.639368,
		0.615923, -0.171570, -0.768897,
		0.265561, 0.964091, -0.002398,
		31.944342, 36.781052, 36.362591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448944, 36.125095, 36.125881>,  <31.758450, 36.106190, 36.364269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448944, 36.125095, 36.125881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374668, 36.459068, 36.333115>,  <32.330101, 36.659451, 36.457455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374668, 36.459068, 36.333115>,  <32.448944, 36.125095, 36.125881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374668, 36.459068, 36.333115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808540, -0.169786, 0.563415,
		0.558375, 0.523512, -0.643547,
		-0.185689, 0.834930, 0.518084,
		32.318962, 36.709549, 36.488541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151810, 36.357578, 36.188454>,  <32.448944, 36.125095, 36.125881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151810, 36.357578, 36.188454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917500, 36.519588, 36.469257>,  <32.776913, 36.616795, 36.637741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917500, 36.519588, 36.469257>,  <33.151810, 36.357578, 36.188454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917500, 36.519588, 36.469257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688217, -0.208890, 0.694782,
		0.428047, 0.890124, -0.156382,
		-0.585775, 0.405024, 0.702013,
		32.741768, 36.641094, 36.679863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644226, 36.747765, 36.533836>,  <33.151810, 36.357578, 36.188454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644226, 36.747765, 36.533836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325050, 36.709057, 36.771805>,  <33.133545, 36.685833, 36.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325050, 36.709057, 36.771805>,  <33.644226, 36.747765, 36.533836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325050, 36.709057, 36.771805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602203, -0.169555, 0.780130,
		0.025380, 0.980758, 0.193569,
		-0.797939, -0.096768, 0.594919,
		33.085670, 36.680027, 36.950279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943066, 37.009018, 37.209286>,  <33.644226, 36.747765, 36.533836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943066, 37.009018, 37.209286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610611, 36.802727, 37.292458>,  <33.411140, 36.678951, 37.342361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610611, 36.802727, 37.292458>,  <33.943066, 37.009018, 37.209286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610611, 36.802727, 37.292458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542044, -0.667935, 0.509951,
		-0.124112, 0.536547, 0.834693,
		-0.831134, -0.515732, 0.207934,
		33.361271, 36.648006, 37.354839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829288, 37.015640, 37.896820>,  <33.943066, 37.009018, 37.209286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829288, 37.015640, 37.896820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643433, 36.680046, 37.783531>,  <33.531918, 36.478691, 37.715557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643433, 36.680046, 37.783531>,  <33.829288, 37.015640, 37.896820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643433, 36.680046, 37.783531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585133, -0.530969, 0.612936,
		-0.664625, 0.119074, 0.737628,
		-0.464643, -0.838983, -0.283221,
		33.504040, 36.428352, 37.698566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956585, 36.546162, 38.440411>,  <33.829288, 37.015640, 37.896820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956585, 36.546162, 38.440411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802799, 36.297340, 38.167580>,  <33.710526, 36.148048, 38.003880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802799, 36.297340, 38.167580>,  <33.956585, 36.546162, 38.440411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802799, 36.297340, 38.167580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423216, -0.775421, 0.468627,
		-0.820410, -0.108495, 0.561388,
		-0.384468, -0.622055, -0.682080,
		33.687458, 36.110725, 37.962955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503967, 36.075680, 38.838379>,  <33.956585, 36.546162, 38.440411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503967, 36.075680, 38.838379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609966, 35.903790, 38.493099>,  <33.673565, 35.800655, 38.285931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609966, 35.903790, 38.493099>,  <33.503967, 36.075680, 38.838379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609966, 35.903790, 38.493099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250246, -0.833882, 0.491953,
		-0.931211, -0.346379, -0.113440,
		0.264997, -0.429724, -0.863200,
		33.689465, 35.774872, 38.234138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189430, 35.399853, 38.724541>,  <33.503967, 36.075680, 38.838379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189430, 35.399853, 38.724541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529419, 35.391506, 38.513977>,  <33.733414, 35.386497, 38.387638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529419, 35.391506, 38.513977>,  <33.189430, 35.399853, 38.724541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529419, 35.391506, 38.513977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224027, -0.890050, 0.397016,
		-0.476816, -0.455384, -0.751845,
		0.849975, -0.020870, -0.526409,
		33.784412, 35.385246, 38.356052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307793, 34.670708, 38.668236>,  <33.189430, 35.399853, 38.724541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307793, 34.670708, 38.668236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667259, 34.817448, 38.572048>,  <33.882938, 34.905491, 38.514336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667259, 34.817448, 38.572048>,  <33.307793, 34.670708, 38.668236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667259, 34.817448, 38.572048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438598, -0.743847, 0.504305,
		0.006129, -0.558670, -0.829368,
		0.898663, 0.366850, -0.240472,
		33.936859, 34.927502, 38.499905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608780, 34.208282, 38.343567>,  <33.307793, 34.670708, 38.668236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608780, 34.208282, 38.343567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910587, 34.419739, 38.499130>,  <34.091671, 34.546612, 38.592468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910587, 34.419739, 38.499130>,  <33.608780, 34.208282, 38.343567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910587, 34.419739, 38.499130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371259, -0.832470, 0.411291,
		0.541175, -0.165942, -0.824374,
		0.754517, 0.528637, 0.388905,
		34.136944, 34.578331, 38.615803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106606, 33.813068, 38.250702>,  <33.608780, 34.208282, 38.343567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106606, 33.813068, 38.250702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257679, 34.062897, 38.524128>,  <34.348324, 34.212795, 38.688183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257679, 34.062897, 38.524128>,  <34.106606, 33.813068, 38.250702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257679, 34.062897, 38.524128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547275, -0.746069, 0.379303,
		0.746888, 0.230839, -0.623595,
		0.377688, 0.624575, 0.683563,
		34.370987, 34.250271, 38.729198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857269, 33.713005, 38.304985>,  <34.106606, 33.813068, 38.250702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857269, 33.713005, 38.304985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756149, 33.899246, 38.644234>,  <34.695477, 34.010990, 38.847782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756149, 33.899246, 38.644234>,  <34.857269, 33.713005, 38.304985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756149, 33.899246, 38.644234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535922, -0.662443, 0.523409,
		0.805530, 0.586845, -0.082058,
		-0.252801, 0.465598, 0.848121,
		34.680309, 34.038925, 38.898670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466015, 33.650299, 38.760082>,  <34.857269, 33.713005, 38.304985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466015, 33.650299, 38.760082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157856, 33.745255, 38.996769>,  <34.972961, 33.802227, 39.138783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157856, 33.745255, 38.996769>,  <35.466015, 33.650299, 38.760082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157856, 33.745255, 38.996769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406367, -0.532314, 0.742635,
		0.491274, 0.812581, 0.313627,
		-0.770400, 0.237390, 0.591718,
		34.926735, 33.816471, 39.174286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724392, 33.639179, 39.440552>,  <35.466015, 33.650299, 38.760082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724392, 33.639179, 39.440552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333569, 33.658695, 39.523476>,  <35.099075, 33.670406, 39.573231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333569, 33.658695, 39.523476>,  <35.724392, 33.639179, 39.440552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333569, 33.658695, 39.523476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166981, -0.428718, 0.887873,
		0.132197, 0.902120, 0.410736,
		-0.977058, 0.048789, 0.207312,
		35.040451, 33.673332, 39.585670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645172, 33.916843, 40.146374>,  <35.724392, 33.639179, 39.440552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645172, 33.916843, 40.146374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314102, 33.708614, 40.062515>,  <35.115459, 33.583675, 40.012199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314102, 33.708614, 40.062515>,  <35.645172, 33.916843, 40.146374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314102, 33.708614, 40.062515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083101, -0.483132, 0.871595,
		-0.555016, 0.703979, 0.443138,
		-0.827679, -0.520574, -0.209645,
		35.065800, 33.552441, 39.999622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135956, 33.894577, 40.790173>,  <35.645172, 33.916843, 40.146374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135956, 33.894577, 40.790173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071415, 33.577984, 40.554367>,  <35.032692, 33.388027, 40.412884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071415, 33.577984, 40.554367>,  <35.135956, 33.894577, 40.790173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071415, 33.577984, 40.554367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096042, -0.581912, 0.807561,
		-0.982213, 0.186916, 0.017875,
		-0.161348, -0.791480, -0.589513,
		35.023010, 33.340538, 40.377514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518471, 33.749134, 41.059155>,  <35.135956, 33.894577, 40.790173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518471, 33.749134, 41.059155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693161, 33.440544, 40.874069>,  <34.797974, 33.255390, 40.763020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693161, 33.440544, 40.874069>,  <34.518471, 33.749134, 41.059155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693161, 33.440544, 40.874069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187168, -0.581022, 0.792074,
		-0.879910, -0.259312, -0.398141,
		0.436723, -0.771473, -0.462712,
		34.824177, 33.209103, 40.735256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998024, 33.269497, 41.134590>,  <34.518471, 33.749134, 41.059155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998024, 33.269497, 41.134590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360394, 33.110043, 41.077477>,  <34.577816, 33.014370, 41.043209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360394, 33.110043, 41.077477>,  <33.998024, 33.269497, 41.134590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360394, 33.110043, 41.077477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164293, -0.641702, 0.749150,
		-0.390264, -0.655216, -0.646828,
		0.905926, -0.398635, -0.142786,
		34.632172, 32.990452, 41.034641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845623, 32.582630, 41.139969>,  <33.998024, 33.269497, 41.134590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845623, 32.582630, 41.139969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235989, 32.606808, 41.223812>,  <34.470207, 32.621315, 41.274117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235989, 32.606808, 41.223812>,  <33.845623, 32.582630, 41.139969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235989, 32.606808, 41.223812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143288, -0.546894, 0.824849,
		0.164492, -0.835017, -0.525061,
		0.975915, 0.060446, 0.209608,
		34.528763, 32.624943, 41.286694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920010, 32.028915, 41.519787>,  <33.845623, 32.582630, 41.139969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920010, 32.028915, 41.519787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281136, 32.194260, 41.567219>,  <34.497810, 32.293465, 41.595676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281136, 32.194260, 41.567219>,  <33.920010, 32.028915, 41.519787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281136, 32.194260, 41.567219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085442, -0.442670, 0.892605,
		0.421456, -0.795725, -0.434967,
		0.902815, 0.413358, 0.118577,
		34.551979, 32.318268, 41.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323307, 31.493900, 41.830872>,  <33.920010, 32.028915, 41.519787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323307, 31.493900, 41.830872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526829, 31.830397, 41.904007>,  <34.648941, 32.032295, 41.947887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526829, 31.830397, 41.904007>,  <34.323307, 31.493900, 41.830872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526829, 31.830397, 41.904007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277356, -0.361243, 0.890268,
		0.814980, -0.402261, -0.417125,
		0.508804, 0.841243, 0.182837,
		34.679470, 32.082771, 41.958858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090038, 31.360044, 41.990196>,  <34.323307, 31.493900, 41.830872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090038, 31.360044, 41.990196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999950, 31.723240, 42.131523>,  <34.945896, 31.941156, 42.216320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999950, 31.723240, 42.131523>,  <35.090038, 31.360044, 41.990196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999950, 31.723240, 42.131523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377328, -0.253053, 0.890835,
		0.898276, 0.333951, -0.285617,
		-0.225219, 0.907987, 0.353321,
		34.932384, 31.995636, 42.237518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646503, 31.631266, 42.321407>,  <35.090038, 31.360044, 41.990196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646503, 31.631266, 42.321407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343792, 31.827339, 42.494385>,  <35.162167, 31.944984, 42.598171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343792, 31.827339, 42.494385>,  <35.646503, 31.631266, 42.321407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343792, 31.827339, 42.494385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337591, -0.273415, 0.900709,
		0.559751, 0.827625, 0.041432,
		-0.756777, 0.490185, 0.432443,
		35.116760, 31.974396, 42.624119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961536, 31.889862, 42.961529>,  <35.646503, 31.631266, 42.321407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961536, 31.889862, 42.961529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569321, 31.940477, 43.021572>,  <35.333992, 31.970846, 43.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569321, 31.940477, 43.021572>,  <35.961536, 31.889862, 42.961529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569321, 31.940477, 43.021572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121817, -0.207477, 0.970625,
		0.153967, 0.970021, 0.188024,
		-0.980538, 0.126539, 0.150110,
		35.275158, 31.978439, 43.066605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824551, 32.304161, 43.640678>,  <35.961536, 31.889862, 42.961529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824551, 32.304161, 43.640678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510773, 32.066929, 43.568127>,  <35.322506, 31.924589, 43.524593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510773, 32.066929, 43.568127>,  <35.824551, 32.304161, 43.640678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510773, 32.066929, 43.568127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079611, -0.386330, 0.918918,
		-0.615068, 0.706400, 0.350270,
		-0.784444, -0.593083, -0.181382,
		35.275440, 31.889004, 43.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595242, 32.415176, 44.278778>,  <35.824551, 32.304161, 43.640678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595242, 32.415176, 44.278778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392056, 32.117748, 44.104847>,  <35.270142, 31.939291, 44.000488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392056, 32.117748, 44.104847>,  <35.595242, 32.415176, 44.278778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392056, 32.117748, 44.104847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004340, -0.507007, 0.861931,
		-0.861364, 0.435947, 0.260771,
		-0.507969, -0.743568, -0.434826,
		35.239666, 31.894678, 43.974400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989502, 32.248425, 44.693501>,  <35.595242, 32.415176, 44.278778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989502, 32.248425, 44.693501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064163, 31.903736, 44.504780>,  <35.108959, 31.696924, 44.391548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064163, 31.903736, 44.504780>,  <34.989502, 32.248425, 44.693501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064163, 31.903736, 44.504780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128602, -0.454682, 0.881320,
		-0.973972, -0.225180, 0.025949,
		0.186657, -0.861718, -0.471806,
		35.120159, 31.645220, 44.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771572, 31.793320, 45.126968>,  <34.989502, 32.248425, 44.693501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771572, 31.793320, 45.126968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974976, 31.555086, 44.878227>,  <35.097015, 31.412146, 44.728981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974976, 31.555086, 44.878227>,  <34.771572, 31.793320, 45.126968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974976, 31.555086, 44.878227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283943, -0.565812, 0.774102,
		-0.812895, -0.570205, -0.118605,
		0.508505, -0.595587, -0.621851,
		35.127525, 31.376410, 44.691673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513573, 31.115635, 45.326962>,  <34.771572, 31.793320, 45.126968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513573, 31.115635, 45.326962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872604, 31.059402, 45.159828>,  <35.088024, 31.025663, 45.059547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872604, 31.059402, 45.159828>,  <34.513573, 31.115635, 45.326962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872604, 31.059402, 45.159828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220872, -0.676845, 0.702208,
		-0.381522, -0.722577, -0.576475,
		0.897583, -0.140581, -0.417829,
		35.141880, 31.017227, 45.034481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601192, 30.426762, 45.222450>,  <34.513573, 31.115635, 45.326962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601192, 30.426762, 45.222450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970318, 30.574657, 45.265728>,  <35.191792, 30.663395, 45.291695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970318, 30.574657, 45.265728>,  <34.601192, 30.426762, 45.222450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970318, 30.574657, 45.265728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277194, -0.832300, 0.480043,
		0.267542, -0.412999, -0.870547,
		0.922814, 0.369742, 0.108194,
		35.247162, 30.685579, 45.298187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969143, 29.831642, 45.104580>,  <34.601192, 30.426762, 45.222450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969143, 29.831642, 45.104580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234425, 30.066586, 45.290123>,  <35.393593, 30.207552, 45.401451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234425, 30.066586, 45.290123>,  <34.969143, 29.831642, 45.104580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234425, 30.066586, 45.290123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408122, -0.803332, 0.433698,
		0.627370, -0.098320, -0.772489,
		0.663207, 0.587359, 0.463860,
		35.433388, 30.242794, 45.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665096, 29.497416, 45.015717>,  <34.969143, 29.831642, 45.104580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665096, 29.497416, 45.015717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704597, 29.734383, 45.335541>,  <35.728298, 29.876562, 45.527435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704597, 29.734383, 45.335541>,  <35.665096, 29.497416, 45.015717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704597, 29.734383, 45.335541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363998, -0.769305, 0.525048,
		0.926150, 0.239189, -0.291606,
		0.098749, 0.592418, 0.799556,
		35.734222, 29.912107, 45.575409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215809, 29.124739, 45.362709>,  <35.665096, 29.497416, 45.015717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215809, 29.124739, 45.362709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078732, 29.392328, 45.626537>,  <35.996487, 29.552881, 45.784836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078732, 29.392328, 45.626537>,  <36.215809, 29.124739, 45.362709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078732, 29.392328, 45.626537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286202, -0.594370, 0.751540,
		0.894791, 0.446318, 0.012225,
		-0.342692, 0.668972, 0.659574,
		35.975925, 29.593019, 45.824409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848217, 29.285803, 45.877968>,  <36.215809, 29.124739, 45.362709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848217, 29.285803, 45.877968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503620, 29.374014, 46.060921>,  <36.296864, 29.426941, 46.170692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503620, 29.374014, 46.060921>,  <36.848217, 29.285803, 45.877968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503620, 29.374014, 46.060921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233540, -0.627754, 0.742552,
		0.450877, 0.746520, 0.489303,
		-0.861492, 0.220528, 0.457383,
		36.245174, 29.440172, 46.198135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987476, 29.272528, 46.691154>,  <36.848217, 29.285803, 45.877968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987476, 29.272528, 46.691154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588017, 29.261847, 46.673317>,  <36.348339, 29.255438, 46.662613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588017, 29.261847, 46.673317>,  <36.987476, 29.272528, 46.691154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588017, 29.261847, 46.673317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021460, -0.569660, 0.821600,
		-0.047344, 0.821447, 0.568317,
		-0.998648, -0.026701, -0.044598,
		36.288422, 29.253836, 46.659939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772907, 29.372494, 47.423271>,  <36.987476, 29.272528, 46.691154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772907, 29.372494, 47.423271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481140, 29.185595, 47.223419>,  <36.306080, 29.073454, 47.103508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481140, 29.185595, 47.223419>,  <36.772907, 29.372494, 47.423271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481140, 29.185595, 47.223419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087506, -0.660645, 0.745581,
		-0.678451, 0.587559, 0.440998,
		-0.729416, -0.467250, -0.499630,
		36.262314, 29.045420, 47.073532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239204, 29.278210, 47.841434>,  <36.772907, 29.372494, 47.423271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239204, 29.278210, 47.841434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177185, 28.986858, 47.574474>,  <36.139973, 28.812048, 47.414299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177185, 28.986858, 47.574474>,  <36.239204, 29.278210, 47.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177185, 28.986858, 47.574474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105287, -0.659541, 0.744258,
		-0.982280, 0.185665, 0.025571,
		-0.155048, -0.728378, -0.667402,
		36.130672, 28.768345, 47.374252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505108, 28.989237, 47.969524>,  <36.239204, 29.278210, 47.841434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505108, 28.989237, 47.969524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742641, 28.718021, 47.796261>,  <35.885162, 28.555292, 47.692303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742641, 28.718021, 47.796261>,  <35.505108, 28.989237, 47.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742641, 28.718021, 47.796261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184537, -0.638785, 0.746927,
		-0.783142, -0.363614, -0.504454,
		0.593830, -0.678040, -0.433159,
		35.920792, 28.514610, 47.666313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125687, 28.381620, 47.970909>,  <35.505108, 28.989237, 47.969524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125687, 28.381620, 47.970909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517529, 28.316879, 48.018528>,  <35.752636, 28.278034, 48.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517529, 28.316879, 48.018528>,  <35.125687, 28.381620, 47.970909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517529, 28.316879, 48.018528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174210, -0.389053, 0.904593,
		-0.100098, -0.906885, -0.409316,
		0.979607, -0.161855, 0.119045,
		35.811409, 28.268322, 48.054241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256958, 27.691099, 48.169575>,  <35.125687, 28.381620, 47.970909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256958, 27.691099, 48.169575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580029, 27.886833, 48.301151>,  <35.773872, 28.004272, 48.380096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580029, 27.886833, 48.301151>,  <35.256958, 27.691099, 48.169575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580029, 27.886833, 48.301151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064137, -0.481670, 0.874003,
		0.586122, -0.727012, -0.357651,
		0.807680, 0.489334, 0.328946,
		35.822334, 28.033634, 48.399834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834801, 27.274939, 48.426647>,  <35.256958, 27.691099, 48.169575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834801, 27.274939, 48.426647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872578, 27.616510, 48.631348>,  <35.895245, 27.821453, 48.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872578, 27.616510, 48.631348>,  <35.834801, 27.274939, 48.426647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872578, 27.616510, 48.631348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158523, -0.494587, 0.854549,
		0.982828, -0.161831, 0.088656,
		0.094445, 0.853929, 0.511748,
		35.900909, 27.872688, 48.784870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304401, 27.064280, 48.903378>,  <35.834801, 27.274939, 48.426647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304401, 27.064280, 48.903378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144405, 27.075092, 49.269825>,  <35.048409, 27.081581, 49.489693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144405, 27.075092, 49.269825>,  <35.304401, 27.064280, 48.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144405, 27.075092, 49.269825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196884, 0.973695, -0.114693,
		-0.895124, -0.226246, -0.384144,
		-0.399988, 0.027033, 0.916122,
		35.024410, 27.083202, 49.544662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628658, 27.235945, 48.841793>,  <35.304401, 27.064280, 48.903378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628658, 27.235945, 48.841793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769295, 27.362074, 49.194374>,  <34.853676, 27.437752, 49.405922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769295, 27.362074, 49.194374>,  <34.628658, 27.235945, 48.841793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769295, 27.362074, 49.194374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162806, 0.947814, -0.274123,
		-0.921887, -0.047126, 0.384582,
		0.351594, 0.315323, 0.881450,
		34.874771, 27.456671, 49.458809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203499, 27.195131, 48.206066>,  <34.628658, 27.235945, 48.841793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203499, 27.195131, 48.206066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020641, 26.947088, 47.951042>,  <33.910927, 26.798262, 47.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020641, 26.947088, 47.951042>,  <34.203499, 27.195131, 48.206066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020641, 26.947088, 47.951042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440973, 0.464501, -0.767973,
		0.772374, -0.632222, 0.061107,
		-0.457145, -0.620109, -0.637561,
		33.883499, 26.761055, 47.759773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680683, 26.942135, 47.626949>,  <34.203499, 27.195131, 48.206066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680683, 26.942135, 47.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310123, 26.908348, 47.480175>,  <34.087788, 26.888077, 47.392109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310123, 26.908348, 47.480175>,  <34.680683, 26.942135, 47.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310123, 26.908348, 47.480175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306022, 0.398890, -0.864429,
		0.219380, -0.913100, -0.343686,
		-0.926403, -0.084464, -0.366937,
		34.032204, 26.883009, 47.370094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649975, 26.421114, 47.027473>,  <34.680683, 26.942135, 47.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649975, 26.421114, 47.027473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359848, 26.693480, 46.986923>,  <34.185772, 26.856899, 46.962593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359848, 26.693480, 46.986923>,  <34.649975, 26.421114, 47.027473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359848, 26.693480, 46.986923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272625, 0.148885, -0.950531,
		-0.632134, -0.717072, -0.293623,
		-0.725315, 0.680912, -0.101376,
		34.142254, 26.897753, 46.956509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149715, 26.327351, 46.386353>,  <34.649975, 26.421114, 47.027473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149715, 26.327351, 46.386353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201324, 26.701632, 46.517693>,  <34.232288, 26.926201, 46.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201324, 26.701632, 46.517693>,  <34.149715, 26.327351, 46.386353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201324, 26.701632, 46.517693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270247, 0.285404, -0.919517,
		-0.954107, 0.207371, -0.216048,
		0.129020, 0.935704, 0.328348,
		34.240032, 26.982342, 46.616196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758995, 26.757496, 45.909214>,  <34.149715, 26.327351, 46.386353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758995, 26.757496, 45.909214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076241, 26.936811, 46.074142>,  <34.266586, 27.044401, 46.173100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076241, 26.936811, 46.074142>,  <33.758995, 26.757496, 45.909214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076241, 26.936811, 46.074142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328949, 0.254470, -0.909416,
		-0.512605, 0.856902, 0.054359,
		0.793113, 0.448290, 0.412319,
		34.314175, 27.071299, 46.197838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775589, 27.389412, 45.733681>,  <33.758995, 26.757496, 45.909214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775589, 27.389412, 45.733681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163574, 27.309151, 45.788689>,  <34.396366, 27.260994, 45.821693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163574, 27.309151, 45.788689>,  <33.775589, 27.389412, 45.733681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163574, 27.309151, 45.788689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209821, 0.404061, -0.890342,
		0.123085, 0.892453, 0.434026,
		0.969962, -0.200655, 0.137521,
		34.454563, 27.248955, 45.829945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090481, 27.938768, 45.457569>,  <33.775589, 27.389412, 45.733681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090481, 27.938768, 45.457569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407734, 27.698124, 45.495522>,  <34.598087, 27.553738, 45.518295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407734, 27.698124, 45.495522>,  <34.090481, 27.938768, 45.457569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407734, 27.698124, 45.495522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457393, 0.485498, -0.745039,
		0.402157, 0.634316, 0.660237,
		0.793134, -0.601610, 0.094885,
		34.645676, 27.517641, 45.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618267, 28.349524, 45.347305>,  <34.090481, 27.938768, 45.457569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618267, 28.349524, 45.347305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796730, 27.992872, 45.316467>,  <34.903809, 27.778881, 45.297966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796730, 27.992872, 45.316467>,  <34.618267, 28.349524, 45.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796730, 27.992872, 45.316467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623999, 0.371671, -0.687377,
		0.641539, 0.258569, 0.722198,
		0.446154, -0.891629, -0.077095,
		34.930576, 27.725384, 45.293339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375095, 28.493364, 45.259075>,  <34.618267, 28.349524, 45.347305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375095, 28.493364, 45.259075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311100, 28.127918, 45.109562>,  <35.272705, 27.908651, 45.019852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311100, 28.127918, 45.109562>,  <35.375095, 28.493364, 45.259075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311100, 28.127918, 45.109562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557317, 0.228938, -0.798114,
		0.814741, -0.336004, 0.472545,
		-0.159985, -0.913613, -0.373786,
		35.263103, 27.853834, 44.997425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071495, 28.122765, 45.130074>,  <35.375095, 28.493364, 45.259075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071495, 28.122765, 45.130074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822369, 27.914885, 44.896145>,  <35.672894, 27.790157, 44.755787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822369, 27.914885, 44.896145>,  <36.071495, 28.122765, 45.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822369, 27.914885, 44.896145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636318, 0.098428, -0.765121,
		0.455196, -0.848660, 0.269392,
		-0.622812, -0.519699, -0.584822,
		35.635525, 27.758974, 44.720699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468781, 27.831066, 44.641155>,  <36.071495, 28.122765, 45.130074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468781, 27.831066, 44.641155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126656, 27.808100, 44.435188>,  <35.921379, 27.794319, 44.311607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126656, 27.808100, 44.435188>,  <36.468781, 27.831066, 44.641155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126656, 27.808100, 44.435188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508117, 0.101241, -0.855317,
		0.101241, -0.993203, -0.057418,
		0.855317, 0.057418, 0.514914,
		35.870060, 27.790874, 44.280716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660202, 27.479944, 44.110413>,  <36.468781, 27.831066, 44.641155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660202, 27.479944, 44.110413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319683, 27.650551, 43.988186>,  <36.115372, 27.752914, 43.914852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319683, 27.650551, 43.988186>,  <36.660202, 27.479944, 44.110413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319683, 27.650551, 43.988186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378576, 0.096105, -0.920567,
		-0.363272, -0.899359, -0.243283,
		-0.851302, 0.426517, -0.305564,
		36.064293, 27.778505, 43.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616875, 27.297003, 43.481922>,  <36.660202, 27.479944, 44.110413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616875, 27.297003, 43.481922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372375, 27.613428, 43.491673>,  <36.225677, 27.803284, 43.497520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372375, 27.613428, 43.491673>,  <36.616875, 27.297003, 43.481922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372375, 27.613428, 43.491673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255282, 0.226218, -0.940030,
		-0.749137, -0.568371, -0.340219,
		-0.611249, 0.791063, 0.024374,
		36.188999, 27.850746, 43.498985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275379, 27.378178, 42.790081>,  <36.616875, 27.297003, 43.481922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275379, 27.378178, 42.790081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248207, 27.737879, 42.962933>,  <36.231903, 27.953699, 43.066643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248207, 27.737879, 42.962933>,  <36.275379, 27.378178, 42.790081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248207, 27.737879, 42.962933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113913, 0.437283, -0.892080,
		-0.991166, -0.011371, -0.132140,
		-0.067927, 0.899252, 0.432125,
		36.227829, 28.007654, 43.092571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792473, 27.677233, 42.326431>,  <36.275379, 27.378178, 42.790081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792473, 27.677233, 42.326431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960369, 27.976170, 42.532459>,  <36.061108, 28.155531, 42.656078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960369, 27.976170, 42.532459>,  <35.792473, 27.677233, 42.326431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960369, 27.976170, 42.532459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248058, 0.451424, -0.857137,
		-0.873089, 0.487544, 0.004098,
		0.419742, 0.747340, 0.515073,
		36.086292, 28.200371, 42.686981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529411, 28.305683, 42.035259>,  <35.792473, 27.677233, 42.326431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529411, 28.305683, 42.035259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876057, 28.401756, 42.210205>,  <36.084045, 28.459400, 42.315174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876057, 28.401756, 42.210205>,  <35.529411, 28.305683, 42.035259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876057, 28.401756, 42.210205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275218, 0.501056, -0.820486,
		-0.416214, 0.831417, 0.368120,
		0.866615, 0.240184, 0.437367,
		36.136040, 28.473812, 42.341415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690971, 28.987345, 41.890369>,  <35.529411, 28.305683, 42.035259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690971, 28.987345, 41.890369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058346, 28.889235, 42.014503>,  <36.278770, 28.830368, 42.088982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058346, 28.889235, 42.014503>,  <35.690971, 28.987345, 41.890369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058346, 28.889235, 42.014503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393542, 0.645745, -0.654323,
		-0.039906, 0.723085, 0.689605,
		0.918440, -0.245277, 0.310333,
		36.333878, 28.815651, 42.107605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096138, 29.643026, 42.163231>,  <35.690971, 28.987345, 41.890369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096138, 29.643026, 42.163231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347992, 29.359215, 42.036659>,  <36.499104, 29.188927, 41.960716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347992, 29.359215, 42.036659>,  <36.096138, 29.643026, 42.163231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347992, 29.359215, 42.036659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420048, 0.653546, -0.629633,
		0.653546, 0.263521, 0.709531,
		0.629633, -0.709531, -0.316431,
		36.536880, 29.146355, 41.941730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771458, 30.012606, 42.093723>,  <36.096138, 29.643026, 42.163231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771458, 30.012606, 42.093723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753872, 29.684744, 41.865253>,  <36.743320, 29.488028, 41.728172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753872, 29.684744, 41.865253>,  <36.771458, 30.012606, 42.093723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753872, 29.684744, 41.865253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308373, 0.532672, -0.788142,
		0.950249, -0.210783, 0.229341,
		-0.043964, -0.819653, -0.571171,
		36.740685, 29.438848, 41.693901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258522, 30.087074, 41.619061>,  <36.771458, 30.012606, 42.093723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258522, 30.087074, 41.619061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004879, 29.818787, 41.465157>,  <36.852692, 29.657814, 41.372814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004879, 29.818787, 41.465157>,  <37.258522, 30.087074, 41.619061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004879, 29.818787, 41.465157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005373, 0.493764, -0.869579,
		0.773225, -0.553476, -0.309497,
		-0.634109, -0.670717, -0.384765,
		36.814648, 29.617571, 41.349728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467014, 29.984562, 41.048656>,  <37.258522, 30.087074, 41.619061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467014, 29.984562, 41.048656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096230, 29.844553, 40.994652>,  <36.873760, 29.760548, 40.962250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096230, 29.844553, 40.994652>,  <37.467014, 29.984562, 41.048656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096230, 29.844553, 40.994652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059887, 0.493326, -0.867781,
		0.370350, -0.796312, -0.478255,
		-0.926960, -0.350024, -0.135014,
		36.818142, 29.739546, 40.954147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392204, 29.818867, 40.317024>,  <37.467014, 29.984562, 41.048656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392204, 29.818867, 40.317024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018467, 29.874580, 40.448238>,  <36.794224, 29.908009, 40.526966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018467, 29.874580, 40.448238>,  <37.392204, 29.818867, 40.317024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018467, 29.874580, 40.448238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254508, 0.383530, -0.887767,
		-0.249463, -0.912964, -0.322899,
		-0.934341, 0.139285, 0.328034,
		36.738163, 29.916367, 40.546650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951267, 29.711243, 39.710205>,  <37.392204, 29.818867, 40.317024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951267, 29.711243, 39.710205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701431, 29.893246, 39.964092>,  <36.551529, 30.002447, 40.116425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701431, 29.893246, 39.964092>,  <36.951267, 29.711243, 39.710205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701431, 29.893246, 39.964092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433875, 0.473596, -0.766459,
		-0.649342, -0.754105, -0.098385,
		-0.624585, 0.455008, 0.634713,
		36.514057, 30.029747, 40.154507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251213, 29.550014, 39.542217>,  <36.951267, 29.711243, 39.710205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251213, 29.550014, 39.542217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254368, 29.896227, 39.742535>,  <36.256260, 30.103954, 39.862724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254368, 29.896227, 39.742535>,  <36.251213, 29.550014, 39.542217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254368, 29.896227, 39.742535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463315, 0.446971, -0.765216,
		-0.886158, -0.225993, 0.404537,
		0.007883, 0.865531, 0.500793,
		36.256733, 30.155886, 39.892773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638935, 29.875845, 39.279484>,  <36.251213, 29.550014, 39.542217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638935, 29.875845, 39.279484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824207, 30.167963, 39.480335>,  <35.935371, 30.343235, 39.600845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824207, 30.167963, 39.480335>,  <35.638935, 29.875845, 39.279484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824207, 30.167963, 39.480335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419251, 0.679713, -0.601847,
		-0.780830, 0.068244, 0.621005,
		0.463177, 0.730297, 0.502129,
		35.963161, 30.387053, 39.630974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100697, 30.421583, 39.309723>,  <35.638935, 29.875845, 39.279484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100697, 30.421583, 39.309723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463028, 30.580462, 39.368671>,  <35.680428, 30.675789, 39.404041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463028, 30.580462, 39.368671>,  <35.100697, 30.421583, 39.309723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463028, 30.580462, 39.368671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208655, 0.721012, -0.660761,
		-0.368707, 0.567784, 0.735987,
		0.905825, 0.397195, 0.147371,
		35.734776, 30.699619, 39.412884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923004, 31.108791, 39.345581>,  <35.100697, 30.421583, 39.309723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923004, 31.108791, 39.345581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313847, 31.078985, 39.265869>,  <35.548351, 31.061102, 39.218040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313847, 31.078985, 39.265869>,  <34.923004, 31.108791, 39.345581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313847, 31.078985, 39.265869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123435, 0.564360, -0.816249,
		0.173289, 0.822159, 0.542241,
		0.977105, -0.074516, -0.199280,
		35.606979, 31.056631, 39.206085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255585, 31.757816, 39.304447>,  <34.923004, 31.108791, 39.345581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255585, 31.757816, 39.304447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495399, 31.537699, 39.071987>,  <35.639286, 31.405628, 38.932510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495399, 31.537699, 39.071987>,  <35.255585, 31.757816, 39.304447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495399, 31.537699, 39.071987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236115, 0.572193, -0.785395,
		0.764727, 0.608090, 0.213118,
		0.599535, -0.550292, -0.581151,
		35.675259, 31.372612, 38.897640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631691, 32.349487, 38.874653>,  <35.255585, 31.757816, 39.304447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631691, 32.349487, 38.874653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708408, 32.001732, 38.692493>,  <35.754436, 31.793079, 38.583199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708408, 32.001732, 38.692493>,  <35.631691, 32.349487, 38.874653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708408, 32.001732, 38.692493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176308, 0.486983, -0.855431,
		0.965470, 0.083773, 0.246679,
		0.191790, -0.869385, -0.455398,
		35.765945, 31.740917, 38.555874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193848, 32.507008, 38.477669>,  <35.631691, 32.349487, 38.874653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193848, 32.507008, 38.477669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051300, 32.175194, 38.305683>,  <35.965771, 31.976105, 38.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051300, 32.175194, 38.305683>,  <36.193848, 32.507008, 38.477669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051300, 32.175194, 38.305683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046814, 0.475449, -0.878496,
		0.933172, -0.292939, -0.208269,
		-0.356367, -0.829539, -0.429962,
		35.944389, 31.926332, 38.176693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473686, 32.549927, 37.779003>,  <36.193848, 32.507008, 38.477669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473686, 32.549927, 37.779003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176411, 32.282764, 37.763145>,  <35.998047, 32.122467, 37.753632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176411, 32.282764, 37.763145>,  <36.473686, 32.549927, 37.779003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176411, 32.282764, 37.763145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283831, 0.368365, -0.885295,
		0.605896, -0.646690, -0.463337,
		-0.743189, -0.667906, -0.039641,
		35.953453, 32.082394, 37.751255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511047, 32.318523, 37.111820>,  <36.473686, 32.549927, 37.779003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511047, 32.318523, 37.111820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133259, 32.250851, 37.224499>,  <35.906586, 32.210247, 37.292107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133259, 32.250851, 37.224499>,  <36.511047, 32.318523, 37.111820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133259, 32.250851, 37.224499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327507, 0.414824, -0.848917,
		0.026765, -0.894035, -0.447197,
		-0.944470, -0.169182, 0.281700,
		35.849918, 32.200096, 37.309010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066132, 32.073795, 36.463512>,  <36.511047, 32.318523, 37.111820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066132, 32.073795, 36.463512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818382, 32.219456, 36.741726>,  <35.669735, 32.306854, 36.908653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818382, 32.219456, 36.741726>,  <36.066132, 32.073795, 36.463512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818382, 32.219456, 36.741726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487736, 0.515754, -0.704352,
		-0.615219, -0.775493, -0.141833,
		-0.619371, 0.364153, 0.695537,
		35.632572, 32.328701, 36.950386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417229, 32.060383, 36.165897>,  <36.066132, 32.073795, 36.463512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417229, 32.060383, 36.165897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331623, 32.296501, 36.477215>,  <35.280258, 32.438171, 36.664005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331623, 32.296501, 36.477215>,  <35.417229, 32.060383, 36.165897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331623, 32.296501, 36.477215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736135, 0.426277, -0.525732,
		-0.642108, -0.685445, 0.343311,
		-0.214015, 0.590300, 0.778296,
		35.267418, 32.473591, 36.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740719, 32.055214, 36.236668>,  <35.417229, 32.060383, 36.165897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740719, 32.055214, 36.236668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844864, 32.403801, 36.402924>,  <34.907352, 32.612953, 36.502678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844864, 32.403801, 36.402924>,  <34.740719, 32.055214, 36.236668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844864, 32.403801, 36.402924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668199, 0.473374, -0.573957,
		-0.696937, -0.128290, 0.705564,
		0.260363, 0.871469, 0.415635,
		34.922974, 32.665241, 36.527615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114487, 32.352695, 36.621387>,  <34.740719, 32.055214, 36.236668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114487, 32.352695, 36.621387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358162, 32.659496, 36.540787>,  <34.504368, 32.843575, 36.492424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358162, 32.659496, 36.540787>,  <34.114487, 32.352695, 36.621387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358162, 32.659496, 36.540787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730098, 0.443246, -0.520086,
		-0.309589, 0.463948, 0.830004,
		0.609189, 0.766997, -0.201503,
		34.540920, 32.889595, 36.480335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649311, 32.830853, 36.777748>,  <34.114487, 32.352695, 36.621387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649311, 32.830853, 36.777748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936203, 33.015224, 36.568703>,  <34.108337, 33.125847, 36.443275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936203, 33.015224, 36.568703>,  <33.649311, 32.830853, 36.777748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936203, 33.015224, 36.568703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696810, 0.481040, -0.532031,
		0.006171, 0.745752, 0.666195,
		0.717230, 0.460928, -0.522616,
		34.151371, 33.153503, 36.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344170, 33.370457, 36.525635>,  <33.649311, 32.830853, 36.777748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344170, 33.370457, 36.525635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682770, 33.399841, 36.314713>,  <33.885929, 33.417473, 36.188160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682770, 33.399841, 36.314713>,  <33.344170, 33.370457, 36.525635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682770, 33.399841, 36.314713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458891, 0.602836, -0.652693,
		0.269932, 0.794476, 0.544007,
		0.846496, 0.073457, -0.527303,
		33.936718, 33.421879, 36.156521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569492, 34.103333, 36.352840>,  <33.344170, 33.370457, 36.525635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569492, 34.103333, 36.352840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737595, 33.882484, 36.064800>,  <33.838455, 33.749977, 35.891975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737595, 33.882484, 36.064800>,  <33.569492, 34.103333, 36.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737595, 33.882484, 36.064800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220194, 0.707811, -0.671207,
		0.880283, 0.440642, 0.175890,
		0.420259, -0.552122, -0.720100,
		33.863670, 33.716846, 35.848770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065090, 34.519279, 35.968697>,  <33.569492, 34.103333, 36.352840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065090, 34.519279, 35.968697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986511, 34.216496, 35.719402>,  <33.939365, 34.034824, 35.569824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986511, 34.216496, 35.719402>,  <34.065090, 34.519279, 35.968697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986511, 34.216496, 35.719402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371923, 0.645645, -0.666945,
		0.907239, 0.100777, -0.408364,
		-0.196445, -0.756958, -0.623236,
		33.927578, 33.989407, 35.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333027, 34.689426, 35.299793>,  <34.065090, 34.519279, 35.968697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333027, 34.689426, 35.299793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066837, 34.409267, 35.196575>,  <33.907124, 34.241173, 35.134644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066837, 34.409267, 35.196575>,  <34.333027, 34.689426, 35.299793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066837, 34.409267, 35.196575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277918, 0.553354, -0.785214,
		0.692751, -0.450826, -0.562896,
		-0.665475, -0.700397, -0.258044,
		33.867195, 34.199150, 35.119164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358891, 34.652264, 34.529621>,  <34.333027, 34.689426, 35.299793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358891, 34.652264, 34.529621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015869, 34.470108, 34.625305>,  <33.810055, 34.360813, 34.682716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015869, 34.470108, 34.625305>,  <34.358891, 34.652264, 34.529621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015869, 34.470108, 34.625305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424011, 0.362497, -0.829946,
		0.291237, -0.813150, -0.503952,
		-0.857552, -0.455392, 0.239212,
		33.758602, 34.333492, 34.697067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204533, 34.372124, 33.923485>,  <34.358891, 34.652264, 34.529621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204533, 34.372124, 33.923485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881779, 34.429909, 34.152596>,  <33.688126, 34.464581, 34.290062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881779, 34.429909, 34.152596>,  <34.204533, 34.372124, 33.923485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881779, 34.429909, 34.152596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454410, 0.467741, -0.758110,
		-0.377428, -0.871980, -0.311767,
		-0.806883, 0.144462, 0.572775,
		33.639713, 34.473248, 34.324429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789570, 33.961937, 33.764446>,  <34.204533, 34.372124, 33.923485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789570, 33.961937, 33.764446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852951, 33.632130, 33.547165>,  <34.890980, 33.434246, 33.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852951, 33.632130, 33.547165>,  <34.789570, 33.961937, 33.764446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852951, 33.632130, 33.547165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316584, -0.478680, 0.818926,
		-0.935236, -0.301730, 0.185181,
		0.158452, -0.824515, -0.543202,
		34.900486, 33.384773, 33.384205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538319, 33.360138, 34.083286>,  <34.789570, 33.961937, 33.764446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538319, 33.360138, 34.083286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852177, 33.264515, 33.854485>,  <35.040489, 33.207142, 33.717205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852177, 33.264515, 33.854485>,  <34.538319, 33.360138, 34.083286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852177, 33.264515, 33.854485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367239, -0.564129, 0.739523,
		-0.499466, -0.790325, -0.354853,
		0.784646, -0.239051, -0.572001,
		35.087570, 33.192799, 33.682884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604668, 32.678581, 34.293686>,  <34.538319, 33.360138, 34.083286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604668, 32.678581, 34.293686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932369, 32.759613, 34.079102>,  <35.128990, 32.808231, 33.950352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932369, 32.759613, 34.079102>,  <34.604668, 32.678581, 34.293686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932369, 32.759613, 34.079102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462817, -0.785942, 0.409994,
		-0.338571, -0.584171, -0.737641,
		0.819250, 0.202581, -0.536461,
		35.178143, 32.820389, 33.918163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943207, 31.950714, 34.253971>,  <34.604668, 32.678581, 34.293686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943207, 31.950714, 34.253971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203259, 32.226547, 34.126339>,  <35.359287, 32.392048, 34.049759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203259, 32.226547, 34.126339>,  <34.943207, 31.950714, 34.253971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203259, 32.226547, 34.126339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754335, -0.535355, 0.379966,
		0.091194, -0.487721, -0.868223,
		0.650125, 0.689582, -0.319084,
		35.398296, 32.433422, 34.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453037, 31.771475, 33.671524>,  <34.943207, 31.950714, 34.253971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453037, 31.771475, 33.671524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626266, 32.044403, 33.907112>,  <35.730206, 32.208160, 34.048466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626266, 32.044403, 33.907112>,  <35.453037, 31.771475, 33.671524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626266, 32.044403, 33.907112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736930, -0.644283, 0.204531,
		0.519018, 0.345450, -0.781847,
		0.433076, 0.682322, 0.588966,
		35.756187, 32.249100, 34.083801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157635, 31.724197, 33.477718>,  <35.453037, 31.771475, 33.671524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157635, 31.724197, 33.477718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127399, 31.910229, 33.830532>,  <36.109257, 32.021847, 34.042221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127399, 31.910229, 33.830532>,  <36.157635, 31.724197, 33.477718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127399, 31.910229, 33.830532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700531, -0.604727, 0.378894,
		0.709607, 0.646533, -0.280094,
		-0.075587, 0.465080, 0.882035,
		36.104725, 32.049751, 34.095142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851929, 31.813211, 33.708000>,  <36.157635, 31.724197, 33.477718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851929, 31.813211, 33.708000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652840, 31.856802, 34.052185>,  <36.533386, 31.882956, 34.258698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652840, 31.856802, 34.052185>,  <36.851929, 31.813211, 33.708000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652840, 31.856802, 34.052185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663312, -0.591376, 0.458576,
		0.558831, 0.798999, 0.222055,
		-0.497720, 0.108975, 0.860465,
		36.503525, 31.889494, 34.310326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349594, 31.950403, 34.162354>,  <36.851929, 31.813211, 33.708000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349594, 31.950403, 34.162354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031811, 31.806421, 34.358013>,  <36.841141, 31.720032, 34.475410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031811, 31.806421, 34.358013>,  <37.349594, 31.950403, 34.162354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031811, 31.806421, 34.358013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601380, -0.578641, 0.550924,
		0.084735, 0.731852, 0.676175,
		-0.794457, -0.359956, 0.489152,
		36.793472, 31.698435, 34.504757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605171, 31.950645, 34.867058>,  <37.349594, 31.950403, 34.162354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605171, 31.950645, 34.867058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276241, 31.723213, 34.858078>,  <37.078884, 31.586754, 34.852688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276241, 31.723213, 34.858078>,  <37.605171, 31.950645, 34.867058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276241, 31.723213, 34.858078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371260, -0.566007, 0.736072,
		-0.431224, 0.596952, 0.676531,
		-0.822321, -0.568581, -0.022452,
		37.029545, 31.552639, 34.851341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211781, 31.943789, 35.511475>,  <37.605171, 31.950645, 34.867058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211781, 31.943789, 35.511475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099911, 31.602798, 35.334808>,  <37.032791, 31.398205, 35.228809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099911, 31.602798, 35.334808>,  <37.211781, 31.943789, 35.511475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099911, 31.602798, 35.334808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275705, -0.511955, 0.813565,
		-0.919657, 0.105763, 0.378212,
		-0.279673, -0.852476, -0.441664,
		37.016010, 31.347055, 35.202309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867554, 31.654861, 36.064095>,  <37.211781, 31.943789, 35.511475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867554, 31.654861, 36.064095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957024, 31.374527, 35.793156>,  <37.010704, 31.206326, 35.630592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957024, 31.374527, 35.793156>,  <36.867554, 31.654861, 36.064095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957024, 31.374527, 35.793156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327410, -0.600542, 0.729487,
		-0.918027, -0.384937, 0.095135,
		0.223674, -0.700837, -0.677346,
		37.024124, 31.164276, 35.589951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757923, 31.134007, 36.499775>,  <36.867554, 31.654861, 36.064095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757923, 31.134007, 36.499775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910309, 30.925919, 36.194035>,  <37.001740, 30.801065, 36.010590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910309, 30.925919, 36.194035>,  <36.757923, 31.134007, 36.499775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910309, 30.925919, 36.194035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049524, -0.814029, 0.578709,
		-0.923263, -0.258321, -0.284352,
		0.380963, -0.520219, -0.764356,
		37.024597, 30.769854, 35.964729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345982, 30.532246, 36.302738>,  <36.757923, 31.134007, 36.499775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345982, 30.532246, 36.302738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731907, 30.495113, 36.204330>,  <36.963463, 30.472834, 36.145287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731907, 30.495113, 36.204330>,  <36.345982, 30.532246, 36.302738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731907, 30.495113, 36.204330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074608, -0.800524, 0.594639,
		-0.252145, -0.592068, -0.765427,
		0.964809, -0.092828, -0.246021,
		37.021351, 30.467264, 36.130524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416321, 29.828056, 36.355316>,  <36.345982, 30.532246, 36.302738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416321, 29.828056, 36.355316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794048, 29.959616, 36.351742>,  <37.020687, 30.038551, 36.349598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794048, 29.959616, 36.351742>,  <36.416321, 29.828056, 36.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794048, 29.959616, 36.351742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239782, -0.669346, 0.703194,
		0.225296, -0.666186, -0.710942,
		0.944324, 0.328898, -0.008938,
		37.077347, 30.058285, 36.349060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773411, 29.172588, 36.256363>,  <36.416321, 29.828056, 36.355316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773411, 29.172588, 36.256363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016384, 29.454155, 36.403622>,  <37.162167, 29.623095, 36.491978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016384, 29.454155, 36.403622>,  <36.773411, 29.172588, 36.256363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016384, 29.454155, 36.403622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324612, -0.642936, 0.693729,
		0.725021, -0.301887, -0.619038,
		0.607430, 0.703916, 0.368146,
		37.198612, 29.665329, 36.514065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483158, 28.833111, 36.331619>,  <36.773411, 29.172588, 36.256363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483158, 28.833111, 36.331619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455700, 29.150373, 36.573673>,  <37.439224, 29.340731, 36.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455700, 29.150373, 36.573673>,  <37.483158, 28.833111, 36.331619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455700, 29.150373, 36.573673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283016, -0.566167, 0.774181,
		0.956656, 0.224406, -0.185613,
		-0.068643, 0.793156, 0.605138,
		37.435108, 29.388321, 36.755215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001671, 28.618816, 36.790821>,  <37.483158, 28.833111, 36.331619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001671, 28.618816, 36.790821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823112, 28.938059, 36.952686>,  <37.715977, 29.129604, 37.049805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823112, 28.938059, 36.952686>,  <38.001671, 28.618816, 36.790821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823112, 28.938059, 36.952686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230459, -0.334432, 0.913808,
		0.864650, 0.501180, -0.034641,
		-0.446396, 0.798107, 0.404667,
		37.689194, 29.177490, 37.074085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449749, 28.864279, 37.308125>,  <38.001671, 28.618816, 36.790821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449749, 28.864279, 37.308125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088215, 29.009769, 37.398262>,  <37.871292, 29.097063, 37.452343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088215, 29.009769, 37.398262>,  <38.449749, 28.864279, 37.308125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088215, 29.009769, 37.398262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027378, -0.476416, 0.878794,
		0.426996, 0.800457, 0.420646,
		-0.903839, 0.363725, 0.225342,
		37.817062, 29.118887, 37.465866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442703, 29.018612, 38.086376>,  <38.449749, 28.864279, 37.308125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442703, 29.018612, 38.086376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053074, 29.012051, 37.996128>,  <37.819294, 29.008114, 37.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053074, 29.012051, 37.996128>,  <38.442703, 29.018612, 38.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053074, 29.012051, 37.996128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185310, -0.514202, 0.837410,
		-0.129753, 0.857512, 0.497832,
		-0.974076, -0.016404, -0.225625,
		37.760853, 29.007130, 37.928440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125362, 29.366156, 38.622204>,  <38.442703, 29.018612, 38.086376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125362, 29.366156, 38.622204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832809, 29.145308, 38.462082>,  <37.657280, 29.012798, 38.366009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832809, 29.145308, 38.462082>,  <38.125362, 29.366156, 38.622204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832809, 29.145308, 38.462082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072614, -0.520603, 0.850705,
		-0.678094, 0.651256, 0.340667,
		-0.731380, -0.552121, -0.400308,
		37.613396, 28.979671, 38.341988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529099, 29.336170, 39.042507>,  <38.125362, 29.366156, 38.622204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529099, 29.336170, 39.042507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500801, 29.009916, 38.812817>,  <37.483822, 28.814165, 38.675003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500801, 29.009916, 38.812817>,  <37.529099, 29.336170, 39.042507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500801, 29.009916, 38.812817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141493, -0.561644, 0.815191,
		-0.987408, 0.138918, -0.075674,
		-0.070743, -0.815633, -0.574228,
		37.479580, 28.765226, 38.640549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867790, 29.025217, 39.255474>,  <37.529099, 29.336170, 39.042507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867790, 29.025217, 39.255474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099159, 28.753803, 39.074356>,  <37.237980, 28.590956, 38.965687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099159, 28.753803, 39.074356>,  <36.867790, 29.025217, 39.255474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099159, 28.753803, 39.074356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260687, -0.679721, 0.685581,
		-0.772964, -0.278516, -0.570049,
		0.578420, -0.678533, -0.452795,
		37.272686, 28.550243, 38.938519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562107, 28.324463, 39.302731>,  <36.867790, 29.025217, 39.255474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562107, 28.324463, 39.302731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943272, 28.252832, 39.204834>,  <37.171970, 28.209854, 39.146095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943272, 28.252832, 39.204834>,  <36.562107, 28.324463, 39.302731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943272, 28.252832, 39.204834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015631, -0.834963, 0.550085,
		-0.302858, -0.520354, -0.798441,
		0.952907, -0.179078, -0.244741,
		37.229145, 28.199108, 39.131413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552689, 27.700184, 39.045116>,  <36.562107, 28.324463, 39.302731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552689, 27.700184, 39.045116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927784, 27.760866, 39.170097>,  <37.152843, 27.797276, 39.245087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927784, 27.760866, 39.170097>,  <36.552689, 27.700184, 39.045116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927784, 27.760866, 39.170097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155573, -0.620842, 0.768344,
		0.310549, -0.769117, -0.558587,
		0.937740, 0.151707, 0.312455,
		37.209106, 27.806379, 39.263836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748562, 27.036734, 39.340122>,  <36.552689, 27.700184, 39.045116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748562, 27.036734, 39.340122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019531, 27.288143, 39.492992>,  <37.182114, 27.438990, 39.584713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019531, 27.288143, 39.492992>,  <36.748562, 27.036734, 39.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019531, 27.288143, 39.492992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086353, -0.583898, 0.807222,
		0.730509, -0.513827, -0.449820,
		0.677422, 0.628526, 0.382172,
		37.222759, 27.476702, 39.607643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189579, 26.623747, 39.722462>,  <36.748562, 27.036734, 39.340122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189579, 26.623747, 39.722462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259010, 26.987501, 39.873665>,  <37.300671, 27.205753, 39.964386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259010, 26.987501, 39.873665>,  <37.189579, 26.623747, 39.722462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259010, 26.987501, 39.873665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340983, -0.415590, 0.843217,
		0.923905, -0.017469, -0.382222,
		0.173578, 0.909384, 0.378009,
		37.311085, 27.260317, 39.987068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977318, 26.604090, 39.928745>,  <37.189579, 26.623747, 39.722462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977318, 26.604090, 39.928745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776745, 26.882437, 40.134399>,  <37.656403, 27.049444, 40.257793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776745, 26.882437, 40.134399>,  <37.977318, 26.604090, 39.928745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776745, 26.882437, 40.134399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529029, -0.223613, 0.818612,
		0.684613, 0.682470, -0.256008,
		-0.501432, 0.695868, 0.514134,
		37.626316, 27.091198, 40.288639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360584, 26.682234, 40.448025>,  <37.977318, 26.604090, 39.928745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360584, 26.682234, 40.448025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065479, 26.917101, 40.581253>,  <37.888416, 27.058022, 40.661190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065479, 26.917101, 40.581253>,  <38.360584, 26.682234, 40.448025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065479, 26.917101, 40.581253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335349, -0.109423, 0.935718,
		0.585868, 0.802036, -0.116177,
		-0.737767, 0.587167, 0.333069,
		37.844151, 27.093250, 40.681175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630257, 27.156954, 40.853565>,  <38.360584, 26.682234, 40.448025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630257, 27.156954, 40.853565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261921, 27.109348, 41.002098>,  <38.040920, 27.080786, 41.091217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261921, 27.109348, 41.002098>,  <38.630257, 27.156954, 40.853565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261921, 27.109348, 41.002098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388195, -0.189948, 0.901790,
		-0.036791, 0.974554, 0.221113,
		-0.920843, -0.119013, 0.371328,
		37.985668, 27.073645, 41.113495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623878, 27.378511, 41.531940>,  <38.630257, 27.156954, 40.853565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623878, 27.378511, 41.531940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306442, 27.135138, 41.530460>,  <38.115978, 26.989113, 41.529572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306442, 27.135138, 41.530460>,  <38.623878, 27.378511, 41.531940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306442, 27.135138, 41.530460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213434, -0.284068, 0.934747,
		-0.569785, 0.741020, 0.355296,
		-0.793594, -0.608437, -0.003699,
		38.068363, 26.952606, 41.529350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378590, 27.406591, 42.255848>,  <38.623878, 27.378511, 41.531940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378590, 27.406591, 42.255848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202847, 27.087337, 42.090954>,  <38.097401, 26.895784, 41.992016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202847, 27.087337, 42.090954>,  <38.378590, 27.406591, 42.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202847, 27.087337, 42.090954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004184, -0.460716, 0.887538,
		-0.898301, 0.388225, 0.205760,
		-0.439361, -0.798137, -0.412237,
		38.071037, 26.847897, 41.967281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758224, 27.207634, 42.712963>,  <38.378590, 27.406591, 42.255848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758224, 27.207634, 42.712963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844173, 26.877554, 42.504013>,  <37.895744, 26.679506, 42.378643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844173, 26.877554, 42.504013>,  <37.758224, 27.207634, 42.712963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844173, 26.877554, 42.504013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001623, -0.535169, 0.844743,
		-0.976640, -0.180668, -0.116335,
		0.214877, -0.825199, -0.522375,
		37.908638, 26.629993, 42.347301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311531, 26.698418, 43.047276>,  <37.758224, 27.207634, 42.712963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311531, 26.698418, 43.047276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599602, 26.517529, 42.836815>,  <37.772446, 26.408995, 42.710537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599602, 26.517529, 42.836815>,  <37.311531, 26.698418, 43.047276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599602, 26.517529, 42.836815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184249, -0.606481, 0.773455,
		-0.668878, -0.653967, -0.353452,
		0.720176, -0.452224, -0.526155,
		37.815655, 26.381863, 42.678970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188759, 26.015274, 43.243893>,  <37.311531, 26.698418, 43.047276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188759, 26.015274, 43.243893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567234, 26.030430, 43.115337>,  <37.794319, 26.039524, 43.038204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567234, 26.030430, 43.115337>,  <37.188759, 26.015274, 43.243893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567234, 26.030430, 43.115337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297355, -0.493681, 0.817226,
		-0.127700, -0.868817, -0.478381,
		0.946188, 0.037889, -0.321391,
		37.851089, 26.041796, 43.018921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440815, 25.393290, 43.119232>,  <37.188759, 26.015274, 43.243893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440815, 25.393290, 43.119232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771870, 25.606316, 43.190105>,  <37.970501, 25.734131, 43.232628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771870, 25.606316, 43.190105>,  <37.440815, 25.393290, 43.119232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771870, 25.606316, 43.190105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235325, -0.615855, 0.751894,
		0.509552, -0.580599, -0.635029,
		0.827635, 0.532567, 0.177180,
		38.020161, 25.766087, 43.243259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861061, 24.895950, 43.320686>,  <37.440815, 25.393290, 43.119232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861061, 24.895950, 43.320686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021469, 25.243572, 43.436569>,  <38.117714, 25.452145, 43.506100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021469, 25.243572, 43.436569>,  <37.861061, 24.895950, 43.320686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021469, 25.243572, 43.436569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335735, -0.433674, 0.836187,
		0.852329, -0.238063, -0.465684,
		0.401020, 0.869053, 0.289707,
		38.141777, 25.504288, 43.523479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600391, 24.687883, 43.653072>,  <37.861061, 24.895950, 43.320686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600391, 24.687883, 43.653072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482815, 25.046289, 43.786190>,  <38.412270, 25.261333, 43.866062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482815, 25.046289, 43.786190>,  <38.600391, 24.687883, 43.653072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482815, 25.046289, 43.786190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304911, -0.242088, 0.921099,
		0.905885, 0.372222, -0.202046,
		-0.293940, 0.896016, 0.332798,
		38.394634, 25.315094, 43.886028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068703, 24.878094, 44.126125>,  <38.600391, 24.687883, 43.653072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068703, 24.878094, 44.126125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748940, 25.095835, 44.227818>,  <38.557083, 25.226479, 44.288834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748940, 25.095835, 44.227818>,  <39.068703, 24.878094, 44.126125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748940, 25.095835, 44.227818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206692, -0.148140, 0.967126,
		0.564118, 0.825673, 0.005911,
		-0.799406, 0.544351, 0.254229,
		38.509117, 25.259140, 44.304085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263321, 25.471220, 44.560863>,  <39.068703, 24.878094, 44.126125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263321, 25.471220, 44.560863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893948, 25.328768, 44.618046>,  <38.672321, 25.243296, 44.652355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893948, 25.328768, 44.618046>,  <39.263321, 25.471220, 44.560863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893948, 25.328768, 44.618046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220993, -0.188946, 0.956798,
		-0.313735, 0.915134, 0.253182,
		-0.923435, -0.356132, 0.142959,
		38.616917, 25.221928, 44.660934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872829, 25.854218, 44.618702>,  <39.263321, 25.471220, 44.560863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872829, 25.854218, 44.618702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888081, 26.123688, 44.913921>,  <39.897232, 26.285370, 45.091053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888081, 26.123688, 44.913921>,  <39.872829, 25.854218, 44.618702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888081, 26.123688, 44.913921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325227, 0.706736, -0.628292,
		-0.944867, -0.216074, 0.246046,
		0.038132, 0.673673, 0.738045,
		39.899521, 26.325790, 45.135334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243523, 26.276136, 44.556553>,  <39.872829, 25.854218, 44.618702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243523, 26.276136, 44.556553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475830, 26.496103, 44.796654>,  <39.615215, 26.628084, 44.940716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475830, 26.496103, 44.796654>,  <39.243523, 26.276136, 44.556553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475830, 26.496103, 44.796654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252191, 0.822608, -0.509623,
		-0.774024, 0.144592, 0.616426,
		0.580764, 0.549917, 0.600253,
		39.650059, 26.661079, 44.976730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889645, 26.950750, 44.710197>,  <39.243523, 26.276136, 44.556553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889645, 26.950750, 44.710197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274059, 27.024836, 44.792278>,  <39.504707, 27.069286, 44.841526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274059, 27.024836, 44.792278>,  <38.889645, 26.950750, 44.710197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274059, 27.024836, 44.792278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083299, 0.901871, -0.423899,
		-0.263579, 0.390288, 0.882157,
		0.961035, 0.185214, 0.205203,
		39.562370, 27.080400, 44.853840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901165, 27.559116, 44.978569>,  <38.889645, 26.950750, 44.710197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901165, 27.559116, 44.978569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264397, 27.498339, 44.822460>,  <39.482334, 27.461872, 44.728794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264397, 27.498339, 44.822460>,  <38.901165, 27.559116, 44.978569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264397, 27.498339, 44.822460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057296, 0.878031, -0.475161,
		0.414866, 0.453844, 0.788614,
		0.908077, -0.151943, -0.390268,
		39.536819, 27.452755, 44.705379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256516, 28.299143, 44.924564>,  <38.901165, 27.559116, 44.978569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256516, 28.299143, 44.924564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474991, 28.057699, 44.692245>,  <39.606075, 27.912832, 44.552853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474991, 28.057699, 44.692245>,  <39.256516, 28.299143, 44.924564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474991, 28.057699, 44.692245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125238, 0.744411, -0.655871,
		0.828246, 0.285492, 0.482185,
		0.546190, -0.603611, -0.580801,
		39.638847, 27.876616, 44.518005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890381, 28.761383, 44.706509>,  <39.256516, 28.299143, 44.924564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890381, 28.761383, 44.706509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797859, 28.461830, 44.458096>,  <39.742348, 28.282099, 44.309048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797859, 28.461830, 44.458096>,  <39.890381, 28.761383, 44.706509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797859, 28.461830, 44.458096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036825, 0.631142, -0.774792,
		0.972184, -0.202083, -0.118409,
		-0.231305, -0.748881, -0.621028,
		39.728466, 28.237165, 44.271786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327076, 28.841578, 44.115509>,  <39.890381, 28.761383, 44.706509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327076, 28.841578, 44.115509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019146, 28.611252, 44.005371>,  <39.834389, 28.473057, 43.939289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019146, 28.611252, 44.005371>,  <40.327076, 28.841578, 44.115509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019146, 28.611252, 44.005371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175881, 0.606074, -0.775719,
		0.613554, -0.548733, -0.567841,
		-0.769816, -0.575818, -0.275348,
		39.788200, 28.438507, 43.922768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539997, 28.790867, 43.501770>,  <40.327076, 28.841578, 44.115509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539997, 28.790867, 43.501770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156075, 28.681173, 43.477875>,  <39.925720, 28.615356, 43.463539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156075, 28.681173, 43.477875>,  <40.539997, 28.790867, 43.501770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156075, 28.681173, 43.477875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082758, 0.479908, -0.873407,
		0.268185, -0.833358, -0.483314,
		-0.959806, -0.274233, -0.059737,
		39.868134, 28.598904, 43.459953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439110, 28.668863, 42.843273>,  <40.539997, 28.790867, 43.501770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439110, 28.668863, 42.843273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067871, 28.750296, 42.967979>,  <39.845127, 28.799154, 43.042801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067871, 28.750296, 42.967979>,  <40.439110, 28.668863, 42.843273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067871, 28.750296, 42.967979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186942, 0.469349, -0.862997,
		-0.322016, -0.859224, -0.397542,
		-0.928094, 0.203582, 0.311763,
		39.789444, 28.811371, 43.061508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141396, 28.475294, 42.333206>,  <40.439110, 28.668863, 42.843273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141396, 28.475294, 42.333206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872765, 28.710272, 42.513821>,  <39.711586, 28.851259, 42.622189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872765, 28.710272, 42.513821>,  <40.141396, 28.475294, 42.333206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872765, 28.710272, 42.513821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326996, 0.311871, -0.892082,
		-0.664873, -0.746755, -0.017353,
		-0.671579, 0.587447, 0.451540,
		39.671291, 28.886505, 42.649284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456093, 28.344547, 42.052952>,  <40.141396, 28.475294, 42.333206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456093, 28.344547, 42.052952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429943, 28.708199, 42.217495>,  <39.414253, 28.926390, 42.316219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429943, 28.708199, 42.217495>,  <39.456093, 28.344547, 42.052952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429943, 28.708199, 42.217495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268581, 0.380995, -0.884707,
		-0.961036, -0.168323, 0.219266,
		-0.065377, 0.909126, 0.411358,
		39.410328, 28.980936, 42.340904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874935, 28.577438, 41.845833>,  <39.456093, 28.344547, 42.052952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874935, 28.577438, 41.845833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089634, 28.897287, 41.953541>,  <39.218452, 29.089197, 42.018166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089634, 28.897287, 41.953541>,  <38.874935, 28.577438, 41.845833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089634, 28.897287, 41.953541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284923, 0.472165, -0.834194,
		-0.794178, 0.371034, 0.481265,
		0.536751, 0.799621, 0.269267,
		39.250660, 29.137175, 42.034321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502056, 29.073233, 41.495007>,  <38.874935, 28.577438, 41.845833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502056, 29.073233, 41.495007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850014, 29.261410, 41.554291>,  <39.058788, 29.374315, 41.589859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850014, 29.261410, 41.554291>,  <38.502056, 29.073233, 41.495007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850014, 29.261410, 41.554291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209750, 0.624790, -0.752092,
		-0.446413, 0.623156, 0.642178,
		0.869897, 0.470440, 0.148207,
		39.110981, 29.402542, 41.598751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347672, 29.792231, 41.351719>,  <38.502056, 29.073233, 41.495007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347672, 29.792231, 41.351719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745804, 29.770723, 41.319668>,  <38.984684, 29.757818, 41.300438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745804, 29.770723, 41.319668>,  <38.347672, 29.792231, 41.351719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745804, 29.770723, 41.319668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047110, 0.453912, -0.889800,
		0.084215, 0.889423, 0.449260,
		0.995333, -0.053770, -0.080127,
		39.044403, 29.754593, 41.295631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599960, 30.471247, 41.256027>,  <38.347672, 29.792231, 41.351719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599960, 30.471247, 41.256027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908417, 30.256182, 41.119640>,  <39.093491, 30.127142, 41.037807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908417, 30.256182, 41.119640>,  <38.599960, 30.471247, 41.256027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908417, 30.256182, 41.119640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072971, 0.606663, -0.791603,
		0.632468, 0.585558, 0.507057,
		0.771142, -0.537664, -0.340966,
		39.139759, 30.094883, 41.017349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237442, 30.849463, 41.007118>,  <38.599960, 30.471247, 41.256027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237442, 30.849463, 41.007118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280945, 30.501162, 40.815300>,  <39.307045, 30.292181, 40.700211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280945, 30.501162, 40.815300>,  <39.237442, 30.849463, 41.007118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280945, 30.501162, 40.815300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127563, 0.490641, -0.861974,
		0.985850, 0.032574, 0.164436,
		0.108757, -0.870753, -0.479543,
		39.313572, 30.239935, 40.671436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756817, 30.928440, 40.518929>,  <39.237442, 30.849463, 41.007118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756817, 30.928440, 40.518929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558163, 30.609596, 40.381538>,  <39.438972, 30.418289, 40.299107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558163, 30.609596, 40.381538>,  <39.756817, 30.928440, 40.518929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558163, 30.609596, 40.381538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129576, 0.323198, -0.937418,
		0.858234, -0.510058, -0.057225,
		-0.496633, -0.797110, -0.343471,
		39.409172, 30.370464, 40.278496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175266, 30.737827, 39.920017>,  <39.756817, 30.928440, 40.518929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175266, 30.737827, 39.920017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813866, 30.567999, 39.896587>,  <39.597027, 30.466103, 39.882530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813866, 30.567999, 39.896587>,  <40.175266, 30.737827, 39.920017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813866, 30.567999, 39.896587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135328, 0.412277, -0.900951,
		0.406682, -0.806074, -0.429947,
		-0.903491, -0.424585, -0.058582,
		39.542816, 30.440628, 39.879017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204727, 30.600771, 39.224831>,  <40.175266, 30.737827, 39.920017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204727, 30.600771, 39.224831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818726, 30.564096, 39.323101>,  <39.587124, 30.542091, 39.382061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818726, 30.564096, 39.323101>,  <40.204727, 30.600771, 39.224831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818726, 30.564096, 39.323101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262203, 0.325532, -0.908448,
		0.003315, -0.941075, -0.338181,
		-0.965007, -0.091683, 0.245674,
		39.529224, 30.536591, 39.396805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920124, 30.346872, 38.628883>,  <40.204727, 30.600771, 39.224831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920124, 30.346872, 38.628883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609322, 30.479111, 38.843159>,  <39.422840, 30.558455, 38.971725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609322, 30.479111, 38.843159>,  <39.920124, 30.346872, 38.628883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609322, 30.479111, 38.843159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414984, 0.370872, -0.830808,
		-0.473335, -0.867848, -0.150978,
		-0.777008, 0.330597, 0.535689,
		39.376221, 30.578289, 39.003864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219460, 30.104998, 38.202332>,  <39.920124, 30.346872, 38.628883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219460, 30.104998, 38.202332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138927, 30.428288, 38.423687>,  <39.090607, 30.622261, 38.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138927, 30.428288, 38.423687>,  <39.219460, 30.104998, 38.202332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138927, 30.428288, 38.423687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472885, 0.414559, -0.777509,
		-0.857814, -0.418227, 0.298732,
		-0.201334, 0.808224, 0.553388,
		39.078526, 30.670755, 38.589703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421665, 30.242456, 38.219013>,  <39.219460, 30.104998, 38.202332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421665, 30.242456, 38.219013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618069, 30.579618, 38.307030>,  <38.735912, 30.781916, 38.359840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618069, 30.579618, 38.307030>,  <38.421665, 30.242456, 38.219013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618069, 30.579618, 38.307030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479651, 0.472435, -0.739418,
		-0.727217, 0.257516, 0.636271,
		0.491009, 0.842906, 0.220045,
		38.765369, 30.832491, 38.373043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124363, 30.835316, 37.939491>,  <38.421665, 30.242456, 38.219013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124363, 30.835316, 37.939491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491768, 30.985069, 37.990368>,  <38.712212, 31.074921, 38.020893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491768, 30.985069, 37.990368>,  <38.124363, 30.835316, 37.939491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491768, 30.985069, 37.990368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066373, 0.463111, -0.883811,
		-0.389791, 0.803346, 0.450220,
		0.918508, 0.374384, 0.127196,
		38.767319, 31.097385, 38.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060520, 31.593037, 37.803249>,  <38.124363, 30.835316, 37.939491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060520, 31.593037, 37.803249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444000, 31.499571, 37.738384>,  <38.674088, 31.443491, 37.699463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444000, 31.499571, 37.738384>,  <38.060520, 31.593037, 37.803249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444000, 31.499571, 37.738384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076133, 0.338526, -0.937872,
		0.274043, 0.911483, 0.306755,
		0.958699, -0.233663, -0.162165,
		38.731609, 31.429472, 37.689735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203426, 32.061184, 37.328873>,  <38.060520, 31.593037, 37.803249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203426, 32.061184, 37.328873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523926, 31.822210, 37.315796>,  <38.716225, 31.678827, 37.307949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523926, 31.822210, 37.315796>,  <38.203426, 32.061184, 37.328873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523926, 31.822210, 37.315796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290599, 0.436335, -0.851565,
		0.523017, 0.672819, 0.523228,
		0.801252, -0.597433, -0.032691,
		38.764301, 31.642981, 37.305988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732269, 32.476639, 37.055134>,  <38.203426, 32.061184, 37.328873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732269, 32.476639, 37.055134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873669, 32.109138, 36.984772>,  <38.958508, 31.888639, 36.942554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873669, 32.109138, 36.984772>,  <38.732269, 32.476639, 37.055134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873669, 32.109138, 36.984772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290961, 0.286706, -0.912766,
		0.889035, 0.271478, 0.368669,
		0.353495, -0.918749, -0.175902,
		38.979717, 31.833513, 36.931999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487553, 32.509857, 36.857830>,  <38.732269, 32.476639, 37.055134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487553, 32.509857, 36.857830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326294, 32.184258, 36.690556>,  <39.229538, 31.988897, 36.590191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326294, 32.184258, 36.690556>,  <39.487553, 32.509857, 36.857830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326294, 32.184258, 36.690556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289967, 0.319800, -0.902024,
		0.867982, -0.484907, 0.107107,
		-0.403145, -0.813998, -0.418187,
		39.205349, 31.940058, 36.565098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990246, 32.316219, 36.483902>,  <39.487553, 32.509857, 36.857830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990246, 32.316219, 36.483902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665466, 32.139084, 36.331776>,  <39.470600, 32.032803, 36.240498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665466, 32.139084, 36.331776>,  <39.990246, 32.316219, 36.483902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665466, 32.139084, 36.331776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191380, 0.413568, -0.890132,
		0.551472, -0.795522, -0.251044,
		-0.811944, -0.442838, -0.380318,
		39.421883, 32.006233, 36.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234539, 31.819809, 35.848259>,  <39.990246, 32.316219, 36.483902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234539, 31.819809, 35.848259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845440, 31.894981, 35.793945>,  <39.611980, 31.940084, 35.761356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845440, 31.894981, 35.793945>,  <40.234539, 31.819809, 35.848259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845440, 31.894981, 35.793945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193754, 0.337265, -0.921256,
		-0.127340, -0.922461, -0.364487,
		-0.972751, 0.187933, -0.135783,
		39.553616, 31.951361, 35.753212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132038, 31.658106, 35.150982>,  <40.234539, 31.819809, 35.848259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132038, 31.658106, 35.150982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798664, 31.869478, 35.215672>,  <39.598640, 31.996302, 35.254486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798664, 31.869478, 35.215672>,  <40.132038, 31.658106, 35.150982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798664, 31.869478, 35.215672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133736, 0.476807, -0.868775,
		-0.536196, -0.702437, -0.468056,
		-0.833432, 0.528430, 0.161721,
		39.548634, 32.028008, 35.264187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712704, 31.588104, 34.531384>,  <40.132038, 31.658106, 35.150982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712704, 31.588104, 34.531384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640442, 31.931637, 34.723125>,  <39.597084, 32.137756, 34.838169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640442, 31.931637, 34.723125>,  <39.712704, 31.588104, 34.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640442, 31.931637, 34.723125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113701, 0.502337, -0.857164,
		-0.976953, -0.100347, -0.188398,
		-0.180653, 0.858829, 0.479350,
		39.586246, 32.189285, 34.866932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219608, 31.953918, 34.074722>,  <39.712704, 31.588104, 34.531384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219608, 31.953918, 34.074722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390640, 32.220879, 34.318607>,  <39.493259, 32.381054, 34.464939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390640, 32.220879, 34.318607>,  <39.219608, 31.953918, 34.074722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390640, 32.220879, 34.318607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289628, 0.537784, -0.791773,
		-0.856326, 0.515134, 0.036645,
		0.427576, 0.667402, 0.609716,
		39.518913, 32.421101, 34.501522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965607, 32.663490, 33.866615>,  <39.219608, 31.953918, 34.074722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965607, 32.663490, 33.866615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302147, 32.728626, 34.072765>,  <39.504070, 32.767708, 34.196457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302147, 32.728626, 34.072765>,  <38.965607, 32.663490, 33.866615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302147, 32.728626, 34.072765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268754, 0.701258, -0.660310,
		-0.468938, 0.694061, 0.546239,
		0.841349, 0.162840, 0.515378,
		39.554550, 32.777477, 34.227379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038387, 33.322205, 33.823799>,  <38.965607, 32.663490, 33.866615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038387, 33.322205, 33.823799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411987, 33.209484, 33.911644>,  <39.636147, 33.141850, 33.964352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411987, 33.209484, 33.911644>,  <39.038387, 33.322205, 33.823799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411987, 33.209484, 33.911644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354653, 0.657059, -0.665203,
		0.043161, 0.699185, 0.713637,
		0.934001, -0.281804, 0.219609,
		39.692188, 33.124943, 33.977528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362160, 33.843143, 33.681034>,  <39.038387, 33.322205, 33.823799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362160, 33.843143, 33.681034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682350, 33.604874, 33.707600>,  <39.874462, 33.461910, 33.723537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682350, 33.604874, 33.707600>,  <39.362160, 33.843143, 33.681034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682350, 33.604874, 33.707600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446185, 0.518237, -0.729623,
		0.400201, 0.613677, 0.680617,
		0.800474, -0.595677, 0.066415,
		39.922493, 33.426170, 33.727524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902725, 34.330067, 33.517502>,  <39.362160, 33.843143, 33.681034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902725, 34.330067, 33.517502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054291, 33.964066, 33.462086>,  <40.145229, 33.744465, 33.428837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054291, 33.964066, 33.462086>,  <39.902725, 34.330067, 33.517502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054291, 33.964066, 33.462086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573534, 0.349674, -0.740802,
		0.726281, 0.201239, 0.657281,
		0.378912, -0.915003, -0.138544,
		40.167965, 33.689564, 33.420521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487431, 34.444935, 33.514584>,  <39.902725, 34.330067, 33.517502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487431, 34.444935, 33.514584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398521, 34.118919, 33.300556>,  <40.345177, 33.923309, 33.172138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398521, 34.118919, 33.300556>,  <40.487431, 34.444935, 33.514584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398521, 34.118919, 33.300556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491064, 0.380520, -0.783620,
		0.842288, -0.436934, 0.315657,
		-0.222276, -0.815042, -0.535070,
		40.331837, 33.874409, 33.140034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058376, 34.307777, 33.032513>,  <40.487431, 34.444935, 33.514584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058376, 34.307777, 33.032513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762821, 34.104599, 32.855408>,  <40.585487, 33.982693, 32.749146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762821, 34.104599, 32.855408>,  <41.058376, 34.307777, 33.032513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762821, 34.104599, 32.855408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398961, 0.199758, -0.894945,
		0.543027, -0.837909, 0.055051,
		-0.738886, -0.507942, -0.442767,
		40.541157, 33.952217, 32.722576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409004, 33.863144, 32.449284>,  <41.058376, 34.307777, 33.032513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409004, 33.863144, 32.449284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019997, 33.926697, 32.381214>,  <40.786591, 33.964828, 32.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019997, 33.926697, 32.381214>,  <41.409004, 33.863144, 32.449284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019997, 33.926697, 32.381214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224162, 0.441545, -0.868786,
		-0.062897, -0.883059, -0.465028,
		-0.972520, 0.158886, -0.170176,
		40.728241, 33.974361, 32.330162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390015, 33.852871, 31.744743>,  <41.409004, 33.863144, 32.449284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390015, 33.852871, 31.744743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078789, 34.056114, 31.892498>,  <40.892052, 34.178059, 31.981152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078789, 34.056114, 31.892498>,  <41.390015, 33.852871, 31.744743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078789, 34.056114, 31.892498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093676, 0.675294, -0.731575,
		-0.621161, -0.534610, -0.573019,
		-0.778064, 0.508104, 0.369386,
		40.845371, 34.208546, 32.003315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784035, 33.919151, 31.284082>,  <41.390015, 33.852871, 31.744743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784035, 33.919151, 31.284082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838909, 34.236946, 31.520714>,  <40.871834, 34.427624, 31.662693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838909, 34.236946, 31.520714>,  <40.784035, 33.919151, 31.284082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838909, 34.236946, 31.520714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148722, 0.573936, -0.805282,
		-0.979317, 0.198452, -0.039425,
		0.137182, 0.794490, 0.591579,
		40.880062, 34.475292, 31.698187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257706, 34.433704, 31.128677>,  <40.784035, 33.919151, 31.284082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257706, 34.433704, 31.128677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588551, 34.604446, 31.274921>,  <40.787060, 34.706894, 31.362669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588551, 34.604446, 31.274921>,  <40.257706, 34.433704, 31.128677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588551, 34.604446, 31.274921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037547, 0.691031, -0.721849,
		-0.560776, 0.583325, 0.587591,
		0.827116, 0.426858, 0.365611,
		40.836685, 34.732502, 31.384605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143967, 35.091587, 31.213795>,  <40.257706, 34.433704, 31.128677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143967, 35.091587, 31.213795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535709, 35.087376, 31.133043>,  <40.770756, 35.084850, 31.084593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535709, 35.087376, 31.133043>,  <40.143967, 35.091587, 31.213795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535709, 35.087376, 31.133043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150410, 0.629285, -0.762481,
		0.135063, 0.777103, 0.614710,
		0.979354, -0.010525, -0.201877,
		40.829517, 35.084217, 31.072479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510372, 35.715099, 31.257200>,  <40.143967, 35.091587, 31.213795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510372, 35.715099, 31.257200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723431, 35.514221, 30.984703>,  <40.851265, 35.393696, 30.821205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723431, 35.514221, 30.984703>,  <40.510372, 35.715099, 31.257200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723431, 35.514221, 30.984703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009722, 0.808509, -0.588404,
		0.846283, 0.306787, 0.435530,
		0.532644, -0.502191, -0.681245,
		40.883224, 35.363564, 30.780329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210224, 36.108505, 31.068493>,  <40.510372, 35.715099, 31.257200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210224, 36.108505, 31.068493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065327, 35.871796, 30.780441>,  <40.978390, 35.729771, 30.607611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065327, 35.871796, 30.780441>,  <41.210224, 36.108505, 31.068493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065327, 35.871796, 30.780441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115582, 0.795155, -0.595289,
		0.924891, -0.132403, -0.356435,
		-0.362239, -0.591775, -0.720129,
		40.956654, 35.694263, 30.564404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198792, 36.273872, 30.241348>,  <41.210224, 36.108505, 31.068493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198792, 36.273872, 30.241348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447193, 36.025749, 30.049694>,  <41.596233, 35.876873, 29.934702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447193, 36.025749, 30.049694>,  <41.198792, 36.273872, 30.241348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447193, 36.025749, 30.049694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570520, 0.776891, -0.266358,
		0.537462, -0.107948, 0.836351,
		0.621000, -0.620312, -0.479136,
		41.633492, 35.839657, 29.905952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877579, 36.633415, 30.320032>,  <41.198792, 36.273872, 30.241348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877579, 36.633415, 30.320032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919140, 36.387501, 30.007305>,  <41.944077, 36.239952, 29.819670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919140, 36.387501, 30.007305>,  <41.877579, 36.633415, 30.320032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919140, 36.387501, 30.007305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516772, 0.705005, -0.485711,
		0.849795, -0.353556, 0.390955,
		0.103899, -0.614790, -0.781817,
		41.950310, 36.203064, 29.772760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221416, 36.793282, 30.928125>,  <41.877579, 36.633415, 30.320032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221416, 36.793282, 30.928125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524406, 36.923836, 31.154295>,  <42.706200, 37.002171, 31.289997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524406, 36.923836, 31.154295>,  <42.221416, 36.793282, 30.928125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524406, 36.923836, 31.154295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504378, 0.842459, 0.189384,
		-0.414535, -0.428641, 0.802762,
		0.757472, 0.326390, 0.565426,
		42.751648, 37.021751, 31.323923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876732, 37.039860, 31.541620>,  <42.221416, 36.793282, 30.928125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876732, 37.039860, 31.541620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239349, 37.192963, 31.470438>,  <42.456921, 37.284824, 31.427729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239349, 37.192963, 31.470438>,  <41.876732, 37.039860, 31.541620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239349, 37.192963, 31.470438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397495, 0.915967, -0.054791,
		0.142029, 0.120407, 0.982512,
		0.906546, 0.382762, -0.177956,
		42.511314, 37.307793, 31.417051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804092, 37.527821, 31.999538>,  <41.876732, 37.039860, 31.541620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804092, 37.527821, 31.999538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091301, 37.624760, 31.738550>,  <42.263626, 37.682922, 31.581957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091301, 37.624760, 31.738550>,  <41.804092, 37.527821, 31.999538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091301, 37.624760, 31.738550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189830, 0.970071, 0.151414,
		0.669638, 0.015141, 0.742532,
		0.718017, 0.242348, -0.652471,
		42.306705, 37.697464, 31.542809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286633, 38.032166, 32.229534>,  <41.804092, 37.527821, 31.999538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286633, 38.032166, 32.229534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278896, 38.046623, 31.829872>,  <42.274254, 38.055298, 31.590075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278896, 38.046623, 31.829872>,  <42.286633, 38.032166, 32.229534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278896, 38.046623, 31.829872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212605, 0.976342, 0.039437,
		0.976947, 0.213189, -0.011192,
		-0.019335, 0.036148, -0.999159,
		42.273094, 38.057468, 31.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575485, 38.610535, 32.118637>,  <42.286633, 38.032166, 32.229534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575485, 38.610535, 32.118637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466946, 38.520569, 31.744305>,  <42.401821, 38.466591, 31.519705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466946, 38.520569, 31.744305>,  <42.575485, 38.610535, 32.118637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466946, 38.520569, 31.744305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105250, 0.973416, -0.203429,
		0.956709, 0.043296, -0.287808,
		-0.271349, -0.224914, -0.935833,
		42.385540, 38.453094, 31.463554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030014, 38.958977, 31.630434>,  <42.575485, 38.610535, 32.118637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030014, 38.958977, 31.630434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685505, 38.893288, 31.438087>,  <42.478798, 38.853874, 31.322680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685505, 38.893288, 31.438087>,  <43.030014, 38.958977, 31.630434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685505, 38.893288, 31.438087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049843, 0.969074, -0.241685,
		0.505686, -0.184189, -0.842826,
		-0.861277, -0.164226, -0.480866,
		42.427120, 38.844021, 31.293827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091003, 39.367016, 31.028662>,  <43.030014, 38.958977, 31.630434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091003, 39.367016, 31.028662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697418, 39.301842, 31.057713>,  <42.461269, 39.262737, 31.075142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697418, 39.301842, 31.057713>,  <43.091003, 39.367016, 31.028662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697418, 39.301842, 31.057713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177788, 0.929023, -0.324511,
		-0.014598, -0.332219, -0.943089,
		-0.983960, -0.162932, 0.072626,
		42.402229, 39.252960, 31.079500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810837, 39.638344, 30.400091>,  <43.091003, 39.367016, 31.028662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810837, 39.638344, 30.400091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506973, 39.621452, 30.659670>,  <42.324654, 39.611317, 30.815416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506973, 39.621452, 30.659670>,  <42.810837, 39.638344, 30.400091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506973, 39.621452, 30.659670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234850, 0.948362, -0.213201,
		-0.606432, -0.314365, -0.730352,
		-0.759661, -0.042232, 0.648946,
		42.279076, 39.608784, 30.854353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267338, 39.979591, 30.086411>,  <42.810837, 39.638344, 30.400091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267338, 39.979591, 30.086411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193050, 39.989052, 30.479338>,  <42.148479, 39.994728, 30.715094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193050, 39.989052, 30.479338>,  <42.267338, 39.979591, 30.086411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193050, 39.989052, 30.479338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238028, 0.968852, -0.068331,
		-0.953337, -0.246510, -0.174303,
		-0.185718, 0.023654, 0.982318,
		42.137333, 39.996147, 30.774033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581768, 40.157494, 30.115171>,  <42.267338, 39.979591, 30.086411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581768, 40.157494, 30.115171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708973, 40.251652, 30.482533>,  <41.785297, 40.308147, 30.702950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708973, 40.251652, 30.482533>,  <41.581768, 40.157494, 30.115171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708973, 40.251652, 30.482533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512270, 0.857774, -0.042470,
		-0.797777, -0.456963, 0.393366,
		0.318012, 0.235391, 0.918401,
		41.804375, 40.322269, 30.758053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966331, 40.473919, 30.391081>,  <41.581768, 40.157494, 30.115171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966331, 40.473919, 30.391081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246605, 40.581139, 30.655563>,  <41.414768, 40.645470, 30.814253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246605, 40.581139, 30.655563>,  <40.966331, 40.473919, 30.391081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246605, 40.581139, 30.655563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276582, 0.956324, -0.094593,
		-0.657683, -0.116598, 0.744217,
		0.700683, 0.268049, 0.661206,
		41.456810, 40.661552, 30.853926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655315, 40.811558, 30.997643>,  <40.966331, 40.473919, 30.391081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655315, 40.811558, 30.997643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026001, 40.961674, 31.005150>,  <41.248413, 41.051743, 31.009653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026001, 40.961674, 31.005150>,  <40.655315, 40.811558, 30.997643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026001, 40.961674, 31.005150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375528, 0.926743, 0.011224,
		-0.013180, -0.017449, 0.999761,
		0.926717, 0.375290, 0.018768,
		41.304016, 41.074261, 31.010780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635605, 41.326626, 31.514992>,  <40.655315, 40.811558, 30.997643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635605, 41.326626, 31.514992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970715, 41.419388, 31.317265>,  <41.171780, 41.475044, 31.198629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970715, 41.419388, 31.317265>,  <40.635605, 41.326626, 31.514992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970715, 41.419388, 31.317265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195665, 0.972708, 0.124717,
		0.509747, -0.007765, 0.860289,
		0.837779, 0.231903, -0.494316,
		41.222050, 41.488960, 31.168970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030563, 41.742168, 31.878569>,  <40.635605, 41.326626, 31.514992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030563, 41.742168, 31.878569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136250, 41.840645, 31.505564>,  <41.199661, 41.899731, 31.281761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136250, 41.840645, 31.505564>,  <41.030563, 41.742168, 31.878569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136250, 41.840645, 31.505564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176693, 0.962864, 0.204140,
		0.948139, 0.110831, 0.297906,
		0.264218, 0.246192, -0.932512,
		41.215515, 41.914501, 31.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416656, 42.358868, 32.010235>,  <41.030563, 41.742168, 31.878569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416656, 42.358868, 32.010235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363121, 42.354298, 31.613859>,  <41.331001, 42.351555, 31.376034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363121, 42.354298, 31.613859>,  <41.416656, 42.358868, 32.010235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363121, 42.354298, 31.613859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254497, 0.966795, 0.023226,
		0.957768, 0.255299, -0.132299,
		-0.133836, -0.011424, -0.990938,
		41.322971, 42.350872, 31.316578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702534, 42.919628, 31.876072>,  <41.416656, 42.358868, 32.010235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702534, 42.919628, 31.876072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474285, 42.851913, 31.554642>,  <41.337337, 42.811283, 31.361784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474285, 42.851913, 31.554642>,  <41.702534, 42.919628, 31.876072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474285, 42.851913, 31.554642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125199, 0.985016, -0.118607,
		0.811613, 0.032927, -0.583267,
		-0.570622, -0.169287, -0.803574,
		41.303097, 42.801128, 31.313570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001953, 43.265675, 31.365120>,  <41.702534, 42.919628, 31.876072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001953, 43.265675, 31.365120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625961, 43.207085, 31.241842>,  <41.400368, 43.171932, 31.167875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625961, 43.207085, 31.241842>,  <42.001953, 43.265675, 31.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625961, 43.207085, 31.241842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124206, 0.988094, -0.090790,
		0.317821, -0.047061, -0.946982,
		-0.939980, -0.146476, -0.308192,
		41.343967, 43.163143, 31.149385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987339, 43.665417, 30.811369>,  <42.001953, 43.265675, 31.365120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987339, 43.665417, 30.811369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610874, 43.609859, 30.934610>,  <41.384995, 43.576523, 31.008554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610874, 43.609859, 30.934610>,  <41.987339, 43.665417, 30.811369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610874, 43.609859, 30.934610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159894, 0.986160, -0.043852,
		-0.297746, -0.090535, -0.950342,
		-0.941159, -0.138897, 0.308102,
		41.328526, 43.568192, 31.027040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505470, 44.093792, 30.354952>,  <41.987339, 43.665417, 30.811369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505470, 44.093792, 30.354952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292225, 44.058128, 30.691484>,  <41.164276, 44.036732, 30.893404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292225, 44.058128, 30.691484>,  <41.505470, 44.093792, 30.354952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292225, 44.058128, 30.691484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171249, 0.985219, -0.004104,
		-0.828530, -0.146266, -0.540503,
		-0.533114, -0.089160, 0.841332,
		41.132290, 44.031380, 30.943884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988209, 44.575584, 30.259022>,  <41.505470, 44.093792, 30.354952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988209, 44.575584, 30.259022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019421, 44.533943, 30.655622>,  <41.038147, 44.508957, 30.893583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019421, 44.533943, 30.655622>,  <40.988209, 44.575584, 30.259022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019421, 44.533943, 30.655622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102099, 0.988470, 0.111819,
		-0.991709, -0.109956, 0.066498,
		0.078027, -0.104103, 0.991501,
		41.042828, 44.502712, 30.953074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466564, 45.063416, 30.535618>,  <40.988209, 44.575584, 30.259022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466564, 45.063416, 30.535618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768700, 44.969208, 30.780239>,  <40.949982, 44.912682, 30.927011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768700, 44.969208, 30.780239>,  <40.466564, 45.063416, 30.535618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768700, 44.969208, 30.780239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125022, 0.967836, 0.218321,
		-0.643302, -0.088448, 0.760486,
		0.755336, -0.235524, 0.611553,
		40.995300, 44.898552, 30.963705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326771, 45.456169, 31.200573>,  <40.466564, 45.063416, 30.535618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326771, 45.456169, 31.200573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710636, 45.358341, 31.145107>,  <40.940956, 45.299644, 31.111828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710636, 45.358341, 31.145107>,  <40.326771, 45.456169, 31.200573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710636, 45.358341, 31.145107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271539, 0.934127, 0.231675,
		0.072870, -0.259983, 0.962860,
		0.959665, -0.244572, -0.138666,
		40.998535, 45.284969, 31.103508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692444, 45.773380, 30.641001>,  <40.326771, 45.456169, 31.200573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692444, 45.773380, 30.641001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814281, 45.823921, 31.018627>,  <40.887383, 45.854244, 31.245203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814281, 45.823921, 31.018627>,  <40.692444, 45.773380, 30.641001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814281, 45.823921, 31.018627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904667, 0.271721, -0.328245,
		-0.297997, 0.954046, -0.031542,
		0.304590, 0.126351, 0.944066,
		40.905659, 45.861828, 31.301847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102898, 46.456295, 30.516518>,  <40.692444, 45.773380, 30.641001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102898, 46.456295, 30.516518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184353, 46.190948, 30.804539>,  <41.233227, 46.031742, 30.977352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184353, 46.190948, 30.804539>,  <41.102898, 46.456295, 30.516518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184353, 46.190948, 30.804539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964401, 0.262648, -0.030769,
		-0.168710, 0.700686, 0.693236,
		0.203637, -0.663366, 0.720054,
		41.245445, 45.991940, 31.020555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627911, 46.797897, 30.868713>,  <41.102898, 46.456295, 30.516518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627911, 46.797897, 30.868713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648411, 46.401180, 30.915577>,  <41.660709, 46.163151, 30.943695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648411, 46.401180, 30.915577>,  <41.627911, 46.797897, 30.868713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648411, 46.401180, 30.915577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996776, 0.058049, 0.055397,
		-0.061743, 0.113943, 0.991567,
		0.051248, -0.991790, 0.117159,
		41.663784, 46.103642, 30.950726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199551, 46.617504, 31.417337>,  <41.627911, 46.797897, 30.868713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199551, 46.617504, 31.417337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123131, 46.315422, 31.166525>,  <42.077278, 46.134174, 31.016037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123131, 46.315422, 31.166525>,  <42.199551, 46.617504, 31.417337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123131, 46.315422, 31.166525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964406, -0.263389, 0.023385,
		-0.182814, -0.600246, 0.778642,
		-0.191049, -0.755202, -0.627032,
		42.065815, 46.088860, 30.978415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405605, 45.948780, 31.721010>,  <42.199551, 46.617504, 31.417337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405605, 45.948780, 31.721010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404449, 45.909218, 31.322973>,  <42.403755, 45.885479, 31.084150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404449, 45.909218, 31.322973>,  <42.405605, 45.948780, 31.721010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404449, 45.909218, 31.322973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961661, -0.273157, 0.024359,
		-0.274226, -0.956871, 0.095906,
		-0.002889, -0.098909, -0.995092,
		42.403584, 45.879543, 31.024446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124382, 45.918274, 31.643429>,  <42.405605, 45.948780, 31.721010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124382, 45.918274, 31.643429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432751, 46.079823, 31.840429>,  <43.617771, 46.176754, 31.958630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432751, 46.079823, 31.840429>,  <43.124382, 45.918274, 31.643429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432751, 46.079823, 31.840429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146041, -0.640561, 0.753893,
		0.619957, -0.653120, -0.434842,
		0.770925, 0.403876, 0.492502,
		43.664028, 46.200985, 31.988180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600822, 45.391766, 31.736591>,  <43.124382, 45.918274, 31.643429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600822, 45.391766, 31.736591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591270, 45.668198, 32.025543>,  <43.585541, 45.834057, 32.198914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591270, 45.668198, 32.025543>,  <43.600822, 45.391766, 31.736591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591270, 45.668198, 32.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054917, -0.722401, 0.689290,
		0.998205, -0.023214, 0.055200,
		-0.023875, 0.691084, 0.722380,
		43.584106, 45.875523, 32.242256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243774, 45.389854, 32.154465>,  <43.600822, 45.391766, 31.736591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243774, 45.389854, 32.154465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908665, 45.502693, 32.341465>,  <43.707600, 45.570396, 32.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908665, 45.502693, 32.341465>,  <44.243774, 45.389854, 32.154465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908665, 45.502693, 32.341465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134690, -0.722976, 0.677616,
		0.529143, 0.630658, 0.567696,
		-0.837775, 0.282093, 0.467501,
		43.657333, 45.587322, 32.481716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384430, 45.510738, 32.960655>,  <44.243774, 45.389854, 32.154465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384430, 45.510738, 32.960655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026676, 45.388309, 32.830177>,  <43.812023, 45.314854, 32.751892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026676, 45.388309, 32.830177>,  <44.384430, 45.510738, 32.960655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026676, 45.388309, 32.830177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201321, -0.926648, 0.317480,
		-0.399437, 0.218279, 0.890396,
		-0.894382, -0.306069, -0.326193,
		43.758362, 45.296490, 32.732319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961205, 45.225876, 33.526337>,  <44.384430, 45.510738, 32.960655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961205, 45.225876, 33.526337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902126, 45.068558, 33.163349>,  <43.866680, 44.974167, 32.945557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902126, 45.068558, 33.163349>,  <43.961205, 45.225876, 33.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902126, 45.068558, 33.163349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100347, -0.918758, 0.381856,
		-0.983930, -0.034665, 0.175160,
		-0.147692, -0.393296, -0.907472,
		43.857819, 44.950569, 32.891106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689407, 44.495090, 33.706558>,  <43.961205, 45.225876, 33.526337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689407, 44.495090, 33.706558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753178, 44.460163, 33.313221>,  <43.791439, 44.439209, 33.077221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753178, 44.460163, 33.313221>,  <43.689407, 44.495090, 33.706558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753178, 44.460163, 33.313221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145960, -0.983049, 0.110953,
		-0.976360, -0.161217, -0.143977,
		0.159424, -0.087315, -0.983341,
		43.801006, 44.433968, 33.018219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271423, 43.943104, 33.385376>,  <43.689407, 44.495090, 33.706558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271423, 43.943104, 33.385376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563541, 43.974625, 33.113945>,  <43.738811, 43.993538, 32.951088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563541, 43.974625, 33.113945>,  <43.271423, 43.943104, 33.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563541, 43.974625, 33.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066004, -0.996816, -0.044731,
		-0.679939, -0.012122, -0.733168,
		0.730292, 0.078807, -0.678575,
		43.782627, 43.998268, 32.910374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135052, 43.461468, 32.878723>,  <43.271423, 43.943104, 33.385376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135052, 43.461468, 32.878723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529987, 43.522408, 32.861042>,  <43.766949, 43.558971, 32.850433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529987, 43.522408, 32.861042>,  <43.135052, 43.461468, 32.878723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529987, 43.522408, 32.861042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150217, -0.987478, -0.048197,
		-0.050990, 0.040947, -0.997860,
		0.987338, 0.152353, -0.044200,
		43.826187, 43.568115, 32.847782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412441, 42.952972, 32.387047>,  <43.135052, 43.461468, 32.878723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412441, 42.952972, 32.387047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723011, 43.072166, 32.609173>,  <43.909351, 43.143681, 32.742447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723011, 43.072166, 32.609173>,  <43.412441, 42.952972, 32.387047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723011, 43.072166, 32.609173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322833, -0.944821, 0.055614,
		0.541244, 0.136093, -0.829779,
		0.776424, 0.297981, 0.555314,
		43.955936, 43.161560, 32.775768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991001, 42.824879, 32.002506>,  <43.412441, 42.952972, 32.387047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991001, 42.824879, 32.002506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103802, 42.826550, 32.386269>,  <44.171482, 42.827553, 32.616528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103802, 42.826550, 32.386269>,  <43.991001, 42.824879, 32.002506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103802, 42.826550, 32.386269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254075, -0.964613, -0.070481,
		0.925160, 0.263637, -0.273084,
		0.282001, 0.004177, 0.959405,
		44.188404, 42.827805, 32.674091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513157, 42.376595, 32.011791>,  <43.991001, 42.824879, 32.002506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513157, 42.376595, 32.011791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421288, 42.428532, 32.397617>,  <44.366165, 42.459694, 32.629112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421288, 42.428532, 32.397617>,  <44.513157, 42.376595, 32.011791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421288, 42.428532, 32.397617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199256, -0.963797, 0.177180,
		0.952652, 0.232890, 0.195490,
		-0.229676, 0.129838, 0.964568,
		44.352386, 42.467484, 32.686989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008186, 41.949215, 32.457119>,  <44.513157, 42.376595, 32.011791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008186, 41.949215, 32.457119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705765, 42.026154, 32.707363>,  <44.524311, 42.072315, 32.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705765, 42.026154, 32.707363>,  <45.008186, 41.949215, 32.457119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705765, 42.026154, 32.707363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052569, -0.934911, 0.350967,
		0.652397, 0.298237, 0.696730,
		-0.756052, 0.192343, 0.625611,
		44.478951, 42.083855, 32.895046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179668, 41.675663, 33.140766>,  <45.008186, 41.949215, 32.457119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179668, 41.675663, 33.140766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780750, 41.703239, 33.150887>,  <44.541397, 41.719788, 33.156960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780750, 41.703239, 33.150887>,  <45.179668, 41.675663, 33.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780750, 41.703239, 33.150887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059642, -0.961375, 0.268701,
		0.042854, 0.266466, 0.962891,
		-0.997299, 0.068944, 0.025306,
		44.481560, 41.723923, 33.158478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858578, 41.406902, 33.835842>,  <45.179668, 41.675663, 33.140766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858578, 41.406902, 33.835842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571526, 41.384453, 33.558178>,  <44.399296, 41.370983, 33.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571526, 41.384453, 33.558178>,  <44.858578, 41.406902, 33.835842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571526, 41.384453, 33.558178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031675, -0.993085, 0.113042,
		-0.695702, 0.103110, 0.710892,
		-0.717632, -0.056126, -0.694158,
		44.356236, 41.367615, 33.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463558, 40.932579, 34.074650>,  <44.858578, 41.406902, 33.835842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463558, 40.932579, 34.074650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328327, 40.913368, 33.698692>,  <44.247189, 40.901840, 33.473118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328327, 40.913368, 33.698692>,  <44.463558, 40.932579, 34.074650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328327, 40.913368, 33.698692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143452, -0.984397, 0.101901,
		-0.930121, 0.169280, 0.325911,
		-0.338076, -0.048027, -0.939893,
		44.226906, 40.898960, 33.416725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956581, 40.513435, 34.106144>,  <44.463558, 40.932579, 34.074650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956581, 40.513435, 34.106144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068027, 40.506683, 33.722042>,  <44.134895, 40.502632, 33.491581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068027, 40.506683, 33.722042>,  <43.956581, 40.513435, 34.106144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068027, 40.506683, 33.722042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014084, -0.999810, 0.013488,
		-0.960300, 0.009767, -0.278799,
		0.278614, -0.016880, -0.960255,
		44.151611, 40.501621, 33.433964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529774, 40.003017, 33.754967>,  <43.956581, 40.513435, 34.106144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529774, 40.003017, 33.754967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815201, 40.047333, 33.478260>,  <43.986458, 40.073921, 33.312237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815201, 40.047333, 33.478260>,  <43.529774, 40.003017, 33.754967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815201, 40.047333, 33.478260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090946, -0.964414, -0.248263,
		-0.694656, 0.240067, -0.678101,
		0.713570, 0.110787, -0.691769,
		44.029270, 40.080570, 33.270729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388454, 39.588341, 33.146614>,  <43.529774, 40.003017, 33.754967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388454, 39.588341, 33.146614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785515, 39.635517, 33.135750>,  <44.023750, 39.663822, 33.129230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785515, 39.635517, 33.135750>,  <43.388454, 39.588341, 33.146614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785515, 39.635517, 33.135750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108208, -0.965375, -0.237365,
		-0.054217, 0.232681, -0.971041,
		0.992649, 0.117944, -0.027161,
		44.083309, 39.670898, 33.127602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635201, 39.185257, 32.553558>,  <43.388454, 39.588341, 33.146614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635201, 39.185257, 32.553558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981560, 39.265602, 32.736809>,  <44.189377, 39.313808, 32.846760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981560, 39.265602, 32.736809>,  <43.635201, 39.185257, 32.553558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981560, 39.265602, 32.736809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330561, -0.917141, -0.222670,
		0.375436, 0.344246, -0.860548,
		0.865897, 0.200865, 0.458122,
		44.241329, 39.325863, 32.874245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098122, 38.873173, 32.215805>,  <43.635201, 39.185257, 32.553558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098122, 38.873173, 32.215805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298954, 38.893478, 32.561138>,  <44.419453, 38.905663, 32.768337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298954, 38.893478, 32.561138>,  <44.098122, 38.873173, 32.215805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298954, 38.893478, 32.561138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258012, -0.961606, -0.093510,
		0.825437, 0.269699, -0.495899,
		0.502079, 0.050762, 0.863331,
		44.449577, 38.908707, 32.820137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695332, 38.423557, 32.040646>,  <44.098122, 38.873173, 32.215805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695332, 38.423557, 32.040646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676563, 38.478996, 32.436340>,  <44.665302, 38.512260, 32.673756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676563, 38.478996, 32.436340>,  <44.695332, 38.423557, 32.040646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676563, 38.478996, 32.436340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237376, -0.960411, 0.145820,
		0.970284, 0.241663, 0.012164,
		-0.046921, 0.138599, 0.989236,
		44.662487, 38.520576, 32.733112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275318, 38.144104, 32.282646>,  <44.695332, 38.423557, 32.040646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275318, 38.144104, 32.282646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031498, 38.166992, 32.598919>,  <44.885204, 38.180725, 32.788681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031498, 38.166992, 32.598919>,  <45.275318, 38.144104, 32.282646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031498, 38.166992, 32.598919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249174, -0.933011, 0.259618,
		0.752568, 0.355268, 0.554461,
		-0.609552, 0.057223, 0.790678,
		44.848633, 38.184158, 32.836121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709618, 37.811420, 32.805790>,  <45.275318, 38.144104, 32.282646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709618, 37.811420, 32.805790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327129, 37.786053, 32.920063>,  <45.097637, 37.770832, 32.988625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327129, 37.786053, 32.920063>,  <45.709618, 37.811420, 32.805790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327129, 37.786053, 32.920063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123615, -0.972396, 0.197904,
		0.265242, 0.224555, 0.937668,
		-0.956225, -0.063417, 0.285679,
		45.040260, 37.767029, 33.005768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688053, 37.338245, 33.516396>,  <45.709618, 37.811420, 32.805790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688053, 37.338245, 33.516396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325432, 37.364613, 33.349628>,  <45.107861, 37.380432, 33.249569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325432, 37.364613, 33.349628>,  <45.688053, 37.338245, 33.516396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325432, 37.364613, 33.349628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124103, -0.985699, 0.114001,
		-0.403443, 0.155088, 0.901766,
		-0.906550, 0.065919, -0.416920,
		45.053467, 37.384388, 33.224552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253788, 36.864429, 33.918571>,  <45.688053, 37.338245, 33.516396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253788, 36.864429, 33.918571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064148, 36.935806, 33.573692>,  <44.950363, 36.978634, 33.366764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064148, 36.935806, 33.573692>,  <45.253788, 36.864429, 33.918571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064148, 36.935806, 33.573692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250874, -0.966033, -0.061986,
		-0.843974, 0.186915, 0.502764,
		-0.474100, 0.178445, -0.862199,
		44.921917, 36.989338, 33.315033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003922, 36.725163, 33.899960>,  <45.253788, 36.864429, 33.918571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003922, 36.725163, 33.899960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823750, 36.380043, 33.991779>,  <45.715649, 36.172970, 34.046871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823750, 36.380043, 33.991779>,  <46.003922, 36.725163, 33.899960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823750, 36.380043, 33.991779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834517, -0.498245, -0.235228,
		0.317326, 0.085609, 0.944444,
		-0.450428, -0.862799, 0.229548,
		45.688622, 36.121204, 34.060642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387272, 36.310280, 34.419270>,  <46.003922, 36.725163, 33.899960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387272, 36.310280, 34.419270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157669, 36.104046, 34.164810>,  <46.019909, 35.980305, 34.012135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157669, 36.104046, 34.164810>,  <46.387272, 36.310280, 34.419270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157669, 36.104046, 34.164810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809218, -0.475990, -0.344383,
		-0.125242, -0.712462, 0.690444,
		-0.574004, -0.515588, -0.636151,
		45.985466, 35.949368, 33.973965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582375, 35.504414, 34.498219>,  <46.387272, 36.310280, 34.419270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582375, 35.504414, 34.498219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454395, 35.621941, 34.137928>,  <46.377609, 35.692455, 33.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454395, 35.621941, 34.137928>,  <46.582375, 35.504414, 34.498219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454395, 35.621941, 34.137928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837762, -0.356271, -0.413795,
		-0.442483, -0.886985, -0.132162,
		-0.319945, 0.293817, -0.900726,
		46.358414, 35.710087, 33.867710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206753, 35.354744, 34.863129>,  <46.582375, 35.504414, 34.498219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206753, 35.354744, 34.863129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571163, 35.255009, 34.994495>,  <47.789810, 35.195168, 35.073315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.571163, 35.255009, 34.994495>,  <47.206753, 35.354744, 34.863129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.571163, 35.255009, 34.994495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207655, 0.410676, 0.887820,
		-0.356240, -0.877027, 0.322362,
		0.911029, -0.249337, 0.328418,
		47.844471, 35.180206, 35.093021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.173035, 34.861893, 42.032063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780579, 34.809582, 42.088997>,  <37.545105, 34.778194, 42.123158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780579, 34.809582, 42.088997>,  <38.173035, 34.861893, 42.032063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780579, 34.809582, 42.088997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186008, 0.438578, -0.879233,
		0.052564, -0.889126, -0.454633,
		-0.981141, -0.130781, 0.142332,
		37.486237, 34.770348, 42.131695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030617, 34.514820, 41.480217>,  <38.173035, 34.861893, 42.032063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030617, 34.514820, 41.480217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698078, 34.687519, 41.620197>,  <37.498554, 34.791138, 41.704185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698078, 34.687519, 41.620197>,  <38.030617, 34.514820, 41.480217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698078, 34.687519, 41.620197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306225, 0.169616, -0.936727,
		-0.463784, -0.885905, -0.008798,
		-0.831343, 0.431744, 0.349951,
		37.448677, 34.817043, 41.725182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501102, 34.165630, 41.022648>,  <38.030617, 34.514820, 41.480217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501102, 34.165630, 41.022648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370274, 34.510700, 41.176952>,  <37.291775, 34.717743, 41.269535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.370274, 34.510700, 41.176952>,  <37.501102, 34.165630, 41.022648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370274, 34.510700, 41.176952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105749, 0.372242, -0.922092,
		-0.939064, -0.342384, -0.030522,
		-0.327071, 0.862676, 0.385765,
		37.272152, 34.769505, 41.292683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833801, 34.237900, 40.861507>,  <37.501102, 34.165630, 41.022648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833801, 34.237900, 40.861507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968670, 34.611683, 40.907291>,  <37.049591, 34.835953, 40.934761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968670, 34.611683, 40.907291>,  <36.833801, 34.237900, 40.861507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968670, 34.611683, 40.907291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397579, 0.251538, -0.882417,
		-0.853375, 0.252015, 0.456332,
		0.337167, 0.934461, 0.114461,
		37.069820, 34.892021, 40.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296936, 34.644054, 40.674618>,  <36.833801, 34.237900, 40.861507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296936, 34.644054, 40.674618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638760, 34.851234, 40.659382>,  <36.843853, 34.975544, 40.650242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638760, 34.851234, 40.659382>,  <36.296936, 34.644054, 40.674618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638760, 34.851234, 40.659382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225711, 0.304351, -0.925433,
		-0.467738, 0.799435, 0.376993,
		0.854562, 0.517951, -0.038085,
		36.895126, 35.006618, 40.647957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978947, 35.264641, 40.346893>,  <36.296936, 34.644054, 40.674618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978947, 35.264641, 40.346893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376816, 35.249958, 40.308342>,  <36.615536, 35.241150, 40.285213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376816, 35.249958, 40.308342>,  <35.978947, 35.264641, 40.346893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376816, 35.249958, 40.308342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083854, 0.256121, -0.963001,
		0.060034, 0.965948, 0.251677,
		0.994668, -0.036708, -0.096374,
		36.675217, 35.238945, 40.279430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182858, 35.909958, 40.102203>,  <35.978947, 35.264641, 40.346893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182858, 35.909958, 40.102203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452560, 35.631859, 40.002602>,  <36.614384, 35.465000, 39.942841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452560, 35.631859, 40.002602>,  <36.182858, 35.909958, 40.102203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452560, 35.631859, 40.002602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096248, 0.251573, -0.963041,
		0.732197, 0.673304, 0.102709,
		0.674258, -0.695250, -0.249005,
		36.654839, 35.423283, 39.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669975, 36.367565, 39.764141>,  <36.182858, 35.909958, 40.102203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669975, 36.367565, 39.764141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722881, 35.991150, 39.639587>,  <36.754623, 35.765301, 39.564854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722881, 35.991150, 39.639587>,  <36.669975, 36.367565, 39.764141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722881, 35.991150, 39.639587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121121, 0.327135, -0.937183,
		0.983787, 0.086238, 0.157247,
		0.132262, -0.941034, -0.311386,
		36.762558, 35.708839, 39.546173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134995, 36.508823, 39.226330>,  <36.669975, 36.367565, 39.764141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134995, 36.508823, 39.226330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018650, 36.129391, 39.176392>,  <36.948845, 35.901730, 39.146431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018650, 36.129391, 39.176392>,  <37.134995, 36.508823, 39.226330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018650, 36.129391, 39.176392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115172, 0.164249, -0.979672,
		0.949808, -0.270570, -0.157024,
		-0.290861, -0.948585, -0.124843,
		36.931393, 35.844814, 39.138939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524231, 36.232529, 38.685913>,  <37.134995, 36.508823, 39.226330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524231, 36.232529, 38.685913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208118, 35.988026, 38.702950>,  <37.018452, 35.841324, 38.713173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208118, 35.988026, 38.702950>,  <37.524231, 36.232529, 38.685913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208118, 35.988026, 38.702950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105662, 0.067478, -0.992110,
		0.603565, -0.788547, -0.117914,
		-0.790282, -0.611262, 0.042592,
		36.971035, 35.804646, 38.715729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562294, 35.737885, 38.130932>,  <37.524231, 36.232529, 38.685913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562294, 35.737885, 38.130932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176182, 35.749264, 38.234791>,  <36.944515, 35.756092, 38.297108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.176182, 35.749264, 38.234791>,  <37.562294, 35.737885, 38.130932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176182, 35.749264, 38.234791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260409, -0.182219, -0.948147,
		0.020342, -0.982846, 0.183301,
		-0.965284, 0.028446, 0.259649,
		36.886597, 35.757797, 38.312687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224796, 35.222988, 37.654060>,  <37.562294, 35.737885, 38.130932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224796, 35.222988, 37.654060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928596, 35.457142, 37.786106>,  <36.750877, 35.597633, 37.865334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928596, 35.457142, 37.786106>,  <37.224796, 35.222988, 37.654060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928596, 35.457142, 37.786106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402901, 0.006455, -0.915221,
		-0.537890, -0.810728, 0.231074,
		-0.740504, 0.585387, 0.330115,
		36.706444, 35.632759, 37.885139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650394, 35.007629, 37.271492>,  <37.224796, 35.222988, 37.654060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650394, 35.007629, 37.271492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546894, 35.379940, 37.374802>,  <36.484795, 35.603325, 37.436787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546894, 35.379940, 37.374802>,  <36.650394, 35.007629, 37.271492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546894, 35.379940, 37.374802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361826, 0.154522, -0.919350,
		-0.895618, -0.331332, 0.296797,
		-0.258748, 0.930775, 0.258277,
		36.469269, 35.659172, 37.452286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112209, 35.101925, 36.865345>,  <36.650394, 35.007629, 37.271492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112209, 35.101925, 36.865345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271046, 35.457958, 36.954849>,  <36.366348, 35.671577, 37.008553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.271046, 35.457958, 36.954849>,  <36.112209, 35.101925, 36.865345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271046, 35.457958, 36.954849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213213, 0.326602, -0.920799,
		-0.892668, 0.317935, 0.319469,
		0.397094, 0.890083, 0.223759,
		36.390175, 35.724983, 37.021976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646385, 35.640976, 36.690205>,  <36.112209, 35.101925, 36.865345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646385, 35.640976, 36.690205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992901, 35.840538, 36.680111>,  <36.200809, 35.960274, 36.674053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.992901, 35.840538, 36.680111>,  <35.646385, 35.640976, 36.690205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992901, 35.840538, 36.680111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162933, 0.234442, -0.958379,
		-0.472222, 0.834346, 0.284382,
		0.866291, 0.498903, -0.025234,
		36.252789, 35.990208, 36.672543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480061, 36.296619, 36.380901>,  <35.646385, 35.640976, 36.690205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480061, 36.296619, 36.380901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878284, 36.309654, 36.345570>,  <36.117218, 36.317474, 36.324371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878284, 36.309654, 36.345570>,  <35.480061, 36.296619, 36.380901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878284, 36.309654, 36.345570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089198, 0.026188, -0.995670,
		-0.030133, 0.999126, 0.028979,
		0.995558, 0.032587, -0.088331,
		36.176952, 36.319431, 36.319069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580269, 36.847813, 35.895973>,  <35.480061, 36.296619, 36.380901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580269, 36.847813, 35.895973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929901, 36.653919, 35.908764>,  <36.139679, 36.537582, 35.916439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929901, 36.653919, 35.908764>,  <35.580269, 36.847813, 35.895973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929901, 36.653919, 35.908764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072546, 0.065154, -0.995235,
		0.480340, 0.872232, 0.092115,
		0.874077, -0.484733, 0.031981,
		36.192123, 36.508499, 35.918358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005463, 37.262863, 35.434612>,  <35.580269, 36.847813, 35.895973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005463, 37.262863, 35.434612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139713, 36.888500, 35.477364>,  <36.220264, 36.663883, 35.503014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139713, 36.888500, 35.477364>,  <36.005463, 37.262863, 35.434612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139713, 36.888500, 35.477364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138150, -0.063333, -0.988384,
		0.931809, 0.346496, 0.108040,
		0.335629, -0.935911, 0.106882,
		36.240402, 36.607727, 35.509430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626148, 37.322922, 35.033779>,  <36.005463, 37.262863, 35.434612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626148, 37.322922, 35.033779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583294, 36.926079, 35.059826>,  <36.557583, 36.687973, 35.075455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583294, 36.926079, 35.059826>,  <36.626148, 37.322922, 35.033779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583294, 36.926079, 35.059826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082509, -0.074144, -0.993828,
		0.990815, -0.101101, 0.089801,
		-0.107136, -0.992109, 0.065121,
		36.551151, 36.628445, 35.079361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160191, 37.025787, 34.582405>,  <36.626148, 37.322922, 35.033779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160191, 37.025787, 34.582405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852013, 36.774311, 34.624680>,  <36.667107, 36.623425, 34.650043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852013, 36.774311, 34.624680>,  <37.160191, 37.025787, 34.582405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852013, 36.774311, 34.624680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170137, -0.362538, -0.916307,
		0.614388, -0.687980, 0.386278,
		-0.770442, -0.628688, 0.105688,
		36.620880, 36.585705, 34.656387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396111, 36.437920, 34.329891>,  <37.160191, 37.025787, 34.582405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396111, 36.437920, 34.329891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999474, 36.403831, 34.290924>,  <36.761494, 36.383381, 34.267544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999474, 36.403831, 34.290924>,  <37.396111, 36.437920, 34.329891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999474, 36.403831, 34.290924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122238, -0.369125, -0.921306,
		0.042550, -0.925465, 0.376437,
		-0.991588, -0.085217, -0.097420,
		36.701996, 36.378265, 34.261700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251831, 35.831181, 34.068649>,  <37.396111, 36.437920, 34.329891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251831, 35.831181, 34.068649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904106, 36.020340, 34.011150>,  <36.695473, 36.133835, 33.976650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904106, 36.020340, 34.011150>,  <37.251831, 35.831181, 34.068649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904106, 36.020340, 34.011150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028822, -0.241834, -0.969890,
		-0.493420, -0.847281, 0.196599,
		-0.869314, 0.472897, -0.143746,
		36.643311, 36.162209, 33.968025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701946, 35.940784, 33.369259>,  <37.251831, 35.831181, 34.068649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701946, 35.940784, 33.369259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039871, 35.737408, 33.302589>,  <38.242626, 35.615379, 33.262589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039871, 35.737408, 33.302589>,  <37.701946, 35.940784, 33.369259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039871, 35.737408, 33.302589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032393, -0.359531, 0.932571,
		-0.534087, -0.782445, -0.320205,
		0.844809, -0.508446, -0.166675,
		38.293316, 35.584873, 33.252586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617031, 35.323517, 33.748669>,  <37.701946, 35.940784, 33.369259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617031, 35.323517, 33.748669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009678, 35.356972, 33.680035>,  <38.245266, 35.377045, 33.638855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009678, 35.356972, 33.680035>,  <37.617031, 35.323517, 33.748669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009678, 35.356972, 33.680035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189849, -0.334358, 0.923126,
		0.019842, -0.938727, -0.344089,
		0.981613, 0.083642, -0.171582,
		38.304161, 35.382065, 33.628559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933720, 34.601604, 33.812874>,  <37.617031, 35.323517, 33.748669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933720, 34.601604, 33.812874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205345, 34.888615, 33.874870>,  <38.368320, 35.060822, 33.912067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205345, 34.888615, 33.874870>,  <37.933720, 34.601604, 33.812874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205345, 34.888615, 33.874870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177633, -0.365483, 0.913712,
		0.712263, -0.592937, -0.375643,
		0.679065, 0.717529, 0.154994,
		38.409065, 35.103874, 33.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566460, 34.311134, 33.934647>,  <37.933720, 34.601604, 33.812874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566460, 34.311134, 33.934647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607910, 34.666092, 34.114330>,  <38.632782, 34.879066, 34.222141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607910, 34.666092, 34.114330>,  <38.566460, 34.311134, 33.934647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607910, 34.666092, 34.114330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141533, -0.460202, 0.876460,
		0.984494, -0.027250, -0.173286,
		0.103630, 0.887396, 0.449210,
		38.639000, 34.932312, 34.249092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041374, 34.212357, 34.455029>,  <38.566460, 34.311134, 33.934647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041374, 34.212357, 34.455029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828751, 34.539047, 34.544834>,  <38.701180, 34.735062, 34.598717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828751, 34.539047, 34.544834>,  <39.041374, 34.212357, 34.455029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828751, 34.539047, 34.544834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017208, -0.275421, 0.961170,
		0.846849, 0.507050, 0.160455,
		-0.531554, 0.816727, 0.224515,
		38.669285, 34.784065, 34.612190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481628, 34.382717, 34.943295>,  <39.041374, 34.212357, 34.455029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481628, 34.382717, 34.943295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171944, 34.620686, 35.029701>,  <38.986134, 34.763466, 35.081547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171944, 34.620686, 35.029701>,  <39.481628, 34.382717, 34.943295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171944, 34.620686, 35.029701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169641, -0.133768, 0.976385,
		0.609768, 0.792576, 0.002642,
		-0.774213, 0.594920, 0.216021,
		38.939678, 34.799160, 35.094509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732056, 34.766853, 35.463062>,  <39.481628, 34.382717, 34.943295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732056, 34.766853, 35.463062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332943, 34.784615, 35.482910>,  <39.093475, 34.795269, 35.494820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.332943, 34.784615, 35.482910>,  <39.732056, 34.766853, 35.463062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332943, 34.784615, 35.482910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047271, -0.052435, 0.997505,
		0.046891, 0.997637, 0.050220,
		-0.997781, 0.044400, 0.049618,
		39.033607, 34.797935, 35.497795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617393, 35.252144, 35.976158>,  <39.732056, 34.766853, 35.463062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617393, 35.252144, 35.976158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274303, 35.052158, 35.928249>,  <39.068451, 34.932167, 35.899506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.274303, 35.052158, 35.928249>,  <39.617393, 35.252144, 35.976158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274303, 35.052158, 35.928249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154995, 0.029353, 0.987479,
		-0.490190, 0.865548, -0.102669,
		-0.857724, -0.499965, -0.119768,
		39.016987, 34.902168, 35.892319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234184, 35.511543, 36.444775>,  <39.617393, 35.252144, 35.976158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234184, 35.511543, 36.444775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.024910, 35.182598, 36.355335>,  <38.899345, 34.985229, 36.301670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.024910, 35.182598, 36.355335>,  <39.234184, 35.511543, 36.444775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024910, 35.182598, 36.355335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237615, -0.111203, 0.964973,
		-0.818424, 0.557989, -0.137226,
		-0.523184, -0.822364, -0.223598,
		38.867954, 34.935890, 36.288258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574303, 35.504032, 36.832813>,  <39.234184, 35.511543, 36.444775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574303, 35.504032, 36.832813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.653667, 35.117386, 36.767952>,  <38.701286, 34.885399, 36.729034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.653667, 35.117386, 36.767952>,  <38.574303, 35.504032, 36.832813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653667, 35.117386, 36.767952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067883, -0.178601, 0.981577,
		-0.977766, -0.183745, -0.101052,
		0.198407, -0.966612, -0.162157,
		38.713188, 34.827404, 36.719303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102970, 35.171497, 37.252728>,  <38.574303, 35.504032, 36.832813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102970, 35.171497, 37.252728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365314, 34.886166, 37.153927>,  <38.522720, 34.714966, 37.094646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.365314, 34.886166, 37.153927>,  <38.102970, 35.171497, 37.252728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365314, 34.886166, 37.153927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016724, -0.313396, 0.949475,
		-0.754698, -0.626853, -0.193614,
		0.655860, -0.713329, -0.247002,
		38.562073, 34.672169, 37.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830601, 34.517498, 37.604240>,  <38.102970, 35.171497, 37.252728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830601, 34.517498, 37.604240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220234, 34.462547, 37.532364>,  <38.454014, 34.429577, 37.489239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220234, 34.462547, 37.532364>,  <37.830601, 34.517498, 37.604240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220234, 34.462547, 37.532364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145478, -0.227807, 0.962777,
		-0.173196, -0.963967, -0.201918,
		0.974084, -0.137375, -0.179692,
		38.512459, 34.421333, 37.478455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029732, 33.753647, 37.839264>,  <37.830601, 34.517498, 37.604240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029732, 33.753647, 37.839264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355991, 33.983147, 37.809517>,  <38.551746, 34.120846, 37.791668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355991, 33.983147, 37.809517>,  <38.029732, 33.753647, 37.839264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355991, 33.983147, 37.809517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375751, -0.427613, 0.822167,
		0.439918, -0.698542, -0.564368,
		0.815649, 0.573747, -0.074363,
		38.600685, 34.155270, 37.787209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548992, 33.291096, 37.995834>,  <38.029732, 33.753647, 37.839264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548992, 33.291096, 37.995834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721245, 33.647343, 38.054287>,  <38.824596, 33.861092, 38.089359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721245, 33.647343, 38.054287>,  <38.548992, 33.291096, 37.995834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721245, 33.647343, 38.054287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282375, -0.286742, 0.915447,
		0.857216, -0.352958, -0.374969,
		0.430634, 0.890617, 0.146133,
		38.850433, 33.914528, 38.098125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214836, 33.111763, 38.236629>,  <38.548992, 33.291096, 37.995834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214836, 33.111763, 38.236629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147873, 33.483013, 38.369633>,  <39.107697, 33.705765, 38.449436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147873, 33.483013, 38.369633>,  <39.214836, 33.111763, 38.236629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147873, 33.483013, 38.369633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411823, -0.240602, 0.878927,
		0.895755, 0.284070, -0.341945,
		-0.167404, 0.928124, 0.332507,
		39.097652, 33.761452, 38.469383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775513, 33.204006, 38.491341>,  <39.214836, 33.111763, 38.236629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775513, 33.204006, 38.491341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.542011, 33.485775, 38.652843>,  <39.401909, 33.654835, 38.749744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.542011, 33.485775, 38.652843>,  <39.775513, 33.204006, 38.491341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542011, 33.485775, 38.652843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281980, -0.290430, 0.914406,
		0.761390, 0.647641, -0.029093,
		-0.583757, 0.704423, 0.403752,
		39.366882, 33.697102, 38.773968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225819, 33.582584, 38.998589>,  <39.775513, 33.204006, 38.491341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225819, 33.582584, 38.998589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850822, 33.645729, 39.122650>,  <39.625824, 33.683617, 39.197086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850822, 33.645729, 39.122650>,  <40.225819, 33.582584, 38.998589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850822, 33.645729, 39.122650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227299, -0.397132, 0.889169,
		0.263539, 0.904083, 0.336425,
		-0.937487, 0.157862, 0.310157,
		39.569576, 33.693089, 39.215698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375725, 33.897705, 39.588120>,  <40.225819, 33.582584, 38.998589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375725, 33.897705, 39.588120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002831, 33.754562, 39.609608>,  <39.779095, 33.668678, 39.622501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002831, 33.754562, 39.609608>,  <40.375725, 33.897705, 39.588120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002831, 33.754562, 39.609608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169596, -0.300939, 0.938442,
		-0.319660, 0.883955, 0.341236,
		-0.932231, -0.357855, 0.053717,
		39.723160, 33.647205, 39.625721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.961182, 34.338535, 40.146858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743237, 34.005627, 40.105984>,  <39.612469, 33.805882, 40.081459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743237, 34.005627, 40.105984>,  <39.961182, 34.338535, 40.146858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743237, 34.005627, 40.105984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102648, -0.187146, 0.976954,
		-0.832217, 0.521820, 0.187401,
		-0.544866, -0.832274, -0.102182,
		39.579777, 33.755943, 40.075329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450523, 34.315998, 40.663258>,  <39.961182, 34.338535, 40.146858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450523, 34.315998, 40.663258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482742, 33.933903, 40.549389>,  <39.502075, 33.704647, 40.481068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482742, 33.933903, 40.549389>,  <39.450523, 34.315998, 40.663258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482742, 33.933903, 40.549389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001331, -0.285495, 0.958379,
		-0.996750, -0.077575, -0.021725,
		0.080549, -0.955236, -0.284670,
		39.506908, 33.647331, 40.463989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905346, 34.000378, 40.982750>,  <39.450523, 34.315998, 40.663258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905346, 34.000378, 40.982750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148979, 33.696957, 40.890121>,  <39.295158, 33.514904, 40.834545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148979, 33.696957, 40.890121>,  <38.905346, 34.000378, 40.982750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148979, 33.696957, 40.890121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089154, -0.355615, 0.930370,
		-0.788082, -0.546024, -0.284226,
		0.609080, -0.758548, -0.231574,
		39.331703, 33.469391, 40.820648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593708, 33.468063, 41.257931>,  <38.905346, 34.000378, 40.982750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593708, 33.468063, 41.257931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972282, 33.343342, 41.224377>,  <39.199429, 33.268509, 41.204247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972282, 33.343342, 41.224377>,  <38.593708, 33.468063, 41.257931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972282, 33.343342, 41.224377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027149, -0.335709, 0.941575,
		-0.321746, -0.888864, -0.326192,
		0.946437, -0.311803, -0.083881,
		39.256214, 33.249802, 41.199211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585949, 32.805050, 41.614582>,  <38.593708, 33.468063, 41.257931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585949, 32.805050, 41.614582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965378, 32.931599, 41.619019>,  <39.193035, 33.007530, 41.621681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965378, 32.931599, 41.619019>,  <38.585949, 32.805050, 41.614582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965378, 32.931599, 41.619019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109540, -0.360888, 0.926154,
		0.297014, -0.877307, -0.376983,
		0.948569, 0.316375, 0.011089,
		39.249950, 33.026512, 41.622345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908295, 32.227123, 41.843594>,  <38.585949, 32.805050, 41.614582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908295, 32.227123, 41.843594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125435, 32.556038, 41.911900>,  <39.255718, 32.753387, 41.952885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125435, 32.556038, 41.911900>,  <38.908295, 32.227123, 41.843594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125435, 32.556038, 41.911900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217109, -0.333826, 0.917292,
		0.811282, -0.460875, -0.359743,
		0.542848, 0.822286, 0.170767,
		39.288288, 32.802723, 41.963131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497292, 31.957096, 42.148205>,  <38.908295, 32.227123, 41.843594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497292, 31.957096, 42.148205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467850, 32.345943, 42.237259>,  <39.450184, 32.579250, 42.290691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.467850, 32.345943, 42.237259>,  <39.497292, 31.957096, 42.148205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467850, 32.345943, 42.237259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246484, -0.198584, 0.948583,
		0.966347, 0.124699, -0.224995,
		-0.073607, 0.972118, 0.222638,
		39.445766, 32.637581, 42.304050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079575, 32.086525, 42.440323>,  <39.497292, 31.957096, 42.148205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079575, 32.086525, 42.440323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842224, 32.380600, 42.571407>,  <39.699814, 32.557045, 42.650059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842224, 32.380600, 42.571407>,  <40.079575, 32.086525, 42.440323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842224, 32.380600, 42.571407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280773, -0.192514, 0.940268,
		0.754367, 0.649948, -0.092188,
		-0.593378, 0.735191, 0.327714,
		39.664211, 32.601158, 42.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375183, 32.230812, 43.010197>,  <40.079575, 32.086525, 42.440323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375183, 32.230812, 43.010197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039761, 32.446198, 43.043381>,  <39.838509, 32.575428, 43.063290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039761, 32.446198, 43.043381>,  <40.375183, 32.230812, 43.010197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039761, 32.446198, 43.043381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055058, -0.067740, 0.996183,
		0.542027, 0.839922, 0.027157,
		-0.838555, 0.538463, 0.082961,
		39.788193, 32.607735, 43.068268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625015, 32.707588, 43.500732>,  <40.375183, 32.230812, 43.010197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625015, 32.707588, 43.500732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227821, 32.662357, 43.486916>,  <39.989506, 32.635220, 43.478626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227821, 32.662357, 43.486916>,  <40.625015, 32.707588, 43.500732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227821, 32.662357, 43.486916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002340, -0.273279, 0.961932,
		-0.118211, 0.955266, 0.271098,
		-0.992986, -0.113076, -0.034540,
		39.929924, 32.628433, 43.476555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299633, 33.007111, 44.130077>,  <40.625015, 32.707588, 43.500732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299633, 33.007111, 44.130077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025299, 32.745544, 44.002304>,  <39.860699, 32.588608, 43.925640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025299, 32.745544, 44.002304>,  <40.299633, 33.007111, 44.130077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025299, 32.745544, 44.002304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058245, -0.388195, 0.919735,
		-0.725426, 0.649389, 0.228149,
		-0.685832, -0.653911, -0.319430,
		39.819550, 32.549370, 43.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672241, 33.013515, 44.682621>,  <40.299633, 33.007111, 44.130077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672241, 33.013515, 44.682621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652283, 32.674522, 44.471230>,  <39.640308, 32.471127, 44.344395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652283, 32.674522, 44.471230>,  <39.672241, 33.013515, 44.682621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652283, 32.674522, 44.471230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001745, -0.529063, 0.848580,
		-0.998753, 0.043263, 0.024919,
		-0.049896, -0.847479, -0.528479,
		39.637314, 32.420280, 44.312687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349392, 32.644176, 45.150612>,  <39.672241, 33.013515, 44.682621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349392, 32.644176, 45.150612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504959, 32.375572, 44.898319>,  <39.598301, 32.214409, 44.746944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504959, 32.375572, 44.898319>,  <39.349392, 32.644176, 45.150612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504959, 32.375572, 44.898319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148598, -0.629939, 0.762296,
		-0.909210, -0.390195, -0.145209,
		0.388917, -0.671509, -0.630729,
		39.621635, 32.174118, 44.709099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002750, 32.096436, 45.183743>,  <39.349392, 32.644176, 45.150612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002750, 32.096436, 45.183743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351330, 31.948088, 45.055344>,  <39.560478, 31.859079, 44.978306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351330, 31.948088, 45.055344>,  <39.002750, 32.096436, 45.183743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351330, 31.948088, 45.055344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116878, -0.792601, 0.598434,
		-0.476362, -0.483986, -0.734055,
		0.871447, -0.370866, -0.320998,
		39.612762, 31.836828, 44.959045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846516, 31.332188, 45.248489>,  <39.002750, 32.096436, 45.183743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846516, 31.332188, 45.248489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241234, 31.360361, 45.190136>,  <39.478065, 31.377266, 45.155125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.241234, 31.360361, 45.190136>,  <38.846516, 31.332188, 45.248489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241234, 31.360361, 45.190136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147025, -0.767496, 0.623966,
		-0.068013, -0.637172, -0.767714,
		0.986791, 0.070436, -0.145880,
		39.537270, 31.381493, 45.146370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116932, 30.633043, 45.177605>,  <38.846516, 31.332188, 45.248489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116932, 30.633043, 45.177605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439339, 30.852930, 45.265369>,  <39.632782, 30.984861, 45.318027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.439339, 30.852930, 45.265369>,  <39.116932, 30.633043, 45.177605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439339, 30.852930, 45.265369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333710, -0.728230, 0.598597,
		0.488844, -0.409260, -0.770414,
		0.806021, 0.549715, 0.219417,
		39.681145, 31.017845, 45.331196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680450, 30.294716, 45.073353>,  <39.116932, 30.633043, 45.177605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680450, 30.294716, 45.073353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840801, 30.564430, 45.321430>,  <39.937012, 30.726259, 45.470276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840801, 30.564430, 45.321430>,  <39.680450, 30.294716, 45.073353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840801, 30.564430, 45.321430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469900, -0.732471, 0.492626,
		0.786444, 0.093948, -0.610475,
		0.400874, 0.674285, 0.620194,
		39.961063, 30.766716, 45.507488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170986, 30.008062, 45.306023>,  <39.680450, 30.294716, 45.073353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170986, 30.008062, 45.306023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157585, 30.287357, 45.592056>,  <40.149544, 30.454935, 45.763676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157585, 30.287357, 45.592056>,  <40.170986, 30.008062, 45.306023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157585, 30.287357, 45.592056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317477, -0.670992, 0.670058,
		0.947674, 0.249468, -0.199196,
		-0.033499, 0.698237, 0.715082,
		40.147537, 30.496828, 45.806580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802994, 29.965191, 45.693443>,  <40.170986, 30.008062, 45.306023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802994, 29.965191, 45.693443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.534634, 30.136505, 45.935589>,  <40.373619, 30.239294, 46.080875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.534634, 30.136505, 45.935589>,  <40.802994, 29.965191, 45.693443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534634, 30.136505, 45.935589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166194, -0.708744, 0.685610,
		0.722684, 0.560584, 0.404319,
		-0.670901, 0.428284, 0.605364,
		40.333363, 30.264990, 46.117199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157032, 29.982878, 46.213566>,  <40.802994, 29.965191, 45.693443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157032, 29.982878, 46.213566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793499, 30.041426, 46.369820>,  <40.575378, 30.076553, 46.463573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793499, 30.041426, 46.369820>,  <41.157032, 29.982878, 46.213566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793499, 30.041426, 46.369820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268190, -0.512249, 0.815889,
		0.319524, 0.846272, 0.426295,
		-0.908834, 0.146368, 0.390638,
		40.520847, 30.085337, 46.487011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229149, 30.314289, 46.914265>,  <41.157032, 29.982878, 46.213566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229149, 30.314289, 46.914265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.880138, 30.119595, 46.897343>,  <40.670734, 30.002777, 46.887192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.880138, 30.119595, 46.897343>,  <41.229149, 30.314289, 46.914265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880138, 30.119595, 46.897343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258468, -0.533331, 0.805451,
		-0.414603, 0.691842, 0.591150,
		-0.872524, -0.486736, -0.042302,
		40.618382, 29.973574, 46.884651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065598, 30.249996, 47.540462>,  <41.229149, 30.314289, 46.914265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065598, 30.249996, 47.540462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863670, 29.953442, 47.363598>,  <40.742516, 29.775509, 47.257481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863670, 29.953442, 47.363598>,  <41.065598, 30.249996, 47.540462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863670, 29.953442, 47.363598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312006, -0.634295, 0.707334,
		-0.804867, 0.219119, 0.551521,
		-0.504817, -0.741388, -0.442157,
		40.712227, 29.731026, 47.230949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735374, 29.830256, 48.079899>,  <41.065598, 30.249996, 47.540462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735374, 29.830256, 48.079899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818371, 29.629822, 47.743835>,  <40.868168, 29.509562, 47.542198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.818371, 29.629822, 47.743835>,  <40.735374, 29.830256, 48.079899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818371, 29.629822, 47.743835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323555, -0.775356, 0.542343,
		-0.923180, -0.384366, 0.001252,
		0.207488, -0.501085, -0.840156,
		40.880619, 29.479496, 47.491787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038239, 29.769417, 47.864555>,  <40.735374, 29.830256, 48.079899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038239, 29.769417, 47.864555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.204872, 29.644674, 48.206127>,  <40.304852, 29.569828, 48.411072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.204872, 29.644674, 48.206127>,  <40.038239, 29.769417, 47.864555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204872, 29.644674, 48.206127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350262, -0.921862, -0.165791,
		0.838910, -0.230033, -0.493269,
		0.416588, -0.311858, 0.853932,
		40.329849, 29.551117, 48.462307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403828, 29.969360, 48.063618>,  <40.038239, 29.769417, 47.864555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403828, 29.969360, 48.063618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030373, 29.958933, 48.206520>,  <38.806297, 29.952677, 48.292263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030373, 29.958933, 48.206520>,  <39.403828, 29.969360, 48.063618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030373, 29.958933, 48.206520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336170, 0.408189, -0.848747,
		-0.123701, -0.912525, -0.389867,
		-0.933642, -0.026070, 0.357257,
		38.750278, 29.951113, 48.313698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926613, 29.742678, 47.501335>,  <39.403828, 29.969360, 48.063618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926613, 29.742678, 47.501335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659363, 29.925549, 47.736145>,  <38.499012, 30.035271, 47.877029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659363, 29.925549, 47.736145>,  <38.926613, 29.742678, 47.501335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659363, 29.925549, 47.736145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443080, 0.389344, -0.807522,
		-0.597733, -0.799625, -0.057566,
		-0.668128, 0.457176, 0.587022,
		38.458923, 30.062702, 47.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289993, 29.634167, 47.155800>,  <38.926613, 29.742678, 47.501335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289993, 29.634167, 47.155800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212021, 29.942633, 47.398224>,  <38.165237, 30.127712, 47.543678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212021, 29.942633, 47.398224>,  <38.289993, 29.634167, 47.155800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212021, 29.942633, 47.398224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509957, 0.448139, -0.734245,
		-0.837823, -0.452187, 0.305908,
		-0.194926, 0.771167, 0.606057,
		38.153542, 30.173983, 47.580040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488483, 29.882385, 47.050789>,  <38.289993, 29.634167, 47.155800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488483, 29.882385, 47.050789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668510, 30.190245, 47.231934>,  <37.776527, 30.374960, 47.340622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.668510, 30.190245, 47.231934>,  <37.488483, 29.882385, 47.050789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668510, 30.190245, 47.231934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438549, 0.632258, -0.638690,
		-0.777892, 0.088850, 0.622086,
		0.450066, 0.769647, 0.452863,
		37.803532, 30.421139, 47.367794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996929, 30.437193, 47.228138>,  <37.488483, 29.882385, 47.050789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996929, 30.437193, 47.228138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358727, 30.607302, 47.215298>,  <37.575806, 30.709366, 47.207592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358727, 30.607302, 47.215298>,  <36.996929, 30.437193, 47.228138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358727, 30.607302, 47.215298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370256, 0.745674, -0.553969,
		-0.211649, 0.512949, 0.831918,
		0.904497, 0.425270, -0.032102,
		37.630077, 30.734882, 47.205666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837868, 31.137594, 47.190277>,  <36.996929, 30.437193, 47.228138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837868, 31.137594, 47.190277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220531, 31.129059, 47.074104>,  <37.450130, 31.123938, 47.004402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220531, 31.129059, 47.074104>,  <36.837868, 31.137594, 47.190277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220531, 31.129059, 47.074104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124585, 0.871447, -0.474403,
		0.263218, 0.490025, 0.831019,
		0.956658, -0.021338, -0.290430,
		37.507530, 31.122658, 46.986977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093067, 31.792137, 47.244713>,  <36.837868, 31.137594, 47.190277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093067, 31.792137, 47.244713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371307, 31.636889, 47.002888>,  <37.538254, 31.543739, 46.857792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371307, 31.636889, 47.002888>,  <37.093067, 31.792137, 47.244713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371307, 31.636889, 47.002888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123456, 0.764417, -0.632791,
		0.707738, 0.514809, 0.483816,
		0.695604, -0.388121, -0.604564,
		37.579990, 31.520452, 46.821518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495411, 32.419842, 47.053181>,  <37.093067, 31.792137, 47.244713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495411, 32.419842, 47.053181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553230, 32.137440, 46.775860>,  <37.587921, 31.967999, 46.609467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553230, 32.137440, 46.775860>,  <37.495411, 32.419842, 47.053181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553230, 32.137440, 46.775860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006795, 0.699934, -0.714175,
		0.989475, 0.107942, 0.096376,
		0.144546, -0.706003, -0.693301,
		37.596596, 31.925638, 46.567871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094105, 32.593914, 46.640480>,  <37.495411, 32.419842, 47.053181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094105, 32.593914, 46.640480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.894932, 32.336689, 46.407745>,  <37.775429, 32.182354, 46.268105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.894932, 32.336689, 46.407745>,  <38.094105, 32.593914, 46.640480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894932, 32.336689, 46.407745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004431, 0.669028, -0.743224,
		0.867207, -0.372650, -0.330278,
		-0.497927, -0.643066, -0.581837,
		37.745552, 32.143768, 46.233192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541920, 32.485195, 46.079491>,  <38.094105, 32.593914, 46.640480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541920, 32.485195, 46.079491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178276, 32.372337, 45.956913>,  <37.960091, 32.304623, 45.883366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178276, 32.372337, 45.956913>,  <38.541920, 32.485195, 46.079491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178276, 32.372337, 45.956913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139003, 0.488008, -0.861700,
		0.392670, -0.825979, -0.404436,
		-0.909114, -0.282146, -0.306440,
		37.905540, 32.287693, 45.864983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543327, 32.644485, 45.485592>,  <38.541920, 32.485195, 46.079491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543327, 32.644485, 45.485592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150646, 32.569344, 45.498077>,  <37.915039, 32.524258, 45.505569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150646, 32.569344, 45.498077>,  <38.543327, 32.644485, 45.485592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150646, 32.569344, 45.498077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117818, 0.470407, -0.874549,
		0.149608, -0.862222, -0.483932,
		-0.981701, -0.187856, 0.031209,
		37.856136, 32.512985, 45.507439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380188, 32.319801, 44.887486>,  <38.543327, 32.644485, 45.485592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380188, 32.319801, 44.887486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046505, 32.496014, 45.020168>,  <37.846294, 32.601742, 45.099777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.046505, 32.496014, 45.020168>,  <38.380188, 32.319801, 44.887486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046505, 32.496014, 45.020168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133236, 0.422677, -0.896433,
		-0.535111, -0.792007, -0.293907,
		-0.834209, 0.440532, 0.331703,
		37.796242, 32.628174, 45.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760761, 32.092670, 44.421516>,  <38.380188, 32.319801, 44.887486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760761, 32.092670, 44.421516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666393, 32.435520, 44.604679>,  <37.609772, 32.641232, 44.714577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666393, 32.435520, 44.604679>,  <37.760761, 32.092670, 44.421516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666393, 32.435520, 44.604679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235090, 0.406874, -0.882715,
		-0.942908, -0.315899, 0.105512,
		-0.235919, 0.857124, 0.457910,
		37.595619, 32.692657, 44.742050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230240, 32.352547, 44.036358>,  <37.760761, 32.092670, 44.421516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230240, 32.352547, 44.036358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340328, 32.684883, 44.229832>,  <37.406380, 32.884285, 44.345917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340328, 32.684883, 44.229832>,  <37.230240, 32.352547, 44.036358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340328, 32.684883, 44.229832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251417, 0.547810, -0.797931,
		-0.927924, 0.098000, 0.359657,
		0.275221, 0.830843, 0.483687,
		37.422894, 32.934135, 44.374939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743393, 32.825809, 43.933907>,  <37.230240, 32.352547, 44.036358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743393, 32.825809, 43.933907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060505, 33.052284, 44.024178>,  <37.250774, 33.188168, 44.078342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.060505, 33.052284, 44.024178>,  <36.743393, 32.825809, 43.933907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060505, 33.052284, 44.024178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185230, 0.576560, -0.795781,
		-0.580677, 0.589079, 0.561961,
		0.792782, 0.566184, 0.225680,
		37.298340, 33.222141, 44.091881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586338, 33.428890, 43.631477>,  <36.743393, 32.825809, 43.933907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586338, 33.428890, 43.631477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974106, 33.479061, 43.715851>,  <37.206768, 33.509163, 43.766476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974106, 33.479061, 43.715851>,  <36.586338, 33.428890, 43.631477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974106, 33.479061, 43.715851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083383, 0.640041, -0.763803,
		-0.230805, 0.758034, 0.610011,
		0.969421, 0.125424, 0.210932,
		37.264931, 33.516689, 43.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720718, 34.166508, 43.938564>,  <36.586338, 33.428890, 43.631477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720718, 34.166508, 43.938564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012157, 33.988541, 43.730259>,  <37.187019, 33.881760, 43.605274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012157, 33.988541, 43.730259>,  <36.720718, 34.166508, 43.938564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012157, 33.988541, 43.730259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009687, 0.753537, -0.657334,
		0.684873, 0.483977, 0.544716,
		0.728598, -0.444914, -0.520765,
		37.230736, 33.855068, 43.574028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287659, 34.688606, 43.817497>,  <36.720718, 34.166508, 43.938564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287659, 34.688606, 43.817497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330563, 34.423092, 43.521423>,  <37.356304, 34.263783, 43.343777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330563, 34.423092, 43.521423>,  <37.287659, 34.688606, 43.817497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330563, 34.423092, 43.521423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058314, 0.739001, -0.671176,
		0.992520, 0.115151, 0.040554,
		0.107256, -0.663790, -0.740188,
		37.362740, 34.223953, 43.299366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748428, 35.003693, 43.348465>,  <37.287659, 34.688606, 43.817497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748428, 35.003693, 43.348465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589981, 34.716995, 43.118904>,  <37.494911, 34.544975, 42.981167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589981, 34.716995, 43.118904>,  <37.748428, 35.003693, 43.348465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589981, 34.716995, 43.118904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183574, 0.674232, -0.715341,
		0.899661, -0.178007, -0.398652,
		-0.396120, -0.716746, -0.573902,
		37.471146, 34.501972, 42.946735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093399, 35.033173, 42.722996>,  <37.748428, 35.003693, 43.348465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093399, 35.033173, 42.722996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746349, 34.843452, 42.663311>,  <37.538120, 34.729622, 42.627499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746349, 34.843452, 42.663311>,  <38.093399, 35.033173, 42.722996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746349, 34.843452, 42.663311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148773, 0.533992, -0.832298,
		0.474434, -0.699926, -0.533869,
		-0.867629, -0.474295, -0.149214,
		37.486061, 34.701164, 42.618546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.342548, 44.897472, 32.131313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.127941, 44.878029, 31.794319>,  <40.999176, 44.866364, 31.592123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.127941, 44.878029, 31.794319>,  <41.342548, 44.897472, 32.131313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127941, 44.878029, 31.794319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162132, -0.985679, -0.046381,
		-0.828167, -0.161478, 0.536716,
		-0.536519, -0.048608, -0.842487,
		40.966984, 44.863445, 31.541573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952034, 44.333073, 32.200706>,  <41.342548, 44.897472, 32.131313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952034, 44.333073, 32.200706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.969795, 44.392818, 31.805593>,  <40.980453, 44.428665, 31.568525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.969795, 44.392818, 31.805593>,  <40.952034, 44.333073, 32.200706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969795, 44.392818, 31.805593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064210, -0.987142, -0.146382,
		-0.996948, -0.056925, -0.053427,
		0.044407, 0.149366, -0.987784,
		40.983116, 44.437630, 31.509258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466824, 43.794312, 31.966705>,  <40.952034, 44.333073, 32.200706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466824, 43.794312, 31.966705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694820, 43.880615, 31.649580>,  <40.831619, 43.932396, 31.459305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694820, 43.880615, 31.649580>,  <40.466824, 43.794312, 31.966705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694820, 43.880615, 31.649580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099202, -0.939777, -0.327074,
		-0.815639, 0.265079, -0.514263,
		0.569993, 0.215759, -0.792816,
		40.865818, 43.945343, 31.411736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116394, 43.403069, 31.458410>,  <40.466824, 43.794312, 31.966705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116394, 43.403069, 31.458410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.488537, 43.448650, 31.319010>,  <40.711823, 43.475998, 31.235371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.488537, 43.448650, 31.319010>,  <40.116394, 43.403069, 31.458410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488537, 43.448650, 31.319010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020399, -0.932920, -0.359506,
		-0.366090, 0.341578, -0.865623,
		0.930356, 0.113954, -0.348500,
		40.767643, 43.482838, 31.214460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070156, 43.021137, 30.909262>,  <40.116394, 43.403069, 31.458410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070156, 43.021137, 30.909262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.462963, 43.052475, 30.977966>,  <40.698647, 43.071278, 31.019190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.462963, 43.052475, 30.977966>,  <40.070156, 43.021137, 30.909262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462963, 43.052475, 30.977966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114435, -0.970654, -0.211509,
		0.150151, 0.227361, -0.962165,
		0.982018, 0.078347, 0.171763,
		40.757568, 43.075977, 31.029495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499966, 42.589886, 30.324453>,  <40.070156, 43.021137, 30.909262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499966, 42.589886, 30.324453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.770760, 42.666687, 30.608658>,  <40.933235, 42.712769, 30.779181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.770760, 42.666687, 30.608658>,  <40.499966, 42.589886, 30.324453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770760, 42.666687, 30.608658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314848, -0.948132, -0.043774,
		0.665256, 0.253338, -0.702321,
		0.676983, 0.192003, 0.710513,
		40.973854, 42.724289, 30.821812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115005, 42.328953, 30.030817>,  <40.499966, 42.589886, 30.324453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115005, 42.328953, 30.030817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175388, 42.347855, 30.425781>,  <41.211620, 42.359196, 30.662760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175388, 42.347855, 30.425781>,  <41.115005, 42.328953, 30.030817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175388, 42.347855, 30.425781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508746, -0.860137, -0.036616,
		0.847578, 0.507869, -0.153889,
		0.150962, 0.047256, 0.987410,
		41.220676, 42.362030, 30.722004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827332, 42.179955, 30.144278>,  <41.115005, 42.328953, 30.030817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827332, 42.179955, 30.144278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.639820, 42.080265, 30.483248>,  <41.527313, 42.020451, 30.686630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.639820, 42.080265, 30.483248>,  <41.827332, 42.179955, 30.144278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639820, 42.080265, 30.483248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497903, -0.866991, 0.020450,
		0.729614, 0.431523, 0.530520,
		-0.468781, -0.249227, 0.847426,
		41.499187, 42.005497, 30.737476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279716, 41.855103, 30.569088>,  <41.827332, 42.179955, 30.144278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279716, 41.855103, 30.569088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.943783, 41.741238, 30.753977>,  <41.742222, 41.672916, 30.864910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.943783, 41.741238, 30.753977>,  <42.279716, 41.855103, 30.569088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943783, 41.741238, 30.753977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387410, -0.910749, 0.143003,
		0.380260, 0.299168, 0.875157,
		-0.839830, -0.284666, 0.462223,
		41.691833, 41.655838, 30.892643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543091, 41.424122, 30.982635>,  <42.279716, 41.855103, 30.569088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543091, 41.424122, 30.982635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154884, 41.328472, 30.994732>,  <41.921959, 41.271084, 31.001989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.154884, 41.328472, 30.994732>,  <42.543091, 41.424122, 30.982635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154884, 41.328472, 30.994732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240790, -0.956292, 0.165910,
		-0.010754, 0.168300, 0.985677,
		-0.970518, -0.239126, 0.030241,
		41.863728, 41.256733, 31.003805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472237, 41.063019, 31.558981>,  <42.543091, 41.424122, 30.982635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472237, 41.063019, 31.558981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161282, 40.940510, 31.339211>,  <41.974709, 40.867004, 31.207348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161282, 40.940510, 31.339211>,  <42.472237, 41.063019, 31.558981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161282, 40.940510, 31.339211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168897, -0.943016, 0.286696,
		-0.605923, 0.130077, 0.784817,
		-0.777387, -0.306269, -0.549426,
		41.928066, 40.848629, 31.174383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085049, 40.537769, 31.985142>,  <42.472237, 41.063019, 31.558981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085049, 40.537769, 31.985142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999043, 40.471710, 31.600124>,  <41.947441, 40.432076, 31.369114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999043, 40.471710, 31.600124>,  <42.085049, 40.537769, 31.985142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999043, 40.471710, 31.600124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128193, -0.981843, 0.139826,
		-0.968161, -0.093327, 0.232280,
		-0.215013, -0.165151, -0.962546,
		41.934540, 40.422165, 31.311361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729584, 39.945206, 32.003784>,  <42.085049, 40.537769, 31.985142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729584, 39.945206, 32.003784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848660, 39.963902, 31.622377>,  <41.920105, 39.975121, 31.393534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848660, 39.963902, 31.622377>,  <41.729584, 39.945206, 32.003784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848660, 39.963902, 31.622377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151286, -0.988489, -0.001221,
		-0.942600, -0.143890, -0.301333,
		0.297689, 0.046738, -0.953518,
		41.937965, 39.977924, 31.336323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244675, 39.521305, 31.658934>,  <41.729584, 39.945206, 32.003784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244675, 39.521305, 31.658934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566746, 39.553589, 31.423929>,  <41.759991, 39.572960, 31.282927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.566746, 39.553589, 31.423929>,  <41.244675, 39.521305, 31.658934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566746, 39.553589, 31.423929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016727, -0.987210, -0.158544,
		-0.592795, 0.137484, -0.793532,
		0.805180, 0.080711, -0.587513,
		41.808300, 39.577801, 31.247675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122433, 39.143139, 31.173105>,  <41.244675, 39.521305, 31.658934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122433, 39.143139, 31.173105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520748, 39.173626, 31.152756>,  <41.759739, 39.191917, 31.140545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520748, 39.173626, 31.152756>,  <41.122433, 39.143139, 31.173105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520748, 39.173626, 31.152756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066516, -0.983045, -0.170878,
		-0.063038, 0.166775, -0.983978,
		0.995792, 0.076222, -0.050876,
		41.819485, 39.196491, 31.137493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330727, 38.522419, 30.745029>,  <41.122433, 39.143139, 31.173105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330727, 38.522419, 30.745029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675728, 38.652340, 30.900255>,  <41.882729, 38.730293, 30.993391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675728, 38.652340, 30.900255>,  <41.330727, 38.522419, 30.745029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675728, 38.652340, 30.900255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369268, -0.928292, -0.043771,
		0.346021, 0.181053, -0.920592,
		0.862502, 0.324800, 0.388066,
		41.934479, 38.749779, 31.016674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836143, 38.202705, 30.339443>,  <41.330727, 38.522419, 30.745029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836143, 38.202705, 30.339443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.014771, 38.302052, 30.683279>,  <42.121948, 38.361660, 30.889580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.014771, 38.302052, 30.683279>,  <41.836143, 38.202705, 30.339443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014771, 38.302052, 30.683279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455846, -0.889827, 0.020288,
		0.769923, 0.382780, -0.510585,
		0.446567, 0.248368, 0.859588,
		42.148739, 38.376560, 30.941154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463352, 37.949020, 30.253725>,  <41.836143, 38.202705, 30.339443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463352, 37.949020, 30.253725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422867, 37.998772, 30.648548>,  <42.398575, 38.028622, 30.885443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422867, 37.998772, 30.648548>,  <42.463352, 37.949020, 30.253725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422867, 37.998772, 30.648548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397857, -0.904302, 0.154748,
		0.911847, 0.408371, 0.042042,
		-0.101213, 0.124380, 0.987059,
		42.392502, 38.036087, 30.944666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096725, 38.019474, 30.610846>,  <42.463352, 37.949020, 30.253725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096725, 38.019474, 30.610846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845177, 37.906063, 30.900434>,  <42.694248, 37.838017, 31.074188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845177, 37.906063, 30.900434>,  <43.096725, 38.019474, 30.610846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845177, 37.906063, 30.900434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605044, -0.763250, 0.226653,
		0.488311, 0.580571, 0.651529,
		-0.628868, -0.283526, 0.723974,
		42.656517, 37.821007, 31.117626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587738, 37.972164, 31.220530>,  <43.096725, 38.019474, 30.610846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587738, 37.972164, 31.220530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267487, 37.746456, 31.301123>,  <43.075336, 37.611031, 31.349478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.267487, 37.746456, 31.301123>,  <43.587738, 37.972164, 31.220530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267487, 37.746456, 31.301123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597896, -0.774248, 0.207511,
		0.038904, 0.286604, 0.957259,
		-0.800629, -0.564268, 0.201481,
		43.027298, 37.577175, 31.361567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832024, 37.619511, 31.855694>,  <43.587738, 37.972164, 31.220530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832024, 37.619511, 31.855694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532009, 37.419800, 31.682182>,  <43.352001, 37.299973, 31.578075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532009, 37.419800, 31.682182>,  <43.832024, 37.619511, 31.855694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532009, 37.419800, 31.682182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351815, -0.856546, 0.377565,
		-0.560059, 0.130580, 0.818097,
		-0.750040, -0.499278, -0.433776,
		43.306995, 37.270016, 31.552050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272072, 37.170712, 32.170753>,  <43.832024, 37.619511, 31.855694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272072, 37.170712, 32.170753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.457153, 37.092960, 32.516727>,  <44.568203, 37.046310, 32.724312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.457153, 37.092960, 32.516727>,  <44.272072, 37.170712, 32.170753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457153, 37.092960, 32.516727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082217, 0.962052, 0.260183,
		-0.882690, -0.191502, 0.429168,
		0.462707, -0.194376, 0.864939,
		44.595966, 37.034649, 32.776211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878536, 37.458961, 32.587151>,  <44.272072, 37.170712, 32.170753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878536, 37.458961, 32.587151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217796, 37.431992, 32.797329>,  <44.421352, 37.415810, 32.923435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217796, 37.431992, 32.797329>,  <43.878536, 37.458961, 32.587151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217796, 37.431992, 32.797329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101436, 0.952843, 0.286009,
		-0.519954, -0.295878, 0.801314,
		0.848150, -0.067430, 0.525447,
		44.472240, 37.411762, 32.954964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778519, 37.658123, 33.274384>,  <43.878536, 37.458961, 32.587151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778519, 37.658123, 33.274384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163223, 37.730053, 33.191746>,  <44.394047, 37.773212, 33.142162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163223, 37.730053, 33.191746>,  <43.778519, 37.658123, 33.274384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163223, 37.730053, 33.191746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130938, 0.964372, 0.229873,
		0.240576, -0.194031, 0.951039,
		0.961758, 0.179829, -0.206599,
		44.451752, 37.784000, 33.129765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028854, 38.137638, 33.787899>,  <43.778519, 37.658123, 33.274384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028854, 38.137638, 33.787899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295235, 38.145447, 33.489601>,  <44.455063, 38.150131, 33.310623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295235, 38.145447, 33.489601>,  <44.028854, 38.137638, 33.787899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295235, 38.145447, 33.489601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102456, 0.992578, -0.065508,
		0.738929, 0.120031, 0.663006,
		0.665948, 0.019523, -0.745743,
		44.495018, 38.151302, 33.265877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609859, 38.557575, 34.028656>,  <44.028854, 38.137638, 33.787899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609859, 38.557575, 34.028656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606915, 38.552956, 33.628693>,  <44.605148, 38.550182, 33.388714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606915, 38.552956, 33.628693>,  <44.609859, 38.557575, 34.028656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606915, 38.552956, 33.628693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058233, 0.998231, -0.011960,
		0.998276, -0.058315, -0.006681,
		-0.007367, -0.011551, -0.999906,
		44.604706, 38.549492, 33.328720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971462, 39.130733, 33.989944>,  <44.609859, 38.557575, 34.028656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971462, 39.130733, 33.989944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824867, 39.071884, 33.622459>,  <44.736912, 39.036575, 33.401966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824867, 39.071884, 33.622459>,  <44.971462, 39.130733, 33.989944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824867, 39.071884, 33.622459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113897, 0.972898, -0.201240,
		0.923424, -0.178391, -0.339799,
		-0.366489, -0.147128, -0.918716,
		44.714920, 39.027744, 33.346844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448315, 39.555172, 33.514130>,  <44.971462, 39.130733, 33.989944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448315, 39.555172, 33.514130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092815, 39.476208, 33.348648>,  <44.879517, 39.428829, 33.249359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092815, 39.476208, 33.348648>,  <45.448315, 39.555172, 33.514130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092815, 39.476208, 33.348648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062946, 0.946522, -0.316438,
		0.454047, -0.255194, -0.853649,
		-0.888751, -0.197412, -0.413702,
		44.826191, 39.416985, 33.224537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357620, 39.902557, 32.876320>,  <45.448315, 39.555172, 33.514130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357620, 39.902557, 32.876320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973495, 39.834011, 32.964355>,  <44.743023, 39.792885, 33.017178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973495, 39.834011, 32.964355>,  <45.357620, 39.902557, 32.876320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973495, 39.834011, 32.964355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204580, 0.969057, -0.138116,
		-0.189611, -0.177660, -0.965653,
		-0.960310, -0.171365, 0.220089,
		44.685402, 39.782600, 33.030380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943848, 40.195229, 32.333282>,  <45.357620, 39.902557, 32.876320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943848, 40.195229, 32.333282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663124, 40.168175, 32.616940>,  <44.494690, 40.151943, 32.787132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663124, 40.168175, 32.616940>,  <44.943848, 40.195229, 32.333282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663124, 40.168175, 32.616940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159614, 0.985102, -0.064012,
		-0.694248, -0.158114, -0.702153,
		-0.701814, -0.067633, 0.709143,
		44.452579, 40.147884, 32.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426327, 40.604713, 32.125267>,  <44.943848, 40.195229, 32.333282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426327, 40.604713, 32.125267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332077, 40.574699, 32.512844>,  <44.275528, 40.556690, 32.745392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332077, 40.574699, 32.512844>,  <44.426327, 40.604713, 32.125267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332077, 40.574699, 32.512844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111661, 0.992503, 0.049702,
		-0.965408, -0.096482, -0.242238,
		-0.235626, -0.075031, 0.968943,
		44.261391, 40.552189, 32.803528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723095, 40.863415, 32.238052>,  <44.426327, 40.604713, 32.125267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723095, 40.863415, 32.238052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888340, 40.867596, 32.602299>,  <43.987488, 40.870106, 32.820847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888340, 40.867596, 32.602299>,  <43.723095, 40.863415, 32.238052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888340, 40.867596, 32.602299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278193, 0.953585, 0.115260,
		-0.867149, -0.300944, 0.396844,
		0.413111, 0.010451, 0.910621,
		44.012272, 40.870731, 32.875484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230034, 41.186211, 32.684559>,  <43.723095, 40.863415, 32.238052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230034, 41.186211, 32.684559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.589531, 41.231487, 32.854004>,  <43.805229, 41.258656, 32.955669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.589531, 41.231487, 32.854004>,  <43.230034, 41.186211, 32.684559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589531, 41.231487, 32.854004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160962, 0.983825, 0.078612,
		-0.407861, -0.138837, 0.902427,
		0.898744, 0.113193, 0.423611,
		43.859154, 41.265446, 32.981087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199677, 41.735096, 33.245659>,  <43.230034, 41.186211, 32.684559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199677, 41.735096, 33.245659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595608, 41.738014, 33.188816>,  <43.833164, 41.739765, 33.154709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595608, 41.738014, 33.188816>,  <43.199677, 41.735096, 33.245659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595608, 41.738014, 33.188816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025233, 0.973865, 0.225722,
		0.140040, -0.227011, 0.963771,
		0.989824, 0.007292, -0.142108,
		43.892555, 41.740200, 33.146183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400753, 42.273308, 33.633347>,  <43.199677, 41.735096, 33.245659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400753, 42.273308, 33.633347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.732147, 42.210129, 33.418438>,  <43.930984, 42.172222, 33.289494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.732147, 42.210129, 33.418438>,  <43.400753, 42.273308, 33.633347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732147, 42.210129, 33.418438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219054, 0.974361, 0.051348,
		0.515387, -0.160233, 0.841844,
		0.828487, -0.157946, -0.537273,
		43.980694, 42.162746, 33.257256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891720, 42.640125, 33.903740>,  <43.400753, 42.273308, 33.633347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891720, 42.640125, 33.903740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.039841, 42.587776, 33.535881>,  <44.128716, 42.556366, 33.315166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.039841, 42.587776, 33.535881>,  <43.891720, 42.640125, 33.903740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039841, 42.587776, 33.535881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291300, 0.956447, -0.018819,
		0.882053, -0.260924, 0.392302,
		0.370306, -0.130877, -0.919644,
		44.150932, 42.548512, 33.259987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639923, 42.938164, 33.872234>,  <43.891720, 42.640125, 33.903740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639923, 42.938164, 33.872234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471550, 42.925392, 33.509624>,  <44.370525, 42.917728, 33.292057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471550, 42.925392, 33.509624>,  <44.639923, 42.938164, 33.872234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471550, 42.925392, 33.509624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230469, 0.962821, -0.140923,
		0.877323, -0.268246, -0.397930,
		-0.420938, -0.031924, -0.906528,
		44.345268, 42.915813, 33.237667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051590, 43.448105, 33.453476>,  <44.639923, 42.938164, 33.872234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051590, 43.448105, 33.453476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723522, 43.346844, 33.248253>,  <44.526680, 43.286087, 33.125118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723522, 43.346844, 33.248253>,  <45.051590, 43.448105, 33.453476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723522, 43.346844, 33.248253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035153, 0.917377, -0.396465,
		0.571033, -0.307135, -0.761308,
		-0.820174, -0.253157, -0.513056,
		44.477470, 43.270897, 33.094337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070415, 43.905293, 32.870605>,  <45.051590, 43.448105, 33.453476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070415, 43.905293, 32.870605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.691730, 43.778652, 32.846947>,  <44.464520, 43.702667, 32.832752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.691730, 43.778652, 32.846947>,  <45.070415, 43.905293, 32.870605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691730, 43.778652, 32.846947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277826, 0.895649, -0.347312,
		0.162938, -0.312371, -0.935882,
		-0.946712, -0.316603, -0.059151,
		44.407719, 43.683670, 32.829201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806679, 44.051281, 32.157932>,  <45.070415, 43.905293, 32.870605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806679, 44.051281, 32.157932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484043, 44.039803, 32.394100>,  <44.290462, 44.032917, 32.535801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484043, 44.039803, 32.394100>,  <44.806679, 44.051281, 32.157932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484043, 44.039803, 32.394100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249797, 0.921801, -0.296454,
		-0.535738, -0.386600, -0.750683,
		-0.806589, -0.028697, 0.590415,
		44.242065, 44.031193, 32.571224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248947, 44.259335, 31.791821>,  <44.806679, 44.051281, 32.157932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248947, 44.259335, 31.791821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097618, 44.323227, 32.156536>,  <44.006821, 44.361561, 32.375366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097618, 44.323227, 32.156536>,  <44.248947, 44.259335, 31.791821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097618, 44.323227, 32.156536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352171, 0.886094, -0.301351,
		-0.856065, -0.435114, -0.278979,
		-0.378323, 0.159727, 0.911788,
		43.984119, 44.371143, 32.430073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519085, 44.499344, 31.704008>,  <44.248947, 44.259335, 31.791821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519085, 44.499344, 31.704008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632851, 44.633198, 32.063370>,  <43.701111, 44.713509, 32.278988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632851, 44.633198, 32.063370>,  <43.519085, 44.499344, 31.704008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632851, 44.633198, 32.063370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422991, 0.884762, -0.195640,
		-0.860341, -0.324374, 0.393186,
		0.284415, 0.334631, 0.898404,
		43.718174, 44.733585, 32.332890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.824154, 34.264336, 37.230865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429817, 34.286880, 37.294037>,  <39.193214, 34.300407, 37.331940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429817, 34.286880, 37.294037>,  <39.824154, 34.264336, 37.230865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429817, 34.286880, 37.294037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156743, 0.024896, -0.987326,
		-0.059587, -0.998100, -0.015708,
		-0.985840, 0.056370, 0.157928,
		39.134064, 34.303791, 37.341415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492546, 33.747971, 36.835960>,  <39.824154, 34.264336, 37.230865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492546, 33.747971, 36.835960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208496, 34.021664, 36.902348>,  <39.038067, 34.185879, 36.942181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208496, 34.021664, 36.902348>,  <39.492546, 33.747971, 36.835960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208496, 34.021664, 36.902348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142136, 0.091550, -0.985605,
		-0.689576, -0.723495, 0.032242,
		-0.710128, 0.684232, 0.165965,
		38.995457, 34.226933, 36.952137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942215, 33.544331, 36.404800>,  <39.492546, 33.747971, 36.835960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942215, 33.544331, 36.404800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884949, 33.930775, 36.490711>,  <38.850590, 34.162643, 36.542259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884949, 33.930775, 36.490711>,  <38.942215, 33.544331, 36.404800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884949, 33.930775, 36.490711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233045, 0.178004, -0.956036,
		-0.961870, -0.186922, 0.199664,
		-0.143163, 0.966113, 0.214778,
		38.841999, 34.220608, 36.555145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391476, 33.694706, 35.950687>,  <38.942215, 33.544331, 36.404800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391476, 33.694706, 35.950687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525436, 34.051609, 36.071827>,  <38.605812, 34.265751, 36.144508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525436, 34.051609, 36.071827>,  <38.391476, 33.694706, 35.950687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525436, 34.051609, 36.071827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263152, 0.397183, -0.879202,
		-0.904762, 0.214748, 0.367815,
		0.334897, 0.892261, 0.302844,
		38.625904, 34.319286, 36.162682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915031, 34.168587, 35.750324>,  <38.391476, 33.694706, 35.950687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915031, 34.168587, 35.750324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242569, 34.390709, 35.808475>,  <38.439091, 34.523983, 35.843365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242569, 34.390709, 35.808475>,  <37.915031, 34.168587, 35.750324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242569, 34.390709, 35.808475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192198, 0.503875, -0.842122,
		-0.540884, 0.661626, 0.519323,
		0.818844, 0.555303, 0.145375,
		38.488220, 34.557301, 35.852089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747738, 34.887283, 35.604332>,  <37.915031, 34.168587, 35.750324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747738, 34.887283, 35.604332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146790, 34.880199, 35.577705>,  <38.386219, 34.875950, 35.561729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146790, 34.880199, 35.577705>,  <37.747738, 34.887283, 35.604332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146790, 34.880199, 35.577705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046200, 0.544667, -0.837379,
		0.051088, 0.838465, 0.542555,
		0.997625, -0.017714, -0.066563,
		38.446075, 34.874886, 35.557735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804993, 35.457436, 35.204987>,  <37.747738, 34.887283, 35.604332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804993, 35.457436, 35.204987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170650, 35.297295, 35.179501>,  <38.390045, 35.201210, 35.164207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170650, 35.297295, 35.179501>,  <37.804993, 35.457436, 35.204987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170650, 35.297295, 35.179501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150290, 0.480653, -0.863936,
		0.376503, 0.780186, 0.499554,
		0.914143, -0.400353, -0.063714,
		38.444893, 35.177189, 35.160385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420605, 35.990623, 35.104580>,  <37.804993, 35.457436, 35.204987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420605, 35.990623, 35.104580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489891, 35.623943, 34.960548>,  <38.531464, 35.403934, 34.874130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489891, 35.623943, 34.960548>,  <38.420605, 35.990623, 35.104580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489891, 35.623943, 34.960548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013374, 0.367759, -0.929825,
		0.984793, 0.156245, 0.075961,
		0.173216, -0.916701, -0.360077,
		38.541855, 35.348934, 34.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959476, 36.115658, 34.725857>,  <38.420605, 35.990623, 35.104580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959476, 36.115658, 34.725857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815090, 35.776096, 34.571419>,  <38.728458, 35.572361, 34.478756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815090, 35.776096, 34.571419>,  <38.959476, 36.115658, 34.725857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815090, 35.776096, 34.571419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210904, 0.328975, -0.920487,
		0.908420, -0.413689, 0.060290,
		-0.360961, -0.848904, -0.386095,
		38.706802, 35.521423, 34.455589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372597, 36.010483, 34.098530>,  <38.959476, 36.115658, 34.725857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372597, 36.010483, 34.098530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104610, 35.718422, 34.044819>,  <38.943817, 35.543186, 34.012592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104610, 35.718422, 34.044819>,  <39.372597, 36.010483, 34.098530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104610, 35.718422, 34.044819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053826, 0.132616, -0.989705,
		0.740438, -0.670296, -0.049547,
		-0.669966, -0.730148, -0.134273,
		38.903622, 35.499378, 34.004536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570454, 35.772358, 33.445732>,  <39.372597, 36.010483, 34.098530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570454, 35.772358, 33.445732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205250, 35.622746, 33.510868>,  <38.986126, 35.532978, 33.549950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205250, 35.622746, 33.510868>,  <39.570454, 35.772358, 33.445732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205250, 35.622746, 33.510868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157084, -0.046062, -0.986510,
		0.376484, -0.926273, -0.016699,
		-0.913008, -0.374029, 0.162844,
		38.931347, 35.510536, 33.559723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433949, 35.050850, 33.032089>,  <39.570454, 35.772358, 33.445732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433949, 35.050850, 33.032089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082050, 35.231628, 33.091148>,  <38.870911, 35.340096, 33.126583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082050, 35.231628, 33.091148>,  <39.433949, 35.050850, 33.032089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082050, 35.231628, 33.091148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243776, -0.162158, -0.956179,
		-0.408196, -0.877185, 0.252830,
		-0.879744, 0.451943, 0.147644,
		38.818127, 35.367210, 33.135441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808319, 35.466862, 32.477703>,  <39.433949, 35.050850, 33.032089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808319, 35.466862, 32.477703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411659, 35.445984, 32.524879>,  <39.173664, 35.433456, 32.553185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411659, 35.445984, 32.524879>,  <39.808319, 35.466862, 32.477703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411659, 35.445984, 32.524879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109256, -0.146012, -0.983231,
		0.068543, -0.987905, 0.139089,
		-0.991648, -0.052197, 0.117943,
		39.114166, 35.430325, 32.560261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265217, 35.128147, 32.007740>,  <39.808319, 35.466862, 32.477703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265217, 35.128147, 32.007740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371468, 34.786968, 31.827997>,  <40.435219, 34.582260, 31.720152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371468, 34.786968, 31.827997>,  <40.265217, 35.128147, 32.007740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371468, 34.786968, 31.827997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325759, -0.518094, 0.790860,
		-0.907371, -0.063695, -0.415477,
		0.265630, -0.852949, -0.449354,
		40.451157, 34.531082, 31.693192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718784, 34.670601, 32.031044>,  <40.265217, 35.128147, 32.007740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718784, 34.670601, 32.031044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045139, 34.447781, 31.969040>,  <40.240952, 34.314091, 31.931839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045139, 34.447781, 31.969040>,  <39.718784, 34.670601, 32.031044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045139, 34.447781, 31.969040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272935, -0.607360, 0.746070,
		-0.509740, -0.566403, -0.647575,
		0.815887, -0.557047, -0.155005,
		40.289906, 34.280666, 31.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484962, 34.037354, 32.000126>,  <39.718784, 34.670601, 32.031044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484962, 34.037354, 32.000126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874168, 33.997040, 32.083160>,  <40.107693, 33.972851, 32.132980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874168, 33.997040, 32.083160>,  <39.484962, 34.037354, 32.000126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874168, 33.997040, 32.083160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224999, -0.614040, 0.756525,
		0.051221, -0.782814, -0.620143,
		0.973012, -0.100782, 0.207584,
		40.166073, 33.966805, 32.145435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594402, 33.255486, 32.180855>,  <39.484962, 34.037354, 32.000126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594402, 33.255486, 32.180855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902367, 33.459969, 32.333649>,  <40.087143, 33.582661, 32.425323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902367, 33.459969, 32.333649>,  <39.594402, 33.255486, 32.180855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902367, 33.459969, 32.333649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012933, -0.585947, 0.810246,
		0.638026, -0.628754, -0.444513,
		0.769906, 0.511209, 0.381981,
		40.133339, 33.613331, 32.448242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082550, 32.787075, 32.463516>,  <39.594402, 33.255486, 32.180855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082550, 32.787075, 32.463516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132076, 33.122021, 32.676491>,  <40.161793, 33.322990, 32.804276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132076, 33.122021, 32.676491>,  <40.082550, 32.787075, 32.463516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132076, 33.122021, 32.676491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108198, -0.521973, 0.846072,
		0.986389, -0.162363, 0.025974,
		0.123813, 0.837366, 0.532436,
		40.169220, 33.373230, 32.836220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551144, 32.548878, 33.009300>,  <40.082550, 32.787075, 32.463516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551144, 32.548878, 33.009300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414658, 32.891182, 33.164864>,  <40.332764, 33.096565, 33.258202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414658, 32.891182, 33.164864>,  <40.551144, 32.548878, 33.009300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414658, 32.891182, 33.164864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257183, -0.482945, 0.837031,
		0.904116, 0.185590, 0.384876,
		-0.341219, 0.855757, 0.388908,
		40.312290, 33.147907, 33.281536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798309, 32.446732, 33.703468>,  <40.551144, 32.548878, 33.009300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798309, 32.446732, 33.703468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510040, 32.723942, 33.696033>,  <40.337078, 32.890270, 33.691570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510040, 32.723942, 33.696033>,  <40.798309, 32.446732, 33.703468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510040, 32.723942, 33.696033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281158, -0.267650, 0.921582,
		0.633707, 0.669384, 0.387738,
		-0.720671, 0.693028, -0.018591,
		40.293839, 32.931850, 33.690456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935844, 32.787861, 34.287918>,  <40.798309, 32.446732, 33.703468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935844, 32.787861, 34.287918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566582, 32.902012, 34.184887>,  <40.345024, 32.970501, 34.123066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566582, 32.902012, 34.184887>,  <40.935844, 32.787861, 34.287918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566582, 32.902012, 34.184887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289345, -0.074627, 0.954311,
		0.253112, 0.955507, 0.151464,
		-0.923154, 0.285373, -0.257582,
		40.289635, 32.987625, 34.107613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616409, 33.191372, 34.780197>,  <40.935844, 32.787861, 34.287918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616409, 33.191372, 34.780197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279652, 33.054729, 34.613098>,  <40.077595, 32.972744, 34.512836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279652, 33.054729, 34.613098>,  <40.616409, 33.191372, 34.780197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279652, 33.054729, 34.613098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358603, -0.224330, 0.906135,
		-0.403254, 0.912679, 0.066362,
		-0.841897, -0.341605, -0.417751,
		40.027084, 32.952248, 34.487774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952370, 33.378399, 35.248909>,  <40.616409, 33.191372, 34.780197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952370, 33.378399, 35.248909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803528, 33.081676, 35.025742>,  <39.714222, 32.903645, 34.891842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803528, 33.081676, 35.025742>,  <39.952370, 33.378399, 35.248909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803528, 33.081676, 35.025742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343071, -0.448596, 0.825266,
		-0.862463, 0.498488, -0.087567,
		-0.372103, -0.741803, -0.557914,
		39.691898, 32.859135, 34.858368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215214, 33.316761, 35.481823>,  <39.952370, 33.378399, 35.248909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215214, 33.316761, 35.481823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312107, 32.980377, 35.288284>,  <39.370243, 32.778545, 35.172161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312107, 32.980377, 35.288284>,  <39.215214, 33.316761, 35.481823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312107, 32.980377, 35.288284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351907, -0.540894, 0.763934,
		-0.904148, -0.014785, -0.426965,
		0.242237, -0.840961, -0.483845,
		39.384777, 32.728088, 35.143131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622955, 32.876499, 35.552303>,  <39.215214, 33.316761, 35.481823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622955, 32.876499, 35.552303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927536, 32.628273, 35.477379>,  <39.110287, 32.479340, 35.432423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927536, 32.628273, 35.477379>,  <38.622955, 32.876499, 35.552303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927536, 32.628273, 35.477379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253593, -0.551123, 0.794955,
		-0.596554, -0.557821, -0.577026,
		0.761455, -0.620563, -0.187315,
		39.155972, 32.442104, 35.421185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283630, 32.204945, 35.677158>,  <38.622955, 32.876499, 35.552303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283630, 32.204945, 35.677158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678249, 32.143806, 35.700344>,  <38.915020, 32.107124, 35.714256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678249, 32.143806, 35.700344>,  <38.283630, 32.204945, 35.677158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678249, 32.143806, 35.700344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149084, -0.695858, 0.702535,
		-0.067047, -0.701727, -0.709284,
		0.986549, -0.152846, 0.057961,
		38.974213, 32.097954, 35.717731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324120, 31.507481, 35.655727>,  <38.283630, 32.204945, 35.677158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324120, 31.507481, 35.655727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663223, 31.641497, 35.820190>,  <38.866688, 31.721907, 35.918869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663223, 31.641497, 35.820190>,  <38.324120, 31.507481, 35.655727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663223, 31.641497, 35.820190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046724, -0.725023, 0.687138,
		0.528317, -0.601739, -0.598992,
		0.847761, 0.335039, 0.411157,
		38.917553, 31.742008, 35.943539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603428, 30.915136, 36.029957>,  <38.324120, 31.507481, 35.655727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603428, 30.915136, 36.029957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774502, 31.234140, 36.200161>,  <38.877148, 31.425543, 36.302284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774502, 31.234140, 36.200161>,  <38.603428, 30.915136, 36.029957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774502, 31.234140, 36.200161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003971, -0.469075, 0.883149,
		0.903917, -0.379403, -0.197452,
		0.427689, 0.797510, 0.425512,
		38.902809, 31.473392, 36.327816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204811, 30.274330, 35.666359>,  <38.603428, 30.915136, 36.029957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204811, 30.274330, 35.666359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838131, 30.327623, 35.817039>,  <37.618122, 30.359600, 35.907448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838131, 30.327623, 35.817039>,  <38.204811, 30.274330, 35.666359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838131, 30.327623, 35.817039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209581, 0.642350, -0.737199,
		-0.340195, -0.754742, -0.560920,
		-0.916702, 0.133233, 0.376703,
		37.563122, 30.367594, 35.930050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787567, 30.197573, 35.065514>,  <38.204811, 30.274330, 35.666359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787567, 30.197573, 35.065514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554874, 30.373146, 35.339424>,  <37.415260, 30.478491, 35.503773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554874, 30.373146, 35.339424>,  <37.787567, 30.197573, 35.065514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554874, 30.373146, 35.339424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467675, 0.508311, -0.723118,
		-0.665483, -0.740916, -0.090422,
		-0.581732, 0.438935, 0.684780,
		37.380356, 30.504826, 35.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218773, 30.334124, 34.651772>,  <37.787567, 30.197573, 35.065514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218773, 30.334124, 34.651772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130962, 30.577135, 34.957115>,  <37.078278, 30.722942, 35.140320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130962, 30.577135, 34.957115>,  <37.218773, 30.334124, 34.651772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130962, 30.577135, 34.957115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634989, 0.505050, -0.584563,
		-0.740673, -0.613051, 0.274903,
		-0.219527, 0.607530, 0.763358,
		37.065105, 30.759394, 35.186123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559563, 30.347672, 34.619312>,  <37.218773, 30.334124, 34.651772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559563, 30.347672, 34.619312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683338, 30.669447, 34.822140>,  <36.757603, 30.862513, 34.943836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683338, 30.669447, 34.822140>,  <36.559563, 30.347672, 34.619312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683338, 30.669447, 34.822140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574301, 0.583107, -0.574599,
		-0.757908, -0.113407, 0.642429,
		0.309441, 0.804441, 0.507072,
		36.776169, 30.910780, 34.974262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996166, 30.765215, 34.833416>,  <36.559563, 30.347672, 34.619312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996166, 30.765215, 34.833416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311745, 31.010273, 34.852291>,  <36.501091, 31.157309, 34.863617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311745, 31.010273, 34.852291>,  <35.996166, 30.765215, 34.833416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311745, 31.010273, 34.852291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525118, 0.712119, -0.465981,
		-0.319084, 0.342856, 0.883536,
		0.788946, 0.612647, 0.047186,
		36.548428, 31.194067, 34.866447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725178, 31.285295, 35.144539>,  <35.996166, 30.765215, 34.833416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725178, 31.285295, 35.144539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056973, 31.412050, 34.960567>,  <36.256050, 31.488104, 34.850185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056973, 31.412050, 34.960567>,  <35.725178, 31.285295, 35.144539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056973, 31.412050, 34.960567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500124, 0.788013, -0.359043,
		0.248657, 0.527844, 0.812127,
		0.829485, 0.316886, -0.459933,
		36.305817, 31.507116, 34.822586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779243, 32.025017, 35.335934>,  <35.725178, 31.285295, 35.144539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779243, 32.025017, 35.335934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991821, 31.967463, 35.002022>,  <36.119370, 31.932930, 34.801674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991821, 31.967463, 35.002022>,  <35.779243, 32.025017, 35.335934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991821, 31.967463, 35.002022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442830, 0.792897, -0.418588,
		0.722124, 0.592124, 0.357667,
		0.531449, -0.143887, -0.834781,
		36.151257, 31.924297, 34.751587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947277, 32.631519, 35.245594>,  <35.779243, 32.025017, 35.335934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947277, 32.631519, 35.245594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987896, 32.466259, 34.883602>,  <36.012268, 32.367104, 34.666405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987896, 32.466259, 34.883602>,  <35.947277, 32.631519, 35.245594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987896, 32.466259, 34.883602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569320, 0.721860, -0.393437,
		0.815820, 0.555178, -0.161910,
		0.101551, -0.413152, -0.904982,
		36.018360, 32.342312, 34.612106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185028, 33.195965, 34.862396>,  <35.947277, 32.631519, 35.245594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185028, 33.195965, 34.862396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034626, 32.905685, 34.631924>,  <35.944386, 32.731518, 34.493641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034626, 32.905685, 34.631924>,  <36.185028, 33.195965, 34.862396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034626, 32.905685, 34.631924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557608, 0.673826, -0.484801,
		0.740066, 0.138998, -0.658014,
		-0.376001, -0.725698, -0.576182,
		35.921825, 32.687977, 34.459068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300133, 33.359032, 34.198101>,  <36.185028, 33.195965, 34.862396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300133, 33.359032, 34.198101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977024, 33.126240, 34.235626>,  <35.783157, 32.986565, 34.258141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977024, 33.126240, 34.235626>,  <36.300133, 33.359032, 34.198101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977024, 33.126240, 34.235626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547111, 0.680897, -0.486878,
		0.219477, -0.444612, -0.868418,
		-0.807775, -0.581979, 0.093811,
		35.734692, 32.951645, 34.263771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194317, 34.039494, 34.268028>,  <36.300133, 33.359032, 34.198101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194317, 34.039494, 34.268028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983810, 34.080112, 34.605721>,  <35.857506, 34.104485, 34.808338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983810, 34.080112, 34.605721>,  <36.194317, 34.039494, 34.268028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983810, 34.080112, 34.605721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804973, 0.260395, -0.533117,
		-0.273970, -0.960147, -0.055296,
		-0.526269, 0.101547, 0.844233,
		35.825928, 34.110577, 34.858990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637432, 33.685387, 34.314995>,  <36.194317, 34.039494, 34.268028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637432, 33.685387, 34.314995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519909, 34.026909, 34.486900>,  <35.449394, 34.231823, 34.590046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519909, 34.026909, 34.486900>,  <35.637432, 33.685387, 34.314995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519909, 34.026909, 34.486900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736057, 0.084763, -0.671592,
		-0.609835, -0.513650, 0.603543,
		-0.293805, 0.853802, 0.429767,
		35.431767, 34.283051, 34.615829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.934052, 27.551403, 38.196842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753441, 27.833664, 38.415264>,  <37.645073, 28.003021, 38.546318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.753441, 27.833664, 38.415264>,  <37.934052, 27.551403, 38.196842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753441, 27.833664, 38.415264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205812, 0.513117, -0.833278,
		-0.868195, -0.488634, -0.086456,
		-0.451530, 0.705654, 0.546052,
		37.617981, 28.045361, 38.579079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314754, 27.730772, 37.903313>,  <37.934052, 27.551403, 38.196842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314754, 27.730772, 37.903313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378292, 28.051998, 38.133045>,  <37.416416, 28.244734, 38.270885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378292, 28.051998, 38.133045>,  <37.314754, 27.730772, 37.903313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378292, 28.051998, 38.133045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172411, 0.595341, -0.784757,
		-0.972133, 0.025635, 0.233024,
		0.158846, 0.803064, 0.574331,
		37.425945, 28.292917, 38.305344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748085, 28.206110, 37.737427>,  <37.314754, 27.730772, 37.903313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748085, 28.206110, 37.737427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.040737, 28.423485, 37.902058>,  <37.216328, 28.553909, 38.000835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.040737, 28.423485, 37.902058>,  <36.748085, 28.206110, 37.737427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040737, 28.423485, 37.902058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072064, 0.662019, -0.746014,
		-0.677885, 0.516145, 0.523514,
		0.731628, 0.543438, 0.411578,
		37.260227, 28.586515, 38.025532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478973, 28.887823, 37.707642>,  <36.748085, 28.206110, 37.737427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478973, 28.887823, 37.707642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872509, 28.932205, 37.763859>,  <37.108631, 28.958834, 37.797588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872509, 28.932205, 37.763859>,  <36.478973, 28.887823, 37.707642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872509, 28.932205, 37.763859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001683, 0.779124, -0.626867,
		-0.179055, 0.616972, 0.766345,
		0.983838, 0.110954, 0.140544,
		37.167660, 28.965492, 37.806023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626877, 29.548819, 37.722359>,  <36.478973, 28.887823, 37.707642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626877, 29.548819, 37.722359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989212, 29.401573, 37.638500>,  <37.206612, 29.313225, 37.588184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989212, 29.401573, 37.638500>,  <36.626877, 29.548819, 37.722359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989212, 29.401573, 37.638500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121491, 0.699833, -0.703899,
		0.405830, 0.612149, 0.678657,
		0.905838, -0.368114, -0.209643,
		37.260963, 29.291140, 37.575607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012047, 30.087479, 37.651974>,  <36.626877, 29.548819, 37.722359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012047, 30.087479, 37.651974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237236, 29.806465, 37.477844>,  <37.372349, 29.637857, 37.373367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237236, 29.806465, 37.477844>,  <37.012047, 30.087479, 37.651974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237236, 29.806465, 37.477844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140298, 0.600319, -0.787359,
		0.814481, 0.382185, 0.436527,
		0.562972, -0.702533, -0.435328,
		37.406128, 29.595705, 37.347244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556042, 30.428699, 37.556728>,  <37.012047, 30.087479, 37.651974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556042, 30.428699, 37.556728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510143, 30.113636, 37.314594>,  <37.482605, 29.924599, 37.169315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510143, 30.113636, 37.314594>,  <37.556042, 30.428699, 37.556728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510143, 30.113636, 37.314594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112527, 0.595130, -0.795712,
		0.987001, -0.159424, 0.020341,
		-0.114750, -0.787657, -0.605334,
		37.475719, 29.877338, 37.132996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073120, 30.426615, 37.065380>,  <37.556042, 30.428699, 37.556728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073120, 30.426615, 37.065380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774059, 30.212461, 36.908215>,  <37.594624, 30.083969, 36.813915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.774059, 30.212461, 36.908215>,  <38.073120, 30.426615, 37.065380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774059, 30.212461, 36.908215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129854, 0.462372, -0.877126,
		0.651267, -0.706809, -0.276173,
		-0.747655, -0.535382, -0.392910,
		37.549763, 30.051847, 36.790340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372829, 30.320553, 36.404659>,  <38.073120, 30.426615, 37.065380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372829, 30.320553, 36.404659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983265, 30.235268, 36.373558>,  <37.749527, 30.184097, 36.354897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.983265, 30.235268, 36.373558>,  <38.372829, 30.320553, 36.404659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983265, 30.235268, 36.373558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057296, 0.562491, -0.824815,
		0.219593, -0.798840, -0.560031,
		-0.973908, -0.213211, -0.077748,
		37.691093, 30.171305, 36.350235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065174, 30.633953, 36.509586>,  <38.372829, 30.320553, 36.404659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065174, 30.633953, 36.509586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066746, 31.006460, 36.655312>,  <39.067688, 31.229965, 36.742744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066746, 31.006460, 36.655312>,  <39.065174, 30.633953, 36.509586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066746, 31.006460, 36.655312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122003, -0.362038, 0.924145,
		0.992522, 0.040818, -0.115039,
		0.003926, 0.931269, 0.364311,
		39.067924, 31.285841, 36.764606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697792, 30.770407, 37.012524>,  <39.065174, 30.633953, 36.509586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697792, 30.770407, 37.012524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412151, 31.030533, 37.116169>,  <39.240765, 31.186609, 37.178356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.412151, 31.030533, 37.116169>,  <39.697792, 30.770407, 37.012524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412151, 31.030533, 37.116169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126810, -0.243851, 0.961486,
		0.688457, 0.719461, 0.091669,
		-0.714105, 0.650318, 0.259116,
		39.197918, 31.225628, 37.193905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986134, 31.269722, 37.610451>,  <39.697792, 30.770407, 37.012524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986134, 31.269722, 37.610451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589970, 31.310471, 37.647785>,  <39.352272, 31.334921, 37.670185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589970, 31.310471, 37.647785>,  <39.986134, 31.269722, 37.610451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589970, 31.310471, 37.647785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071375, -0.201167, 0.976953,
		0.118301, 0.974245, 0.191966,
		-0.990409, 0.101873, 0.093335,
		39.292847, 31.341032, 37.675785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877445, 31.636749, 38.313953>,  <39.986134, 31.269722, 37.610451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877445, 31.636749, 38.313953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.515453, 31.491484, 38.225304>,  <39.298256, 31.404324, 38.172115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.515453, 31.491484, 38.225304>,  <39.877445, 31.636749, 38.313953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515453, 31.491484, 38.225304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068808, -0.389118, 0.918615,
		-0.419845, 0.846581, 0.327157,
		-0.904984, -0.363164, -0.221620,
		39.243958, 31.382534, 38.158817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389362, 31.892021, 38.856098>,  <39.877445, 31.636749, 38.313953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389362, 31.892021, 38.856098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.203739, 31.579456, 38.689224>,  <39.092365, 31.391918, 38.589100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.203739, 31.579456, 38.689224>,  <39.389362, 31.892021, 38.856098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203739, 31.579456, 38.689224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048895, -0.447655, 0.892869,
		-0.884453, 0.434743, 0.169532,
		-0.464060, -0.781412, -0.417186,
		39.064522, 31.345034, 38.564068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921089, 31.733011, 39.397640>,  <39.389362, 31.892021, 38.856098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921089, 31.733011, 39.397640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.962566, 31.405773, 39.171375>,  <38.987453, 31.209431, 39.035618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.962566, 31.405773, 39.171375>,  <38.921089, 31.733011, 39.397640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962566, 31.405773, 39.171375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092998, -0.574209, 0.813410,
		-0.990252, -0.031743, -0.135624,
		0.103697, -0.818093, -0.565659,
		38.993675, 31.160345, 39.001678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385296, 31.166473, 39.601990>,  <38.921089, 31.733011, 39.397640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385296, 31.166473, 39.601990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.678436, 30.964914, 39.419117>,  <38.854321, 30.843979, 39.309395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.678436, 30.964914, 39.419117>,  <38.385296, 31.166473, 39.601990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678436, 30.964914, 39.419117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036306, -0.642025, 0.765824,
		-0.679424, -0.577830, -0.452211,
		0.732847, -0.503901, -0.457186,
		38.898293, 30.813745, 39.281963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229950, 30.560844, 39.810616>,  <38.385296, 31.166473, 39.601990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229950, 30.560844, 39.810616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614140, 30.565842, 39.699383>,  <38.844654, 30.568840, 39.632645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614140, 30.565842, 39.699383>,  <38.229950, 30.560844, 39.810616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614140, 30.565842, 39.699383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199430, -0.727830, 0.656118,
		-0.194198, -0.685644, -0.701555,
		0.960476, 0.012494, -0.278081,
		38.902283, 30.569590, 39.615959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481651, 29.864235, 39.494087>,  <38.229950, 30.560844, 39.810616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481651, 29.864235, 39.494087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807648, 30.052853, 39.628807>,  <39.003246, 30.166023, 39.709641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807648, 30.052853, 39.628807>,  <38.481651, 29.864235, 39.494087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807648, 30.052853, 39.628807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187981, -0.764928, 0.616075,
		0.548135, -0.438783, -0.712051,
		0.814991, 0.471544, 0.336801,
		39.052147, 30.194315, 39.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951294, 29.317858, 39.720333>,  <38.481651, 29.864235, 39.494087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951294, 29.317858, 39.720333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120831, 29.629307, 39.905418>,  <39.222553, 29.816175, 40.016472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120831, 29.629307, 39.905418>,  <38.951294, 29.317858, 39.720333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120831, 29.629307, 39.905418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128162, -0.557290, 0.820368,
		0.896624, -0.288401, -0.335991,
		0.423839, 0.778623, 0.462717,
		39.247982, 29.862894, 40.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528004, 29.072657, 40.209736>,  <38.951294, 29.317858, 39.720333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528004, 29.072657, 40.209736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462688, 29.443092, 40.345791>,  <39.423500, 29.665354, 40.427422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462688, 29.443092, 40.345791>,  <39.528004, 29.072657, 40.209736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462688, 29.443092, 40.345791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227821, -0.300050, 0.926319,
		0.959914, 0.228745, -0.161988,
		-0.163287, 0.926092, 0.340135,
		39.413704, 29.720921, 40.447830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078064, 29.344780, 40.601952>,  <39.528004, 29.072657, 40.209736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078064, 29.344780, 40.601952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.770313, 29.565830, 40.730114>,  <39.585663, 29.698460, 40.807011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.770313, 29.565830, 40.730114>,  <40.078064, 29.344780, 40.601952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770313, 29.565830, 40.730114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183544, -0.289178, 0.939515,
		0.611854, 0.781652, 0.121056,
		-0.769381, 0.552626, 0.320402,
		39.539497, 29.731619, 40.826233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293365, 29.586399, 41.190968>,  <40.078064, 29.344780, 40.601952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293365, 29.586399, 41.190968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898212, 29.634275, 41.230473>,  <39.661121, 29.663000, 41.254173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898212, 29.634275, 41.230473>,  <40.293365, 29.586399, 41.190968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898212, 29.634275, 41.230473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041254, -0.410954, 0.910722,
		0.149589, 0.903765, 0.401038,
		-0.987887, 0.119690, 0.098758,
		39.601845, 29.670183, 41.260101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230274, 30.003206, 41.750690>,  <40.293365, 29.586399, 41.190968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230274, 30.003206, 41.750690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880898, 29.812950, 41.709003>,  <39.671272, 29.698795, 41.683990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.880898, 29.812950, 41.709003>,  <40.230274, 30.003206, 41.750690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880898, 29.812950, 41.709003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043042, -0.288619, 0.956476,
		-0.485020, 0.830942, 0.272565,
		-0.873443, -0.475642, -0.104220,
		39.618866, 29.670258, 41.677738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.190113, 32.708790, 43.120956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482857, 32.480431, 42.972118>,  <34.658504, 32.343414, 42.882816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.482857, 32.480431, 42.972118>,  <34.190113, 32.708790, 43.120956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482857, 32.480431, 42.972118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093918, 0.456315, -0.884848,
		0.674950, 0.682533, 0.280342,
		0.731862, -0.570899, -0.372092,
		34.702415, 32.309162, 42.860493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596149, 33.147957, 42.703712>,  <34.190113, 32.708790, 43.120956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596149, 33.147957, 42.703712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663040, 32.775421, 42.574314>,  <34.703175, 32.551899, 42.496677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663040, 32.775421, 42.574314>,  <34.596149, 33.147957, 42.703712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663040, 32.775421, 42.574314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001548, 0.328360, -0.944552,
		0.985916, 0.157458, 0.056353,
		0.167231, -0.931336, -0.323492,
		34.713211, 32.496021, 42.477268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229252, 33.238338, 42.193336>,  <34.596149, 33.147957, 42.703712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229252, 33.238338, 42.193336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041901, 32.893887, 42.114273>,  <34.929489, 32.687214, 42.066833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041901, 32.893887, 42.114273>,  <35.229252, 33.238338, 42.193336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041901, 32.893887, 42.114273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096971, 0.172262, -0.980266,
		0.878188, -0.478307, 0.002820,
		-0.468382, -0.861132, -0.197660,
		34.901386, 32.635548, 42.054974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698429, 32.900131, 41.731853>,  <35.229252, 33.238338, 42.193336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698429, 32.900131, 41.731853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337589, 32.729942, 41.703037>,  <35.121086, 32.627831, 41.685749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337589, 32.729942, 41.703037>,  <35.698429, 32.900131, 41.731853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337589, 32.729942, 41.703037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107635, -0.060188, -0.992367,
		0.417886, -0.902969, 0.100091,
		-0.902101, -0.425470, -0.072039,
		35.066959, 32.602303, 41.681427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730747, 32.255695, 41.367512>,  <35.698429, 32.900131, 41.731853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730747, 32.255695, 41.367512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389694, 32.459351, 41.320538>,  <35.185062, 32.581543, 41.292355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389694, 32.459351, 41.320538>,  <35.730747, 32.255695, 41.367512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389694, 32.459351, 41.320538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151867, 0.026427, -0.988047,
		-0.499950, -0.860279, -0.099854,
		-0.852635, 0.509139, -0.117436,
		35.133904, 32.612091, 41.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719170, 32.301826, 40.779640>,  <35.730747, 32.255695, 41.367512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719170, 32.301826, 40.779640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377724, 32.499580, 40.845276>,  <35.172855, 32.618233, 40.884659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.377724, 32.499580, 40.845276>,  <35.719170, 32.301826, 40.779640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377724, 32.499580, 40.845276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004152, 0.308544, -0.951201,
		-0.520888, -0.812641, -0.261325,
		-0.853615, 0.494384, 0.164091,
		35.121639, 32.647896, 40.894505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239635, 32.134907, 40.221790>,  <35.719170, 32.301826, 40.779640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239635, 32.134907, 40.221790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116962, 32.481003, 40.380444>,  <35.043358, 32.688660, 40.475636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.116962, 32.481003, 40.380444>,  <35.239635, 32.134907, 40.221790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116962, 32.481003, 40.380444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073511, 0.393933, -0.916195,
		-0.948970, -0.310135, -0.057207,
		-0.306679, 0.865236, 0.396629,
		35.024960, 32.740574, 40.499432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675358, 32.284096, 39.758568>,  <35.239635, 32.134907, 40.221790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675358, 32.284096, 39.758568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765636, 32.620667, 39.954960>,  <34.819805, 32.822609, 40.072796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765636, 32.620667, 39.954960>,  <34.675358, 32.284096, 39.758568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765636, 32.620667, 39.954960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096628, 0.520835, -0.848171,
		-0.969393, 0.143988, 0.198857,
		0.225698, 0.841427, 0.490980,
		34.833347, 32.873093, 40.102253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136860, 32.756332, 39.640705>,  <34.675358, 32.284096, 39.758568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136860, 32.756332, 39.640705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427402, 33.005997, 39.755821>,  <34.601730, 33.155796, 39.824890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.427402, 33.005997, 39.755821>,  <34.136860, 32.756332, 39.640705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427402, 33.005997, 39.755821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299964, 0.664616, -0.684330,
		-0.618404, 0.410742, 0.669976,
		0.726360, 0.624161, 0.287793,
		34.645309, 33.193245, 39.842159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777935, 33.416946, 39.866550>,  <34.136860, 32.756332, 39.640705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777935, 33.416946, 39.866550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160007, 33.494389, 39.776981>,  <34.389252, 33.540852, 39.723240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160007, 33.494389, 39.776981>,  <33.777935, 33.416946, 39.866550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160007, 33.494389, 39.776981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292899, 0.727533, -0.620408,
		0.042797, 0.658191, 0.751634,
		0.955185, 0.193602, -0.223920,
		34.446564, 33.552467, 39.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940956, 34.135933, 39.936100>,  <33.777935, 33.416946, 39.866550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940956, 34.135933, 39.936100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245285, 34.037243, 39.696011>,  <34.427883, 33.978027, 39.551956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.245285, 34.037243, 39.696011>,  <33.940956, 34.135933, 39.936100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245285, 34.037243, 39.696011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226806, 0.765486, -0.602155,
		0.608031, 0.594270, 0.526443,
		0.760827, -0.246728, -0.600223,
		34.473534, 33.963223, 39.515945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355160, 34.765141, 39.937172>,  <33.940956, 34.135933, 39.936100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355160, 34.765141, 39.937172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.442600, 34.532120, 39.624035>,  <34.495064, 34.392307, 39.436153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.442600, 34.532120, 39.624035>,  <34.355160, 34.765141, 39.937172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442600, 34.532120, 39.624035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068055, 0.791194, -0.607767,
		0.973438, 0.186137, 0.133313,
		0.218604, -0.582551, -0.782846,
		34.508183, 34.357353, 39.389183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922752, 35.029377, 39.566246>,  <34.355160, 34.765141, 39.937172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922752, 35.029377, 39.566246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.727516, 34.817760, 39.288574>,  <34.610374, 34.690792, 39.121971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.727516, 34.817760, 39.288574>,  <34.922752, 35.029377, 39.566246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727516, 34.817760, 39.288574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028383, 0.804554, -0.593201,
		0.872333, -0.269831, -0.407709,
		-0.488088, -0.529041, -0.694180,
		34.581089, 34.659050, 39.080318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129486, 35.358723, 39.018837>,  <34.922752, 35.029377, 39.566246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129486, 35.358723, 39.018837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834927, 35.118977, 38.893314>,  <34.658192, 34.975128, 38.818001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834927, 35.118977, 38.893314>,  <35.129486, 35.358723, 39.018837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834927, 35.118977, 38.893314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291414, 0.699614, -0.652394,
		0.610568, -0.388974, -0.689859,
		-0.736400, -0.599366, -0.313809,
		34.614006, 34.939167, 38.799171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855309, 35.188408, 38.919346>,  <35.129486, 35.358723, 39.018837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855309, 35.188408, 38.919346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202393, 35.368977, 38.836117>,  <36.410645, 35.477318, 38.786179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202393, 35.368977, 38.836117>,  <35.855309, 35.188408, 38.919346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202393, 35.368977, 38.836117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399070, -0.383099, 0.833054,
		0.296347, -0.805886, -0.512568,
		0.867710, 0.451424, -0.208075,
		36.462708, 35.504402, 38.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526642, 34.642380, 38.884468>,  <35.855309, 35.188408, 38.919346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526642, 34.642380, 38.884468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636868, 35.014618, 38.980843>,  <36.703003, 35.237961, 39.038670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636868, 35.014618, 38.980843>,  <36.526642, 34.642380, 38.884468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636868, 35.014618, 38.980843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277903, -0.317061, 0.906776,
		0.920237, -0.182915, -0.345986,
		0.275562, 0.930599, 0.240939,
		36.719536, 35.293797, 39.053123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162949, 34.485462, 39.212589>,  <36.526642, 34.642380, 38.884468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162949, 34.485462, 39.212589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046432, 34.853268, 39.318150>,  <36.976521, 35.073952, 39.381485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046432, 34.853268, 39.318150>,  <37.162949, 34.485462, 39.212589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046432, 34.853268, 39.318150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252277, -0.192256, 0.948364,
		0.922769, 0.342829, -0.175969,
		-0.291295, 0.919514, 0.263896,
		36.959045, 35.129124, 39.397320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704002, 34.863575, 39.549088>,  <37.162949, 34.485462, 39.212589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704002, 34.863575, 39.549088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.380692, 35.062103, 39.675800>,  <37.186707, 35.181221, 39.751827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.380692, 35.062103, 39.675800>,  <37.704002, 34.863575, 39.549088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380692, 35.062103, 39.675800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304570, -0.108018, 0.946345,
		0.503911, 0.861392, -0.063856,
		-0.808276, 0.496323, 0.316785,
		37.138210, 35.210999, 39.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926159, 35.381935, 39.989471>,  <37.704002, 34.863575, 39.549088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926159, 35.381935, 39.989471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548080, 35.290810, 40.083035>,  <37.321236, 35.236134, 40.139172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548080, 35.290810, 40.083035>,  <37.926159, 35.381935, 39.989471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548080, 35.290810, 40.083035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266479, -0.124261, 0.955797,
		-0.188675, 0.965744, 0.178158,
		-0.945193, -0.227811, 0.233906,
		37.264523, 35.222466, 40.153206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758121, 35.918228, 40.468872>,  <37.926159, 35.381935, 39.989471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758121, 35.918228, 40.468872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502537, 35.617634, 40.534592>,  <37.349186, 35.437275, 40.574024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502537, 35.617634, 40.534592>,  <37.758121, 35.918228, 40.468872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502537, 35.617634, 40.534592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100168, 0.130489, 0.986377,
		-0.762691, 0.646712, -0.008102,
		-0.638959, -0.751489, 0.164302,
		37.310848, 35.392185, 40.583881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395508, 36.147373, 41.172756>,  <37.758121, 35.918228, 40.468872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395508, 36.147373, 41.172756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301029, 35.763699, 41.110565>,  <37.244343, 35.533493, 41.073250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301029, 35.763699, 41.110565>,  <37.395508, 36.147373, 41.172756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301029, 35.763699, 41.110565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075403, -0.141432, 0.987072,
		-0.968776, 0.244866, -0.038920,
		-0.236195, -0.959186, -0.155480,
		37.230171, 35.475945, 41.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899826, 35.972996, 41.681030>,  <37.395508, 36.147373, 41.172756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899826, 35.972996, 41.681030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015270, 35.608177, 41.564495>,  <37.084538, 35.389286, 41.494572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015270, 35.608177, 41.564495>,  <36.899826, 35.972996, 41.681030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015270, 35.608177, 41.564495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135887, -0.340228, 0.930473,
		-0.947755, -0.228954, -0.222128,
		0.288609, -0.912044, -0.291341,
		37.101852, 35.334564, 41.477093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343960, 35.401230, 42.008980>,  <36.899826, 35.972996, 41.681030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343960, 35.401230, 42.008980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700882, 35.243649, 41.920803>,  <36.915035, 35.149097, 41.867897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700882, 35.243649, 41.920803>,  <36.343960, 35.401230, 42.008980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700882, 35.243649, 41.920803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015425, -0.514626, 0.857276,
		-0.451170, -0.761552, -0.465279,
		0.892305, -0.393954, -0.220437,
		36.968575, 35.125462, 41.854671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227337, 34.789448, 42.362133>,  <36.343960, 35.401230, 42.008980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227337, 34.789448, 42.362133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611748, 34.749451, 42.259037>,  <36.842396, 34.725452, 42.197178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611748, 34.749451, 42.259037>,  <36.227337, 34.789448, 42.362133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611748, 34.749451, 42.259037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135965, -0.640799, 0.755573,
		-0.240711, -0.761169, -0.602229,
		0.961026, -0.099993, -0.257739,
		36.900055, 34.719452, 42.181717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392105, 34.041348, 42.332516>,  <36.227337, 34.789448, 42.362133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392105, 34.041348, 42.332516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716908, 34.259686, 42.415173>,  <36.911789, 34.390690, 42.464767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716908, 34.259686, 42.415173>,  <36.392105, 34.041348, 42.332516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716908, 34.259686, 42.415173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313481, -0.706526, 0.634468,
		0.492318, -0.450414, -0.744816,
		0.812005, 0.545846, 0.206639,
		36.960510, 34.423439, 42.477165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037800, 33.623360, 42.120113>,  <36.392105, 34.041348, 42.332516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037800, 33.623360, 42.120113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138798, 33.888477, 42.402092>,  <37.199394, 34.047546, 42.571278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138798, 33.888477, 42.402092>,  <37.037800, 33.623360, 42.120113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138798, 33.888477, 42.402092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357449, -0.740911, 0.568579,
		0.899154, 0.108421, -0.423990,
		0.252493, 0.662794, 0.704948,
		37.214546, 34.087315, 42.613575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638397, 33.416660, 42.342159>,  <37.037800, 33.623360, 42.120113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638397, 33.416660, 42.342159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.520866, 33.658928, 42.637951>,  <37.450348, 33.804291, 42.815426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.520866, 33.658928, 42.637951>,  <37.638397, 33.416660, 42.342159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520866, 33.658928, 42.637951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301056, -0.675611, 0.672989,
		0.907210, 0.420368, 0.016173,
		-0.293830, 0.605673, 0.739475,
		37.432716, 33.840630, 42.859795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201633, 33.383438, 42.802521>,  <37.638397, 33.416660, 42.342159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201633, 33.383438, 42.802521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891415, 33.508781, 43.021732>,  <37.705284, 33.583988, 43.153259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891415, 33.508781, 43.021732>,  <38.201633, 33.383438, 42.802521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891415, 33.508781, 43.021732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252659, -0.641473, 0.724346,
		0.578524, 0.700228, 0.418320,
		-0.775548, 0.313359, 0.548026,
		37.658749, 33.602791, 43.186142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034092, 33.704323, 42.961197>,  <38.201633, 33.383438, 42.802521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034092, 33.704323, 42.961197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.237907, 33.372257, 42.870689>,  <39.360195, 33.173016, 42.816387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.237907, 33.372257, 42.870689>,  <39.034092, 33.704323, 42.961197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237907, 33.372257, 42.870689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132710, 0.335635, -0.932597,
		0.850155, 0.445163, 0.281189,
		0.509534, -0.830168, -0.226264,
		39.390766, 33.123207, 42.802811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677544, 33.869202, 42.662796>,  <39.034092, 33.704323, 42.961197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677544, 33.869202, 42.662796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.603542, 33.499020, 42.530544>,  <39.559143, 33.276913, 42.451195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.603542, 33.499020, 42.530544>,  <39.677544, 33.869202, 42.662796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603542, 33.499020, 42.530544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178456, 0.299205, -0.937352,
		0.966400, -0.232412, 0.109799,
		-0.185000, -0.925451, -0.330627,
		39.548042, 33.221386, 42.431355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142048, 33.754341, 42.117554>,  <39.677544, 33.869202, 42.662796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142048, 33.754341, 42.117554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.881966, 33.453823, 42.072327>,  <39.725918, 33.273510, 42.045189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.881966, 33.453823, 42.072327>,  <40.142048, 33.754341, 42.117554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881966, 33.453823, 42.072327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049943, 0.106235, -0.993086,
		0.758115, -0.651358, -0.031553,
		-0.650206, -0.751297, -0.113069,
		39.686905, 33.228436, 42.038406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492661, 33.373318, 41.711933>,  <40.142048, 33.754341, 42.117554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492661, 33.373318, 41.711933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.105766, 33.278297, 41.676090>,  <39.873631, 33.221287, 41.654587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.105766, 33.278297, 41.676090>,  <40.492661, 33.373318, 41.711933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105766, 33.278297, 41.676090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088753, 0.014299, -0.995951,
		0.237869, -0.971270, 0.007252,
		-0.967234, -0.237549, -0.089604,
		39.815598, 33.207031, 41.649208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524395, 33.034309, 41.062916>,  <40.492661, 33.373318, 41.711933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524395, 33.034309, 41.062916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.127346, 33.068275, 41.097523>,  <39.889114, 33.088657, 41.118286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.127346, 33.068275, 41.097523>,  <40.524395, 33.034309, 41.062916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127346, 33.068275, 41.097523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091156, -0.052388, -0.994458,
		-0.079911, -0.995010, 0.059742,
		-0.992625, 0.084914, 0.086515,
		39.829559, 33.093750, 41.123478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219143, 32.524017, 40.577633>,  <40.524395, 33.034309, 41.062916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219143, 32.524017, 40.577633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942505, 32.802605, 40.654186>,  <39.776524, 32.969757, 40.700119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942505, 32.802605, 40.654186>,  <40.219143, 32.524017, 40.577633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942505, 32.802605, 40.654186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043711, 0.224127, -0.973579,
		-0.720965, -0.681685, -0.124561,
		-0.691592, 0.696471, 0.191384,
		39.735027, 33.011547, 40.711601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615955, 32.424961, 40.082523>,  <40.219143, 32.524017, 40.577633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615955, 32.424961, 40.082523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579468, 32.801205, 40.213326>,  <39.557575, 33.026951, 40.291805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.579468, 32.801205, 40.213326>,  <39.615955, 32.424961, 40.082523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579468, 32.801205, 40.213326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270155, 0.292681, -0.917254,
		-0.958486, -0.172014, 0.227412,
		-0.091222, 0.940611, 0.327001,
		39.552101, 33.083389, 40.311424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900349, 32.622643, 39.918228>,  <39.615955, 32.424961, 40.082523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900349, 32.622643, 39.918228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100441, 32.965641, 39.966351>,  <39.220497, 33.171440, 39.995224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100441, 32.965641, 39.966351>,  <38.900349, 32.622643, 39.918228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100441, 32.965641, 39.966351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401480, 0.352788, -0.845195,
		-0.767194, 0.374489, 0.520742,
		0.500228, 0.857495, 0.120307,
		39.250511, 33.222889, 40.002441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492985, 33.198490, 39.755489>,  <38.900349, 32.622643, 39.918228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492985, 33.198490, 39.755489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853821, 33.369698, 39.733467>,  <39.070324, 33.472424, 39.720253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853821, 33.369698, 39.733467>,  <38.492985, 33.198490, 39.755489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853821, 33.369698, 39.733467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288762, 0.503885, -0.814074,
		-0.320697, 0.750267, 0.578146,
		0.902092, 0.428018, -0.055054,
		39.124447, 33.498104, 39.716949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360275, 33.811279, 39.587418>,  <38.492985, 33.198490, 39.755489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360275, 33.811279, 39.587418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744091, 33.785435, 39.477791>,  <38.974380, 33.769928, 39.412014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.744091, 33.785435, 39.477791>,  <38.360275, 33.811279, 39.587418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744091, 33.785435, 39.477791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176775, 0.619379, -0.764931,
		0.219171, 0.782429, 0.582897,
		0.959539, -0.064609, -0.274064,
		39.031952, 33.766052, 39.395573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534676, 34.536495, 39.303020>,  <38.360275, 33.811279, 39.587418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534676, 34.536495, 39.303020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793961, 34.280472, 39.138031>,  <38.949532, 34.126858, 39.039036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.793961, 34.280472, 39.138031>,  <38.534676, 34.536495, 39.303020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793961, 34.280472, 39.138031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153034, 0.421137, -0.893993,
		0.745921, 0.642623, 0.175036,
		0.648215, -0.640062, -0.412478,
		38.988426, 34.088451, 39.014286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895489, 34.984821, 38.797470>,  <38.534676, 34.536495, 39.303020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895489, 34.984821, 38.797470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986183, 34.608688, 38.695992>,  <39.040600, 34.383007, 38.635105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986183, 34.608688, 38.695992>,  <38.895489, 34.984821, 38.797470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986183, 34.608688, 38.695992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055335, 0.247626, -0.967274,
		0.972382, 0.233359, 0.004114,
		0.226740, -0.940333, -0.253700,
		39.054207, 34.326588, 38.619881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295616, 35.136414, 38.356251>,  <38.895489, 34.984821, 38.797470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295616, 35.136414, 38.356251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162903, 34.766933, 38.279625>,  <39.083275, 34.545246, 38.233650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162903, 34.766933, 38.279625>,  <39.295616, 35.136414, 38.356251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162903, 34.766933, 38.279625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020429, 0.195986, -0.980394,
		0.943136, -0.329188, -0.046154,
		-0.331779, -0.923701, -0.191566,
		39.063370, 34.489822, 38.222157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744869, 34.745171, 37.817986>,  <39.295616, 35.136414, 38.356251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744869, 34.745171, 37.817986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380814, 34.579487, 37.821659>,  <39.162380, 34.480076, 37.823864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.380814, 34.579487, 37.821659>,  <39.744869, 34.745171, 37.817986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380814, 34.579487, 37.821659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041155, 0.068327, -0.996814,
		0.412263, -0.907613, -0.079233,
		-0.910134, -0.414210, 0.009184,
		39.107773, 34.455223, 37.824413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.106989, 36.929131, 43.699524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.283253, 37.270138, 43.587067>,  <25.389011, 37.474743, 43.519592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.283253, 37.270138, 43.587067>,  <25.106989, 36.929131, 43.699524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283253, 37.270138, 43.587067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008488, -0.317129, -0.948344,
		-0.897635, 0.415509, -0.146981,
		0.440658, 0.852514, -0.281140,
		25.415451, 37.525890, 43.502724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788111, 37.207970, 43.051498>,  <25.106989, 36.929131, 43.699524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788111, 37.207970, 43.051498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.167103, 37.332111, 43.082375>,  <25.394499, 37.406597, 43.100899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.167103, 37.332111, 43.082375>,  <24.788111, 37.207970, 43.051498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167103, 37.332111, 43.082375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167841, -0.277104, -0.946067,
		-0.272227, 0.909337, -0.314642,
		0.947482, 0.310354, 0.077188,
		25.451347, 37.425217, 43.105530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907885, 37.738361, 42.539818>,  <24.788111, 37.207970, 43.051498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907885, 37.738361, 42.539818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.273262, 37.595203, 42.617310>,  <25.492489, 37.509308, 42.663807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.273262, 37.595203, 42.617310>,  <24.907885, 37.738361, 42.539818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273262, 37.595203, 42.617310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192380, -0.039757, -0.980515,
		0.358622, 0.932916, 0.032536,
		0.913444, -0.357894, 0.193732,
		25.547295, 37.487835, 42.675430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384926, 38.019192, 42.037811>,  <24.907885, 37.738361, 42.539818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384926, 38.019192, 42.037811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.607035, 37.701473, 42.136414>,  <25.740299, 37.510841, 42.195576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.607035, 37.701473, 42.136414>,  <25.384926, 38.019192, 42.037811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607035, 37.701473, 42.136414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336787, -0.056258, -0.939899,
		0.760427, 0.604918, 0.236271,
		0.555270, -0.794298, 0.246508,
		25.773615, 37.463184, 42.210365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125214, 38.098621, 41.763985>,  <25.384926, 38.019192, 42.037811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125214, 38.098621, 41.763985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.082104, 37.708710, 41.842148>,  <26.056238, 37.474762, 41.889046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.082104, 37.708710, 41.842148>,  <26.125214, 38.098621, 41.763985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082104, 37.708710, 41.842148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604180, -0.220310, -0.765787,
		0.789526, 0.035530, 0.612688,
		-0.107772, -0.974783, 0.195407,
		26.049772, 37.416275, 41.900768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817934, 37.745972, 41.647198>,  <26.125214, 38.098621, 41.763985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817934, 37.745972, 41.647198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542109, 37.457779, 41.617786>,  <26.376614, 37.284863, 41.600140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542109, 37.457779, 41.617786>,  <26.817934, 37.745972, 41.647198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542109, 37.457779, 41.617786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487540, -0.386730, -0.782780,
		0.535545, -0.575624, 0.617939,
		-0.689563, -0.720484, -0.073528,
		26.335239, 37.241634, 41.595726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244045, 37.312008, 41.390190>,  <26.817934, 37.745972, 41.647198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244045, 37.312008, 41.390190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879911, 37.152988, 41.344158>,  <26.661430, 37.057575, 41.316540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.879911, 37.152988, 41.344158>,  <27.244045, 37.312008, 41.390190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879911, 37.152988, 41.344158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284804, -0.399982, -0.871149,
		0.300297, -0.825813, 0.477342,
		-0.910334, -0.397553, -0.115081,
		26.606812, 37.033722, 41.309635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349350, 36.629711, 41.165665>,  <27.244045, 37.312008, 41.390190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349350, 36.629711, 41.165665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980644, 36.731930, 41.049015>,  <26.759420, 36.793262, 40.979023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980644, 36.731930, 41.049015>,  <27.349350, 36.629711, 41.165665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980644, 36.731930, 41.049015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180534, -0.382765, -0.906035,
		-0.343159, -0.887799, 0.306684,
		-0.921764, 0.255547, -0.291627,
		26.704115, 36.808594, 40.961525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016453, 36.057774, 40.810905>,  <27.349350, 36.629711, 41.165665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016453, 36.057774, 40.810905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823065, 36.381081, 40.676468>,  <26.707031, 36.575066, 40.595806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823065, 36.381081, 40.676468>,  <27.016453, 36.057774, 40.810905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823065, 36.381081, 40.676468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013331, -0.390708, -0.920418,
		-0.875260, -0.440514, 0.199670,
		-0.483470, 0.808266, -0.336098,
		26.678024, 36.623562, 40.575638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718971, 35.776661, 40.228649>,  <27.016453, 36.057774, 40.810905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718971, 35.776661, 40.228649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.633362, 36.163643, 40.174656>,  <26.581995, 36.395832, 40.142258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.633362, 36.163643, 40.174656>,  <26.718971, 35.776661, 40.228649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633362, 36.163643, 40.174656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166789, -0.172353, -0.970812,
		-0.962484, -0.185263, 0.198249,
		-0.214025, 0.967457, -0.134987,
		26.569155, 36.453880, 40.134159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115654, 35.807369, 39.958305>,  <26.718971, 35.776661, 40.228649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115654, 35.807369, 39.958305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264017, 36.161160, 39.845078>,  <26.353035, 36.373436, 39.777142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264017, 36.161160, 39.845078>,  <26.115654, 35.807369, 39.958305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264017, 36.161160, 39.845078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302181, -0.173273, -0.937370,
		-0.878130, 0.433216, 0.203004,
		0.370909, 0.884477, -0.283066,
		26.375290, 36.426502, 39.760159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644106, 36.001865, 39.525864>,  <26.115654, 35.807369, 39.958305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644106, 36.001865, 39.525864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970823, 36.214111, 39.435265>,  <26.166853, 36.341457, 39.380905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970823, 36.214111, 39.435265>,  <25.644106, 36.001865, 39.525864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970823, 36.214111, 39.435265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137988, -0.201523, -0.969715,
		-0.560187, 0.823310, -0.091384,
		0.816793, 0.530612, -0.226497,
		26.215860, 36.373295, 39.367317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472902, 36.446125, 39.070950>,  <25.644106, 36.001865, 39.525864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472902, 36.446125, 39.070950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.869911, 36.441605, 39.022331>,  <26.108116, 36.438892, 38.993160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.869911, 36.441605, 39.022331>,  <25.472902, 36.446125, 39.070950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869911, 36.441605, 39.022331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121785, -0.159440, -0.979667,
		-0.008305, 0.987143, -0.159624,
		0.992522, -0.011303, -0.121544,
		26.167667, 36.438213, 38.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649202, 36.891048, 38.559357>,  <25.472902, 36.446125, 39.070950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649202, 36.891048, 38.559357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956470, 36.635082, 38.567505>,  <26.140831, 36.481503, 38.572395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956470, 36.635082, 38.567505>,  <25.649202, 36.891048, 38.559357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956470, 36.635082, 38.567505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108095, -0.160993, -0.981018,
		0.631053, 0.751388, -0.192842,
		0.768171, -0.639920, 0.020374,
		26.186922, 36.443108, 38.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956259, 37.010677, 37.969963>,  <25.649202, 36.891048, 38.559357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956259, 37.010677, 37.969963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.125971, 36.654427, 38.035412>,  <26.227798, 36.440678, 38.074680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.125971, 36.654427, 38.035412>,  <25.956259, 37.010677, 37.969963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125971, 36.654427, 38.035412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093705, -0.136540, -0.986193,
		0.900669, 0.433756, 0.025524,
		0.424282, -0.890625, 0.163622,
		26.253256, 36.387238, 38.084499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569981, 36.980587, 37.443439>,  <25.956259, 37.010677, 37.969963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569981, 36.980587, 37.443439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.477701, 36.608101, 37.556309>,  <26.422335, 36.384609, 37.624031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.477701, 36.608101, 37.556309>,  <26.569981, 36.980587, 37.443439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477701, 36.608101, 37.556309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072011, -0.305543, -0.949452,
		0.970357, -0.198715, 0.137545,
		-0.230696, -0.931212, 0.282176,
		26.408493, 36.328735, 37.640961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014242, 36.639641, 37.138592>,  <26.569981, 36.980587, 37.443439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014242, 36.639641, 37.138592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.752119, 36.347095, 37.214142>,  <26.594845, 36.171566, 37.259472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.752119, 36.347095, 37.214142>,  <27.014242, 36.639641, 37.138592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752119, 36.347095, 37.214142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038426, -0.282002, -0.958644,
		0.754384, -0.620949, 0.212902,
		-0.655308, -0.731366, 0.188878,
		26.555527, 36.127686, 37.270805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205057, 35.987988, 36.782753>,  <27.014242, 36.639641, 37.138592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205057, 35.987988, 36.782753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.814760, 35.946297, 36.859760>,  <26.580582, 35.921280, 36.905964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.814760, 35.946297, 36.859760>,  <27.205057, 35.987988, 36.782753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814760, 35.946297, 36.859760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148596, -0.330489, -0.932039,
		0.160775, -0.938037, 0.306983,
		-0.975741, -0.104232, 0.192523,
		26.522038, 35.915028, 36.917519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995676, 35.427113, 36.357243>,  <27.205057, 35.987988, 36.782753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995676, 35.427113, 36.357243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638906, 35.574921, 36.461491>,  <26.424845, 35.663605, 36.524040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638906, 35.574921, 36.461491>,  <26.995676, 35.427113, 36.357243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638906, 35.574921, 36.461491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406678, -0.403558, -0.819606,
		-0.197690, -0.837014, 0.510221,
		-0.891926, 0.369524, 0.260616,
		26.371328, 35.685780, 36.539677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107754, 36.231258, 36.120129>,  <26.995676, 35.427113, 36.357243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107754, 36.231258, 36.120129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019880, 36.028568, 35.786671>,  <26.967155, 35.906952, 35.586597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.019880, 36.028568, 35.786671>,  <27.107754, 36.231258, 36.120129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019880, 36.028568, 35.786671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230272, 0.857309, -0.460431,
		0.948005, 0.090815, -0.305024,
		-0.219686, -0.506729, -0.833645,
		26.953974, 35.876549, 35.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355137, 36.776005, 35.588184>,  <27.107754, 36.231258, 36.120129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355137, 36.776005, 35.588184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109865, 36.490902, 35.451954>,  <26.962702, 36.319839, 35.370216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109865, 36.490902, 35.451954>,  <27.355137, 36.776005, 35.588184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109865, 36.490902, 35.451954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504213, 0.685027, -0.525840,
		0.608098, -0.150711, -0.779424,
		-0.613177, -0.712758, -0.340573,
		26.925913, 36.277073, 35.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663099, 37.358635, 35.926571>,  <27.355137, 36.776005, 35.588184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663099, 37.358635, 35.926571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727587, 37.744976, 35.845451>,  <27.766279, 37.976780, 35.796780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727587, 37.744976, 35.845451>,  <27.663099, 37.358635, 35.926571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727587, 37.744976, 35.845451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675983, 0.041650, 0.735739,
		0.719065, -0.255707, -0.646188,
		0.161221, 0.965857, -0.202803,
		27.775953, 38.034733, 35.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373978, 37.466492, 35.885048>,  <27.663099, 37.358635, 35.926571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373978, 37.466492, 35.885048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206806, 37.815731, 35.985481>,  <28.106503, 38.025272, 36.045742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.206806, 37.815731, 35.985481>,  <28.373978, 37.466492, 35.885048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206806, 37.815731, 35.985481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736419, 0.163739, 0.656412,
		0.531999, 0.459233, -0.711395,
		-0.417929, 0.873095, 0.251079,
		28.081427, 38.077660, 36.060806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901737, 37.872875, 36.040268>,  <28.373978, 37.466492, 35.885048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901737, 37.872875, 36.040268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603903, 38.085552, 36.201706>,  <28.425201, 38.213158, 36.298569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.603903, 38.085552, 36.201706>,  <28.901737, 37.872875, 36.040268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603903, 38.085552, 36.201706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585987, 0.231056, 0.776680,
		0.319701, 0.814810, -0.483607,
		-0.744587, 0.531693, 0.403599,
		28.380527, 38.245060, 36.322784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124147, 38.521744, 36.174843>,  <28.901737, 37.872875, 36.040268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124147, 38.521744, 36.174843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805611, 38.503185, 36.416069>,  <28.614489, 38.492050, 36.560806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805611, 38.503185, 36.416069>,  <29.124147, 38.521744, 36.174843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805611, 38.503185, 36.416069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537444, 0.403130, 0.740702,
		-0.277481, 0.913966, -0.296093,
		-0.796340, -0.046398, 0.603066,
		28.566708, 38.489265, 36.596989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219275, 39.194649, 36.603889>,  <29.124147, 38.521744, 36.174843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219275, 39.194649, 36.603889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981987, 38.934128, 36.793163>,  <28.839615, 38.777817, 36.906727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981987, 38.934128, 36.793163>,  <29.219275, 39.194649, 36.603889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981987, 38.934128, 36.793163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554824, 0.095128, 0.826512,
		-0.583319, 0.752834, 0.304925,
		-0.593219, -0.651300, 0.473180,
		28.804022, 38.738739, 36.935116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189795, 39.413410, 37.258965>,  <29.219275, 39.194649, 36.603889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189795, 39.413410, 37.258965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037344, 39.046291, 37.303482>,  <28.945873, 38.826019, 37.330193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037344, 39.046291, 37.303482>,  <29.189795, 39.413410, 37.258965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037344, 39.046291, 37.303482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410919, -0.060326, 0.909674,
		-0.828184, 0.392435, 0.400133,
		-0.381126, -0.917799, 0.111298,
		28.923006, 38.770950, 37.336872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765257, 39.443439, 37.933472>,  <29.189795, 39.413410, 37.258965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765257, 39.443439, 37.933472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849079, 39.065624, 37.832329>,  <28.899372, 38.838936, 37.771645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849079, 39.065624, 37.832329>,  <28.765257, 39.443439, 37.933472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849079, 39.065624, 37.832329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308036, -0.181656, 0.933871,
		-0.928009, -0.273586, 0.252884,
		0.209556, -0.944538, -0.252853,
		28.911945, 38.782265, 37.756474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423477, 39.022499, 38.436081>,  <28.765257, 39.443439, 37.933472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423477, 39.022499, 38.436081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740980, 38.841484, 38.273518>,  <28.931482, 38.732876, 38.175980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740980, 38.841484, 38.273518>,  <28.423477, 39.022499, 38.436081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740980, 38.841484, 38.273518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389608, -0.134810, 0.911061,
		-0.467075, -0.881497, 0.069305,
		0.793754, -0.452536, -0.406404,
		28.979107, 38.705723, 38.151596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481382, 38.572117, 38.857479>,  <28.423477, 39.022499, 38.436081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481382, 38.572117, 38.857479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841137, 38.549404, 38.684101>,  <29.056990, 38.535778, 38.580074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841137, 38.549404, 38.684101>,  <28.481382, 38.572117, 38.857479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841137, 38.549404, 38.684101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415815, -0.194883, 0.888324,
		-0.134904, -0.979182, -0.151669,
		0.899388, -0.056772, -0.433449,
		29.110952, 38.532372, 38.554066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758121, 37.816376, 38.954357>,  <28.481382, 38.572117, 38.857479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758121, 37.816376, 38.954357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047924, 38.087124, 38.902309>,  <29.221806, 38.249573, 38.871082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047924, 38.087124, 38.902309>,  <28.758121, 37.816376, 38.954357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047924, 38.087124, 38.902309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402812, -0.262611, 0.876800,
		0.559314, -0.687660, -0.462917,
		0.724507, 0.676875, -0.130115,
		29.265276, 38.290188, 38.863274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277857, 37.462292, 39.297020>,  <28.758121, 37.816376, 38.954357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277857, 37.462292, 39.297020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400839, 37.839725, 39.247829>,  <29.474628, 38.066185, 39.218315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400839, 37.839725, 39.247829>,  <29.277857, 37.462292, 39.297020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400839, 37.839725, 39.247829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414806, -0.016595, 0.909759,
		0.856391, -0.330722, -0.396506,
		0.307457, 0.943582, -0.122974,
		29.493076, 38.122799, 39.210938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977339, 37.544731, 39.615051>,  <29.277857, 37.462292, 39.297020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977339, 37.544731, 39.615051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844679, 37.921928, 39.603985>,  <29.765083, 38.148247, 39.597347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844679, 37.921928, 39.603985>,  <29.977339, 37.544731, 39.615051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844679, 37.921928, 39.603985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342804, 0.147780, 0.927710,
		0.878916, 0.298193, -0.372274,
		-0.331651, 0.942996, -0.027664,
		29.745184, 38.204826, 39.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577904, 37.932350, 39.862686>,  <29.977339, 37.544731, 39.615051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577904, 37.932350, 39.862686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277420, 38.193115, 39.904057>,  <30.097130, 38.349575, 39.928879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277420, 38.193115, 39.904057>,  <30.577904, 37.932350, 39.862686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277420, 38.193115, 39.904057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330387, 0.235708, 0.913940,
		0.571429, 0.720731, -0.392449,
		-0.751208, 0.651912, 0.103429,
		30.052057, 38.388687, 39.935085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825893, 38.560654, 40.059208>,  <30.577904, 37.932350, 39.862686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825893, 38.560654, 40.059208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.442640, 38.588947, 40.170189>,  <30.212688, 38.605923, 40.236778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.442640, 38.588947, 40.170189>,  <30.825893, 38.560654, 40.059208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442640, 38.588947, 40.170189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286193, 0.266502, 0.920364,
		-0.008837, 0.961235, -0.275589,
		-0.958131, 0.070739, 0.277454,
		30.155201, 38.610168, 40.253426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796108, 39.206604, 40.465324>,  <30.825893, 38.560654, 40.059208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796108, 39.206604, 40.465324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490208, 38.969433, 40.566193>,  <30.306667, 38.827129, 40.626713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.490208, 38.969433, 40.566193>,  <30.796108, 39.206604, 40.465324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490208, 38.969433, 40.566193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201369, 0.151828, 0.967677,
		-0.612051, 0.790811, 0.003287,
		-0.764751, -0.592930, 0.252171,
		30.260782, 38.791553, 40.641846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592943, 39.564693, 41.003197>,  <30.796108, 39.206604, 40.465324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592943, 39.564693, 41.003197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.434248, 39.197803, 41.017616>,  <30.339031, 38.977669, 41.026268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.434248, 39.197803, 41.017616>,  <30.592943, 39.564693, 41.003197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434248, 39.197803, 41.017616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171866, -0.035645, 0.984475,
		-0.901700, 0.396773, 0.171781,
		-0.396736, -0.917224, 0.036051,
		30.315228, 38.922638, 41.028431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236258, 39.551689, 41.695293>,  <30.592943, 39.564693, 41.003197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236258, 39.551689, 41.695293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310959, 39.175869, 41.580498>,  <30.355780, 38.950375, 41.511620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310959, 39.175869, 41.580498>,  <30.236258, 39.551689, 41.695293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310959, 39.175869, 41.580498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258533, -0.234825, 0.937026,
		-0.947779, -0.249186, 0.199052,
		0.186752, -0.939555, -0.286985,
		30.366985, 38.894001, 41.494404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055782, 39.147049, 42.308048>,  <30.236258, 39.551689, 41.695293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055782, 39.147049, 42.308048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284292, 38.889870, 42.103985>,  <30.421398, 38.735561, 41.981548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284292, 38.889870, 42.103985>,  <30.055782, 39.147049, 42.308048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284292, 38.889870, 42.103985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248119, -0.457198, 0.854053,
		-0.782355, -0.614480, -0.101658,
		0.571277, -0.642950, -0.510155,
		30.455675, 38.696983, 41.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968962, 38.462341, 42.639988>,  <30.055782, 39.147049, 42.308048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968962, 38.462341, 42.639988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307646, 38.449402, 42.427563>,  <30.510857, 38.441639, 42.300106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307646, 38.449402, 42.427563>,  <29.968962, 38.462341, 42.639988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307646, 38.449402, 42.427563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434070, -0.535204, 0.724665,
		-0.307672, -0.844103, -0.439122,
		0.846712, -0.032350, -0.531067,
		30.561659, 38.439697, 42.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129061, 37.716667, 42.669636>,  <29.968962, 38.462341, 42.639988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129061, 37.716667, 42.669636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465622, 37.910011, 42.572968>,  <30.667559, 38.026016, 42.514965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465622, 37.910011, 42.572968>,  <30.129061, 37.716667, 42.669636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465622, 37.910011, 42.572968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483568, -0.473775, 0.736003,
		0.241257, -0.736139, -0.632373,
		0.841402, 0.483361, -0.241672,
		30.718042, 38.055019, 42.500465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611973, 37.204777, 42.509064>,  <30.129061, 37.716667, 42.669636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611973, 37.204777, 42.509064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.783222, 37.541714, 42.640011>,  <30.885971, 37.743877, 42.718578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.783222, 37.541714, 42.640011>,  <30.611973, 37.204777, 42.509064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783222, 37.541714, 42.640011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302878, -0.475035, 0.826200,
		0.851455, -0.254562, -0.458500,
		0.428122, 0.842342, 0.327369,
		30.911659, 37.794415, 42.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.907532, 30.128275, 42.463264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.679100, 29.832479, 42.320702>,  <39.542042, 29.655003, 42.235165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.679100, 29.832479, 42.320702>,  <39.907532, 30.128275, 42.463264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679100, 29.832479, 42.320702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032830, -0.413251, 0.910025,
		-0.820241, 0.531394, 0.211719,
		-0.571075, -0.739489, -0.356412,
		39.507778, 29.610632, 42.213779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334679, 30.121813, 42.943039>,  <39.907532, 30.128275, 42.463264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334679, 30.121813, 42.943039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368839, 29.773056, 42.750160>,  <39.389336, 29.563803, 42.634434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368839, 29.773056, 42.750160>,  <39.334679, 30.121813, 42.943039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368839, 29.773056, 42.750160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129140, -0.489565, 0.862351,
		-0.987942, -0.011373, -0.154404,
		0.085399, -0.871893, -0.482193,
		39.394459, 29.511488, 42.605503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829063, 29.702045, 43.123653>,  <39.334679, 30.121813, 42.943039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829063, 29.702045, 43.123653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107738, 29.450079, 42.986347>,  <39.274944, 29.298899, 42.903965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107738, 29.450079, 42.986347>,  <38.829063, 29.702045, 43.123653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107738, 29.450079, 42.986347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101652, -0.560359, 0.821988,
		-0.710133, -0.537779, -0.454429,
		0.696691, -0.629914, -0.343263,
		39.316746, 29.261105, 42.883369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574688, 29.132889, 43.342579>,  <38.829063, 29.702045, 43.123653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574688, 29.132889, 43.342579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955223, 29.043829, 43.257374>,  <39.183544, 28.990393, 43.206249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955223, 29.043829, 43.257374>,  <38.574688, 29.132889, 43.342579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955223, 29.043829, 43.257374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020535, -0.643947, 0.764794,
		-0.307450, -0.731955, -0.608042,
		0.951343, -0.222650, -0.213013,
		39.240627, 28.977034, 43.193470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612591, 28.361933, 43.406082>,  <38.574688, 29.132889, 43.342579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612591, 28.361933, 43.406082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.003128, 28.442221, 43.438251>,  <39.237450, 28.490393, 43.457554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.003128, 28.442221, 43.438251>,  <38.612591, 28.361933, 43.406082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003128, 28.442221, 43.438251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100850, -0.751705, 0.651742,
		0.191272, -0.628213, -0.754164,
		0.976342, 0.200718, 0.080425,
		39.296032, 28.502436, 43.462379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891304, 27.683945, 43.417164>,  <38.612591, 28.361933, 43.406082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891304, 27.683945, 43.417164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.176037, 27.924690, 43.561974>,  <39.346874, 28.069138, 43.648861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.176037, 27.924690, 43.561974>,  <38.891304, 27.683945, 43.417164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176037, 27.924690, 43.561974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209478, -0.673914, 0.708491,
		0.670387, -0.428488, -0.605788,
		0.711829, 0.601862, 0.362024,
		39.389587, 28.105249, 43.670582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598877, 27.292923, 43.422802>,  <38.891304, 27.683945, 43.417164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598877, 27.292923, 43.422802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.654655, 27.585304, 43.690014>,  <39.688122, 27.760733, 43.850342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.654655, 27.585304, 43.690014>,  <39.598877, 27.292923, 43.422802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654655, 27.585304, 43.690014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442760, -0.649452, 0.618203,
		0.885730, 0.209570, -0.414202,
		0.139448, 0.730953, 0.668028,
		39.696491, 27.804590, 43.890423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318470, 27.151142, 43.699024>,  <39.598877, 27.292923, 43.422802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318470, 27.151142, 43.699024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106461, 27.369419, 43.958652>,  <39.979256, 27.500385, 44.114429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106461, 27.369419, 43.958652>,  <40.318470, 27.151142, 43.699024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106461, 27.369419, 43.958652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338577, -0.565588, 0.751981,
		0.777458, 0.618329, 0.115017,
		-0.530024, 0.545692, 0.649072,
		39.947453, 27.533127, 44.153374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702599, 27.325720, 44.272758>,  <40.318470, 27.151142, 43.699024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702599, 27.325720, 44.272758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333900, 27.360601, 44.423901>,  <40.112682, 27.381531, 44.514587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333900, 27.360601, 44.423901>,  <40.702599, 27.325720, 44.272758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333900, 27.360601, 44.423901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261382, -0.580074, 0.771488,
		0.286460, 0.809883, 0.511889,
		-0.921748, 0.087202, 0.377857,
		40.057377, 27.386763, 44.537258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825500, 27.359243, 45.086956>,  <40.702599, 27.325720, 44.272758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825500, 27.359243, 45.086956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.449158, 27.265306, 44.989269>,  <40.223354, 27.208944, 44.930656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.449158, 27.265306, 44.989269>,  <40.825500, 27.359243, 45.086956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449158, 27.265306, 44.989269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018129, -0.684870, 0.728440,
		-0.338325, 0.689784, 0.640106,
		-0.940855, -0.234845, -0.244214,
		40.166901, 27.194853, 44.916004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520580, 27.345951, 45.644981>,  <40.825500, 27.359243, 45.086956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520580, 27.345951, 45.644981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239372, 27.136452, 45.452545>,  <40.070648, 27.010752, 45.337082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239372, 27.136452, 45.452545>,  <40.520580, 27.345951, 45.644981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239372, 27.136452, 45.452545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086228, -0.608712, 0.788691,
		-0.705923, 0.595949, 0.382775,
		-0.703020, -0.523749, -0.481092,
		40.028465, 26.979326, 45.308216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919464, 27.217924, 46.123013>,  <40.520580, 27.345951, 45.644981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919464, 27.217924, 46.123013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.912251, 26.938150, 45.837227>,  <39.907921, 26.770287, 45.665756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.912251, 26.938150, 45.837227>,  <39.919464, 27.217924, 46.123013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912251, 26.938150, 45.837227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058690, -0.712611, 0.699100,
		-0.998113, 0.054543, -0.028195,
		-0.018039, -0.699436, -0.714468,
		39.906837, 26.728319, 45.622887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620743, 27.932749, 46.069546>,  <39.919464, 27.217924, 46.123013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620743, 27.932749, 46.069546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.613590, 28.329100, 46.122971>,  <39.609299, 28.566910, 46.155025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.613590, 28.329100, 46.122971>,  <39.620743, 27.932749, 46.069546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613590, 28.329100, 46.122971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735225, -0.103558, 0.669865,
		0.677587, -0.086219, 0.730371,
		-0.017881, 0.990879, 0.133560,
		39.608227, 28.626364, 46.163040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854797, 28.014099, 46.770100>,  <39.620743, 27.932749, 46.069546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854797, 28.014099, 46.770100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596935, 28.289236, 46.636658>,  <39.442219, 28.454319, 46.556591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596935, 28.289236, 46.636658>,  <39.854797, 28.014099, 46.770100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596935, 28.289236, 46.636658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667291, -0.293363, 0.684588,
		0.373022, 0.663935, 0.648109,
		-0.644653, 0.687844, -0.333606,
		39.403538, 28.495588, 46.536575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922916, 28.776741, 46.872967>,  <39.854797, 28.014099, 46.770100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922916, 28.776741, 46.872967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150517, 29.090954, 46.970280>,  <40.287075, 29.279482, 47.028667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.150517, 29.090954, 46.970280>,  <39.922916, 28.776741, 46.872967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150517, 29.090954, 46.970280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329038, 0.488602, -0.808086,
		-0.753642, 0.379751, 0.536483,
		0.568998, 0.785530, 0.243278,
		40.321217, 29.326612, 47.043262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457108, 29.305479, 46.759956>,  <39.922916, 28.776741, 46.872967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457108, 29.305479, 46.759956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814930, 29.482758, 46.783123>,  <40.029621, 29.589125, 46.797024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814930, 29.482758, 46.783123>,  <39.457108, 29.305479, 46.759956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814930, 29.482758, 46.783123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266966, 0.633717, -0.726038,
		-0.358478, 0.634018, 0.685211,
		0.894552, 0.443197, 0.057912,
		40.083294, 29.615717, 46.800495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297222, 30.133680, 46.819859>,  <39.457108, 29.305479, 46.759956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297222, 30.133680, 46.819859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.683960, 30.119930, 46.718639>,  <39.916000, 30.111681, 46.657909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.683960, 30.119930, 46.718639>,  <39.297222, 30.133680, 46.819859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683960, 30.119930, 46.718639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143367, 0.746952, -0.649237,
		0.211332, 0.663988, 0.717257,
		0.966843, -0.034374, -0.253049,
		39.974014, 30.109617, 46.642723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559898, 30.833517, 46.980911>,  <39.297222, 30.133680, 46.819859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559898, 30.833517, 46.980911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788895, 30.650354, 46.708862>,  <39.926292, 30.540457, 46.545631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788895, 30.650354, 46.708862>,  <39.559898, 30.833517, 46.980911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788895, 30.650354, 46.708862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179645, 0.739305, -0.648966,
		0.799988, 0.493709, 0.340985,
		0.572492, -0.457909, -0.680127,
		39.960644, 30.512981, 46.504826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806736, 31.495581, 46.636047>,  <39.559898, 30.833517, 46.980911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806736, 31.495581, 46.636047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.909569, 31.194645, 46.393429>,  <39.971268, 31.014084, 46.247860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.909569, 31.194645, 46.393429>,  <39.806736, 31.495581, 46.636047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909569, 31.194645, 46.393429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022589, 0.622788, -0.782064,
		0.966126, 0.214755, 0.143112,
		0.257080, -0.752340, -0.606543,
		39.986694, 30.968943, 46.211468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199490, 31.827160, 46.204212>,  <39.806736, 31.495581, 46.636047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199490, 31.827160, 46.204212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.159210, 31.472782, 46.023121>,  <40.135040, 31.260155, 45.914467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.159210, 31.472782, 46.023121>,  <40.199490, 31.827160, 46.204212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159210, 31.472782, 46.023121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060994, 0.448684, -0.891607,
		0.993045, -0.117399, 0.008855,
		-0.100701, -0.885946, -0.452724,
		40.129002, 31.206999, 45.887302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754093, 31.663254, 45.695042>,  <40.199490, 31.827160, 46.204212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754093, 31.663254, 45.695042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.416477, 31.481771, 45.580681>,  <40.213905, 31.372883, 45.512066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.416477, 31.481771, 45.580681>,  <40.754093, 31.663254, 45.695042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416477, 31.481771, 45.580681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018043, 0.556851, -0.830416,
		0.535965, -0.695752, -0.478195,
		-0.844047, -0.453702, -0.285899,
		40.163265, 31.345659, 45.494911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831917, 31.557598, 44.959751>,  <40.754093, 31.663254, 45.695042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831917, 31.557598, 44.959751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.441349, 31.479162, 44.995872>,  <40.207008, 31.432100, 45.017544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.441349, 31.479162, 44.995872>,  <40.831917, 31.557598, 44.959751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441349, 31.479162, 44.995872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171508, 0.450560, -0.876117,
		0.131110, -0.870945, -0.473567,
		-0.976419, -0.196088, 0.090301,
		40.148422, 31.420336, 45.022964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616562, 31.315702, 44.331451>,  <40.831917, 31.557598, 44.959751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616562, 31.315702, 44.331451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298786, 31.471165, 44.518135>,  <40.108120, 31.564442, 44.630146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298786, 31.471165, 44.518135>,  <40.616562, 31.315702, 44.331451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298786, 31.471165, 44.518135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266733, 0.467099, -0.843013,
		-0.545642, -0.794207, -0.267413,
		-0.794436, 0.388655, 0.466711,
		40.060455, 31.587761, 44.658150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028870, 31.255539, 43.848724>,  <40.616562, 31.315702, 44.331451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028870, 31.255539, 43.848724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900028, 31.528288, 44.111420>,  <39.822723, 31.691936, 44.269035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900028, 31.528288, 44.111420>,  <40.028870, 31.255539, 43.848724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900028, 31.528288, 44.111420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392983, 0.534810, -0.748026,
		-0.861285, -0.499030, 0.095697,
		-0.322108, 0.681870, 0.656734,
		39.803394, 31.732849, 44.308441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314079, 31.337610, 43.711380>,  <40.028870, 31.255539, 43.848724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314079, 31.337610, 43.711380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431999, 31.676220, 43.888687>,  <39.502750, 31.879387, 43.995071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431999, 31.676220, 43.888687>,  <39.314079, 31.337610, 43.711380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431999, 31.676220, 43.888687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385090, 0.529795, -0.755661,
		-0.874529, 0.052066, 0.482170,
		0.294795, 0.846526, 0.443271,
		39.520439, 31.930178, 44.021667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813717, 31.820883, 43.480465>,  <39.314079, 31.337610, 43.711380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813717, 31.820883, 43.480465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.126411, 32.035233, 43.608044>,  <39.314030, 32.163841, 43.684589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.126411, 32.035233, 43.608044>,  <38.813717, 31.820883, 43.480465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126411, 32.035233, 43.608044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201441, 0.701029, -0.684091,
		-0.590177, 0.470530, 0.655967,
		0.781737, 0.535873, 0.318947,
		39.360931, 32.195995, 43.703728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511650, 32.478893, 43.489140>,  <38.813717, 31.820883, 43.480465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511650, 32.478893, 43.489140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.909714, 32.518200, 43.487820>,  <39.148552, 32.541786, 43.487030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.909714, 32.518200, 43.487820>,  <38.511650, 32.478893, 43.489140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909714, 32.518200, 43.487820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071734, 0.702687, -0.707874,
		-0.067244, 0.704680, 0.706331,
		0.995155, 0.098268, -0.003298,
		39.208260, 32.547680, 43.486832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678387, 33.166550, 43.371460>,  <38.511650, 32.478893, 43.489140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678387, 33.166550, 43.371460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026756, 33.010910, 43.251400>,  <39.235779, 32.917526, 43.179363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026756, 33.010910, 43.251400>,  <38.678387, 33.166550, 43.371460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026756, 33.010910, 43.251400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044194, 0.670328, -0.740748,
		0.489427, 0.631870, 0.601000,
		0.870924, -0.389103, -0.300151,
		39.288033, 32.894180, 43.161354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530766, 33.702972, 43.908459>,  <38.678387, 33.166550, 43.371460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530766, 33.702972, 43.908459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131744, 33.679497, 43.893253>,  <37.892330, 33.665413, 43.884129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131744, 33.679497, 43.893253>,  <38.530766, 33.702972, 43.908459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131744, 33.679497, 43.893253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004906, -0.483546, 0.875305,
		-0.069753, 0.873349, 0.482074,
		-0.997552, -0.058690, -0.038013,
		37.832478, 33.661888, 43.881851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231907, 33.966675, 44.559113>,  <38.530766, 33.702972, 43.908459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231907, 33.966675, 44.559113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940693, 33.745293, 44.397301>,  <37.765965, 33.612461, 44.300213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940693, 33.745293, 44.397301>,  <38.231907, 33.966675, 44.559113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940693, 33.745293, 44.397301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090458, -0.507378, 0.856963,
		-0.679543, 0.660494, 0.319326,
		-0.728038, -0.553457, -0.404532,
		37.722282, 33.579254, 44.275940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772930, 33.981426, 45.080128>,  <38.231907, 33.966675, 44.559113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772930, 33.981426, 45.080128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658714, 33.661682, 44.868660>,  <37.590183, 33.469833, 44.741779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658714, 33.661682, 44.868660>,  <37.772930, 33.981426, 45.080128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658714, 33.661682, 44.868660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220777, -0.481929, 0.847940,
		-0.932590, 0.358839, -0.038870,
		-0.285541, -0.799362, -0.528665,
		37.573051, 33.421875, 44.710060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096657, 33.853657, 45.229477>,  <37.772930, 33.981426, 45.080128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096657, 33.853657, 45.229477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266647, 33.516758, 45.096802>,  <37.368641, 33.314617, 45.017197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266647, 33.516758, 45.096802>,  <37.096657, 33.853657, 45.229477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266647, 33.516758, 45.096802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077938, -0.399105, 0.913587,
		-0.901844, -0.362399, -0.235252,
		0.424974, -0.842248, -0.331686,
		37.394138, 33.264084, 44.997295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711990, 33.212032, 45.507576>,  <37.096657, 33.853657, 45.229477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711990, 33.212032, 45.507576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040237, 33.010674, 45.399368>,  <37.237186, 32.889858, 45.334442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040237, 33.010674, 45.399368>,  <36.711990, 33.212032, 45.507576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040237, 33.010674, 45.399368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146545, -0.642902, 0.751799,
		-0.552367, -0.577297, -0.601347,
		0.820619, -0.503393, -0.270518,
		37.286423, 32.859653, 45.318214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592197, 32.518959, 45.646023>,  <36.711990, 33.212032, 45.507576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592197, 32.518959, 45.646023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983902, 32.491459, 45.569798>,  <37.218925, 32.474960, 45.524063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983902, 32.491459, 45.569798>,  <36.592197, 32.518959, 45.646023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983902, 32.491459, 45.569798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050373, -0.828482, 0.557745,
		-0.196227, -0.555779, -0.807839,
		0.979264, -0.068751, -0.190566,
		37.277679, 32.470833, 45.512627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674774, 31.813675, 45.436169>,  <36.592197, 32.518959, 45.646023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674774, 31.813675, 45.436169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.020710, 31.968861, 45.563629>,  <37.228271, 32.061974, 45.640106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.020710, 31.968861, 45.563629>,  <36.674774, 31.813675, 45.436169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020710, 31.968861, 45.563629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126340, -0.782453, 0.609759,
		0.485892, -0.487085, -0.725711,
		0.864839, 0.387963, 0.318650,
		37.280163, 32.085251, 45.659225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461876, 31.101080, 45.129406>,  <36.674774, 31.813675, 45.436169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461876, 31.101080, 45.129406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090633, 30.971291, 45.202450>,  <35.867889, 30.893417, 45.246277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090633, 30.971291, 45.202450>,  <36.461876, 31.101080, 45.129406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090633, 30.971291, 45.202450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361869, 0.670681, -0.647485,
		0.087620, -0.667012, -0.739877,
		-0.928102, -0.324472, 0.182606,
		35.812202, 30.873949, 45.257233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307228, 30.910007, 44.510525>,  <36.461876, 31.101080, 45.129406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307228, 30.910007, 44.510525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949818, 30.966404, 44.681046>,  <35.735371, 31.000242, 44.783356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949818, 30.966404, 44.681046>,  <36.307228, 30.910007, 44.510525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949818, 30.966404, 44.681046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391438, 0.220521, -0.893390,
		-0.219970, -0.965138, -0.141851,
		-0.893527, 0.140994, 0.426300,
		35.681759, 31.008701, 44.808937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887527, 30.605766, 43.973053>,  <36.307228, 30.910007, 44.510525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887527, 30.605766, 43.973053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659031, 30.847486, 44.195229>,  <35.521935, 30.992517, 44.328533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659031, 30.847486, 44.195229>,  <35.887527, 30.605766, 43.973053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659031, 30.847486, 44.195229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444045, 0.341599, -0.828332,
		-0.690296, -0.719815, 0.073201,
		-0.571240, 0.604299, 0.555434,
		35.487659, 31.028776, 44.361858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252903, 30.489241, 43.749825>,  <35.887527, 30.605766, 43.973053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252903, 30.489241, 43.749825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230835, 30.852097, 43.916702>,  <35.217594, 31.069811, 44.016830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230835, 30.852097, 43.916702>,  <35.252903, 30.489241, 43.749825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230835, 30.852097, 43.916702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363241, 0.370965, -0.854658,
		-0.930060, -0.198696, 0.309044,
		-0.055172, 0.907141, 0.417195,
		35.214283, 31.124239, 44.041862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581646, 30.724205, 43.592426>,  <35.252903, 30.489241, 43.749825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581646, 30.724205, 43.592426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774403, 31.059446, 43.694691>,  <34.890057, 31.260592, 43.756050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774403, 31.059446, 43.694691>,  <34.581646, 30.724205, 43.592426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774403, 31.059446, 43.694691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173250, 0.377146, -0.909805,
		-0.858930, 0.394138, 0.326946,
		0.481895, 0.838103, 0.255658,
		34.918972, 31.310877, 43.771389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183575, 31.245672, 43.374279>,  <34.581646, 30.724205, 43.592426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183575, 31.245672, 43.374279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527874, 31.445724, 43.412205>,  <34.734451, 31.565756, 43.434959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527874, 31.445724, 43.412205>,  <34.183575, 31.245672, 43.374279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527874, 31.445724, 43.412205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169530, 0.457270, -0.873020,
		-0.479977, 0.735374, 0.478379,
		0.860745, 0.500129, 0.094811,
		34.786098, 31.595762, 43.440647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966305, 31.993496, 43.214535>,  <34.183575, 31.245672, 43.374279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966305, 31.993496, 43.214535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362415, 31.974615, 43.162178>,  <34.600082, 31.963285, 43.130764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362415, 31.974615, 43.162178>,  <33.966305, 31.993496, 43.214535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362415, 31.974615, 43.162178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084892, 0.540350, -0.837147,
		0.110241, 0.840116, 0.531086,
		0.990273, -0.047203, -0.130888,
		34.659496, 31.960455, 43.122913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.878448, 26.245144, 44.586464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.821121, 25.849291, 44.590221>,  <36.786724, 25.611778, 44.592476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.821121, 25.849291, 44.590221>,  <36.878448, 26.245144, 44.586464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821121, 25.849291, 44.590221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253160, -0.045833, -0.966338,
		0.956750, -0.136117, 0.257104,
		-0.143319, -0.989632, 0.009391,
		36.778126, 25.552401, 44.593040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585056, 26.093306, 44.605648>,  <36.878448, 26.245144, 44.586464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585056, 26.093306, 44.605648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.878616, 25.840349, 44.506470>,  <38.054752, 25.688576, 44.446964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.878616, 25.840349, 44.506470>,  <37.585056, 26.093306, 44.605648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878616, 25.840349, 44.506470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187896, 0.539781, -0.820568,
		0.652756, 0.555624, 0.514968,
		0.733897, -0.632391, -0.247945,
		38.098785, 25.650631, 44.432087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185982, 26.487856, 44.433388>,  <37.585056, 26.093306, 44.605648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185982, 26.487856, 44.433388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.221527, 26.133112, 44.252022>,  <38.242855, 25.920265, 44.143204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.221527, 26.133112, 44.252022>,  <38.185982, 26.487856, 44.433388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221527, 26.133112, 44.252022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030558, 0.457430, -0.888720,
		0.995575, 0.065118, 0.067749,
		0.088862, -0.886858, -0.453416,
		38.248184, 25.867054, 44.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674282, 26.576931, 43.894035>,  <38.185982, 26.487856, 44.433388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674282, 26.576931, 43.894035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522240, 26.226608, 43.775051>,  <38.431015, 26.016415, 43.703659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522240, 26.226608, 43.775051>,  <38.674282, 26.576931, 43.894035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522240, 26.226608, 43.775051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123636, 0.270606, -0.954718,
		0.916643, -0.399669, 0.005423,
		-0.380104, -0.875806, -0.297463,
		38.408207, 25.963867, 43.685814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096394, 26.482321, 43.320164>,  <38.674282, 26.576931, 43.894035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096394, 26.482321, 43.320164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.775352, 26.245605, 43.290184>,  <38.582729, 26.103577, 43.272198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.775352, 26.245605, 43.290184>,  <39.096394, 26.482321, 43.320164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775352, 26.245605, 43.290184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170563, 0.348066, -0.921823,
		0.571608, -0.727076, -0.380296,
		-0.802603, -0.591786, -0.074945,
		38.534573, 26.068069, 43.267700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132248, 26.140703, 42.633801>,  <39.096394, 26.482321, 43.320164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132248, 26.140703, 42.633801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747181, 26.137012, 42.742008>,  <38.516140, 26.134798, 42.806934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747181, 26.137012, 42.742008>,  <39.132248, 26.140703, 42.633801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747181, 26.137012, 42.742008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262569, 0.274605, -0.925013,
		-0.065753, -0.961513, -0.266776,
		-0.962670, -0.009225, 0.270520,
		38.458382, 26.134245, 42.823166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789173, 25.726862, 42.005955>,  <39.132248, 26.140703, 42.633801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789173, 25.726862, 42.005955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.480461, 25.891296, 42.200016>,  <38.295235, 25.989958, 42.316452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.480461, 25.891296, 42.200016>,  <38.789173, 25.726862, 42.005955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480461, 25.891296, 42.200016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444301, 0.197213, -0.873902,
		-0.454927, -0.890008, 0.030442,
		-0.771776, 0.411087, 0.485149,
		38.248928, 26.014622, 42.345562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051605, 25.470200, 41.737850>,  <38.789173, 25.726862, 42.005955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051605, 25.470200, 41.737850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018269, 25.827816, 41.913918>,  <37.998268, 26.042385, 42.019558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018269, 25.827816, 41.913918>,  <38.051605, 25.470200, 41.737850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018269, 25.827816, 41.913918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445711, 0.361619, -0.818885,
		-0.891289, -0.264434, 0.368346,
		-0.083340, 0.894039, 0.440168,
		37.993267, 26.096027, 42.045967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458073, 25.813683, 41.501965>,  <38.051605, 25.470200, 41.737850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458073, 25.813683, 41.501965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.636246, 26.143858, 41.640667>,  <37.743149, 26.341963, 41.723888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.636246, 26.143858, 41.640667>,  <37.458073, 25.813683, 41.501965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636246, 26.143858, 41.640667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474235, 0.546034, -0.690614,
		-0.759400, 0.143179, 0.634674,
		0.445435, 0.825437, 0.346758,
		37.769875, 26.391489, 41.744694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921730, 26.308008, 41.587749>,  <37.458073, 25.813683, 41.501965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921730, 26.308008, 41.587749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270161, 26.497263, 41.535046>,  <37.479221, 26.610815, 41.503422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.270161, 26.497263, 41.535046>,  <36.921730, 26.308008, 41.587749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270161, 26.497263, 41.535046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442475, 0.639569, -0.628623,
		-0.213154, 0.605882, 0.766467,
		0.871081, 0.473136, -0.131761,
		37.531487, 26.639204, 41.495518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796261, 26.896706, 41.470497>,  <36.921730, 26.308008, 41.587749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796261, 26.896706, 41.470497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156876, 26.956116, 41.307934>,  <37.373245, 26.991762, 41.210396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156876, 26.956116, 41.307934>,  <36.796261, 26.896706, 41.470497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156876, 26.956116, 41.307934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397431, 0.655646, -0.642010,
		0.171107, 0.740317, 0.650118,
		0.901538, 0.148525, -0.406411,
		37.427338, 27.000673, 41.186012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881573, 27.599354, 41.404701>,  <36.796261, 26.896706, 41.470497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881573, 27.599354, 41.404701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.168671, 27.470127, 41.157974>,  <37.340931, 27.392591, 41.009937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.168671, 27.470127, 41.157974>,  <36.881573, 27.599354, 41.404701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168671, 27.470127, 41.157974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288949, 0.667780, -0.685987,
		0.633519, 0.670595, 0.385948,
		0.717748, -0.323067, -0.616819,
		37.383995, 27.373207, 40.972927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362408, 28.195623, 41.796974>,  <36.881573, 27.599354, 41.404701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362408, 28.195623, 41.796974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.122135, 28.513037, 41.835938>,  <36.977974, 28.703485, 41.859314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.122135, 28.513037, 41.835938>,  <37.362408, 28.195623, 41.796974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122135, 28.513037, 41.835938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356617, -0.374988, 0.855692,
		0.715548, 0.479258, 0.508235,
		-0.600679, 0.793534, 0.097410,
		36.941933, 28.751097, 41.865162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523643, 28.533861, 42.504791>,  <37.362408, 28.195623, 41.796974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523643, 28.533861, 42.504791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151409, 28.626587, 42.391460>,  <36.928070, 28.682222, 42.323460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151409, 28.626587, 42.391460>,  <37.523643, 28.533861, 42.504791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151409, 28.626587, 42.391460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341113, -0.268165, 0.900961,
		0.132875, 0.935067, 0.328624,
		-0.930584, 0.231813, -0.283331,
		36.872234, 28.696131, 42.306461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197231, 28.859781, 43.097061>,  <37.523643, 28.533861, 42.504791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197231, 28.859781, 43.097061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.887978, 28.757166, 42.865040>,  <36.702427, 28.695597, 42.725826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.887978, 28.757166, 42.865040>,  <37.197231, 28.859781, 43.097061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887978, 28.757166, 42.865040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504871, -0.304628, 0.807655,
		-0.383893, 0.917274, 0.105999,
		-0.773131, -0.256537, -0.580050,
		36.656040, 28.680204, 42.691025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695824, 29.215195, 43.345825>,  <37.197231, 28.859781, 43.097061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695824, 29.215195, 43.345825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.521595, 28.912895, 43.150227>,  <36.417057, 28.731516, 43.032867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.521595, 28.912895, 43.150227>,  <36.695824, 29.215195, 43.345825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521595, 28.912895, 43.150227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450014, -0.287660, 0.845423,
		-0.779593, 0.588299, -0.214801,
		-0.435571, -0.755749, -0.489001,
		36.390923, 28.686171, 43.003525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041447, 29.191128, 43.563927>,  <36.695824, 29.215195, 43.345825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041447, 29.191128, 43.563927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.088108, 28.818615, 43.425880>,  <36.116104, 28.595108, 43.343052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.088108, 28.818615, 43.425880>,  <36.041447, 29.191128, 43.563927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088108, 28.818615, 43.425880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431001, -0.360532, 0.827197,
		-0.894780, 0.052251, -0.443440,
		0.116652, -0.931282, -0.345117,
		36.123104, 28.539230, 43.322346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456726, 28.873232, 43.650425>,  <36.041447, 29.191128, 43.563927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456726, 28.873232, 43.650425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691364, 28.550085, 43.627594>,  <35.832146, 28.356197, 43.613895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691364, 28.550085, 43.627594>,  <35.456726, 28.873232, 43.650425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691364, 28.550085, 43.627594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553867, -0.451585, 0.699501,
		-0.590878, -0.378711, -0.712349,
		0.586595, -0.807866, -0.057076,
		35.867344, 28.307726, 43.610470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982006, 28.350863, 43.512234>,  <35.456726, 28.873232, 43.650425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982006, 28.350863, 43.512234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.319626, 28.179962, 43.641872>,  <35.522198, 28.077421, 43.719654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.319626, 28.179962, 43.641872>,  <34.982006, 28.350863, 43.512234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319626, 28.179962, 43.641872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523055, -0.522576, 0.673296,
		-0.118302, -0.737815, -0.664556,
		0.844049, -0.427251, 0.324096,
		35.572842, 28.051786, 43.739101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747467, 27.707550, 43.713390>,  <34.982006, 28.350863, 43.512234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747467, 27.707550, 43.713390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100315, 27.704268, 43.901775>,  <35.312023, 27.702297, 44.014805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100315, 27.704268, 43.901775>,  <34.747467, 27.707550, 43.713390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100315, 27.704268, 43.901775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393559, -0.562206, 0.727348,
		0.258808, -0.826957, -0.499160,
		0.882116, -0.008206, 0.470960,
		35.364948, 27.701805, 44.043064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749420, 27.139973, 44.023045>,  <34.747467, 27.707550, 43.713390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749420, 27.139973, 44.023045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026051, 27.348745, 44.222771>,  <35.192028, 27.474009, 44.342606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.026051, 27.348745, 44.222771>,  <34.749420, 27.139973, 44.023045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026051, 27.348745, 44.222771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319081, -0.399417, 0.859449,
		0.648008, -0.753694, -0.109688,
		0.691573, 0.521930, 0.499315,
		35.233521, 27.505325, 44.372566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990574, 26.735294, 44.465378>,  <34.749420, 27.139973, 44.023045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990574, 26.735294, 44.465378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.102715, 27.083717, 44.626701>,  <35.169998, 27.292772, 44.723495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.102715, 27.083717, 44.626701>,  <34.990574, 26.735294, 44.465378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102715, 27.083717, 44.626701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287897, -0.324512, 0.901003,
		0.915706, -0.368711, 0.159797,
		0.280354, 0.871059, 0.403309,
		35.186821, 27.345036, 44.747692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324688, 26.564272, 45.006653>,  <34.990574, 26.735294, 44.465378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324688, 26.564272, 45.006653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200653, 26.936516, 45.084438>,  <35.126232, 27.159863, 45.131111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200653, 26.936516, 45.084438>,  <35.324688, 26.564272, 45.006653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200653, 26.936516, 45.084438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217889, -0.268667, 0.938265,
		0.925403, 0.248572, 0.286079,
		-0.310086, 0.930607, 0.194464,
		35.107628, 27.215698, 45.142776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606064, 26.661818, 45.618301>,  <35.324688, 26.564272, 45.006653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606064, 26.661818, 45.618301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.307686, 26.927193, 45.594906>,  <35.128658, 27.086418, 45.580868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.307686, 26.927193, 45.594906>,  <35.606064, 26.661818, 45.618301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307686, 26.927193, 45.594906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335129, -0.298009, 0.893800,
		0.575551, 0.686324, 0.444635,
		-0.745942, 0.663438, -0.058488,
		35.083904, 27.126225, 45.577358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666275, 27.057114, 46.255051>,  <35.606064, 26.661818, 45.618301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666275, 27.057114, 46.255051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291859, 27.106848, 46.123375>,  <35.067207, 27.136688, 46.044369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291859, 27.106848, 46.123375>,  <35.666275, 27.057114, 46.255051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291859, 27.106848, 46.123375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350478, -0.245746, 0.903755,
		0.031472, 0.961327, 0.273605,
		-0.936042, 0.124335, -0.329190,
		35.011047, 27.144148, 46.024616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439766, 27.478178, 46.684128>,  <35.666275, 27.057114, 46.255051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439766, 27.478178, 46.684128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105869, 27.313133, 46.538277>,  <34.905529, 27.214108, 46.450768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105869, 27.313133, 46.538277>,  <35.439766, 27.478178, 46.684128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105869, 27.313133, 46.538277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344467, -0.125311, 0.930398,
		-0.429584, 0.902247, -0.037528,
		-0.834745, -0.412611, -0.364626,
		34.855446, 27.189350, 46.428890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923565, 27.999870, 46.385685>,  <35.439766, 27.478178, 46.684128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923565, 27.999870, 46.385685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958878, 28.225916, 46.713795>,  <35.980064, 28.361544, 46.910660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958878, 28.225916, 46.713795>,  <35.923565, 27.999870, 46.385685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958878, 28.225916, 46.713795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053350, 0.824990, -0.562623,
		-0.994666, 0.005909, 0.102982,
		0.088283, 0.565116, 0.820274,
		35.985363, 28.395451, 46.959877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325630, 28.412294, 46.426289>,  <35.923565, 27.999870, 46.385685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325630, 28.412294, 46.426289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.598312, 28.620079, 46.632370>,  <35.761925, 28.744749, 46.756020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.598312, 28.620079, 46.632370>,  <35.325630, 28.412294, 46.426289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598312, 28.620079, 46.632370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192973, 0.806920, -0.558249,
		-0.705714, 0.281144, 0.650327,
		0.681710, 0.519460, 0.515201,
		35.802826, 28.775917, 46.786930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035694, 29.035233, 46.648029>,  <35.325630, 28.412294, 46.426289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035694, 29.035233, 46.648029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429993, 29.102455, 46.645027>,  <35.666573, 29.142790, 46.643227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429993, 29.102455, 46.645027>,  <35.035694, 29.035233, 46.648029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429993, 29.102455, 46.645027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153501, 0.880322, -0.448855,
		-0.068827, 0.443610, 0.893573,
		0.985749, 0.168058, -0.007504,
		35.725716, 29.152872, 46.642776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208164, 29.730951, 46.919048>,  <35.035694, 29.035233, 46.648029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208164, 29.730951, 46.919048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.507984, 29.634499, 46.672462>,  <35.687878, 29.576628, 46.524509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.507984, 29.634499, 46.672462>,  <35.208164, 29.730951, 46.919048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507984, 29.634499, 46.672462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125130, 0.862888, -0.489660,
		0.650013, 0.444163, 0.616606,
		0.749550, -0.241129, -0.616466,
		35.732849, 29.562160, 46.487522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611736, 30.327925, 46.806866>,  <35.208164, 29.730951, 46.919048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611736, 30.327925, 46.806866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.704231, 30.107288, 46.486298>,  <35.759727, 29.974907, 46.293957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.704231, 30.107288, 46.486298>,  <35.611736, 30.327925, 46.806866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704231, 30.107288, 46.486298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053213, 0.815343, -0.576527,
		0.971442, 0.175958, 0.159183,
		0.231234, -0.551592, -0.801422,
		35.773602, 29.941811, 46.245872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997730, 30.752918, 46.482258>,  <35.611736, 30.327925, 46.806866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997730, 30.752918, 46.482258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920269, 30.495993, 46.185627>,  <35.873791, 30.341837, 46.007648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.920269, 30.495993, 46.185627>,  <35.997730, 30.752918, 46.482258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920269, 30.495993, 46.185627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145925, 0.766331, -0.625653,
		0.970157, -0.012946, -0.242132,
		-0.193653, -0.642315, -0.741573,
		35.862175, 30.303299, 45.963154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327396, 31.069197, 45.923389>,  <35.997730, 30.752918, 46.482258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327396, 31.069197, 45.923389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.045288, 30.822920, 45.782810>,  <35.876022, 30.675154, 45.698463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.045288, 30.822920, 45.782810>,  <36.327396, 31.069197, 45.923389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045288, 30.822920, 45.782810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350356, 0.733672, -0.582217,
		0.616313, -0.287490, -0.733149,
		-0.705273, -0.615691, -0.351447,
		35.833706, 30.638212, 45.677376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093094, 31.129221, 45.657879>,  <36.327396, 31.069197, 45.923389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093094, 31.129221, 45.657879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297825, 31.449509, 45.782379>,  <37.420662, 31.641682, 45.857079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297825, 31.449509, 45.782379>,  <37.093094, 31.129221, 45.657879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297825, 31.449509, 45.782379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487161, -0.568941, 0.662556,
		0.707606, -0.187485, -0.681280,
		0.511828, 0.800722, 0.311251,
		37.451374, 31.689726, 45.875755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832142, 31.079882, 45.593624>,  <37.093094, 31.129221, 45.657879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832142, 31.079882, 45.593624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.745853, 31.318731, 45.902664>,  <37.694080, 31.462042, 46.088089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.745853, 31.318731, 45.902664>,  <37.832142, 31.079882, 45.593624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745853, 31.318731, 45.902664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375552, -0.679628, 0.630133,
		0.901346, 0.426084, -0.077639,
		-0.215724, 0.597125, 0.772596,
		37.681137, 31.497869, 46.134441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336830, 30.921656, 46.006405>,  <37.832142, 31.079882, 45.593624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336830, 30.921656, 46.006405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.097198, 31.123938, 46.254715>,  <37.953419, 31.245306, 46.403702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.097198, 31.123938, 46.254715>,  <38.336830, 30.921656, 46.006405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097198, 31.123938, 46.254715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230622, -0.633468, 0.738601,
		0.766757, 0.585647, 0.262872,
		-0.599081, 0.505703, 0.620779,
		37.917473, 31.275648, 46.440948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711742, 31.043148, 46.500065>,  <38.336830, 30.921656, 46.006405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711742, 31.043148, 46.500065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.341137, 31.069134, 46.648308>,  <38.118774, 31.084726, 46.737255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.341137, 31.069134, 46.648308>,  <38.711742, 31.043148, 46.500065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341137, 31.069134, 46.648308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277517, -0.547143, 0.789695,
		0.254080, 0.834514, 0.488907,
		-0.926514, 0.064966, 0.370610,
		38.063183, 31.088623, 46.759491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875271, 31.198259, 47.161701>,  <38.711742, 31.043148, 46.500065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875271, 31.198259, 47.161701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502140, 31.054684, 47.174305>,  <38.278263, 30.968538, 47.181866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502140, 31.054684, 47.174305>,  <38.875271, 31.198259, 47.161701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502140, 31.054684, 47.174305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177470, -0.381592, 0.907134,
		-0.313585, 0.851792, 0.419661,
		-0.932828, -0.358941, 0.031506,
		38.222290, 30.947001, 47.183758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647919, 31.293871, 47.880310>,  <38.875271, 31.198259, 47.161701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647919, 31.293871, 47.880310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.376911, 31.043930, 47.725121>,  <38.214306, 30.893965, 47.632008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.376911, 31.043930, 47.725121>,  <38.647919, 31.293871, 47.880310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376911, 31.043930, 47.725121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025477, -0.507236, 0.861430,
		-0.735060, 0.593523, 0.327745,
		-0.677523, -0.624853, -0.387971,
		38.173653, 30.856474, 47.608730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089424, 31.166679, 48.369156>,  <38.647919, 31.293871, 47.880310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089424, 31.166679, 48.369156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.119217, 30.857765, 48.116798>,  <38.137093, 30.672417, 47.965382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.119217, 30.857765, 48.116798>,  <38.089424, 31.166679, 48.369156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119217, 30.857765, 48.116798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013408, -0.631822, 0.774998,
		-0.997133, -0.066180, -0.036702,
		0.074479, -0.772283, -0.630897,
		38.141560, 30.626080, 47.927528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535557, 30.631300, 48.602917>,  <38.089424, 31.166679, 48.369156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535557, 30.631300, 48.602917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.835155, 30.464552, 48.396915>,  <38.014915, 30.364502, 48.273315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.835155, 30.464552, 48.396915>,  <37.535557, 30.631300, 48.602917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835155, 30.464552, 48.396915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199388, -0.599431, 0.775195,
		-0.631869, -0.683299, -0.365847,
		0.748990, -0.416877, -0.515003,
		38.059853, 30.339491, 48.242416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502014, 29.831039, 48.776947>,  <37.535557, 30.631300, 48.602917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502014, 29.831039, 48.776947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866718, 29.960691, 48.676044>,  <38.085541, 30.038483, 48.615501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.866718, 29.960691, 48.676044>,  <37.502014, 29.831039, 48.776947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866718, 29.960691, 48.676044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372537, -0.394021, 0.840216,
		0.172944, -0.860051, -0.480003,
		0.911760, 0.324129, -0.252257,
		38.140247, 30.057930, 48.600368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.539108, 36.701023, 33.770912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887745, 36.510429, 33.817009>,  <36.096928, 36.396072, 33.844666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887745, 36.510429, 33.817009>,  <35.539108, 36.701023, 33.770912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887745, 36.510429, 33.817009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146133, -0.028149, 0.988864,
		-0.467938, -0.878730, -0.094165,
		0.871596, -0.476488, 0.115239,
		36.149223, 36.367485, 33.851582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411385, 36.289207, 34.315285>,  <35.539108, 36.701023, 33.770912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411385, 36.289207, 34.315285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810268, 36.270218, 34.292229>,  <36.049599, 36.258823, 34.278393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810268, 36.270218, 34.292229>,  <35.411385, 36.289207, 34.315285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810268, 36.270218, 34.292229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055251, -0.050235, 0.997208,
		-0.050235, -0.997609, -0.047472,
		-0.997208, 0.047472, 0.057642,
		36.109432, 36.255978, 34.274937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609062, 35.813431, 34.760983>,  <35.411385, 36.289207, 34.315285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609062, 35.813431, 34.760983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925156, 36.054787, 34.718189>,  <36.114811, 36.199600, 34.692513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925156, 36.054787, 34.718189>,  <35.609062, 35.813431, 34.760983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925156, 36.054787, 34.718189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069946, 0.084624, 0.993955,
		0.608796, -0.792943, 0.024668,
		0.790237, 0.603391, -0.106982,
		36.162228, 36.235806, 34.686096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054150, 35.329712, 35.131603>,  <35.609062, 35.813431, 34.760983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054150, 35.329712, 35.131603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214737, 35.696037, 35.135612>,  <36.311089, 35.915833, 35.138020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214737, 35.696037, 35.135612>,  <36.054150, 35.329712, 35.131603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214737, 35.696037, 35.135612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028957, 0.001749, 0.999579,
		0.915415, -0.401590, 0.027222,
		0.401469, 0.915818, 0.010028,
		36.335178, 35.970783, 35.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637768, 35.374710, 35.608490>,  <36.054150, 35.329712, 35.131603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637768, 35.374710, 35.608490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513405, 35.752991, 35.570591>,  <36.438786, 35.979961, 35.547852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513405, 35.752991, 35.570591>,  <36.637768, 35.374710, 35.608490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513405, 35.752991, 35.570591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298147, 0.191704, 0.935071,
		0.902466, 0.262469, -0.341562,
		-0.310906, 0.945706, -0.094752,
		36.420132, 36.036701, 35.542164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219143, 35.709560, 35.773861>,  <36.637768, 35.374710, 35.608490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219143, 35.709560, 35.773861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912838, 35.960220, 35.831699>,  <36.729053, 36.110619, 35.866402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912838, 35.960220, 35.831699>,  <37.219143, 35.709560, 35.773861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912838, 35.960220, 35.831699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373284, 0.250008, 0.893395,
		0.523700, 0.738106, -0.425368,
		-0.765766, 0.626654, 0.144594,
		36.683109, 36.148216, 35.875076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459171, 36.218613, 36.248058>,  <37.219143, 35.709560, 35.773861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459171, 36.218613, 36.248058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061283, 36.253593, 36.269558>,  <36.822552, 36.274582, 36.282459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061283, 36.253593, 36.269558>,  <37.459171, 36.218613, 36.248058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061283, 36.253593, 36.269558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062932, 0.105833, 0.992391,
		0.081097, 0.990531, -0.110777,
		-0.994718, 0.087451, 0.053753,
		36.762867, 36.279827, 36.285683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368958, 36.568794, 36.781662>,  <37.459171, 36.218613, 36.248058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368958, 36.568794, 36.781662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008694, 36.398060, 36.749096>,  <36.792538, 36.295620, 36.729557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008694, 36.398060, 36.749096>,  <37.368958, 36.568794, 36.781662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008694, 36.398060, 36.749096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027501, -0.130992, 0.991002,
		-0.433660, 0.894791, 0.106240,
		-0.900657, -0.426836, -0.081414,
		36.738495, 36.270008, 36.724670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887737, 36.873451, 37.362835>,  <37.368958, 36.568794, 36.781662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887737, 36.873451, 37.362835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695999, 36.537567, 37.260769>,  <36.580956, 36.336037, 37.199528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695999, 36.537567, 37.260769>,  <36.887737, 36.873451, 37.362835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695999, 36.537567, 37.260769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132553, -0.218143, 0.966873,
		-0.867557, 0.497293, -0.006739,
		-0.479349, -0.839710, -0.255169,
		36.552193, 36.285652, 37.184219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284393, 36.880032, 37.802792>,  <36.887737, 36.873451, 37.362835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284393, 36.880032, 37.802792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346970, 36.498783, 37.699192>,  <36.384518, 36.270035, 37.637032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346970, 36.498783, 37.699192>,  <36.284393, 36.880032, 37.802792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346970, 36.498783, 37.699192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128030, -0.279581, 0.951548,
		-0.979354, -0.115705, -0.165767,
		0.156444, -0.953125, -0.258995,
		36.393902, 36.212845, 37.621494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787254, 36.461781, 38.250084>,  <36.284393, 36.880032, 37.802792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787254, 36.461781, 38.250084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073032, 36.198421, 38.155365>,  <36.244499, 36.040405, 38.098534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073032, 36.198421, 38.155365>,  <35.787254, 36.461781, 38.250084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073032, 36.198421, 38.155365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024043, -0.361327, 0.932129,
		-0.699275, -0.660265, -0.273979,
		0.714448, -0.658402, -0.236793,
		36.287365, 36.000900, 38.084328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630684, 35.778370, 38.585812>,  <35.787254, 36.461781, 38.250084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630684, 35.778370, 38.585812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018993, 35.763828, 38.490917>,  <36.251980, 35.755104, 38.433979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018993, 35.763828, 38.490917>,  <35.630684, 35.778370, 38.585812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018993, 35.763828, 38.490917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192273, -0.473798, 0.859387,
		-0.143645, -0.879883, -0.452960,
		0.970772, -0.036354, -0.237236,
		36.310226, 35.752922, 38.419746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110077, 35.399006, 38.182083>,  <35.630684, 35.778370, 38.585812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110077, 35.399006, 38.182083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750763, 35.248268, 38.272480>,  <34.535175, 35.157825, 38.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750763, 35.248268, 38.272480>,  <35.110077, 35.399006, 38.182083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750763, 35.248268, 38.272480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435548, 0.695539, -0.571422,
		0.058153, -0.611730, -0.788927,
		-0.898285, -0.376845, 0.225990,
		34.481277, 35.135216, 38.340279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760818, 35.382481, 37.556694>,  <35.110077, 35.399006, 38.182083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760818, 35.382481, 37.556694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434708, 35.365566, 37.787704>,  <34.239040, 35.355419, 37.926311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434708, 35.365566, 37.787704>,  <34.760818, 35.382481, 37.556694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434708, 35.365566, 37.787704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459820, 0.653482, -0.601270,
		-0.351982, -0.755760, -0.552210,
		-0.815276, -0.042281, 0.577528,
		34.190125, 35.352882, 37.960964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192177, 35.260746, 37.094604>,  <34.760818, 35.382481, 37.556694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192177, 35.260746, 37.094604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005016, 35.390064, 37.423615>,  <33.892719, 35.467655, 37.621021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005016, 35.390064, 37.423615>,  <34.192177, 35.260746, 37.094604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005016, 35.390064, 37.423615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540028, 0.632143, -0.555666,
		-0.699597, -0.704185, -0.121195,
		-0.467904, 0.323293, 0.822525,
		33.864647, 35.487053, 37.670372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411121, 35.309013, 37.005833>,  <34.192177, 35.260746, 37.094604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411121, 35.309013, 37.005833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482285, 35.560886, 37.308315>,  <33.524982, 35.712009, 37.489803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482285, 35.560886, 37.308315>,  <33.411121, 35.309013, 37.005833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482285, 35.560886, 37.308315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666583, 0.642418, -0.378109,
		-0.723889, -0.436804, 0.534029,
		0.177911, 0.629683, 0.756205,
		33.535656, 35.749790, 37.535175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779072, 35.446438, 37.299332>,  <33.411121, 35.309013, 37.005833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779072, 35.446438, 37.299332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004120, 35.752472, 37.424622>,  <33.139149, 35.936092, 37.499794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004120, 35.752472, 37.424622>,  <32.779072, 35.446438, 37.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004120, 35.752472, 37.424622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662833, 0.643888, -0.382180,
		-0.494080, 0.007407, 0.869385,
		0.562617, 0.765084, 0.313222,
		33.172905, 35.981998, 37.518589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300018, 35.893456, 37.679405>,  <32.779072, 35.446438, 37.299332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300018, 35.893456, 37.679405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608826, 36.132755, 37.593533>,  <32.794109, 36.276333, 37.542007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608826, 36.132755, 37.593533>,  <32.300018, 35.893456, 37.679405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608826, 36.132755, 37.593533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631008, 0.680877, -0.371800,
		-0.076254, 0.422504, 0.903148,
		0.772020, 0.598245, -0.214684,
		32.840431, 36.312229, 37.529129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114414, 36.615635, 37.783958>,  <32.300018, 35.893456, 37.679405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114414, 36.615635, 37.783958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405823, 36.623802, 37.510071>,  <32.580669, 36.628704, 37.345737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405823, 36.623802, 37.510071>,  <32.114414, 36.615635, 37.783958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405823, 36.623802, 37.510071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508365, 0.686090, -0.520428,
		0.459149, 0.727230, 0.510215,
		0.728524, 0.020421, -0.684716,
		32.624378, 36.629929, 37.304657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219582, 37.269157, 37.663837>,  <32.114414, 36.615635, 37.783958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219582, 37.269157, 37.663837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367172, 37.088326, 37.339005>,  <32.455727, 36.979828, 37.144104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367172, 37.088326, 37.339005>,  <32.219582, 37.269157, 37.663837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367172, 37.088326, 37.339005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524251, 0.620248, -0.583484,
		0.767473, 0.641029, -0.008143,
		0.368980, -0.452078, -0.812084,
		32.477867, 36.952702, 37.095379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265537, 37.788437, 37.262383>,  <32.219582, 37.269157, 37.663837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265537, 37.788437, 37.262383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276310, 37.469063, 37.021793>,  <32.282772, 37.277439, 36.877438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276310, 37.469063, 37.021793>,  <32.265537, 37.788437, 37.262383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276310, 37.469063, 37.021793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508264, 0.507177, -0.696017,
		0.860780, 0.324455, -0.392156,
		0.026933, -0.798436, -0.601477,
		32.284389, 37.229530, 36.841351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419800, 38.030609, 36.632633>,  <32.265537, 37.788437, 37.262383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419800, 38.030609, 36.632633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257061, 37.674541, 36.550583>,  <32.159416, 37.460903, 36.501350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257061, 37.674541, 36.550583>,  <32.419800, 38.030609, 36.632633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257061, 37.674541, 36.550583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486168, 0.401110, -0.776370,
		0.773378, -0.216139, -0.595962,
		-0.406850, -0.890166, -0.205129,
		32.135006, 37.407494, 36.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535572, 37.811111, 35.953777>,  <32.419800, 38.030609, 36.632633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535572, 37.811111, 35.953777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244144, 37.550720, 36.039028>,  <32.069290, 37.394485, 36.090179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244144, 37.550720, 36.039028>,  <32.535572, 37.811111, 35.953777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244144, 37.550720, 36.039028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436114, 0.200906, -0.877178,
		0.528201, -0.732031, -0.430272,
		-0.728566, -0.650974, 0.213130,
		32.025574, 37.355427, 36.102966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341522, 37.598076, 35.350189>,  <32.535572, 37.811111, 35.953777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341522, 37.598076, 35.350189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014679, 37.482201, 35.549557>,  <31.818573, 37.412674, 35.669178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014679, 37.482201, 35.549557>,  <32.341522, 37.598076, 35.350189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014679, 37.482201, 35.549557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510379, -0.038482, -0.859088,
		0.268049, -0.956347, -0.116408,
		-0.817106, -0.289690, 0.498415,
		31.769547, 37.395294, 35.699081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969807, 37.051472, 34.942875>,  <32.341522, 37.598076, 35.350189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969807, 37.051472, 34.942875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699907, 37.231129, 35.177135>,  <31.537968, 37.338924, 35.317692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699907, 37.231129, 35.177135>,  <31.969807, 37.051472, 34.942875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699907, 37.231129, 35.177135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619989, 0.085567, -0.779930,
		-0.400412, -0.889354, 0.220727,
		-0.674747, 0.449142, 0.585652,
		31.497482, 37.365871, 35.352833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368198, 36.765163, 34.703014>,  <31.969807, 37.051472, 34.942875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368198, 36.765163, 34.703014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207169, 37.073204, 34.900955>,  <31.110550, 37.258026, 35.019718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207169, 37.073204, 34.900955>,  <31.368198, 36.765163, 34.703014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207169, 37.073204, 34.900955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767601, 0.010524, -0.640841,
		-0.498719, -0.637837, 0.586892,
		-0.402576, 0.770099, 0.494853,
		31.086395, 37.304234, 35.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432508, 36.124306, 34.959717>,  <31.368198, 36.765163, 34.703014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432508, 36.124306, 34.959717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748709, 35.995499, 35.168106>,  <31.938429, 35.918213, 35.293140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748709, 35.995499, 35.168106>,  <31.432508, 36.124306, 34.959717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748709, 35.995499, 35.168106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348924, -0.935867, -0.049031,
		0.503347, -0.143019, -0.852166,
		0.790502, -0.322021, 0.520969,
		31.985859, 35.898891, 35.324398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096577, 35.682133, 34.615318>,  <31.432508, 36.124306, 34.959717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096577, 35.682133, 34.615318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998449, 35.562634, 34.984222>,  <31.939573, 35.490932, 35.205566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998449, 35.562634, 34.984222>,  <32.096577, 35.682133, 34.615318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998449, 35.562634, 34.984222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378150, -0.846483, -0.374791,
		0.892648, -0.440697, 0.094687,
		-0.245320, -0.298751, 0.922261,
		31.924852, 35.473007, 35.260902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498058, 35.055351, 34.671860>,  <32.096577, 35.682133, 34.615318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498058, 35.055351, 34.671860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736900, 34.804878, 34.471317>,  <32.880207, 34.654594, 34.350990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736900, 34.804878, 34.471317>,  <32.498058, 35.055351, 34.671860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736900, 34.804878, 34.471317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383168, -0.326445, 0.864069,
		-0.704732, -0.708045, 0.045011,
		0.597106, -0.626184, -0.501356,
		32.916031, 34.617023, 34.320911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559250, 34.504265, 35.109211>,  <32.498058, 35.055351, 34.671860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559250, 34.504265, 35.109211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862293, 34.453636, 34.853085>,  <33.044121, 34.423260, 34.699409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862293, 34.453636, 34.853085>,  <32.559250, 34.504265, 35.109211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862293, 34.453636, 34.853085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408779, -0.672786, 0.616652,
		-0.508843, -0.728930, -0.457973,
		0.757614, -0.126570, -0.640314,
		33.089577, 34.415665, 34.660992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702217, 33.742584, 35.070465>,  <32.559250, 34.504265, 35.109211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702217, 33.742584, 35.070465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035942, 33.928444, 34.951790>,  <33.236176, 34.039959, 34.880585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035942, 33.928444, 34.951790>,  <32.702217, 33.742584, 35.070465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035942, 33.928444, 34.951790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549854, -0.662529, 0.508641,
		0.039771, -0.587503, -0.808245,
		0.834314, 0.464646, -0.296692,
		33.286236, 34.067837, 34.862782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110291, 33.205513, 34.891380>,  <32.702217, 33.742584, 35.070465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110291, 33.205513, 34.891380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349606, 33.520325, 34.951561>,  <33.493195, 33.709209, 34.987671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349606, 33.520325, 34.951561>,  <33.110291, 33.205513, 34.891380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349606, 33.520325, 34.951561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589772, -0.559640, 0.582213,
		0.542417, -0.259599, -0.798994,
		0.598291, 0.787027, 0.150454,
		33.529095, 33.756432, 34.996696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905895, 32.897648, 34.865055>,  <33.110291, 33.205513, 34.891380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905895, 32.897648, 34.865055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871952, 33.235313, 35.076786>,  <33.851585, 33.437912, 35.203827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871952, 33.235313, 35.076786>,  <33.905895, 32.897648, 34.865055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871952, 33.235313, 35.076786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711282, -0.320706, 0.625480,
		0.697765, 0.429580, -0.573223,
		-0.084858, 0.844161, 0.529331,
		33.846497, 33.488564, 35.235584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617119, 32.975422, 34.978416>,  <33.905895, 32.897648, 34.865055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617119, 32.975422, 34.978416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384716, 33.183453, 35.228844>,  <34.245274, 33.308270, 35.379101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384716, 33.183453, 35.228844>,  <34.617119, 32.975422, 34.978416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384716, 33.183453, 35.228844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680738, -0.111119, 0.724050,
		0.446126, 0.846863, -0.289473,
		-0.581005, 0.520073, 0.626065,
		34.210415, 33.339474, 35.416664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960968, 33.284672, 35.352062>,  <34.617119, 32.975422, 34.978416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960968, 33.284672, 35.352062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653717, 33.338436, 35.602474>,  <34.469364, 33.370697, 35.752720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653717, 33.338436, 35.602474>,  <34.960968, 33.284672, 35.352062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653717, 33.338436, 35.602474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615707, -0.113284, 0.779789,
		0.175733, 0.984429, 0.004257,
		-0.768129, 0.134413, 0.626027,
		34.423279, 33.378761, 35.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077053, 33.911369, 35.849045>,  <34.960968, 33.284672, 35.352062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077053, 33.911369, 35.849045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853050, 33.610619, 35.988232>,  <34.718651, 33.430168, 36.071743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853050, 33.610619, 35.988232>,  <35.077053, 33.911369, 35.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853050, 33.610619, 35.988232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668216, -0.161607, 0.726203,
		-0.489779, 0.639194, 0.592914,
		-0.560004, -0.751874, 0.347968,
		34.685047, 33.385056, 36.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452396, 33.751999, 36.312489>,  <35.077053, 33.911369, 35.849045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452396, 33.751999, 36.312489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147995, 33.505527, 36.393665>,  <34.965355, 33.357643, 36.442371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147995, 33.505527, 36.393665>,  <35.452396, 33.751999, 36.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147995, 33.505527, 36.393665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544324, -0.436275, 0.716502,
		-0.352957, 0.655731, 0.667412,
		-0.761008, -0.616183, 0.202943,
		34.919693, 33.320671, 36.454548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315403, 33.735138, 37.103733>,  <35.452396, 33.751999, 36.312489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315403, 33.735138, 37.103733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172020, 33.404915, 36.929394>,  <35.085991, 33.206779, 36.824791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172020, 33.404915, 36.929394>,  <35.315403, 33.735138, 37.103733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172020, 33.404915, 36.929394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305611, -0.544915, 0.780813,
		-0.882107, 0.146687, 0.447627,
		-0.358454, -0.825560, -0.435845,
		35.064484, 33.157246, 36.798641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069672, 33.296005, 37.640736>,  <35.315403, 33.735138, 37.103733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069672, 33.296005, 37.640736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112152, 33.036846, 37.339020>,  <35.137638, 32.881351, 37.157990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112152, 33.036846, 37.339020>,  <35.069672, 33.296005, 37.640736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112152, 33.036846, 37.339020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376211, -0.676005, 0.633627,
		-0.920428, -0.351061, 0.171956,
		0.106199, -0.647900, -0.754286,
		35.144012, 32.842476, 37.112736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690842, 32.660122, 37.775269>,  <35.069672, 33.296005, 37.640736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690842, 32.660122, 37.775269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999077, 32.579197, 37.533520>,  <35.184017, 32.530643, 37.388470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999077, 32.579197, 37.533520>,  <34.690842, 32.660122, 37.775269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999077, 32.579197, 37.533520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340385, -0.671070, 0.658637,
		-0.538821, -0.713258, -0.448258,
		0.770591, -0.202307, -0.604369,
		35.230255, 32.518505, 37.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657192, 31.956921, 37.841595>,  <34.690842, 32.660122, 37.775269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657192, 31.956921, 37.841595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017410, 32.037434, 37.687454>,  <35.233543, 32.085743, 37.594971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017410, 32.037434, 37.687454>,  <34.657192, 31.956921, 37.841595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017410, 32.037434, 37.687454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411636, -0.679954, 0.606810,
		-0.139880, -0.705087, -0.695188,
		0.900550, 0.201284, -0.385351,
		35.287575, 32.097820, 37.571850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890606, 31.365742, 37.687653>,  <34.657192, 31.956921, 37.841595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890606, 31.365742, 37.687653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220966, 31.588392, 37.723541>,  <35.419182, 31.721983, 37.745075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220966, 31.588392, 37.723541>,  <34.890606, 31.365742, 37.687653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220966, 31.588392, 37.723541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420475, -0.714107, 0.559689,
		0.375611, -0.424522, -0.823831,
		0.825904, 0.556626, 0.089726,
		35.468739, 31.755381, 37.750458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404301, 30.890795, 37.630703>,  <34.890606, 31.365742, 37.687653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404301, 30.890795, 37.630703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583832, 31.204002, 37.802952>,  <35.691551, 31.391928, 37.906300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583832, 31.204002, 37.802952>,  <35.404301, 30.890795, 37.630703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583832, 31.204002, 37.802952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188255, -0.553919, 0.811007,
		0.873564, -0.282936, -0.396022,
		0.448827, 0.783020, 0.430620,
		35.718479, 31.438908, 37.932137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980743, 30.585371, 37.913898>,  <35.404301, 30.890795, 37.630703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980743, 30.585371, 37.913898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931549, 30.928259, 38.113918>,  <35.902035, 31.133991, 38.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931549, 30.928259, 38.113918>,  <35.980743, 30.585371, 37.913898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931549, 30.928259, 38.113918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232861, -0.464883, 0.854201,
		0.964702, 0.221496, -0.142439,
		-0.122984, 0.857219, 0.500051,
		35.894653, 31.185425, 38.263935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582870, 30.723763, 38.237907>,  <35.980743, 30.585371, 37.913898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582870, 30.723763, 38.237907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289803, 30.912018, 38.434559>,  <36.113960, 31.024971, 38.552547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289803, 30.912018, 38.434559>,  <36.582870, 30.723763, 38.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289803, 30.912018, 38.434559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329026, -0.387392, 0.861202,
		0.595766, 0.792734, 0.128978,
		-0.732669, 0.470638, 0.491625,
		36.070004, 31.053209, 38.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951176, 30.943487, 38.897240>,  <36.582870, 30.723763, 38.237907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951176, 30.943487, 38.897240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564671, 30.995361, 38.986244>,  <36.332767, 31.026485, 39.039646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564671, 30.995361, 38.986244>,  <36.951176, 30.943487, 38.897240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564671, 30.995361, 38.986244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191242, -0.217381, 0.957169,
		0.172503, 0.967433, 0.185246,
		-0.966266, 0.129688, 0.222512,
		36.274792, 31.034267, 39.052998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944801, 31.253750, 39.553894>,  <36.951176, 30.943487, 38.897240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944801, 31.253750, 39.553894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579834, 31.094042, 39.517948>,  <36.360855, 30.998217, 39.496380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579834, 31.094042, 39.517948>,  <36.944801, 31.253750, 39.553894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579834, 31.094042, 39.517948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178591, -0.586013, 0.790376,
		-0.368235, 0.705105, 0.605995,
		-0.912419, -0.399269, -0.089865,
		36.306107, 30.974260, 39.490990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698589, 31.269211, 40.244968>,  <36.944801, 31.253750, 39.553894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698589, 31.269211, 40.244968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461746, 31.008307, 40.055672>,  <36.319641, 30.851765, 39.942093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461746, 31.008307, 40.055672>,  <36.698589, 31.269211, 40.244968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461746, 31.008307, 40.055672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055175, -0.618694, 0.783692,
		-0.803964, 0.437922, 0.402325,
		-0.592112, -0.652258, -0.473246,
		36.284111, 30.812630, 39.913696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189850, 31.150774, 40.653618>,  <36.698589, 31.269211, 40.244968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189850, 31.150774, 40.653618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192535, 30.837578, 40.404819>,  <36.194145, 30.649660, 40.255539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192535, 30.837578, 40.404819>,  <36.189850, 31.150774, 40.653618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192535, 30.837578, 40.404819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094497, -0.618732, 0.779898,
		-0.995503, -0.064014, 0.069836,
		0.006715, -0.782990, -0.621998,
		36.194550, 30.602680, 40.218220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741772, 30.703009, 40.955791>,  <36.189850, 31.150774, 40.653618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741772, 30.703009, 40.955791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985371, 30.483614, 40.726608>,  <36.131531, 30.351976, 40.589096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985371, 30.483614, 40.726608>,  <35.741772, 30.703009, 40.955791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985371, 30.483614, 40.726608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077522, -0.677746, 0.731198,
		-0.789374, -0.489715, -0.370226,
		0.608998, -0.548488, -0.572959,
		36.168068, 30.319067, 40.554722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506485, 29.950994, 40.914745>,  <35.741772, 30.703009, 40.955791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506485, 29.950994, 40.914745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888401, 29.949669, 40.795841>,  <36.117550, 29.948874, 40.724499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888401, 29.949669, 40.795841>,  <35.506485, 29.950994, 40.914745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888401, 29.949669, 40.795841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182934, -0.781641, 0.596300,
		-0.234325, -0.623720, -0.745698,
		0.954792, -0.003314, -0.297258,
		36.174839, 29.948675, 40.706665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635014, 29.255121, 40.824871>,  <35.506485, 29.950994, 40.914745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635014, 29.255121, 40.824871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991661, 29.431509, 40.865982>,  <36.205650, 29.537342, 40.890648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991661, 29.431509, 40.865982>,  <35.635014, 29.255121, 40.824871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991661, 29.431509, 40.865982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224818, -0.628186, 0.744876,
		0.393032, -0.641038, -0.659239,
		0.891618, 0.440969, 0.102780,
		36.259148, 29.563799, 40.896816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046585, 28.680714, 40.879959>,  <35.635014, 29.255121, 40.824871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046585, 28.680714, 40.879959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285534, 28.964031, 41.030407>,  <36.428902, 29.134022, 41.120674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285534, 28.964031, 41.030407>,  <36.046585, 28.680714, 40.879959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285534, 28.964031, 41.030407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363691, -0.657261, 0.660103,
		0.714755, -0.257538, -0.650231,
		0.597373, 0.708295, 0.376116,
		36.464745, 29.176519, 41.143242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633778, 28.368446, 40.922455>,  <36.046585, 28.680714, 40.879959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633778, 28.368446, 40.922455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671574, 28.677917, 41.173050>,  <36.694252, 28.863600, 41.323406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671574, 28.677917, 41.173050>,  <36.633778, 28.368446, 40.922455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671574, 28.677917, 41.173050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399737, -0.605834, 0.687878,
		0.911747, 0.185435, -0.366513,
		0.094489, 0.773679, 0.626492,
		36.699921, 28.910021, 41.360996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273155, 28.217684, 40.917389>,  <36.633778, 28.368446, 40.922455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273155, 28.217684, 40.917389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355145, 27.887918, 40.706360>,  <37.404339, 27.690060, 40.579742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355145, 27.887918, 40.706360>,  <37.273155, 28.217684, 40.917389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355145, 27.887918, 40.706360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166287, 0.501848, -0.848821,
		0.964538, 0.261716, -0.034222,
		0.204976, -0.824411, -0.527571,
		37.416637, 27.640594, 40.548088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542927, 28.491331, 40.401455>,  <37.273155, 28.217684, 40.917389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542927, 28.491331, 40.401455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468796, 28.118380, 40.277309>,  <37.424316, 27.894609, 40.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468796, 28.118380, 40.277309>,  <37.542927, 28.491331, 40.401455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468796, 28.118380, 40.277309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155260, 0.284084, -0.946145,
		0.970333, -0.223536, 0.092112,
		-0.185330, -0.932377, -0.310363,
		37.413197, 27.838667, 40.184200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108074, 28.268986, 40.045418>,  <37.542927, 28.491331, 40.401455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108074, 28.268986, 40.045418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801022, 28.057219, 39.900944>,  <37.616791, 27.930159, 39.814259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801022, 28.057219, 39.900944>,  <38.108074, 28.268986, 40.045418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801022, 28.057219, 39.900944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143605, 0.407154, -0.901999,
		0.624596, -0.744272, -0.236517,
		-0.767632, -0.529420, -0.361188,
		37.570732, 27.898394, 39.792587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469952, 28.071444, 39.512711>,  <38.108074, 28.268986, 40.045418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469952, 28.071444, 39.512711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081821, 27.995142, 39.453262>,  <37.848946, 27.949360, 39.417595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081821, 27.995142, 39.453262>,  <38.469952, 28.071444, 39.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081821, 27.995142, 39.453262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100066, 0.242761, -0.964911,
		0.220134, -0.951148, -0.216469,
		-0.970323, -0.190749, -0.148618,
		37.790726, 27.937916, 39.408676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335426, 27.669447, 38.841564>,  <38.469952, 28.071444, 39.512711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335426, 27.669447, 38.841564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997589, 27.859434, 38.940411>,  <37.794888, 27.973427, 38.999718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997589, 27.859434, 38.940411>,  <38.335426, 27.669447, 38.841564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997589, 27.859434, 38.940411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070344, 0.359103, -0.930643,
		-0.530766, -0.803399, -0.269885,
		-0.844594, 0.474969, 0.247113,
		37.744209, 28.001925, 39.014545>
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
