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
	<24.175776, 35.078728, 35.128643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496220, 34.992332, 34.905369>,  <24.688486, 34.940495, 34.771404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.496220, 34.992332, 34.905369>,  <24.175776, 35.078728, 35.128643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496220, 34.992332, 34.905369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458296, -0.378460, 0.804197,
		-0.384975, -0.900058, -0.204183,
		0.801099, -0.216019, -0.558190,
		24.736553, 34.927536, 34.737915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478113, 34.913193, 35.653603>,  <24.175776, 35.078728, 35.128643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478113, 34.913193, 35.653603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749817, 34.876190, 35.362385>,  <24.912840, 34.853989, 35.187653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749817, 34.876190, 35.362385>,  <24.478113, 34.913193, 35.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749817, 34.876190, 35.362385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672271, -0.319482, 0.667820,
		-0.294376, -0.943066, -0.154820,
		0.679260, -0.092510, -0.728043,
		24.953594, 34.848438, 35.143970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709343, 34.282455, 35.842640>,  <24.478113, 34.913193, 35.653603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709343, 34.282455, 35.842640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975828, 34.476334, 35.615932>,  <25.135719, 34.592659, 35.479908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975828, 34.476334, 35.615932>,  <24.709343, 34.282455, 35.842640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975828, 34.476334, 35.615932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731165, -0.274904, 0.624360,
		0.146815, -0.830362, -0.537535,
		0.666215, 0.484692, -0.566772,
		25.175694, 34.621742, 35.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363989, 33.882435, 35.688538>,  <24.709343, 34.282455, 35.842640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363989, 33.882435, 35.688538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445906, 34.273949, 35.690899>,  <25.495056, 34.508858, 35.692318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445906, 34.273949, 35.690899>,  <25.363989, 33.882435, 35.688538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445906, 34.273949, 35.690899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648130, -0.140126, 0.748527,
		0.733477, -0.149463, -0.663078,
		0.204791, 0.978788, 0.005907,
		25.507343, 34.567585, 35.692673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158783, 34.042191, 35.563702>,  <25.363989, 33.882435, 35.688538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158783, 34.042191, 35.563702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015533, 34.355175, 35.767464>,  <25.929585, 34.542965, 35.889721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015533, 34.355175, 35.767464>,  <26.158783, 34.042191, 35.563702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015533, 34.355175, 35.767464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690310, -0.145466, 0.708739,
		0.628666, 0.605464, -0.488049,
		-0.358121, 0.782466, 0.509408,
		25.908096, 34.589916, 35.920284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362720, 34.712208, 35.712631>,  <26.158783, 34.042191, 35.563702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362720, 34.712208, 35.712631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410723, 34.585293, 36.088913>,  <26.439524, 34.509144, 36.314682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410723, 34.585293, 36.088913>,  <26.362720, 34.712208, 35.712631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410723, 34.585293, 36.088913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900891, 0.432931, 0.031092,
		-0.417126, 0.843742, 0.337793,
		0.120008, -0.317284, 0.940706,
		26.446726, 34.490108, 36.371124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603708, 35.234573, 36.193771>,  <26.362720, 34.712208, 35.712631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603708, 35.234573, 36.193771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727194, 34.886555, 36.347504>,  <26.801285, 34.677742, 36.439743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727194, 34.886555, 36.347504>,  <26.603708, 35.234573, 36.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727194, 34.886555, 36.347504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936083, 0.349563, 0.039432,
		-0.168655, 0.347591, 0.922353,
		0.308714, -0.870050, 0.384330,
		26.819809, 34.625542, 36.462803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018126, 35.291420, 36.832424>,  <26.603708, 35.234573, 36.193771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018126, 35.291420, 36.832424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115297, 34.944077, 36.659477>,  <27.173599, 34.735672, 36.555710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115297, 34.944077, 36.659477>,  <27.018126, 35.291420, 36.832424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115297, 34.944077, 36.659477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962983, 0.162198, 0.215303,
		-0.116829, -0.468670, 0.875614,
		0.242929, -0.868355, -0.432372,
		27.188175, 34.683571, 36.529766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442028, 35.044472, 37.316315>,  <27.018126, 35.291420, 36.832424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442028, 35.044472, 37.316315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507875, 34.860138, 36.967480>,  <27.547384, 34.749538, 36.758179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507875, 34.860138, 36.967480>,  <27.442028, 35.044472, 37.316315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507875, 34.860138, 36.967480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980791, 0.170277, 0.095157,
		0.104645, -0.870999, 0.480011,
		0.164616, -0.460833, -0.872086,
		27.557261, 34.721889, 36.705853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866938, 34.497372, 37.419773>,  <27.442028, 35.044472, 37.316315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866938, 34.497372, 37.419773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929922, 34.590904, 37.035995>,  <27.967712, 34.647022, 36.805729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929922, 34.590904, 37.035995>,  <27.866938, 34.497372, 37.419773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929922, 34.590904, 37.035995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987475, -0.027420, 0.155378,
		0.010024, -0.971891, -0.235219,
		0.157460, 0.233830, -0.959443,
		27.977160, 34.661053, 36.748161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562916, 34.210476, 37.216614>,  <27.866938, 34.497372, 37.419773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562916, 34.210476, 37.216614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462191, 34.445633, 36.909115>,  <28.401754, 34.586727, 36.724617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462191, 34.445633, 36.909115>,  <28.562916, 34.210476, 37.216614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462191, 34.445633, 36.909115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924067, 0.382086, -0.010493,
		0.287558, -0.713015, -0.639469,
		-0.251814, 0.587895, -0.768745,
		28.386646, 34.622002, 36.678490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233507, 34.402122, 37.001385>,  <28.562916, 34.210476, 37.216614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233507, 34.402122, 37.001385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003620, 34.636639, 36.773010>,  <28.865688, 34.777348, 36.635986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003620, 34.636639, 36.773010>,  <29.233507, 34.402122, 37.001385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003620, 34.636639, 36.773010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811839, 0.496312, -0.307558,
		0.103042, -0.640264, -0.761212,
		-0.574717, 0.586290, -0.570933,
		28.831205, 34.812527, 36.601730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417364, 35.175331, 37.199955>,  <29.233507, 34.402122, 37.001385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417364, 35.175331, 37.199955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564110, 35.439758, 36.938148>,  <29.652157, 35.598415, 36.781063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564110, 35.439758, 36.938148>,  <29.417364, 35.175331, 37.199955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564110, 35.439758, 36.938148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919394, 0.150365, -0.363461,
		-0.141856, 0.735103, 0.662948,
		0.366866, 0.661070, -0.654520,
		29.674170, 35.638081, 36.741791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197666, 35.914581, 37.146038>,  <29.417364, 35.175331, 37.199955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197666, 35.914581, 37.146038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262877, 35.721989, 36.801575>,  <29.302002, 35.606434, 36.594894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262877, 35.721989, 36.801575>,  <29.197666, 35.914581, 37.146038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262877, 35.721989, 36.801575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983818, -0.013576, -0.178656,
		0.074328, 0.876352, -0.475901,
		0.163027, -0.481480, -0.861162,
		29.311785, 35.577545, 36.543224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563782, 36.006451, 36.788036>,  <29.197666, 35.914581, 37.146038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563782, 36.006451, 36.788036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745020, 35.698696, 36.607925>,  <28.853764, 35.514042, 36.499859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745020, 35.698696, 36.607925>,  <28.563782, 36.006451, 36.788036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745020, 35.698696, 36.607925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888314, -0.432080, -0.155580,
		-0.074854, 0.470479, -0.879230,
		0.453095, -0.769387, -0.450276,
		28.880949, 35.467880, 36.472843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140793, 35.755177, 36.339706>,  <28.563782, 36.006451, 36.788036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140793, 35.755177, 36.339706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397564, 35.448738, 36.352558>,  <28.551626, 35.264877, 36.360268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397564, 35.448738, 36.352558>,  <28.140793, 35.755177, 36.339706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397564, 35.448738, 36.352558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738253, -0.628833, -0.244031,
		0.207153, 0.132933, -0.969235,
		0.641926, -0.766093, 0.032126,
		28.590141, 35.218910, 36.362194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081863, 35.434906, 35.729538>,  <28.140793, 35.755177, 36.339706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081863, 35.434906, 35.729538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182941, 35.186253, 36.026108>,  <28.243587, 35.037060, 36.204052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182941, 35.186253, 36.026108>,  <28.081863, 35.434906, 35.729538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182941, 35.186253, 36.026108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835113, -0.527104, -0.157315,
		0.488602, -0.579423, -0.652332,
		0.252695, -0.621635, 0.741428,
		28.258749, 34.999763, 36.248535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129755, 34.746216, 35.421356>,  <28.081863, 35.434906, 35.729538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129755, 34.746216, 35.421356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082451, 34.717632, 35.817520>,  <28.054068, 34.700481, 36.055218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082451, 34.717632, 35.817520>,  <28.129755, 34.746216, 35.421356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082451, 34.717632, 35.817520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872731, -0.468291, -0.137999,
		0.473661, -0.880679, -0.006987,
		-0.118260, -0.071463, 0.990408,
		28.046972, 34.696194, 36.114643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915165, 34.048786, 35.603348>,  <28.129755, 34.746216, 35.421356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915165, 34.048786, 35.603348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806585, 34.272385, 35.916740>,  <27.741438, 34.406544, 36.104774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806585, 34.272385, 35.916740>,  <27.915165, 34.048786, 35.603348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806585, 34.272385, 35.916740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927494, -0.369337, -0.057835,
		0.257039, -0.742373, 0.618719,
		-0.271451, 0.558993, 0.783480,
		27.725151, 34.440083, 36.151783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507978, 33.605118, 35.897404>,  <27.915165, 34.048786, 35.603348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507978, 33.605118, 35.897404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406170, 33.938873, 36.092960>,  <27.345085, 34.139126, 36.210297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406170, 33.938873, 36.092960>,  <27.507978, 33.605118, 35.897404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406170, 33.938873, 36.092960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938311, -0.335436, 0.083987,
		0.234071, -0.437360, 0.868289,
		-0.254523, 0.834385, 0.488896,
		27.329813, 34.189190, 36.239628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937874, 32.923611, 35.900139>,  <27.507978, 33.605118, 35.897404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937874, 32.923611, 35.900139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032850, 32.568108, 35.743305>,  <28.089836, 32.354805, 35.649204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032850, 32.568108, 35.743305>,  <27.937874, 32.923611, 35.900139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032850, 32.568108, 35.743305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410282, 0.457613, -0.788834,
		0.880506, 0.026435, 0.473297,
		0.237440, -0.888759, -0.392085,
		28.104082, 32.301479, 35.625679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704973, 32.899162, 35.688721>,  <27.937874, 32.923611, 35.900139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704973, 32.899162, 35.688721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512611, 32.615631, 35.482307>,  <28.397194, 32.445511, 35.358459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512611, 32.615631, 35.482307>,  <28.704973, 32.899162, 35.688721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512611, 32.615631, 35.482307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340784, 0.391171, -0.854898,
		0.807835, -0.586981, 0.053442,
		-0.480904, -0.708829, -0.516036,
		28.368340, 32.402981, 35.327496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031570, 33.101013, 35.050911>,  <28.704973, 32.899162, 35.688721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031570, 33.101013, 35.050911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797674, 32.776596, 35.044197>,  <28.657337, 32.581944, 35.040169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797674, 32.776596, 35.044197>,  <29.031570, 33.101013, 35.050911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797674, 32.776596, 35.044197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058330, -0.021401, -0.998068,
		0.809121, -0.584589, 0.059823,
		-0.584740, -0.811047, -0.016783,
		28.622252, 32.533283, 35.039162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419226, 32.536640, 34.720203>,  <29.031570, 33.101013, 35.050911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419226, 32.536640, 34.720203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029911, 32.490425, 34.640839>,  <28.796322, 32.462696, 34.593220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029911, 32.490425, 34.640839>,  <29.419226, 32.536640, 34.720203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029911, 32.490425, 34.640839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184897, 0.117896, -0.975661,
		0.136126, -0.986281, -0.093382,
		-0.973285, -0.115547, -0.198409,
		28.737925, 32.455765, 34.581318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392202, 31.970476, 34.264740>,  <29.419226, 32.536640, 34.720203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392202, 31.970476, 34.264740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085461, 32.224136, 34.225166>,  <28.901415, 32.376331, 34.201424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085461, 32.224136, 34.225166>,  <29.392202, 31.970476, 34.264740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085461, 32.224136, 34.225166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263508, 0.170524, -0.949466,
		-0.585234, -0.754171, -0.297871,
		-0.766854, 0.634151, -0.098934,
		28.855404, 32.414383, 34.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205828, 32.098469, 33.513813>,  <29.392202, 31.970476, 34.264740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205828, 32.098469, 33.513813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027847, 32.450932, 33.577793>,  <28.921059, 32.662407, 33.616180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027847, 32.450932, 33.577793>,  <29.205828, 32.098469, 33.513813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027847, 32.450932, 33.577793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577197, 0.418729, -0.701078,
		-0.684735, -0.219622, -0.694913,
		-0.444952, 0.881154, 0.159953,
		28.894361, 32.715279, 33.625778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004398, 32.347038, 32.934502>,  <29.205828, 32.098469, 33.513813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004398, 32.347038, 32.934502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080948, 32.656380, 33.176262>,  <29.126877, 32.841984, 33.321320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080948, 32.656380, 33.176262>,  <29.004398, 32.347038, 32.934502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080948, 32.656380, 33.176262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663980, 0.351497, -0.659985,
		-0.722846, 0.527616, -0.446223,
		0.191373, 0.773351, 0.604405,
		29.138359, 32.888386, 33.357582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856766, 33.080147, 32.817451>,  <29.004398, 32.347038, 32.934502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856766, 33.080147, 32.817451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208944, 33.055561, 33.005508>,  <29.420252, 33.040810, 33.118343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208944, 33.055561, 33.005508>,  <28.856766, 33.080147, 32.817451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208944, 33.055561, 33.005508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474079, 0.098022, -0.875009,
		0.007695, 0.993284, 0.115442,
		0.880449, -0.061462, 0.470141,
		29.473080, 33.037121, 33.146549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210829, 33.337486, 32.339848>,  <28.856766, 33.080147, 32.817451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210829, 33.337486, 32.339848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472370, 33.150703, 32.577984>,  <29.629295, 33.038635, 32.720863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472370, 33.150703, 32.577984>,  <29.210829, 33.337486, 32.339848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472370, 33.150703, 32.577984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611862, -0.136532, -0.779092,
		0.445085, 0.873676, 0.196442,
		0.653853, -0.466957, 0.595338,
		29.668526, 33.010616, 32.756584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928516, 33.537956, 32.179134>,  <29.210829, 33.337486, 32.339848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928516, 33.537956, 32.179134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921553, 33.168858, 32.333145>,  <29.917376, 32.947399, 32.425552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921553, 33.168858, 32.333145>,  <29.928516, 33.537956, 32.179134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921553, 33.168858, 32.333145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343530, -0.367160, -0.864396,
		0.938980, 0.117220, 0.323381,
		-0.017408, -0.922742, 0.385025,
		29.916330, 32.892036, 32.448654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539663, 33.200718, 32.389336>,  <29.928516, 33.537956, 32.179134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539663, 33.200718, 32.389336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291222, 32.929337, 32.232399>,  <30.142157, 32.766510, 32.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291222, 32.929337, 32.232399>,  <30.539663, 33.200718, 32.389336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291222, 32.929337, 32.232399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654471, -0.173592, -0.735889,
		0.431156, -0.713843, 0.551845,
		-0.621105, -0.678450, -0.392344,
		30.104891, 32.725803, 32.114697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267355, 33.318363, 32.449768>,  <30.539663, 33.200718, 32.389336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267355, 33.318363, 32.449768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506508, 33.047409, 32.278336>,  <31.650000, 32.884838, 32.175476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506508, 33.047409, 32.278336>,  <31.267355, 33.318363, 32.449768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506508, 33.047409, 32.278336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786341, 0.599411, 0.149581,
		0.155574, -0.426446, 0.891034,
		0.597884, -0.677385, -0.428584,
		31.685873, 32.844193, 32.149761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848585, 33.526131, 32.430122>,  <31.267355, 33.318363, 32.449768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848585, 33.526131, 32.430122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964096, 33.176933, 32.272903>,  <32.033401, 32.967415, 32.178574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964096, 33.176933, 32.272903>,  <31.848585, 33.526131, 32.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964096, 33.176933, 32.272903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954285, 0.295534, 0.044714,
		0.077123, -0.387991, 0.918431,
		0.288776, -0.872997, -0.393046,
		32.050728, 32.915035, 32.154991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151028, 33.046036, 33.002300>,  <31.848585, 33.526131, 32.430122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151028, 33.046036, 33.002300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245674, 33.070076, 32.614403>,  <32.302460, 33.084499, 32.381664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245674, 33.070076, 32.614403>,  <32.151028, 33.046036, 33.002300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245674, 33.070076, 32.614403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779098, 0.584620, 0.226329,
		0.580535, -0.809078, 0.091502,
		0.236612, 0.060103, -0.969743,
		32.316658, 33.088108, 32.323479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797577, 32.808834, 32.734150>,  <32.151028, 33.046036, 33.002300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797577, 32.808834, 32.734150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692726, 33.112316, 32.495602>,  <32.629818, 33.294403, 32.352470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692726, 33.112316, 32.495602>,  <32.797577, 32.808834, 32.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692726, 33.112316, 32.495602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871779, 0.451200, 0.190842,
		0.413876, -0.469881, -0.779691,
		-0.262124, 0.758703, -0.596373,
		32.614090, 33.339928, 32.316689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367340, 32.903744, 32.399483>,  <32.797577, 32.808834, 32.734150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367340, 32.903744, 32.399483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173611, 33.247887, 32.335964>,  <33.057373, 33.454372, 32.297855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173611, 33.247887, 32.335964>,  <33.367340, 32.903744, 32.399483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173611, 33.247887, 32.335964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809990, 0.509554, 0.290295,
		0.330670, 0.011978, -0.943670,
		-0.484328, 0.860356, -0.158792,
		33.028313, 33.505993, 32.288326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023918, 33.026722, 31.628853>,  <33.367340, 32.903744, 32.399483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023918, 33.026722, 31.628853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784580, 33.336800, 31.709902>,  <32.640976, 33.522846, 31.758532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784580, 33.336800, 31.709902>,  <33.023918, 33.026722, 31.628853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784580, 33.336800, 31.709902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375993, -0.494973, 0.783346,
		0.707536, 0.392530, 0.587634,
		-0.598349, 0.775191, 0.202623,
		32.605076, 33.569359, 31.770689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791264, 33.099354, 31.438906>,  <33.023918, 33.026722, 31.628853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791264, 33.099354, 31.438906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079350, 33.041004, 31.710201>,  <34.252201, 33.005993, 31.872978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079350, 33.041004, 31.710201>,  <33.791264, 33.099354, 31.438906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079350, 33.041004, 31.710201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498739, -0.570701, -0.652349,
		0.482234, 0.808097, -0.338274,
		0.720215, -0.145875, 0.678241,
		34.295414, 32.997242, 31.913673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514492, 33.308365, 31.172581>,  <33.791264, 33.099354, 31.438906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514492, 33.308365, 31.172581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475143, 33.012314, 31.438673>,  <34.451534, 32.834682, 31.598330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475143, 33.012314, 31.438673>,  <34.514492, 33.308365, 31.172581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475143, 33.012314, 31.438673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357008, -0.650225, -0.670636,
		0.928907, 0.171520, 0.328197,
		-0.098374, -0.740127, 0.665233,
		34.445633, 32.790276, 31.638243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174080, 32.956665, 31.130268>,  <34.514492, 33.308365, 31.172581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174080, 32.956665, 31.130268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870213, 32.731098, 31.259821>,  <34.687893, 32.595757, 31.337553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870213, 32.731098, 31.259821>,  <35.174080, 32.956665, 31.130268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870213, 32.731098, 31.259821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202682, -0.678547, -0.706041,
		0.617917, -0.470714, 0.629768,
		-0.759670, -0.563917, 0.323880,
		34.642311, 32.561924, 31.356985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452000, 32.239342, 31.042376>,  <35.174080, 32.956665, 31.130268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452000, 32.239342, 31.042376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053261, 32.211205, 31.027662>,  <34.814018, 32.194321, 31.018835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053261, 32.211205, 31.027662>,  <35.452000, 32.239342, 31.042376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053261, 32.211205, 31.027662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074246, -0.662316, -0.745537,
		0.028084, -0.745915, 0.665448,
		-0.996844, -0.070345, -0.036781,
		34.754208, 32.190102, 31.016628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245350, 31.575216, 31.156788>,  <35.452000, 32.239342, 31.042376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245350, 31.575216, 31.156788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999596, 31.771675, 30.909790>,  <34.852142, 31.889551, 30.761591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999596, 31.771675, 30.909790>,  <35.245350, 31.575216, 31.156788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999596, 31.771675, 30.909790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000315, -0.782780, -0.622299,
		-0.789003, -0.382140, 0.481086,
		-0.614390, 0.491147, -0.617495,
		34.815281, 31.919020, 30.724541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630833, 31.383057, 30.908714>,  <35.245350, 31.575216, 31.156788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630833, 31.383057, 30.908714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764374, 31.561749, 30.576696>,  <34.844498, 31.668964, 30.377485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764374, 31.561749, 30.576696>,  <34.630833, 31.383057, 30.908714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764374, 31.561749, 30.576696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069186, -0.889805, -0.451065,
		-0.940082, 0.093163, -0.327974,
		0.333855, 0.446730, -0.830044,
		34.864529, 31.695766, 30.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335472, 31.343056, 30.183895>,  <34.630833, 31.383057, 30.908714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335472, 31.343056, 30.183895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731602, 31.348059, 30.239185>,  <34.969280, 31.351061, 30.272360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731602, 31.348059, 30.239185>,  <34.335472, 31.343056, 30.183895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731602, 31.348059, 30.239185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033739, -0.987752, -0.152340,
		0.134626, 0.155529, -0.978615,
		0.990322, 0.012508, 0.138224,
		35.028698, 31.351810, 30.280653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613411, 30.790337, 29.791304>,  <34.335472, 31.343056, 30.183895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613411, 30.790337, 29.791304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921482, 30.871893, 30.033049>,  <35.106323, 30.920828, 30.178095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921482, 30.871893, 30.033049>,  <34.613411, 30.790337, 29.791304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921482, 30.871893, 30.033049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387208, -0.902413, -0.188999,
		0.506849, 0.379577, -0.773967,
		0.770178, 0.203892, 0.604362,
		35.152534, 30.933060, 30.214357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245392, 30.723019, 29.338522>,  <34.613411, 30.790337, 29.791304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245392, 30.723019, 29.338522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297062, 30.660643, 29.730236>,  <35.328064, 30.623217, 29.965263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297062, 30.660643, 29.730236>,  <35.245392, 30.723019, 29.338522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297062, 30.660643, 29.730236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466219, -0.862050, -0.198771,
		0.875188, 0.482237, -0.038653,
		0.129175, -0.155941, 0.979283,
		35.335815, 30.613861, 30.024021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964817, 30.509285, 29.494150>,  <35.245392, 30.723019, 29.338522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964817, 30.509285, 29.494150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767254, 30.398033, 29.823683>,  <35.648716, 30.331282, 30.021402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767254, 30.398033, 29.823683>,  <35.964817, 30.509285, 29.494150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767254, 30.398033, 29.823683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525102, -0.850590, 0.027645,
		0.693054, 0.446250, 0.566160,
		-0.493907, -0.278132, 0.823832,
		35.619083, 30.314594, 30.070833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490841, 30.166559, 30.004284>,  <35.964817, 30.509285, 29.494150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490841, 30.166559, 30.004284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120247, 30.040707, 30.086880>,  <35.897892, 29.965195, 30.136436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120247, 30.040707, 30.086880>,  <36.490841, 30.166559, 30.004284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120247, 30.040707, 30.086880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352048, -0.918505, 0.180029,
		0.133018, 0.239488, 0.961744,
		-0.926482, -0.314632, 0.206489,
		35.842300, 29.946318, 30.148827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306751, 29.966825, 30.785933>,  <36.490841, 30.166559, 30.004284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306751, 29.966825, 30.785933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110058, 29.754511, 30.509829>,  <35.992043, 29.627123, 30.344166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110058, 29.754511, 30.509829>,  <36.306751, 29.966825, 30.785933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110058, 29.754511, 30.509829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472895, -0.828423, 0.300142,
		-0.731141, -0.178831, 0.658372,
		-0.491736, -0.530787, -0.690262,
		35.962536, 29.595274, 30.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903740, 29.400475, 31.135994>,  <36.306751, 29.966825, 30.785933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903740, 29.400475, 31.135994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008133, 29.299286, 30.763351>,  <36.070766, 29.238573, 30.539764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008133, 29.299286, 30.763351>,  <35.903740, 29.400475, 31.135994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008133, 29.299286, 30.763351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410086, -0.844594, 0.344225,
		-0.873911, -0.471874, -0.116679,
		0.260978, -0.252974, -0.931609,
		36.086426, 29.223394, 30.483870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878624, 28.647625, 31.096031>,  <35.903740, 29.400475, 31.135994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878624, 28.647625, 31.096031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110382, 28.781855, 30.798925>,  <36.249435, 28.862392, 30.620663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110382, 28.781855, 30.798925>,  <35.878624, 28.647625, 31.096031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110382, 28.781855, 30.798925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623773, -0.769131, 0.139086,
		-0.524608, -0.543900, -0.654950,
		0.579391, 0.335575, -0.742762,
		36.284199, 28.882526, 30.576097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996109, 28.121607, 30.501936>,  <35.878624, 28.647625, 31.096031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996109, 28.121607, 30.501936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301723, 28.379047, 30.519949>,  <36.485092, 28.533512, 30.530756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301723, 28.379047, 30.519949>,  <35.996109, 28.121607, 30.501936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301723, 28.379047, 30.519949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639663, -0.764767, 0.077226,
		0.084141, -0.030199, -0.995996,
		0.764037, 0.643599, 0.045031,
		36.530933, 28.572126, 30.533459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560799, 28.104385, 29.920326>,  <35.996109, 28.121607, 30.501936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560799, 28.104385, 29.920326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723682, 28.221115, 30.266510>,  <36.821415, 28.291153, 30.474220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723682, 28.221115, 30.266510>,  <36.560799, 28.104385, 29.920326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723682, 28.221115, 30.266510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735562, -0.666498, -0.121360,
		0.541410, 0.686018, -0.486061,
		0.407214, 0.291822, 0.865458,
		36.845848, 28.308662, 30.526148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246971, 28.118288, 29.950613>,  <36.560799, 28.104385, 29.920326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246971, 28.118288, 29.950613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161674, 28.051847, 30.335724>,  <37.110497, 28.011984, 30.566790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161674, 28.051847, 30.335724>,  <37.246971, 28.118288, 29.950613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161674, 28.051847, 30.335724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649578, -0.760189, 0.012725,
		0.729778, 0.628111, 0.270003,
		-0.213246, -0.166101, 0.962776,
		37.097702, 28.002016, 30.624556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948208, 27.995697, 30.299059>,  <37.246971, 28.118288, 29.950613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948208, 27.995697, 30.299059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622913, 27.849987, 30.480583>,  <37.427734, 27.762560, 30.589499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622913, 27.849987, 30.480583>,  <37.948208, 27.995697, 30.299059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622913, 27.849987, 30.480583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511872, -0.818749, 0.260070,
		0.276821, 0.443792, 0.852302,
		-0.813239, -0.364277, 0.453812,
		37.378941, 27.740704, 30.616726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460335, 28.056234, 30.789145>,  <37.948208, 27.995697, 30.299059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460335, 28.056234, 30.789145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292622, 27.756788, 30.583706>,  <38.191994, 27.577120, 30.460443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292622, 27.756788, 30.583706>,  <38.460335, 28.056234, 30.789145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292622, 27.756788, 30.583706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852873, -0.518685, 0.059780,
		-0.311147, -0.412967, 0.855948,
		-0.419280, -0.748615, -0.513595,
		38.166836, 27.532204, 30.429626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815174, 27.917328, 31.472057>,  <38.460335, 28.056234, 30.789145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815174, 27.917328, 31.472057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919804, 27.936632, 31.857649>,  <38.982582, 27.948215, 32.089005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919804, 27.936632, 31.857649>,  <38.815174, 27.917328, 31.472057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919804, 27.936632, 31.857649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956258, -0.148475, -0.252041,
		0.130963, 0.987738, -0.084986,
		0.261569, 0.048261, 0.963977,
		38.998276, 27.951111, 32.146843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178589, 28.482710, 31.609911>,  <38.815174, 27.917328, 31.472057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178589, 28.482710, 31.609911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270233, 28.136417, 31.787909>,  <39.325222, 27.928642, 31.894707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270233, 28.136417, 31.787909>,  <39.178589, 28.482710, 31.609911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270233, 28.136417, 31.787909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903439, 0.018942, -0.428298,
		0.362361, 0.500155, 0.786473,
		0.229113, -0.865729, 0.444995,
		39.338966, 27.876699, 31.921408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728821, 28.522745, 32.173672>,  <39.178589, 28.482710, 31.609911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728821, 28.522745, 32.173672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719948, 28.209263, 31.925375>,  <39.714622, 28.021173, 31.776398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719948, 28.209263, 31.925375>,  <39.728821, 28.522745, 32.173672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719948, 28.209263, 31.925375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960796, 0.154925, -0.229934,
		0.276368, -0.601502, 0.749544,
		-0.022182, -0.783705, -0.620737,
		39.713291, 27.974152, 31.739153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439278, 28.348339, 32.154579>,  <39.728821, 28.522745, 32.173672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439278, 28.348339, 32.154579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276302, 28.131302, 31.860752>,  <40.178516, 28.001080, 31.684456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276302, 28.131302, 31.860752>,  <40.439278, 28.348339, 32.154579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276302, 28.131302, 31.860752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875329, -0.002694, -0.483521,
		0.260377, -0.839990, 0.476047,
		-0.407435, -0.542595, -0.734566,
		40.154072, 27.968523, 31.640383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891060, 27.722441, 31.992395>,  <40.439278, 28.348339, 32.154579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891060, 27.722441, 31.992395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676189, 27.883932, 31.696167>,  <40.547268, 27.980827, 31.518429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676189, 27.883932, 31.696167>,  <40.891060, 27.722441, 31.992395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676189, 27.883932, 31.696167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838816, 0.163565, -0.519263,
		-0.088510, -0.900138, -0.426518,
		-0.537171, 0.403730, -0.740573,
		40.515038, 28.005051, 31.473995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909122, 27.429100, 31.308449>,  <40.891060, 27.722441, 31.992395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909122, 27.429100, 31.308449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851254, 27.823637, 31.276947>,  <40.816532, 28.060358, 31.258047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851254, 27.823637, 31.276947>,  <40.909122, 27.429100, 31.308449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851254, 27.823637, 31.276947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880473, 0.092009, -0.465083,
		-0.451485, -0.136623, -0.881757,
		-0.144670, 0.986341, -0.078752,
		40.807854, 28.119539, 31.253321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921932, 27.717299, 30.617756>,  <40.909122, 27.429100, 31.308449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921932, 27.717299, 30.617756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060448, 27.983877, 30.881857>,  <41.143559, 28.143824, 31.040318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060448, 27.983877, 30.881857>,  <40.921932, 27.717299, 30.617756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060448, 27.983877, 30.881857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819875, 0.127068, -0.558264,
		-0.455949, 0.734646, -0.502399,
		0.346288, 0.666445, 0.660255,
		41.164333, 28.183811, 31.079933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992424, 28.411917, 30.506426>,  <40.921932, 27.717299, 30.617756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992424, 28.411917, 30.506426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273167, 28.326124, 30.778130>,  <41.441612, 28.274649, 30.941153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273167, 28.326124, 30.778130>,  <40.992424, 28.411917, 30.506426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273167, 28.326124, 30.778130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638461, 0.612259, -0.466377,
		-0.315853, 0.761010, 0.566657,
		0.701858, -0.214482, 0.679259,
		41.483723, 28.261780, 30.981907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254261, 29.113874, 30.847834>,  <40.992424, 28.411917, 30.506426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254261, 29.113874, 30.847834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541142, 28.835386, 30.835812>,  <41.713268, 28.668293, 30.828598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541142, 28.835386, 30.835812>,  <41.254261, 29.113874, 30.847834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541142, 28.835386, 30.835812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618055, 0.655421, -0.434086,
		0.321919, 0.292750, 0.900370,
		0.717200, -0.696219, -0.030057,
		41.756302, 28.626520, 30.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953865, 29.427521, 31.156521>,  <41.254261, 29.113874, 30.847834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953865, 29.427521, 31.156521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994179, 29.119850, 30.904106>,  <42.018368, 28.935247, 30.752657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994179, 29.119850, 30.904106>,  <41.953865, 29.427521, 31.156521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994179, 29.119850, 30.904106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512629, 0.583740, -0.629650,
		0.852675, -0.260030, 0.453134,
		0.100784, -0.769176, -0.631039,
		42.024414, 28.889097, 30.714794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652096, 29.174337, 31.247284>,  <41.953865, 29.427521, 31.156521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652096, 29.174337, 31.247284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490608, 29.155876, 30.881796>,  <42.393715, 29.144800, 30.662504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490608, 29.155876, 30.881796>,  <42.652096, 29.174337, 31.247284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490608, 29.155876, 30.881796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619928, 0.720691, -0.310312,
		0.672831, -0.691719, -0.262343,
		-0.403717, -0.046153, -0.913719,
		42.369492, 29.142031, 30.607679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994896, 29.603746, 30.881849>,  <42.652096, 29.174337, 31.247284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994896, 29.603746, 30.881849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743702, 29.506657, 30.586088>,  <42.592987, 29.448402, 30.408630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743702, 29.506657, 30.586088>,  <42.994896, 29.603746, 30.881849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743702, 29.506657, 30.586088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560454, 0.518133, -0.646088,
		0.539932, -0.820136, -0.189344,
		-0.627985, -0.242725, -0.739404,
		42.555305, 29.433840, 30.364267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418728, 29.450409, 30.239025>,  <42.994896, 29.603746, 30.881849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418728, 29.450409, 30.239025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049335, 29.564144, 30.136002>,  <42.827702, 29.632385, 30.074188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049335, 29.564144, 30.136002>,  <43.418728, 29.450409, 30.239025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049335, 29.564144, 30.136002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372649, 0.505215, -0.778390,
		-0.091205, -0.814806, -0.572515,
		-0.923480, 0.284340, -0.257558,
		42.772293, 29.649446, 30.058735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291710, 29.364571, 29.465199>,  <43.418728, 29.450409, 30.239025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291710, 29.364571, 29.465199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026711, 29.647196, 29.564684>,  <42.867710, 29.816771, 29.624376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026711, 29.647196, 29.564684>,  <43.291710, 29.364571, 29.465199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026711, 29.647196, 29.564684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125054, 0.431703, -0.893305,
		-0.738548, -0.560713, -0.374363,
		-0.662502, 0.706564, 0.248714,
		42.827961, 29.859165, 29.639297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893074, 29.474428, 28.827169>,  <43.291710, 29.364571, 29.465199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893074, 29.474428, 28.827169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816383, 29.788870, 29.062212>,  <42.770370, 29.977535, 29.203238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816383, 29.788870, 29.062212>,  <42.893074, 29.474428, 28.827169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816383, 29.788870, 29.062212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054698, 0.606343, -0.793320,
		-0.979924, -0.119957, -0.159248,
		-0.191724, 0.786103, 0.587608,
		42.758865, 30.024700, 29.238495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289059, 29.886700, 28.519573>,  <42.893074, 29.474428, 28.827169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289059, 29.886700, 28.519573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521877, 30.128519, 28.737103>,  <42.661568, 30.273611, 28.867620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521877, 30.128519, 28.737103>,  <42.289059, 29.886700, 28.519573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521877, 30.128519, 28.737103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072118, 0.704524, -0.706007,
		-0.809949, 0.371712, 0.453667,
		0.582050, 0.604546, 0.543821,
		42.696491, 30.309883, 28.900249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909698, 30.483551, 28.480324>,  <42.289059, 29.886700, 28.519573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909698, 30.483551, 28.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264462, 30.596138, 28.626837>,  <42.477322, 30.663691, 28.714745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264462, 30.596138, 28.626837>,  <41.909698, 30.483551, 28.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264462, 30.596138, 28.626837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061102, 0.857437, -0.510948,
		-0.457880, 0.430785, 0.777670,
		0.886912, 0.281470, 0.366281,
		42.530537, 30.680578, 28.736721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769394, 31.178787, 28.630924>,  <41.909698, 30.483551, 28.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769394, 31.178787, 28.630924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165852, 31.141663, 28.592936>,  <42.403725, 31.119387, 28.570143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165852, 31.141663, 28.592936>,  <41.769394, 31.178787, 28.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165852, 31.141663, 28.592936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045105, 0.907966, -0.416608,
		0.124896, 0.408635, 0.904112,
		0.991144, -0.092813, -0.094970,
		42.463196, 31.113819, 28.564445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038940, 31.837711, 28.645550>,  <41.769394, 31.178787, 28.630924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038940, 31.837711, 28.645550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355286, 31.646765, 28.492371>,  <42.545094, 31.532196, 28.400463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355286, 31.646765, 28.492371>,  <42.038940, 31.837711, 28.645550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355286, 31.646765, 28.492371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259284, 0.828173, -0.496892,
		0.554349, 0.293683, 0.778748,
		0.790866, -0.477368, -0.382949,
		42.592545, 31.503553, 28.377485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729439, 32.302792, 28.663616>,  <42.038940, 31.837711, 28.645550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729439, 32.302792, 28.663616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749840, 32.030594, 28.371227>,  <42.762081, 31.867275, 28.195793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749840, 32.030594, 28.371227>,  <42.729439, 32.302792, 28.663616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749840, 32.030594, 28.371227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168274, 0.727317, -0.665352,
		0.984420, -0.089071, 0.151603,
		0.051000, -0.680497, -0.730974,
		42.765141, 31.826445, 28.151936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327782, 32.516472, 28.336649>,  <42.729439, 32.302792, 28.663616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327782, 32.516472, 28.336649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187691, 32.246552, 28.076809>,  <43.103634, 32.084599, 27.920904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187691, 32.246552, 28.076809>,  <43.327782, 32.516472, 28.336649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187691, 32.246552, 28.076809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330934, 0.559653, -0.759784,
		0.876255, -0.481074, 0.027307,
		-0.350230, -0.674801, -0.649602,
		43.082623, 32.044109, 27.881927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866875, 32.479980, 27.859018>,  <43.327782, 32.516472, 28.336649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866875, 32.479980, 27.859018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550838, 32.349895, 27.651173>,  <43.361217, 32.271843, 27.526466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550838, 32.349895, 27.651173>,  <43.866875, 32.479980, 27.859018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550838, 32.349895, 27.651173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259971, 0.589888, -0.764491,
		0.555131, -0.739101, -0.381521,
		-0.790092, -0.325209, -0.519610,
		43.313812, 32.252331, 27.495289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107670, 32.280403, 27.213261>,  <43.866875, 32.479980, 27.859018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107670, 32.280403, 27.213261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723591, 32.385574, 27.175549>,  <43.493145, 32.448677, 27.152922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723591, 32.385574, 27.175549>,  <44.107670, 32.280403, 27.213261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723591, 32.385574, 27.175549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213721, 0.474244, -0.854058,
		-0.179847, -0.840214, -0.511562,
		-0.960197, 0.262931, -0.094280,
		43.435532, 32.464455, 27.147264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018097, 32.336185, 26.455507>,  <44.107670, 32.280403, 27.213261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018097, 32.336185, 26.455507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680408, 32.485420, 26.609436>,  <43.477795, 32.574963, 26.701794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680408, 32.485420, 26.609436>,  <44.018097, 32.336185, 26.455507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680408, 32.485420, 26.609436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198251, 0.449692, -0.870904,
		-0.497976, -0.811530, -0.305676,
		-0.844225, 0.373089, 0.384823,
		43.427139, 32.597347, 26.724882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365906, 32.121052, 26.092821>,  <44.018097, 32.336185, 26.455507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365906, 32.121052, 26.092821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307953, 32.470158, 26.279278>,  <43.273182, 32.679623, 26.391151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307953, 32.470158, 26.279278>,  <43.365906, 32.121052, 26.092821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307953, 32.470158, 26.279278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182737, 0.439404, -0.879506,
		-0.972428, -0.212605, 0.095825,
		-0.144882, 0.872768, 0.466140,
		43.264488, 32.731987, 26.419119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912338, 32.365337, 25.584492>,  <43.365906, 32.121052, 26.092821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912338, 32.365337, 25.584492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039505, 32.651920, 25.832884>,  <43.115803, 32.823872, 25.981920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039505, 32.651920, 25.832884>,  <42.912338, 32.365337, 25.584492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039505, 32.651920, 25.832884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386995, 0.695975, -0.604858,
		-0.865543, -0.048023, 0.498526,
		0.317915, 0.716458, 0.620981,
		43.134880, 32.866859, 26.019178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390812, 32.948677, 25.474072>,  <42.912338, 32.365337, 25.584492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390812, 32.948677, 25.474072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720459, 33.116581, 25.626190>,  <42.918247, 33.217323, 25.717463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720459, 33.116581, 25.626190>,  <42.390812, 32.948677, 25.474072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720459, 33.116581, 25.626190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007850, 0.662886, -0.748679,
		-0.566358, 0.619988, 0.543004,
		0.824122, 0.419758, 0.380298,
		42.967697, 33.242508, 25.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326290, 33.663799, 25.569876>,  <42.390812, 32.948677, 25.474072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326290, 33.663799, 25.569876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719048, 33.598053, 25.532209>,  <42.954700, 33.558605, 25.509609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719048, 33.598053, 25.532209>,  <42.326290, 33.663799, 25.569876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719048, 33.598053, 25.532209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015420, 0.564804, -0.825081,
		0.188798, 0.808691, 0.557112,
		0.981895, -0.164365, -0.094164,
		43.013615, 33.548744, 25.503960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559063, 34.398842, 25.446857>,  <42.326290, 33.663799, 25.569876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559063, 34.398842, 25.446857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869904, 34.174870, 25.331898>,  <43.056408, 34.040485, 25.262922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869904, 34.174870, 25.331898>,  <42.559063, 34.398842, 25.446857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869904, 34.174870, 25.331898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096667, 0.557402, -0.824596,
		0.621912, 0.613009, 0.487283,
		0.777097, -0.559930, -0.287398,
		43.103031, 34.006889, 25.245678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119278, 34.841042, 25.293564>,  <42.559063, 34.398842, 25.446857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119278, 34.841042, 25.293564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198532, 34.507652, 25.087234>,  <43.246082, 34.307621, 24.963436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198532, 34.507652, 25.087234>,  <43.119278, 34.841042, 25.293564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198532, 34.507652, 25.087234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071296, 0.512607, -0.855658,
		0.977579, 0.206310, 0.042141,
		0.198133, -0.833469, -0.515823,
		43.257973, 34.257610, 24.932487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490173, 35.022251, 24.760357>,  <43.119278, 34.841042, 25.293564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490173, 35.022251, 24.760357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372799, 34.664082, 24.626427>,  <43.302376, 34.449181, 24.546068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372799, 34.664082, 24.626427>,  <43.490173, 35.022251, 24.760357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372799, 34.664082, 24.626427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232541, 0.406580, -0.883526,
		0.927265, -0.181397, -0.327528,
		-0.293435, -0.895426, -0.334825,
		43.284767, 34.395454, 24.525980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812798, 34.919361, 24.026478>,  <43.490173, 35.022251, 24.760357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812798, 34.919361, 24.026478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508156, 34.660301, 24.035555>,  <43.325371, 34.504864, 24.041000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508156, 34.660301, 24.035555>,  <43.812798, 34.919361, 24.026478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508156, 34.660301, 24.035555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341030, 0.370769, -0.863845,
		0.551056, -0.665643, -0.503246,
		-0.761601, -0.647649, 0.022690,
		43.279675, 34.466007, 24.042362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858746, 34.493752, 23.465298>,  <43.812798, 34.919361, 24.026478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858746, 34.493752, 23.465298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476543, 34.490135, 23.583235>,  <43.247223, 34.487965, 23.653997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476543, 34.490135, 23.583235>,  <43.858746, 34.493752, 23.465298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476543, 34.490135, 23.583235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276269, 0.377766, -0.883724,
		-0.103396, -0.925857, -0.363453,
		-0.955503, -0.009037, 0.294845,
		43.189892, 34.487423, 23.671688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589775, 34.309494, 22.887108>,  <43.858746, 34.493752, 23.465298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589775, 34.309494, 22.887108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296551, 34.463779, 23.111198>,  <43.120617, 34.556351, 23.245653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296551, 34.463779, 23.111198>,  <43.589775, 34.309494, 22.887108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296551, 34.463779, 23.111198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355921, 0.484353, -0.799201,
		-0.579608, -0.785257, -0.217775,
		-0.733058, 0.385713, 0.560224,
		43.076633, 34.579494, 23.279266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010666, 34.223389, 22.457109>,  <43.589775, 34.309494, 22.887108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010666, 34.223389, 22.457109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878220, 34.488857, 22.725409>,  <42.798752, 34.648136, 22.886389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878220, 34.488857, 22.725409>,  <43.010666, 34.223389, 22.457109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878220, 34.488857, 22.725409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411058, 0.538399, -0.735635,
		-0.849348, -0.519299, 0.094533,
		-0.331118, 0.663668, 0.670750,
		42.778885, 34.687958, 22.926634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224541, 34.385075, 22.343828>,  <43.010666, 34.223389, 22.457109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224541, 34.385075, 22.343828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383812, 34.700657, 22.531017>,  <42.479374, 34.890007, 22.643332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383812, 34.700657, 22.531017>,  <42.224541, 34.385075, 22.343828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383812, 34.700657, 22.531017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379582, 0.606145, -0.698932,
		-0.835089, 0.100664, 0.540827,
		0.398177, 0.788958, 0.467975,
		42.503265, 34.937344, 22.671410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596291, 34.819839, 22.469881>,  <42.224541, 34.385075, 22.343828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596291, 34.819839, 22.469881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932755, 35.036007, 22.477919>,  <42.134632, 35.165707, 22.482740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932755, 35.036007, 22.477919>,  <41.596291, 34.819839, 22.469881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932755, 35.036007, 22.477919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438423, 0.703211, -0.559714,
		-0.316608, 0.461998, 0.828443,
		0.841156, 0.540419, 0.020092,
		42.185101, 35.198132, 22.483946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273357, 35.545891, 22.669296>,  <41.596291, 34.819839, 22.469881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273357, 35.545891, 22.669296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644379, 35.590408, 22.526604>,  <41.866993, 35.617119, 22.440989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644379, 35.590408, 22.526604>,  <41.273357, 35.545891, 22.669296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644379, 35.590408, 22.526604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293943, 0.806741, -0.512608,
		0.230743, 0.580331, 0.781009,
		0.927554, 0.111291, -0.356734,
		41.922646, 35.623795, 22.419584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478760, 36.206841, 22.676327>,  <41.273357, 35.545891, 22.669296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478760, 36.206841, 22.676327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748981, 36.096970, 22.402630>,  <41.911114, 36.031048, 22.238411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748981, 36.096970, 22.402630>,  <41.478760, 36.206841, 22.676327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748981, 36.096970, 22.402630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164345, 0.848578, -0.502899,
		0.718764, 0.452185, 0.528116,
		0.675551, -0.274673, -0.684241,
		41.951645, 36.014568, 22.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804630, 36.792789, 22.584860>,  <41.478760, 36.206841, 22.676327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804630, 36.792789, 22.584860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846947, 36.558762, 22.263239>,  <41.872337, 36.418343, 22.070267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846947, 36.558762, 22.263239>,  <41.804630, 36.792789, 22.584860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846947, 36.558762, 22.263239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374564, 0.725586, -0.577258,
		0.921146, 0.362238, -0.142385,
		0.105792, -0.585071, -0.804052,
		41.878685, 36.383240, 22.022024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125507, 37.222610, 22.173105>,  <41.804630, 36.792789, 22.584860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125507, 37.222610, 22.173105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006496, 36.938076, 21.918398>,  <41.935089, 36.767353, 21.765574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006496, 36.938076, 21.918398>,  <42.125507, 37.222610, 22.173105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006496, 36.938076, 21.918398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424629, 0.695968, -0.579067,
		0.855084, 0.098102, -0.509124,
		-0.297527, -0.711340, -0.636768,
		41.917240, 36.724674, 21.727367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318077, 37.539936, 21.569601>,  <42.125507, 37.222610, 22.173105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318077, 37.539936, 21.569601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047478, 37.255306, 21.493689>,  <41.885120, 37.084530, 21.448141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047478, 37.255306, 21.493689>,  <42.318077, 37.539936, 21.569601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047478, 37.255306, 21.493689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441699, 0.598238, -0.668590,
		0.589281, -0.368477, -0.719008,
		-0.676499, -0.711573, -0.189774,
		41.844528, 37.041832, 21.436754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358006, 37.283199, 20.841660>,  <42.318077, 37.539936, 21.569601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358006, 37.283199, 20.841660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985188, 37.190712, 20.953257>,  <41.761497, 37.135220, 21.020216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985188, 37.190712, 20.953257>,  <42.358006, 37.283199, 20.841660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985188, 37.190712, 20.953257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361763, 0.637693, -0.680055,
		-0.020672, -0.734769, -0.678002,
		-0.932041, -0.231218, 0.278995,
		41.705574, 37.121346, 21.036955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077129, 37.137882, 20.180836>,  <42.358006, 37.283199, 20.841660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077129, 37.137882, 20.180836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786568, 37.210873, 20.445879>,  <41.612232, 37.254665, 20.604904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786568, 37.210873, 20.445879>,  <42.077129, 37.137882, 20.180836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786568, 37.210873, 20.445879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563661, 0.393452, -0.726279,
		-0.393229, -0.901055, -0.182951,
		-0.726400, 0.182472, 0.662606,
		41.568649, 37.265614, 20.644661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567150, 36.948082, 19.846273>,  <42.077129, 37.137882, 20.180836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567150, 36.948082, 19.846273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405930, 37.178143, 20.131020>,  <41.309196, 37.316177, 20.301867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405930, 37.178143, 20.131020>,  <41.567150, 36.948082, 19.846273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405930, 37.178143, 20.131020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584177, 0.437075, -0.683888,
		-0.704477, -0.691497, 0.159826,
		-0.403050, 0.575150, 0.711866,
		41.285015, 37.350689, 20.344580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813038, 36.947678, 19.852348>,  <41.567150, 36.948082, 19.846273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813038, 36.947678, 19.852348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903584, 37.282524, 20.051544>,  <40.957912, 37.483433, 20.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903584, 37.282524, 20.051544>,  <40.813038, 36.947678, 19.852348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903584, 37.282524, 20.051544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614625, 0.519383, -0.593699,
		-0.755643, -0.171684, 0.632083,
		0.226364, 0.837118, 0.497989,
		40.971493, 37.533661, 20.200941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198814, 37.285007, 19.976868>,  <40.813038, 36.947678, 19.852348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198814, 37.285007, 19.976868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490292, 37.558842, 19.984320>,  <40.665180, 37.723141, 19.988791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490292, 37.558842, 19.984320>,  <40.198814, 37.285007, 19.976868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490292, 37.558842, 19.984320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521585, 0.572411, -0.632689,
		-0.443791, 0.451322, 0.774182,
		0.728697, 0.684583, 0.018628,
		40.708900, 37.764217, 19.989908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891903, 37.895042, 20.032801>,  <40.198814, 37.285007, 19.976868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891903, 37.895042, 20.032801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250965, 37.978844, 19.877716>,  <40.466404, 38.029125, 19.784664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250965, 37.978844, 19.877716>,  <39.891903, 37.895042, 20.032801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250965, 37.978844, 19.877716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405522, 0.737103, -0.540585,
		0.172528, 0.642485, 0.746624,
		0.897656, 0.209506, -0.387712,
		40.520264, 38.041695, 19.761402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034187, 38.631145, 20.074373>,  <39.891903, 37.895042, 20.032801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034187, 38.631145, 20.074373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277275, 38.502590, 19.783888>,  <40.423126, 38.425457, 19.609596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277275, 38.502590, 19.783888>,  <40.034187, 38.631145, 20.074373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277275, 38.502590, 19.783888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405725, 0.660458, -0.631808,
		0.682690, 0.678605, 0.270978,
		0.607718, -0.321387, -0.726216,
		40.459591, 38.406174, 19.566023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180477, 39.293530, 19.756767>,  <40.034187, 38.631145, 20.074373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180477, 39.293530, 19.756767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260147, 38.998947, 19.498167>,  <40.307949, 38.822197, 19.343006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260147, 38.998947, 19.498167>,  <40.180477, 39.293530, 19.756767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260147, 38.998947, 19.498167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469604, 0.507310, -0.722571,
		0.860117, 0.447518, -0.244798,
		0.199175, -0.736454, -0.646502,
		40.319901, 38.778011, 19.304216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373543, 39.608604, 19.140625>,  <40.180477, 39.293530, 19.756767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373543, 39.608604, 19.140625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277321, 39.245415, 19.003382>,  <40.219589, 39.027500, 18.921036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277321, 39.245415, 19.003382>,  <40.373543, 39.608604, 19.140625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277321, 39.245415, 19.003382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423983, 0.416271, -0.804336,
		0.873140, -0.048014, -0.485100,
		-0.240552, -0.907972, -0.343106,
		40.205154, 38.973022, 18.900450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693569, 39.535191, 18.531786>,  <40.373543, 39.608604, 19.140625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693569, 39.535191, 18.531786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381477, 39.285915, 18.510324>,  <40.194221, 39.136349, 18.497448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381477, 39.285915, 18.510324>,  <40.693569, 39.535191, 18.531786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381477, 39.285915, 18.510324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243579, 0.381717, -0.891606,
		0.576123, -0.682585, -0.449622,
		-0.780226, -0.623193, -0.053652,
		40.147411, 39.098957, 18.494228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799515, 39.277294, 17.847830>,  <40.693569, 39.535191, 18.531786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799515, 39.277294, 17.847830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420982, 39.222748, 17.965036>,  <40.193863, 39.190018, 18.035360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420982, 39.222748, 17.965036>,  <40.799515, 39.277294, 17.847830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420982, 39.222748, 17.965036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323187, 0.392252, -0.861214,
		0.002505, -0.909694, -0.415273,
		-0.946332, -0.136368, 0.293018,
		40.137081, 39.181839, 18.052942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476673, 39.012417, 17.299622>,  <40.799515, 39.277294, 17.847830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476673, 39.012417, 17.299622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191147, 39.183846, 17.521177>,  <40.019833, 39.286705, 17.654110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191147, 39.183846, 17.521177>,  <40.476673, 39.012417, 17.299622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191147, 39.183846, 17.521177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293589, 0.534917, -0.792255,
		-0.635824, -0.728140, -0.256008,
		-0.713816, 0.428574, 0.553887,
		39.977001, 39.312416, 17.687344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959843, 39.178917, 16.747646>,  <40.476673, 39.012417, 17.299622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959843, 39.178917, 16.747646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898994, 39.390614, 17.081535>,  <39.862488, 39.517632, 17.281870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898994, 39.390614, 17.081535>,  <39.959843, 39.178917, 16.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898994, 39.390614, 17.081535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312106, 0.775617, -0.548643,
		-0.937790, -0.343980, 0.047195,
		-0.152117, 0.529241, 0.834724,
		39.853359, 39.549385, 17.331953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556934, 39.523766, 16.199804>,  <39.959843, 39.178917, 16.747646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556934, 39.523766, 16.199804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545307, 39.143906, 16.324589>,  <39.538330, 38.915989, 16.399460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545307, 39.143906, 16.324589>,  <39.556934, 39.523766, 16.199804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545307, 39.143906, 16.324589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191438, 0.301028, 0.934202,
		-0.981074, 0.086876, 0.173049,
		-0.029067, -0.949650, 0.311962,
		39.536587, 38.859009, 16.418177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904301, 39.241688, 16.004234>,  <39.556934, 39.523766, 16.199804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904301, 39.241688, 16.004234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721397, 38.944332, 15.808973>,  <38.611656, 38.765919, 15.691816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721397, 38.944332, 15.808973>,  <38.904301, 39.241688, 16.004234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721397, 38.944332, 15.808973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126029, -0.597522, 0.791887,
		-0.880360, 0.300573, 0.366908,
		-0.457255, -0.743387, -0.488153,
		38.584221, 38.721317, 15.662527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565163, 38.671886, 16.425806>,  <38.904301, 39.241688, 16.004234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565163, 38.671886, 16.425806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543453, 38.431087, 16.107145>,  <38.530426, 38.286610, 15.915949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543453, 38.431087, 16.107145>,  <38.565163, 38.671886, 16.425806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543453, 38.431087, 16.107145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267748, -0.759836, 0.592418,
		-0.961959, 0.245454, -0.119945,
		-0.054273, -0.601997, -0.796651,
		38.527172, 38.250488, 15.868150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378319, 38.680325, 17.189060>,  <38.565163, 38.671886, 16.425806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378319, 38.680325, 17.189060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492947, 38.540516, 17.545872>,  <38.561726, 38.456631, 17.759958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492947, 38.540516, 17.545872>,  <38.378319, 38.680325, 17.189060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492947, 38.540516, 17.545872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957605, 0.075855, -0.277917,
		0.029472, 0.933854, 0.356438,
		0.286572, -0.349518, 0.892028,
		38.578918, 38.435661, 17.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258972, 39.389069, 17.221996>,  <38.378319, 38.680325, 17.189060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258972, 39.389069, 17.221996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015686, 39.215252, 17.487701>,  <37.869713, 39.110962, 17.647123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015686, 39.215252, 17.487701>,  <38.258972, 39.389069, 17.221996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015686, 39.215252, 17.487701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757289, -0.568446, 0.321532,
		0.237877, 0.698599, 0.674814,
		-0.608217, -0.434544, 0.664261,
		37.833221, 39.084888, 17.686979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102470, 40.007530, 17.630253>,  <38.258972, 39.389069, 17.221996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102470, 40.007530, 17.630253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726460, 40.142570, 17.610792>,  <37.500851, 40.223595, 17.599115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726460, 40.142570, 17.610792>,  <38.102470, 40.007530, 17.630253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726460, 40.142570, 17.610792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131565, -0.227279, 0.964901,
		0.314695, 0.913438, 0.258066,
		-0.940031, 0.337602, -0.048653,
		37.444450, 40.243851, 17.596197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895554, 40.401466, 18.220055>,  <38.102470, 40.007530, 17.630253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895554, 40.401466, 18.220055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598251, 40.209328, 18.033789>,  <37.419872, 40.094044, 17.922029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598251, 40.209328, 18.033789>,  <37.895554, 40.401466, 18.220055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598251, 40.209328, 18.033789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091577, -0.616449, 0.782051,
		-0.662714, 0.623906, 0.414188,
		-0.743252, -0.480346, -0.465665,
		37.375275, 40.065224, 17.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446167, 40.225563, 18.787251>,  <37.895554, 40.401466, 18.220055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446167, 40.225563, 18.787251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360970, 39.959576, 18.500908>,  <37.309853, 39.799984, 18.329102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360970, 39.959576, 18.500908>,  <37.446167, 40.225563, 18.787251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360970, 39.959576, 18.500908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124597, -0.745171, 0.655130,
		-0.969077, 0.050342, 0.241567,
		-0.212989, -0.664970, -0.715856,
		37.297073, 39.760086, 18.286152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781509, 39.789783, 18.874838>,  <37.446167, 40.225563, 18.787251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781509, 39.789783, 18.874838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105667, 39.638355, 18.695976>,  <37.300163, 39.547497, 18.588659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105667, 39.638355, 18.695976>,  <36.781509, 39.789783, 18.874838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105667, 39.638355, 18.695976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090403, -0.673268, 0.733851,
		-0.578867, -0.635133, -0.511390,
		0.810395, -0.378570, -0.447151,
		37.348785, 39.524784, 18.561831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552727, 39.123150, 18.705519>,  <36.781509, 39.789783, 18.874838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552727, 39.123150, 18.705519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945786, 39.174404, 18.759167>,  <37.181622, 39.205154, 18.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945786, 39.174404, 18.759167>,  <36.552727, 39.123150, 18.705519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945786, 39.174404, 18.759167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017811, -0.784902, 0.619364,
		0.184634, -0.606227, -0.773563,
		0.982646, 0.128134, 0.134122,
		37.240578, 39.212845, 18.799404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678246, 38.601048, 19.057196>,  <36.552727, 39.123150, 18.705519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678246, 38.601048, 19.057196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046082, 38.751335, 19.103146>,  <37.266781, 38.841507, 19.130714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046082, 38.751335, 19.103146>,  <36.678246, 38.601048, 19.057196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046082, 38.751335, 19.103146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182637, -0.667666, 0.721710,
		0.347859, -0.642694, -0.682597,
		0.919586, 0.375721, 0.114874,
		37.321957, 38.864052, 19.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197636, 38.037117, 18.985107>,  <36.678246, 38.601048, 19.057196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197636, 38.037117, 18.985107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302647, 38.347443, 19.214607>,  <37.365654, 38.533638, 19.352308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302647, 38.347443, 19.214607>,  <37.197636, 38.037117, 18.985107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302647, 38.347443, 19.214607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280048, -0.630275, 0.724104,
		0.923391, -0.029421, -0.382732,
		0.262530, 0.775815, 0.573751,
		37.381405, 38.580189, 19.386732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866154, 37.911236, 19.270107>,  <37.197636, 38.037117, 18.985107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866154, 37.911236, 19.270107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685074, 38.167122, 19.518568>,  <37.576427, 38.320652, 19.667645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685074, 38.167122, 19.518568>,  <37.866154, 37.911236, 19.270107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685074, 38.167122, 19.518568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318801, -0.534453, 0.782768,
		0.832726, 0.552379, 0.038003,
		-0.452695, 0.639716, 0.621152,
		37.549267, 38.359035, 19.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241325, 37.869621, 19.792597>,  <37.866154, 37.911236, 19.270107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241325, 37.869621, 19.792597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922096, 38.047688, 19.955032>,  <37.730560, 38.154526, 20.052494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922096, 38.047688, 19.955032>,  <38.241325, 37.869621, 19.792597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922096, 38.047688, 19.955032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134088, -0.525838, 0.839949,
		0.587452, 0.724793, 0.359966,
		-0.798073, 0.445163, 0.406091,
		37.682674, 38.181236, 20.076860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390411, 38.058537, 20.475376>,  <38.241325, 37.869621, 19.792597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390411, 38.058537, 20.475376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990639, 38.052372, 20.487322>,  <37.750774, 38.048676, 20.494490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990639, 38.052372, 20.487322>,  <38.390411, 38.058537, 20.475376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990639, 38.052372, 20.487322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033596, -0.476745, 0.878399,
		0.000704, 0.878907, 0.476993,
		-0.999435, -0.015407, 0.029864,
		37.690807, 38.047749, 20.496281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229500, 38.455982, 21.095087>,  <38.390411, 38.058537, 20.475376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229500, 38.455982, 21.095087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907391, 38.234840, 21.009401>,  <37.714123, 38.102158, 20.957991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907391, 38.234840, 21.009401>,  <38.229500, 38.455982, 21.095087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907391, 38.234840, 21.009401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039541, -0.410568, 0.910972,
		-0.591580, 0.725114, 0.352481,
		-0.805276, -0.552851, -0.214212,
		37.665810, 38.068985, 20.945137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697601, 38.445580, 21.750778>,  <38.229500, 38.455982, 21.095087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697601, 38.445580, 21.750778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623627, 38.117867, 21.533680>,  <37.579243, 37.921238, 21.403421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623627, 38.117867, 21.533680>,  <37.697601, 38.445580, 21.750778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623627, 38.117867, 21.533680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133238, -0.568073, 0.812121,
		-0.973677, 0.077873, 0.214215,
		-0.184932, -0.819286, -0.542744,
		37.568146, 37.872082, 21.370857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268589, 38.085323, 22.203451>,  <37.697601, 38.445580, 21.750778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268589, 38.085323, 22.203451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377827, 37.789871, 21.956926>,  <37.443371, 37.612598, 21.809011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377827, 37.789871, 21.956926>,  <37.268589, 38.085323, 22.203451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377827, 37.789871, 21.956926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011435, -0.638129, 0.769844,
		-0.961920, -0.217287, -0.165823,
		0.273093, -0.738632, -0.616314,
		37.459755, 37.568283, 21.772032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815090, 37.509075, 22.442459>,  <37.268589, 38.085323, 22.203451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815090, 37.509075, 22.442459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107868, 37.350754, 22.220613>,  <37.283535, 37.255760, 22.087507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107868, 37.350754, 22.220613>,  <36.815090, 37.509075, 22.442459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107868, 37.350754, 22.220613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213360, -0.639895, 0.738249,
		-0.647112, -0.658681, -0.383907,
		0.731931, -0.395820, -0.554620,
		37.327450, 37.232010, 22.054230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884125, 36.831177, 22.694109>,  <36.815090, 37.509075, 22.442459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884125, 36.831177, 22.694109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224197, 36.874859, 22.488092>,  <37.428242, 36.901070, 22.364483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224197, 36.874859, 22.488092>,  <36.884125, 36.831177, 22.694109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224197, 36.874859, 22.488092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382274, -0.800702, 0.461241,
		-0.362026, -0.589025, -0.722487,
		0.850179, 0.109206, -0.515043,
		37.479252, 36.907619, 22.333580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057430, 36.085262, 22.379383>,  <36.884125, 36.831177, 22.694109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057430, 36.085262, 22.379383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396336, 36.297562, 22.387798>,  <37.599678, 36.424942, 22.392847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396336, 36.297562, 22.387798>,  <37.057430, 36.085262, 22.379383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396336, 36.297562, 22.387798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441080, -0.725086, 0.528866,
		0.295950, -0.438811, -0.848445,
		0.847267, 0.530750, 0.021038,
		37.650517, 36.456787, 22.394110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641537, 35.607029, 22.372267>,  <37.057430, 36.085262, 22.379383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641537, 35.607029, 22.372267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844429, 35.927479, 22.499329>,  <37.966164, 36.119751, 22.575565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844429, 35.927479, 22.499329>,  <37.641537, 35.607029, 22.372267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844429, 35.927479, 22.499329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485086, -0.570064, 0.663113,
		0.712324, -0.182263, -0.677772,
		0.507234, 0.801129, 0.317657,
		37.996601, 36.167816, 22.594625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412048, 35.558071, 22.249386>,  <37.641537, 35.607029, 22.372267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412048, 35.558071, 22.249386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365215, 35.829960, 22.539011>,  <38.337116, 35.993095, 22.712786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365215, 35.829960, 22.539011>,  <38.412048, 35.558071, 22.249386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365215, 35.829960, 22.539011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693082, -0.466246, 0.549774,
		0.711286, 0.566204, -0.416515,
		-0.117085, 0.679726, 0.724061,
		38.330090, 36.033878, 22.756229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095211, 35.709984, 22.339529>,  <38.412048, 35.558071, 22.249386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095211, 35.709984, 22.339529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864964, 35.806904, 22.651926>,  <38.726814, 35.865055, 22.839365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864964, 35.806904, 22.651926>,  <39.095211, 35.709984, 22.339529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864964, 35.806904, 22.651926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573408, -0.561313, 0.596767,
		0.582980, 0.791339, 0.184165,
		-0.575619, 0.242301, 0.780995,
		38.692276, 35.879593, 22.886225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627087, 35.648548, 22.970821>,  <39.095211, 35.709984, 22.339529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627087, 35.648548, 22.970821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254723, 35.635101, 23.116295>,  <39.031303, 35.627033, 23.203579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254723, 35.635101, 23.116295>,  <39.627087, 35.648548, 22.970821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254723, 35.635101, 23.116295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293886, -0.660184, 0.691222,
		0.216861, 0.750351, 0.624455,
		-0.930915, -0.033619, 0.363686,
		38.975449, 35.625015, 23.225401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597759, 35.888481, 23.725889>,  <39.627087, 35.648548, 22.970821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597759, 35.888481, 23.725889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256489, 35.681705, 23.697983>,  <39.051727, 35.557640, 23.681238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256489, 35.681705, 23.697983>,  <39.597759, 35.888481, 23.725889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256489, 35.681705, 23.697983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299224, -0.594571, 0.746291,
		-0.427267, 0.615841, 0.661954,
		-0.853175, -0.516938, -0.069766,
		39.000538, 35.526623, 23.677053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478466, 35.689674, 24.378265>,  <39.597759, 35.888481, 23.725889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478466, 35.689674, 24.378265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240406, 35.432613, 24.185266>,  <39.097572, 35.278378, 24.069468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240406, 35.432613, 24.185266>,  <39.478466, 35.689674, 24.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240406, 35.432613, 24.185266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144830, -0.676348, 0.722203,
		-0.790459, 0.359936, 0.495601,
		-0.595146, -0.642650, -0.482496,
		39.061863, 35.239819, 24.040518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929287, 35.402092, 24.813152>,  <39.478466, 35.689674, 24.378265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929287, 35.402092, 24.813152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982071, 35.129719, 24.525007>,  <39.013741, 34.966297, 24.352121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982071, 35.129719, 24.525007>,  <38.929287, 35.402092, 24.813152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982071, 35.129719, 24.525007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174743, -0.699356, 0.693084,
		-0.975731, -0.217338, 0.026701,
		0.131960, -0.680930, -0.720362,
		39.021660, 34.925438, 24.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370911, 34.865490, 25.028048>,  <38.929287, 35.402092, 24.813152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370911, 34.865490, 25.028048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626301, 34.693356, 24.772810>,  <38.779533, 34.590073, 24.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626301, 34.693356, 24.772810>,  <38.370911, 34.865490, 25.028048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626301, 34.693356, 24.772810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066740, -0.794994, 0.602935,
		-0.766746, -0.427544, -0.478860,
		0.638472, -0.430339, -0.638092,
		38.817841, 34.564255, 24.581383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086773, 34.157249, 24.859583>,  <38.370911, 34.865490, 25.028048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086773, 34.157249, 24.859583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479645, 34.145199, 24.785372>,  <38.715366, 34.137970, 24.740845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479645, 34.145199, 24.785372>,  <38.086773, 34.157249, 24.859583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479645, 34.145199, 24.785372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098016, -0.760132, 0.642334,
		-0.160376, -0.649070, -0.743631,
		0.982177, -0.030127, -0.185526,
		38.774300, 34.136162, 24.729713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264835, 33.430363, 24.767466>,  <38.086773, 34.157249, 24.859583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264835, 33.430363, 24.767466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626080, 33.581894, 24.848341>,  <38.842827, 33.672813, 24.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626080, 33.581894, 24.848341>,  <38.264835, 33.430363, 24.767466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626080, 33.581894, 24.848341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263176, -0.860362, 0.436480,
		0.339305, -0.340980, -0.876701,
		0.903112, 0.378826, 0.202187,
		38.897015, 33.695541, 24.908997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704861, 32.925560, 24.723980>,  <38.264835, 33.430363, 24.767466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704861, 32.925560, 24.723980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923191, 33.179760, 24.942415>,  <39.054192, 33.332279, 25.073477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923191, 33.179760, 24.942415>,  <38.704861, 32.925560, 24.723980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923191, 33.179760, 24.942415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281413, -0.752919, 0.594911,
		0.789225, -0.171044, -0.589803,
		0.545830, 0.635497, 0.546089,
		39.086941, 33.370411, 25.106241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335598, 32.598537, 24.795881>,  <38.704861, 32.925560, 24.723980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335598, 32.598537, 24.795881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295216, 32.874237, 25.082863>,  <39.270985, 33.039658, 25.255053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295216, 32.874237, 25.082863>,  <39.335598, 32.598537, 24.795881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295216, 32.874237, 25.082863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424915, -0.622186, 0.657520,
		0.899586, 0.371238, -0.230059,
		-0.100957, 0.689251, 0.717454,
		39.264927, 33.081013, 25.298100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916229, 32.540504, 25.148788>,  <39.335598, 32.598537, 24.795881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916229, 32.540504, 25.148788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675621, 32.718967, 25.413851>,  <39.531254, 32.826046, 25.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675621, 32.718967, 25.413851>,  <39.916229, 32.540504, 25.148788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675621, 32.718967, 25.413851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473983, -0.468393, 0.745619,
		0.643046, 0.762596, 0.070280,
		-0.601525, 0.446156, 0.662656,
		39.495163, 32.852814, 25.612648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303429, 32.636688, 25.776545>,  <39.916229, 32.540504, 25.148788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303429, 32.636688, 25.776545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946896, 32.683079, 25.951851>,  <39.732975, 32.710915, 26.057035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946896, 32.683079, 25.951851>,  <40.303429, 32.636688, 25.776545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946896, 32.683079, 25.951851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349769, -0.439119, 0.827549,
		0.288426, 0.890912, 0.350836,
		-0.891332, 0.115975, 0.438266,
		39.679497, 32.717873, 26.083330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440331, 32.823704, 26.517965>,  <40.303429, 32.636688, 25.776545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440331, 32.823704, 26.517965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080578, 32.653854, 26.476379>,  <39.864727, 32.551945, 26.451427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080578, 32.653854, 26.476379>,  <40.440331, 32.823704, 26.517965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080578, 32.653854, 26.476379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109898, -0.449787, 0.886349,
		-0.423128, 0.785739, 0.451195,
		-0.899381, -0.424625, -0.103966,
		39.810764, 32.526466, 26.445190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915695, 33.099323, 27.073156>,  <40.440331, 32.823704, 26.517965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915695, 33.099323, 27.073156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815876, 32.736683, 26.937040>,  <39.755985, 32.519096, 26.855371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815876, 32.736683, 26.937040>,  <39.915695, 33.099323, 27.073156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815876, 32.736683, 26.937040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077671, -0.331534, 0.940240,
		-0.965243, 0.261064, 0.012317,
		-0.249547, -0.906604, -0.340288,
		39.741013, 32.464703, 26.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545872, 32.875217, 27.599266>,  <39.915695, 33.099323, 27.073156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545872, 32.875217, 27.599266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550575, 32.558392, 27.355139>,  <39.553398, 32.368294, 27.208662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550575, 32.558392, 27.355139>,  <39.545872, 32.875217, 27.599266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550575, 32.558392, 27.355139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300546, -0.584938, 0.753339,
		-0.953695, 0.174573, -0.244929,
		0.011755, -0.792068, -0.610319,
		39.554100, 32.320770, 27.172043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921841, 32.431198, 27.700068>,  <39.545872, 32.875217, 27.599266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921841, 32.431198, 27.700068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217937, 32.208652, 27.549070>,  <39.395596, 32.075127, 27.458471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217937, 32.208652, 27.549070>,  <38.921841, 32.431198, 27.700068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217937, 32.208652, 27.549070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093563, -0.641240, 0.761615,
		-0.665802, -0.528458, -0.526726,
		0.740240, -0.556367, -0.377495,
		39.440010, 32.041744, 27.435823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624874, 31.758224, 27.701330>,  <38.921841, 32.431198, 27.700068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624874, 31.758224, 27.701330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024681, 31.757923, 27.688898>,  <39.264565, 31.757742, 27.681438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024681, 31.757923, 27.688898>,  <38.624874, 31.758224, 27.701330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024681, 31.757923, 27.688898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021977, -0.689999, 0.723477,
		-0.021988, -0.723810, -0.689648,
		0.999517, -0.000752, -0.031079,
		39.324535, 31.757698, 27.679575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654427, 31.016722, 27.834000>,  <38.624874, 31.758224, 27.701330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654427, 31.016722, 27.834000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015415, 31.181732, 27.883575>,  <39.232010, 31.280739, 27.913321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015415, 31.181732, 27.883575>,  <38.654427, 31.016722, 27.834000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015415, 31.181732, 27.883575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212150, -0.676103, 0.705604,
		0.374877, -0.610495, -0.697684,
		0.902474, 0.412528, 0.123939,
		39.286156, 31.305490, 27.920757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219440, 30.442745, 27.743507>,  <38.654427, 31.016722, 27.834000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219440, 30.442745, 27.743507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367424, 30.749609, 27.953117>,  <39.456215, 30.933727, 28.078882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367424, 30.749609, 27.953117>,  <39.219440, 30.442745, 27.743507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367424, 30.749609, 27.953117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322432, -0.635006, 0.702000,
		0.871304, -0.090746, -0.482281,
		0.369955, 0.767159, 0.524024,
		39.478409, 30.979757, 28.110325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840248, 30.183706, 27.932432>,  <39.219440, 30.442745, 27.743507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840248, 30.183706, 27.932432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794983, 30.491945, 28.183311>,  <39.767826, 30.676889, 28.333839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794983, 30.491945, 28.183311>,  <39.840248, 30.183706, 27.932432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794983, 30.491945, 28.183311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236627, -0.592186, 0.770275,
		0.964988, 0.235577, -0.115331,
		-0.113161, 0.770597, 0.627196,
		39.761036, 30.723124, 28.371469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457054, 30.096054, 28.276175>,  <39.840248, 30.183706, 27.932432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457054, 30.096054, 28.276175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211395, 30.333967, 28.483660>,  <40.063999, 30.476715, 28.608150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211395, 30.333967, 28.483660>,  <40.457054, 30.096054, 28.276175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211395, 30.333967, 28.483660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388062, -0.344725, 0.854735,
		0.687194, 0.726223, -0.019102,
		-0.614144, 0.594781, 0.518712,
		40.027153, 30.512402, 28.639273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857929, 30.189665, 28.801018>,  <40.457054, 30.096054, 28.276175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857929, 30.189665, 28.801018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499836, 30.289454, 28.948708>,  <40.284981, 30.349327, 29.037321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499836, 30.289454, 28.948708>,  <40.857929, 30.189665, 28.801018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499836, 30.289454, 28.948708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226979, -0.457743, 0.859623,
		0.383462, 0.853367, 0.353160,
		-0.895230, 0.249473, 0.369224,
		40.231266, 30.364296, 29.059475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014824, 30.367443, 29.445343>,  <40.857929, 30.189665, 28.801018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014824, 30.367443, 29.445343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624996, 30.277819, 29.444059>,  <40.391098, 30.224045, 29.443289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624996, 30.277819, 29.444059>,  <41.014824, 30.367443, 29.445343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624996, 30.277819, 29.444059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145616, -0.644130, 0.750928,
		-0.170321, 0.731364, 0.660376,
		-0.974570, -0.224060, -0.003211,
		40.332626, 30.210600, 29.443096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819397, 30.337589, 30.187281>,  <41.014824, 30.367443, 29.445343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819397, 30.337589, 30.187281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565601, 30.128633, 29.959410>,  <40.413322, 30.003260, 29.822687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565601, 30.128633, 29.959410>,  <40.819397, 30.337589, 30.187281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565601, 30.128633, 29.959410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033157, -0.754749, 0.655175,
		-0.772220, 0.396813, 0.496202,
		-0.634490, -0.522392, -0.569675,
		40.375256, 29.971916, 29.788507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295712, 30.138685, 30.603586>,  <40.819397, 30.337589, 30.187281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295712, 30.138685, 30.603586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298641, 29.886789, 30.292877>,  <40.300400, 29.735651, 30.106453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298641, 29.886789, 30.292877>,  <40.295712, 30.138685, 30.603586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298641, 29.886789, 30.292877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147864, -0.767570, 0.623676,
		-0.988981, -0.119423, 0.087495,
		0.007323, -0.629741, -0.776771,
		40.300838, 29.697866, 30.059847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112411, 30.746859, 30.969273>,  <40.295712, 30.138685, 30.603586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112411, 30.746859, 30.969273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168022, 31.025890, 31.250429>,  <40.201389, 31.193310, 31.419123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168022, 31.025890, 31.250429>,  <40.112411, 30.746859, 30.969273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168022, 31.025890, 31.250429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555528, 0.642519, -0.527786,
		-0.819794, -0.317102, 0.476849,
		0.139023, 0.697579, 0.702892,
		40.209728, 31.235165, 31.461296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367493, 30.915649, 31.233173>,  <40.112411, 30.746859, 30.969273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367493, 30.915649, 31.233173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632500, 31.209757, 31.290379>,  <39.791504, 31.386221, 31.324701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632500, 31.209757, 31.290379>,  <39.367493, 30.915649, 31.233173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632500, 31.209757, 31.290379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647576, 0.658187, -0.383973,
		-0.376451, 0.161778, 0.912202,
		0.662518, 0.735267, 0.143011,
		39.831257, 31.430338, 31.333282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953327, 31.406788, 31.453339>,  <39.367493, 30.915649, 31.233173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953327, 31.406788, 31.453339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281223, 31.598448, 31.327841>,  <39.477962, 31.713444, 31.252542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281223, 31.598448, 31.327841>,  <38.953327, 31.406788, 31.453339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281223, 31.598448, 31.327841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553800, 0.802813, -0.220900,
		0.146034, 0.354833, 0.923454,
		0.819744, 0.479150, -0.313744,
		39.527145, 31.742193, 31.233717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728916, 32.040543, 31.582872>,  <38.953327, 31.406788, 31.453339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728916, 32.040543, 31.582872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063667, 32.146568, 31.391298>,  <39.264519, 32.210182, 31.276354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063667, 32.146568, 31.391298>,  <38.728916, 32.040543, 31.582872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063667, 32.146568, 31.391298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474348, 0.787825, -0.392844,
		0.273187, 0.555943, 0.785045,
		0.836877, 0.265064, -0.478934,
		39.314732, 32.226086, 31.247618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856907, 32.809689, 31.625948>,  <38.728916, 32.040543, 31.582872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856907, 32.809689, 31.625948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049526, 32.677937, 31.301079>,  <39.165096, 32.598885, 31.106157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049526, 32.677937, 31.301079>,  <38.856907, 32.809689, 31.625948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049526, 32.677937, 31.301079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368915, 0.764416, -0.528744,
		0.794992, 0.554238, 0.246592,
		0.481549, -0.329376, -0.812171,
		39.193993, 32.579124, 31.057426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197971, 33.332016, 31.396553>,  <38.856907, 32.809689, 31.625948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197971, 33.332016, 31.396553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164730, 33.111748, 31.064323>,  <39.144783, 32.979588, 30.864986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164730, 33.111748, 31.064323>,  <39.197971, 33.332016, 31.396553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164730, 33.111748, 31.064323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188003, 0.827155, -0.529594,
		0.978646, 0.112138, -0.172268,
		-0.083105, -0.550672, -0.830575,
		39.139797, 32.946545, 30.815151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543797, 33.719303, 30.818472>,  <39.197971, 33.332016, 31.396553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543797, 33.719303, 30.818472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335545, 33.445057, 30.614954>,  <39.210594, 33.280510, 30.492844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335545, 33.445057, 30.614954>,  <39.543797, 33.719303, 30.818472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335545, 33.445057, 30.614954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292842, 0.703183, -0.647902,
		0.801988, -0.188322, -0.566877,
		-0.520633, -0.685615, -0.508796,
		39.179356, 33.239372, 30.462315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757313, 33.618298, 30.196930>,  <39.543797, 33.719303, 30.818472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757313, 33.618298, 30.196930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385395, 33.488918, 30.126646>,  <39.162247, 33.411293, 30.084476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385395, 33.488918, 30.126646>,  <39.757313, 33.618298, 30.196930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385395, 33.488918, 30.126646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138467, 0.749634, -0.647206,
		0.341052, -0.577436, -0.741789,
		-0.929791, -0.323444, -0.175708,
		39.106457, 33.391884, 30.073933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702965, 33.623901, 29.485184>,  <39.757313, 33.618298, 30.196930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702965, 33.623901, 29.485184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319038, 33.613014, 29.596912>,  <39.088684, 33.606483, 29.663950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319038, 33.613014, 29.596912>,  <39.702965, 33.623901, 29.485184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319038, 33.613014, 29.596912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249827, 0.536294, -0.806210,
		-0.127857, -0.843592, -0.521541,
		-0.959812, -0.027215, 0.279321,
		39.031094, 33.604851, 29.680708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366043, 33.466042, 28.851982>,  <39.702965, 33.623901, 29.485184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366043, 33.466042, 28.851982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118671, 33.667946, 29.092899>,  <38.970249, 33.789089, 29.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118671, 33.667946, 29.092899>,  <39.366043, 33.466042, 28.851982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118671, 33.667946, 29.092899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231586, 0.615331, -0.753482,
		-0.750940, -0.605459, -0.263643,
		-0.618431, 0.504764, 0.602293,
		38.933144, 33.819374, 29.273586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807674, 33.635666, 28.526958>,  <39.366043, 33.466042, 28.851982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807674, 33.635666, 28.526958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794933, 33.910816, 28.817009>,  <38.787289, 34.075905, 28.991039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794933, 33.910816, 28.817009>,  <38.807674, 33.635666, 28.526958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794933, 33.910816, 28.817009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255775, 0.695730, -0.671222,
		-0.966211, -0.206848, 0.153783,
		-0.031850, 0.687876, 0.725129,
		38.785378, 34.117180, 29.034548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107178, 33.853142, 28.537994>,  <38.807674, 33.635666, 28.526958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107178, 33.853142, 28.537994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313690, 34.151783, 28.705826>,  <38.437595, 34.330967, 28.806524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313690, 34.151783, 28.705826>,  <38.107178, 33.853142, 28.537994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313690, 34.151783, 28.705826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468648, 0.656348, -0.591250,
		-0.716816, 0.108614, 0.688751,
		0.516278, 0.746599, 0.419579,
		38.468575, 34.375763, 28.831699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575756, 34.371555, 28.758947>,  <38.107178, 33.853142, 28.537994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575756, 34.371555, 28.758947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914894, 34.572510, 28.691101>,  <38.118378, 34.693081, 28.650393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914894, 34.572510, 28.691101>,  <37.575756, 34.371555, 28.758947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914894, 34.572510, 28.691101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481755, 0.596190, -0.642238,
		-0.221528, 0.626231, 0.747503,
		0.847843, 0.502386, -0.169617,
		38.169247, 34.723225, 28.640217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345551, 35.032406, 28.710487>,  <37.575756, 34.371555, 28.758947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345551, 35.032406, 28.710487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713734, 35.047241, 28.554857>,  <37.934643, 35.056145, 28.461479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713734, 35.047241, 28.554857>,  <37.345551, 35.032406, 28.710487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713734, 35.047241, 28.554857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319681, 0.644157, -0.694885,
		0.224850, 0.763994, 0.604778,
		0.920460, 0.037091, -0.389073,
		37.989872, 35.058369, 28.438135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490948, 35.681629, 28.497099>,  <37.345551, 35.032406, 28.710487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490948, 35.681629, 28.497099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760025, 35.508541, 28.257019>,  <37.921471, 35.404690, 28.112972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760025, 35.508541, 28.257019>,  <37.490948, 35.681629, 28.497099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760025, 35.508541, 28.257019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278640, 0.603301, -0.747253,
		0.685452, 0.669911, 0.285263,
		0.672693, -0.432721, -0.600198,
		37.961834, 35.378723, 28.076960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818336, 36.225193, 28.210915>,  <37.490948, 35.681629, 28.497099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818336, 36.225193, 28.210915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924118, 35.916889, 27.979053>,  <37.987587, 35.731907, 27.839937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924118, 35.916889, 27.979053>,  <37.818336, 36.225193, 28.210915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924118, 35.916889, 27.979053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148993, 0.561182, -0.814172,
		0.952820, 0.301675, 0.033570,
		0.264454, -0.770757, -0.579653,
		38.003452, 35.685661, 27.805157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384285, 36.450462, 27.782398>,  <37.818336, 36.225193, 28.210915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384285, 36.450462, 27.782398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255032, 36.126266, 27.586977>,  <38.177479, 35.931747, 27.469725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255032, 36.126266, 27.586977>,  <38.384285, 36.450462, 27.782398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255032, 36.126266, 27.586977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060147, 0.532792, -0.844106,
		0.944440, -0.243375, -0.220913,
		-0.323135, -0.810495, -0.488552,
		38.158092, 35.883118, 27.440411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784374, 36.330189, 27.151838>,  <38.384285, 36.450462, 27.782398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784374, 36.330189, 27.151838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454639, 36.116665, 27.076454>,  <38.256798, 35.988552, 27.031223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454639, 36.116665, 27.076454>,  <38.784374, 36.330189, 27.151838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454639, 36.116665, 27.076454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131118, 0.503893, -0.853756,
		0.550708, -0.679071, -0.485369,
		-0.824335, -0.533811, -0.188460,
		38.207340, 35.956520, 27.019917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932781, 35.985943, 26.601210>,  <38.784374, 36.330189, 27.151838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932781, 35.985943, 26.601210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536926, 36.042934, 26.594189>,  <38.299412, 36.077129, 26.589975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536926, 36.042934, 26.594189>,  <38.932781, 35.985943, 26.601210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536926, 36.042934, 26.594189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077387, 0.426475, -0.901183,
		-0.120917, -0.893206, -0.433084,
		-0.989642, 0.142484, -0.017554,
		38.240032, 36.085678, 26.588923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711224, 36.118748, 26.027035>,  <38.932781, 35.985943, 26.601210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711224, 36.118748, 26.027035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337330, 36.203804, 26.140913>,  <38.112995, 36.254837, 26.209240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337330, 36.203804, 26.140913>,  <38.711224, 36.118748, 26.027035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337330, 36.203804, 26.140913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103709, 0.603052, -0.790932,
		-0.339873, -0.768838, -0.541641,
		-0.934736, 0.212643, 0.284696,
		38.056908, 36.267597, 26.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207279, 35.968731, 25.424442>,  <38.711224, 36.118748, 26.027035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207279, 35.968731, 25.424442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048267, 36.253807, 25.655624>,  <37.952858, 36.424854, 25.794334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048267, 36.253807, 25.655624>,  <38.207279, 35.968731, 25.424442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048267, 36.253807, 25.655624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062221, 0.649353, -0.757937,
		-0.915476, -0.265344, -0.302484,
		-0.397533, 0.712694, 0.577957,
		37.929008, 36.467617, 25.829012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783272, 36.341770, 24.951143>,  <38.207279, 35.968731, 25.424442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783272, 36.341770, 24.951143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819885, 36.586906, 25.265099>,  <37.841854, 36.733986, 25.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819885, 36.586906, 25.265099>,  <37.783272, 36.341770, 24.951143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819885, 36.586906, 25.265099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322937, 0.727330, -0.605559,
		-0.941983, 0.308901, -0.131331,
		0.091537, 0.612839, 0.784889,
		37.847347, 36.770760, 25.500565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365879, 36.966484, 24.873457>,  <37.783272, 36.341770, 24.951143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365879, 36.966484, 24.873457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652725, 37.071693, 25.131622>,  <37.824833, 37.134819, 25.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652725, 37.071693, 25.131622>,  <37.365879, 36.966484, 24.873457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652725, 37.071693, 25.131622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134528, 0.856397, -0.498484,
		-0.683846, 0.444298, 0.578753,
		0.717117, 0.263028, 0.645414,
		37.867859, 37.150600, 25.325247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194691, 37.633644, 25.135731>,  <37.365879, 36.966484, 24.873457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194691, 37.633644, 25.135731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591904, 37.606697, 25.174398>,  <37.830231, 37.590530, 25.197599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591904, 37.606697, 25.174398>,  <37.194691, 37.633644, 25.135731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591904, 37.606697, 25.174398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115906, 0.706068, -0.698595,
		-0.021195, 0.704933, 0.708957,
		0.993034, -0.067366, 0.096671,
		37.889812, 37.586487, 25.203400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424290, 38.306705, 25.231405>,  <37.194691, 37.633644, 25.135731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424290, 38.306705, 25.231405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743660, 38.098583, 25.110216>,  <37.935284, 37.973709, 25.037502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743660, 38.098583, 25.110216>,  <37.424290, 38.306705, 25.231405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743660, 38.098583, 25.110216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123079, 0.633620, -0.763791,
		0.589377, 0.572542, 0.569939,
		0.798428, -0.520308, -0.302973,
		37.983189, 37.942490, 25.019323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943108, 38.805012, 25.097805>,  <37.424290, 38.306705, 25.231405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943108, 38.805012, 25.097805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077003, 38.478371, 24.909716>,  <38.157341, 38.282387, 24.796862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077003, 38.478371, 24.909716>,  <37.943108, 38.805012, 25.097805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077003, 38.478371, 24.909716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313765, 0.567123, -0.761527,
		0.888540, 0.107373, 0.446059,
		0.334738, -0.816604, -0.470221,
		38.177425, 38.233391, 24.768650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561451, 38.921143, 24.985914>,  <37.943108, 38.805012, 25.097805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561451, 38.921143, 24.985914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487820, 38.637012, 24.714163>,  <38.443642, 38.466534, 24.551113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487820, 38.637012, 24.714163>,  <38.561451, 38.921143, 24.985914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487820, 38.637012, 24.714163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283747, 0.623358, -0.728637,
		0.941064, -0.326900, 0.086803,
		-0.184082, -0.710324, -0.679377,
		38.432594, 38.423916, 24.510349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172581, 38.918217, 24.657631>,  <38.561451, 38.921143, 24.985914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172581, 38.918217, 24.657631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873749, 38.774799, 24.433729>,  <38.694450, 38.688751, 24.299389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873749, 38.774799, 24.433729>,  <39.172581, 38.918217, 24.657631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873749, 38.774799, 24.433729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179055, 0.702404, -0.688889,
		0.640169, -0.614879, -0.460550,
		-0.747076, -0.358542, -0.559755,
		38.649628, 38.667236, 24.265802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463963, 38.892830, 23.929621>,  <39.172581, 38.918217, 24.657631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463963, 38.892830, 23.929621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071239, 38.851410, 23.865948>,  <38.835606, 38.826557, 23.827744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071239, 38.851410, 23.865948>,  <39.463963, 38.892830, 23.929621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071239, 38.851410, 23.865948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059627, 0.627747, -0.776130,
		0.180296, -0.771499, -0.610150,
		-0.981804, -0.103551, -0.159182,
		38.776699, 38.820343, 23.818193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282406, 38.637863, 23.230631>,  <39.463963, 38.892830, 23.929621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282406, 38.637863, 23.230631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962021, 38.848667, 23.344269>,  <38.769791, 38.975151, 23.412451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962021, 38.848667, 23.344269>,  <39.282406, 38.637863, 23.230631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962021, 38.848667, 23.344269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214894, 0.695953, -0.685179,
		-0.558814, -0.487755, -0.670687,
		-0.800967, 0.527014, 0.284093,
		38.721729, 39.006771, 23.429497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950336, 38.665512, 22.636953>,  <39.282406, 38.637863, 23.230631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950336, 38.665512, 22.636953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763660, 38.944622, 22.854321>,  <38.651653, 39.112087, 22.984741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763660, 38.944622, 22.854321>,  <38.950336, 38.665512, 22.636953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763660, 38.944622, 22.854321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224040, 0.501122, -0.835872,
		-0.855573, -0.511842, -0.077539,
		-0.466691, 0.697778, 0.543420,
		38.623653, 39.153954, 23.017347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377647, 38.798115, 22.234632>,  <38.950336, 38.665512, 22.636953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377647, 38.798115, 22.234632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429478, 39.096611, 22.495810>,  <38.460575, 39.275707, 22.652515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429478, 39.096611, 22.495810>,  <38.377647, 38.798115, 22.234632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429478, 39.096611, 22.495810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204592, 0.664445, -0.718787,
		-0.970233, -0.040449, 0.238772,
		0.129577, 0.746242, 0.652942,
		38.468349, 39.320484, 22.691692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798660, 39.295036, 22.156130>,  <38.377647, 38.798115, 22.234632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798660, 39.295036, 22.156130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086411, 39.509125, 22.333233>,  <38.259060, 39.637577, 22.439495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086411, 39.509125, 22.333233>,  <37.798660, 39.295036, 22.156130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086411, 39.509125, 22.333233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130571, 0.730242, -0.670595,
		-0.682237, 0.424600, 0.595204,
		0.719377, 0.535221, 0.442758,
		38.302223, 39.669689, 22.466061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529629, 40.008114, 22.072626>,  <37.798660, 39.295036, 22.156130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529629, 40.008114, 22.072626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919289, 40.026806, 22.161037>,  <38.153084, 40.038021, 22.214085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919289, 40.026806, 22.161037>,  <37.529629, 40.008114, 22.072626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919289, 40.026806, 22.161037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069257, 0.869483, -0.489084,
		-0.215036, 0.491747, 0.843768,
		0.974147, 0.046734, 0.221027,
		38.211533, 40.040825, 22.227346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670788, 40.684185, 22.378805>,  <37.529629, 40.008114, 22.072626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670788, 40.684185, 22.378805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012161, 40.550812, 22.218571>,  <38.216988, 40.470787, 22.122431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012161, 40.550812, 22.218571>,  <37.670788, 40.684185, 22.378805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012161, 40.550812, 22.218571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153888, 0.895524, -0.417559,
		0.497963, 0.294714, 0.815583,
		0.853435, -0.333437, -0.400585,
		38.268192, 40.450779, 22.098394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135258, 41.105831, 22.554237>,  <37.670788, 40.684185, 22.378805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135258, 41.105831, 22.554237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289658, 40.938362, 22.225430>,  <38.382298, 40.837879, 22.028145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289658, 40.938362, 22.225430>,  <38.135258, 41.105831, 22.554237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289658, 40.938362, 22.225430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022526, 0.895090, -0.445315,
		0.922223, 0.153376, 0.354938,
		0.386002, -0.418675, -0.822018,
		38.405457, 40.812759, 21.978825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626774, 41.649860, 22.246052>,  <38.135258, 41.105831, 22.554237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626774, 41.649860, 22.246052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546875, 41.379959, 21.961853>,  <38.498936, 41.218018, 21.791334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546875, 41.379959, 21.961853>,  <38.626774, 41.649860, 22.246052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546875, 41.379959, 21.961853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169636, 0.737973, -0.653161,
		0.965052, -0.009940, -0.261870,
		-0.199745, -0.674757, -0.710497,
		38.486950, 41.177532, 21.748705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031872, 41.866238, 21.614792>,  <38.626774, 41.649860, 22.246052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031872, 41.866238, 21.614792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753773, 41.608742, 21.486895>,  <38.586914, 41.454247, 21.410156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753773, 41.608742, 21.486895>,  <39.031872, 41.866238, 21.614792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753773, 41.608742, 21.486895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398698, 0.715526, -0.573640,
		0.598056, -0.271341, -0.754124,
		-0.695248, -0.643737, -0.319741,
		38.545200, 41.415619, 21.390972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817020, 42.520851, 21.998627>,  <39.031872, 41.866238, 21.614792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817020, 42.520851, 21.998627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932556, 42.888020, 22.107431>,  <39.001877, 43.108322, 22.172714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932556, 42.888020, 22.107431>,  <38.817020, 42.520851, 21.998627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932556, 42.888020, 22.107431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259384, -0.348525, 0.900695,
		0.921570, -0.189601, -0.338762,
		0.288839, 0.917923, 0.272011,
		39.019207, 43.163395, 22.189035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474426, 42.424702, 22.352423>,  <38.817020, 42.520851, 21.998627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474426, 42.424702, 22.352423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319008, 42.754677, 22.516623>,  <39.225758, 42.952663, 22.615143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319008, 42.754677, 22.516623>,  <39.474426, 42.424702, 22.352423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319008, 42.754677, 22.516623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164482, -0.376252, 0.911801,
		0.906630, 0.421796, 0.010504,
		-0.388546, 0.824938, 0.410499,
		39.202446, 43.002159, 22.639772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740524, 42.436256, 22.991695>,  <39.474426, 42.424702, 22.352423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740524, 42.436256, 22.991695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426865, 42.676205, 23.055279>,  <39.238670, 42.820171, 23.093428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426865, 42.676205, 23.055279>,  <39.740524, 42.436256, 22.991695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426865, 42.676205, 23.055279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067350, -0.172370, 0.982727,
		0.616907, 0.781310, 0.094762,
		-0.784149, 0.599869, 0.158958,
		39.191620, 42.856167, 23.102966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934502, 42.728806, 23.597494>,  <39.740524, 42.436256, 22.991695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934502, 42.728806, 23.597494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547832, 42.828785, 23.575354>,  <39.315830, 42.888771, 23.562069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547832, 42.828785, 23.575354>,  <39.934502, 42.728806, 23.597494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547832, 42.828785, 23.575354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126074, -0.276621, 0.952673,
		0.222807, 0.927905, 0.298915,
		-0.966676, 0.249948, -0.055351,
		39.257832, 42.903770, 23.558748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775608, 43.190762, 24.201557>,  <39.934502, 42.728806, 23.597494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775608, 43.190762, 24.201557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466988, 42.980049, 24.058895>,  <39.281815, 42.853622, 23.973297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466988, 42.980049, 24.058895>,  <39.775608, 43.190762, 24.201557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466988, 42.980049, 24.058895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111637, -0.439817, 0.891122,
		-0.626292, 0.727365, 0.280534,
		-0.771554, -0.526784, -0.356655,
		39.235523, 42.822014, 23.951899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447044, 42.972347, 24.829561>,  <39.775608, 43.190762, 24.201557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447044, 42.972347, 24.829561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215157, 42.750824, 24.590488>,  <39.076023, 42.617912, 24.447044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215157, 42.750824, 24.590488>,  <39.447044, 42.972347, 24.829561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215157, 42.750824, 24.590488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204430, -0.611203, 0.764617,
		-0.788755, 0.565448, 0.241111,
		-0.579719, -0.553805, -0.597684,
		39.041241, 42.584682, 24.411182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727852, 42.986134, 25.109457>,  <39.447044, 42.972347, 24.829561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727852, 42.986134, 25.109457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784996, 42.657951, 24.888031>,  <38.819283, 42.461040, 24.755175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784996, 42.657951, 24.888031>,  <38.727852, 42.986134, 25.109457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784996, 42.657951, 24.888031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201076, -0.571699, 0.795442,
		-0.969103, -0.002326, -0.246647,
		0.142858, -0.820460, -0.553567,
		38.827854, 42.411812, 24.721960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107613, 42.487225, 25.190563>,  <38.727852, 42.986134, 25.109457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107613, 42.487225, 25.190563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412018, 42.261646, 25.062300>,  <38.594662, 42.126301, 24.985342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412018, 42.261646, 25.062300>,  <38.107613, 42.487225, 25.190563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412018, 42.261646, 25.062300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261775, -0.719205, 0.643598,
		-0.593573, -0.405848, -0.694953,
		0.761016, -0.563943, -0.320660,
		38.640324, 42.092464, 24.966103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823006, 41.909130, 25.198486>,  <38.107613, 42.487225, 25.190563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823006, 41.909130, 25.198486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211723, 41.815025, 25.191969>,  <38.444954, 41.758564, 25.188059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211723, 41.815025, 25.191969>,  <37.823006, 41.909130, 25.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211723, 41.815025, 25.191969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176244, -0.770455, 0.612647,
		-0.156685, -0.592496, -0.790188,
		0.971796, -0.235259, -0.016295,
		38.503262, 41.744446, 25.187080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914330, 41.181793, 25.314518>,  <37.823006, 41.909130, 25.198486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914330, 41.181793, 25.314518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286579, 41.300770, 25.399815>,  <38.509930, 41.372158, 25.450993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286579, 41.300770, 25.399815>,  <37.914330, 41.181793, 25.314518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286579, 41.300770, 25.399815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060436, -0.699544, 0.712029,
		0.360960, -0.649742, -0.668987,
		0.930621, 0.297445, 0.213239,
		38.565765, 41.390003, 25.463787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267365, 40.559456, 25.462923>,  <37.914330, 41.181793, 25.314518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267365, 40.559456, 25.462923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520344, 40.836014, 25.602623>,  <38.672131, 41.001949, 25.686443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520344, 40.836014, 25.602623>,  <38.267365, 40.559456, 25.462923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520344, 40.836014, 25.602623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236090, -0.601482, 0.763204,
		0.737747, -0.400232, -0.543639,
		0.632448, 0.691399, 0.349251,
		38.710079, 41.043434, 25.707397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818775, 40.170822, 25.488605>,  <38.267365, 40.559456, 25.462923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818775, 40.170822, 25.488605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831463, 40.482864, 25.738544>,  <38.839073, 40.670090, 25.888508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831463, 40.482864, 25.738544>,  <38.818775, 40.170822, 25.488605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831463, 40.482864, 25.738544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136106, -0.622711, 0.770523,
		0.990187, 0.060609, -0.125925,
		0.031715, 0.780101, 0.624849,
		38.840977, 40.716896, 25.925999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446579, 40.075336, 25.849369>,  <38.818775, 40.170822, 25.488605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446579, 40.075336, 25.849369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200348, 40.308422, 26.061596>,  <39.052608, 40.448273, 26.188932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200348, 40.308422, 26.061596>,  <39.446579, 40.075336, 25.849369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200348, 40.308422, 26.061596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216541, -0.522264, 0.824834,
		0.757740, 0.622642, 0.195314,
		-0.615582, 0.582716, 0.530568,
		39.015675, 40.483238, 26.220766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872768, 40.161026, 26.463491>,  <39.446579, 40.075336, 25.849369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872768, 40.161026, 26.463491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502213, 40.234989, 26.594707>,  <39.279881, 40.279369, 26.673437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502213, 40.234989, 26.594707>,  <39.872768, 40.161026, 26.463491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502213, 40.234989, 26.594707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192075, -0.517258, 0.833997,
		0.323895, 0.835615, 0.443666,
		-0.926390, 0.184911, 0.328038,
		39.224297, 40.290462, 26.693119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002113, 40.338181, 27.253000>,  <39.872768, 40.161026, 26.463491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002113, 40.338181, 27.253000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617966, 40.234917, 27.210976>,  <39.387478, 40.172958, 27.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617966, 40.234917, 27.210976>,  <40.002113, 40.338181, 27.253000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617966, 40.234917, 27.210976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107871, -0.691845, 0.713943,
		-0.256998, 0.674318, 0.692277,
		-0.960373, -0.258159, -0.105063,
		39.329853, 40.157471, 27.179457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683834, 40.424850, 27.863047>,  <40.002113, 40.338181, 27.253000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683834, 40.424850, 27.863047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428387, 40.176136, 27.681698>,  <39.275120, 40.026909, 27.572889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428387, 40.176136, 27.681698>,  <39.683834, 40.424850, 27.863047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428387, 40.176136, 27.681698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043964, -0.617679, 0.785200,
		-0.768266, 0.481512, 0.421798,
		-0.638619, -0.621787, -0.453372,
		39.236801, 39.989601, 27.545687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129356, 40.261662, 28.356323>,  <39.683834, 40.424850, 27.863047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129356, 40.261662, 28.356323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079590, 39.964046, 28.093744>,  <39.049728, 39.785477, 27.936197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079590, 39.964046, 28.093744>,  <39.129356, 40.261662, 28.356323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079590, 39.964046, 28.093744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254369, -0.615559, 0.745912,
		-0.959071, 0.259787, -0.112672,
		-0.124421, -0.744042, -0.656446,
		39.042263, 39.740833, 27.896811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563747, 39.873486, 28.560736>,  <39.129356, 40.261662, 28.356323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563747, 39.873486, 28.560736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741322, 39.606396, 28.321716>,  <38.847866, 39.446140, 28.178305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741322, 39.606396, 28.321716>,  <38.563747, 39.873486, 28.560736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741322, 39.606396, 28.321716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220094, -0.727688, 0.649637,
		-0.868607, -0.156881, -0.470010,
		0.443937, -0.667726, -0.597547,
		38.874504, 39.406078, 28.142452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101334, 39.247936, 28.429882>,  <38.563747, 39.873486, 28.560736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101334, 39.247936, 28.429882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473263, 39.119068, 28.358744>,  <38.696423, 39.041748, 28.316061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473263, 39.119068, 28.358744>,  <38.101334, 39.247936, 28.429882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473263, 39.119068, 28.358744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168245, -0.801974, 0.573177,
		-0.327290, -0.503032, -0.799899,
		0.929825, -0.322174, -0.177846,
		38.752209, 39.022415, 28.305389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060631, 38.498074, 28.382589>,  <38.101334, 39.247936, 28.429882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060631, 38.498074, 28.382589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453426, 38.537121, 28.447302>,  <38.689102, 38.560551, 28.486130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453426, 38.537121, 28.447302>,  <38.060631, 38.498074, 28.382589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453426, 38.537121, 28.447302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026659, -0.776050, 0.630108,
		0.187062, -0.623070, -0.759468,
		0.981986, 0.097623, 0.161780,
		38.748024, 38.566406, 28.495836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315418, 37.903194, 28.229784>,  <38.060631, 38.498074, 28.382589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315418, 37.903194, 28.229784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603271, 38.053776, 28.463165>,  <38.775982, 38.144123, 28.603193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603271, 38.053776, 28.463165>,  <38.315418, 37.903194, 28.229784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603271, 38.053776, 28.463165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078861, -0.879152, 0.469970,
		0.689864, -0.292193, -0.662352,
		0.719631, 0.376450, 0.583453,
		38.819160, 38.166710, 28.638201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815853, 37.512177, 28.148808>,  <38.315418, 37.903194, 28.229784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815853, 37.512177, 28.148808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909817, 37.680710, 28.499187>,  <38.966194, 37.781830, 28.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909817, 37.680710, 28.499187>,  <38.815853, 37.512177, 28.148808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909817, 37.680710, 28.499187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531999, -0.809945, 0.246914,
		0.813506, 0.408002, -0.414417,
		0.234913, 0.421336, 0.875952,
		38.980289, 37.807110, 28.761972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434132, 37.175858, 28.340612>,  <38.815853, 37.512177, 28.148808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434132, 37.175858, 28.340612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366982, 37.364182, 28.687059>,  <39.326691, 37.477177, 28.894928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366982, 37.364182, 28.687059>,  <39.434132, 37.175858, 28.340612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366982, 37.364182, 28.687059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514261, -0.707742, 0.484394,
		0.841043, 0.526727, -0.123306,
		-0.167875, 0.470808, 0.866117,
		39.316620, 37.505424, 28.946894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096962, 37.116680, 28.775650>,  <39.434132, 37.175858, 28.340612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096962, 37.116680, 28.775650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782486, 37.188293, 29.012245>,  <39.593800, 37.231262, 29.154202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782486, 37.188293, 29.012245>,  <40.096962, 37.116680, 28.775650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782486, 37.188293, 29.012245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305997, -0.718772, 0.624286,
		0.536916, 0.671798, 0.510303,
		-0.786185, 0.179038, 0.591488,
		39.546631, 37.242004, 29.189692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366787, 37.233444, 29.388929>,  <40.096962, 37.116680, 28.775650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366787, 37.233444, 29.388929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987965, 37.119209, 29.447601>,  <39.760670, 37.050667, 29.482805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987965, 37.119209, 29.447601>,  <40.366787, 37.233444, 29.388929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987965, 37.119209, 29.447601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291299, -0.572263, 0.766590,
		-0.134992, 0.768734, 0.625160,
		-0.947060, -0.285592, 0.146681,
		39.703846, 37.033531, 29.491606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448818, 37.100346, 30.135483>,  <40.366787, 37.233444, 29.388929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448818, 37.100346, 30.135483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111950, 36.947060, 29.983749>,  <39.909828, 36.855087, 29.892710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111950, 36.947060, 29.983749>,  <40.448818, 37.100346, 30.135483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111950, 36.947060, 29.983749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034812, -0.740671, 0.670966,
		-0.538087, 0.551862, 0.637111,
		-0.842170, -0.383217, -0.379334,
		39.859299, 36.832096, 29.869949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926174, 37.180309, 30.677494>,  <40.448818, 37.100346, 30.135483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926174, 37.180309, 30.677494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863194, 36.879307, 30.421698>,  <39.825405, 36.698708, 30.268221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863194, 36.879307, 30.421698>,  <39.926174, 37.180309, 30.677494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863194, 36.879307, 30.421698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144656, -0.658158, 0.738853,
		-0.976874, 0.023830, 0.212485,
		-0.157455, -0.752503, -0.639490,
		39.815956, 36.653557, 30.229851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568981, 36.722618, 31.061750>,  <39.926174, 37.180309, 30.677494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568981, 36.722618, 31.061750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707752, 36.506802, 30.754885>,  <39.791016, 36.377312, 30.570765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707752, 36.506802, 30.754885>,  <39.568981, 36.722618, 31.061750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707752, 36.506802, 30.754885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211454, -0.751909, 0.624435,
		-0.913746, -0.378851, -0.146766,
		0.346923, -0.539541, -0.767164,
		39.811829, 36.344940, 30.524736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241585, 36.066849, 31.048643>,  <39.568981, 36.722618, 31.061750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241585, 36.066849, 31.048643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578560, 36.010654, 30.840582>,  <39.780746, 35.976936, 30.715746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578560, 36.010654, 30.840582>,  <39.241585, 36.066849, 31.048643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578560, 36.010654, 30.840582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236097, -0.771525, 0.590768,
		-0.484306, -0.620493, -0.616795,
		0.842440, -0.140489, -0.520151,
		39.831291, 35.968510, 30.684536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254162, 35.380695, 30.929892>,  <39.241585, 36.066849, 31.048643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254162, 35.380695, 30.929892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632557, 35.498222, 30.875078>,  <39.859592, 35.568741, 30.842190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632557, 35.498222, 30.875078>,  <39.254162, 35.380695, 30.929892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632557, 35.498222, 30.875078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297769, -0.620249, 0.725689,
		0.128227, -0.727297, -0.674238,
		0.945987, 0.293820, -0.137034,
		39.916351, 35.586369, 30.833967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616699, 34.742855, 30.932835>,  <39.254162, 35.380695, 30.929892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616699, 34.742855, 30.932835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876312, 35.031067, 31.030481>,  <40.032082, 35.203995, 31.089069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876312, 35.031067, 31.030481>,  <39.616699, 34.742855, 30.932835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876312, 35.031067, 31.030481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402998, -0.597800, 0.692985,
		0.645248, -0.351393, -0.678364,
		0.649036, 0.720526, 0.244119,
		40.071022, 35.247223, 31.103718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317142, 34.502014, 30.880875>,  <39.616699, 34.742855, 30.932835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317142, 34.502014, 30.880875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360249, 34.823692, 31.114681>,  <40.386112, 35.016697, 31.254965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360249, 34.823692, 31.114681>,  <40.317142, 34.502014, 30.880875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360249, 34.823692, 31.114681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535469, -0.542325, 0.647422,
		0.837651, 0.243220, -0.489065,
		0.107766, 0.804193, 0.584516,
		40.392578, 35.064949, 31.290035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994091, 34.481995, 31.142595>,  <40.317142, 34.502014, 30.880875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994091, 34.481995, 31.142595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843987, 34.738323, 31.410484>,  <40.753925, 34.892120, 31.571218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843987, 34.738323, 31.410484>,  <40.994091, 34.481995, 31.142595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843987, 34.738323, 31.410484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442125, -0.511292, 0.736958,
		0.814682, 0.572651, -0.091456,
		-0.375259, 0.640822, 0.669723,
		40.731407, 34.930569, 31.611401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589954, 34.594948, 31.619627>,  <40.994091, 34.481995, 31.142595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589954, 34.594948, 31.619627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275101, 34.764957, 31.798410>,  <41.086189, 34.866962, 31.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275101, 34.764957, 31.798410>,  <41.589954, 34.594948, 31.619627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275101, 34.764957, 31.798410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313368, -0.348580, 0.883341,
		0.531247, 0.835370, 0.141189,
		-0.787133, 0.425028, 0.446960,
		41.038960, 34.892467, 31.932499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815849, 34.838436, 32.233971>,  <41.589954, 34.594948, 31.619627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815849, 34.838436, 32.233971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421860, 34.787197, 32.280304>,  <41.185467, 34.756454, 32.308102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421860, 34.787197, 32.280304>,  <41.815849, 34.838436, 32.233971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421860, 34.787197, 32.280304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167571, -0.546618, 0.820444,
		-0.041785, 0.827526, 0.559871,
		-0.984974, -0.128100, 0.115829,
		41.126366, 34.748768, 32.315052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679710, 35.107689, 32.851894>,  <41.815849, 34.838436, 32.233971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679710, 35.107689, 32.851894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382168, 34.857716, 32.757122>,  <41.203640, 34.707733, 32.700260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382168, 34.857716, 32.757122>,  <41.679710, 35.107689, 32.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382168, 34.857716, 32.757122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237326, -0.578390, 0.780475,
		-0.624781, 0.524334, 0.578552,
		-0.743858, -0.624932, -0.236929,
		41.159012, 34.670235, 32.686043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461781, 34.804710, 33.530552>,  <41.679710, 35.107689, 32.851894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461781, 34.804710, 33.530552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275085, 34.561134, 33.274006>,  <41.163067, 34.414989, 33.120079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275085, 34.561134, 33.274006>,  <41.461781, 34.804710, 33.530552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275085, 34.561134, 33.274006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306351, -0.791623, 0.528660,
		-0.829641, 0.050263, 0.556030,
		-0.466739, -0.608938, -0.641365,
		41.135063, 34.378452, 33.081596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019180, 34.469307, 33.988853>,  <41.461781, 34.804710, 33.530552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019180, 34.469307, 33.988853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086178, 34.241035, 33.667290>,  <41.126377, 34.104073, 33.474350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086178, 34.241035, 33.667290>,  <41.019180, 34.469307, 33.988853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086178, 34.241035, 33.667290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471227, -0.669908, 0.573731,
		-0.865963, -0.474919, 0.156717,
		0.167490, -0.570680, -0.803910,
		41.136425, 34.069832, 33.426117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749352, 33.763248, 34.130226>,  <41.019180, 34.469307, 33.988853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749352, 33.763248, 34.130226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026978, 33.754410, 33.842396>,  <41.193554, 33.749107, 33.669697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026978, 33.754410, 33.842396>,  <40.749352, 33.763248, 34.130226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026978, 33.754410, 33.842396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469515, -0.743813, 0.475708,
		-0.545744, -0.668022, -0.505875,
		0.694060, -0.022099, -0.719577,
		41.235195, 33.747780, 33.626522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817131, 33.025833, 34.035980>,  <40.749352, 33.763248, 34.130226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817131, 33.025833, 34.035980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148983, 33.191471, 33.886185>,  <41.348095, 33.290855, 33.796307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148983, 33.191471, 33.886185>,  <40.817131, 33.025833, 34.035980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148983, 33.191471, 33.886185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531671, -0.790695, 0.303526,
		-0.170416, -0.450918, -0.876146,
		0.829629, 0.414095, -0.374487,
		41.397873, 33.315701, 33.773838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159786, 32.583786, 33.572018>,  <40.817131, 33.025833, 34.035980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159786, 32.583786, 33.572018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438011, 32.820774, 33.734585>,  <41.604946, 32.962967, 33.832123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438011, 32.820774, 33.734585>,  <41.159786, 32.583786, 33.572018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438011, 32.820774, 33.734585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586052, -0.795097, 0.156091,
		0.415618, 0.129609, -0.900257,
		0.695561, 0.592472, 0.406414,
		41.646679, 32.998516, 33.856510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814098, 32.359402, 33.280567>,  <41.159786, 32.583786, 33.572018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814098, 32.359402, 33.280567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891243, 32.564381, 33.615280>,  <41.937531, 32.687370, 33.816109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891243, 32.564381, 33.615280>,  <41.814098, 32.359402, 33.280567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891243, 32.564381, 33.615280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686236, -0.679985, 0.258264,
		0.701344, 0.524418, -0.482806,
		0.192863, 0.512451, 0.836778,
		41.949100, 32.718117, 33.866314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599384, 32.387981, 33.340122>,  <41.814098, 32.359402, 33.280567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599384, 32.387981, 33.340122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446045, 32.447605, 33.704720>,  <42.354042, 32.483379, 33.923477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446045, 32.447605, 33.704720>,  <42.599384, 32.387981, 33.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446045, 32.447605, 33.704720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519152, -0.781455, 0.346135,
		0.763890, 0.605895, 0.222180,
		-0.383345, 0.149064, 0.911497,
		42.331039, 32.492325, 33.978168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081451, 32.034184, 33.763161>,  <42.599384, 32.387981, 33.340122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081451, 32.034184, 33.763161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788979, 32.095943, 34.028954>,  <42.613495, 32.132999, 34.188427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788979, 32.095943, 34.028954>,  <43.081451, 32.034184, 33.763161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788979, 32.095943, 34.028954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309355, -0.793095, 0.524690,
		0.608006, 0.589204, 0.532135,
		-0.731183, 0.154396, 0.664479,
		42.569622, 32.142262, 34.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442524, 32.048519, 34.421497>,  <43.081451, 32.034184, 33.763161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442524, 32.048519, 34.421497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063217, 31.927794, 34.460888>,  <42.835632, 31.855358, 34.484524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063217, 31.927794, 34.460888>,  <43.442524, 32.048519, 34.421497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063217, 31.927794, 34.460888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288987, -0.692177, 0.661345,
		-0.131441, 0.655590, 0.743589,
		-0.948267, -0.301815, 0.098477,
		42.778736, 31.837250, 34.490433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300217, 31.848911, 35.099400>,  <43.442524, 32.048519, 34.421497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300217, 31.848911, 35.099400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948540, 31.698441, 34.982426>,  <42.737534, 31.608158, 34.912243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948540, 31.698441, 34.982426>,  <43.300217, 31.848911, 35.099400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948540, 31.698441, 34.982426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162399, -0.813579, 0.558315,
		-0.447943, 0.443373, 0.776380,
		-0.879189, -0.376177, -0.292434,
		42.684784, 31.585587, 34.894695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013882, 31.548656, 35.773678>,  <43.300217, 31.848911, 35.099400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013882, 31.548656, 35.773678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843742, 31.364233, 35.462166>,  <42.741657, 31.253580, 35.275257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843742, 31.364233, 35.462166>,  <43.013882, 31.548656, 35.773678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843742, 31.364233, 35.462166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010132, -0.862879, 0.505310,
		-0.904972, 0.207044, 0.371698,
		-0.425352, -0.461057, -0.778783,
		42.716137, 31.225916, 35.228531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251328, 31.304138, 35.960884>,  <43.013882, 31.548656, 35.773678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251328, 31.304138, 35.960884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408272, 31.081161, 35.668224>,  <42.502438, 30.947376, 35.492630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408272, 31.081161, 35.668224>,  <42.251328, 31.304138, 35.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408272, 31.081161, 35.668224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107742, -0.817813, 0.565308,
		-0.913479, -0.142976, -0.380938,
		0.392362, -0.557440, -0.731650,
		42.525982, 30.913929, 35.448730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879147, 30.627668, 36.075165>,  <42.251328, 31.304138, 35.960884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879147, 30.627668, 36.075165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168068, 30.520010, 35.820343>,  <42.341419, 30.455416, 35.667450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168068, 30.520010, 35.820343>,  <41.879147, 30.627668, 36.075165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168068, 30.520010, 35.820343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037015, -0.934888, 0.353008,
		-0.690584, -0.231399, -0.685236,
		0.722304, -0.269146, -0.637053,
		42.384758, 30.439266, 35.629227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680290, 29.980692, 35.757549>,  <41.879147, 30.627668, 36.075165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680290, 29.980692, 35.757549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075352, 29.987078, 35.695210>,  <42.312389, 29.990910, 35.657806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.075352, 29.987078, 35.695210>,  <41.680290, 29.980692, 35.757549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075352, 29.987078, 35.695210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065554, -0.945631, 0.318566,
		-0.142289, -0.324848, -0.935001,
		0.987652, 0.015965, -0.155848,
		42.371647, 29.991867, 35.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633770, 29.477961, 35.245827>,  <41.680290, 29.980692, 35.757549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633770, 29.477961, 35.245827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997406, 29.557638, 35.392189>,  <42.215588, 29.605444, 35.480007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997406, 29.557638, 35.392189>,  <41.633770, 29.477961, 35.245827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997406, 29.557638, 35.392189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126648, -0.968859, 0.212775,
		0.396892, -0.147090, -0.906003,
		0.909086, 0.199192, 0.365903,
		42.270130, 29.617395, 35.501961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950119, 28.883453, 35.192410>,  <41.633770, 29.477961, 35.245827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950119, 28.883453, 35.192410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220806, 29.069368, 35.420803>,  <42.383221, 29.180918, 35.557838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220806, 29.069368, 35.420803>,  <41.950119, 28.883453, 35.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220806, 29.069368, 35.420803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428486, -0.879299, 0.207926,
		0.598705, 0.103950, -0.794195,
		0.676721, 0.464788, 0.570982,
		42.423820, 29.208805, 35.592098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656685, 28.516569, 35.088268>,  <41.950119, 28.883453, 35.192410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656685, 28.516569, 35.088268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609436, 28.698654, 35.441273>,  <42.581089, 28.807905, 35.653076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.609436, 28.698654, 35.441273>,  <42.656685, 28.516569, 35.088268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609436, 28.698654, 35.441273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281549, -0.836909, 0.469375,
		0.952249, 0.303913, -0.029310,
		-0.118120, 0.455214, 0.882512,
		42.574001, 28.835218, 35.706028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254250, 28.280214, 35.526463>,  <42.656685, 28.516569, 35.088268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254250, 28.280214, 35.526463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991657, 28.440138, 35.782333>,  <42.834103, 28.536093, 35.935856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991657, 28.440138, 35.782333>,  <43.254250, 28.280214, 35.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991657, 28.440138, 35.782333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211282, -0.716596, 0.664717,
		0.724152, 0.571525, 0.385957,
		-0.656478, 0.399811, 0.639678,
		42.794712, 28.560081, 35.974236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497204, 28.520704, 36.308407>,  <43.254250, 28.280214, 35.526463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497204, 28.520704, 36.308407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115131, 28.402452, 36.302296>,  <42.885887, 28.331501, 36.298630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115131, 28.402452, 36.302296>,  <43.497204, 28.520704, 36.308407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115131, 28.402452, 36.302296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202527, -0.690263, 0.694636,
		-0.215904, 0.660408, 0.719199,
		-0.955180, -0.295632, -0.015280,
		42.828579, 28.313763, 36.297710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351280, 28.345274, 37.069118>,  <43.497204, 28.520704, 36.308407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351280, 28.345274, 37.069118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093075, 28.163607, 36.823502>,  <42.938152, 28.054605, 36.676132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093075, 28.163607, 36.823502>,  <43.351280, 28.345274, 37.069118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093075, 28.163607, 36.823502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039915, -0.782821, 0.620966,
		-0.762707, 0.425350, 0.487191,
		-0.645511, -0.454168, -0.614041,
		42.899422, 28.027355, 36.639290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895908, 28.024216, 37.500378>,  <43.351280, 28.345274, 37.069118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895908, 28.024216, 37.500378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848038, 27.841688, 37.147686>,  <42.819317, 27.732172, 36.936069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848038, 27.841688, 37.147686>,  <42.895908, 28.024216, 37.500378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848038, 27.841688, 37.147686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082126, -0.889620, 0.449257,
		-0.989411, -0.018648, 0.143941,
		-0.119675, -0.456321, -0.881731,
		42.812134, 27.704792, 36.883167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331764, 27.609516, 37.554817>,  <42.895908, 28.024216, 37.500378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331764, 27.609516, 37.554817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542931, 27.440027, 37.260399>,  <42.669632, 27.338333, 37.083748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542931, 27.440027, 37.260399>,  <42.331764, 27.609516, 37.554817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542931, 27.440027, 37.260399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062940, -0.883789, 0.463632,
		-0.846960, -0.198433, -0.493237,
		0.527917, -0.423722, -0.736045,
		42.701305, 27.312910, 37.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037388, 26.996500, 37.405304>,  <42.331764, 27.609516, 37.554817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037388, 26.996500, 37.405304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410931, 26.952854, 37.269070>,  <42.635056, 26.926666, 37.187328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410931, 26.952854, 37.269070>,  <42.037388, 26.996500, 37.405304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410931, 26.952854, 37.269070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072524, -0.874756, 0.479106,
		-0.350209, -0.472118, -0.808986,
		0.933860, -0.109116, -0.340587,
		42.691090, 26.920120, 37.166893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069344, 26.371204, 37.100536>,  <42.037388, 26.996500, 37.405304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069344, 26.371204, 37.100536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458569, 26.424063, 37.176105>,  <42.692104, 26.455778, 37.221447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458569, 26.424063, 37.176105>,  <42.069344, 26.371204, 37.100536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458569, 26.424063, 37.176105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056215, -0.930694, 0.361453,
		0.223595, -0.341095, -0.913050,
		0.973060, 0.132146, 0.188924,
		42.750488, 26.463707, 37.232784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254921, 25.860826, 37.597027>,  <42.069344, 26.371204, 37.100536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254921, 25.860826, 37.597027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613197, 26.018860, 37.515392>,  <42.828163, 26.113680, 37.466412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613197, 26.018860, 37.515392>,  <42.254921, 25.860826, 37.597027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613197, 26.018860, 37.515392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444671, -0.799311, 0.404190,
		-0.003440, -0.452780, -0.891616,
		0.895688, 0.395085, -0.204088,
		42.881905, 26.137384, 37.454166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761078, 25.323837, 37.505043>,  <42.254921, 25.860826, 37.597027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761078, 25.323837, 37.505043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958801, 25.647934, 37.631008>,  <43.077435, 25.842392, 37.706585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958801, 25.647934, 37.631008>,  <42.761078, 25.323837, 37.505043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958801, 25.647934, 37.631008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615713, -0.582059, 0.531136,
		0.613646, -0.068649, -0.786591,
		0.494304, 0.810244, 0.314910,
		43.107094, 25.891006, 37.725483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125423, 25.530172, 38.212002>,  <42.761078, 25.323837, 37.505043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125423, 25.530172, 38.212002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424843, 25.450350, 37.959064>,  <43.604492, 25.402456, 37.807304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424843, 25.450350, 37.959064>,  <43.125423, 25.530172, 38.212002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424843, 25.450350, 37.959064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251371, 0.797055, -0.549104,
		0.613589, 0.569983, 0.546470,
		0.748546, -0.199557, -0.632341,
		43.649406, 25.390482, 37.769363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632500, 26.010983, 38.223637>,  <43.125423, 25.530172, 38.212002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632500, 26.010983, 38.223637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589104, 25.852461, 37.858963>,  <43.563065, 25.757349, 37.640160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589104, 25.852461, 37.858963>,  <43.632500, 26.010983, 38.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589104, 25.852461, 37.858963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172753, 0.910663, -0.375299,
		0.978972, 0.116780, -0.167263,
		-0.108493, -0.396302, -0.911687,
		43.556557, 25.733570, 37.585457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087509, 26.332342, 37.705635>,  <43.632500, 26.010983, 38.223637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087509, 26.332342, 37.705635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763699, 26.176027, 37.530388>,  <43.569412, 26.082237, 37.425240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.763699, 26.176027, 37.530388>,  <44.087509, 26.332342, 37.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763699, 26.176027, 37.530388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130063, 0.847103, -0.515267,
		0.572495, -0.360139, -0.736580,
		-0.809526, -0.390789, -0.438122,
		43.520840, 26.058790, 37.398952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952404, 26.873396, 37.247871>,  <44.087509, 26.332342, 37.705635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952404, 26.873396, 37.247871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612782, 26.674898, 37.175377>,  <43.409008, 26.555799, 37.131882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612782, 26.674898, 37.175377>,  <43.952404, 26.873396, 37.247871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612782, 26.674898, 37.175377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269088, 0.701436, -0.659984,
		0.454635, -0.511596, -0.729093,
		-0.849057, -0.496242, -0.181233,
		43.358063, 26.526026, 37.121006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860401, 26.880955, 36.586292>,  <43.952404, 26.873396, 37.247871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860401, 26.880955, 36.586292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490955, 26.870359, 36.739254>,  <43.269287, 26.864002, 36.831032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490955, 26.870359, 36.739254>,  <43.860401, 26.880955, 36.586292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490955, 26.870359, 36.739254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255058, 0.787176, -0.561515,
		-0.286147, -0.616159, -0.733803,
		-0.923615, -0.026486, 0.382405,
		43.213871, 26.862413, 36.853977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355370, 26.822224, 36.049046>,  <43.860401, 26.880955, 36.586292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355370, 26.822224, 36.049046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151215, 26.969999, 36.359665>,  <43.028721, 27.058664, 36.546036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151215, 26.969999, 36.359665>,  <43.355370, 26.822224, 36.049046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151215, 26.969999, 36.359665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325904, 0.752556, -0.572230,
		-0.795797, -0.545136, -0.263691,
		-0.510385, 0.369441, 0.776544,
		42.998100, 27.080832, 36.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675243, 26.992393, 35.827274>,  <43.355370, 26.822224, 36.049046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675243, 26.992393, 35.827274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753296, 27.207533, 36.155334>,  <42.800129, 27.336617, 36.352169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753296, 27.207533, 36.155334>,  <42.675243, 26.992393, 35.827274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753296, 27.207533, 36.155334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158321, 0.842530, -0.514857,
		-0.967914, -0.029382, 0.249556,
		0.195131, 0.537847, 0.820149,
		42.811836, 27.368887, 36.401379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040119, 27.364063, 36.059002>,  <42.675243, 26.992393, 35.827274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040119, 27.364063, 36.059002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349209, 27.582375, 36.188633>,  <42.534660, 27.713362, 36.266411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349209, 27.582375, 36.188633>,  <42.040119, 27.364063, 36.059002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349209, 27.582375, 36.188633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428171, 0.825096, -0.368628,
		-0.468583, 0.146087, 0.871257,
		0.772722, 0.545779, 0.324076,
		42.581024, 27.746109, 36.285854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606613, 27.892675, 36.309917>,  <42.040119, 27.364063, 36.059002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606613, 27.892675, 36.309917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977707, 28.041924, 36.306145>,  <42.200363, 28.131472, 36.303883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977707, 28.041924, 36.306145>,  <41.606613, 27.892675, 36.309917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977707, 28.041924, 36.306145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335263, 0.821969, -0.460398,
		-0.164034, 0.430288, 0.887663,
		0.927735, 0.373121, -0.009429,
		42.256027, 28.153860, 36.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530376, 28.524532, 36.594654>,  <41.606613, 27.892675, 36.309917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530376, 28.524532, 36.594654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871319, 28.546186, 36.386593>,  <42.075886, 28.559179, 36.261757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871319, 28.546186, 36.386593>,  <41.530376, 28.524532, 36.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871319, 28.546186, 36.386593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295551, 0.870419, -0.393726,
		0.431435, 0.489326, 0.757908,
		0.852358, 0.054134, -0.520150,
		42.127026, 28.562426, 36.230549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008896, 29.021795, 37.007111>,  <41.530376, 28.524532, 36.594654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008896, 29.021795, 37.007111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219109, 28.918217, 36.682949>,  <42.345238, 28.856070, 36.488453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219109, 28.918217, 36.682949>,  <42.008896, 29.021795, 37.007111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219109, 28.918217, 36.682949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026233, 0.947171, -0.319655,
		0.850368, 0.189249, 0.490978,
		0.525534, -0.258944, -0.810408,
		42.376770, 28.840534, 36.439827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313988, 29.589573, 36.823986>,  <42.008896, 29.021795, 37.007111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313988, 29.589573, 36.823986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393330, 29.363558, 36.503639>,  <42.440933, 29.227949, 36.311432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393330, 29.363558, 36.503639>,  <42.313988, 29.589573, 36.823986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393330, 29.363558, 36.503639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043562, 0.821378, -0.568718,
		0.979162, 0.077921, 0.187538,
		0.198355, -0.565036, -0.800868,
		42.452835, 29.194046, 36.263378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757519, 30.006456, 36.494587>,  <42.313988, 29.589573, 36.823986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757519, 30.006456, 36.494587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731995, 29.710588, 36.226612>,  <42.716679, 29.533068, 36.065826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731995, 29.710588, 36.226612>,  <42.757519, 30.006456, 36.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731995, 29.710588, 36.226612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146265, 0.657126, -0.739453,
		0.987185, -0.145173, 0.066257,
		-0.063810, -0.739669, -0.669939,
		42.712852, 29.488688, 36.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390633, 29.878637, 36.129723>,  <42.757519, 30.006456, 36.494587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390633, 29.878637, 36.129723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057587, 29.800282, 35.922501>,  <42.857761, 29.753267, 35.798164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057587, 29.800282, 35.922501>,  <43.390633, 29.878637, 36.129723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057587, 29.800282, 35.922501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269794, 0.673444, -0.688248,
		0.483705, -0.712812, -0.507867,
		-0.832611, -0.195889, -0.518060,
		42.807804, 29.741514, 35.767082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628677, 29.983644, 35.525852>,  <43.390633, 29.878637, 36.129723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628677, 29.983644, 35.525852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230301, 29.996628, 35.492279>,  <42.991276, 30.004417, 35.472134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230301, 29.996628, 35.492279>,  <43.628677, 29.983644, 35.525852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230301, 29.996628, 35.492279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077716, 0.780472, -0.620342,
		0.045371, -0.624348, -0.779828,
		-0.995943, 0.032459, -0.083933,
		42.931519, 30.006365, 35.467098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495556, 30.310495, 34.809509>,  <43.628677, 29.983644, 35.525852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495556, 30.310495, 34.809509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149029, 30.326553, 35.008659>,  <42.941113, 30.336187, 35.128151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149029, 30.326553, 35.008659>,  <43.495556, 30.310495, 34.809509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149029, 30.326553, 35.008659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226361, 0.856984, -0.462968,
		-0.445260, -0.513778, -0.733332,
		-0.866317, 0.040144, 0.497880,
		42.889133, 30.338596, 35.158024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984222, 30.333351, 34.339867>,  <43.495556, 30.310495, 34.809509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984222, 30.333351, 34.339867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820473, 30.489285, 34.669823>,  <42.722225, 30.582846, 34.867798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820473, 30.489285, 34.669823>,  <42.984222, 30.333351, 34.339867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820473, 30.489285, 34.669823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294210, 0.799418, -0.523805,
		-0.863630, -0.457121, -0.212564,
		-0.409370, 0.389835, 0.824891,
		42.697662, 30.606236, 34.917290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305832, 30.620657, 34.158009>,  <42.984222, 30.333351, 34.339867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305832, 30.620657, 34.158009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425858, 30.816401, 34.485542>,  <42.497875, 30.933846, 34.682064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425858, 30.816401, 34.485542>,  <42.305832, 30.620657, 34.158009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425858, 30.816401, 34.485542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275362, 0.866284, -0.416807,
		-0.913310, -0.100407, 0.394693,
		0.300066, 0.489357, 0.818834,
		42.515877, 30.963207, 34.731194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740810, 30.903645, 34.389175>,  <42.305832, 30.620657, 34.158009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740810, 30.903645, 34.389175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042732, 31.113514, 34.546650>,  <42.223885, 31.239435, 34.641136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042732, 31.113514, 34.546650>,  <41.740810, 30.903645, 34.389175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042732, 31.113514, 34.546650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465092, 0.851303, -0.242844,
		-0.462563, 0.000197, 0.886587,
		0.754802, 0.524674, 0.393689,
		42.269173, 31.270916, 34.664757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502007, 31.554447, 34.542175>,  <41.740810, 30.903645, 34.389175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502007, 31.554447, 34.542175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896999, 31.614918, 34.560154>,  <42.133995, 31.651199, 34.570942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896999, 31.614918, 34.560154>,  <41.502007, 31.554447, 34.542175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896999, 31.614918, 34.560154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132538, 0.949899, -0.283062,
		-0.085486, 0.273563, 0.958048,
		0.987485, 0.151176, 0.044946,
		42.193245, 31.660271, 34.573639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544487, 32.180939, 34.908913>,  <41.502007, 31.554447, 34.542175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544487, 32.180939, 34.908913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903091, 32.186470, 34.731789>,  <42.118252, 32.189789, 34.625515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903091, 32.186470, 34.731789>,  <41.544487, 32.180939, 34.908913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903091, 32.186470, 34.731789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050870, 0.996115, -0.071885,
		0.440098, 0.086971, 0.893728,
		0.896508, 0.013827, -0.442813,
		42.172043, 32.190617, 34.598946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989532, 32.731335, 35.216530>,  <41.544487, 32.180939, 34.908913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989532, 32.731335, 35.216530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093662, 32.649014, 34.839195>,  <42.156139, 32.599621, 34.612797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093662, 32.649014, 34.839195>,  <41.989532, 32.731335, 35.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093662, 32.649014, 34.839195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084499, 0.968414, -0.234594,
		0.961816, 0.140781, 0.234713,
		0.260325, -0.205803, -0.943332,
		42.171761, 32.587273, 34.556194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260422, 33.368061, 34.952122>,  <41.989532, 32.731335, 35.216530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260422, 33.368061, 34.952122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188362, 33.170132, 34.612076>,  <42.145126, 33.051373, 34.408047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188362, 33.170132, 34.612076>,  <42.260422, 33.368061, 34.952122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188362, 33.170132, 34.612076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394948, 0.827917, -0.398208,
		0.900869, 0.264017, -0.344573,
		-0.180144, -0.494822, -0.850117,
		42.134319, 33.021687, 34.357040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557201, 33.823753, 34.314125>,  <42.260422, 33.368061, 34.952122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557201, 33.823753, 34.314125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266605, 33.578278, 34.190456>,  <42.092247, 33.430992, 34.116257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266605, 33.578278, 34.190456>,  <42.557201, 33.823753, 34.314125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266605, 33.578278, 34.190456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440253, 0.761129, -0.476298,
		0.527620, -0.209914, -0.823136,
		-0.726495, -0.613693, -0.309171,
		42.048656, 33.394169, 34.097706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736332, 34.516266, 34.621990>,  <42.557201, 33.823753, 34.314125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736332, 34.516266, 34.621990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373402, 34.348228, 34.628704>,  <42.155643, 34.247406, 34.632732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373402, 34.348228, 34.628704>,  <42.736332, 34.516266, 34.621990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373402, 34.348228, 34.628704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060843, -0.170704, -0.983442,
		0.416004, -0.891280, 0.180444,
		-0.907325, -0.420095, 0.016785,
		42.101204, 34.222198, 34.633739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044563, 34.782646, 34.587597>,  <42.736332, 34.516266, 34.621990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044563, 34.782646, 34.587597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011398, 34.905903, 34.208508>,  <41.991501, 34.979855, 33.981052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011398, 34.905903, 34.208508>,  <42.044563, 34.782646, 34.587597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011398, 34.905903, 34.208508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208631, 0.935289, 0.285844,
		0.974474, -0.174025, -0.141831,
		-0.082909, 0.308138, -0.947722,
		41.986526, 34.998344, 33.924191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527103, 35.322235, 34.554489>,  <42.044563, 34.782646, 34.587597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527103, 35.322235, 34.554489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684605, 35.649158, 34.386223>,  <42.779106, 35.845314, 34.285263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684605, 35.649158, 34.386223>,  <42.527103, 35.322235, 34.554489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684605, 35.649158, 34.386223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014456, -0.463083, -0.886197,
		-0.919101, 0.342866, -0.194157,
		0.393757, 0.817311, -0.420664,
		42.802731, 35.894352, 34.260025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212112, 35.219322, 34.713661>,  <42.527103, 35.322235, 34.554489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212112, 35.219322, 34.713661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507088, 34.998867, 34.869831>,  <43.684074, 34.866592, 34.963531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507088, 34.998867, 34.869831>,  <43.212112, 35.219322, 34.713661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507088, 34.998867, 34.869831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081919, 0.500802, 0.861677,
		-0.670429, -0.667416, 0.324161,
		0.737437, -0.551139, 0.390426,
		43.728317, 34.833527, 34.986958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010902, 34.761311, 35.331367>,  <43.212112, 35.219322, 34.713661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010902, 34.761311, 35.331367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396770, 34.866665, 35.333988>,  <43.628292, 34.929878, 35.335560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396770, 34.866665, 35.333988>,  <43.010902, 34.761311, 35.331367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396770, 34.866665, 35.333988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092159, 0.314026, 0.944931,
		0.246815, -0.912151, 0.327204,
		0.964671, 0.263378, 0.006557,
		43.686172, 34.945679, 35.335957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311829, 34.399834, 35.938454>,  <43.010902, 34.761311, 35.331367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311829, 34.399834, 35.938454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450672, 34.760441, 35.835083>,  <43.533978, 34.976803, 35.773060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450672, 34.760441, 35.835083>,  <43.311829, 34.399834, 35.938454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450672, 34.760441, 35.835083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041590, 0.260493, 0.964580,
		0.936903, -0.345561, 0.052925,
		0.347108, 0.901516, -0.258428,
		43.554806, 35.030895, 35.757553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564869, 34.238861, 36.661106>,  <43.311829, 34.399834, 35.938454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564869, 34.238861, 36.661106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774971, 34.477810, 36.903515>,  <43.901031, 34.621178, 37.048958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774971, 34.477810, 36.903515>,  <43.564869, 34.238861, 36.661106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774971, 34.477810, 36.903515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708115, 0.088098, -0.700580,
		-0.471894, 0.797113, -0.376732,
		0.525252, 0.597369, 0.606020,
		43.932549, 34.657021, 37.085320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788998, 34.793255, 36.316898>,  <43.564869, 34.238861, 36.661106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788998, 34.793255, 36.316898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063141, 34.756001, 36.605789>,  <44.227627, 34.733646, 36.779125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063141, 34.756001, 36.605789>,  <43.788998, 34.793255, 36.316898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063141, 34.756001, 36.605789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724404, -0.014078, -0.689232,
		0.074361, 0.995554, 0.057820,
		0.685354, -0.093137, 0.722230,
		44.268745, 34.728058, 36.822456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164433, 35.348122, 36.283848>,  <43.788998, 34.793255, 36.316898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164433, 35.348122, 36.283848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400578, 35.060226, 36.429970>,  <44.542263, 34.887489, 36.517643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400578, 35.060226, 36.429970>,  <44.164433, 35.348122, 36.283848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400578, 35.060226, 36.429970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436677, -0.095817, -0.894501,
		0.678812, 0.687598, 0.257728,
		0.590362, -0.719742, 0.365300,
		44.577686, 34.844303, 36.539558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938232, 35.568356, 36.324501>,  <44.164433, 35.348122, 36.283848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938232, 35.568356, 36.324501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891804, 35.192036, 36.197113>,  <44.863945, 34.966244, 36.120682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891804, 35.192036, 36.197113>,  <44.938232, 35.568356, 36.324501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891804, 35.192036, 36.197113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579457, 0.196274, -0.791016,
		0.806695, -0.276353, 0.522372,
		-0.116072, -0.940801, -0.318468,
		44.856983, 34.909794, 36.101574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595394, 35.263073, 36.092037>,  <44.938232, 35.568356, 36.324501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595394, 35.263073, 36.092037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305912, 35.077850, 35.887360>,  <45.132221, 34.966717, 35.764553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305912, 35.077850, 35.887360>,  <45.595394, 35.263073, 36.092037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305912, 35.077850, 35.887360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457603, 0.233021, -0.858079,
		0.516576, -0.855148, 0.043259,
		-0.723705, -0.463058, -0.511692,
		45.088802, 34.938934, 35.733852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840649, 34.920902, 35.519741>,  <45.595394, 35.263073, 36.092037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840649, 34.920902, 35.519741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463562, 35.011299, 35.421593>,  <45.237309, 35.065536, 35.362701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463562, 35.011299, 35.421593>,  <45.840649, 34.920902, 35.519741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463562, 35.011299, 35.421593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273170, 0.100810, -0.956669,
		-0.191466, -0.968898, -0.156771,
		-0.942719, 0.225995, -0.245373,
		45.180748, 35.079098, 35.347980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774853, 34.518913, 34.904182>,  <45.840649, 34.920902, 35.519741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774853, 34.518913, 34.904182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551685, 34.847702, 34.949936>,  <45.417786, 35.044975, 34.977390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551685, 34.847702, 34.949936>,  <45.774853, 34.518913, 34.904182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551685, 34.847702, 34.949936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253913, 0.300293, -0.919430,
		-0.790098, -0.483923, -0.376249,
		-0.557919, 0.821975, 0.114386,
		45.384308, 35.094296, 34.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153214, 34.603241, 34.504608>,  <45.774853, 34.518913, 34.904182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153214, 34.603241, 34.504608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399639, 34.906204, 34.591129>,  <45.547497, 35.087982, 34.643044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399639, 34.906204, 34.591129>,  <45.153214, 34.603241, 34.504608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399639, 34.906204, 34.591129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274488, 0.050964, -0.960239,
		-0.738320, 0.650945, -0.176503,
		0.616068, 0.757412, 0.216305,
		45.584461, 35.133427, 34.656021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078575, 35.214863, 33.993778>,  <45.153214, 34.603241, 34.504608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078575, 35.214863, 33.993778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445202, 35.219036, 34.153671>,  <45.665180, 35.221539, 34.249607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.445202, 35.219036, 34.153671>,  <45.078575, 35.214863, 33.993778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445202, 35.219036, 34.153671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398135, 0.069306, -0.914705,
		-0.037245, 0.997541, 0.059371,
		0.916571, 0.010430, 0.399737,
		45.720173, 35.222164, 34.273594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481255, 35.875076, 33.774612>,  <45.078575, 35.214863, 33.993778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481255, 35.875076, 33.774612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634315, 35.507755, 33.815205>,  <45.726151, 35.287361, 33.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634315, 35.507755, 33.815205>,  <45.481255, 35.875076, 33.774612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634315, 35.507755, 33.815205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440108, 0.084602, -0.893950,
		0.812332, 0.386731, 0.436526,
		0.382650, -0.918303, 0.101479,
		45.749111, 35.232265, 33.845650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267815, 35.816101, 33.864609>,  <45.481255, 35.875076, 33.774612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267815, 35.816101, 33.864609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077835, 35.523724, 33.668594>,  <45.963848, 35.348297, 33.550987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.077835, 35.523724, 33.668594>,  <46.267815, 35.816101, 33.864609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077835, 35.523724, 33.668594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573044, 0.165718, -0.802595,
		0.667863, -0.662007, 0.340157,
		-0.474953, -0.730948, -0.490035,
		45.935349, 35.304440, 33.521584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016331, 36.041683, 34.261654>,  <46.267815, 35.816101, 33.864609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016331, 36.041683, 34.261654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285133, 35.831760, 34.052662>,  <47.446415, 35.705807, 33.927269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285133, 35.831760, 34.052662>,  <47.016331, 36.041683, 34.261654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285133, 35.831760, 34.052662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253052, -0.500328, 0.828032,
		-0.695964, -0.688660, -0.203423,
		0.672011, -0.524803, -0.522477,
		47.486736, 35.674320, 33.895920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805046, 35.282269, 34.355667>,  <47.016331, 36.041683, 34.261654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805046, 35.282269, 34.355667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177216, 35.424000, 34.318233>,  <47.400517, 35.509041, 34.295773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177216, 35.424000, 34.318233>,  <46.805046, 35.282269, 34.355667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177216, 35.424000, 34.318233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166543, -0.181329, 0.969218,
		0.326455, -0.917371, -0.227724,
		0.930425, 0.354332, -0.093586,
		47.456345, 35.530300, 34.290157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406132, 34.755283, 34.458668>,  <46.805046, 35.282269, 34.355667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406132, 34.755283, 34.458668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493828, 35.132534, 34.558617>,  <47.546448, 35.358887, 34.618587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493828, 35.132534, 34.558617>,  <47.406132, 34.755283, 34.458668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.493828, 35.132534, 34.558617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018161, -0.260008, 0.965436,
		0.975501, -0.207126, -0.074132,
		0.219242, 0.943130, 0.249876,
		47.559601, 35.415474, 34.633579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.007397, 34.791824, 34.784729>,  <47.406132, 34.755283, 34.458668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.007397, 34.791824, 34.784729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783695, 35.101471, 34.903378>,  <47.649475, 35.287258, 34.974567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783695, 35.101471, 34.903378>,  <48.007397, 34.791824, 34.784729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.783695, 35.101471, 34.903378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212470, -0.212011, 0.953891,
		0.801308, 0.596488, -0.045908,
		-0.559252, 0.774114, 0.296622,
		47.615921, 35.333706, 34.992363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.676212, 38.192329, 25.502920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.824337, 37.925247, 25.244608>,  <42.913212, 37.764996, 25.089621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.824337, 37.925247, 25.244608>,  <42.676212, 38.192329, 25.502920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824337, 37.925247, 25.244608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291733, -0.576433, 0.763293,
		-0.881907, -0.471053, -0.018668,
		0.370313, -0.667708, -0.645782,
		42.935432, 37.724934, 25.050873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321640, 37.528706, 25.635706>,  <42.676212, 38.192329, 25.502920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321640, 37.528706, 25.635706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.670742, 37.445152, 25.459223>,  <42.880203, 37.395020, 25.353333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.670742, 37.445152, 25.459223>,  <42.321640, 37.528706, 25.635706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670742, 37.445152, 25.459223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159827, -0.731732, 0.662588,
		-0.461250, -0.648795, -0.605238,
		0.872757, -0.208885, -0.441206,
		42.932568, 37.382488, 25.326860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354027, 36.847477, 25.645172>,  <42.321640, 37.528706, 25.635706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354027, 36.847477, 25.645172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.725975, 36.942486, 25.532803>,  <42.949146, 36.999493, 25.465380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.725975, 36.942486, 25.532803>,  <42.354027, 36.847477, 25.645172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725975, 36.942486, 25.532803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353990, -0.785568, 0.507517,
		-0.100139, -0.571371, -0.814559,
		0.929873, 0.237523, -0.280925,
		43.004936, 37.013744, 25.448524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664043, 36.208992, 25.447569>,  <42.354027, 36.847477, 25.645172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664043, 36.208992, 25.447569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.949188, 36.462032, 25.568661>,  <43.120274, 36.613857, 25.641315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.949188, 36.462032, 25.568661>,  <42.664043, 36.208992, 25.447569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949188, 36.462032, 25.568661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359574, -0.700302, 0.616672,
		0.602108, -0.330749, -0.726685,
		0.712862, 0.632600, 0.302729,
		43.163048, 36.651814, 25.659479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286510, 35.744324, 25.422976>,  <42.664043, 36.208992, 25.447569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286510, 35.744324, 25.422976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.380413, 36.061535, 25.647831>,  <43.436756, 36.251862, 25.782743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.380413, 36.061535, 25.647831>,  <43.286510, 35.744324, 25.422976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380413, 36.061535, 25.647831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393715, -0.606315, 0.690920,
		0.888749, 0.059121, -0.454564,
		0.234761, 0.793024, 0.562139,
		43.450840, 36.299442, 25.816473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959152, 35.588028, 25.633060>,  <43.286510, 35.744324, 25.422976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959152, 35.588028, 25.633060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.880211, 35.860600, 25.914970>,  <43.832848, 36.024143, 26.084116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.880211, 35.860600, 25.914970>,  <43.959152, 35.588028, 25.633060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880211, 35.860600, 25.914970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285144, -0.647931, 0.706313,
		0.937948, 0.340352, -0.066437,
		-0.197349, 0.681429, 0.704775,
		43.821007, 36.065029, 26.126404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522549, 35.610073, 26.092888>,  <43.959152, 35.588028, 25.633060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522549, 35.610073, 26.092888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.188881, 35.734314, 26.275181>,  <43.988682, 35.808861, 26.384556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.188881, 35.734314, 26.275181>,  <44.522549, 35.610073, 26.092888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188881, 35.734314, 26.275181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208113, -0.587964, 0.781657,
		0.510742, 0.746875, 0.425817,
		-0.834165, 0.310607, 0.455732,
		43.938633, 35.827496, 26.411900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722305, 35.643761, 26.741564>,  <44.522549, 35.610073, 26.092888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722305, 35.643761, 26.741564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.325420, 35.664597, 26.786812>,  <44.087288, 35.677097, 26.813961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.325420, 35.664597, 26.786812>,  <44.722305, 35.643761, 26.741564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325420, 35.664597, 26.786812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064933, -0.558721, 0.826810,
		0.106271, 0.827719, 0.550988,
		-0.992215, 0.052089, 0.113122,
		44.027756, 35.680222, 26.820749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604759, 35.832458, 27.429638>,  <44.722305, 35.643761, 26.741564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604759, 35.832458, 27.429638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.259266, 35.664276, 27.318516>,  <44.051968, 35.563366, 27.251842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.259266, 35.664276, 27.318516>,  <44.604759, 35.832458, 27.429638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259266, 35.664276, 27.318516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041558, -0.489960, 0.870754,
		-0.502228, 0.763646, 0.405723,
		-0.863736, -0.420456, -0.277807,
		44.000145, 35.538139, 27.235174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347088, 35.886097, 28.063765>,  <44.604759, 35.832458, 27.429638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347088, 35.886097, 28.063765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.130207, 35.631317, 27.844563>,  <44.000080, 35.478447, 27.713041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.130207, 35.631317, 27.844563>,  <44.347088, 35.886097, 28.063765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130207, 35.631317, 27.844563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153138, -0.566362, 0.809804,
		-0.826176, 0.522997, 0.209540,
		-0.542201, -0.636952, -0.548006,
		43.967548, 35.440231, 27.680161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740761, 35.800758, 28.401718>,  <44.347088, 35.886097, 28.063765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740761, 35.800758, 28.401718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.731247, 35.461803, 28.189543>,  <43.725540, 35.258430, 28.062239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.731247, 35.461803, 28.189543>,  <43.740761, 35.800758, 28.401718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731247, 35.461803, 28.189543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039300, -0.530969, 0.846479,
		-0.998944, -0.000716, 0.045929,
		-0.023781, -0.847391, -0.530437,
		43.724113, 35.207584, 28.030411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192661, 35.399109, 28.662460>,  <43.740761, 35.800758, 28.401718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192661, 35.399109, 28.662460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.449638, 35.148140, 28.486456>,  <43.603825, 34.997559, 28.380854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.449638, 35.148140, 28.486456>,  <43.192661, 35.399109, 28.662460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449638, 35.148140, 28.486456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018529, -0.586725, 0.809574,
		-0.766111, -0.511950, -0.388561,
		0.642441, -0.627424, -0.440010,
		43.642372, 34.959911, 28.354452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980793, 34.798748, 28.926382>,  <43.192661, 35.399109, 28.662460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980793, 34.798748, 28.926382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.325268, 34.684895, 28.757933>,  <43.531952, 34.616581, 28.656864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.325268, 34.684895, 28.757933>,  <42.980793, 34.798748, 28.926382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325268, 34.684895, 28.757933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040885, -0.787031, 0.615557,
		-0.506643, -0.547326, -0.666143,
		0.861186, -0.284633, -0.421121,
		43.583622, 34.599506, 28.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973747, 34.104420, 28.562323>,  <42.980793, 34.798748, 28.926382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973747, 34.104420, 28.562323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.355247, 34.153545, 28.672073>,  <43.584148, 34.183022, 28.737923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.355247, 34.153545, 28.672073>,  <42.973747, 34.104420, 28.562323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355247, 34.153545, 28.672073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083622, -0.768311, 0.634591,
		0.288746, -0.628183, -0.722504,
		0.953747, 0.122818, 0.274376,
		43.641373, 34.190392, 28.754387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286137, 33.439285, 28.685123>,  <42.973747, 34.104420, 28.562323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286137, 33.439285, 28.685123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.524670, 33.693893, 28.880770>,  <43.667789, 33.846657, 28.998158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.524670, 33.693893, 28.880770>,  <43.286137, 33.439285, 28.685123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524670, 33.693893, 28.880770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056390, -0.641022, 0.765448,
		0.800756, -0.428879, -0.418155,
		0.596331, 0.636517, 0.489117,
		43.703568, 33.884850, 29.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750607, 33.038830, 29.068171>,  <43.286137, 33.439285, 28.685123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750607, 33.038830, 29.068171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.792892, 33.390076, 29.254820>,  <43.818264, 33.600822, 29.366810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.792892, 33.390076, 29.254820>,  <43.750607, 33.038830, 29.068171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792892, 33.390076, 29.254820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239119, -0.477934, 0.845223,
		0.965218, 0.022226, -0.260500,
		0.105716, 0.878115, 0.466625,
		43.824608, 33.653511, 29.394808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448166, 33.013550, 29.338596>,  <43.750607, 33.038830, 29.068171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448166, 33.013550, 29.338596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.237804, 33.280991, 29.548889>,  <44.111588, 33.441456, 29.675064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.237804, 33.280991, 29.548889>,  <44.448166, 33.013550, 29.338596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237804, 33.280991, 29.548889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334605, -0.405636, 0.850587,
		0.781963, 0.623239, -0.010394,
		-0.525903, 0.668605, 0.525731,
		44.080032, 33.481571, 29.706608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833984, 33.106373, 29.957155>,  <44.448166, 33.013550, 29.338596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833984, 33.106373, 29.957155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.466736, 33.243172, 30.037247>,  <44.246387, 33.325249, 30.085302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.466736, 33.243172, 30.037247>,  <44.833984, 33.106373, 29.957155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466736, 33.243172, 30.037247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005553, -0.516304, 0.856387,
		0.396260, 0.785156, 0.475929,
		-0.918121, 0.341995, 0.200231,
		44.191299, 33.345772, 30.097317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839722, 33.479153, 30.637325>,  <44.833984, 33.106373, 29.957155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839722, 33.479153, 30.637325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.458733, 33.371853, 30.579588>,  <44.230137, 33.307472, 30.544947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.458733, 33.371853, 30.579588>,  <44.839722, 33.479153, 30.637325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458733, 33.371853, 30.579588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069126, -0.271149, 0.960052,
		-0.296668, 0.924404, 0.239720,
		-0.952475, -0.268246, -0.144342,
		44.172989, 33.291378, 30.536285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561398, 33.655285, 31.229816>,  <44.839722, 33.479153, 30.637325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561398, 33.655285, 31.229816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.304806, 33.393578, 31.069599>,  <44.150852, 33.236553, 30.973469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.304806, 33.393578, 31.069599>,  <44.561398, 33.655285, 31.229816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304806, 33.393578, 31.069599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218414, -0.344750, 0.912931,
		-0.735390, 0.673111, 0.078248,
		-0.641480, -0.654270, -0.400542,
		44.112362, 33.197296, 30.949436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964706, 33.679497, 31.674774>,  <44.561398, 33.655285, 31.229816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964706, 33.679497, 31.674774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.946636, 33.333397, 31.475052>,  <43.935795, 33.125736, 31.355219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.946636, 33.333397, 31.475052>,  <43.964706, 33.679497, 31.674774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946636, 33.333397, 31.475052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003513, -0.499673, 0.866207,
		-0.998973, 0.040886, 0.019534,
		-0.045176, -0.865248, -0.499303,
		43.933083, 33.073822, 31.325260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522797, 33.289642, 32.105934>,  <43.964706, 33.679497, 31.674774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522797, 33.289642, 32.105934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.439018, 33.606564, 32.335155>,  <43.388752, 33.796715, 32.472687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.439018, 33.606564, 32.335155>,  <43.522797, 33.289642, 32.105934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439018, 33.606564, 32.335155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265529, 0.610112, -0.746497,
		-0.941078, -0.004187, -0.338164,
		-0.209444, 0.792304, 0.573051,
		43.376186, 33.844254, 32.507072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129524, 33.726048, 31.723598>,  <43.522797, 33.289642, 32.105934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129524, 33.726048, 31.723598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.270958, 33.969448, 32.007771>,  <43.355816, 34.115486, 32.178272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.270958, 33.969448, 32.007771>,  <43.129524, 33.726048, 31.723598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270958, 33.969448, 32.007771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108770, 0.727591, -0.677334,
		-0.929059, 0.316765, 0.191075,
		0.353580, 0.608499, 0.710429,
		43.377033, 34.151997, 32.220898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802715, 34.366852, 31.509617>,  <43.129524, 33.726048, 31.723598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802715, 34.366852, 31.509617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.087509, 34.482967, 31.765371>,  <43.258385, 34.552635, 31.918823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.087509, 34.482967, 31.765371>,  <42.802715, 34.366852, 31.509617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087509, 34.482967, 31.765371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147447, 0.828444, -0.540314,
		-0.686542, 0.478970, 0.547036,
		0.711983, 0.290290, 0.639384,
		43.301105, 34.570053, 31.957186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620914, 34.923923, 31.816612>,  <42.802715, 34.366852, 31.509617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620914, 34.923923, 31.816612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.018135, 34.964378, 31.840670>,  <43.256466, 34.988651, 31.855104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.018135, 34.964378, 31.840670>,  <42.620914, 34.923923, 31.816612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018135, 34.964378, 31.840670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059187, 0.871068, -0.487583,
		-0.101705, 0.480636, 0.871002,
		0.993052, 0.101141, 0.060145,
		43.316051, 34.994720, 31.858713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796642, 35.680336, 31.961779>,  <42.620914, 34.923923, 31.816612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796642, 35.680336, 31.961779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.139095, 35.540047, 31.809975>,  <43.344566, 35.455872, 31.718893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.139095, 35.540047, 31.809975>,  <42.796642, 35.680336, 31.961779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139095, 35.540047, 31.809975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173513, 0.886877, -0.428185,
		0.486753, 0.300733, 0.820141,
		0.856133, -0.350726, -0.379509,
		43.395935, 35.434830, 31.696121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251984, 36.279301, 31.970425>,  <42.796642, 35.680336, 31.961779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251984, 36.279301, 31.970425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.430641, 36.003044, 31.742908>,  <43.537834, 35.837292, 31.606400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.430641, 36.003044, 31.742908>,  <43.251984, 36.279301, 31.970425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430641, 36.003044, 31.742908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456736, 0.722652, -0.518812,
		0.769351, -0.028062, 0.638210,
		0.446645, -0.690642, -0.568790,
		43.564636, 35.795853, 31.572271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980740, 36.378887, 32.015602>,  <43.251984, 36.279301, 31.970425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980740, 36.378887, 32.015602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.877174, 36.193829, 31.676447>,  <43.815033, 36.082794, 31.472954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.877174, 36.193829, 31.676447>,  <43.980740, 36.378887, 32.015602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877174, 36.193829, 31.676447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346518, 0.774900, -0.528635,
		0.901603, -0.430681, -0.040318,
		-0.258915, -0.462649, -0.847891,
		43.799500, 36.055035, 31.422079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450378, 36.617779, 31.583496>,  <43.980740, 36.378887, 32.015602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450378, 36.617779, 31.583496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.175034, 36.473923, 31.331522>,  <44.009827, 36.387608, 31.180338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.175034, 36.473923, 31.331522>,  <44.450378, 36.617779, 31.583496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175034, 36.473923, 31.331522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331750, 0.616191, -0.714318,
		0.645061, -0.700689, -0.304849,
		-0.688360, -0.359645, -0.629934,
		43.968525, 36.366028, 31.142542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706207, 36.739990, 30.966360>,  <44.450378, 36.617779, 31.583496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706207, 36.739990, 30.966360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.323051, 36.669979, 30.875309>,  <44.093159, 36.627972, 30.820679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.323051, 36.669979, 30.875309>,  <44.706207, 36.739990, 30.966360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323051, 36.669979, 30.875309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089824, 0.570290, -0.816518,
		0.272729, -0.802579, -0.530552,
		-0.957889, -0.175032, -0.227626,
		44.035686, 36.617470, 30.807022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589172, 36.577751, 30.146786>,  <44.706207, 36.739990, 30.966360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589172, 36.577751, 30.146786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.241623, 36.704361, 30.299038>,  <44.033092, 36.780327, 30.390388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.241623, 36.704361, 30.299038>,  <44.589172, 36.577751, 30.146786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241623, 36.704361, 30.299038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155887, 0.554827, -0.817231,
		-0.469856, -0.769402, -0.432730,
		-0.868870, 0.316524, 0.380628,
		43.980961, 36.799316, 30.413227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113148, 36.466366, 29.598806>,  <44.589172, 36.577751, 30.146786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113148, 36.466366, 29.598806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.970634, 36.758686, 29.831697>,  <43.885128, 36.934078, 29.971432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.970634, 36.758686, 29.831697>,  <44.113148, 36.466366, 29.598806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970634, 36.758686, 29.831697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358958, 0.468250, -0.807398,
		-0.862678, -0.496655, 0.095500,
		-0.356280, 0.730805, 0.582227,
		43.863750, 36.977928, 30.006365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455711, 36.578007, 29.328180>,  <44.113148, 36.466366, 29.598806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455711, 36.578007, 29.328180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.503044, 36.904781, 29.553963>,  <43.531445, 37.100845, 29.689432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.503044, 36.904781, 29.553963>,  <43.455711, 36.578007, 29.328180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503044, 36.904781, 29.553963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590452, 0.514923, -0.621466,
		-0.798350, -0.259742, 0.543297,
		0.118334, 0.816938, 0.564454,
		43.538544, 37.149864, 29.723299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805050, 36.839848, 29.482512>,  <43.455711, 36.578007, 29.328180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805050, 36.839848, 29.482512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.022324, 37.167282, 29.557194>,  <43.152687, 37.363743, 29.602003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.022324, 37.167282, 29.557194>,  <42.805050, 36.839848, 29.482512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022324, 37.167282, 29.557194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465321, 0.478600, -0.744593,
		-0.698873, 0.317576, 0.640877,
		0.543188, 0.818589, 0.186705,
		43.185280, 37.412857, 29.613205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385784, 37.310505, 29.664814>,  <42.805050, 36.839848, 29.482512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385784, 37.310505, 29.664814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.715279, 37.493977, 29.531506>,  <42.912975, 37.604061, 29.451521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.715279, 37.493977, 29.531506>,  <42.385784, 37.310505, 29.664814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715279, 37.493977, 29.531506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550699, 0.507468, -0.662727,
		-0.134856, 0.729445, 0.670615,
		0.823738, 0.458680, -0.333270,
		42.962399, 37.631580, 29.431524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093159, 37.988483, 29.523092>,  <42.385784, 37.310505, 29.664814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093159, 37.988483, 29.523092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452438, 37.967911, 29.348465>,  <42.668007, 37.955566, 29.243689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452438, 37.967911, 29.348465>,  <42.093159, 37.988483, 29.523092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452438, 37.967911, 29.348465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395979, 0.336592, -0.854346,
		0.190885, 0.940245, 0.281961,
		0.898200, -0.051431, -0.436568,
		42.721897, 37.952480, 29.217495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044670, 38.517296, 29.142132>,  <42.093159, 37.988483, 29.523092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044670, 38.517296, 29.142132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336182, 38.306633, 28.967085>,  <42.511089, 38.180237, 28.862057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336182, 38.306633, 28.967085>,  <42.044670, 38.517296, 29.142132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336182, 38.306633, 28.967085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231294, 0.412195, -0.881248,
		0.644500, 0.743456, 0.178587,
		0.728782, -0.526658, -0.437616,
		42.554817, 38.148636, 28.835800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577518, 38.989964, 28.810368>,  <42.044670, 38.517296, 29.142132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577518, 38.989964, 28.810368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.593689, 38.635555, 28.625618>,  <42.603390, 38.422909, 28.514769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.593689, 38.635555, 28.625618>,  <42.577518, 38.989964, 28.810368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593689, 38.635555, 28.625618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019391, 0.461470, -0.886944,
		0.998994, 0.044813, 0.001476,
		0.040428, -0.886023, -0.461874,
		42.605816, 38.369747, 28.487055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075806, 39.114185, 28.396639>,  <42.577518, 38.989964, 28.810368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075806, 39.114185, 28.396639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.854980, 38.811058, 28.257534>,  <42.722485, 38.629181, 28.174072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.854980, 38.811058, 28.257534>,  <43.075806, 39.114185, 28.396639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854980, 38.811058, 28.257534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032219, 0.397378, -0.917089,
		0.833180, -0.517495, -0.194961,
		-0.552063, -0.757819, -0.347760,
		42.689362, 38.583714, 28.153206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429562, 38.903790, 27.817434>,  <43.075806, 39.114185, 28.396639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429562, 38.903790, 27.817434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.043530, 38.800735, 27.798513>,  <42.811909, 38.738903, 27.787161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.043530, 38.800735, 27.798513>,  <43.429562, 38.903790, 27.817434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043530, 38.800735, 27.798513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038532, 0.318246, -0.947225,
		0.259090, -0.912329, -0.317061,
		-0.965085, -0.257633, -0.047301,
		42.754005, 38.723446, 27.784323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.291451, 38.905880, 27.121895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.908478, 38.859978, 27.227837>,  <42.678692, 38.832436, 27.291401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.908478, 38.859978, 27.227837>,  <43.291451, 38.905880, 27.121895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908478, 38.859978, 27.227837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288272, 0.333572, -0.897568,
		0.014650, -0.935714, -0.352454,
		-0.957436, -0.114752, 0.264854,
		42.621246, 38.825554, 27.307293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997932, 38.484425, 26.622051>,  <43.291451, 38.905880, 27.121895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997932, 38.484425, 26.622051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714886, 38.697971, 26.807207>,  <42.545059, 38.826099, 26.918301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.714886, 38.697971, 26.807207>,  <42.997932, 38.484425, 26.622051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714886, 38.697971, 26.807207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288061, 0.380230, -0.878889,
		-0.645215, -0.755255, -0.115270,
		-0.707614, 0.533868, 0.462890,
		42.502602, 38.858131, 26.946074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360233, 38.346832, 26.273647>,  <42.997932, 38.484425, 26.622051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360233, 38.346832, 26.273647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.298790, 38.693584, 26.463354>,  <42.261925, 38.901634, 26.577179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.298790, 38.693584, 26.463354>,  <42.360233, 38.346832, 26.273647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298790, 38.693584, 26.463354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448329, 0.366578, -0.815243,
		-0.880572, -0.337854, 0.332337,
		-0.153606, 0.866877, 0.474268,
		42.252708, 38.953648, 26.605635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725449, 38.468605, 26.123129>,  <42.360233, 38.346832, 26.273647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725449, 38.468605, 26.123129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862183, 38.829540, 26.228149>,  <41.944221, 39.046101, 26.291162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862183, 38.829540, 26.228149>,  <41.725449, 38.468605, 26.123129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862183, 38.829540, 26.228149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547803, 0.418333, -0.724506,
		-0.763585, 0.103833, 0.637305,
		0.341833, 0.902339, 0.262553,
		41.964733, 39.100243, 26.306915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192101, 38.922157, 25.943615>,  <41.725449, 38.468605, 26.123129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192101, 38.922157, 25.943615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.530293, 39.132797, 25.979076>,  <41.733208, 39.259182, 26.000353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.530293, 39.132797, 25.979076>,  <41.192101, 38.922157, 25.943615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530293, 39.132797, 25.979076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276319, 0.573469, -0.771221,
		-0.456967, 0.627552, 0.630365,
		0.845476, 0.526604, 0.088652,
		41.783936, 39.290779, 26.005672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962990, 39.528030, 25.647213>,  <41.192101, 38.922157, 25.943615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962990, 39.528030, 25.647213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361782, 39.552914, 25.665787>,  <41.601059, 39.567844, 25.676931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361782, 39.552914, 25.665787>,  <40.962990, 39.528030, 25.647213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361782, 39.552914, 25.665787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002389, 0.573286, -0.819352,
		-0.077591, 0.816990, 0.571407,
		0.996982, 0.062209, 0.046434,
		41.660877, 39.571575, 25.679716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132027, 40.250450, 25.526712>,  <40.962990, 39.528030, 25.647213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132027, 40.250450, 25.526712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.456230, 40.035370, 25.433798>,  <41.650753, 39.906322, 25.378050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.456230, 40.035370, 25.433798>,  <41.132027, 40.250450, 25.526712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456230, 40.035370, 25.433798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144310, 0.567671, -0.810509,
		0.567671, 0.623403, 0.537697,
		0.810509, -0.537697, -0.232287,
		41.699383, 39.874062, 25.364111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712421, 40.744122, 25.559902>,  <41.132027, 40.250450, 25.526712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712421, 40.744122, 25.559902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840115, 40.453777, 25.316195>,  <41.916733, 40.279572, 25.169970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840115, 40.453777, 25.316195>,  <41.712421, 40.744122, 25.559902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840115, 40.453777, 25.316195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288115, 0.686815, -0.667290,
		0.902817, 0.037483, 0.428388,
		0.319235, -0.725865, -0.609269,
		41.935886, 40.236019, 25.133413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360176, 41.027687, 25.237759>,  <41.712421, 40.744122, 25.559902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360176, 41.027687, 25.237759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.218758, 40.737263, 25.001846>,  <42.133907, 40.563007, 24.860300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.218758, 40.737263, 25.001846>,  <42.360176, 41.027687, 25.237759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218758, 40.737263, 25.001846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037024, 0.640867, -0.766758,
		0.934684, -0.249249, -0.253459,
		-0.353547, -0.726061, -0.589780,
		42.112694, 40.519444, 24.824913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772671, 41.116554, 24.701796>,  <42.360176, 41.027687, 25.237759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772671, 41.116554, 24.701796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.458199, 40.907257, 24.570257>,  <42.269516, 40.781677, 24.491333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.458199, 40.907257, 24.570257>,  <42.772671, 41.116554, 24.701796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458199, 40.907257, 24.570257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117041, 0.648550, -0.752120,
		0.606812, -0.552814, -0.571118,
		-0.786181, -0.523240, -0.328846,
		42.222343, 40.750286, 24.471603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907505, 40.759880, 24.029503>,  <42.772671, 41.116554, 24.701796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907505, 40.759880, 24.029503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510899, 40.807903, 24.049465>,  <42.272934, 40.836716, 24.061443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.510899, 40.807903, 24.049465>,  <42.907505, 40.759880, 24.029503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510899, 40.807903, 24.049465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006437, 0.428696, -0.903426,
		-0.129859, -0.895436, -0.425830,
		-0.991512, 0.120059, 0.049906,
		42.213444, 40.843922, 24.064438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727535, 40.736313, 23.316240>,  <42.907505, 40.759880, 24.029503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727535, 40.736313, 23.316240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.399391, 40.876064, 23.497320>,  <42.202503, 40.959915, 23.605968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.399391, 40.876064, 23.497320>,  <42.727535, 40.736313, 23.316240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399391, 40.876064, 23.497320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326896, 0.363026, -0.872554,
		-0.469195, -0.863798, -0.183602,
		-0.820363, 0.349379, 0.452702,
		42.153282, 40.980877, 23.633131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407757, 40.634365, 22.749716>,  <42.727535, 40.736313, 23.316240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407757, 40.634365, 22.749716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.205261, 40.867897, 23.003601>,  <42.083763, 41.008015, 23.155933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.205261, 40.867897, 23.003601>,  <42.407757, 40.634365, 22.749716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205261, 40.867897, 23.003601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336418, 0.543989, -0.768700,
		-0.794068, -0.602677, -0.078979,
		-0.506241, 0.583829, 0.634715,
		42.053391, 41.043045, 23.194016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628750, 40.828079, 22.407314>,  <42.407757, 40.634365, 22.749716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628750, 40.828079, 22.407314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.725079, 41.096031, 22.688248>,  <41.782875, 41.256802, 22.856808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.725079, 41.096031, 22.688248>,  <41.628750, 40.828079, 22.407314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725079, 41.096031, 22.688248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235731, 0.742331, -0.627196,
		-0.941506, -0.014518, 0.336682,
		0.240824, 0.669875, 0.702332,
		41.797325, 41.296993, 22.898947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026100, 41.137772, 22.586393>,  <41.628750, 40.828079, 22.407314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026100, 41.137772, 22.586393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303371, 41.411110, 22.678087>,  <41.469734, 41.575111, 22.733103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.303371, 41.411110, 22.678087>,  <41.026100, 41.137772, 22.586393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303371, 41.411110, 22.678087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370364, 0.610532, -0.700057,
		-0.618335, 0.400362, 0.676292,
		0.693175, 0.683345, 0.229234,
		41.511326, 41.616112, 22.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693989, 41.766052, 22.644444>,  <41.026100, 41.137772, 22.586393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693989, 41.766052, 22.644444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.070808, 41.868111, 22.557316>,  <41.296902, 41.929348, 22.505039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.070808, 41.868111, 22.557316>,  <40.693989, 41.766052, 22.644444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070808, 41.868111, 22.557316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334123, 0.655252, -0.677500,
		-0.030136, 0.711016, 0.702529,
		0.942047, 0.255148, -0.217820,
		41.353424, 41.944656, 22.491970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746246, 42.507107, 22.551165>,  <40.693989, 41.766052, 22.644444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746246, 42.507107, 22.551165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.072300, 42.354591, 22.376726>,  <41.267933, 42.263081, 22.272062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.072300, 42.354591, 22.376726>,  <40.746246, 42.507107, 22.551165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072300, 42.354591, 22.376726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087658, 0.662970, -0.743497,
		0.572608, 0.644273, 0.506983,
		0.815130, -0.381291, -0.436097,
		41.316837, 42.240204, 22.245897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089428, 43.159321, 22.430849>,  <40.746246, 42.507107, 22.551165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089428, 43.159321, 22.430849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242588, 42.882679, 22.185879>,  <41.334484, 42.716694, 22.038897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242588, 42.882679, 22.185879>,  <41.089428, 43.159321, 22.430849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242588, 42.882679, 22.185879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199516, 0.585391, -0.785819,
		0.901987, 0.423080, 0.086160,
		0.382901, -0.691607, -0.612426,
		41.357460, 42.675198, 22.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456482, 43.645615, 21.971817>,  <41.089428, 43.159321, 22.430849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456482, 43.645615, 21.971817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.427872, 43.289742, 21.791443>,  <41.410706, 43.076218, 21.683218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.427872, 43.289742, 21.791443>,  <41.456482, 43.645615, 21.971817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427872, 43.289742, 21.791443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100312, 0.456217, -0.884196,
		0.992382, -0.018012, -0.121879,
		-0.071529, -0.889686, -0.450935,
		41.406414, 43.022835, 21.656162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887012, 43.684349, 21.426823>,  <41.456482, 43.645615, 21.971817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887012, 43.684349, 21.426823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621990, 43.394958, 21.349255>,  <41.462978, 43.221325, 21.302713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621990, 43.394958, 21.349255>,  <41.887012, 43.684349, 21.426823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621990, 43.394958, 21.349255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232242, 0.444566, -0.865115,
		0.712102, -0.528147, -0.462571,
		-0.662551, -0.723479, -0.193918,
		41.423225, 43.177914, 21.291079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099068, 43.484486, 20.760391>,  <41.887012, 43.684349, 21.426823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099068, 43.484486, 20.760391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.720432, 43.361176, 20.798201>,  <41.493252, 43.287189, 20.820887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.720432, 43.361176, 20.798201>,  <42.099068, 43.484486, 20.760391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720432, 43.361176, 20.798201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258971, 0.552206, -0.792466,
		0.192099, -0.774620, -0.602547,
		-0.946590, -0.308274, 0.094526,
		41.436455, 43.268692, 20.826559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031590, 43.137917, 20.174133>,  <42.099068, 43.484486, 20.760391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031590, 43.137917, 20.174133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655762, 43.220474, 20.283396>,  <41.430267, 43.270008, 20.348953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655762, 43.220474, 20.283396>,  <42.031590, 43.137917, 20.174133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655762, 43.220474, 20.283396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210507, 0.280949, -0.936352,
		-0.270001, -0.937267, -0.220523,
		-0.939567, 0.206394, 0.273158,
		41.373890, 43.282391, 20.365343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618217, 43.445419, 19.612087>,  <42.031590, 43.137917, 20.174133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618217, 43.445419, 19.612087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307419, 43.518547, 19.853035>,  <41.120937, 43.562424, 19.997602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.307419, 43.518547, 19.853035>,  <41.618217, 43.445419, 19.612087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307419, 43.518547, 19.853035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440932, 0.524879, -0.728066,
		-0.449277, -0.831311, -0.327220,
		-0.777000, 0.182821, 0.602368,
		41.074318, 43.573395, 20.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015392, 43.135559, 19.278275>,  <41.618217, 43.445419, 19.612087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015392, 43.135559, 19.278275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964943, 43.459225, 19.507826>,  <40.934673, 43.653423, 19.645557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.964943, 43.459225, 19.507826>,  <41.015392, 43.135559, 19.278275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964943, 43.459225, 19.507826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256516, 0.532222, -0.806808,
		-0.958275, -0.248970, 0.140437,
		-0.126127, 0.809169, 0.573880,
		40.927105, 43.701977, 19.679991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306667, 42.664070, 18.898146>,  <41.015392, 43.135559, 19.278275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306667, 42.664070, 18.898146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525360, 42.411850, 18.677784>,  <41.656574, 42.260517, 18.545567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525360, 42.411850, 18.677784>,  <41.306667, 42.664070, 18.898146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525360, 42.411850, 18.677784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117112, -0.593890, 0.795977,
		-0.829080, -0.499700, -0.250851,
		0.546728, -0.630551, -0.550904,
		41.689377, 42.222683, 18.512512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042534, 41.886410, 18.986542>,  <41.306667, 42.664070, 18.898146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042534, 41.886410, 18.986542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419052, 41.891006, 18.851585>,  <41.644962, 41.893764, 18.770611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419052, 41.891006, 18.851585>,  <41.042534, 41.886410, 18.986542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419052, 41.891006, 18.851585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202256, -0.819387, 0.536374,
		-0.270290, -0.573126, -0.773609,
		0.941295, 0.011491, -0.337390,
		41.701439, 41.894455, 18.750368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217430, 41.253105, 18.719444>,  <41.042534, 41.886410, 18.986542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217430, 41.253105, 18.719444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582531, 41.374603, 18.828712>,  <41.801590, 41.447502, 18.894274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582531, 41.374603, 18.828712>,  <41.217430, 41.253105, 18.719444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582531, 41.374603, 18.828712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059615, -0.760573, 0.646509,
		0.404143, -0.573817, -0.712322,
		0.912751, 0.303748, 0.273172,
		41.856358, 41.465729, 18.910664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574215, 40.697380, 18.727825>,  <41.217430, 41.253105, 18.719444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574215, 40.697380, 18.727825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799122, 40.928993, 18.963985>,  <41.934067, 41.067963, 19.105682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799122, 40.928993, 18.963985>,  <41.574215, 40.697380, 18.727825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799122, 40.928993, 18.963985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102593, -0.757274, 0.644989,
		0.820568, -0.302085, -0.485194,
		0.562266, 0.579035, 0.590403,
		41.967800, 41.102703, 19.141106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193676, 40.299492, 18.916071>,  <41.574215, 40.697380, 18.727825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193676, 40.299492, 18.916071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.173950, 40.587723, 19.192717>,  <42.162117, 40.760662, 19.358704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.173950, 40.587723, 19.192717>,  <42.193676, 40.299492, 18.916071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173950, 40.587723, 19.192717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188952, -0.673224, 0.714889,
		0.980747, 0.165934, -0.102958,
		-0.049311, 0.720580, 0.691616,
		42.159157, 40.803898, 19.400202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716560, 40.102455, 19.398563>,  <42.193676, 40.299492, 18.916071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716560, 40.102455, 19.398563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487881, 40.360153, 19.601780>,  <42.350674, 40.514774, 19.723709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487881, 40.360153, 19.601780>,  <42.716560, 40.102455, 19.398563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487881, 40.360153, 19.601780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099774, -0.560024, 0.822446,
		0.814375, 0.520880, 0.255885,
		-0.571698, 0.644249, 0.508040,
		42.316372, 40.553429, 19.754192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158836, 40.221668, 19.907066>,  <42.716560, 40.102455, 19.398563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158836, 40.221668, 19.907066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781742, 40.290874, 20.021128>,  <42.555485, 40.332397, 20.089565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781742, 40.290874, 20.021128>,  <43.158836, 40.221668, 19.907066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781742, 40.290874, 20.021128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126704, -0.605083, 0.786016,
		0.308534, 0.777136, 0.548512,
		-0.942737, 0.173014, 0.285154,
		42.498920, 40.342777, 20.106674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143814, 40.347389, 20.623716>,  <43.158836, 40.221668, 19.907066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143814, 40.347389, 20.623716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.759892, 40.265160, 20.547281>,  <42.529537, 40.215824, 20.501421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.759892, 40.265160, 20.547281>,  <43.143814, 40.347389, 20.623716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759892, 40.265160, 20.547281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082738, -0.443339, 0.892527,
		-0.268195, 0.872462, 0.408511,
		-0.959805, -0.205572, -0.191088,
		42.471951, 40.203487, 20.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857353, 40.503624, 21.211422>,  <43.143814, 40.347389, 20.623716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857353, 40.503624, 21.211422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.620052, 40.232929, 21.037029>,  <42.477673, 40.070515, 20.932394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.620052, 40.232929, 21.037029>,  <42.857353, 40.503624, 21.211422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620052, 40.232929, 21.037029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018516, -0.529967, 0.847816,
		-0.804801, 0.511044, 0.301875,
		-0.593256, -0.676734, -0.435980,
		42.442074, 40.029907, 20.906235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313931, 40.433647, 21.594885>,  <42.857353, 40.503624, 21.211422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313931, 40.433647, 21.594885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.286018, 40.091072, 21.390278>,  <42.269272, 39.885529, 21.267513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.286018, 40.091072, 21.390278>,  <42.313931, 40.433647, 21.594885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286018, 40.091072, 21.390278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272811, -0.476836, 0.835585,
		-0.959533, 0.197859, -0.200369,
		-0.069785, -0.856434, -0.511518,
		42.265083, 39.834141, 21.236822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698204, 40.237114, 21.888187>,  <42.313931, 40.433647, 21.594885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698204, 40.237114, 21.888187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.865147, 39.912868, 21.723888>,  <41.965313, 39.718319, 21.625309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.865147, 39.912868, 21.723888>,  <41.698204, 40.237114, 21.888187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865147, 39.912868, 21.723888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121798, -0.497815, 0.858688,
		-0.900545, -0.308348, -0.306497,
		0.417354, -0.810618, -0.410749,
		41.990353, 39.669682, 21.600664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266869, 39.707077, 22.066637>,  <41.698204, 40.237114, 21.888187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266869, 39.707077, 22.066637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.618851, 39.532928, 21.990608>,  <41.830040, 39.428440, 21.944990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.618851, 39.532928, 21.990608>,  <41.266869, 39.707077, 22.066637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618851, 39.532928, 21.990608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066926, -0.509731, 0.857727,
		-0.470312, -0.742044, -0.477680,
		0.879959, -0.435368, -0.190070,
		41.882839, 39.402317, 21.933586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273811, 39.179756, 22.655256>,  <41.266869, 39.707077, 22.066637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273811, 39.179756, 22.655256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638561, 39.139946, 22.495970>,  <41.857410, 39.116058, 22.400398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638561, 39.139946, 22.495970>,  <41.273811, 39.179756, 22.655256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638561, 39.139946, 22.495970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295141, -0.515245, 0.804621,
		-0.285256, -0.851245, -0.440467,
		0.911878, -0.099523, -0.398214,
		41.912125, 39.110088, 22.376505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406284, 38.416279, 22.581009>,  <41.273811, 39.179756, 22.655256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406284, 38.416279, 22.581009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.744644, 38.625149, 22.624447>,  <41.947659, 38.750469, 22.650511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.744644, 38.625149, 22.624447>,  <41.406284, 38.416279, 22.581009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744644, 38.625149, 22.624447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308983, -0.645750, 0.698239,
		0.434729, -0.557083, -0.707580,
		0.845896, 0.522174, 0.108597,
		41.998413, 38.781799, 22.657026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020836, 37.936699, 22.690296>,  <41.406284, 38.416279, 22.581009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020836, 37.936699, 22.690296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.166245, 38.296089, 22.788759>,  <42.253490, 38.511723, 22.847837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.166245, 38.296089, 22.788759>,  <42.020836, 37.936699, 22.690296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166245, 38.296089, 22.788759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404338, -0.390219, 0.827188,
		0.839266, -0.201165, -0.505139,
		0.363517, 0.898477, 0.246159,
		42.275299, 38.565632, 22.862606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756138, 37.884399, 22.818237>,  <42.020836, 37.936699, 22.690296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756138, 37.884399, 22.818237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.629215, 38.198837, 23.030418>,  <42.553062, 38.387501, 23.157726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.629215, 38.198837, 23.030418>,  <42.756138, 37.884399, 22.818237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629215, 38.198837, 23.030418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520671, -0.323095, 0.790260,
		0.792602, 0.526945, -0.306774,
		-0.317307, 0.786090, 0.530451,
		42.534023, 38.434666, 23.189554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411076, 38.200851, 23.069574>,  <42.756138, 37.884399, 22.818237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411076, 38.200851, 23.069574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.083405, 38.284710, 23.283115>,  <42.886803, 38.335026, 23.411240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.083405, 38.284710, 23.283115>,  <43.411076, 38.200851, 23.069574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083405, 38.284710, 23.283115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446043, -0.352267, 0.822772,
		0.360549, 0.912117, 0.195058,
		-0.819176, 0.209645, 0.533853,
		42.837650, 38.347603, 23.443272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734703, 38.410748, 23.689016>,  <43.411076, 38.200851, 23.069574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734703, 38.410748, 23.689016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.359451, 38.344570, 23.810698>,  <43.134300, 38.304863, 23.883707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.359451, 38.344570, 23.810698>,  <43.734703, 38.410748, 23.689016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359451, 38.344570, 23.810698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346267, -0.439277, 0.828936,
		-0.003514, 0.882986, 0.469387,
		-0.938130, -0.165446, 0.304205,
		43.078011, 38.294937, 23.901958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648609, 38.624958, 24.412098>,  <43.734703, 38.410748, 23.689016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648609, 38.624958, 24.412098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.332966, 38.383820, 24.364967>,  <43.143581, 38.239136, 24.336689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.332966, 38.383820, 24.364967>,  <43.648609, 38.624958, 24.412098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332966, 38.383820, 24.364967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297710, -0.543140, 0.785091,
		-0.537289, 0.584442, 0.608069,
		-0.789107, -0.602849, -0.117829,
		43.096233, 38.202965, 24.329618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166958, 38.648560, 25.019733>,  <43.648609, 38.624958, 24.412098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166958, 38.648560, 25.019733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097210, 38.298283, 24.839621>,  <43.055363, 38.088116, 24.731552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097210, 38.298283, 24.839621>,  <43.166958, 38.648560, 25.019733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097210, 38.298283, 24.839621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371133, -0.482012, 0.793678,
		-0.912061, -0.028720, 0.409047,
		-0.174371, -0.875694, -0.450283,
		43.044899, 38.035576, 24.704536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.016125, 38.401730, 29.796730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771297, 38.092278, 29.731155>,  <43.624401, 37.906609, 29.691811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771297, 38.092278, 29.731155>,  <44.016125, 38.401730, 29.796730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771297, 38.092278, 29.731155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284652, -0.408938, 0.867031,
		-0.737800, 0.484014, 0.470512,
		-0.612066, -0.773628, -0.163939,
		43.587677, 37.860188, 29.681974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867123, 38.154320, 30.417633>,  <44.016125, 38.401730, 29.796730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867123, 38.154320, 30.417633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742447, 37.848804, 30.191544>,  <43.667641, 37.665493, 30.055891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742447, 37.848804, 30.191544>,  <43.867123, 38.154320, 30.417633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742447, 37.848804, 30.191544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146805, -0.626422, 0.765535,
		-0.938775, 0.155630, 0.307376,
		-0.311688, -0.763790, -0.565222,
		43.648941, 37.619667, 30.021976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360016, 37.737549, 30.967398>,  <43.867123, 38.154320, 30.417633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360016, 37.737549, 30.967398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484188, 37.524498, 30.652452>,  <43.558689, 37.396667, 30.463486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484188, 37.524498, 30.652452>,  <43.360016, 37.737549, 30.967398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484188, 37.524498, 30.652452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011747, -0.826070, 0.563445,
		-0.950524, -0.184159, -0.250179,
		0.310428, -0.532629, -0.787363,
		43.577316, 37.364708, 30.416245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869896, 37.209530, 30.867208>,  <43.360016, 37.737549, 30.967398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869896, 37.209530, 30.867208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231316, 37.092674, 30.741825>,  <43.448166, 37.022560, 30.666595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231316, 37.092674, 30.741825>,  <42.869896, 37.209530, 30.867208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231316, 37.092674, 30.741825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146079, -0.897739, 0.415603,
		-0.402816, -0.329728, -0.853826,
		0.903549, -0.292137, -0.313457,
		43.502380, 37.005032, 30.647787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716312, 36.562160, 30.657993>,  <42.869896, 37.209530, 30.867208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716312, 36.562160, 30.657993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113907, 36.570705, 30.700954>,  <43.352463, 36.575832, 30.726730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.113907, 36.570705, 30.700954>,  <42.716312, 36.562160, 30.657993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113907, 36.570705, 30.700954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041150, -0.836051, 0.547107,
		0.101482, -0.548236, -0.830144,
		0.993986, 0.021361, 0.107404,
		43.412102, 36.577114, 30.733175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030991, 35.917465, 30.401598>,  <42.716312, 36.562160, 30.657993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030991, 35.917465, 30.401598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330475, 36.049622, 30.631477>,  <43.510166, 36.128914, 30.769405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.330475, 36.049622, 30.631477>,  <43.030991, 35.917465, 30.401598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330475, 36.049622, 30.631477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034624, -0.846274, 0.531621,
		0.661993, -0.417928, -0.622175,
		0.748710, 0.330387, 0.574698,
		43.555088, 36.148739, 30.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529343, 35.398994, 30.352106>,  <43.030991, 35.917465, 30.401598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529343, 35.398994, 30.352106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624470, 35.601070, 30.683943>,  <43.681545, 35.722317, 30.883045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624470, 35.601070, 30.683943>,  <43.529343, 35.398994, 30.352106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624470, 35.601070, 30.683943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231023, -0.859008, 0.456875,
		0.943435, 0.083001, -0.321000,
		0.237820, 0.505190, 0.829593,
		43.695816, 35.752628, 30.932821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096458, 35.063847, 30.602062>,  <43.529343, 35.398994, 30.352106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096458, 35.063847, 30.602062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954517, 35.269505, 30.914404>,  <43.869354, 35.392899, 31.101809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954517, 35.269505, 30.914404>,  <44.096458, 35.063847, 30.602062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954517, 35.269505, 30.914404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263014, -0.746579, 0.611101,
		0.897166, 0.422224, 0.129694,
		-0.354848, 0.514147, 0.780856,
		43.848064, 35.423748, 31.148661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556614, 34.971001, 31.215099>,  <44.096458, 35.063847, 30.602062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556614, 34.971001, 31.215099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206638, 35.104481, 31.355452>,  <43.996651, 35.184570, 31.439663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206638, 35.104481, 31.355452>,  <44.556614, 34.971001, 31.215099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206638, 35.104481, 31.355452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012929, -0.708262, 0.705832,
		0.484054, 0.622099, 0.615374,
		-0.874942, 0.333705, 0.350880,
		43.944157, 35.204594, 31.460716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612179, 34.893616, 31.950096>,  <44.556614, 34.971001, 31.215099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612179, 34.893616, 31.950096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216476, 34.936237, 31.910070>,  <43.979053, 34.961811, 31.886055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216476, 34.936237, 31.910070>,  <44.612179, 34.893616, 31.950096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216476, 34.936237, 31.910070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136544, -0.429277, 0.892792,
		0.052179, 0.896865, 0.439216,
		-0.989259, 0.106557, -0.100062,
		43.919701, 34.968204, 31.880053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351223, 34.854095, 32.699959>,  <44.612179, 34.893616, 31.950096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351223, 34.854095, 32.699959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020794, 34.789028, 32.484131>,  <43.822536, 34.749989, 32.354633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020794, 34.789028, 32.484131>,  <44.351223, 34.854095, 32.699959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020794, 34.789028, 32.484131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240776, -0.763778, 0.598891,
		-0.509535, 0.624645, 0.591770,
		-0.826075, -0.162672, -0.539571,
		43.772972, 34.740227, 32.322258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804134, 34.919434, 33.184025>,  <44.351223, 34.854095, 32.699959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804134, 34.919434, 33.184025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671204, 34.696312, 32.879810>,  <43.591446, 34.562439, 32.697281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.671204, 34.696312, 32.879810>,  <43.804134, 34.919434, 33.184025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671204, 34.696312, 32.879810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282764, -0.710351, 0.644551,
		-0.899779, 0.429254, 0.078343,
		-0.332327, -0.557801, -0.760537,
		43.571507, 34.528973, 32.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143402, 34.802952, 33.340137>,  <43.804134, 34.919434, 33.184025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143402, 34.802952, 33.340137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254482, 34.502205, 33.100945>,  <43.321129, 34.321758, 32.957428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.254482, 34.502205, 33.100945>,  <43.143402, 34.802952, 33.340137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254482, 34.502205, 33.100945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418338, -0.654992, 0.629269,
		-0.864800, 0.075414, -0.496421,
		0.277696, -0.751863, -0.597986,
		43.337791, 34.276646, 32.921551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619568, 34.525234, 33.071095>,  <43.143402, 34.802952, 33.340137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619568, 34.525234, 33.071095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915821, 34.256996, 33.087902>,  <43.093571, 34.096054, 33.097984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915821, 34.256996, 33.087902>,  <42.619568, 34.525234, 33.071095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915821, 34.256996, 33.087902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534395, -0.549992, 0.641818,
		-0.407293, -0.497804, -0.765705,
		0.740631, -0.670597, 0.042016,
		43.138012, 34.055817, 33.100506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499146, 33.851433, 33.283653>,  <42.619568, 34.525234, 33.071095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499146, 33.851433, 33.283653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162594, 33.699841, 33.437771>,  <41.960663, 33.608887, 33.530243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.162594, 33.699841, 33.437771>,  <42.499146, 33.851433, 33.283653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162594, 33.699841, 33.437771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538172, 0.652811, -0.533112,
		-0.049486, -0.655905, -0.753220,
		-0.841381, -0.378980, 0.385294,
		41.910179, 33.586147, 33.553360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122257, 33.654167, 32.646091>,  <42.499146, 33.851433, 33.283653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122257, 33.654167, 32.646091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.869225, 33.688854, 32.953941>,  <41.717403, 33.709667, 33.138653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.869225, 33.688854, 32.953941>,  <42.122257, 33.654167, 32.646091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869225, 33.688854, 32.953941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645814, 0.489456, -0.585967,
		-0.427510, -0.867706, -0.253618,
		-0.632581, 0.086717, 0.769624,
		41.679451, 33.714870, 33.184830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429012, 33.457462, 32.336468>,  <42.122257, 33.654167, 32.646091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429012, 33.457462, 32.336468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336807, 33.644157, 32.677998>,  <41.281483, 33.756176, 32.882915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336807, 33.644157, 32.677998>,  <41.429012, 33.457462, 32.336468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336807, 33.644157, 32.677998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591675, 0.629380, -0.503788,
		-0.772518, -0.621317, 0.131078,
		-0.230514, 0.466741, 0.853825,
		41.267654, 33.784180, 32.934143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736839, 33.580257, 32.158844>,  <41.429012, 33.457462, 32.336468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736839, 33.580257, 32.158844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855534, 33.840683, 32.438290>,  <40.926750, 33.996941, 32.605957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855534, 33.840683, 32.438290>,  <40.736839, 33.580257, 32.158844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855534, 33.840683, 32.438290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507409, 0.727243, -0.462227,
		-0.809002, -0.217323, 0.546157,
		0.296736, 0.651068, 0.698612,
		40.944553, 34.036003, 32.647873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177963, 33.907784, 32.351738>,  <40.736839, 33.580257, 32.158844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177963, 33.907784, 32.351738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478378, 34.148865, 32.459587>,  <40.658627, 34.293514, 32.524296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478378, 34.148865, 32.459587>,  <40.177963, 33.907784, 32.351738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478378, 34.148865, 32.459587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528980, 0.793627, -0.300561,
		-0.395126, 0.083110, 0.914860,
		0.751037, 0.602702, 0.269619,
		40.703690, 34.329674, 32.540474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886169, 34.531677, 32.488567>,  <40.177963, 33.907784, 32.351738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886169, 34.531677, 32.488567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274174, 34.615829, 32.439873>,  <40.506977, 34.666321, 32.410656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274174, 34.615829, 32.439873>,  <39.886169, 34.531677, 32.488567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274174, 34.615829, 32.439873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242388, 0.874576, -0.419958,
		0.018121, 0.436872, 0.899341,
		0.970010, 0.210380, -0.121741,
		40.565178, 34.678944, 32.403351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895927, 35.185810, 32.528999>,  <39.886169, 34.531677, 32.488567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895927, 35.185810, 32.528999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248493, 35.107418, 32.357090>,  <40.460033, 35.060383, 32.253944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248493, 35.107418, 32.357090>,  <39.895927, 35.185810, 32.528999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248493, 35.107418, 32.357090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077147, 0.837917, -0.540318,
		0.466002, 0.509399, 0.723432,
		0.881414, -0.195978, -0.429770,
		40.512917, 35.048626, 32.228161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237682, 35.854393, 32.357819>,  <39.895927, 35.185810, 32.528999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237682, 35.854393, 32.357819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.399422, 35.580078, 32.115761>,  <40.496464, 35.415489, 31.970526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.399422, 35.580078, 32.115761>,  <40.237682, 35.854393, 32.357819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399422, 35.580078, 32.115761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175365, 0.591235, -0.787202,
		0.897636, 0.424424, 0.118800,
		0.404346, -0.685788, -0.605143,
		40.520725, 35.374340, 31.934217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539803, 36.203514, 31.857538>,  <40.237682, 35.854393, 32.357819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539803, 36.203514, 31.857538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524113, 35.843918, 31.683056>,  <40.514698, 35.628159, 31.578365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524113, 35.843918, 31.683056>,  <40.539803, 36.203514, 31.857538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524113, 35.843918, 31.683056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208054, 0.434324, -0.876400,
		0.977331, 0.056378, -0.204075,
		-0.039225, -0.898991, -0.436207,
		40.512344, 35.574219, 31.552195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910412, 36.177387, 31.291521>,  <40.539803, 36.203514, 31.857538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910412, 36.177387, 31.291521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.651661, 35.882938, 31.211851>,  <40.496410, 35.706268, 31.164049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.651661, 35.882938, 31.211851>,  <40.910412, 36.177387, 31.291521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651661, 35.882938, 31.211851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154864, 0.382546, -0.910865,
		0.746702, -0.558375, -0.361460,
		-0.646879, -0.736122, -0.199176,
		40.457596, 35.662102, 31.152098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161209, 35.875137, 30.611691>,  <40.910412, 36.177387, 31.291521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161209, 35.875137, 30.611691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774517, 35.796692, 30.677387>,  <40.542503, 35.749626, 30.716805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774517, 35.796692, 30.677387>,  <41.161209, 35.875137, 30.611691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774517, 35.796692, 30.677387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238486, 0.458742, -0.855968,
		0.092523, -0.866658, -0.490249,
		-0.966729, -0.196114, 0.164242,
		40.484497, 35.737858, 30.726660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852833, 35.689495, 29.976826>,  <41.161209, 35.875137, 30.611691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852833, 35.689495, 29.976826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546486, 35.786503, 30.215029>,  <40.362679, 35.844707, 30.357950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.546486, 35.786503, 30.215029>,  <40.852833, 35.689495, 29.976826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546486, 35.786503, 30.215029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456259, 0.447614, -0.769070,
		-0.453070, -0.860713, -0.232164,
		-0.765869, 0.242516, 0.595509,
		40.316727, 35.859257, 30.393681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294067, 35.582859, 29.550470>,  <40.852833, 35.689495, 29.976826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294067, 35.582859, 29.550470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160969, 35.806152, 29.854485>,  <40.081108, 35.940128, 30.036892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.160969, 35.806152, 29.854485>,  <40.294067, 35.582859, 29.550470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160969, 35.806152, 29.854485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469931, 0.600601, -0.646873,
		-0.817585, -0.572407, 0.062486,
		-0.332745, 0.558238, 0.760034,
		40.061146, 35.973625, 30.082495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618641, 35.637680, 29.337086>,  <40.294067, 35.582859, 29.550470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618641, 35.637680, 29.337086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700016, 35.949749, 29.573709>,  <39.748840, 36.136990, 29.715683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700016, 35.949749, 29.573709>,  <39.618641, 35.637680, 29.337086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700016, 35.949749, 29.573709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288546, 0.625133, -0.725224,
		-0.935604, -0.023154, 0.352292,
		0.203437, 0.780175, 0.591557,
		39.761047, 36.183800, 29.751177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904419, 35.427025, 29.449949>,  <39.618641, 35.637680, 29.337086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904419, 35.427025, 29.449949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.762146, 35.107353, 29.256124>,  <38.676781, 34.915550, 29.139830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.762146, 35.107353, 29.256124>,  <38.904419, 35.427025, 29.449949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762146, 35.107353, 29.256124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008373, -0.515722, 0.856715,
		-0.934570, 0.308775, 0.176741,
		-0.355681, -0.799180, -0.484564,
		38.655441, 34.867599, 29.110756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572372, 34.982761, 29.893999>,  <38.904419, 35.427025, 29.449949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572372, 34.982761, 29.893999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.599178, 34.694439, 29.618044>,  <38.615261, 34.521446, 29.452471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.599178, 34.694439, 29.618044>,  <38.572372, 34.982761, 29.893999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599178, 34.694439, 29.618044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115758, -0.681155, 0.722930,
		-0.991014, -0.128308, 0.037790,
		0.067017, -0.720808, -0.689887,
		38.619282, 34.478195, 29.411077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060158, 34.533165, 30.087055>,  <38.572372, 34.982761, 29.893999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060158, 34.533165, 30.087055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303352, 34.316685, 29.854692>,  <38.449268, 34.186794, 29.715275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303352, 34.316685, 29.854692>,  <38.060158, 34.533165, 30.087055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303352, 34.316685, 29.854692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082118, -0.684879, 0.724015,
		-0.789691, -0.487892, -0.371954,
		0.607985, -0.541203, -0.580908,
		38.485748, 34.154324, 29.680420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801594, 33.721951, 29.981644>,  <38.060158, 34.533165, 30.087055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801594, 33.721951, 29.981644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190517, 33.691730, 29.893183>,  <38.423870, 33.673599, 29.840105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190517, 33.691730, 29.893183>,  <37.801594, 33.721951, 29.981644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190517, 33.691730, 29.893183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092159, -0.745669, 0.659912,
		-0.214763, -0.662020, -0.718058,
		0.972308, -0.075549, -0.221153,
		38.482208, 33.669067, 29.826838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855053, 32.992222, 30.114311>,  <37.801594, 33.721951, 29.981644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855053, 32.992222, 30.114311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231785, 33.126637, 30.112068>,  <38.457825, 33.207283, 30.110722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231785, 33.126637, 30.112068>,  <37.855053, 32.992222, 30.114311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231785, 33.126637, 30.112068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316500, -0.881226, 0.351095,
		0.113037, -0.332448, -0.936323,
		0.941833, 0.336033, -0.005609,
		38.514336, 33.227448, 30.110386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276711, 32.428524, 30.042828>,  <37.855053, 32.992222, 30.114311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276711, 32.428524, 30.042828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552677, 32.696037, 30.153633>,  <38.718258, 32.856544, 30.220116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.552677, 32.696037, 30.153633>,  <38.276711, 32.428524, 30.042828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552677, 32.696037, 30.153633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495233, -0.715177, 0.493220,
		0.527972, -0.203096, -0.824620,
		0.689920, 0.668785, 0.277014,
		38.759655, 32.896671, 30.236738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842525, 32.086155, 29.823679>,  <38.276711, 32.428524, 30.042828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842525, 32.086155, 29.823679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931946, 32.355381, 30.105673>,  <38.985600, 32.516918, 30.274868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931946, 32.355381, 30.105673>,  <38.842525, 32.086155, 29.823679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931946, 32.355381, 30.105673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488346, -0.703303, 0.516608,
		0.843529, 0.228786, -0.485917,
		0.223554, 0.673069, 0.704983,
		38.999012, 32.557301, 30.317167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620331, 32.131512, 29.933983>,  <38.842525, 32.086155, 29.823679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620331, 32.131512, 29.933983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482166, 32.260723, 30.286425>,  <39.399265, 32.338249, 30.497890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482166, 32.260723, 30.286425>,  <39.620331, 32.131512, 29.933983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482166, 32.260723, 30.286425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754916, -0.462106, 0.465359,
		0.557486, 0.825901, -0.084240,
		-0.345413, 0.323026, 0.881104,
		39.378544, 32.357632, 30.550756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204800, 32.290390, 30.292456>,  <39.620331, 32.131512, 29.933983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204800, 32.290390, 30.292456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.935799, 32.271320, 30.587879>,  <39.774399, 32.259880, 30.765133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.935799, 32.271320, 30.587879>,  <40.204800, 32.290390, 30.292456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935799, 32.271320, 30.587879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652102, -0.510107, 0.560852,
		0.350008, 0.858789, 0.374133,
		-0.672501, -0.047670, 0.738559,
		39.734047, 32.257019, 30.809446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422230, 32.611370, 30.944967>,  <40.204800, 32.290390, 30.292456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422230, 32.611370, 30.944967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153381, 32.331501, 31.041895>,  <39.992073, 32.163578, 31.100052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153381, 32.331501, 31.041895>,  <40.422230, 32.611370, 30.944967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153381, 32.331501, 31.041895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697309, -0.488038, 0.524956,
		-0.249035, 0.521804, 0.815906,
		-0.672117, -0.699671, 0.242320,
		39.951748, 32.121601, 31.114592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659904, 32.400223, 31.544207>,  <40.422230, 32.611370, 30.944967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659904, 32.400223, 31.544207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389290, 32.112228, 31.482344>,  <40.226921, 31.939432, 31.445225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.389290, 32.112228, 31.482344>,  <40.659904, 32.400223, 31.544207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389290, 32.112228, 31.482344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615871, -0.668318, 0.417198,
		-0.403739, 0.186998, 0.895559,
		-0.676534, -0.719988, -0.154659,
		40.186329, 31.896233, 31.435946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539364, 32.160576, 32.266914>,  <40.659904, 32.400223, 31.544207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539364, 32.160576, 32.266914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.453327, 31.878036, 31.997156>,  <40.401707, 31.708513, 31.835300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.453327, 31.878036, 31.997156>,  <40.539364, 32.160576, 32.266914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453327, 31.878036, 31.997156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535817, -0.662694, 0.523199,
		-0.816478, -0.248818, 0.521012,
		-0.215090, -0.706348, -0.674396,
		40.388802, 31.666132, 31.794838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.561832, 37.313774, 26.688225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695038, 37.043243, 26.425417>,  <37.774963, 36.880924, 26.267731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695038, 37.043243, 26.425417>,  <37.561832, 37.313774, 26.688225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695038, 37.043243, 26.425417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306729, -0.736598, 0.602777,
		-0.891638, 0.000794, -0.452748,
		0.333015, -0.676330, -0.657022,
		37.794941, 36.840343, 26.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016632, 36.774101, 26.678478>,  <37.561832, 37.313774, 26.688225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016632, 36.774101, 26.678478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367104, 36.628654, 26.551926>,  <37.577385, 36.541386, 26.475994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367104, 36.628654, 26.551926>,  <37.016632, 36.774101, 26.678478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367104, 36.628654, 26.551926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124838, -0.805203, 0.579710,
		-0.465546, -0.468431, -0.750893,
		0.876175, -0.363621, -0.316381,
		37.629955, 36.519569, 26.457012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956486, 36.038502, 26.624012>,  <37.016632, 36.774101, 26.678478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956486, 36.038502, 26.624012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356163, 36.043194, 26.608658>,  <37.595970, 36.046009, 26.599445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356163, 36.043194, 26.608658>,  <36.956486, 36.038502, 26.624012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356163, 36.043194, 26.608658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031850, -0.813751, 0.580341,
		-0.024426, -0.581096, -0.813469,
		0.999194, 0.011733, -0.038384,
		37.655922, 36.046715, 26.597143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147907, 35.263760, 26.734955>,  <36.956486, 36.038502, 26.624012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147907, 35.263760, 26.734955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485161, 35.465084, 26.810642>,  <37.687511, 35.585880, 26.856054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485161, 35.465084, 26.810642>,  <37.147907, 35.263760, 26.734955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485161, 35.465084, 26.810642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236804, -0.663499, 0.709714,
		0.482757, -0.553573, -0.678603,
		0.843131, 0.503315, 0.189221,
		37.738102, 35.616077, 26.867409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743469, 34.746033, 26.838638>,  <37.147907, 35.263760, 26.734955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743469, 34.746033, 26.838638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848217, 35.088470, 27.016867>,  <37.911064, 35.293934, 27.123804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848217, 35.088470, 27.016867>,  <37.743469, 34.746033, 26.838638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848217, 35.088470, 27.016867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364589, -0.515225, 0.775640,
		0.893588, -0.040665, -0.447043,
		0.261869, 0.856089, 0.445573,
		37.926777, 35.345299, 27.150539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459408, 34.687820, 27.075684>,  <37.743469, 34.746033, 26.838638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459408, 34.687820, 27.075684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299488, 34.986195, 27.288754>,  <38.203537, 35.165218, 27.416595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299488, 34.986195, 27.288754>,  <38.459408, 34.687820, 27.075684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299488, 34.986195, 27.288754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409879, -0.374310, 0.831800,
		0.819854, 0.550884, -0.156095,
		-0.399798, 0.745935, 0.532675,
		38.179550, 35.209976, 27.448557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989483, 34.860950, 27.486448>,  <38.459408, 34.687820, 27.075684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989483, 34.860950, 27.486448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653725, 34.995434, 27.657270>,  <38.452271, 35.076122, 27.759764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653725, 34.995434, 27.657270>,  <38.989483, 34.860950, 27.486448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653725, 34.995434, 27.657270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293323, -0.381264, 0.876698,
		0.457572, 0.861164, 0.221416,
		-0.839399, 0.336206, 0.427055,
		38.401905, 35.096294, 27.785387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223278, 35.295471, 28.051311>,  <38.989483, 34.860950, 27.486448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223278, 35.295471, 28.051311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851971, 35.200169, 28.165543>,  <38.629189, 35.142986, 28.234081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851971, 35.200169, 28.165543>,  <39.223278, 35.295471, 28.051311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851971, 35.200169, 28.165543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343855, -0.257199, 0.903112,
		-0.141721, 0.936527, 0.320675,
		-0.928267, -0.238255, 0.285579,
		38.573490, 35.128693, 28.251217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137135, 35.570892, 28.709976>,  <39.223278, 35.295471, 28.051311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137135, 35.570892, 28.709976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840973, 35.303291, 28.683954>,  <38.663277, 35.142731, 28.668341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840973, 35.303291, 28.683954>,  <39.137135, 35.570892, 28.709976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840973, 35.303291, 28.683954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349053, -0.465400, 0.813366,
		-0.574422, 0.579514, 0.578103,
		-0.740406, -0.669004, -0.065055,
		38.618851, 35.102589, 28.664438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901981, 36.086601, 29.202463>,  <39.137135, 35.570892, 28.709976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901981, 36.086601, 29.202463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168064, 36.286789, 29.424107>,  <39.327713, 36.406902, 29.557093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168064, 36.286789, 29.424107>,  <38.901981, 36.086601, 29.202463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168064, 36.286789, 29.424107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397193, 0.865583, -0.304965,
		-0.632253, -0.017224, 0.774571,
		0.665203, 0.500469, 0.554109,
		39.367626, 36.436928, 29.590340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518864, 36.609600, 29.611029>,  <38.901981, 36.086601, 29.202463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518864, 36.609600, 29.611029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890175, 36.758297, 29.606859>,  <39.112961, 36.847515, 29.604357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890175, 36.758297, 29.606859>,  <38.518864, 36.609600, 29.611029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890175, 36.758297, 29.606859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346296, 0.853834, -0.388647,
		-0.135575, 0.364382, 0.921328,
		0.928277, 0.371743, -0.010425,
		39.168659, 36.869820, 29.603731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645432, 37.304562, 30.077717>,  <38.518864, 36.609600, 29.611029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645432, 37.304562, 30.077717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910305, 37.274265, 29.779516>,  <39.069229, 37.256088, 29.600595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910305, 37.274265, 29.779516>,  <38.645432, 37.304562, 30.077717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910305, 37.274265, 29.779516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263433, 0.907844, -0.326223,
		0.701506, 0.412411, 0.581212,
		0.662188, -0.075737, -0.745501,
		39.108963, 37.251545, 29.555866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869385, 37.978306, 30.071808>,  <38.645432, 37.304562, 30.077717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869385, 37.978306, 30.071808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027988, 37.840511, 29.731428>,  <39.123150, 37.757835, 29.527201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027988, 37.840511, 29.731428>,  <38.869385, 37.978306, 30.071808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027988, 37.840511, 29.731428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169614, 0.883478, -0.436689,
		0.902228, 0.317482, 0.291874,
		0.396505, -0.344487, -0.850948,
		39.146938, 37.737164, 29.476143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424545, 38.404377, 29.801233>,  <38.869385, 37.978306, 30.071808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424545, 38.404377, 29.801233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263489, 38.221508, 29.484026>,  <39.166855, 38.111786, 29.293701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263489, 38.221508, 29.484026>,  <39.424545, 38.404377, 29.801233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263489, 38.221508, 29.484026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068065, 0.848996, -0.523997,
		0.912824, -0.264959, -0.310722,
		-0.402640, -0.457168, -0.793018,
		39.142696, 38.084358, 29.246120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814793, 38.704185, 29.234013>,  <39.424545, 38.404377, 29.801233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814793, 38.704185, 29.234013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508678, 38.522896, 29.051180>,  <39.325008, 38.414124, 28.941481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508678, 38.522896, 29.051180>,  <39.814793, 38.704185, 29.234013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508678, 38.522896, 29.051180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092132, 0.625664, -0.774633,
		0.637074, -0.634922, -0.437049,
		-0.765277, -0.453232, -0.457091,
		39.279091, 38.386929, 28.914055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017529, 38.776802, 28.553740>,  <39.814793, 38.704185, 29.234013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017529, 38.776802, 28.553740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623489, 38.709469, 28.539572>,  <39.387066, 38.669067, 28.531071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623489, 38.709469, 28.539572>,  <40.017529, 38.776802, 28.553740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623489, 38.709469, 28.539572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078022, 0.620737, -0.780127,
		0.153308, -0.765735, -0.624617,
		-0.985093, -0.168334, -0.035420,
		39.327961, 38.658970, 28.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905506, 38.679840, 27.874783>,  <40.017529, 38.776802, 28.553740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905506, 38.679840, 27.874783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544159, 38.768723, 28.021511>,  <39.327351, 38.822052, 28.109549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544159, 38.768723, 28.021511>,  <39.905506, 38.679840, 27.874783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544159, 38.768723, 28.021511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165875, 0.607729, -0.776628,
		-0.395498, -0.762425, -0.512143,
		-0.903364, 0.222203, 0.366822,
		39.273151, 38.835384, 28.131557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469746, 38.532345, 27.374632>,  <39.905506, 38.679840, 27.874783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469746, 38.532345, 27.374632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281372, 38.796803, 27.608248>,  <39.168346, 38.955479, 27.748417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281372, 38.796803, 27.608248>,  <39.469746, 38.532345, 27.374632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281372, 38.796803, 27.608248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082210, 0.626279, -0.775252,
		-0.878330, -0.413106, -0.240582,
		-0.470933, 0.661149, 0.584041,
		39.140091, 38.995148, 27.783461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053745, 38.821602, 26.972076>,  <39.469746, 38.532345, 27.374632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053745, 38.821602, 26.972076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037365, 39.100361, 27.258474>,  <39.027534, 39.267616, 27.430313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037365, 39.100361, 27.258474>,  <39.053745, 38.821602, 26.972076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037365, 39.100361, 27.258474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140353, 0.705480, -0.694693,
		-0.989254, -0.128943, 0.068920,
		-0.040954, 0.696901, 0.715997,
		39.025078, 39.309433, 27.473274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451939, 39.234325, 26.861198>,  <39.053745, 38.821602, 26.972076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451939, 39.234325, 26.861198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667229, 39.474476, 27.097795>,  <38.796402, 39.618565, 27.239754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667229, 39.474476, 27.097795>,  <38.451939, 39.234325, 26.861198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667229, 39.474476, 27.097795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228034, 0.779378, -0.583584,
		-0.811365, 0.179220, 0.556388,
		0.538227, 0.600375, 0.591492,
		38.828697, 39.654587, 27.275244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041374, 39.915989, 27.044847>,  <38.451939, 39.234325, 26.861198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041374, 39.915989, 27.044847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433552, 39.989471, 27.073088>,  <38.668858, 40.033562, 27.090033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433552, 39.989471, 27.073088>,  <38.041374, 39.915989, 27.044847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433552, 39.989471, 27.073088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121557, 0.847379, -0.516888,
		-0.154783, 0.498197, 0.853137,
		0.980442, 0.183710, 0.070601,
		38.727684, 40.044586, 27.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137463, 40.620903, 27.203739>,  <38.041374, 39.915989, 27.044847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137463, 40.620903, 27.203739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488293, 40.517441, 27.041830>,  <38.698792, 40.455364, 26.944685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488293, 40.517441, 27.041830>,  <38.137463, 40.620903, 27.203739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488293, 40.517441, 27.041830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031490, 0.809876, -0.585755,
		0.479322, 0.526497, 0.702176,
		0.877074, -0.258654, -0.404771,
		38.751415, 40.439846, 26.920399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361740, 41.336796, 27.001930>,  <38.137463, 40.620903, 27.203739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361740, 41.336796, 27.001930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560829, 41.068092, 26.782475>,  <38.680283, 40.906868, 26.650801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560829, 41.068092, 26.782475>,  <38.361740, 41.336796, 27.001930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560829, 41.068092, 26.782475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056007, 0.656132, -0.752565,
		0.865523, 0.343845, 0.364198,
		0.497727, -0.671760, -0.548640,
		38.710148, 40.866566, 26.617882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.813190, 35.711788, 21.310637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.547943, 35.803104, 21.595779>,  <42.388794, 35.857895, 21.766865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.547943, 35.803104, 21.595779>,  <42.813190, 35.711788, 21.310637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547943, 35.803104, 21.595779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517440, -0.548348, 0.656941,
		0.540865, 0.804487, 0.245492,
		-0.663115, 0.228289, 0.712856,
		42.349010, 35.871590, 21.809635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110016, 35.901085, 21.905693>,  <42.813190, 35.711788, 21.310637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110016, 35.901085, 21.905693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.754768, 35.820290, 22.070835>,  <42.541622, 35.771812, 22.169920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.754768, 35.820290, 22.070835>,  <43.110016, 35.901085, 21.905693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754768, 35.820290, 22.070835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458732, -0.445280, 0.768954,
		0.028513, 0.872310, 0.488121,
		-0.888117, -0.201992, 0.412853,
		42.488335, 35.759693, 22.194691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130623, 36.078487, 22.695860>,  <43.110016, 35.901085, 21.905693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130623, 36.078487, 22.695860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.833344, 35.815304, 22.647280>,  <42.654976, 35.657394, 22.618132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.833344, 35.815304, 22.647280>,  <43.130623, 36.078487, 22.695860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833344, 35.815304, 22.647280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301095, -0.491002, 0.817471,
		-0.597492, 0.570975, 0.563019,
		-0.743199, -0.657955, -0.121452,
		42.610382, 35.617916, 22.610844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940899, 35.928688, 23.335405>,  <43.130623, 36.078487, 22.695860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940899, 35.928688, 23.335405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.795391, 35.618919, 23.128355>,  <42.708084, 35.433056, 23.004126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.795391, 35.618919, 23.128355>,  <42.940899, 35.928688, 23.335405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795391, 35.618919, 23.128355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173954, -0.602401, 0.779008,
		-0.915100, 0.193340, 0.353852,
		-0.363774, -0.774424, -0.517625,
		42.686260, 35.386593, 22.973068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448410, 35.687355, 23.782036>,  <42.940899, 35.928688, 23.335405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448410, 35.687355, 23.782036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.546352, 35.384972, 23.539194>,  <42.605118, 35.203541, 23.393488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.546352, 35.384972, 23.539194>,  <42.448410, 35.687355, 23.782036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546352, 35.384972, 23.539194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280633, -0.544106, 0.790692,
		-0.928057, -0.363981, 0.078918,
		0.244857, -0.755954, -0.607107,
		42.619808, 35.158184, 23.357061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071335, 34.956360, 24.052313>,  <42.448410, 35.687355, 23.782036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071335, 34.956360, 24.052313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.368843, 34.857769, 23.803780>,  <42.547348, 34.798615, 23.654659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.368843, 34.857769, 23.803780>,  <42.071335, 34.956360, 24.052313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368843, 34.857769, 23.803780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332986, -0.669364, 0.664133,
		-0.579586, -0.700859, -0.415784,
		0.743774, -0.246471, -0.621330,
		42.591976, 34.783829, 23.617380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997101, 34.265743, 23.907454>,  <42.071335, 34.956360, 24.052313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997101, 34.265743, 23.907454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.378410, 34.369671, 23.845798>,  <42.607197, 34.432026, 23.808805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.378410, 34.369671, 23.845798>,  <41.997101, 34.265743, 23.907454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378410, 34.369671, 23.845798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292571, -0.666880, 0.685327,
		0.075267, -0.698403, -0.711736,
		0.953277, 0.259816, -0.154138,
		42.664394, 34.447617, 23.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328445, 33.577332, 23.941608>,  <41.997101, 34.265743, 23.907454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328445, 33.577332, 23.941608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613548, 33.855122, 23.980974>,  <42.784611, 34.021797, 24.004593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613548, 33.855122, 23.980974>,  <42.328445, 33.577332, 23.941608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613548, 33.855122, 23.980974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450991, -0.561210, 0.694010,
		0.537204, -0.450275, -0.713207,
		0.712754, 0.694475, 0.098414,
		42.827374, 34.063465, 24.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862022, 33.216087, 24.158188>,  <42.328445, 33.577332, 23.941608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862022, 33.216087, 24.158188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.978489, 33.574436, 24.292435>,  <43.048370, 33.789444, 24.372982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.978489, 33.574436, 24.292435>,  <42.862022, 33.216087, 24.158188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978489, 33.574436, 24.292435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441917, -0.437096, 0.783362,
		0.848487, -0.079775, -0.523168,
		0.291167, 0.895870, 0.335616,
		43.065838, 33.843197, 24.393120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568249, 33.170715, 24.322773>,  <42.862022, 33.216087, 24.158188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568249, 33.170715, 24.322773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.451859, 33.492481, 24.529947>,  <43.382023, 33.685539, 24.654251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.451859, 33.492481, 24.529947>,  <43.568249, 33.170715, 24.322773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451859, 33.492481, 24.529947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560409, -0.295462, 0.773721,
		0.775420, 0.515389, -0.364827,
		-0.290975, 0.804411, 0.517935,
		43.364567, 33.733803, 24.685328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106621, 33.230186, 24.732960>,  <43.568249, 33.170715, 24.322773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106621, 33.230186, 24.732960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.819679, 33.454891, 24.897797>,  <43.647514, 33.589714, 24.996698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.819679, 33.454891, 24.897797>,  <44.106621, 33.230186, 24.732960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819679, 33.454891, 24.897797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206566, -0.393399, 0.895861,
		0.665379, 0.727777, 0.166166,
		-0.717357, 0.561763, 0.412094,
		43.604473, 33.623421, 25.021425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273849, 33.314854, 25.510954>,  <44.106621, 33.230186, 24.732960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273849, 33.314854, 25.510954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.885254, 33.409630, 25.507847>,  <43.652096, 33.466496, 25.505981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.885254, 33.409630, 25.507847>,  <44.273849, 33.314854, 25.510954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885254, 33.409630, 25.507847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140402, -0.548645, 0.824182,
		0.191020, 0.801778, 0.566272,
		-0.971493, 0.236941, -0.007769,
		43.593807, 33.480713, 25.505516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114296, 33.686142, 26.159714>,  <44.273849, 33.314854, 25.510954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114296, 33.686142, 26.159714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.747097, 33.577984, 26.043667>,  <43.526779, 33.513088, 25.974039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.747097, 33.577984, 26.043667>,  <44.114296, 33.686142, 26.159714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747097, 33.577984, 26.043667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122155, -0.503186, 0.855501,
		-0.377305, 0.820787, 0.428893,
		-0.917997, -0.270393, -0.290118,
		43.471699, 33.496864, 25.956631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541691, 33.896698, 26.635937>,  <44.114296, 33.686142, 26.159714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541691, 33.896698, 26.635937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410286, 33.557598, 26.469368>,  <43.331444, 33.354137, 26.369427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410286, 33.557598, 26.469368>,  <43.541691, 33.896698, 26.635937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410286, 33.557598, 26.469368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081116, -0.464584, 0.881806,
		-0.941009, 0.255908, 0.221388,
		-0.328515, -0.847746, -0.416420,
		43.311733, 33.303276, 26.344442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291740, 34.530453, 26.979477>,  <43.541691, 33.896698, 26.635937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291740, 34.530453, 26.979477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.463573, 34.812523, 27.205111>,  <43.566673, 34.981766, 27.340490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.463573, 34.812523, 27.205111>,  <43.291740, 34.530453, 26.979477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463573, 34.812523, 27.205111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178450, 0.678632, -0.712470,
		-0.885220, 0.205403, 0.417366,
		0.429582, 0.705172, 0.564085,
		43.592449, 35.024075, 27.374336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845722, 35.102859, 26.890087>,  <43.291740, 34.530453, 26.979477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845722, 35.102859, 26.890087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.199600, 35.244675, 27.011162>,  <43.411926, 35.329762, 27.083807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.199600, 35.244675, 27.011162>,  <42.845722, 35.102859, 26.890087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199600, 35.244675, 27.011162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084118, 0.760057, -0.644389,
		-0.458515, 0.544627, 0.702243,
		0.884696, 0.354533, 0.302685,
		43.465008, 35.351036, 27.101967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745926, 35.796009, 26.929047>,  <42.845722, 35.102859, 26.890087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745926, 35.796009, 26.929047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.138531, 35.732319, 26.886549>,  <43.374092, 35.694107, 26.861052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.138531, 35.732319, 26.886549>,  <42.745926, 35.796009, 26.929047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138531, 35.732319, 26.886549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038163, 0.706674, -0.706510,
		0.187571, 0.689391, 0.699683,
		0.981509, -0.159222, -0.106242,
		43.432983, 35.684551, 26.854677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043819, 36.448627, 27.113964>,  <42.745926, 35.796009, 26.929047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043819, 36.448627, 27.113964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.302814, 36.243851, 26.888159>,  <43.458210, 36.120983, 26.752676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.302814, 36.243851, 26.888159>,  <43.043819, 36.448627, 27.113964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302814, 36.243851, 26.888159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040653, 0.716500, -0.696401,
		0.760991, 0.473860, 0.443113,
		0.647487, -0.511942, -0.564514,
		43.497059, 36.090267, 26.718805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345928, 36.992672, 26.861195>,  <43.043819, 36.448627, 27.113964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345928, 36.992672, 26.861195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.482681, 36.694622, 26.632141>,  <43.564732, 36.515793, 26.494709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.482681, 36.694622, 26.632141>,  <43.345928, 36.992672, 26.861195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482681, 36.694622, 26.632141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004654, 0.610685, -0.791860,
		0.939733, 0.268054, 0.212248,
		0.341878, -0.745125, -0.572633,
		43.585243, 36.471085, 26.460352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900146, 37.208412, 26.588219>,  <43.345928, 36.992672, 26.861195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900146, 37.208412, 26.588219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.767281, 36.916386, 26.349331>,  <43.687561, 36.741169, 26.205997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.767281, 36.916386, 26.349331>,  <43.900146, 37.208412, 26.588219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767281, 36.916386, 26.349331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032767, 0.623858, -0.780851,
		0.942652, -0.278941, -0.183302,
		-0.332166, -0.730064, -0.597221,
		43.667629, 36.697365, 26.170164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150257, 37.452606, 25.966829>,  <43.900146, 37.208412, 26.588219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150257, 37.452606, 25.966829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856197, 37.200932, 25.865885>,  <43.679764, 37.049927, 25.805317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856197, 37.200932, 25.865885>,  <44.150257, 37.452606, 25.966829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856197, 37.200932, 25.865885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193156, 0.551246, -0.811677,
		0.649810, -0.547954, -0.526777,
		-0.735145, -0.629186, -0.252364,
		43.635654, 37.012177, 25.790176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281551, 37.395187, 25.253397>,  <44.150257, 37.452606, 25.966829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281551, 37.395187, 25.253397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.909687, 37.265121, 25.322672>,  <43.686569, 37.187084, 25.364237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.909687, 37.265121, 25.322672>,  <44.281551, 37.395187, 25.253397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909687, 37.265121, 25.322672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313939, 0.453223, -0.834285,
		0.192786, -0.829975, -0.523427,
		-0.929664, -0.325163, 0.173187,
		43.630787, 37.167572, 25.374628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986473, 37.071152, 24.579750>,  <44.281551, 37.395187, 25.253397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986473, 37.071152, 24.579750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.677387, 37.170403, 24.813448>,  <43.491936, 37.229954, 24.953667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.677387, 37.170403, 24.813448>,  <43.986473, 37.071152, 24.579750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677387, 37.170403, 24.813448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485978, 0.360841, -0.796002,
		-0.408328, -0.899014, -0.158244,
		-0.772718, 0.248126, 0.584243,
		43.445572, 37.244839, 24.988720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382393, 36.839451, 24.214230>,  <43.986473, 37.071152, 24.579750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382393, 36.839451, 24.214230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.243984, 37.107319, 24.477079>,  <43.160938, 37.268040, 24.634790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.243984, 37.107319, 24.477079>,  <43.382393, 36.839451, 24.214230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243984, 37.107319, 24.477079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552599, 0.420552, -0.719563,
		-0.758222, -0.612114, 0.224535,
		-0.346026, 0.669666, 0.657125,
		43.140175, 37.308220, 24.674217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610214, 36.955204, 24.129845>,  <43.382393, 36.839451, 24.214230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610214, 36.955204, 24.129845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.751228, 37.285477, 24.306011>,  <42.835835, 37.483639, 24.411711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.751228, 37.285477, 24.306011>,  <42.610214, 36.955204, 24.129845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751228, 37.285477, 24.306011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433886, 0.561209, -0.704832,
		-0.829134, 0.057386, 0.556097,
		0.352533, 0.825682, 0.440418,
		42.856987, 37.533180, 24.438137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145336, 37.386284, 24.026421>,  <42.610214, 36.955204, 24.129845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145336, 37.386284, 24.026421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.436348, 37.638035, 24.135668>,  <42.610954, 37.789085, 24.201216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.436348, 37.638035, 24.135668>,  <42.145336, 37.386284, 24.026421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436348, 37.638035, 24.135668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452137, 0.739234, -0.499104,
		-0.516023, 0.239624, 0.822375,
		0.727525, 0.629376, 0.273119,
		42.654606, 37.826847, 24.217604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805279, 37.979084, 24.220392>,  <42.145336, 37.386284, 24.026421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805279, 37.979084, 24.220392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.174759, 38.111103, 24.142569>,  <42.396446, 38.190315, 24.095875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.174759, 38.111103, 24.142569>,  <41.805279, 37.979084, 24.220392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174759, 38.111103, 24.142569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381069, 0.738932, -0.555667,
		-0.039630, 0.587409, 0.808320,
		0.923697, 0.330046, -0.194559,
		42.451866, 38.210117, 24.084200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853111, 38.787136, 24.216494>,  <41.805279, 37.979084, 24.220392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853111, 38.787136, 24.216494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.176254, 38.667179, 24.013540>,  <42.370140, 38.595203, 23.891769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.176254, 38.667179, 24.013540>,  <41.853111, 38.787136, 24.216494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176254, 38.667179, 24.013540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215367, 0.651133, -0.727766,
		0.548624, 0.697202, 0.461435,
		0.807855, -0.299892, -0.507381,
		42.418610, 38.577213, 23.861326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381531, 39.289646, 24.471760>,  <41.853111, 38.787136, 24.216494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381531, 39.289646, 24.471760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.266232, 39.601742, 24.693798>,  <42.197052, 39.789001, 24.827021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.266232, 39.601742, 24.693798>,  <42.381531, 39.289646, 24.471760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266232, 39.601742, 24.693798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195914, -0.519386, 0.831779,
		0.937299, 0.348513, -0.003147,
		-0.288251, 0.780242, 0.555098,
		42.179756, 39.835815, 24.860327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829823, 39.334534, 25.042616>,  <42.381531, 39.289646, 24.471760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829823, 39.334534, 25.042616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.490742, 39.517178, 25.150623>,  <42.287292, 39.626766, 25.215427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.490742, 39.517178, 25.150623>,  <42.829823, 39.334534, 25.042616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490742, 39.517178, 25.150623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142511, -0.294278, 0.945035,
		0.510976, 0.839586, 0.184387,
		-0.847699, 0.456613, 0.270020,
		42.236431, 39.654163, 25.231628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976162, 39.716412, 25.616133>,  <42.829823, 39.334534, 25.042616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976162, 39.716412, 25.616133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.580212, 39.667706, 25.645321>,  <42.342644, 39.638481, 25.662834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.580212, 39.667706, 25.645321>,  <42.976162, 39.716412, 25.616133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580212, 39.667706, 25.645321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117487, -0.414182, 0.902579,
		-0.079681, 0.902012, 0.424294,
		-0.989873, -0.121767, 0.072972,
		42.283249, 39.631176, 25.667213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807827, 40.040886, 26.189297>,  <42.976162, 39.716412, 25.616133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807827, 40.040886, 26.189297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.515972, 39.774025, 26.129253>,  <42.340858, 39.613907, 26.093227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.515972, 39.774025, 26.129253>,  <42.807827, 40.040886, 26.189297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515972, 39.774025, 26.129253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115470, -0.336557, 0.934556,
		-0.674016, 0.664553, 0.322601,
		-0.729637, -0.667157, -0.150109,
		42.297081, 39.573879, 26.084221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452522, 40.171848, 26.814175>,  <42.807827, 40.040886, 26.189297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452522, 40.171848, 26.814175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.276833, 39.846977, 26.660574>,  <42.171421, 39.652054, 26.568413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.276833, 39.846977, 26.660574>,  <42.452522, 40.171848, 26.814175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276833, 39.846977, 26.660574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021151, -0.436669, 0.899373,
		-0.898130, 0.386901, 0.208972,
		-0.439221, -0.812174, -0.384003,
		42.145065, 39.603325, 26.545374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898003, 40.033943, 27.230274>,  <42.452522, 40.171848, 26.814175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898003, 40.033943, 27.230274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.029457, 39.701115, 27.051546>,  <42.108330, 39.501415, 26.944309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.029457, 39.701115, 27.051546>,  <41.898003, 40.033943, 27.230274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029457, 39.701115, 27.051546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001914, -0.472509, 0.881324,
		-0.944453, -0.290493, -0.153693,
		0.328640, -0.832075, -0.446818,
		42.128048, 39.451492, 26.917501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512669, 39.491787, 27.506088>,  <41.898003, 40.033943, 27.230274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512669, 39.491787, 27.506088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.821869, 39.308182, 27.330919>,  <42.007389, 39.198017, 27.225819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.821869, 39.308182, 27.330919>,  <41.512669, 39.491787, 27.506088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821869, 39.308182, 27.330919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063078, -0.631260, 0.773002,
		-0.631260, -0.625155, -0.459012,
		-0.773002, 0.459012, 0.437923,
		42.053768, 39.170479, 27.199543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407055, 38.803627, 27.705973>,  <41.512669, 39.491787, 27.506088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407055, 38.803627, 27.705973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.790367, 38.834080, 27.595766>,  <42.020355, 38.852352, 27.529642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.790367, 38.834080, 27.595766>,  <41.407055, 38.803627, 27.705973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790367, 38.834080, 27.595766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267509, -0.578489, 0.770578,
		-0.100715, -0.812130, -0.574719,
		0.958278, 0.076133, -0.275514,
		42.077850, 38.856918, 27.513111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640987, 38.072136, 27.670267>,  <41.407055, 38.803627, 27.705973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640987, 38.072136, 27.670267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.995720, 38.256325, 27.685709>,  <42.208561, 38.366840, 27.694973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.995720, 38.256325, 27.685709>,  <41.640987, 38.072136, 27.670267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995720, 38.256325, 27.685709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242966, -0.535725, 0.808682,
		0.393059, -0.707786, -0.586978,
		0.886833, 0.460475, 0.038604,
		42.261768, 38.394466, 27.697290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055695, 37.542774, 27.721085>,  <41.640987, 38.072136, 27.670267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055695, 37.542774, 27.721085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.285355, 37.847404, 27.841320>,  <42.423149, 38.030182, 27.913462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.285355, 37.847404, 27.841320>,  <42.055695, 37.542774, 27.721085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285355, 37.847404, 27.841320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176238, -0.473477, 0.862994,
		0.799560, -0.442510, -0.406065,
		0.574146, 0.761580, 0.300587,
		42.457600, 38.075878, 27.931496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765377, 37.193768, 27.892273>,  <42.055695, 37.542774, 27.721085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765377, 37.193768, 27.892273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.725647, 37.554386, 28.060722>,  <42.701809, 37.770756, 28.161793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.725647, 37.554386, 28.060722>,  <42.765377, 37.193768, 27.892273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725647, 37.554386, 28.060722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288440, -0.378960, 0.879313,
		0.952332, 0.208808, -0.222402,
		-0.099326, 0.901548, 0.421125,
		42.695850, 37.824852, 28.187059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436497, 37.431950, 28.209887>,  <42.765377, 37.193768, 27.892273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436497, 37.431950, 28.209887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.168518, 37.658928, 28.401377>,  <43.007732, 37.795116, 28.516272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.168518, 37.658928, 28.401377>,  <43.436497, 37.431950, 28.209887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168518, 37.658928, 28.401377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433150, -0.224946, 0.872800,
		0.602958, 0.792086, -0.095090,
		-0.669942, 0.567450, 0.478725,
		42.967537, 37.829163, 28.544994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796619, 37.866665, 28.542183>,  <43.436497, 37.431950, 28.209887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796619, 37.866665, 28.542183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.459820, 37.907459, 28.754086>,  <43.257740, 37.931938, 28.881227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.459820, 37.907459, 28.754086>,  <43.796619, 37.866665, 28.542183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459820, 37.907459, 28.754086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509727, -0.171221, 0.843126,
		0.176696, 0.979940, 0.092180,
		-0.841996, 0.101990, 0.529755,
		43.207222, 37.938057, 28.913012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977585, 38.327801, 29.064722>,  <43.796619, 37.866665, 28.542183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977585, 38.327801, 29.064722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.680256, 38.084274, 29.175585>,  <43.501858, 37.938156, 29.242104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.680256, 38.084274, 29.175585>,  <43.977585, 38.327801, 29.064722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680256, 38.084274, 29.175585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444514, -0.139932, 0.884775,
		-0.499884, 0.780871, 0.374642,
		-0.743319, -0.608818, 0.277158,
		43.457260, 37.901630, 29.258732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.065048, 41.586941, 26.817951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.949520, 41.335747, 26.528894>,  <38.880203, 41.185028, 26.355461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.949520, 41.335747, 26.528894>,  <39.065048, 41.586941, 26.817951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949520, 41.335747, 26.528894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330241, 0.643133, -0.690885,
		0.898622, -0.438189, 0.021635,
		-0.288824, -0.627989, -0.722641,
		38.862873, 41.147350, 26.312101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497963, 41.882095, 26.322609>,  <39.065048, 41.586941, 26.817951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497963, 41.882095, 26.322609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249802, 41.621078, 26.148582>,  <39.100903, 41.464470, 26.044167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249802, 41.621078, 26.148582>,  <39.497963, 41.882095, 26.322609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249802, 41.621078, 26.148582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127218, 0.463655, -0.876835,
		0.773893, -0.599343, -0.204640,
		-0.620407, -0.652542, -0.435067,
		39.063679, 41.425316, 26.018063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783409, 41.778297, 25.687250>,  <39.497963, 41.882095, 26.322609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783409, 41.778297, 25.687250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.407475, 41.664257, 25.611965>,  <39.181915, 41.595833, 25.566793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.407475, 41.664257, 25.611965>,  <39.783409, 41.778297, 25.687250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407475, 41.664257, 25.611965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011543, 0.524121, -0.851566,
		0.341428, -0.802505, -0.489297,
		-0.939837, -0.285100, -0.188213,
		39.125523, 41.578728, 25.555502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812550, 41.533600, 25.063814>,  <39.783409, 41.778297, 25.687250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812550, 41.533600, 25.063814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421268, 41.599590, 25.114241>,  <39.186501, 41.639183, 25.144497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421268, 41.599590, 25.114241>,  <39.812550, 41.533600, 25.063814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421268, 41.599590, 25.114241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045133, 0.423698, -0.904678,
		-0.202666, -0.890653, -0.407019,
		-0.978207, 0.164978, 0.126067,
		39.127808, 41.649082, 25.152061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489281, 41.356266, 24.389389>,  <39.812550, 41.533600, 25.063814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489281, 41.356266, 24.389389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.233238, 41.590714, 24.588076>,  <39.079613, 41.731380, 24.707287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.233238, 41.590714, 24.588076>,  <39.489281, 41.356266, 24.389389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233238, 41.590714, 24.588076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099414, 0.577901, -0.810029,
		-0.761826, -0.567886, -0.311651,
		-0.640108, 0.586119, 0.496716,
		39.041206, 41.766548, 24.737091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038555, 41.499203, 23.852274>,  <39.489281, 41.356266, 24.389389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038555, 41.499203, 23.852274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979401, 41.767944, 24.142582>,  <38.943909, 41.929188, 24.316767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979401, 41.767944, 24.142582>,  <39.038555, 41.499203, 23.852274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979401, 41.767944, 24.142582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133520, 0.713556, -0.687757,
		-0.979949, -0.198618, -0.015822,
		-0.147891, 0.671854, 0.725769,
		38.935032, 41.969501, 24.360313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327503, 41.832699, 23.708424>,  <39.038555, 41.499203, 23.852274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327503, 41.832699, 23.708424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539261, 42.095024, 23.923702>,  <38.666313, 42.252419, 24.052870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.539261, 42.095024, 23.923702>,  <38.327503, 41.832699, 23.708424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539261, 42.095024, 23.923702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110620, 0.682324, -0.722632,
		-0.841136, 0.323018, 0.433762,
		0.529390, 0.655814, 0.538195,
		38.698078, 42.291767, 24.085161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009205, 42.499393, 23.764624>,  <38.327503, 41.832699, 23.708424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009205, 42.499393, 23.764624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398079, 42.587639, 23.796066>,  <38.631405, 42.640587, 23.814932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398079, 42.587639, 23.796066>,  <38.009205, 42.499393, 23.764624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398079, 42.587639, 23.796066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099676, 0.693501, -0.713528,
		-0.211925, 0.685849, 0.696204,
		0.972190, 0.220609, 0.078607,
		38.689735, 42.653820, 23.819649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003952, 43.164417, 23.694271>,  <38.009205, 42.499393, 23.764624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003952, 43.164417, 23.694271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389328, 43.074554, 23.635885>,  <38.620556, 43.020638, 23.600853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389328, 43.074554, 23.635885>,  <38.003952, 43.164417, 23.694271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389328, 43.074554, 23.635885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023303, 0.613024, -0.789720,
		0.266897, 0.757449, 0.595849,
		0.963443, -0.224659, -0.145964,
		38.678360, 43.007156, 23.592096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210979, 43.656178, 23.282650>,  <38.003952, 43.164417, 23.694271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210979, 43.656178, 23.282650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537136, 43.426422, 23.253757>,  <38.732830, 43.288567, 23.236422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537136, 43.426422, 23.253757>,  <38.210979, 43.656178, 23.282650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537136, 43.426422, 23.253757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223267, 0.427127, -0.876193,
		0.534130, 0.698311, 0.476516,
		0.815388, -0.574391, -0.072231,
		38.781754, 43.254105, 23.232088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750847, 44.120880, 23.076534>,  <38.210979, 43.656178, 23.282650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750847, 44.120880, 23.076534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.918064, 43.777138, 22.958723>,  <39.018394, 43.570892, 22.888037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.918064, 43.777138, 22.958723>,  <38.750847, 44.120880, 23.076534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918064, 43.777138, 22.958723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210291, 0.406957, -0.888912,
		0.883750, 0.309670, 0.350841,
		0.418047, -0.859355, -0.294527,
		39.043480, 43.519333, 22.870365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560894, 44.151306, 22.812759>,  <38.750847, 44.120880, 23.076534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560894, 44.151306, 22.812759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.325050, 43.871922, 22.650522>,  <39.183544, 43.704288, 22.553181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.325050, 43.871922, 22.650522>,  <39.560894, 44.151306, 22.812759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325050, 43.871922, 22.650522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265878, 0.306333, -0.914040,
		0.762672, -0.646765, 0.005090,
		-0.589610, -0.698466, -0.405593,
		39.148167, 43.662380, 22.528845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958267, 43.819412, 22.381618>,  <39.560894, 44.151306, 22.812759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958267, 43.819412, 22.381618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.578815, 43.783680, 22.260210>,  <39.351147, 43.762241, 22.187365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.578815, 43.783680, 22.260210>,  <39.958267, 43.819412, 22.381618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578815, 43.783680, 22.260210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241253, 0.416419, -0.876580,
		0.204700, -0.904773, -0.373475,
		-0.948628, -0.089334, -0.303521,
		39.294228, 43.756878, 22.169153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919445, 43.584682, 21.633818>,  <39.958267, 43.819412, 22.381618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919445, 43.584682, 21.633818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.595768, 43.793606, 21.741451>,  <39.401562, 43.918961, 21.806030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.595768, 43.793606, 21.741451>,  <39.919445, 43.584682, 21.633818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595768, 43.793606, 21.741451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147490, 0.623888, -0.767471,
		-0.568731, -0.581344, -0.581879,
		-0.809192, 0.522305, 0.269082,
		39.353012, 43.950298, 21.822176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088657, 43.589607, 20.882055>,  <39.919445, 43.584682, 21.633818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088657, 43.589607, 20.882055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.439457, 43.479134, 20.724783>,  <40.649937, 43.412849, 20.630419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.439457, 43.479134, 20.724783>,  <40.088657, 43.589607, 20.882055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439457, 43.479134, 20.724783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273052, -0.386863, 0.880784,
		-0.395377, -0.879803, -0.263861,
		0.876995, -0.276194, -0.393188,
		40.702557, 43.396278, 20.606829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219299, 42.893555, 21.061272>,  <40.088657, 43.589607, 20.882055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219299, 42.893555, 21.061272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587212, 43.016537, 20.963732>,  <40.807961, 43.090328, 20.905207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.587212, 43.016537, 20.963732>,  <40.219299, 42.893555, 21.061272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587212, 43.016537, 20.963732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387260, -0.610707, 0.690700,
		0.063441, -0.729730, -0.680786,
		0.919786, 0.307460, -0.243851,
		40.863148, 43.108776, 20.890577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592484, 42.224625, 20.925495>,  <40.219299, 42.893555, 21.061272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592484, 42.224625, 20.925495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851166, 42.512432, 21.026739>,  <41.006374, 42.685116, 21.087486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851166, 42.512432, 21.026739>,  <40.592484, 42.224625, 20.925495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851166, 42.512432, 21.026739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458022, -0.631687, 0.625450,
		0.609910, -0.288551, -0.738071,
		0.646704, 0.719521, 0.253110,
		41.045177, 42.728287, 21.102673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348061, 41.977409, 20.845768>,  <40.592484, 42.224625, 20.925495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348061, 41.977409, 20.845768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.360443, 42.273838, 21.114052>,  <41.367874, 42.451694, 21.275023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.360443, 42.273838, 21.114052>,  <41.348061, 41.977409, 20.845768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360443, 42.273838, 21.114052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574391, -0.562354, 0.594839,
		0.817995, 0.366836, -0.443075,
		0.030957, 0.741074, 0.670710,
		41.369732, 42.496159, 21.315266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989891, 41.864944, 21.146412>,  <41.348061, 41.977409, 20.845768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989891, 41.864944, 21.146412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.807529, 42.094650, 21.418404>,  <41.698112, 42.232475, 21.581598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.807529, 42.094650, 21.418404>,  <41.989891, 41.864944, 21.146412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807529, 42.094650, 21.418404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538780, -0.430039, 0.724419,
		0.708426, 0.696624, -0.113346,
		-0.455905, 0.574266, 0.679978,
		41.670757, 42.266930, 21.622396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489048, 42.007351, 21.726841>,  <41.989891, 41.864944, 21.146412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489048, 42.007351, 21.726841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.121567, 42.074654, 21.869770>,  <41.901077, 42.115036, 21.955528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.121567, 42.074654, 21.869770>,  <42.489048, 42.007351, 21.726841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121567, 42.074654, 21.869770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272009, -0.386410, 0.881305,
		0.286359, 0.906850, 0.309227,
		-0.918700, 0.168257, 0.357323,
		41.845955, 42.125130, 21.976967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571674, 42.264641, 22.277435>,  <42.489048, 42.007351, 21.726841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571674, 42.264641, 22.277435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.194305, 42.156849, 22.354733>,  <41.967884, 42.092175, 22.401110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.194305, 42.156849, 22.354733>,  <42.571674, 42.264641, 22.277435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194305, 42.156849, 22.354733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257956, -0.230211, 0.938329,
		-0.208373, 0.935085, 0.286700,
		-0.943419, -0.269479, 0.193241,
		41.911282, 42.076004, 22.412704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348919, 42.562851, 22.975483>,  <42.571674, 42.264641, 22.277435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348919, 42.562851, 22.975483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133755, 42.239639, 22.879364>,  <42.004658, 42.045712, 22.821692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.133755, 42.239639, 22.879364>,  <42.348919, 42.562851, 22.975483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133755, 42.239639, 22.879364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195403, -0.396797, 0.896867,
		-0.820045, 0.435476, 0.371331,
		-0.537907, -0.808030, -0.240298,
		41.972382, 41.997231, 22.807274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006042, 42.279655, 23.691591>,  <42.348919, 42.562851, 22.975483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006042, 42.279655, 23.691591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.953552, 41.971336, 23.442225>,  <41.922058, 41.786346, 23.292604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.953552, 41.971336, 23.442225>,  <42.006042, 42.279655, 23.691591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953552, 41.971336, 23.442225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177884, -0.600342, 0.779710,
		-0.975262, 0.213217, -0.058330,
		-0.131229, -0.770797, -0.623418,
		41.914185, 41.740097, 23.255199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481869, 41.953556, 24.018579>,  <42.006042, 42.279655, 23.691591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481869, 41.953556, 24.018579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.647770, 41.686562, 23.771212>,  <41.747311, 41.526363, 23.622791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.647770, 41.686562, 23.771212>,  <41.481869, 41.953556, 24.018579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647770, 41.686562, 23.771212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051549, -0.695775, 0.716407,
		-0.908473, -0.265252, -0.322983,
		0.414752, -0.667486, -0.618420,
		41.772194, 41.486317, 23.585686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113583, 41.430416, 24.243971>,  <41.481869, 41.953556, 24.018579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113583, 41.430416, 24.243971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.436417, 41.290264, 24.053875>,  <41.630116, 41.206173, 23.939817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.436417, 41.290264, 24.053875>,  <41.113583, 41.430416, 24.243971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436417, 41.290264, 24.053875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060867, -0.751232, 0.657225,
		-0.587293, -0.559361, -0.584980,
		0.807083, -0.350378, -0.475240,
		41.678539, 41.185150, 23.911303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927383, 40.764057, 24.015921>,  <41.113583, 41.430416, 24.243971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927383, 40.764057, 24.015921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326397, 40.786400, 24.032890>,  <41.565807, 40.799805, 24.043072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326397, 40.786400, 24.032890>,  <40.927383, 40.764057, 24.015921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326397, 40.786400, 24.032890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004988, -0.659769, 0.751451,
		0.069967, -0.749389, -0.658423,
		0.997537, 0.055861, 0.042424,
		41.625656, 40.803158, 24.045618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145214, 40.112625, 23.995316>,  <40.927383, 40.764057, 24.015921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145214, 40.112625, 23.995316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462261, 40.297298, 24.154621>,  <41.652489, 40.408100, 24.250204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.462261, 40.297298, 24.154621>,  <41.145214, 40.112625, 23.995316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462261, 40.297298, 24.154621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044622, -0.695359, 0.717276,
		0.608089, -0.550752, -0.571752,
		0.792614, 0.461681, 0.398265,
		41.700047, 40.435802, 24.274101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669193, 39.529160, 24.102175>,  <41.145214, 40.112625, 23.995316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669193, 39.529160, 24.102175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.789139, 39.834122, 24.331547>,  <41.861107, 40.017097, 24.469170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.789139, 39.834122, 24.331547>,  <41.669193, 39.529160, 24.102175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789139, 39.834122, 24.331547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174210, -0.634747, 0.752826,
		0.937941, -0.125846, -0.323155,
		0.299862, 0.762403, 0.573432,
		41.879097, 40.062843, 24.503576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255745, 39.508789, 23.743170>,  <41.669193, 39.529160, 24.102175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255745, 39.508789, 23.743170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.368095, 39.176186, 23.551462>,  <42.435505, 38.976624, 23.436438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.368095, 39.176186, 23.551462>,  <42.255745, 39.508789, 23.743170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368095, 39.176186, 23.551462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099713, 0.471389, -0.876271,
		0.954551, 0.293911, 0.049489,
		0.280874, -0.831510, -0.479271,
		42.452358, 38.926731, 23.407681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766544, 39.650616, 23.279455>,  <42.255745, 39.508789, 23.743170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766544, 39.650616, 23.279455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.593819, 39.313152, 23.151844>,  <42.490181, 39.110676, 23.075277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.593819, 39.313152, 23.151844>,  <42.766544, 39.650616, 23.279455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593819, 39.313152, 23.151844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049022, 0.375133, -0.925674,
		0.900627, -0.384084, -0.203347,
		-0.431818, -0.843655, -0.319027,
		42.464272, 39.060055, 23.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082405, 39.567402, 22.650404>,  <42.766544, 39.650616, 23.279455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082405, 39.567402, 22.650404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.774384, 39.313522, 22.624594>,  <42.589569, 39.161194, 22.609108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.774384, 39.313522, 22.624594>,  <43.082405, 39.567402, 22.650404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774384, 39.313522, 22.624594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179461, 0.312562, -0.932791,
		0.612213, -0.706723, -0.354595,
		-0.770058, -0.634703, -0.064525,
		42.543365, 39.123112, 22.605236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163048, 39.221619, 22.053530>,  <43.082405, 39.567402, 22.650404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163048, 39.221619, 22.053530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.776005, 39.186321, 22.148151>,  <42.543781, 39.165142, 22.204924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.776005, 39.186321, 22.148151>,  <43.163048, 39.221619, 22.053530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776005, 39.186321, 22.148151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250589, 0.221279, -0.942465,
		0.030820, -0.971210, -0.236223,
		-0.967603, -0.088242, 0.236554,
		42.485725, 39.159847, 22.219118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948830, 38.781311, 21.591982>,  <43.163048, 39.221619, 22.053530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948830, 38.781311, 21.591982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.623569, 38.984123, 21.706318>,  <42.428413, 39.105812, 21.774920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.623569, 38.984123, 21.706318>,  <42.948830, 38.781311, 21.591982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623569, 38.984123, 21.706318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152629, 0.288158, -0.945341,
		-0.561687, -0.812331, -0.156928,
		-0.813149, 0.507034, 0.285840,
		42.379623, 39.136234, 21.792070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636562, 38.611214, 21.047031>,  <42.948830, 38.781311, 21.591982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636562, 38.611214, 21.047031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.430138, 38.912811, 21.209597>,  <42.306282, 39.093769, 21.307137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.430138, 38.912811, 21.209597>,  <42.636562, 38.611214, 21.047031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430138, 38.912811, 21.209597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172270, 0.373417, -0.911528,
		-0.839049, -0.540417, -0.062815,
		-0.516062, 0.753995, 0.406413,
		42.275318, 39.139011, 21.331520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020821, 38.761765, 20.598909>,  <42.636562, 38.611214, 21.047031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020821, 38.761765, 20.598909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.092464, 39.092583, 20.812046>,  <42.135452, 39.291073, 20.939928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.092464, 39.092583, 20.812046>,  <42.020821, 38.761765, 20.598909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092464, 39.092583, 20.812046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166955, 0.508194, -0.844905,
		-0.969559, 0.240293, -0.047055,
		0.179111, 0.827042, 0.532842,
		42.146198, 39.340694, 20.971899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269215, 38.563347, 20.895250>,  <42.020821, 38.761765, 20.598909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269215, 38.563347, 20.895250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177345, 38.248222, 20.666651>,  <41.122223, 38.059147, 20.529491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177345, 38.248222, 20.666651>,  <41.269215, 38.563347, 20.895250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177345, 38.248222, 20.666651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286067, -0.615902, 0.734051,
		-0.930277, 0.005105, 0.366821,
		-0.229674, -0.787806, -0.571499,
		41.108444, 38.011879, 20.495201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884323, 38.123573, 21.299314>,  <41.269215, 38.563347, 20.895250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884323, 38.123573, 21.299314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016788, 37.890240, 21.002653>,  <41.096268, 37.750240, 20.824656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016788, 37.890240, 21.002653>,  <40.884323, 38.123573, 21.299314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016788, 37.890240, 21.002653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247715, -0.704686, 0.664871,
		-0.910478, -0.403898, -0.088863,
		0.331161, -0.583338, -0.741653,
		41.116138, 37.715237, 20.780157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489853, 37.495335, 21.419048>,  <40.884323, 38.123573, 21.299314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489853, 37.495335, 21.419048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820621, 37.432808, 21.202986>,  <41.019081, 37.395290, 21.073347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820621, 37.432808, 21.202986>,  <40.489853, 37.495335, 21.419048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820621, 37.432808, 21.202986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165453, -0.850429, 0.499395,
		-0.537430, -0.502330, -0.677373,
		0.826919, -0.156316, -0.540158,
		41.068699, 37.385914, 21.040937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549076, 36.806011, 21.441706>,  <40.489853, 37.495335, 21.419048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549076, 36.806011, 21.441706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910507, 36.940254, 21.335192>,  <41.127365, 37.020802, 21.271282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910507, 36.940254, 21.335192>,  <40.549076, 36.806011, 21.441706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910507, 36.940254, 21.335192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427617, -0.744527, 0.512663,
		-0.026202, -0.577101, -0.816252,
		0.903580, 0.335611, -0.266287,
		41.181580, 37.040939, 21.255306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833740, 36.237720, 21.203642>,  <40.549076, 36.806011, 21.441706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833740, 36.237720, 21.203642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145424, 36.471722, 21.293629>,  <41.332436, 36.612122, 21.347620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145424, 36.471722, 21.293629>,  <40.833740, 36.237720, 21.203642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145424, 36.471722, 21.293629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462612, -0.778977, 0.423303,
		0.422876, -0.225768, -0.877613,
		0.779208, 0.584999, 0.224968,
		41.379185, 36.647221, 21.361118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281643, 35.870823, 21.067953>,  <40.833740, 36.237720, 21.203642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281643, 35.870823, 21.067953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479160, 36.145535, 21.281307>,  <41.597672, 36.310364, 21.409319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479160, 36.145535, 21.281307>,  <41.281643, 35.870823, 21.067953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479160, 36.145535, 21.281307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624736, -0.706847, 0.331771,
		0.604877, 0.169400, -0.778092,
		0.493790, 0.686783, 0.533386,
		41.627296, 36.351570, 21.441322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048378, 35.665504, 20.954483>,  <41.281643, 35.870823, 21.067953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048378, 35.665504, 20.954483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976925, 35.866528, 21.292839>,  <41.934052, 35.987141, 21.495853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976925, 35.866528, 21.292839>,  <42.048378, 35.665504, 20.954483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976925, 35.866528, 21.292839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506611, -0.690017, 0.516935,
		0.843466, 0.520879, -0.131340,
		-0.178633, 0.502555, 0.845889,
		41.923336, 36.017296, 21.546606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.718006, 40.590237, 20.865473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989357, 40.846886, 21.008650>,  <38.152168, 41.000877, 21.094557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989357, 40.846886, 21.008650>,  <37.718006, 40.590237, 20.865473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989357, 40.846886, 21.008650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496729, -0.759498, 0.420027,
		0.541357, -0.107136, -0.833939,
		0.678375, 0.641626, 0.357943,
		38.192871, 41.039375, 21.116034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360394, 40.278023, 20.747561>,  <37.718006, 40.590237, 20.865473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360394, 40.278023, 20.747561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.393734, 40.539215, 21.048668>,  <38.413738, 40.695930, 21.229332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.393734, 40.539215, 21.048668>,  <38.360394, 40.278023, 20.747561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393734, 40.539215, 21.048668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458046, -0.695977, 0.553001,
		0.885012, 0.298709, -0.357109,
		0.083353, 0.652985, 0.752770,
		38.418739, 40.735111, 21.274500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951500, 40.097130, 21.054871>,  <38.360394, 40.278023, 20.747561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951500, 40.097130, 21.054871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.795013, 40.329914, 21.340044>,  <38.701122, 40.469585, 21.511148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.795013, 40.329914, 21.340044>,  <38.951500, 40.097130, 21.054871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795013, 40.329914, 21.340044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420174, -0.576272, 0.700974,
		0.818783, 0.573786, -0.019080,
		-0.391214, 0.581963, 0.712931,
		38.677650, 40.504501, 21.553923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359287, 40.032043, 21.591341>,  <38.951500, 40.097130, 21.054871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359287, 40.032043, 21.591341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030273, 40.171848, 21.770800>,  <38.832867, 40.255730, 21.878475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030273, 40.171848, 21.770800>,  <39.359287, 40.032043, 21.591341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030273, 40.171848, 21.770800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146776, -0.631690, 0.761200,
		0.549454, 0.691961, 0.468284,
		-0.822531, 0.349511, 0.448648,
		38.783516, 40.276703, 21.905394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528084, 40.246929, 22.384043>,  <39.359287, 40.032043, 21.591341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528084, 40.246929, 22.384043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132782, 40.188805, 22.365126>,  <38.895599, 40.153931, 22.353775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.132782, 40.188805, 22.365126>,  <39.528084, 40.246929, 22.384043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132782, 40.188805, 22.365126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027144, -0.471479, 0.881460,
		-0.150384, 0.869823, 0.469886,
		-0.988255, -0.145312, -0.047292,
		38.836304, 40.145210, 22.350939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142948, 40.432980, 23.058012>,  <39.528084, 40.246929, 22.384043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142948, 40.432980, 23.058012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.890316, 40.187393, 22.868635>,  <38.738735, 40.040039, 22.755009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.890316, 40.187393, 22.868635>,  <39.142948, 40.432980, 23.058012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890316, 40.187393, 22.868635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007180, -0.605992, 0.795438,
		-0.775278, 0.505781, 0.378323,
		-0.631579, -0.613970, -0.473444,
		38.700844, 40.003201, 22.726603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667015, 40.324562, 23.479094>,  <39.142948, 40.432980, 23.058012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667015, 40.324562, 23.479094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625462, 40.006012, 23.240767>,  <38.600529, 39.814880, 23.097771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.625462, 40.006012, 23.240767>,  <38.667015, 40.324562, 23.479094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625462, 40.006012, 23.240767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055424, -0.593491, 0.802930,
		-0.993044, 0.116433, 0.017515,
		-0.103883, -0.796374, -0.595816,
		38.594296, 39.767101, 23.062021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097996, 40.036259, 23.736526>,  <38.667015, 40.324562, 23.479094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097996, 40.036259, 23.736526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266537, 39.757378, 23.504534>,  <38.367661, 39.590050, 23.365337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266537, 39.757378, 23.504534>,  <38.097996, 40.036259, 23.736526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266537, 39.757378, 23.504534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211500, -0.697430, 0.684733,
		-0.881892, -0.165846, -0.441319,
		0.421349, -0.697199, -0.579981,
		38.392941, 39.548218, 23.330540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576088, 39.419205, 23.779938>,  <38.097996, 40.036259, 23.736526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576088, 39.419205, 23.779938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943867, 39.305801, 23.670948>,  <38.164536, 39.237759, 23.605555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.943867, 39.305801, 23.670948>,  <37.576088, 39.419205, 23.779938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943867, 39.305801, 23.670948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071525, -0.801968, 0.593069,
		-0.386655, -0.525807, -0.757645,
		0.919447, -0.283504, -0.272476,
		38.219700, 39.220749, 23.589205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448090, 38.769039, 23.791550>,  <37.576088, 39.419205, 23.779938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448090, 38.769039, 23.791550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.847473, 38.770874, 23.769445>,  <38.087105, 38.771973, 23.756184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.847473, 38.770874, 23.769445>,  <37.448090, 38.769039, 23.791550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847473, 38.770874, 23.769445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037990, -0.782485, 0.621510,
		-0.040391, -0.622653, -0.781455,
		0.998461, 0.004584, -0.055260,
		38.147011, 38.772251, 23.752867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711075, 38.115658, 23.518606>,  <37.448090, 38.769039, 23.791550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711075, 38.115658, 23.518606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003101, 38.273640, 23.741682>,  <38.178318, 38.368427, 23.875528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003101, 38.273640, 23.741682>,  <37.711075, 38.115658, 23.518606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003101, 38.273640, 23.741682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093291, -0.866041, 0.491193,
		0.676980, -0.306575, -0.669111,
		0.730065, 0.394950, 0.557691,
		38.222122, 38.392124, 23.908989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071556, 37.551514, 23.682388>,  <37.711075, 38.115658, 23.518606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071556, 37.551514, 23.682388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.170223, 37.830597, 23.951418>,  <38.229424, 37.998047, 24.112835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.170223, 37.830597, 23.951418>,  <38.071556, 37.551514, 23.682388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170223, 37.830597, 23.951418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027455, -0.698772, 0.714817,
		0.968712, -0.157855, -0.191519,
		0.246665, 0.697710, 0.672575,
		38.244225, 38.039909, 24.153191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580013, 37.210419, 23.128544>,  <38.071556, 37.551514, 23.682388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580013, 37.210419, 23.128544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373005, 36.899376, 22.985710>,  <38.248802, 36.712749, 22.900009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373005, 36.899376, 22.985710>,  <38.580013, 37.210419, 23.128544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373005, 36.899376, 22.985710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303643, 0.557046, -0.772982,
		0.799986, -0.291605, -0.524394,
		-0.517517, -0.777603, -0.357085,
		38.217751, 36.666096, 22.878584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767284, 37.155563, 22.437950>,  <38.580013, 37.210419, 23.128544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767284, 37.155563, 22.437950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.417755, 36.961067, 22.437271>,  <38.208038, 36.844368, 22.436863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.417755, 36.961067, 22.437271>,  <38.767284, 37.155563, 22.437950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417755, 36.961067, 22.437271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266154, 0.481225, -0.835215,
		0.406932, -0.729379, -0.549920,
		-0.873824, -0.486240, -0.001699,
		38.155609, 36.815197, 22.436762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650990, 37.070549, 21.819841>,  <38.767284, 37.155563, 22.437950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650990, 37.070549, 21.819841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278454, 36.998352, 21.946356>,  <38.054932, 36.955036, 22.022264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.278454, 36.998352, 21.946356>,  <38.650990, 37.070549, 21.819841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278454, 36.998352, 21.946356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363385, 0.403891, -0.839538,
		0.023782, -0.896826, -0.441745,
		-0.931335, -0.180489, 0.316287,
		37.999054, 36.944206, 22.041243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302231, 36.814041, 21.235451>,  <38.650990, 37.070549, 21.819841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302231, 36.814041, 21.235451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008728, 36.918949, 21.486149>,  <37.832626, 36.981895, 21.636568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008728, 36.918949, 21.486149>,  <38.302231, 36.814041, 21.235451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008728, 36.918949, 21.486149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439580, 0.520116, -0.732290,
		-0.518037, -0.812831, -0.266352,
		-0.733762, 0.262270, 0.626744,
		37.788601, 36.997631, 21.674171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696964, 36.610798, 20.910477>,  <38.302231, 36.814041, 21.235451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696964, 36.610798, 20.910477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606190, 36.899975, 21.171505>,  <37.551727, 37.073483, 21.328121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.606190, 36.899975, 21.171505>,  <37.696964, 36.610798, 20.910477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606190, 36.899975, 21.171505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477063, 0.501643, -0.721641,
		-0.849066, -0.475082, 0.231052,
		-0.226933, 0.722947, 0.652571,
		37.538109, 37.116859, 21.367277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010647, 36.892349, 20.734772>,  <37.696964, 36.610798, 20.910477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010647, 36.892349, 20.734772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197620, 37.189560, 20.926365>,  <37.309803, 37.367886, 21.041321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197620, 37.189560, 20.926365>,  <37.010647, 36.892349, 20.734772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197620, 37.189560, 20.926365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327597, 0.648831, -0.686803,
		-0.821091, 0.164118, 0.546695,
		0.467429, 0.743023, 0.478985,
		37.337849, 37.412468, 21.070061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587868, 37.347073, 20.804226>,  <37.010647, 36.892349, 20.734772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587868, 37.347073, 20.804226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.923569, 37.563595, 20.824785>,  <37.124989, 37.693508, 20.837122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.923569, 37.563595, 20.824785>,  <36.587868, 37.347073, 20.804226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923569, 37.563595, 20.824785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350999, 0.611533, -0.709104,
		-0.415274, 0.577076, 0.703228,
		0.839254, 0.541305, 0.051401,
		37.175346, 37.725986, 20.840206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411545, 38.048107, 20.724524>,  <36.587868, 37.347073, 20.804226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411545, 38.048107, 20.724524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802917, 38.054985, 20.642185>,  <37.037743, 38.059113, 20.592783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.802917, 38.054985, 20.642185>,  <36.411545, 38.048107, 20.724524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802917, 38.054985, 20.642185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160814, 0.688838, -0.706852,
		0.129642, 0.724711, 0.676747,
		0.978433, 0.017193, -0.205846,
		37.096447, 38.060143, 20.580431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632671, 38.720856, 20.591454>,  <36.411545, 38.048107, 20.724524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632671, 38.720856, 20.591454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945461, 38.534088, 20.426283>,  <37.133133, 38.422028, 20.327181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945461, 38.534088, 20.426283>,  <36.632671, 38.720856, 20.591454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945461, 38.534088, 20.426283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001732, 0.660837, -0.750528,
		0.623310, 0.587607, 0.515947,
		0.781973, -0.466918, -0.412924,
		37.180054, 38.394012, 20.302406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105137, 39.266804, 20.510113>,  <36.632671, 38.720856, 20.591454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105137, 39.266804, 20.510113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.254112, 38.986900, 20.266268>,  <37.343498, 38.818958, 20.119961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.254112, 38.986900, 20.266268>,  <37.105137, 39.266804, 20.510113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254112, 38.986900, 20.266268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207347, 0.703004, -0.680288,
		0.904598, 0.126964, 0.406919,
		0.372438, -0.699761, -0.609611,
		37.365845, 38.776974, 20.083385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614105, 39.579559, 20.112036>,  <37.105137, 39.266804, 20.510113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614105, 39.579559, 20.112036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565971, 39.263287, 19.871922>,  <37.537090, 39.073524, 19.727854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565971, 39.263287, 19.871922>,  <37.614105, 39.579559, 20.112036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565971, 39.263287, 19.871922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014077, 0.603258, -0.797422,
		0.992633, -0.104411, -0.061465,
		-0.120339, -0.790682, -0.600284,
		37.529869, 39.026081, 19.691837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152546, 39.655422, 19.574446>,  <37.614105, 39.579559, 20.112036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152546, 39.655422, 19.574446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.908833, 39.379665, 19.417727>,  <37.762604, 39.214211, 19.323694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.908833, 39.379665, 19.417727>,  <38.152546, 39.655422, 19.574446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908833, 39.379665, 19.417727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096998, 0.555186, -0.826050,
		0.786997, -0.465295, -0.405136,
		-0.609283, -0.689397, -0.391798,
		37.726048, 39.172848, 19.300188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542229, 39.387508, 18.960905>,  <38.152546, 39.655422, 19.574446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542229, 39.387508, 18.960905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152409, 39.329582, 18.892467>,  <37.918514, 39.294827, 18.851404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152409, 39.329582, 18.892467>,  <38.542229, 39.387508, 18.960905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152409, 39.329582, 18.892467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044547, 0.622946, -0.780996,
		0.219682, -0.768744, -0.600643,
		-0.974554, -0.144813, -0.171095,
		37.860043, 39.286137, 18.841139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855457, 39.581730, 18.235336>,  <38.542229, 39.387508, 18.960905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855457, 39.581730, 18.235336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207832, 39.496605, 18.066267>,  <39.419258, 39.445530, 17.964827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207832, 39.496605, 18.066267>,  <38.855457, 39.581730, 18.235336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207832, 39.496605, 18.066267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232390, -0.583507, 0.778148,
		-0.412234, -0.783727, -0.464579,
		0.880941, -0.212816, -0.422672,
		39.472115, 39.432758, 17.939465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940601, 38.912052, 18.430567>,  <38.855457, 39.581730, 18.235336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940601, 38.912052, 18.430567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315308, 38.996937, 18.319254>,  <39.540131, 39.047867, 18.252466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315308, 38.996937, 18.319254>,  <38.940601, 38.912052, 18.430567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315308, 38.996937, 18.319254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346991, -0.666624, 0.659704,
		-0.045513, -0.714548, -0.698105,
		0.936764, 0.212211, -0.278281,
		39.596336, 39.060600, 18.235769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195953, 38.265728, 18.350843>,  <38.940601, 38.912052, 18.430567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195953, 38.265728, 18.350843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503063, 38.515381, 18.408781>,  <39.687328, 38.665173, 18.443542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503063, 38.515381, 18.408781>,  <39.195953, 38.265728, 18.350843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503063, 38.515381, 18.408781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316811, -0.566302, 0.760876,
		0.556912, -0.538295, -0.632525,
		0.767776, 0.624132, 0.144843,
		39.733395, 38.702621, 18.452234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829216, 37.808239, 18.452881>,  <39.195953, 38.265728, 18.350843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829216, 37.808239, 18.452881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950253, 38.165565, 18.585802>,  <40.022877, 38.379959, 18.665556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950253, 38.165565, 18.585802>,  <39.829216, 37.808239, 18.452881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950253, 38.165565, 18.585802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560604, -0.448777, 0.695933,
		0.770817, -0.024294, -0.636593,
		0.302595, 0.893314, 0.332305,
		40.041031, 38.433559, 18.685493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519577, 37.823326, 18.412584>,  <39.829216, 37.808239, 18.452881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519577, 37.823326, 18.412584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.489918, 38.117962, 18.681492>,  <40.472122, 38.294743, 18.842836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.489918, 38.117962, 18.681492>,  <40.519577, 37.823326, 18.412584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489918, 38.117962, 18.681492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598825, -0.506170, 0.620645,
		0.797440, 0.448590, -0.403555,
		-0.074148, 0.736586, 0.672267,
		40.467674, 38.338936, 18.883171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266533, 38.030689, 18.672211>,  <40.519577, 37.823326, 18.412584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266533, 38.030689, 18.672211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007912, 38.160202, 18.948511>,  <40.852737, 38.237911, 19.114290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.007912, 38.160202, 18.948511>,  <41.266533, 38.030689, 18.672211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007912, 38.160202, 18.948511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485815, -0.523362, 0.700054,
		0.588179, 0.788197, 0.181081,
		-0.646552, 0.323786, 0.690749,
		40.813946, 38.257339, 19.155735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685226, 38.189297, 19.236382>,  <41.266533, 38.030689, 18.672211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685226, 38.189297, 19.236382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.321243, 38.172371, 19.401398>,  <41.102856, 38.162216, 19.500408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.321243, 38.172371, 19.401398>,  <41.685226, 38.189297, 19.236382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321243, 38.172371, 19.401398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408637, -0.261037, 0.874571,
		0.070678, 0.964401, 0.254825,
		-0.909956, -0.042318, 0.412540,
		41.048256, 38.159676, 19.525160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730007, 38.611683, 19.906382>,  <41.685226, 38.189297, 19.236382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730007, 38.611683, 19.906382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.420376, 38.361374, 19.944794>,  <41.234596, 38.211189, 19.967840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.420376, 38.361374, 19.944794>,  <41.730007, 38.611683, 19.906382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420376, 38.361374, 19.944794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330779, -0.270429, 0.904132,
		-0.539808, 0.731630, 0.416323,
		-0.774076, -0.625768, 0.096028,
		41.188152, 38.173645, 19.973602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670540, 39.277874, 20.226355>,  <41.730007, 38.611683, 19.906382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670540, 39.277874, 20.226355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.884274, 39.528610, 20.453180>,  <42.012512, 39.679050, 20.589275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.884274, 39.528610, 20.453180>,  <41.670540, 39.277874, 20.226355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884274, 39.528610, 20.453180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032225, 0.685484, -0.727374,
		-0.844661, 0.370385, 0.386475,
		0.534331, 0.626838, 0.567066,
		42.044571, 39.716663, 20.623301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228539, 39.910583, 20.244596>,  <41.670540, 39.277874, 20.226355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228539, 39.910583, 20.244596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.610432, 39.998943, 20.324278>,  <41.839569, 40.051960, 20.372087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.610432, 39.998943, 20.324278>,  <41.228539, 39.910583, 20.244596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610432, 39.998943, 20.324278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023193, 0.722944, -0.690517,
		-0.296549, 0.654641, 0.695344,
		0.954736, 0.220899, 0.199205,
		41.896851, 40.065212, 20.384039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250015, 40.677261, 20.405663>,  <41.228539, 39.910583, 20.244596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250015, 40.677261, 20.405663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611408, 40.536079, 20.308388>,  <41.828243, 40.451370, 20.250023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611408, 40.536079, 20.308388>,  <41.250015, 40.677261, 20.405663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611408, 40.536079, 20.308388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026819, 0.612803, -0.789780,
		0.427786, 0.707031, 0.563123,
		0.903482, -0.352959, -0.243187,
		41.882454, 40.430191, 20.235432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664543, 41.298344, 20.566977>,  <41.250015, 40.677261, 20.405663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664543, 41.298344, 20.566977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.879929, 41.074760, 20.314749>,  <42.009159, 40.940609, 20.163412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.879929, 41.074760, 20.314749>,  <41.664543, 41.298344, 20.566977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879929, 41.074760, 20.314749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125083, 0.793051, -0.596174,
		0.833312, 0.242146, 0.496947,
		0.538466, -0.558959, -0.630571,
		42.041470, 40.907074, 20.125578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084030, 41.737869, 20.268715>,  <41.664543, 41.298344, 20.566977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084030, 41.737869, 20.268715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.119858, 41.443222, 20.000572>,  <42.141354, 41.266434, 19.839687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.119858, 41.443222, 20.000572>,  <42.084030, 41.737869, 20.268715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119858, 41.443222, 20.000572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054726, 0.675683, -0.735158,
		0.994476, 0.029165, 0.100836,
		0.089573, -0.736615, -0.670355,
		42.146729, 41.222237, 19.799465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646976, 41.908733, 19.894730>,  <42.084030, 41.737869, 20.268715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646976, 41.908733, 19.894730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.423729, 41.660828, 19.674040>,  <42.289780, 41.512085, 19.541626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.423729, 41.660828, 19.674040>,  <42.646976, 41.908733, 19.894730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423729, 41.660828, 19.674040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187723, 0.553367, -0.811508,
		0.808251, -0.556485, -0.192498,
		-0.558114, -0.619766, -0.551724,
		42.256294, 41.474899, 19.508522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933323, 42.074009, 19.228769>,  <42.646976, 41.908733, 19.894730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933323, 42.074009, 19.228769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.590500, 41.884464, 19.147869>,  <42.384804, 41.770737, 19.099329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.590500, 41.884464, 19.147869>,  <42.933323, 42.074009, 19.228769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590500, 41.884464, 19.147869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012195, 0.373786, -0.927435,
		0.515072, -0.797334, -0.314578,
		-0.857060, -0.473859, -0.202250,
		42.333382, 41.742306, 19.087194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969242, 41.826572, 18.528963>,  <42.933323, 42.074009, 19.228769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969242, 41.826572, 18.528963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580635, 41.884289, 18.604145>,  <42.347469, 41.918919, 18.649254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580635, 41.884289, 18.604145>,  <42.969242, 41.826572, 18.528963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580635, 41.884289, 18.604145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098717, 0.474651, -0.874621,
		-0.215410, -0.868267, -0.446890,
		-0.971521, 0.144287, 0.187957,
		42.289177, 41.927574, 18.660532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698360, 41.424610, 17.971701>,  <42.969242, 41.826572, 18.528963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698360, 41.424610, 17.971701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.419319, 41.670818, 18.118391>,  <42.251896, 41.818542, 18.206406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.419319, 41.670818, 18.118391>,  <42.698360, 41.424610, 17.971701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419319, 41.670818, 18.118391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198785, 0.325473, -0.924420,
		-0.688356, -0.717778, -0.104695,
		-0.697603, 0.615518, 0.366725,
		42.210037, 41.855473, 18.228409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.346264, 32.118488, 29.947586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.410172, 32.043598, 29.559891>,  <44.448517, 31.998665, 29.327274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.410172, 32.043598, 29.559891>,  <44.346264, 32.118488, 29.947586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410172, 32.043598, 29.559891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947945, 0.303070, 0.097712,
		0.275453, -0.934396, 0.225899,
		0.159765, -0.187225, -0.969238,
		44.458099, 31.987431, 29.269119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894360, 31.951777, 30.668686>,  <44.346264, 32.118488, 29.947586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894360, 31.951777, 30.668686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.903214, 32.305176, 30.855850>,  <43.908527, 32.517216, 30.968149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.903214, 32.305176, 30.855850>,  <43.894360, 31.951777, 30.668686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903214, 32.305176, 30.855850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050542, 0.466436, -0.883110,
		-0.998477, 0.043200, -0.034328,
		0.022138, 0.883500, 0.467909,
		43.909855, 32.570225, 30.996223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269852, 32.357494, 30.413197>,  <43.894360, 31.951777, 30.668686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269852, 32.357494, 30.413197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.524509, 32.614929, 30.583132>,  <43.677303, 32.769390, 30.685093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.524509, 32.614929, 30.583132>,  <43.269852, 32.357494, 30.413197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524509, 32.614929, 30.583132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187105, 0.663360, -0.724531,
		-0.748118, 0.381776, 0.542740,
		0.636641, 0.643584, 0.424839,
		43.715500, 32.808002, 30.710583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896900, 32.997433, 30.433298>,  <43.269852, 32.357494, 30.413197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896900, 32.997433, 30.433298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.288631, 33.075241, 30.455477>,  <43.523670, 33.121925, 30.468784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.288631, 33.075241, 30.455477>,  <42.896900, 32.997433, 30.433298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288631, 33.075241, 30.455477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071943, 0.591196, -0.803313,
		-0.189038, 0.782720, 0.592971,
		0.979331, 0.194517, 0.055447,
		43.582432, 33.133595, 30.472111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967953, 33.727551, 30.322165>,  <42.896900, 32.997433, 30.433298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967953, 33.727551, 30.322165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.339520, 33.592655, 30.260998>,  <43.562458, 33.511719, 30.224297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.339520, 33.592655, 30.260998>,  <42.967953, 33.727551, 30.322165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339520, 33.592655, 30.260998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120853, 0.666476, -0.735666,
		0.350008, 0.664893, 0.659857,
		0.928918, -0.337235, -0.152918,
		43.618195, 33.491486, 30.215122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309864, 34.314186, 30.365314>,  <42.967953, 33.727551, 30.322165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309864, 34.314186, 30.365314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.530632, 34.048923, 30.163082>,  <43.663094, 33.889767, 30.041742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.530632, 34.048923, 30.163082>,  <43.309864, 34.314186, 30.365314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530632, 34.048923, 30.163082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038759, 0.585232, -0.809939,
		0.832999, 0.466614, 0.297295,
		0.551915, -0.663155, -0.505583,
		43.696205, 33.849976, 30.011408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753899, 34.804581, 29.981092>,  <43.309864, 34.314186, 30.365314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753899, 34.804581, 29.981092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.779900, 34.450729, 29.796394>,  <43.795502, 34.238419, 29.685575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.779900, 34.450729, 29.796394>,  <43.753899, 34.804581, 29.981092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779900, 34.450729, 29.796394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156528, 0.466035, -0.870810,
		0.985532, -0.015668, 0.168764,
		0.065006, -0.884628, -0.461745,
		43.799400, 34.185341, 29.657871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474419, 34.738861, 29.622126>,  <43.753899, 34.804581, 29.981092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474419, 34.738861, 29.622126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.218456, 34.484993, 29.448820>,  <44.064880, 34.332672, 29.344837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.218456, 34.484993, 29.448820>,  <44.474419, 34.738861, 29.622126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218456, 34.484993, 29.448820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167727, 0.434864, -0.884738,
		0.749925, -0.638819, -0.171821,
		-0.639906, -0.634669, -0.433262,
		44.026485, 34.294594, 29.318842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830181, 34.535633, 29.012899>,  <44.474419, 34.738861, 29.622126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830181, 34.535633, 29.012899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.452892, 34.416595, 28.953888>,  <44.226517, 34.345173, 28.918482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.452892, 34.416595, 28.953888>,  <44.830181, 34.535633, 29.012899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452892, 34.416595, 28.953888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003429, 0.452857, -0.891577,
		0.332131, -0.840453, -0.428167,
		-0.943227, -0.297589, -0.147526,
		44.169926, 34.327320, 28.909630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838287, 34.324291, 28.348959>,  <44.830181, 34.535633, 29.012899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838287, 34.324291, 28.348959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.453869, 34.396824, 28.432388>,  <44.223217, 34.440342, 28.482445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.453869, 34.396824, 28.432388>,  <44.838287, 34.324291, 28.348959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453869, 34.396824, 28.432388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131244, 0.364712, -0.921824,
		-0.243225, -0.913293, -0.326707,
		-0.961050, 0.181332, 0.208572,
		44.165554, 34.451225, 28.494959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325203, 34.040802, 27.738148>,  <44.838287, 34.324291, 28.348959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325203, 34.040802, 27.738148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.153595, 34.341396, 27.938631>,  <44.050629, 34.521751, 28.058920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.153595, 34.341396, 27.938631>,  <44.325203, 34.040802, 27.738148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153595, 34.341396, 27.938631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170583, 0.477479, -0.861925,
		-0.887041, -0.455282, -0.076658,
		-0.429022, 0.751486, 0.501207,
		44.024887, 34.566841, 28.088993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706493, 34.116398, 27.369440>,  <44.325203, 34.040802, 27.738148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706493, 34.116398, 27.369440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.735157, 34.467197, 27.559490>,  <43.752354, 34.677677, 27.673521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.735157, 34.467197, 27.559490>,  <43.706493, 34.116398, 27.369440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735157, 34.467197, 27.559490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302308, 0.473041, -0.827552,
		-0.950513, -0.084332, 0.299021,
		0.071660, 0.876995, 0.475126,
		43.756657, 34.730297, 27.702028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983593, 33.790066, 27.163208>,  <43.706493, 34.116398, 27.369440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983593, 33.790066, 27.163208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.062122, 33.486370, 26.915009>,  <43.109241, 33.304153, 26.766088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.062122, 33.486370, 26.915009>,  <42.983593, 33.790066, 27.163208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062122, 33.486370, 26.915009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111977, -0.646033, 0.755052,
		-0.974124, -0.078755, -0.211850,
		0.196326, -0.759236, -0.620497,
		43.121021, 33.258598, 26.728859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503487, 33.189854, 27.351189>,  <42.983593, 33.790066, 27.163208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503487, 33.189854, 27.351189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.813435, 33.029301, 27.155857>,  <42.999405, 32.932968, 27.038658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.813435, 33.029301, 27.155857>,  <42.503487, 33.189854, 27.351189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813435, 33.029301, 27.155857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113687, -0.848420, 0.516970,
		-0.621812, -0.345068, -0.703049,
		0.774871, -0.401386, -0.488328,
		43.045895, 32.908886, 27.009359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152283, 32.590286, 26.938047>,  <42.503487, 33.189854, 27.351189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152283, 32.590286, 26.938047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.543007, 32.574215, 27.022173>,  <42.777439, 32.564571, 27.072647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.543007, 32.574215, 27.022173>,  <42.152283, 32.590286, 26.938047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543007, 32.574215, 27.022173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137468, -0.870745, 0.472129,
		0.164159, -0.490090, -0.856074,
		0.976808, -0.040179, 0.210312,
		42.836048, 32.562160, 27.085266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271378, 31.868433, 26.839989>,  <42.152283, 32.590286, 26.938047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271378, 31.868433, 26.839989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.572803, 31.996740, 27.069510>,  <42.753658, 32.073723, 27.207222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.572803, 31.996740, 27.069510>,  <42.271378, 31.868433, 26.839989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572803, 31.996740, 27.069510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053406, -0.840114, 0.539775,
		0.655202, -0.437399, -0.615948,
		0.753564, 0.320767, 0.573803,
		42.798874, 32.092972, 27.241650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634636, 31.254175, 26.966557>,  <42.271378, 31.868433, 26.839989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634636, 31.254175, 26.966557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.771233, 31.502598, 27.248739>,  <42.853191, 31.651651, 27.418049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.771233, 31.502598, 27.248739>,  <42.634636, 31.254175, 26.966557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771233, 31.502598, 27.248739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097795, -0.769986, 0.630522,
		0.934782, -0.146330, -0.323682,
		0.341495, 0.621055, 0.705459,
		42.873680, 31.688913, 27.460377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282860, 30.935495, 27.349876>,  <42.634636, 31.254175, 26.966557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282860, 30.935495, 27.349876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.113113, 31.187412, 27.610115>,  <43.011265, 31.338562, 27.766258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.113113, 31.187412, 27.610115>,  <43.282860, 30.935495, 27.349876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113113, 31.187412, 27.610115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010601, -0.721908, 0.691908,
		0.905429, 0.286725, 0.313029,
		-0.424365, 0.629792, 0.650597,
		42.985806, 31.376350, 27.805294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594414, 30.712973, 27.951876>,  <43.282860, 30.935495, 27.349876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594414, 30.712973, 27.951876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.310497, 30.962494, 28.082762>,  <43.140148, 31.112207, 28.161293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.310497, 30.962494, 28.082762>,  <43.594414, 30.712973, 27.951876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310497, 30.962494, 28.082762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211916, -0.632097, 0.745349,
		0.671782, 0.459699, 0.580849,
		-0.709789, 0.623803, 0.327214,
		43.097561, 31.149635, 28.180925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768551, 31.086205, 28.588514>,  <43.594414, 30.712973, 27.951876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768551, 31.086205, 28.588514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.369144, 31.085300, 28.566763>,  <43.129501, 31.084759, 28.553713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.369144, 31.085300, 28.566763>,  <43.768551, 31.086205, 28.588514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369144, 31.085300, 28.566763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033761, -0.757958, 0.651429,
		-0.042687, 0.652300, 0.756758,
		-0.998518, -0.002259, -0.054378,
		43.069588, 31.084623, 28.550449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649364, 31.071899, 29.241577>,  <43.768551, 31.086205, 28.588514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649364, 31.071899, 29.241577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.295956, 30.967365, 29.086094>,  <43.083912, 30.904644, 28.992804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.295956, 30.967365, 29.086094>,  <43.649364, 31.071899, 29.241577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295956, 30.967365, 29.086094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198193, -0.543342, 0.815781,
		-0.424396, 0.797799, 0.428258,
		-0.883520, -0.261337, -0.388710,
		43.030899, 30.888964, 28.969481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191856, 31.146313, 29.808432>,  <43.649364, 31.071899, 29.241577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191856, 31.146313, 29.808432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.034061, 30.902966, 29.532961>,  <42.939384, 30.756958, 29.367680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.034061, 30.902966, 29.532961>,  <43.191856, 31.146313, 29.808432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034061, 30.902966, 29.532961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267150, -0.641153, 0.719412,
		-0.879212, 0.467776, 0.090400,
		-0.394484, -0.608366, -0.688676,
		42.915718, 30.720455, 29.326359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521358, 31.104372, 29.926928>,  <43.191856, 31.146313, 29.808432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521358, 31.104372, 29.926928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.625477, 30.765516, 29.741629>,  <42.687946, 30.562202, 29.630449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.625477, 30.765516, 29.741629>,  <42.521358, 31.104372, 29.926928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625477, 30.765516, 29.741629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366614, -0.530570, 0.764257,
		-0.893219, -0.029101, -0.448679,
		0.260296, -0.847141, -0.463247,
		42.703568, 30.511374, 29.602655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898083, 30.667116, 29.966337>,  <42.521358, 31.104372, 29.926928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898083, 30.667116, 29.966337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.202744, 30.421286, 29.884184>,  <42.385540, 30.273787, 29.834892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.202744, 30.421286, 29.884184>,  <41.898083, 30.667116, 29.966337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202744, 30.421286, 29.884184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363073, -0.667285, 0.650315,
		-0.536716, -0.420745, -0.731375,
		0.761652, -0.614577, -0.205381,
		42.431240, 30.236912, 29.822569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608467, 30.005724, 29.689220>,  <41.898083, 30.667116, 29.966337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608467, 30.005724, 29.689220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.969822, 29.908388, 29.830462>,  <42.186634, 29.849987, 29.915207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.969822, 29.908388, 29.830462>,  <41.608467, 30.005724, 29.689220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969822, 29.908388, 29.830462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413287, -0.713725, 0.565500,
		0.114410, -0.656797, -0.745338,
		0.903385, -0.243340, 0.353103,
		42.240837, 29.835386, 29.936392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602100, 29.279333, 29.697767>,  <41.608467, 30.005724, 29.689220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602100, 29.279333, 29.697767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.888973, 29.397079, 29.950436>,  <42.061096, 29.467728, 30.102036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.888973, 29.397079, 29.950436>,  <41.602100, 29.279333, 29.697767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888973, 29.397079, 29.950436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278522, -0.709800, 0.647001,
		0.638813, -0.639948, -0.427065,
		0.717178, 0.294366, 0.631669,
		42.104126, 29.485390, 30.139936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231400, 28.723352, 29.751055>,  <41.602100, 29.279333, 29.697767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231400, 28.723352, 29.751055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.846355, 28.634525, 29.813099>,  <40.615330, 28.581228, 29.850327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.846355, 28.634525, 29.813099>,  <41.231400, 28.723352, 29.751055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846355, 28.634525, 29.813099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254893, 0.936392, -0.241246,
		-0.091672, -0.271764, -0.957988,
		-0.962614, -0.222069, 0.155111,
		40.557571, 28.567905, 29.859632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798500, 28.912315, 29.162058>,  <41.231400, 28.723352, 29.751055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798500, 28.912315, 29.162058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598431, 28.948044, 29.506580>,  <40.478390, 28.969481, 29.713293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.598431, 28.948044, 29.506580>,  <40.798500, 28.912315, 29.162058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598431, 28.948044, 29.506580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430459, 0.837412, -0.336817,
		-0.751354, -0.539224, -0.380401,
		-0.500172, 0.089321, 0.861307,
		40.448380, 28.974840, 29.764973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083206, 28.914522, 29.020971>,  <40.798500, 28.912315, 29.162058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083206, 28.914522, 29.020971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143219, 29.134764, 29.349442>,  <40.179226, 29.266909, 29.546524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.143219, 29.134764, 29.349442>,  <40.083206, 28.914522, 29.020971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143219, 29.134764, 29.349442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366183, 0.802451, -0.471150,
		-0.918369, -0.230014, 0.322013,
		0.150029, 0.550605, 0.821173,
		40.188229, 29.299946, 29.595793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455475, 29.275953, 29.237329>,  <40.083206, 28.914522, 29.020971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455475, 29.275953, 29.237329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.744675, 29.505705, 29.390877>,  <39.918194, 29.643557, 29.483006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.744675, 29.505705, 29.390877>,  <39.455475, 29.275953, 29.237329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744675, 29.505705, 29.390877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385248, 0.796443, -0.466114,
		-0.573455, 0.189118, 0.797110,
		0.723003, 0.574381, 0.383866,
		39.961575, 29.678019, 29.506037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142597, 29.836731, 29.131742>,  <39.455475, 29.275953, 29.237329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142597, 29.836731, 29.131742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507065, 29.957781, 29.243593>,  <39.725746, 30.030411, 29.310703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507065, 29.957781, 29.243593>,  <39.142597, 29.836731, 29.131742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507065, 29.957781, 29.243593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156671, 0.882138, -0.444169,
		-0.381085, 0.360903, 0.851189,
		0.911169, 0.302623, 0.279627,
		39.780415, 30.048567, 29.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048668, 30.428482, 29.453356>,  <39.142597, 29.836731, 29.131742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048668, 30.428482, 29.453356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422916, 30.412542, 29.313055>,  <39.647465, 30.402979, 29.228874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422916, 30.412542, 29.313055>,  <39.048668, 30.428482, 29.453356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422916, 30.412542, 29.313055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175302, 0.809983, -0.559640,
		0.306405, 0.585098, 0.750851,
		0.935620, -0.039851, -0.350751,
		39.703602, 30.400587, 29.207830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211159, 31.167238, 29.408773>,  <39.048668, 30.428482, 29.453356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211159, 31.167238, 29.408773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480480, 30.974485, 29.184467>,  <39.642071, 30.858833, 29.049885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480480, 30.974485, 29.184467>,  <39.211159, 31.167238, 29.408773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480480, 30.974485, 29.184467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026869, 0.741988, -0.669874,
		0.738880, 0.466094, 0.486633,
		0.673301, -0.481881, -0.560764,
		39.682472, 30.829922, 29.016237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536110, 31.724119, 29.134398>,  <39.211159, 31.167238, 29.408773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536110, 31.724119, 29.134398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595329, 31.408394, 28.896046>,  <39.630859, 31.218960, 28.753035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595329, 31.408394, 28.896046>,  <39.536110, 31.724119, 29.134398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595329, 31.408394, 28.896046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007897, 0.601555, -0.798793,
		0.988949, 0.122964, 0.082825,
		0.148046, -0.789311, -0.595878,
		39.639744, 31.171600, 28.717283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107933, 31.906883, 28.740011>,  <39.536110, 31.724119, 29.134398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107933, 31.906883, 28.740011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.911320, 31.611361, 28.555595>,  <39.793350, 31.434048, 28.444946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.911320, 31.611361, 28.555595>,  <40.107933, 31.906883, 28.740011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911320, 31.611361, 28.555595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109833, 0.472590, -0.874411,
		0.863904, -0.480441, -0.151150,
		-0.491535, -0.738807, -0.461041,
		39.763859, 31.389719, 28.417284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537933, 31.784874, 28.146553>,  <40.107933, 31.906883, 28.740011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537933, 31.784874, 28.146553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171036, 31.642023, 28.075993>,  <39.950897, 31.556313, 28.033657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171036, 31.642023, 28.075993>,  <40.537933, 31.784874, 28.146553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171036, 31.642023, 28.075993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077641, 0.274068, -0.958571,
		0.390679, -0.892942, -0.223660,
		-0.917247, -0.357128, -0.176401,
		39.895863, 31.534885, 28.023073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555595, 31.341225, 27.526331>,  <40.537933, 31.784874, 28.146553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555595, 31.341225, 27.526331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.177242, 31.465092, 27.565121>,  <39.950230, 31.539412, 27.588394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.177242, 31.465092, 27.565121>,  <40.555595, 31.341225, 27.526331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177242, 31.465092, 27.565121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043431, 0.416975, -0.907880,
		-0.321576, -0.854540, -0.407861,
		-0.945887, 0.309666, 0.096975,
		39.893475, 31.557991, 27.594213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302345, 31.294355, 26.831228>,  <40.555595, 31.341225, 27.526331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302345, 31.294355, 26.831228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010803, 31.499043, 27.013178>,  <39.835876, 31.621855, 27.122347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010803, 31.499043, 27.013178>,  <40.302345, 31.294355, 26.831228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010803, 31.499043, 27.013178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252290, 0.416891, -0.873242,
		-0.636487, -0.751229, -0.174753,
		-0.728858, 0.511719, 0.454873,
		39.792145, 31.652557, 27.149639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758972, 31.355564, 26.326462>,  <40.302345, 31.294355, 26.831228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758972, 31.355564, 26.326462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.687504, 31.641451, 26.596945>,  <39.644623, 31.812983, 26.759233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.687504, 31.641451, 26.596945>,  <39.758972, 31.355564, 26.326462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687504, 31.641451, 26.596945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298179, 0.615613, -0.729459,
		-0.937640, -0.331960, 0.103125,
		-0.178666, 0.714719, 0.676207,
		39.633904, 31.855867, 26.799807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183804, 31.754324, 25.985405>,  <39.758972, 31.355564, 26.326462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183804, 31.754324, 25.985405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343735, 31.953764, 26.293051>,  <39.439693, 32.073429, 26.477638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343735, 31.953764, 26.293051>,  <39.183804, 31.754324, 25.985405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343735, 31.953764, 26.293051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316908, 0.862553, -0.394426,
		-0.860062, -0.086036, 0.502883,
		0.399828, 0.498598, 0.769114,
		39.463684, 32.103344, 26.523785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596649, 32.069546, 26.319759>,  <39.183804, 31.754324, 25.985405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596649, 32.069546, 26.319759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972080, 32.206760, 26.334763>,  <39.197338, 32.289089, 26.343765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.972080, 32.206760, 26.334763>,  <38.596649, 32.069546, 26.319759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972080, 32.206760, 26.334763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272295, 0.802997, -0.530143,
		-0.211977, 0.487365, 0.847078,
		0.938574, 0.343034, 0.037509,
		39.253651, 32.309669, 26.346016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468288, 32.825737, 26.509996>,  <38.596649, 32.069546, 26.319759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468288, 32.825737, 26.509996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848118, 32.800587, 26.387127>,  <39.076015, 32.785496, 26.313404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848118, 32.800587, 26.387127>,  <38.468288, 32.825737, 26.509996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848118, 32.800587, 26.387127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165040, 0.732754, -0.660177,
		0.266594, 0.677583, 0.685426,
		0.949573, -0.062877, -0.307176,
		39.132988, 32.781723, 26.294973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774845, 33.536270, 26.450945>,  <38.468288, 32.825737, 26.509996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774845, 33.536270, 26.450945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996788, 33.311394, 26.205647>,  <39.129955, 33.176468, 26.058468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996788, 33.311394, 26.205647>,  <38.774845, 33.536270, 26.450945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996788, 33.311394, 26.205647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148780, 0.658188, -0.738006,
		0.818531, 0.500730, 0.281561,
		0.554862, -0.562190, -0.613246,
		39.163246, 33.142738, 26.021673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284363, 34.033810, 26.227915>,  <38.774845, 33.536270, 26.450945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284363, 34.033810, 26.227915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263187, 33.745079, 25.951897>,  <39.250484, 33.571838, 25.786285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263187, 33.745079, 25.951897>,  <39.284363, 34.033810, 26.227915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263187, 33.745079, 25.951897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233102, 0.680855, -0.694334,
		0.971010, 0.124095, -0.204302,
		-0.052937, -0.721829, -0.690044,
		39.247307, 33.528530, 25.744883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782318, 34.275417, 25.685179>,  <39.284363, 34.033810, 26.227915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782318, 34.275417, 25.685179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543617, 33.997887, 25.523939>,  <39.400398, 33.831367, 25.427195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543617, 33.997887, 25.523939>,  <39.782318, 34.275417, 25.685179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543617, 33.997887, 25.523939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177796, 0.604191, -0.776751,
		0.782483, -0.391856, -0.483911,
		-0.596749, -0.693831, -0.403099,
		39.364594, 33.789738, 25.403009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081875, 34.235855, 25.048248>,  <39.782318, 34.275417, 25.685179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081875, 34.235855, 25.048248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726315, 34.057686, 25.005447>,  <39.512978, 33.950787, 24.979767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726315, 34.057686, 25.005447>,  <40.081875, 34.235855, 25.048248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726315, 34.057686, 25.005447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170726, 0.538874, -0.824905,
		0.425090, -0.714994, -0.555052,
		-0.888905, -0.445421, -0.107002,
		39.459644, 33.924061, 24.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048409, 33.981533, 24.347908>,  <40.081875, 34.235855, 25.048248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048409, 33.981533, 24.347908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.679222, 34.048531, 24.486517>,  <39.457710, 34.088730, 24.569681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.679222, 34.048531, 24.486517>,  <40.048409, 33.981533, 24.347908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679222, 34.048531, 24.486517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183346, 0.600282, -0.778490,
		-0.338399, -0.782054, -0.523332,
		-0.922968, 0.167490, 0.346521,
		39.402332, 34.098778, 24.590473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646046, 33.995686, 23.745481>,  <40.048409, 33.981533, 24.347908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646046, 33.995686, 23.745481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433434, 34.193237, 24.020742>,  <39.305866, 34.311768, 24.185898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.433434, 34.193237, 24.020742>,  <39.646046, 33.995686, 23.745481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433434, 34.193237, 24.020742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300143, 0.649887, -0.698256,
		-0.792076, -0.577691, -0.197202,
		-0.531534, 0.493883, 0.688150,
		39.273972, 34.341404, 24.227188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099979, 34.020893, 23.375322>,  <39.646046, 33.995686, 23.745481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099979, 34.020893, 23.375322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078285, 34.291702, 23.668905>,  <39.065269, 34.454189, 23.845055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078285, 34.291702, 23.668905>,  <39.099979, 34.020893, 23.375322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078285, 34.291702, 23.668905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356392, 0.673502, -0.647596,
		-0.932761, -0.296699, 0.204759,
		-0.054236, 0.677027, 0.733957,
		39.062016, 34.494812, 23.889093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398045, 34.432350, 23.275139>,  <39.099979, 34.020893, 23.375322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398045, 34.432350, 23.275139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.584637, 34.676582, 23.531136>,  <38.696594, 34.823120, 23.684732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.584637, 34.676582, 23.531136>,  <38.398045, 34.432350, 23.275139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584637, 34.676582, 23.531136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378419, 0.791740, -0.479527,
		-0.799495, -0.018493, 0.600389,
		0.466484, 0.610578, 0.639990,
		38.724583, 34.859756, 23.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913147, 34.875702, 23.544579>,  <38.398045, 34.432350, 23.275139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913147, 34.875702, 23.544579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262829, 35.061016, 23.602716>,  <38.472637, 35.172203, 23.637600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262829, 35.061016, 23.602716>,  <37.913147, 34.875702, 23.544579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262829, 35.061016, 23.602716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306994, 0.759301, -0.573774,
		-0.376182, 0.456978, 0.806013,
		0.874209, 0.463285, 0.145346,
		38.525093, 35.200001, 23.646320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775002, 35.512093, 23.747021>,  <37.913147, 34.875702, 23.544579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775002, 35.512093, 23.747021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139412, 35.544563, 23.585312>,  <38.358059, 35.564045, 23.488287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139412, 35.544563, 23.585312>,  <37.775002, 35.512093, 23.747021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139412, 35.544563, 23.585312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306554, 0.789039, -0.532392,
		0.275770, 0.608956, 0.743723,
		0.911030, 0.081173, -0.404271,
		38.412720, 35.568916, 23.464031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069458, 36.090645, 24.035074>,  <37.775002, 35.512093, 23.747021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069458, 36.090645, 24.035074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252319, 36.043465, 23.682463>,  <38.362038, 36.015156, 23.470896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252319, 36.043465, 23.682463>,  <38.069458, 36.090645, 24.035074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252319, 36.043465, 23.682463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381746, 0.869196, -0.314275,
		0.803291, 0.480194, 0.352332,
		0.457158, -0.117953, -0.881529,
		38.389465, 36.008080, 23.418003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211819, 36.747440, 23.815153>,  <38.069458, 36.090645, 24.035074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211819, 36.747440, 23.815153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.218807, 36.531467, 23.478542>,  <38.223000, 36.401882, 23.276577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.218807, 36.531467, 23.478542>,  <38.211819, 36.747440, 23.815153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218807, 36.531467, 23.478542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341436, 0.787837, -0.512576,
		0.939743, 0.296283, -0.170589,
		0.017471, -0.539935, -0.841526,
		38.224049, 36.369488, 23.226084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706020, 37.229568, 24.072599>,  <38.211819, 36.747440, 23.815153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706020, 37.229568, 24.072599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.565563, 37.536892, 24.286665>,  <38.481289, 37.721287, 24.415104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.565563, 37.536892, 24.286665>,  <38.706020, 37.229568, 24.072599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565563, 37.536892, 24.286665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119594, -0.603684, 0.788203,
		0.928651, 0.212772, 0.303866,
		-0.351147, 0.768306, 0.535165,
		38.460220, 37.767384, 24.447214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004993, 37.226170, 24.651802>,  <38.706020, 37.229568, 24.072599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004993, 37.226170, 24.651802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.693493, 37.453831, 24.757343>,  <38.506592, 37.590427, 24.820669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.693493, 37.453831, 24.757343>,  <39.004993, 37.226170, 24.651802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693493, 37.453831, 24.757343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026564, -0.450134, 0.892566,
		0.626775, 0.688074, 0.365660,
		-0.778747, 0.569151, 0.263855,
		38.459869, 37.624577, 24.836500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188786, 37.546959, 25.302979>,  <39.004993, 37.226170, 24.651802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188786, 37.546959, 25.302979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791733, 37.529610, 25.257719>,  <38.553501, 37.519199, 25.230564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791733, 37.529610, 25.257719>,  <39.188786, 37.546959, 25.302979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791733, 37.529610, 25.257719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062350, -0.617856, 0.783815,
		-0.103904, 0.785094, 0.610599,
		-0.992631, -0.043371, -0.113149,
		38.493942, 37.516598, 25.223774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839577, 37.519791, 26.014442>,  <39.188786, 37.546959, 25.302979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839577, 37.519791, 26.014442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.547775, 37.364479, 25.789207>,  <38.372696, 37.271294, 25.654066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.547775, 37.364479, 25.789207>,  <38.839577, 37.519791, 26.014442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547775, 37.364479, 25.789207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315290, -0.539673, 0.780605,
		-0.606972, 0.746990, 0.271275,
		-0.729504, -0.388276, -0.563086,
		38.328922, 37.247997, 25.620281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322220, 37.538639, 26.463091>,  <38.839577, 37.519791, 26.014442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322220, 37.538639, 26.463091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.199280, 37.286526, 26.177914>,  <38.125515, 37.135258, 26.006807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.199280, 37.286526, 26.177914>,  <38.322220, 37.538639, 26.463091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199280, 37.286526, 26.177914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374009, -0.608903, 0.699539,
		-0.875017, 0.481648, -0.048586,
		-0.307347, -0.630280, -0.712941,
		38.107075, 37.097443, 25.964031>
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
