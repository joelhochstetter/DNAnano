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
	<24.115036, 35.316528, 35.016136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307314, 35.001877, 35.171131>,  <24.422680, 34.813084, 35.264126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.307314, 35.001877, 35.171131>,  <24.115036, 35.316528, 35.016136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307314, 35.001877, 35.171131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859449, 0.510330, -0.030168,
		-0.174014, 0.347524, 0.921383,
		0.480693, -0.786632, 0.387484,
		24.451523, 34.765888, 35.287376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.489115, 35.448582, 35.572422>,  <24.115036, 35.316528, 35.016136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.489115, 35.448582, 35.572422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678772, 35.126991, 35.428867>,  <24.792566, 34.934036, 35.342735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678772, 35.126991, 35.428867>,  <24.489115, 35.448582, 35.572422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678772, 35.126991, 35.428867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879059, 0.455160, 0.141719,
		0.049414, -0.382681, 0.922558,
		0.474145, -0.803980, -0.358891,
		24.821016, 34.885796, 35.321201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003353, 35.516697, 35.960442>,  <24.489115, 35.448582, 35.572422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003353, 35.516697, 35.960442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105343, 35.286369, 35.649723>,  <25.166536, 35.148170, 35.463291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105343, 35.286369, 35.649723>,  <25.003353, 35.516697, 35.960442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105343, 35.286369, 35.649723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945115, 0.318160, 0.074380,
		0.204317, -0.753130, 0.625340,
		0.254976, -0.575821, -0.776800,
		25.181835, 35.113625, 35.416683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586117, 34.882393, 36.065414>,  <25.003353, 35.516697, 35.960442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586117, 34.882393, 36.065414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580788, 35.061100, 35.707596>,  <25.577591, 35.168324, 35.492905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580788, 35.061100, 35.707596>,  <25.586117, 34.882393, 36.065414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580788, 35.061100, 35.707596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944938, 0.298176, 0.134848,
		0.326979, -0.843497, -0.426142,
		-0.013321, 0.446771, -0.894549,
		25.576792, 35.195129, 35.439232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114695, 34.589050, 35.554283>,  <25.586117, 34.882393, 36.065414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114695, 34.589050, 35.554283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064865, 34.977295, 35.471924>,  <26.034967, 35.210243, 35.422508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064865, 34.977295, 35.471924>,  <26.114695, 34.589050, 35.554283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064865, 34.977295, 35.471924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986325, 0.143706, 0.080689,
		0.107906, -0.193030, -0.975241,
		-0.124573, 0.970612, -0.205897,
		26.027493, 35.268478, 35.410156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353716, 33.822716, 35.535122>,  <26.114695, 34.589050, 35.554283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353716, 33.822716, 35.535122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503853, 34.190308, 35.486805>,  <26.593935, 34.410862, 35.457813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503853, 34.190308, 35.486805>,  <26.353716, 33.822716, 35.535122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503853, 34.190308, 35.486805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305304, 0.000472, 0.952255,
		0.875161, -0.394302, -0.280391,
		0.375344, 0.918981, -0.120795,
		26.616457, 34.466003, 35.450565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952110, 33.597496, 35.791672>,  <26.353716, 33.822716, 35.535122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952110, 33.597496, 35.791672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927170, 33.990387, 35.862480>,  <26.912207, 34.226124, 35.904964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927170, 33.990387, 35.862480>,  <26.952110, 33.597496, 35.791672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927170, 33.990387, 35.862480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453514, -0.130113, 0.881700,
		0.889065, 0.135254, -0.437343,
		-0.062349, 0.982230, 0.177019,
		26.908464, 34.285057, 35.915585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561478, 33.778687, 36.172855>,  <26.952110, 33.597496, 35.791672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561478, 33.778687, 36.172855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297598, 34.070911, 36.243378>,  <27.139271, 34.246246, 36.285690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297598, 34.070911, 36.243378>,  <27.561478, 33.778687, 36.172855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297598, 34.070911, 36.243378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157816, -0.094696, 0.982917,
		0.734774, 0.676252, -0.052823,
		-0.659698, 0.730558, 0.176304,
		27.099689, 34.290077, 36.296268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894381, 34.164101, 36.658138>,  <27.561478, 33.778687, 36.172855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894381, 34.164101, 36.658138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503490, 34.242592, 36.690437>,  <27.268955, 34.289688, 36.709816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503490, 34.242592, 36.690437>,  <27.894381, 34.164101, 36.658138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503490, 34.242592, 36.690437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038326, -0.211047, 0.976724,
		0.208706, 0.957576, 0.198720,
		-0.977227, 0.196232, 0.080747,
		27.210321, 34.301460, 36.714661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835070, 34.472019, 37.226250>,  <27.894381, 34.164101, 36.658138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835070, 34.472019, 37.226250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456905, 34.349674, 37.181267>,  <27.230007, 34.276268, 37.154278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456905, 34.349674, 37.181267>,  <27.835070, 34.472019, 37.226250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456905, 34.349674, 37.181267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067746, -0.153081, 0.985889,
		-0.318766, 0.939687, 0.124003,
		-0.945409, -0.305867, -0.112457,
		27.173283, 34.257915, 37.147530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450386, 34.738033, 37.796947>,  <27.835070, 34.472019, 37.226250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450386, 34.738033, 37.796947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252113, 34.413540, 37.672878>,  <27.133150, 34.218845, 37.598438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252113, 34.413540, 37.672878>,  <27.450386, 34.738033, 37.796947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252113, 34.413540, 37.672878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019994, -0.367696, 0.929731,
		-0.868273, 0.454651, 0.198480,
		-0.495683, -0.811229, -0.310170,
		27.103409, 34.170170, 37.579826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851263, 34.651497, 38.211533>,  <27.450386, 34.738033, 37.796947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851263, 34.651497, 38.211533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964403, 34.302971, 38.051128>,  <27.032288, 34.093857, 37.954884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964403, 34.302971, 38.051128>,  <26.851263, 34.651497, 38.211533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964403, 34.302971, 38.051128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103784, -0.387832, 0.915869,
		-0.953533, -0.300672, -0.019270,
		0.282849, -0.871311, -0.401015,
		27.049257, 34.041576, 37.930824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063610, 34.272678, 38.742756>,  <26.851263, 34.651497, 38.211533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063610, 34.272678, 38.742756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870516, 33.924580, 38.782021>,  <26.754660, 33.715721, 38.805580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870516, 33.924580, 38.782021>,  <27.063610, 34.272678, 38.742756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870516, 33.924580, 38.782021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112995, -0.173046, -0.978411,
		0.868445, -0.461224, 0.181869,
		-0.482738, -0.870246, 0.098165,
		26.725695, 33.663506, 38.811470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424149, 33.617664, 38.504944>,  <27.063610, 34.272678, 38.742756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424149, 33.617664, 38.504944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031923, 33.561069, 38.450569>,  <26.796589, 33.527115, 38.417942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031923, 33.561069, 38.450569>,  <27.424149, 33.617664, 38.504944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031923, 33.561069, 38.450569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150284, -0.096152, -0.983956,
		0.126142, -0.985260, 0.115545,
		-0.980562, -0.141483, -0.135940,
		26.737755, 33.518623, 38.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398554, 33.102230, 37.913029>,  <27.424149, 33.617664, 38.504944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398554, 33.102230, 37.913029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053196, 33.292038, 37.981590>,  <26.845982, 33.405922, 38.022728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053196, 33.292038, 37.981590>,  <27.398554, 33.102230, 37.913029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053196, 33.292038, 37.981590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077894, 0.210292, -0.974531,
		-0.498482, -0.854755, -0.144602,
		-0.863394, 0.474523, 0.171407,
		26.794178, 33.434395, 38.033012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884783, 32.945194, 37.375282>,  <27.398554, 33.102230, 37.913029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884783, 32.945194, 37.375282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806002, 33.301727, 37.538612>,  <26.758732, 33.515648, 37.636612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806002, 33.301727, 37.538612>,  <26.884783, 32.945194, 37.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806002, 33.301727, 37.538612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034167, 0.409994, -0.911448,
		-0.979817, -0.193465, -0.050296,
		-0.196954, 0.891334, 0.408329,
		26.746916, 33.569126, 37.661110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239637, 33.380970, 37.019257>,  <26.884783, 32.945194, 37.375282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239637, 33.380970, 37.019257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502033, 33.624950, 37.197083>,  <26.659472, 33.771339, 37.303780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502033, 33.624950, 37.197083>,  <26.239637, 33.380970, 37.019257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502033, 33.624950, 37.197083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004297, 0.585983, -0.810312,
		-0.754757, 0.533467, 0.381778,
		0.655990, 0.609948, 0.444568,
		26.698830, 33.807934, 37.330452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960203, 33.978817, 36.822990>,  <26.239637, 33.380970, 37.019257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960203, 33.978817, 36.822990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328392, 34.070698, 36.949459>,  <26.549305, 34.125828, 37.025341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328392, 34.070698, 36.949459>,  <25.960203, 33.978817, 36.822990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328392, 34.070698, 36.949459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154885, 0.528359, -0.834774,
		-0.358805, 0.817357, 0.450762,
		0.920472, 0.229705, 0.316174,
		26.604534, 34.139610, 37.044312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000813, 34.702309, 36.934700>,  <25.960203, 33.978817, 36.822990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000813, 34.702309, 36.934700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361227, 34.556664, 36.840420>,  <26.577477, 34.469276, 36.783852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361227, 34.556664, 36.840420>,  <26.000813, 34.702309, 36.934700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361227, 34.556664, 36.840420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027149, 0.589689, -0.807174,
		0.432895, 0.720894, 0.541216,
		0.901036, -0.364115, -0.235702,
		26.631538, 34.447430, 36.769711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299162, 35.249275, 36.606873>,  <26.000813, 34.702309, 36.934700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299162, 35.249275, 36.606873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514267, 34.931297, 36.494530>,  <26.643330, 34.740513, 36.427124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514267, 34.931297, 36.494530>,  <26.299162, 35.249275, 36.606873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514267, 34.931297, 36.494530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030080, 0.351001, -0.935892,
		0.842561, 0.494838, 0.212666,
		0.537761, -0.794943, -0.280855,
		26.675594, 34.692814, 36.410275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968815, 35.410610, 36.232132>,  <26.299162, 35.249275, 36.606873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968815, 35.410610, 36.232132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837618, 35.050014, 36.119186>,  <26.758900, 34.833656, 36.051418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837618, 35.050014, 36.119186>,  <26.968815, 35.410610, 36.232132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837618, 35.050014, 36.119186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155784, 0.346423, -0.925053,
		0.931747, -0.259423, -0.254063,
		-0.327993, -0.901494, -0.282364,
		26.739220, 34.779568, 36.034477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358961, 35.134411, 35.742821>,  <26.968815, 35.410610, 36.232132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358961, 35.134411, 35.742821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969023, 35.048389, 35.719414>,  <26.735060, 34.996777, 35.705368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969023, 35.048389, 35.719414>,  <27.358961, 35.134411, 35.742821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969023, 35.048389, 35.719414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022890, 0.357796, -0.933519,
		0.221692, -0.908700, -0.353720,
		-0.974848, -0.215050, -0.058520,
		26.676569, 34.983875, 35.701859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247826, 35.500828, 35.164494>,  <27.358961, 35.134411, 35.742821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247826, 35.500828, 35.164494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889229, 35.324680, 35.184002>,  <26.674070, 35.218994, 35.195705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889229, 35.324680, 35.184002>,  <27.247826, 35.500828, 35.164494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889229, 35.324680, 35.184002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209113, 0.323512, -0.922828,
		0.390609, -0.837505, -0.382113,
		-0.896491, -0.440370, 0.048766,
		26.620281, 35.192570, 35.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239100, 35.045914, 34.558926>,  <27.247826, 35.500828, 35.164494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239100, 35.045914, 34.558926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865097, 35.101364, 34.689491>,  <26.640696, 35.134632, 34.767830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865097, 35.101364, 34.689491>,  <27.239100, 35.045914, 34.558926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865097, 35.101364, 34.689491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311361, 0.119687, -0.942724,
		-0.169751, -0.983086, -0.068747,
		-0.935007, 0.138623, 0.326411,
		26.584595, 35.142952, 34.787415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661892, 34.607185, 34.249340>,  <27.239100, 35.045914, 34.558926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661892, 34.607185, 34.249340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524330, 34.963848, 34.367107>,  <26.441793, 35.177845, 34.437767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524330, 34.963848, 34.367107>,  <26.661892, 34.607185, 34.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524330, 34.963848, 34.367107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294168, 0.195456, -0.935555,
		-0.891738, -0.408348, 0.195078,
		-0.343903, 0.891655, 0.294418,
		26.421160, 35.231346, 34.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723320, 34.875126, 33.468662>,  <26.661892, 34.607185, 34.249340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723320, 34.875126, 33.468662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865719, 35.248901, 33.472328>,  <26.951159, 35.473167, 33.474529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865719, 35.248901, 33.472328>,  <26.723320, 34.875126, 33.468662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865719, 35.248901, 33.472328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883695, -0.339822, 0.321876,
		0.303889, -0.106488, -0.946737,
		0.355998, 0.934442, 0.009165,
		26.972519, 35.529232, 33.475079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444347, 34.977051, 33.115982>,  <26.723320, 34.875126, 33.468662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444347, 34.977051, 33.115982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362724, 35.211502, 33.429623>,  <27.313751, 35.352173, 33.617805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362724, 35.211502, 33.429623>,  <27.444347, 34.977051, 33.115982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362724, 35.211502, 33.429623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852243, -0.287758, 0.436895,
		0.481708, 0.757395, -0.440806,
		-0.204056, 0.586130, 0.784100,
		27.301508, 35.387341, 33.664852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915285, 35.608898, 33.390362>,  <27.444347, 34.977051, 33.115982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915285, 35.608898, 33.390362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735167, 35.423931, 33.695885>,  <27.627094, 35.312950, 33.879200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735167, 35.423931, 33.695885>,  <27.915285, 35.608898, 33.390362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735167, 35.423931, 33.695885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890431, -0.295861, 0.345832,
		0.066061, 0.835844, 0.544978,
		-0.450299, -0.462419, 0.763806,
		27.600077, 35.285206, 33.925026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356573, 35.687798, 33.912689>,  <27.915285, 35.608898, 33.390362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356573, 35.687798, 33.912689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163486, 35.352150, 34.012981>,  <28.047634, 35.150761, 34.073158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163486, 35.352150, 34.012981>,  <28.356573, 35.687798, 33.912689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163486, 35.352150, 34.012981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799465, -0.305328, 0.517331,
		-0.357546, 0.450175, 0.818232,
		-0.482719, -0.839117, 0.250730,
		28.018671, 35.100414, 34.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797657, 35.314972, 34.402878>,  <28.356573, 35.687798, 33.912689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797657, 35.314972, 34.402878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549961, 35.004230, 34.357212>,  <28.401344, 34.817783, 34.329811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549961, 35.004230, 34.357212>,  <28.797657, 35.314972, 34.402878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549961, 35.004230, 34.357212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628146, -0.577357, 0.521624,
		-0.471143, 0.251297, 0.845502,
		-0.619240, -0.776858, -0.114166,
		28.364189, 34.771172, 34.322964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307014, 35.115322, 35.023403>,  <28.797657, 35.314972, 34.402878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307014, 35.115322, 35.023403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425842, 34.801270, 34.806030>,  <28.497139, 34.612839, 34.675606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425842, 34.801270, 34.806030>,  <28.307014, 35.115322, 35.023403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425842, 34.801270, 34.806030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329654, -0.449805, 0.830063,
		-0.896147, -0.425730, 0.125199,
		0.297067, -0.785130, -0.543435,
		28.514963, 34.565731, 34.643002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070580, 34.548939, 35.427341>,  <28.307014, 35.115322, 35.023403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070580, 34.548939, 35.427341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389320, 34.452835, 35.205601>,  <28.580564, 34.395172, 35.072556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389320, 34.452835, 35.205601>,  <28.070580, 34.548939, 35.427341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389320, 34.452835, 35.205601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417454, -0.444333, 0.792654,
		-0.436747, -0.863046, -0.253779,
		0.796859, -0.240248, -0.554344,
		28.628376, 34.380756, 35.039295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198061, 33.726227, 35.303379>,  <28.070580, 34.548939, 35.427341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198061, 33.726227, 35.303379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527481, 33.952385, 35.321690>,  <28.725134, 34.088078, 35.332676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527481, 33.952385, 35.321690>,  <28.198061, 33.726227, 35.303379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527481, 33.952385, 35.321690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296092, -0.497307, 0.815485,
		0.483831, -0.658041, -0.576966,
		0.823552, 0.565392, 0.045772,
		28.774546, 34.122002, 35.335423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701727, 33.243412, 35.207939>,  <28.198061, 33.726227, 35.303379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701727, 33.243412, 35.207939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803621, 33.539005, 35.457420>,  <28.864758, 33.716362, 35.607109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803621, 33.539005, 35.457420>,  <28.701727, 33.243412, 35.207939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803621, 33.539005, 35.457420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224395, -0.672552, 0.705209,
		0.940615, -0.039686, -0.337149,
		0.254737, 0.738985, 0.623707,
		28.880043, 33.760700, 35.644531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403633, 33.284943, 35.523842>,  <28.701727, 33.243412, 35.207939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403633, 33.284943, 35.523842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101685, 33.392429, 35.763161>,  <28.920515, 33.456921, 35.906754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101685, 33.392429, 35.763161>,  <29.403633, 33.284943, 35.523842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101685, 33.392429, 35.763161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129863, -0.832921, 0.537938,
		0.642885, 0.483772, 0.593854,
		-0.754873, 0.268713, 0.598297,
		28.875223, 33.473042, 35.942650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801203, 33.246559, 36.200294>,  <29.403633, 33.284943, 35.523842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801203, 33.246559, 36.200294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436768, 33.124474, 36.089466>,  <29.218107, 33.051224, 36.022968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436768, 33.124474, 36.089466>,  <29.801203, 33.246559, 36.200294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436768, 33.124474, 36.089466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006466, -0.661484, 0.749931,
		-0.412164, 0.685044, 0.600696,
		-0.911086, -0.305211, -0.277070,
		29.163441, 33.032909, 36.006344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372416, 33.380703, 35.853214>,  <29.801203, 33.246559, 36.200294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372416, 33.380703, 35.853214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630152, 33.253937, 35.574821>,  <30.784794, 33.177876, 35.407787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630152, 33.253937, 35.574821>,  <30.372416, 33.380703, 35.853214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630152, 33.253937, 35.574821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754095, -0.414614, -0.509349,
		-0.127144, 0.853030, -0.506136,
		0.644341, -0.316914, -0.695982,
		30.823454, 33.158863, 35.366028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109388, 33.639568, 35.207298>,  <30.372416, 33.380703, 35.853214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109388, 33.639568, 35.207298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336685, 33.315090, 35.152073>,  <30.473063, 33.120403, 35.118938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336685, 33.315090, 35.152073>,  <30.109388, 33.639568, 35.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336685, 33.315090, 35.152073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651314, -0.340862, -0.677940,
		0.502885, 0.475153, -0.722036,
		0.568240, -0.811198, -0.138059,
		30.507156, 33.071732, 35.110657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174898, 33.621777, 34.448818>,  <30.109388, 33.639568, 35.207298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174898, 33.621777, 34.448818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220230, 33.252899, 34.596718>,  <30.247429, 33.031574, 34.685459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220230, 33.252899, 34.596718>,  <30.174898, 33.621777, 34.448818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220230, 33.252899, 34.596718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666989, -0.346441, -0.659624,
		0.736398, -0.171865, -0.654355,
		0.113329, -0.922194, 0.369751,
		30.254229, 32.976242, 34.707642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365438, 33.162251, 33.919159>,  <30.174898, 33.621777, 34.448818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365438, 33.162251, 33.919159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156519, 32.962833, 34.195900>,  <30.031168, 32.843182, 34.361946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156519, 32.962833, 34.195900>,  <30.365438, 33.162251, 33.919159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156519, 32.962833, 34.195900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623011, -0.330903, -0.708774,
		0.582291, -0.801222, -0.137769,
		-0.522297, -0.498544, 0.691852,
		29.999830, 32.813271, 34.403454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317446, 32.509430, 33.676418>,  <30.365438, 33.162251, 33.919159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317446, 32.509430, 33.676418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014818, 32.552376, 33.934433>,  <29.833242, 32.578144, 34.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014818, 32.552376, 33.934433>,  <30.317446, 32.509430, 33.676418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014818, 32.552376, 33.934433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633781, -0.363277, -0.682900,
		0.161010, -0.925475, 0.342888,
		-0.756570, 0.107363, 0.645039,
		29.787848, 32.584583, 34.127945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858822, 31.934629, 33.806072>,  <30.317446, 32.509430, 33.676418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858822, 31.934629, 33.806072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640249, 32.268661, 33.831539>,  <29.509106, 32.469082, 33.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640249, 32.268661, 33.831539>,  <29.858822, 31.934629, 33.806072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640249, 32.268661, 33.831539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576008, -0.319543, -0.752401,
		-0.607972, -0.447807, 0.655621,
		-0.546429, 0.835082, 0.063667,
		29.476320, 32.519188, 33.850639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590178, 31.432602, 34.325359>,  <29.858822, 31.934629, 33.806072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590178, 31.432602, 34.325359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613375, 31.037849, 34.265087>,  <29.627293, 30.800999, 34.228924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613375, 31.037849, 34.265087>,  <29.590178, 31.432602, 34.325359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613375, 31.037849, 34.265087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449232, -0.108996, 0.886741,
		-0.891531, -0.119115, 0.437017,
		0.057992, -0.986880, -0.150684,
		29.630772, 30.741785, 34.219883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739182, 31.741520, 35.036453>,  <29.590178, 31.432602, 34.325359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739182, 31.741520, 35.036453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879087, 32.051636, 34.826084>,  <29.963032, 32.237705, 34.699863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879087, 32.051636, 34.826084>,  <29.739182, 31.741520, 35.036453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879087, 32.051636, 34.826084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654251, 0.199662, 0.729445,
		0.670536, -0.599220, -0.437398,
		0.349766, 0.775287, -0.525921,
		29.984016, 32.284222, 34.668308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499327, 31.780460, 35.214806>,  <29.739182, 31.741520, 35.036453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499327, 31.780460, 35.214806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394815, 32.135750, 35.063656>,  <30.332108, 32.348923, 34.972965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394815, 32.135750, 35.063656>,  <30.499327, 31.780460, 35.214806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394815, 32.135750, 35.063656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692796, 0.445154, 0.567337,
		0.672136, -0.113556, -0.731669,
		-0.261281, 0.888225, -0.377875,
		30.316431, 32.402218, 34.950294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169432, 31.964571, 34.993519>,  <30.499327, 31.780460, 35.214806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169432, 31.964571, 34.993519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943733, 32.292458, 35.032906>,  <30.808313, 32.489189, 35.056538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943733, 32.292458, 35.032906>,  <31.169432, 31.964571, 34.993519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943733, 32.292458, 35.032906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746462, 0.455560, 0.485036,
		0.352734, 0.347180, -0.868933,
		-0.564246, 0.819714, 0.098465,
		30.774460, 32.538372, 35.062447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530983, 32.540390, 34.694233>,  <31.169432, 31.964571, 34.993519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530983, 32.540390, 34.694233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288097, 32.636410, 34.997196>,  <31.142366, 32.694023, 35.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288097, 32.636410, 34.997196>,  <31.530983, 32.540390, 34.694233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288097, 32.636410, 34.997196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680352, 0.649455, 0.339601,
		-0.410383, 0.721515, -0.557675,
		-0.607212, 0.240049, 0.757410,
		31.105934, 32.708424, 35.224419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854912, 33.198490, 34.849499>,  <31.530983, 32.540390, 34.694233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854912, 33.198490, 34.849499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618343, 33.080070, 35.149521>,  <31.476402, 33.009018, 35.329533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618343, 33.080070, 35.149521>,  <31.854912, 33.198490, 34.849499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618343, 33.080070, 35.149521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517602, 0.573863, 0.634641,
		-0.618313, 0.763567, -0.186157,
		-0.591419, -0.296052, 0.750051,
		31.440918, 32.991257, 35.374535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407028, 33.746655, 35.168015>,  <31.854912, 33.198490, 34.849499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407028, 33.746655, 35.168015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469065, 33.466488, 35.446690>,  <31.506287, 33.298389, 35.613895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469065, 33.466488, 35.446690>,  <31.407028, 33.746655, 35.168015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469065, 33.466488, 35.446690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201991, 0.712801, 0.671650,
		-0.967030, 0.036557, 0.252027,
		0.155092, -0.700413, 0.696684,
		31.515593, 33.256363, 35.655693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951878, 33.820324, 35.673328>,  <31.407028, 33.746655, 35.168015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951878, 33.820324, 35.673328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329758, 33.726406, 35.764904>,  <31.556486, 33.670055, 35.819847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329758, 33.726406, 35.764904>,  <30.951878, 33.820324, 35.673328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329758, 33.726406, 35.764904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130322, 0.909420, 0.394932,
		-0.300929, -0.343256, 0.889728,
		0.944700, -0.234798, 0.228937,
		31.613167, 33.655968, 35.833584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109526, 33.935078, 36.421677>,  <30.951878, 33.820324, 35.673328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109526, 33.935078, 36.421677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458071, 33.986565, 36.232296>,  <31.667198, 34.017456, 36.118668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458071, 33.986565, 36.232296>,  <31.109526, 33.935078, 36.421677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458071, 33.986565, 36.232296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013980, 0.958070, 0.286192,
		0.490439, -0.255996, 0.833028,
		0.871363, 0.128714, -0.473454,
		31.719481, 34.025177, 36.090260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447321, 34.379799, 36.924644>,  <31.109526, 33.935078, 36.421677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447321, 34.379799, 36.924644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689016, 34.392231, 36.606167>,  <31.834034, 34.399693, 36.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689016, 34.392231, 36.606167>,  <31.447321, 34.379799, 36.924644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689016, 34.392231, 36.606167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293304, 0.920402, 0.258523,
		0.740858, -0.389737, 0.547023,
		0.604236, 0.031085, -0.796198,
		31.870287, 34.401558, 36.367306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110706, 34.697765, 37.106659>,  <31.447321, 34.379799, 36.924644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110706, 34.697765, 37.106659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058807, 34.763973, 36.715607>,  <32.027668, 34.803699, 36.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058807, 34.763973, 36.715607>,  <32.110706, 34.697765, 37.106659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058807, 34.763973, 36.715607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225889, 0.964977, 0.133396,
		0.965474, -0.203529, -0.162593,
		-0.129749, 0.165518, -0.977634,
		32.019882, 34.813629, 36.422318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711304, 34.932961, 36.925846>,  <32.110706, 34.697765, 37.106659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711304, 34.932961, 36.925846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403244, 35.088257, 36.723408>,  <32.218407, 35.181435, 36.601944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403244, 35.088257, 36.723408>,  <32.711304, 34.932961, 36.925846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403244, 35.088257, 36.723408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414010, 0.907846, 0.066414,
		0.485242, -0.158380, -0.859916,
		-0.770153, 0.388241, -0.506096,
		32.172199, 35.204731, 36.571579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019680, 35.656620, 36.685783>,  <32.711304, 34.932961, 36.925846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019680, 35.656620, 36.685783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632729, 35.658607, 36.584465>,  <32.400558, 35.659798, 36.523674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632729, 35.658607, 36.584465>,  <33.019680, 35.656620, 36.685783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632729, 35.658607, 36.584465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004886, 0.999257, 0.038243,
		0.253296, 0.038233, -0.966633,
		-0.967377, 0.004964, -0.253294,
		32.342514, 35.660095, 36.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166348, 36.253586, 36.274387>,  <33.019680, 35.656620, 36.685783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166348, 36.253586, 36.274387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060696, 35.910984, 36.097008>,  <32.997307, 35.705425, 35.990582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060696, 35.910984, 36.097008>,  <33.166348, 36.253586, 36.274387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060696, 35.910984, 36.097008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463545, -0.290459, 0.837113,
		-0.845791, 0.426661, -0.320309,
		-0.264127, -0.856501, -0.443445,
		32.981457, 35.654034, 35.963974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796116, 36.399544, 36.925781>,  <33.166348, 36.253586, 36.274387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796116, 36.399544, 36.925781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486702, 36.594395, 36.763622>,  <32.301052, 36.711308, 36.666328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486702, 36.594395, 36.763622>,  <32.796116, 36.399544, 36.925781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486702, 36.594395, 36.763622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412163, -0.872603, -0.262082,
		-0.481416, -0.035642, 0.875767,
		-0.773538, 0.487129, -0.405395,
		32.254642, 36.740532, 36.642002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117985, 36.120956, 37.128170>,  <32.796116, 36.399544, 36.925781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117985, 36.120956, 37.128170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071499, 36.285915, 36.766747>,  <32.043606, 36.384892, 36.549892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071499, 36.285915, 36.766747>,  <32.117985, 36.120956, 37.128170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071499, 36.285915, 36.766747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400795, -0.851839, -0.337244,
		-0.908767, 0.322950, 0.264283,
		-0.116214, 0.412399, -0.903561,
		32.036636, 36.409634, 36.495678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443222, 36.035744, 36.768280>,  <32.117985, 36.120956, 37.128170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443222, 36.035744, 36.768280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733253, 36.061630, 36.494030>,  <31.907272, 36.077164, 36.329479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733253, 36.061630, 36.494030>,  <31.443222, 36.035744, 36.768280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733253, 36.061630, 36.494030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178404, -0.943935, -0.277773,
		-0.665159, 0.323724, -0.672879,
		0.725076, 0.064719, -0.685621,
		31.950777, 36.081047, 36.288345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219389, 35.779305, 36.124256>,  <31.443222, 36.035744, 36.768280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219389, 35.779305, 36.124256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618517, 35.754734, 36.114597>,  <31.857994, 35.739990, 36.108803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618517, 35.754734, 36.114597>,  <31.219389, 35.779305, 36.124256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618517, 35.754734, 36.114597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065956, -0.941603, -0.330201,
		-0.002450, 0.331074, -0.943602,
		0.997819, -0.061427, -0.024143,
		31.917862, 35.736305, 36.107353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477911, 35.535488, 35.512959>,  <31.219389, 35.779305, 36.124256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477911, 35.535488, 35.512959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772066, 35.415829, 35.756176>,  <31.948559, 35.344032, 35.902107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772066, 35.415829, 35.756176>,  <31.477911, 35.535488, 35.512959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772066, 35.415829, 35.756176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068398, -0.925470, -0.372595,
		0.674187, 0.232412, -0.701039,
		0.735386, -0.299148, 0.608044,
		31.992682, 35.326084, 35.938587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918791, 35.090885, 35.189358>,  <31.477911, 35.535488, 35.512959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918791, 35.090885, 35.189358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966978, 34.989162, 35.573193>,  <31.995892, 34.928127, 35.803493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966978, 34.989162, 35.573193>,  <31.918791, 35.090885, 35.189358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966978, 34.989162, 35.573193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007104, -0.966385, -0.257002,
		0.992692, 0.037778, -0.114613,
		0.120469, -0.254309, 0.959591,
		32.003120, 34.912868, 35.861069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619888, 34.743061, 35.226837>,  <31.918791, 35.090885, 35.189358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619888, 34.743061, 35.226837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394470, 34.617577, 35.532516>,  <32.259220, 34.542286, 35.715923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394470, 34.617577, 35.532516>,  <32.619888, 34.743061, 35.226837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394470, 34.617577, 35.532516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172034, -0.949371, -0.262868,
		0.807973, -0.016670, 0.588984,
		-0.563546, -0.313715, 0.764198,
		32.225407, 34.523460, 35.761776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895409, 34.070915, 35.518009>,  <32.619888, 34.743061, 35.226837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895409, 34.070915, 35.518009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538406, 34.043411, 35.696316>,  <32.324203, 34.026909, 35.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538406, 34.043411, 35.696316>,  <32.895409, 34.070915, 35.518009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538406, 34.043411, 35.696316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073586, -0.997268, -0.006508,
		0.444995, 0.026993, 0.895126,
		-0.892504, -0.068765, 0.445766,
		32.270657, 34.022781, 35.830044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007111, 33.605938, 36.024792>,  <32.895409, 34.070915, 35.518009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007111, 33.605938, 36.024792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610924, 33.601360, 35.969891>,  <32.373211, 33.598614, 35.936951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610924, 33.601360, 35.969891>,  <33.007111, 33.605938, 36.024792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610924, 33.601360, 35.969891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008240, -0.989829, 0.142023,
		-0.137482, 0.141800, 0.980302,
		-0.990470, -0.011448, -0.137252,
		32.313782, 33.597927, 35.928715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722378, 33.150223, 36.502621>,  <33.007111, 33.605938, 36.024792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722378, 33.150223, 36.502621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468071, 33.196102, 36.197296>,  <32.315487, 33.223629, 36.014103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468071, 33.196102, 36.197296>,  <32.722378, 33.150223, 36.502621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468071, 33.196102, 36.197296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134668, -0.990214, -0.036623,
		-0.760041, 0.079510, 0.644993,
		-0.635769, 0.114695, -0.763310,
		32.277340, 33.230511, 35.968304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407421, 32.723915, 36.406811>,  <32.722378, 33.150223, 36.502621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407421, 32.723915, 36.406811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454556, 32.779423, 36.013496>,  <33.482834, 32.812725, 35.777508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454556, 32.779423, 36.013496>,  <33.407421, 32.723915, 36.406811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454556, 32.779423, 36.013496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508220, 0.842257, 0.179764,
		0.853129, -0.520910, 0.028722,
		0.117832, 0.138765, -0.983290,
		33.489906, 32.821053, 35.718510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102345, 32.987019, 36.172722>,  <33.407421, 32.723915, 36.406811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102345, 32.987019, 36.172722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835541, 33.117493, 35.904781>,  <33.675457, 33.195778, 35.744019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835541, 33.117493, 35.904781>,  <34.102345, 32.987019, 36.172722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835541, 33.117493, 35.904781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453095, 0.891297, -0.017157,
		0.591439, -0.314950, -0.742298,
		-0.667011, 0.326184, -0.669850,
		33.635437, 33.215347, 35.703827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913864, 33.186771, 36.086323>,  <34.102345, 32.987019, 36.172722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913864, 33.186771, 36.086323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168777, 33.421406, 35.886410>,  <35.321728, 33.562187, 35.766464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168777, 33.421406, 35.886410>,  <34.913864, 33.186771, 36.086323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168777, 33.421406, 35.886410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669392, 0.100044, -0.736142,
		-0.381813, 0.803682, 0.456415,
		0.637285, 0.586589, -0.499781,
		35.359962, 33.597382, 35.736477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434330, 33.714905, 35.831093>,  <34.913864, 33.186771, 36.086323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434330, 33.714905, 35.831093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774887, 33.710014, 35.621338>,  <34.979221, 33.707081, 35.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774887, 33.710014, 35.621338>,  <34.434330, 33.714905, 35.831093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774887, 33.710014, 35.621338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524078, 0.021885, -0.851389,
		0.021885, 0.999686, 0.012225,
		0.851389, -0.012225, -0.524392,
		35.030304, 33.706348, 35.464020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252422, 34.060501, 35.249245>,  <34.434330, 33.714905, 35.831093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252422, 34.060501, 35.249245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602715, 33.903511, 35.136772>,  <34.812889, 33.809319, 35.069290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602715, 33.903511, 35.136772>,  <34.252422, 34.060501, 35.249245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602715, 33.903511, 35.136772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291255, 0.035035, -0.956004,
		0.385058, 0.919095, -0.083629,
		0.875728, -0.392475, -0.281182,
		34.865433, 33.785770, 35.052418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315605, 34.399181, 34.689011>,  <34.252422, 34.060501, 35.249245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315605, 34.399181, 34.689011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584431, 34.103882, 34.665966>,  <34.745728, 33.926701, 34.652142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584431, 34.103882, 34.665966>,  <34.315605, 34.399181, 34.689011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584431, 34.103882, 34.665966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148468, -0.058123, -0.987208,
		0.725455, 0.672021, -0.148668,
		0.672066, -0.738247, -0.057608,
		34.786049, 33.882408, 34.648685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757462, 34.525970, 34.122181>,  <34.315605, 34.399181, 34.689011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757462, 34.525970, 34.122181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786419, 34.132706, 34.189301>,  <34.803795, 33.896748, 34.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786419, 34.132706, 34.189301>,  <34.757462, 34.525970, 34.122181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786419, 34.132706, 34.189301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176040, -0.178191, -0.968121,
		0.981717, 0.040548, -0.185976,
		0.072395, -0.983160, 0.167795,
		34.808136, 33.837757, 34.239639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185081, 34.180210, 33.520985>,  <34.757462, 34.525970, 34.122181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185081, 34.180210, 33.520985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959415, 33.884014, 33.667076>,  <34.824017, 33.706295, 33.754730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959415, 33.884014, 33.667076>,  <35.185081, 34.180210, 33.520985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959415, 33.884014, 33.667076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118140, -0.365393, -0.923326,
		0.817164, -0.564059, 0.118662,
		-0.564169, -0.740489, 0.365224,
		34.790165, 33.661869, 33.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536209, 33.519100, 33.329193>,  <35.185081, 34.180210, 33.520985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536209, 33.519100, 33.329193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140831, 33.483444, 33.378216>,  <34.903603, 33.462051, 33.407631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140831, 33.483444, 33.378216>,  <35.536209, 33.519100, 33.329193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140831, 33.483444, 33.378216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104860, -0.181556, -0.977774,
		0.109415, -0.979332, 0.170111,
		-0.988449, -0.089145, 0.122558,
		34.844296, 33.456699, 33.414982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358150, 32.992970, 32.881783>,  <35.536209, 33.519100, 33.329193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358150, 32.992970, 32.881783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006886, 33.171268, 32.951214>,  <34.796127, 33.278248, 32.992874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006886, 33.171268, 32.951214>,  <35.358150, 32.992970, 32.881783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006886, 33.171268, 32.951214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275224, -0.174026, -0.945498,
		-0.391249, -0.878078, 0.275506,
		-0.878166, 0.445751, 0.173581,
		34.743435, 33.304993, 33.003288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940018, 32.724785, 32.377766>,  <35.358150, 32.992970, 32.881783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940018, 32.724785, 32.377766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720551, 33.032745, 32.508129>,  <34.588871, 33.217522, 32.586346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720551, 33.032745, 32.508129>,  <34.940018, 32.724785, 32.377766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720551, 33.032745, 32.508129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295128, 0.186361, -0.937106,
		-0.782216, -0.610344, 0.124970,
		-0.548668, 0.769902, 0.325904,
		34.555950, 33.263718, 32.605900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253052, 32.573151, 32.150391>,  <34.940018, 32.724785, 32.377766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253052, 32.573151, 32.150391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287247, 32.965191, 32.222046>,  <34.307766, 33.200417, 32.265041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287247, 32.965191, 32.222046>,  <34.253052, 32.573151, 32.150391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287247, 32.965191, 32.222046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205634, 0.193285, -0.959352,
		-0.974888, 0.045177, 0.218066,
		0.085489, 0.980102, 0.179141,
		34.312893, 33.259220, 32.275787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671154, 32.864853, 31.928928>,  <34.253052, 32.573151, 32.150391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671154, 32.864853, 31.928928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911041, 33.184704, 31.941153>,  <34.054974, 33.376614, 31.948486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911041, 33.184704, 31.941153>,  <33.671154, 32.864853, 31.928928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911041, 33.184704, 31.941153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088130, 0.103958, -0.990669,
		-0.795343, 0.591430, 0.132817,
		0.599719, 0.799627, 0.030559,
		34.090958, 33.424591, 31.950321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239071, 33.460400, 31.577322>,  <33.671154, 32.864853, 31.928928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239071, 33.460400, 31.577322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622646, 33.572182, 31.557989>,  <33.852791, 33.639252, 31.546391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622646, 33.572182, 31.557989>,  <33.239071, 33.460400, 31.577322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622646, 33.572182, 31.557989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153474, 0.368047, -0.917053,
		-0.238483, 0.886819, 0.395825,
		0.958943, 0.279451, -0.048331,
		33.910328, 33.656017, 31.543489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059093, 33.928020, 31.210548>,  <33.239071, 33.460400, 31.577322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059093, 33.928020, 31.210548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454151, 33.865967, 31.201727>,  <33.691185, 33.828735, 31.196434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454151, 33.865967, 31.201727>,  <33.059093, 33.928020, 31.210548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454151, 33.865967, 31.201727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013110, 0.222048, -0.974948,
		0.156149, 0.962614, 0.221339,
		0.987647, -0.155139, -0.022053,
		33.750446, 33.819424, 31.195110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366413, 34.538197, 31.022556>,  <33.059093, 33.928020, 31.210548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366413, 34.538197, 31.022556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629066, 34.251820, 30.927675>,  <33.786659, 34.079994, 30.870747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629066, 34.251820, 30.927675>,  <33.366413, 34.538197, 31.022556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629066, 34.251820, 30.927675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129119, 0.416567, -0.899889,
		0.743078, 0.560267, 0.365973,
		0.656631, -0.715941, -0.237201,
		33.826057, 34.037037, 30.856516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090443, 34.807644, 30.817999>,  <33.366413, 34.538197, 31.022556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090443, 34.807644, 30.817999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029800, 34.448662, 30.652308>,  <33.993416, 34.233273, 30.552893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029800, 34.448662, 30.652308>,  <34.090443, 34.807644, 30.817999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029800, 34.448662, 30.652308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194142, 0.383873, -0.902746,
		0.969187, -0.217284, 0.116035,
		-0.151609, -0.897457, -0.414229,
		33.984318, 34.179424, 30.528038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484581, 34.826481, 30.178852>,  <34.090443, 34.807644, 30.817999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484581, 34.826481, 30.178852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281261, 34.485519, 30.129786>,  <34.159271, 34.280945, 30.100346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281261, 34.485519, 30.129786>,  <34.484581, 34.826481, 30.178852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281261, 34.485519, 30.129786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023565, 0.128617, -0.991414,
		0.860858, -0.506826, -0.045289,
		-0.508300, -0.852400, -0.122664,
		34.128773, 34.229801, 30.092987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945042, 34.326931, 29.785706>,  <34.484581, 34.826481, 30.178852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945042, 34.326931, 29.785706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553074, 34.258427, 29.744864>,  <34.317894, 34.217323, 29.720358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553074, 34.258427, 29.744864>,  <34.945042, 34.326931, 29.785706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553074, 34.258427, 29.744864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084150, 0.109018, -0.990472,
		0.180760, -0.979175, -0.092417,
		-0.979921, -0.171261, -0.102104,
		34.259098, 34.207050, 29.714231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952126, 33.877144, 29.298748>,  <34.945042, 34.326931, 29.785706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952126, 33.877144, 29.298748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572048, 34.001694, 29.304085>,  <34.344002, 34.076424, 29.307287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572048, 34.001694, 29.304085>,  <34.952126, 33.877144, 29.298748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572048, 34.001694, 29.304085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023548, 0.114406, -0.993155,
		-0.310771, -0.943375, -0.116040,
		-0.950193, 0.311376, 0.013340,
		34.286991, 34.095108, 29.308086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643406, 33.460678, 28.798849>,  <34.952126, 33.877144, 29.298748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643406, 33.460678, 28.798849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410107, 33.782459, 28.843874>,  <34.270126, 33.975529, 28.870890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410107, 33.782459, 28.843874>,  <34.643406, 33.460678, 28.798849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410107, 33.782459, 28.843874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001420, 0.137564, -0.990492,
		-0.812293, -0.577863, -0.079092,
		-0.583248, 0.804457, 0.112563,
		34.235130, 34.023796, 28.877644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150749, 33.569534, 28.183985>,  <34.643406, 33.460678, 28.798849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150749, 33.569534, 28.183985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075760, 33.932098, 28.335388>,  <34.030766, 34.149639, 28.426231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075760, 33.932098, 28.335388>,  <34.150749, 33.569534, 28.183985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075760, 33.932098, 28.335388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009501, 0.383650, -0.923430,
		-0.982224, -0.176715, -0.063312,
		-0.187473, 0.906413, 0.378509,
		34.019516, 34.204021, 28.448940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476204, 33.842739, 27.926725>,  <34.150749, 33.569534, 28.183985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476204, 33.842739, 27.926725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681080, 34.166218, 28.042429>,  <33.804005, 34.360306, 28.111851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681080, 34.166218, 28.042429>,  <33.476204, 33.842739, 27.926725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681080, 34.166218, 28.042429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069924, 0.374937, -0.924409,
		-0.856020, 0.453249, 0.248587,
		0.512192, 0.808695, 0.289261,
		33.834736, 34.408825, 28.129208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160568, 34.446594, 27.684031>,  <33.476204, 33.842739, 27.926725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160568, 34.446594, 27.684031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535851, 34.576576, 27.731659>,  <33.761021, 34.654564, 27.760235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535851, 34.576576, 27.731659>,  <33.160568, 34.446594, 27.684031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535851, 34.576576, 27.731659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030897, 0.421320, -0.906386,
		-0.344701, 0.846696, 0.405324,
		0.938204, 0.324955, 0.119069,
		33.817310, 34.674065, 27.767380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219116, 35.108551, 27.279537>,  <33.160568, 34.446594, 27.684031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219116, 35.108551, 27.279537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604038, 35.010048, 27.325720>,  <33.834991, 34.950947, 27.353430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604038, 35.010048, 27.325720>,  <33.219116, 35.108551, 27.279537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604038, 35.010048, 27.325720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179454, 0.255911, -0.949898,
		0.204371, 0.934809, 0.290455,
		0.962304, -0.246254, 0.115454,
		33.892731, 34.936172, 27.360355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624172, 35.695614, 27.120598>,  <33.219116, 35.108551, 27.279537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624172, 35.695614, 27.120598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835602, 35.360859, 27.063707>,  <33.962460, 35.160004, 27.029573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835602, 35.360859, 27.063707>,  <33.624172, 35.695614, 27.120598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835602, 35.360859, 27.063707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228976, 0.301894, -0.925435,
		0.817424, 0.456592, 0.351200,
		0.528572, -0.836889, -0.142226,
		33.994175, 35.109791, 27.021040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153717, 35.916454, 26.677258>,  <33.624172, 35.695614, 27.120598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153717, 35.916454, 26.677258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191856, 35.520359, 26.636600>,  <34.214741, 35.282700, 26.612206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191856, 35.520359, 26.636600>,  <34.153717, 35.916454, 26.677258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191856, 35.520359, 26.636600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225706, 0.120957, -0.966657,
		0.969518, 0.069230, 0.235037,
		0.095351, -0.990241, -0.101644,
		34.220463, 35.223286, 26.606108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839775, 35.787460, 26.255508>,  <34.153717, 35.916454, 26.677258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839775, 35.787460, 26.255508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623829, 35.455029, 26.202065>,  <34.494259, 35.255569, 26.169998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623829, 35.455029, 26.202065>,  <34.839775, 35.787460, 26.255508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623829, 35.455029, 26.202065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159919, 0.054573, -0.985620,
		0.826419, -0.553472, 0.103442,
		-0.539868, -0.831078, -0.133611,
		34.461868, 35.205704, 26.161982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279316, 35.307117, 25.822750>,  <34.839775, 35.787460, 26.255508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279316, 35.307117, 25.822750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897751, 35.192764, 25.786280>,  <34.668812, 35.124153, 25.764399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897751, 35.192764, 25.786280>,  <35.279316, 35.307117, 25.822750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897751, 35.192764, 25.786280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099624, -0.015122, -0.994910,
		0.283053, -0.958144, 0.042906,
		-0.953916, -0.285887, -0.091174,
		34.611576, 35.106998, 25.758928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189404, 34.796772, 25.300554>,  <35.279316, 35.307117, 25.822750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189404, 34.796772, 25.300554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804565, 34.898930, 25.338816>,  <34.573662, 34.960224, 25.361773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804565, 34.898930, 25.338816>,  <35.189404, 34.796772, 25.300554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804565, 34.898930, 25.338816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041359, 0.210045, -0.976817,
		-0.269566, -0.943745, -0.191520,
		-0.962094, 0.255395, 0.095653,
		34.515938, 34.975548, 25.367512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746208, 34.439339, 24.696087>,  <35.189404, 34.796772, 25.300554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746208, 34.439339, 24.696087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523228, 34.745247, 24.825310>,  <34.389439, 34.928791, 24.902843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523228, 34.745247, 24.825310>,  <34.746208, 34.439339, 24.696087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523228, 34.745247, 24.825310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183115, 0.266278, -0.946343,
		-0.809761, -0.586700, -0.008396,
		-0.557456, 0.764774, 0.323055,
		34.355991, 34.974678, 24.922226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232857, 34.386757, 24.306702>,  <34.746208, 34.439339, 24.696087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232857, 34.386757, 24.306702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236450, 34.761574, 24.446341>,  <34.238605, 34.986465, 24.530125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236450, 34.761574, 24.446341>,  <34.232857, 34.386757, 24.306702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236450, 34.761574, 24.446341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160748, 0.343219, -0.925398,
		-0.986955, 0.064433, -0.147543,
		0.008987, 0.937043, 0.349099,
		34.239147, 35.042686, 24.551069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707726, 34.593784, 23.871271>,  <34.232857, 34.386757, 24.306702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707726, 34.593784, 23.871271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923710, 34.906834, 23.995171>,  <34.053303, 35.094662, 24.069510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923710, 34.906834, 23.995171>,  <33.707726, 34.593784, 23.871271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923710, 34.906834, 23.995171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104653, 0.302727, -0.947314,
		-0.835157, 0.543931, 0.081558,
		0.539964, 0.782621, 0.309749,
		34.085697, 35.141621, 24.088095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390915, 35.245323, 23.526886>,  <33.707726, 34.593784, 23.871271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390915, 35.245323, 23.526886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762138, 35.342876, 23.639479>,  <33.984871, 35.401409, 23.707033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762138, 35.342876, 23.639479>,  <33.390915, 35.245323, 23.526886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762138, 35.342876, 23.639479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174418, 0.383172, -0.907060,
		-0.329075, 0.890898, 0.313067,
		0.928056, 0.243886, 0.281481,
		34.040554, 35.416042, 23.723923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454987, 35.872124, 23.352234>,  <33.390915, 35.245323, 23.526886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454987, 35.872124, 23.352234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832687, 35.745434, 23.388161>,  <34.059307, 35.669418, 23.409718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832687, 35.745434, 23.388161>,  <33.454987, 35.872124, 23.352234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832687, 35.745434, 23.388161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208149, 0.362992, -0.908246,
		0.255060, 0.876312, 0.408683,
		0.944256, -0.316724, 0.089819,
		34.115963, 35.650417, 23.415106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779652, 36.452148, 23.072206>,  <33.454987, 35.872124, 23.352234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779652, 36.452148, 23.072206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065548, 36.172531, 23.080990>,  <34.237087, 36.004761, 23.086260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065548, 36.172531, 23.080990>,  <33.779652, 36.452148, 23.072206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065548, 36.172531, 23.080990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378148, 0.359844, -0.852946,
		0.588346, 0.617938, 0.521537,
		0.714740, -0.699046, 0.021959,
		34.279968, 35.962818, 23.087578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371826, 36.801033, 22.916138>,  <33.779652, 36.452148, 23.072206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371826, 36.801033, 22.916138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406639, 36.415569, 22.815117>,  <34.427528, 36.184292, 22.754503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406639, 36.415569, 22.815117>,  <34.371826, 36.801033, 22.916138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406639, 36.415569, 22.815117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365016, 0.266732, -0.891974,
		0.926924, -0.014554, 0.374966,
		0.087034, -0.963661, -0.252553,
		34.432751, 36.126472, 22.739351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002102, 36.825642, 22.604954>,  <34.371826, 36.801033, 22.916138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002102, 36.825642, 22.604954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812862, 36.498703, 22.473429>,  <34.699318, 36.302540, 22.394514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812862, 36.498703, 22.473429>,  <35.002102, 36.825642, 22.604954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812862, 36.498703, 22.473429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178975, 0.276275, -0.944267,
		0.862637, -0.505583, 0.015579,
		-0.473101, -0.817348, -0.328812,
		34.670933, 36.253498, 22.374784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424923, 36.671288, 22.132019>,  <35.002102, 36.825642, 22.604954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424923, 36.671288, 22.132019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101250, 36.459377, 22.030380>,  <34.907047, 36.332230, 21.969397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101250, 36.459377, 22.030380>,  <35.424923, 36.671288, 22.132019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101250, 36.459377, 22.030380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188938, 0.174877, -0.966292,
		0.556353, -0.829913, -0.041412,
		-0.809181, -0.529776, -0.254095,
		34.858494, 36.300446, 21.954151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631516, 36.167915, 21.525143>,  <35.424923, 36.671288, 22.132019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631516, 36.167915, 21.525143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232708, 36.188519, 21.502171>,  <34.993423, 36.200882, 21.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232708, 36.188519, 21.502171>,  <35.631516, 36.167915, 21.525143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232708, 36.188519, 21.502171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063767, 0.131261, -0.989295,
		-0.043418, -0.990009, -0.134154,
		-0.997020, 0.051507, -0.057431,
		34.933601, 36.203972, 21.484941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381805, 35.707428, 21.012255>,  <35.631516, 36.167915, 21.525143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381805, 35.707428, 21.012255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063362, 35.948994, 21.027750>,  <34.872295, 36.093933, 21.037048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063362, 35.948994, 21.027750>,  <35.381805, 35.707428, 21.012255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063362, 35.948994, 21.027750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069015, 0.154203, -0.985626,
		-0.601210, -0.781988, -0.164441,
		-0.796105, 0.603917, 0.038740,
		34.824532, 36.130169, 21.039371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966019, 35.501667, 20.451376>,  <35.381805, 35.707428, 21.012255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966019, 35.501667, 20.451376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827908, 35.859261, 20.565626>,  <34.745041, 36.073814, 20.634176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827908, 35.859261, 20.565626>,  <34.966019, 35.501667, 20.451376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827908, 35.859261, 20.565626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003620, 0.305611, -0.952150,
		-0.938494, -0.327720, -0.108756,
		-0.345275, 0.893981, 0.285627,
		34.724323, 36.127457, 20.651314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328899, 35.639454, 20.042046>,  <34.966019, 35.501667, 20.451376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328899, 35.639454, 20.042046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490093, 35.990810, 20.144833>,  <34.586811, 36.201626, 20.206505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490093, 35.990810, 20.144833>,  <34.328899, 35.639454, 20.042046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490093, 35.990810, 20.144833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117994, 0.328298, -0.937176,
		-0.907568, 0.347349, 0.235944,
		0.402987, 0.878390, 0.256968,
		34.610989, 36.254326, 20.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880177, 36.106384, 19.672672>,  <34.328899, 35.639454, 20.042046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880177, 36.106384, 19.672672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225559, 36.284943, 19.766632>,  <34.432789, 36.392078, 19.823008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225559, 36.284943, 19.766632>,  <33.880177, 36.106384, 19.672672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225559, 36.284943, 19.766632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093073, 0.316692, -0.943951,
		-0.495765, 0.836922, 0.231902,
		0.863455, 0.446394, 0.234899,
		34.484596, 36.418861, 19.837101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844757, 36.859585, 19.576378>,  <33.880177, 36.106384, 19.672672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844757, 36.859585, 19.576378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223396, 36.755531, 19.500183>,  <34.450581, 36.693100, 19.454466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223396, 36.755531, 19.500183>,  <33.844757, 36.859585, 19.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223396, 36.755531, 19.500183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109852, 0.295250, -0.949084,
		0.303130, 0.919325, 0.250906,
		0.946596, -0.260133, -0.190489,
		34.507374, 36.677490, 19.443037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304291, 37.340717, 19.090147>,  <33.844757, 36.859585, 19.576378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304291, 37.340717, 19.090147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418243, 36.959274, 19.051197>,  <34.486614, 36.730408, 19.027826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418243, 36.959274, 19.051197>,  <34.304291, 37.340717, 19.090147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418243, 36.959274, 19.051197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004021, 0.100394, -0.994939,
		0.958554, 0.283834, 0.024766,
		0.284884, -0.953603, -0.097375,
		34.503708, 36.673195, 19.021984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849380, 37.357544, 18.553242>,  <34.304291, 37.340717, 19.090147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849380, 37.357544, 18.553242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637440, 37.023746, 18.613750>,  <34.510277, 36.823467, 18.650057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637440, 37.023746, 18.613750>,  <34.849380, 37.357544, 18.553242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637440, 37.023746, 18.613750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242819, -0.021633, -0.969830,
		0.812589, -0.550594, -0.191168,
		-0.529848, -0.834492, 0.151273,
		34.478485, 36.773399, 18.659132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867634, 36.771488, 18.112135>,  <34.849380, 37.357544, 18.553242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867634, 36.771488, 18.112135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518665, 36.668262, 18.278164>,  <34.309284, 36.606327, 18.377781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518665, 36.668262, 18.278164>,  <34.867634, 36.771488, 18.112135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518665, 36.668262, 18.278164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475846, 0.254596, -0.841874,
		0.111580, -0.931979, -0.344913,
		-0.872422, -0.258062, 0.415071,
		34.256939, 36.590843, 18.402685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600536, 36.905155, 18.069969>,  <34.867634, 36.771488, 18.112135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600536, 36.905155, 18.069969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976425, 36.984299, 17.958422>,  <36.201958, 37.031784, 17.891493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976425, 36.984299, 17.958422>,  <35.600536, 36.905155, 18.069969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976425, 36.984299, 17.958422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040832, 0.744805, 0.666031,
		0.339481, -0.637274, 0.691834,
		0.939726, 0.197856, -0.278868,
		36.258343, 37.043655, 17.874762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106300, 36.836048, 18.608932>,  <35.600536, 36.905155, 18.069969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106300, 36.836048, 18.608932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224079, 37.123596, 18.357052>,  <36.294746, 37.296124, 18.205923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224079, 37.123596, 18.357052>,  <36.106300, 36.836048, 18.608932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224079, 37.123596, 18.357052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012560, 0.655946, 0.754704,
		0.955585, -0.230130, 0.184113,
		0.294448, 0.718871, -0.629702,
		36.312412, 37.339256, 18.168140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618404, 37.124416, 18.964355>,  <36.106300, 36.836048, 18.608932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618404, 37.124416, 18.964355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475880, 37.390961, 18.702362>,  <36.390366, 37.550888, 18.545166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475880, 37.390961, 18.702362>,  <36.618404, 37.124416, 18.964355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475880, 37.390961, 18.702362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058046, 0.683851, 0.727309,
		0.932564, 0.297165, -0.204981,
		-0.356308, 0.666364, -0.654984,
		36.368988, 37.590870, 18.505867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046646, 37.563377, 18.761339>,  <36.618404, 37.124416, 18.964355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046646, 37.563377, 18.761339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683750, 37.731083, 18.774820>,  <36.466011, 37.831707, 18.782909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683750, 37.731083, 18.774820>,  <37.046646, 37.563377, 18.761339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683750, 37.731083, 18.774820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347375, 0.701678, 0.622076,
		0.237163, 0.576080, -0.782231,
		-0.907240, 0.419261, 0.033704,
		36.411579, 37.856861, 18.784931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017368, 38.306133, 18.858358>,  <37.046646, 37.563377, 18.761339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017368, 38.306133, 18.858358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669189, 38.191074, 19.018148>,  <36.460281, 38.122040, 19.114021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669189, 38.191074, 19.018148>,  <37.017368, 38.306133, 18.858358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669189, 38.191074, 19.018148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184763, 0.561263, 0.806751,
		-0.456273, 0.776042, -0.435402,
		-0.870447, -0.287652, 0.399473,
		36.408054, 38.104778, 19.137991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764141, 38.875137, 19.107897>,  <37.017368, 38.306133, 18.858358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764141, 38.875137, 19.107897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562912, 38.597492, 19.313858>,  <36.442173, 38.430904, 19.437435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562912, 38.597492, 19.313858>,  <36.764141, 38.875137, 19.107897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562912, 38.597492, 19.313858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036791, 0.578045, 0.815175,
		-0.863461, 0.429035, -0.265261,
		-0.503072, -0.694113, 0.514904,
		36.411991, 38.389259, 19.468328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551636, 39.159481, 19.745846>,  <36.764141, 38.875137, 19.107897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551636, 39.159481, 19.745846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489944, 38.774197, 19.833887>,  <36.452930, 38.543026, 19.886711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489944, 38.774197, 19.833887>,  <36.551636, 39.159481, 19.745846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489944, 38.774197, 19.833887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042006, 0.216175, 0.975451,
		-0.987141, 0.159691, 0.007120,
		-0.154231, -0.963207, 0.220104,
		36.443676, 38.485233, 19.899918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069683, 39.083923, 20.385063>,  <36.551636, 39.159481, 19.745846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069683, 39.083923, 20.385063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266148, 38.736084, 20.364803>,  <36.384026, 38.527382, 20.352648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266148, 38.736084, 20.364803>,  <36.069683, 39.083923, 20.385063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266148, 38.736084, 20.364803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231058, 0.074002, 0.970122,
		-0.839864, -0.488191, 0.237274,
		0.491163, -0.869594, -0.050649,
		36.413498, 38.475204, 20.349609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780739, 38.496265, 20.751356>,  <36.069683, 39.083923, 20.385063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780739, 38.496265, 20.751356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165867, 38.391193, 20.726109>,  <36.396942, 38.328152, 20.710960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165867, 38.391193, 20.726109>,  <35.780739, 38.496265, 20.751356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165867, 38.391193, 20.726109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057313, -0.029719, 0.997914,
		-0.264005, -0.964426, -0.013559,
		0.962817, -0.262677, -0.063120,
		36.454712, 38.312389, 20.707172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731194, 38.038555, 21.184092>,  <35.780739, 38.496265, 20.751356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731194, 38.038555, 21.184092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129375, 38.027565, 21.147617>,  <36.368286, 38.020969, 21.125732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129375, 38.027565, 21.147617>,  <35.731194, 38.038555, 21.184092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129375, 38.027565, 21.147617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077952, -0.314944, 0.945904,
		-0.054709, -0.948712, -0.311371,
		0.995455, -0.027477, -0.091184,
		36.428013, 38.019321, 21.120262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947433, 37.416916, 21.430666>,  <35.731194, 38.038555, 21.184092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947433, 37.416916, 21.430666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270611, 37.652546, 21.436672>,  <36.464516, 37.793922, 21.440275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270611, 37.652546, 21.436672>,  <35.947433, 37.416916, 21.430666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270611, 37.652546, 21.436672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257543, -0.375917, 0.890145,
		0.530006, -0.715316, -0.455430,
		0.807939, 0.589075, 0.015013,
		36.512993, 37.829269, 21.441175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475616, 36.853271, 21.576454>,  <35.947433, 37.416916, 21.430666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475616, 36.853271, 21.576454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626442, 37.207260, 21.685745>,  <36.716938, 37.419655, 21.751320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626442, 37.207260, 21.685745>,  <36.475616, 36.853271, 21.576454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626442, 37.207260, 21.685745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140190, -0.346135, 0.927652,
		0.915518, -0.311476, -0.254578,
		0.377060, 0.884971, 0.273227,
		36.739559, 37.472752, 21.767714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159019, 36.730999, 21.795475>,  <36.475616, 36.853271, 21.576454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159019, 36.730999, 21.795475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061649, 37.078903, 21.967178>,  <37.003227, 37.287647, 22.070200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061649, 37.078903, 21.967178>,  <37.159019, 36.730999, 21.795475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061649, 37.078903, 21.967178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461850, -0.285231, 0.839844,
		0.852900, 0.402692, -0.332267,
		-0.243425, 0.869760, 0.429257,
		36.988621, 37.339832, 22.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800850, 37.073566, 22.128691>,  <37.159019, 36.730999, 21.795475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800850, 37.073566, 22.128691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476116, 37.236385, 22.296137>,  <37.281277, 37.334076, 22.396605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476116, 37.236385, 22.296137>,  <37.800850, 37.073566, 22.128691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476116, 37.236385, 22.296137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417281, -0.097022, 0.903584,
		0.408416, 0.908240, -0.091087,
		-0.811833, 0.407047, 0.418617,
		37.232567, 37.358501, 22.421722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072441, 37.468906, 22.683969>,  <37.800850, 37.073566, 22.128691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072441, 37.468906, 22.683969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687553, 37.408756, 22.774759>,  <37.456619, 37.372665, 22.829233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687553, 37.408756, 22.774759>,  <38.072441, 37.468906, 22.683969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687553, 37.408756, 22.774759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249835, -0.156279, 0.955594,
		-0.108223, 0.976200, 0.187943,
		-0.962222, -0.150371, 0.226976,
		37.398888, 37.363644, 22.842852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090343, 37.610069, 23.321114>,  <38.072441, 37.468906, 22.683969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090343, 37.610069, 23.321114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725311, 37.446762, 23.312078>,  <37.506290, 37.348778, 23.306658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725311, 37.446762, 23.312078>,  <38.090343, 37.610069, 23.321114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725311, 37.446762, 23.312078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097788, -0.271554, 0.957442,
		-0.397027, 0.871536, 0.287740,
		-0.912583, -0.408268, -0.022588,
		37.451538, 37.324284, 23.305302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661041, 37.995724, 23.809549>,  <38.090343, 37.610069, 23.321114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661041, 37.995724, 23.809549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495384, 37.635803, 23.754648>,  <37.395988, 37.419849, 23.721708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495384, 37.635803, 23.754648>,  <37.661041, 37.995724, 23.809549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495384, 37.635803, 23.754648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030493, -0.164421, 0.985919,
		-0.909700, 0.404127, 0.095532,
		-0.414144, -0.899804, -0.137251,
		37.371140, 37.365864, 23.713472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189930, 37.909847, 24.326691>,  <37.661041, 37.995724, 23.809549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189930, 37.909847, 24.326691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210011, 37.530407, 24.201698>,  <37.222057, 37.302742, 24.126703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210011, 37.530407, 24.201698>,  <37.189930, 37.909847, 24.326691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210011, 37.530407, 24.201698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246638, -0.314960, 0.916499,
		-0.967807, 0.031062, -0.249770,
		0.050199, -0.948597, -0.312482,
		37.225071, 37.245827, 24.107954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570137, 37.607697, 24.575352>,  <37.189930, 37.909847, 24.326691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570137, 37.607697, 24.575352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862411, 37.337490, 24.535810>,  <37.037777, 37.175365, 24.512085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862411, 37.337490, 24.535810>,  <36.570137, 37.607697, 24.575352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862411, 37.337490, 24.535810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246729, -0.396295, 0.884350,
		-0.636570, -0.621793, -0.456238,
		0.730687, -0.675518, -0.098855,
		37.081619, 37.134834, 24.506153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302967, 36.933994, 24.855705>,  <36.570137, 37.607697, 24.575352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302967, 36.933994, 24.855705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702625, 36.945667, 24.867458>,  <36.942421, 36.952671, 24.874510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702625, 36.945667, 24.867458>,  <36.302967, 36.933994, 24.855705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702625, 36.945667, 24.867458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025585, -0.122948, 0.992083,
		0.032561, -0.991984, -0.122096,
		0.999142, 0.029180, 0.029383,
		37.002369, 36.954422, 24.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484463, 36.336647, 25.233843>,  <36.302967, 36.933994, 24.855705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484463, 36.336647, 25.233843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817875, 36.553688, 25.275434>,  <37.017921, 36.683914, 25.300390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817875, 36.553688, 25.275434>,  <36.484463, 36.336647, 25.233843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817875, 36.553688, 25.275434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008007, -0.176320, 0.984300,
		0.552422, -0.821273, -0.142622,
		0.833526, 0.542607, 0.103979,
		37.067932, 36.716469, 25.306629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827183, 35.932842, 25.711864>,  <36.484463, 36.336647, 25.233843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827183, 35.932842, 25.711864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997269, 36.293995, 25.737146>,  <37.099319, 36.510689, 25.752316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997269, 36.293995, 25.737146>,  <36.827183, 35.932842, 25.711864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997269, 36.293995, 25.737146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010933, -0.074953, 0.997127,
		0.905029, -0.423298, -0.041742,
		0.425210, 0.902885, 0.063207,
		37.124832, 36.564861, 25.756109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323170, 35.856552, 26.216133>,  <36.827183, 35.932842, 25.711864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323170, 35.856552, 26.216133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278042, 36.252674, 26.183714>,  <37.250965, 36.490349, 26.164263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278042, 36.252674, 26.183714>,  <37.323170, 35.856552, 26.216133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278042, 36.252674, 26.183714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098690, 0.092335, 0.990825,
		0.988702, 0.103783, -0.108150,
		-0.112817, 0.990305, -0.081050,
		37.244198, 36.549767, 26.159399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873116, 36.168949, 26.522018>,  <37.323170, 35.856552, 26.216133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873116, 36.168949, 26.522018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593094, 36.454529, 26.527611>,  <37.425079, 36.625877, 26.530966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593094, 36.454529, 26.527611>,  <37.873116, 36.168949, 26.522018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593094, 36.454529, 26.527611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144525, 0.122483, 0.981891,
		0.699309, 0.689400, -0.188929,
		-0.700057, 0.713950, 0.013982,
		37.383076, 36.668713, 26.531805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188381, 36.749138, 26.813459>,  <37.873116, 36.168949, 26.522018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188381, 36.749138, 26.813459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792431, 36.777164, 26.862841>,  <37.554863, 36.793980, 26.892469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792431, 36.777164, 26.862841>,  <38.188381, 36.749138, 26.813459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792431, 36.777164, 26.862841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131569, 0.126387, 0.983217,
		0.053291, 0.989503, -0.134326,
		-0.989874, 0.070069, 0.123453,
		37.495468, 36.798183, 26.899876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100471, 37.259129, 27.286940>,  <38.188381, 36.749138, 26.813459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100471, 37.259129, 27.286940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734371, 37.098255, 27.296509>,  <37.514713, 37.001732, 27.302250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734371, 37.098255, 27.296509>,  <38.100471, 37.259129, 27.286940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734371, 37.098255, 27.296509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025494, 0.117065, 0.992797,
		-0.402085, 0.908045, -0.117397,
		-0.915247, -0.402181, 0.023921,
		37.459797, 36.977600, 27.303684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681484, 37.739048, 27.663895>,  <38.100471, 37.259129, 27.286940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681484, 37.739048, 27.663895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502792, 37.381260, 27.671398>,  <37.395576, 37.166588, 27.675901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502792, 37.381260, 27.671398>,  <37.681484, 37.739048, 27.663895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502792, 37.381260, 27.671398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270654, 0.155102, 0.950100,
		-0.852747, 0.419361, -0.311381,
		-0.446731, -0.894472, 0.018761,
		37.368774, 37.112919, 27.677027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082909, 37.846069, 28.037237>,  <37.681484, 37.739048, 27.663895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082909, 37.846069, 28.037237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139019, 37.450062, 28.031895>,  <37.172684, 37.212456, 28.028688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139019, 37.450062, 28.031895>,  <37.082909, 37.846069, 28.037237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139019, 37.450062, 28.031895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257044, -0.049443, 0.965134,
		-0.956165, -0.131951, -0.261415,
		0.140275, -0.990022, -0.013359,
		37.181103, 37.153053, 28.027887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548737, 37.569664, 28.381636>,  <37.082909, 37.846069, 28.037237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548737, 37.569664, 28.381636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812370, 37.269501, 28.401630>,  <36.970551, 37.089401, 28.413628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812370, 37.269501, 28.401630>,  <36.548737, 37.569664, 28.381636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812370, 37.269501, 28.401630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269054, -0.173199, 0.947424,
		-0.702298, -0.637877, -0.316053,
		0.659080, -0.750409, 0.049986,
		37.010094, 37.044376, 28.416626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257183, 36.992455, 28.708714>,  <36.548737, 37.569664, 28.381636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257183, 36.992455, 28.708714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641308, 36.904831, 28.777781>,  <36.871784, 36.852257, 28.819221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641308, 36.904831, 28.777781>,  <36.257183, 36.992455, 28.708714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641308, 36.904831, 28.777781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219960, -0.214077, 0.951729,
		-0.171521, -0.951937, -0.253765,
		0.960312, -0.219059, 0.172670,
		36.929401, 36.839111, 28.829580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302696, 36.421181, 29.176880>,  <36.257183, 36.992455, 28.708714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302696, 36.421181, 29.176880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684845, 36.538250, 29.192940>,  <36.914135, 36.608490, 29.202576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684845, 36.538250, 29.192940>,  <36.302696, 36.421181, 29.176880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684845, 36.538250, 29.192940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001580, -0.130850, 0.991401,
		0.295407, -0.947218, -0.124548,
		0.955370, 0.292670, 0.040150,
		36.971455, 36.626053, 29.204985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629425, 35.942444, 29.499514>,  <36.302696, 36.421181, 29.176880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629425, 35.942444, 29.499514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899323, 36.235298, 29.536798>,  <37.061264, 36.411011, 29.559170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899323, 36.235298, 29.536798>,  <36.629425, 35.942444, 29.499514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899323, 36.235298, 29.536798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065014, -0.184767, 0.980630,
		0.735179, -0.655618, -0.172270,
		0.674749, 0.732138, 0.093212,
		37.101746, 36.454941, 29.564762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193306, 35.652554, 29.844664>,  <36.629425, 35.942444, 29.499514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193306, 35.652554, 29.844664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214581, 36.048344, 29.898483>,  <37.227345, 36.285820, 29.930775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214581, 36.048344, 29.898483>,  <37.193306, 35.652554, 29.844664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214581, 36.048344, 29.898483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059677, -0.137647, 0.988682,
		0.996800, -0.044552, -0.066369,
		0.053183, 0.989479, 0.134547,
		37.230537, 36.345188, 29.938847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767952, 35.831718, 30.415419>,  <37.193306, 35.652554, 29.844664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767952, 35.831718, 30.415419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542637, 36.162201, 30.419373>,  <37.407448, 36.360489, 30.421745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542637, 36.162201, 30.419373>,  <37.767952, 35.831718, 30.415419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542637, 36.162201, 30.419373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029442, -0.032027, 0.999053,
		0.825737, 0.562462, 0.042366,
		-0.563286, 0.826203, 0.009886,
		37.373650, 36.410061, 30.422338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056850, 36.174709, 30.975956>,  <37.767952, 35.831718, 30.415419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056850, 36.174709, 30.975956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720711, 36.371399, 30.884714>,  <37.519028, 36.489410, 30.829969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720711, 36.371399, 30.884714>,  <38.056850, 36.174709, 30.975956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720711, 36.371399, 30.884714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131713, 0.222968, 0.965886,
		0.525806, 0.841722, -0.122605,
		-0.840345, 0.491720, -0.228104,
		37.468609, 36.518913, 30.816282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108791, 36.676006, 31.420727>,  <38.056850, 36.174709, 30.975956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108791, 36.676006, 31.420727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721180, 36.637806, 31.329626>,  <37.488613, 36.614883, 31.274965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721180, 36.637806, 31.329626>,  <38.108791, 36.676006, 31.420727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721180, 36.637806, 31.329626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187805, -0.313909, 0.930694,
		-0.160380, 0.944638, 0.286249,
		-0.969024, -0.095506, -0.227752,
		37.430473, 36.609154, 31.261301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828793, 37.082069, 31.898228>,  <38.108791, 36.676006, 31.420727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828793, 37.082069, 31.898228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534416, 36.832161, 31.793880>,  <37.357792, 36.682217, 31.731272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534416, 36.832161, 31.793880>,  <37.828793, 37.082069, 31.898228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534416, 36.832161, 31.793880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169825, -0.202643, 0.964414,
		-0.655400, 0.754055, 0.043032,
		-0.735942, -0.624769, -0.260870,
		37.313633, 36.644730, 31.715620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302830, 37.293629, 32.395412>,  <37.828793, 37.082069, 31.898228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302830, 37.293629, 32.395412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191956, 36.951630, 32.220078>,  <37.125431, 36.746429, 32.114876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191956, 36.951630, 32.220078>,  <37.302830, 37.293629, 32.395412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191956, 36.951630, 32.220078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485302, -0.269154, 0.831888,
		-0.829246, 0.443315, -0.340327,
		-0.277188, -0.855001, -0.438337,
		37.108799, 36.695129, 32.088577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601109, 37.110184, 32.686649>,  <37.302830, 37.293629, 32.395412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601109, 37.110184, 32.686649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750923, 36.764439, 32.552422>,  <36.840813, 36.556992, 32.471886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750923, 36.764439, 32.552422>,  <36.601109, 37.110184, 32.686649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750923, 36.764439, 32.552422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472209, -0.489273, 0.733233,
		-0.797960, -0.116165, -0.591409,
		0.374537, -0.864360, -0.335566,
		36.863285, 36.505131, 32.451752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044548, 36.666561, 32.760216>,  <36.601109, 37.110184, 32.686649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044548, 36.666561, 32.760216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363926, 36.425976, 32.749336>,  <36.555553, 36.281624, 32.742809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363926, 36.425976, 32.749336>,  <36.044548, 36.666561, 32.760216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363926, 36.425976, 32.749336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250578, -0.373047, 0.893334,
		-0.547452, -0.706458, -0.448568,
		0.798440, -0.601460, -0.027202,
		36.603458, 36.245537, 32.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818886, 35.851906, 33.006229>,  <36.044548, 36.666561, 32.760216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818886, 35.851906, 33.006229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212406, 35.917568, 33.035061>,  <36.448517, 35.956966, 33.052361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212406, 35.917568, 33.035061>,  <35.818886, 35.851906, 33.006229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212406, 35.917568, 33.035061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001898, -0.411535, 0.911392,
		0.179270, -0.896489, -0.405179,
		0.983798, 0.164155, 0.072074,
		36.507545, 35.966816, 33.056683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085564, 35.148117, 33.190048>,  <35.818886, 35.851906, 33.006229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085564, 35.148117, 33.190048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360634, 35.418385, 33.296314>,  <36.525677, 35.580544, 33.360073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360634, 35.418385, 33.296314>,  <36.085564, 35.148117, 33.190048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360634, 35.418385, 33.296314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033381, -0.394962, 0.918091,
		0.725251, -0.622480, -0.294160,
		0.687675, 0.675665, 0.265667,
		36.566936, 35.621082, 33.376015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580620, 34.805557, 33.443584>,  <36.085564, 35.148117, 33.190048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580620, 34.805557, 33.443584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667862, 35.162052, 33.602650>,  <36.720207, 35.375950, 33.698090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667862, 35.162052, 33.602650>,  <36.580620, 34.805557, 33.443584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667862, 35.162052, 33.602650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112660, -0.427738, 0.896854,
		0.969400, -0.150812, -0.193700,
		0.218109, 0.891233, 0.397659,
		36.733295, 35.429420, 33.721947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023548, 34.646210, 33.989941>,  <36.580620, 34.805557, 33.443584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023548, 34.646210, 33.989941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946049, 35.022392, 34.101654>,  <36.899548, 35.248104, 34.168682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946049, 35.022392, 34.101654>,  <37.023548, 34.646210, 33.989941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946049, 35.022392, 34.101654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164995, -0.311860, 0.935692,
		0.967077, 0.135209, 0.215593,
		-0.193748, 0.940459, 0.279284,
		36.887924, 35.304531, 34.185440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549652, 34.923668, 34.481972>,  <37.023548, 34.646210, 33.989941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549652, 34.923668, 34.481972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202244, 35.113552, 34.538998>,  <36.993797, 35.227482, 34.573212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202244, 35.113552, 34.538998>,  <37.549652, 34.923668, 34.481972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202244, 35.113552, 34.538998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028756, -0.335399, 0.941637,
		0.494815, 0.813733, 0.304953,
		-0.868522, 0.474706, 0.142561,
		36.941689, 35.255962, 34.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026997, 35.485756, 34.455662>,  <37.549652, 34.923668, 34.481972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026997, 35.485756, 34.455662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395725, 35.334824, 34.420174>,  <38.616962, 35.244263, 34.398880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395725, 35.334824, 34.420174>,  <38.026997, 35.485756, 34.455662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395725, 35.334824, 34.420174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099695, 0.451985, -0.886437,
		0.374584, 0.808288, 0.454266,
		0.921818, -0.377333, -0.088724,
		38.672272, 35.221622, 34.393555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471172, 36.107780, 34.287563>,  <38.026997, 35.485756, 34.455662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471172, 36.107780, 34.287563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609295, 35.751732, 34.168602>,  <38.692169, 35.538101, 34.097225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609295, 35.751732, 34.168602>,  <38.471172, 36.107780, 34.287563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609295, 35.751732, 34.168602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230407, 0.387600, -0.892568,
		0.909768, 0.239685, 0.338931,
		0.345305, -0.890122, -0.297401,
		38.712887, 35.484695, 34.079380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811516, 36.279819, 33.688416>,  <38.471172, 36.107780, 34.287563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811516, 36.279819, 33.688416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861389, 35.883579, 33.665916>,  <38.891312, 35.645836, 33.652416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861389, 35.883579, 33.665916>,  <38.811516, 36.279819, 33.688416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861389, 35.883579, 33.665916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352456, 0.097211, -0.930766,
		0.927485, 0.096226, 0.361264,
		0.124682, -0.990601, -0.056246,
		38.898792, 35.586399, 33.649044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518398, 36.133739, 33.403725>,  <38.811516, 36.279819, 33.688416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518398, 36.133739, 33.403725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283257, 35.835819, 33.277424>,  <39.142174, 35.657066, 33.201645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283257, 35.835819, 33.277424>,  <39.518398, 36.133739, 33.403725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283257, 35.835819, 33.277424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431420, 0.041547, -0.901194,
		0.684331, -0.665989, 0.296900,
		-0.587850, -0.744804, -0.315753,
		39.106903, 35.612377, 33.182697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034889, 35.663414, 33.124065>,  <39.518398, 36.133739, 33.403725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034889, 35.663414, 33.124065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668633, 35.589500, 32.981258>,  <39.448879, 35.545155, 32.895576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668633, 35.589500, 32.981258>,  <40.034889, 35.663414, 33.124065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668633, 35.589500, 32.981258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359899, 0.018854, -0.932801,
		0.179094, -0.982599, 0.049239,
		-0.915641, -0.184780, -0.357013,
		39.393940, 35.534065, 32.874153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212708, 35.202660, 32.624298>,  <40.034889, 35.663414, 33.124065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212708, 35.202660, 32.624298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838802, 35.321678, 32.546646>,  <39.614460, 35.393089, 32.500053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838802, 35.321678, 32.546646>,  <40.212708, 35.202660, 32.624298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838802, 35.321678, 32.546646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227030, 0.079979, -0.970598,
		-0.273272, -0.951351, -0.142313,
		-0.934762, 0.297547, -0.194129,
		39.558372, 35.410942, 32.488407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003117, 34.850849, 32.028774>,  <40.212708, 35.202660, 32.624298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003117, 34.850849, 32.028774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767231, 35.173191, 32.050121>,  <39.625702, 35.366596, 32.062931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767231, 35.173191, 32.050121>,  <40.003117, 34.850849, 32.028774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767231, 35.173191, 32.050121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155283, 0.177985, -0.971704,
		-0.792547, -0.564736, -0.230095,
		-0.589709, 0.805851, 0.053368,
		39.590317, 35.414948, 32.066132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590225, 34.763069, 31.411125>,  <40.003117, 34.850849, 32.028774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590225, 34.763069, 31.411125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517876, 35.142452, 31.515213>,  <39.474468, 35.370083, 31.577665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517876, 35.142452, 31.515213>,  <39.590225, 34.763069, 31.411125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517876, 35.142452, 31.515213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169507, 0.290684, -0.941685,
		-0.968789, -0.126215, -0.213347,
		-0.180872, 0.948458, 0.260218,
		39.463615, 35.426991, 31.593279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031425, 35.056160, 31.000086>,  <39.590225, 34.763069, 31.411125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031425, 35.056160, 31.000086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236423, 35.374168, 31.129875>,  <39.359421, 35.564976, 31.207748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236423, 35.374168, 31.129875>,  <39.031425, 35.056160, 31.000086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236423, 35.374168, 31.129875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055418, 0.346461, -0.936426,
		-0.856900, 0.497895, 0.133501,
		0.512495, 0.795025, 0.324475,
		39.390171, 35.612675, 31.227219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827412, 35.618977, 30.481874>,  <39.031425, 35.056160, 31.000086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827412, 35.618977, 30.481874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161049, 35.740185, 30.666252>,  <39.361233, 35.812908, 30.776878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161049, 35.740185, 30.666252>,  <38.827412, 35.618977, 30.481874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161049, 35.740185, 30.666252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320880, 0.413162, -0.852252,
		-0.448690, 0.858766, 0.247384,
		0.834094, 0.303016, 0.460942,
		39.411278, 35.831089, 30.804535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980148, 36.267361, 30.165979>,  <38.827412, 35.618977, 30.481874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980148, 36.267361, 30.165979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328762, 36.170116, 30.336311>,  <39.537930, 36.111771, 30.438511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328762, 36.170116, 30.336311>,  <38.980148, 36.267361, 30.165979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328762, 36.170116, 30.336311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490204, 0.411518, -0.768344,
		0.011558, 0.878379, 0.477826,
		0.871531, -0.243113, 0.425828,
		39.590221, 36.097183, 30.464060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440727, 36.909252, 30.143068>,  <38.980148, 36.267361, 30.165979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440727, 36.909252, 30.143068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657978, 36.573437, 30.148600>,  <39.788330, 36.371948, 30.151918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657978, 36.573437, 30.148600>,  <39.440727, 36.909252, 30.143068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657978, 36.573437, 30.148600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474469, 0.293281, -0.829979,
		0.692743, 0.457344, 0.557623,
		0.543127, -0.839537, 0.013827,
		39.820915, 36.321575, 30.152748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950516, 37.048775, 29.831463>,  <39.440727, 36.909252, 30.143068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950516, 37.048775, 29.831463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988640, 36.651196, 29.809612>,  <40.011517, 36.412647, 29.796503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988640, 36.651196, 29.809612>,  <39.950516, 37.048775, 29.831463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988640, 36.651196, 29.809612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545940, 0.098081, -0.832063,
		0.832385, 0.049486, 0.551984,
		0.095315, -0.993947, -0.054625,
		40.017235, 36.353012, 29.793224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647984, 36.941818, 29.590685>,  <39.950516, 37.048775, 29.831463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647984, 36.941818, 29.590685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472740, 36.591827, 29.508251>,  <40.367596, 36.381832, 29.458792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472740, 36.591827, 29.508251>,  <40.647984, 36.941818, 29.590685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472740, 36.591827, 29.508251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305537, 0.070664, -0.949554,
		0.845404, -0.478974, 0.236381,
		-0.438109, -0.874980, -0.206084,
		40.341309, 36.329334, 29.446426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082188, 36.495785, 29.228115>,  <40.647984, 36.941818, 29.590685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082188, 36.495785, 29.228115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722176, 36.347477, 29.136490>,  <40.506168, 36.258492, 29.081514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722176, 36.347477, 29.136490>,  <41.082188, 36.495785, 29.228115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722176, 36.347477, 29.136490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267643, -0.055422, -0.961923,
		0.343955, -0.927071, 0.149115,
		-0.900035, -0.370768, -0.229061,
		40.452164, 36.236248, 29.067772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201542, 35.908268, 28.669506>,  <41.082188, 36.495785, 29.228115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201542, 35.908268, 28.669506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820862, 36.028625, 28.645042>,  <40.592453, 36.100838, 28.630363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820862, 36.028625, 28.645042>,  <41.201542, 35.908268, 28.669506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820862, 36.028625, 28.645042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057111, -0.022240, -0.998120,
		-0.301685, -0.953399, 0.003981,
		-0.951695, 0.300891, -0.061159,
		40.535355, 36.118893, 28.626694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810810, 35.377678, 28.221241>,  <41.201542, 35.908268, 28.669506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810810, 35.377678, 28.221241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632423, 35.735580, 28.230379>,  <40.525391, 35.950321, 28.235861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632423, 35.735580, 28.230379>,  <40.810810, 35.377678, 28.221241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632423, 35.735580, 28.230379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009271, 0.020902, -0.999739,
		-0.895003, -0.446060, -0.001026,
		-0.445965, 0.894759, 0.022843,
		40.498634, 36.004009, 28.237232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427589, 35.327785, 27.606026>,  <40.810810, 35.377678, 28.221241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427589, 35.327785, 27.606026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422508, 35.715412, 27.704611>,  <40.419460, 35.947990, 27.763762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422508, 35.715412, 27.704611>,  <40.427589, 35.327785, 27.606026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422508, 35.715412, 27.704611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358593, 0.225672, -0.905805,
		-0.933407, -0.099889, 0.344634,
		-0.012706, 0.969069, 0.246463,
		40.418697, 36.006134, 27.778549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810234, 35.577675, 27.438089>,  <40.427589, 35.327785, 27.606026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810234, 35.577675, 27.438089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007870, 35.924355, 27.465534>,  <40.126450, 36.132362, 27.482000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007870, 35.924355, 27.465534>,  <39.810234, 35.577675, 27.438089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007870, 35.924355, 27.465534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200508, 0.190381, -0.961016,
		-0.845976, 0.461068, 0.267845,
		0.494086, 0.866702, 0.068610,
		40.156097, 36.184364, 27.486116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377800, 36.218090, 27.296196>,  <39.810234, 35.577675, 27.438089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377800, 36.218090, 27.296196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760857, 36.306606, 27.222490>,  <39.990692, 36.359715, 27.178267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760857, 36.306606, 27.222490>,  <39.377800, 36.218090, 27.296196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760857, 36.306606, 27.222490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245977, 0.295919, -0.922999,
		-0.149724, 0.929227, 0.337817,
		0.957642, 0.221291, -0.184262,
		40.048149, 36.372993, 27.167212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379181, 36.782578, 26.905180>,  <39.377800, 36.218090, 27.296196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379181, 36.782578, 26.905180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742920, 36.632565, 26.833145>,  <39.961163, 36.542557, 26.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742920, 36.632565, 26.833145>,  <39.379181, 36.782578, 26.905180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742920, 36.632565, 26.833145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124414, 0.167920, -0.977918,
		0.396990, 0.911677, 0.106039,
		0.909351, -0.375031, -0.180087,
		40.015724, 36.520054, 26.779119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704967, 37.224308, 26.379219>,  <39.379181, 36.782578, 26.905180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704967, 37.224308, 26.379219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902843, 36.877579, 26.354218>,  <40.021568, 36.669540, 26.339216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902843, 36.877579, 26.354218>,  <39.704967, 37.224308, 26.379219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902843, 36.877579, 26.354218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029543, 0.088653, -0.995624,
		0.868568, 0.490678, 0.069464,
		0.494689, -0.866819, -0.062505,
		40.051250, 36.617535, 26.335466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108170, 37.269306, 25.775074>,  <39.704967, 37.224308, 26.379219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108170, 37.269306, 25.775074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096535, 36.875374, 25.843496>,  <40.089554, 36.639015, 25.884550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096535, 36.875374, 25.843496>,  <40.108170, 37.269306, 25.775074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096535, 36.875374, 25.843496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163015, -0.173511, -0.971247,
		0.986195, -0.000364, 0.165589,
		-0.029085, -0.984832, 0.171056,
		40.087811, 36.579926, 25.894814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532383, 36.958530, 25.239386>,  <40.108170, 37.269306, 25.775074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532383, 36.958530, 25.239386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281590, 36.675793, 25.370388>,  <40.131115, 36.506149, 25.448990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281590, 36.675793, 25.370388>,  <40.532383, 36.958530, 25.239386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281590, 36.675793, 25.370388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199721, -0.260503, -0.944590,
		0.752997, -0.657651, 0.022159,
		-0.626983, -0.706848, 0.327505,
		40.093494, 36.463737, 25.468639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608086, 36.450348, 24.733028>,  <40.532383, 36.958530, 25.239386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608086, 36.450348, 24.733028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285812, 36.334377, 24.939648>,  <40.092449, 36.264797, 25.063620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285812, 36.334377, 24.939648>,  <40.608086, 36.450348, 24.733028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285812, 36.334377, 24.939648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406508, -0.363657, -0.838155,
		0.430848, -0.885267, 0.175135,
		-0.805680, -0.289924, 0.516549,
		40.044109, 36.247398, 25.094612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528599, 35.817207, 24.635777>,  <40.608086, 36.450348, 24.733028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528599, 35.817207, 24.635777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166759, 35.969139, 24.713158>,  <39.949654, 36.060299, 24.759586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166759, 35.969139, 24.713158>,  <40.528599, 35.817207, 24.635777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166759, 35.969139, 24.713158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348931, -0.399174, -0.847884,
		-0.244834, -0.834498, 0.493628,
		-0.904601, 0.379833, 0.193451,
		39.895378, 36.083088, 24.771193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152649, 35.245499, 24.487240>,  <40.528599, 35.817207, 24.635777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152649, 35.245499, 24.487240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876507, 35.534878, 24.489861>,  <39.710823, 35.708504, 24.491432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876507, 35.534878, 24.489861>,  <40.152649, 35.245499, 24.487240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876507, 35.534878, 24.489861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419585, -0.392982, -0.818238,
		-0.589375, -0.567621, 0.574842,
		-0.690351, 0.723444, 0.006551,
		39.669403, 35.751911, 24.491825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587914, 34.934681, 24.233261>,  <40.152649, 35.245499, 24.487240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587914, 34.934681, 24.233261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464508, 35.310970, 24.176891>,  <39.390465, 35.536743, 24.143070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464508, 35.310970, 24.176891>,  <39.587914, 34.934681, 24.233261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464508, 35.310970, 24.176891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473148, -0.280290, -0.835206,
		-0.825196, -0.190997, 0.531574,
		-0.308517, 0.940722, -0.140924,
		39.371952, 35.593185, 24.134615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914066, 34.920082, 24.117088>,  <39.587914, 34.934681, 24.233261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914066, 34.920082, 24.117088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956963, 35.283192, 23.954882>,  <38.982700, 35.501057, 23.857557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956963, 35.283192, 23.954882>,  <38.914066, 34.920082, 24.117088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956963, 35.283192, 23.954882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476792, -0.310953, -0.822178,
		-0.872449, 0.281521, 0.399472,
		0.107244, 0.907774, -0.405518,
		38.989136, 35.555523, 23.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205681, 35.256748, 23.749569>,  <38.914066, 34.920082, 24.117088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205681, 35.256748, 23.749569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539223, 35.419041, 23.599865>,  <38.739349, 35.516415, 23.510042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539223, 35.419041, 23.599865>,  <38.205681, 35.256748, 23.749569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539223, 35.419041, 23.599865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314308, -0.208370, -0.926171,
		-0.453761, 0.889924, -0.046225,
		0.833853, 0.405731, -0.374260,
		38.789379, 35.540760, 23.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943661, 35.648014, 23.102001>,  <38.205681, 35.256748, 23.749569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943661, 35.648014, 23.102001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334896, 35.589561, 23.042677>,  <38.569637, 35.554489, 23.007082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334896, 35.589561, 23.042677>,  <37.943661, 35.648014, 23.102001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334896, 35.589561, 23.042677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161935, -0.086168, -0.983032,
		0.130875, 0.985505, -0.107943,
		0.978084, -0.146134, -0.148311,
		38.628323, 35.545723, 22.998184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132568, 35.970173, 22.456343>,  <37.943661, 35.648014, 23.102001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132568, 35.970173, 22.456343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443481, 35.727657, 22.523560>,  <38.630032, 35.582150, 22.563890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443481, 35.727657, 22.523560>,  <38.132568, 35.970173, 22.456343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443481, 35.727657, 22.523560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055750, -0.199673, -0.978275,
		0.626671, 0.769769, -0.121402,
		0.777287, -0.606289, 0.168044,
		38.676666, 35.545769, 22.573973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665325, 36.244987, 22.150810>,  <38.132568, 35.970173, 22.456343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665325, 36.244987, 22.150810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663750, 35.845924, 22.178135>,  <38.662804, 35.606487, 22.194529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663750, 35.845924, 22.178135>,  <38.665325, 36.244987, 22.150810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663750, 35.845924, 22.178135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081628, -0.067761, -0.994357,
		0.996655, -0.009492, -0.081170,
		-0.003938, -0.997656, 0.068309,
		38.662567, 35.546627, 22.198627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960407, 36.085182, 21.456633>,  <38.665325, 36.244987, 22.150810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960407, 36.085182, 21.456633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854538, 35.725899, 21.597015>,  <38.791016, 35.510330, 21.681246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854538, 35.725899, 21.597015>,  <38.960407, 36.085182, 21.456633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854538, 35.725899, 21.597015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147785, -0.321857, -0.935183,
		0.952946, -0.299385, -0.047555,
		-0.264674, -0.898207, 0.350957,
		38.775135, 35.456436, 21.702303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279312, 35.709583, 21.004910>,  <38.960407, 36.085182, 21.456633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279312, 35.709583, 21.004910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982628, 35.488857, 21.157415>,  <38.804619, 35.356422, 21.248919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982628, 35.488857, 21.157415>,  <39.279312, 35.709583, 21.004910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982628, 35.488857, 21.157415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104723, -0.466195, -0.878462,
		0.662494, -0.691492, 0.287994,
		-0.741711, -0.551816, 0.381267,
		38.760113, 35.323311, 21.271795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465652, 35.074387, 20.842255>,  <39.279312, 35.709583, 21.004910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465652, 35.074387, 20.842255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070419, 35.069893, 20.903667>,  <38.833279, 35.067196, 20.940516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070419, 35.069893, 20.903667>,  <39.465652, 35.074387, 20.842255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070419, 35.069893, 20.903667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143832, -0.288092, -0.946739,
		0.054869, -0.957537, 0.283042,
		-0.988080, -0.011236, 0.153532,
		38.773994, 35.066521, 20.949726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226036, 34.456783, 20.503466>,  <39.465652, 35.074387, 20.842255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226036, 34.456783, 20.503466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898254, 34.685303, 20.521841>,  <38.701584, 34.822414, 20.532866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898254, 34.685303, 20.521841>,  <39.226036, 34.456783, 20.503466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898254, 34.685303, 20.521841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244460, -0.275903, -0.929579,
		-0.518393, -0.772979, 0.365750,
		-0.819456, 0.571298, 0.045936,
		38.652416, 34.856693, 20.535622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640537, 34.407055, 19.974472>,  <39.226036, 34.456783, 20.503466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640537, 34.407055, 19.974472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707653, 34.039108, 19.832663>,  <38.747921, 33.818340, 19.747578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707653, 34.039108, 19.832663>,  <38.640537, 34.407055, 19.974472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707653, 34.039108, 19.832663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172144, -0.326757, 0.929299,
		-0.970677, -0.216953, 0.103525,
		0.167786, -0.919870, -0.354523,
		38.757988, 33.763145, 19.726305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383656, 33.946217, 20.474020>,  <38.640537, 34.407055, 19.974472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383656, 33.946217, 20.474020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625160, 33.719788, 20.249510>,  <38.770065, 33.583931, 20.114803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625160, 33.719788, 20.249510>,  <38.383656, 33.946217, 20.474020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625160, 33.719788, 20.249510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317139, -0.475408, 0.820615,
		-0.731364, -0.673460, -0.107511,
		0.603763, -0.566072, -0.561277,
		38.806290, 33.549965, 20.081127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478184, 33.327484, 20.824081>,  <38.383656, 33.946217, 20.474020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478184, 33.327484, 20.824081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798183, 33.351971, 20.585331>,  <38.990181, 33.366661, 20.442081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798183, 33.351971, 20.585331>,  <38.478184, 33.327484, 20.824081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798183, 33.351971, 20.585331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571899, -0.378696, 0.727681,
		-0.181489, -0.923494, -0.337964,
		0.799996, 0.061215, -0.596875,
		39.038181, 33.370335, 20.406269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932838, 32.762104, 21.085661>,  <38.478184, 33.327484, 20.824081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932838, 32.762104, 21.085661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152370, 33.000168, 20.850861>,  <39.284092, 33.143005, 20.709980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152370, 33.000168, 20.850861>,  <38.932838, 32.762104, 21.085661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152370, 33.000168, 20.850861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756865, -0.055680, 0.651196,
		0.354879, -0.801679, -0.481011,
		0.548833, 0.595156, -0.587003,
		39.317020, 33.178715, 20.674759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545658, 32.454578, 21.184851>,  <38.932838, 32.762104, 21.085661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545658, 32.454578, 21.184851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622517, 32.815025, 21.029381>,  <39.668633, 33.031292, 20.936100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622517, 32.815025, 21.029381>,  <39.545658, 32.454578, 21.184851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622517, 32.815025, 21.029381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758600, 0.114875, 0.641350,
		0.622581, -0.418079, -0.661516,
		0.192143, 0.901118, -0.388674,
		39.680161, 33.085361, 20.912779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284920, 32.406891, 21.044024>,  <39.545658, 32.454578, 21.184851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284920, 32.406891, 21.044024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152611, 32.781994, 21.086357>,  <40.073223, 33.007057, 21.111757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152611, 32.781994, 21.086357>,  <40.284920, 32.406891, 21.044024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152611, 32.781994, 21.086357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717963, 0.177279, 0.673129,
		0.612468, 0.298639, -0.731913,
		-0.330775, 0.937756, 0.105834,
		40.053379, 33.063320, 21.118107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904610, 32.673008, 21.190256>,  <40.284920, 32.406891, 21.044024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904610, 32.673008, 21.190256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619797, 32.929024, 21.305740>,  <40.448910, 33.082634, 21.375031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619797, 32.929024, 21.305740>,  <40.904610, 32.673008, 21.190256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619797, 32.929024, 21.305740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570529, 0.287716, 0.769231,
		0.409274, 0.712436, -0.570026,
		-0.712034, 0.640042, 0.288711,
		40.406185, 33.121037, 21.392353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295914, 33.271954, 21.467592>,  <40.904610, 32.673008, 21.190256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295914, 33.271954, 21.467592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931976, 33.302494, 21.630739>,  <40.713615, 33.320816, 21.728626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931976, 33.302494, 21.630739>,  <41.295914, 33.271954, 21.467592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931976, 33.302494, 21.630739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414338, 0.113793, 0.902981,
		0.022529, 0.990566, -0.135169,
		-0.909844, 0.076349, 0.407866,
		40.659023, 33.325397, 21.753099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271576, 33.917004, 21.992502>,  <41.295914, 33.271954, 21.467592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271576, 33.917004, 21.992502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963154, 33.683685, 22.094669>,  <40.778099, 33.543694, 22.155970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963154, 33.683685, 22.094669>,  <41.271576, 33.917004, 21.992502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963154, 33.683685, 22.094669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169046, 0.199214, 0.965265,
		-0.613921, 0.787449, -0.055001,
		-0.771054, -0.583299, 0.255417,
		40.731838, 33.508698, 22.171295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015339, 34.227940, 22.535435>,  <41.271576, 33.917004, 21.992502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015339, 34.227940, 22.535435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846249, 33.866989, 22.568943>,  <40.744793, 33.650417, 22.589048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846249, 33.866989, 22.568943>,  <41.015339, 34.227940, 22.535435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846249, 33.866989, 22.568943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036927, 0.109509, 0.993300,
		-0.905504, 0.416803, -0.079615,
		-0.422729, -0.902376, 0.083770,
		40.719429, 33.596275, 22.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417133, 34.295624, 22.888092>,  <41.015339, 34.227940, 22.535435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417133, 34.295624, 22.888092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516911, 33.912533, 22.945406>,  <40.576778, 33.682678, 22.979795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516911, 33.912533, 22.945406>,  <40.417133, 34.295624, 22.888092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516911, 33.912533, 22.945406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186284, 0.097743, 0.977622,
		-0.950302, -0.270557, -0.154028,
		0.249447, -0.957729, 0.143286,
		40.591743, 33.625214, 22.988392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957798, 34.042339, 23.514915>,  <40.417133, 34.295624, 22.888092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957798, 34.042339, 23.514915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262035, 33.784374, 23.485016>,  <40.444576, 33.629597, 23.467075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262035, 33.784374, 23.485016>,  <39.957798, 34.042339, 23.514915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262035, 33.784374, 23.485016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072687, -0.199000, 0.977300,
		-0.645149, -0.737893, -0.198234,
		0.760592, -0.644913, -0.074749,
		40.490211, 33.590900, 23.462591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749680, 33.495918, 23.998665>,  <39.957798, 34.042339, 23.514915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749680, 33.495918, 23.998665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141781, 33.441223, 23.941513>,  <40.377041, 33.408405, 23.907221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141781, 33.441223, 23.941513>,  <39.749680, 33.495918, 23.998665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141781, 33.441223, 23.941513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148076, 0.028555, 0.988564,
		-0.131090, -0.990196, 0.048238,
		0.980250, -0.136734, -0.142881,
		40.435856, 33.400204, 23.898649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918335, 32.940754, 24.352186>,  <39.749680, 33.495918, 23.998665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918335, 32.940754, 24.352186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250294, 33.159969, 24.310354>,  <40.449467, 33.291496, 24.285255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250294, 33.159969, 24.310354>,  <39.918335, 32.940754, 24.352186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250294, 33.159969, 24.310354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171075, -0.071540, 0.982657,
		0.531048, -0.833391, -0.153126,
		0.829893, 0.548034, -0.104581,
		40.499260, 33.324379, 24.278980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500256, 32.549110, 24.720028>,  <39.918335, 32.940754, 24.352186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500256, 32.549110, 24.720028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597469, 32.935730, 24.687229>,  <40.655796, 33.167702, 24.667549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597469, 32.935730, 24.687229>,  <40.500256, 32.549110, 24.720028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597469, 32.935730, 24.687229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456380, -0.039342, 0.888915,
		0.855952, -0.253456, -0.450674,
		0.243031, 0.966547, -0.081997,
		40.670380, 33.225693, 24.662630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012547, 32.616066, 25.102507>,  <40.500256, 32.549110, 24.720028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012547, 32.616066, 25.102507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938538, 33.008064, 25.073177>,  <40.894131, 33.243263, 25.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938538, 33.008064, 25.073177>,  <41.012547, 32.616066, 25.102507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938538, 33.008064, 25.073177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361276, 0.137219, 0.922307,
		0.913917, 0.144161, -0.379438,
		-0.185027, 0.979994, -0.073325,
		40.883030, 33.302063, 25.051180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583637, 32.974915, 25.389942>,  <41.012547, 32.616066, 25.102507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583637, 32.974915, 25.389942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258846, 33.206402, 25.420355>,  <41.063972, 33.345295, 25.438602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258846, 33.206402, 25.420355>,  <41.583637, 32.974915, 25.389942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258846, 33.206402, 25.420355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287394, 0.283012, 0.915046,
		0.508039, 0.764843, -0.396119,
		-0.811973, 0.578722, 0.076030,
		41.015255, 33.380020, 25.443163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856941, 33.625011, 25.622736>,  <41.583637, 32.974915, 25.389942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856941, 33.625011, 25.622736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466007, 33.622803, 25.707386>,  <41.231445, 33.621479, 25.758177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466007, 33.622803, 25.707386>,  <41.856941, 33.625011, 25.622736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466007, 33.622803, 25.707386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188803, 0.429471, 0.883124,
		-0.095760, 0.903064, -0.418696,
		-0.977335, -0.005517, 0.211627,
		41.172806, 33.621147, 25.770874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677361, 34.321579, 25.981077>,  <41.856941, 33.625011, 25.622736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677361, 34.321579, 25.981077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370686, 34.083569, 26.077511>,  <41.186680, 33.940762, 26.135372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370686, 34.083569, 26.077511>,  <41.677361, 34.321579, 25.981077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370686, 34.083569, 26.077511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103740, 0.255761, 0.961158,
		-0.633578, 0.761922, -0.134361,
		-0.766692, -0.595030, 0.241086,
		41.140678, 33.905060, 26.149837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262096, 34.791824, 26.392334>,  <41.677361, 34.321579, 25.981077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262096, 34.791824, 26.392334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143070, 34.425751, 26.501068>,  <41.071655, 34.206108, 26.566309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143070, 34.425751, 26.501068>,  <41.262096, 34.791824, 26.392334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143070, 34.425751, 26.501068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167025, 0.230437, 0.958646,
		-0.939978, 0.330660, 0.084289,
		-0.297563, -0.915185, 0.271834,
		41.053802, 34.151196, 26.582619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724197, 34.807972, 26.856413>,  <41.262096, 34.791824, 26.392334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724197, 34.807972, 26.856413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834381, 34.436405, 26.955404>,  <40.900490, 34.213467, 27.014799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834381, 34.436405, 26.955404>,  <40.724197, 34.807972, 26.856413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834381, 34.436405, 26.955404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050045, 0.243231, 0.968677,
		-0.960010, -0.279213, 0.020512,
		0.275456, -0.928913, 0.247477,
		40.917019, 34.157730, 27.029648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360622, 34.610966, 27.455564>,  <40.724197, 34.807972, 26.856413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360622, 34.610966, 27.455564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669350, 34.356628, 27.455338>,  <40.854588, 34.204025, 27.455200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669350, 34.356628, 27.455338>,  <40.360622, 34.610966, 27.455564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669350, 34.356628, 27.455338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135081, 0.163095, 0.977320,
		-0.621326, -0.754392, 0.211770,
		0.771820, -0.635840, -0.000569,
		40.900894, 34.165878, 27.455168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279778, 34.217525, 28.058130>,  <40.360622, 34.610966, 27.455564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279778, 34.217525, 28.058130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668728, 34.158375, 27.985889>,  <40.902100, 34.122883, 27.942545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668728, 34.158375, 27.985889>,  <40.279778, 34.217525, 28.058130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668728, 34.158375, 27.985889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197491, 0.108777, 0.974251,
		-0.124427, -0.983005, 0.134977,
		0.972376, -0.147880, -0.180600,
		40.960442, 34.114010, 27.931709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516449, 33.565712, 28.467230>,  <40.279778, 34.217525, 28.058130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516449, 33.565712, 28.467230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840622, 33.786438, 28.388536>,  <41.035126, 33.918873, 28.341320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840622, 33.786438, 28.388536>,  <40.516449, 33.565712, 28.467230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840622, 33.786438, 28.388536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242846, -0.010835, 0.970004,
		0.533135, -0.833894, -0.142787,
		0.810428, 0.551818, -0.196731,
		41.083752, 33.951984, 28.329517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077744, 33.110783, 28.720947>,  <40.516449, 33.565712, 28.467230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077744, 33.110783, 28.720947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201656, 33.490734, 28.704111>,  <41.276005, 33.718704, 28.694010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201656, 33.490734, 28.704111>,  <41.077744, 33.110783, 28.720947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201656, 33.490734, 28.704111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150999, -0.005443, 0.988519,
		0.938742, -0.312578, -0.145117,
		0.309779, 0.949877, -0.042090,
		41.294590, 33.775696, 28.691484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511547, 33.089870, 29.264496>,  <41.077744, 33.110783, 28.720947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511547, 33.089870, 29.264496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492481, 33.483913, 29.198410>,  <41.481041, 33.720337, 29.158758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492481, 33.483913, 29.198410>,  <41.511547, 33.089870, 29.264496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492481, 33.483913, 29.198410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201576, 0.171484, 0.964344,
		0.978312, 0.012662, -0.206748,
		-0.047664, 0.985105, -0.165213,
		41.478184, 33.779446, 29.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038036, 33.424946, 29.557529>,  <41.511547, 33.089870, 29.264496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038036, 33.424946, 29.557529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788383, 33.736156, 29.528866>,  <41.638592, 33.922882, 29.511667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788383, 33.736156, 29.528866>,  <42.038036, 33.424946, 29.557529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788383, 33.736156, 29.528866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254527, 0.289178, 0.922818,
		0.738696, 0.557724, -0.378514,
		-0.624136, 0.778023, -0.071659,
		41.601143, 33.969563, 29.507368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461983, 34.007977, 29.756319>,  <42.038036, 33.424946, 29.557529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461983, 34.007977, 29.756319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072456, 34.067478, 29.825089>,  <41.838741, 34.103180, 29.866350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072456, 34.067478, 29.825089>,  <42.461983, 34.007977, 29.756319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072456, 34.067478, 29.825089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203026, 0.228700, 0.952091,
		0.102311, 0.962064, -0.252913,
		-0.973814, 0.148757, 0.171925,
		41.780312, 34.112106, 29.876667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389984, 34.579853, 30.048782>,  <42.461983, 34.007977, 29.756319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389984, 34.579853, 30.048782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016373, 34.468567, 30.138401>,  <41.792206, 34.401794, 30.192171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016373, 34.468567, 30.138401>,  <42.389984, 34.579853, 30.048782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016373, 34.468567, 30.138401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136347, 0.302049, 0.943491,
		-0.330165, 0.911791, -0.244188,
		-0.934024, -0.278213, 0.224046,
		41.736164, 34.385101, 30.205614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032249, 35.099098, 30.398645>,  <42.389984, 34.579853, 30.048782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032249, 35.099098, 30.398645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813282, 34.778988, 30.496531>,  <41.681900, 34.586922, 30.555262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813282, 34.778988, 30.496531>,  <42.032249, 35.099098, 30.398645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813282, 34.778988, 30.496531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040971, 0.266440, 0.962980,
		-0.835855, 0.537180, -0.113066,
		-0.547419, -0.800280, 0.244714,
		41.649055, 34.538902, 30.569944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507420, 35.308643, 30.898443>,  <42.032249, 35.099098, 30.398645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507420, 35.308643, 30.898443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531685, 34.911629, 30.940769>,  <41.546246, 34.673420, 30.966166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531685, 34.911629, 30.940769>,  <41.507420, 35.308643, 30.898443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531685, 34.911629, 30.940769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061100, 0.102121, 0.992894,
		-0.996286, -0.066699, -0.054449,
		0.060665, -0.992533, 0.105817,
		41.549885, 34.613869, 30.972515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022579, 35.194168, 31.454725>,  <41.507420, 35.308643, 30.898443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022579, 35.194168, 31.454725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198967, 34.835648, 31.436024>,  <41.304798, 34.620533, 31.424803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198967, 34.835648, 31.436024>,  <41.022579, 35.194168, 31.454725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198967, 34.835648, 31.436024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152506, -0.126160, 0.980217,
		-0.884472, -0.425112, -0.192324,
		0.440966, -0.896305, -0.046752,
		41.331257, 34.566757, 31.421997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642529, 34.653549, 31.735195>,  <41.022579, 35.194168, 31.454725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642529, 34.653549, 31.735195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029804, 34.558586, 31.766794>,  <41.262169, 34.501606, 31.785753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029804, 34.558586, 31.766794>,  <40.642529, 34.653549, 31.735195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029804, 34.558586, 31.766794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109102, -0.116459, 0.987185,
		-0.225171, -0.964402, -0.138657,
		0.968191, -0.237414, 0.078995,
		41.320263, 34.487362, 31.790493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627499, 34.153603, 32.243366>,  <40.642529, 34.653549, 31.735195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627499, 34.153603, 32.243366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006908, 34.277401, 32.216484>,  <41.234554, 34.351681, 32.200356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006908, 34.277401, 32.216484>,  <40.627499, 34.153603, 32.243366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006908, 34.277401, 32.216484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064367, 0.019378, 0.997738,
		0.310100, -0.950703, -0.001541,
		0.948522, 0.309497, -0.067203,
		41.291466, 34.370251, 32.196323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897797, 33.721169, 32.668678>,  <40.627499, 34.153603, 32.243366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897797, 33.721169, 32.668678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198891, 33.981640, 32.629982>,  <41.379547, 34.137924, 32.606766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198891, 33.981640, 32.629982>,  <40.897797, 33.721169, 32.668678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198891, 33.981640, 32.629982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093996, 0.039130, 0.994803,
		0.651581, -0.757914, -0.031754,
		0.752733, 0.651180, -0.096737,
		41.424709, 34.176994, 32.600960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496185, 33.496426, 33.001438>,  <40.897797, 33.721169, 32.668678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496185, 33.496426, 33.001438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524078, 33.895432, 32.997444>,  <41.540813, 34.134834, 32.995049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524078, 33.895432, 32.997444>,  <41.496185, 33.496426, 33.001438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524078, 33.895432, 32.997444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253927, -0.008069, 0.967190,
		0.964706, -0.069985, -0.253859,
		0.069737, 0.997515, -0.009986,
		41.544998, 34.194687, 32.994450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180550, 33.603069, 33.229328>,  <41.496185, 33.496426, 33.001438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180550, 33.603069, 33.229328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980827, 33.942871, 33.297485>,  <41.860996, 34.146751, 33.338379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980827, 33.942871, 33.297485>,  <42.180550, 33.603069, 33.229328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980827, 33.942871, 33.297485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167578, -0.098261, 0.980950,
		0.850067, 0.518346, -0.093297,
		-0.499304, 0.849507, 0.170392,
		41.831036, 34.197723, 33.348602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639755, 34.061588, 33.713024>,  <42.180550, 33.603069, 33.229328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639755, 34.061588, 33.713024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254215, 34.161140, 33.751080>,  <42.022892, 34.220871, 33.773914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254215, 34.161140, 33.751080>,  <42.639755, 34.061588, 33.713024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254215, 34.161140, 33.751080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129934, 0.127314, 0.983315,
		0.232611, 0.960131, -0.155049,
		-0.963851, 0.248876, 0.095139,
		41.965061, 34.235802, 33.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743706, 34.579697, 34.075413>,  <42.639755, 34.061588, 33.713024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743706, 34.579697, 34.075413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354755, 34.493595, 34.111504>,  <42.121384, 34.441933, 34.133160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354755, 34.493595, 34.111504>,  <42.743706, 34.579697, 34.075413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354755, 34.493595, 34.111504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041713, 0.220081, 0.974589,
		-0.229645, 0.951435, -0.205023,
		-0.972380, -0.215258, 0.090228,
		42.063042, 34.429016, 34.138573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484055, 35.172821, 34.417107>,  <42.743706, 34.579697, 34.075413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484055, 35.172821, 34.417107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199444, 34.898262, 34.477215>,  <42.028675, 34.733524, 34.513279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199444, 34.898262, 34.477215>,  <42.484055, 35.172821, 34.417107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199444, 34.898262, 34.477215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044360, 0.257310, 0.965310,
		-0.701254, 0.680182, -0.213533,
		-0.711530, -0.686400, 0.150266,
		41.985985, 34.692341, 34.522293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077850, 35.550510, 34.802841>,  <42.484055, 35.172821, 34.417107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077850, 35.550510, 34.802841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940300, 35.183685, 34.883579>,  <41.857769, 34.963589, 34.932022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940300, 35.183685, 34.883579>,  <42.077850, 35.550510, 34.802841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940300, 35.183685, 34.883579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214640, 0.286028, 0.933872,
		-0.914154, 0.277815, -0.295198,
		-0.343879, -0.917064, 0.201843,
		41.837135, 34.908566, 34.944134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383984, 35.563171, 35.111893>,  <42.077850, 35.550510, 34.802841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383984, 35.563171, 35.111893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577053, 35.230087, 35.220421>,  <41.692894, 35.030235, 35.285538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577053, 35.230087, 35.220421>,  <41.383984, 35.563171, 35.111893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577053, 35.230087, 35.220421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140629, 0.232086, 0.962476,
		-0.864436, -0.502717, -0.005082,
		0.482673, -0.832714, 0.271320,
		41.721855, 34.980274, 35.301815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942005, 35.243820, 35.569557>,  <41.383984, 35.563171, 35.111893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942005, 35.243820, 35.569557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296307, 35.072678, 35.641548>,  <41.508888, 34.969994, 35.684742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296307, 35.072678, 35.641548>,  <40.942005, 35.243820, 35.569557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296307, 35.072678, 35.641548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181649, 0.037294, 0.982656,
		-0.427144, -0.903079, -0.044686,
		0.885749, -0.427853, 0.179973,
		41.562031, 34.944321, 35.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883373, 34.790039, 36.116821>,  <40.942005, 35.243820, 35.569557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883373, 34.790039, 36.116821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279381, 34.836559, 36.148659>,  <41.516987, 34.864471, 36.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279381, 34.836559, 36.148659>,  <40.883373, 34.790039, 36.116821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279381, 34.836559, 36.148659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077191, -0.025048, 0.996702,
		0.117910, -0.992898, -0.015820,
		0.990020, 0.116300, 0.079596,
		41.576385, 34.871449, 36.172539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858658, 34.741730, 36.850388>,  <40.883373, 34.790039, 36.116821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858658, 34.741730, 36.850388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235229, 34.786022, 36.722984>,  <41.461174, 34.812599, 36.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235229, 34.786022, 36.722984>,  <40.858658, 34.741730, 36.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235229, 34.786022, 36.722984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329173, -0.096807, 0.939294,
		0.073178, -0.989124, -0.127588,
		0.941429, 0.110734, -0.318509,
		41.517658, 34.819241, 36.627430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278103, 34.101360, 36.931984>,  <40.858658, 34.741730, 36.850388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278103, 34.101360, 36.931984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486359, 34.441742, 36.959724>,  <41.611313, 34.645969, 36.976368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486359, 34.441742, 36.959724>,  <41.278103, 34.101360, 36.931984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486359, 34.441742, 36.959724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131731, -0.160318, 0.978236,
		0.843551, -0.500176, -0.195566,
		0.520643, 0.850954, 0.069347,
		41.642551, 34.697029, 36.980530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713161, 33.851189, 37.345493>,  <41.278103, 34.101360, 36.931984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713161, 33.851189, 37.345493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772884, 34.246704, 37.346989>,  <41.808720, 34.484013, 37.347885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772884, 34.246704, 37.346989>,  <41.713161, 33.851189, 37.345493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772884, 34.246704, 37.346989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107863, -0.020047, 0.993964,
		0.982890, -0.148001, -0.109646,
		0.149306, 0.988784, 0.003740,
		41.817677, 34.543339, 37.348110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210789, 33.879887, 37.813908>,  <41.713161, 33.851189, 37.345493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210789, 33.879887, 37.813908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014084, 34.228176, 37.814724>,  <41.896061, 34.437149, 37.815216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014084, 34.228176, 37.814724>,  <42.210789, 33.879887, 37.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014084, 34.228176, 37.814724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209403, -0.120544, 0.970371,
		0.845174, 0.476765, 0.241612,
		-0.491764, 0.870726, 0.002045,
		41.866554, 34.489395, 37.815338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563538, 34.347115, 38.288090>,  <42.210789, 33.879887, 37.813908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563538, 34.347115, 38.288090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192051, 34.493790, 38.266094>,  <41.969158, 34.581795, 38.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192051, 34.493790, 38.266094>,  <42.563538, 34.347115, 38.288090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192051, 34.493790, 38.266094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000196, 0.147826, 0.989013,
		0.370789, 0.918524, -0.137216,
		-0.928717, 0.366689, -0.054992,
		41.913437, 34.603798, 38.249596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565212, 35.008438, 38.565048>,  <42.563538, 34.347115, 38.288090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565212, 35.008438, 38.565048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243507, 34.772842, 38.596672>,  <42.050484, 34.631485, 38.615646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243507, 34.772842, 38.596672>,  <42.565212, 35.008438, 38.565048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243507, 34.772842, 38.596672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016832, 0.110397, 0.993745,
		-0.594034, 0.800564, -0.078875,
		-0.804264, -0.588991, 0.079055,
		42.002228, 34.596146, 38.620388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034431, 35.359035, 39.024914>,  <42.565212, 35.008438, 38.565048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034431, 35.359035, 39.024914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928509, 34.973419, 39.033928>,  <41.864956, 34.742050, 39.039337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928509, 34.973419, 39.033928>,  <42.034431, 35.359035, 39.024914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928509, 34.973419, 39.033928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172869, 0.070453, 0.982422,
		-0.948681, 0.256252, -0.185309,
		-0.264803, -0.964039, 0.022539,
		41.849068, 34.684208, 39.040691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398640, 35.308819, 39.356712>,  <42.034431, 35.359035, 39.024914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398640, 35.308819, 39.356712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553745, 34.942333, 39.397110>,  <41.646809, 34.722443, 39.421349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553745, 34.942333, 39.397110>,  <41.398640, 35.308819, 39.356712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553745, 34.942333, 39.397110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020923, 0.100787, 0.994688,
		-0.921523, -0.387814, 0.019911,
		0.387760, -0.916211, 0.100992,
		41.670074, 34.667469, 39.427406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968685, 34.871635, 39.652508>,  <41.398640, 35.308819, 39.356712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968685, 34.871635, 39.652508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348007, 34.776554, 39.736614>,  <41.575600, 34.719505, 39.787079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348007, 34.776554, 39.736614>,  <40.968685, 34.871635, 39.652508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348007, 34.776554, 39.736614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166377, 0.191813, 0.967226,
		-0.270247, -0.952210, 0.142348,
		0.948307, -0.237707, 0.210263,
		41.632500, 34.705242, 39.799694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567047, 34.723244, 40.209332>,  <40.968685, 34.871635, 39.652508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567047, 34.723244, 40.209332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922867, 34.575356, 40.101990>,  <41.136356, 34.486622, 40.037582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922867, 34.575356, 40.101990>,  <40.567047, 34.723244, 40.209332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922867, 34.575356, 40.101990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266911, -0.056130, 0.962085,
		-0.370767, -0.927445, 0.048753,
		0.889545, -0.369722, -0.268356,
		41.189732, 34.464439, 40.021484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620125, 34.086891, 40.674831>,  <40.567047, 34.723244, 40.209332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620125, 34.086891, 40.674831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982460, 34.209667, 40.558048>,  <41.199863, 34.283333, 40.487980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982460, 34.209667, 40.558048>,  <40.620125, 34.086891, 40.674831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982460, 34.209667, 40.558048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260775, 0.139096, 0.955326,
		0.333842, -0.941508, 0.045955,
		0.905840, 0.306944, -0.291958,
		41.254211, 34.301750, 40.470459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120861, 33.653305, 41.064381>,  <40.620125, 34.086891, 40.674831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120861, 33.653305, 41.064381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293621, 34.001202, 40.968864>,  <41.397278, 34.209938, 40.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293621, 34.001202, 40.968864>,  <41.120861, 33.653305, 41.064381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293621, 34.001202, 40.968864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267912, 0.129091, 0.954756,
		0.861212, -0.476332, -0.177259,
		0.431898, 0.869737, -0.238790,
		41.423191, 34.262123, 40.897228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799191, 33.680485, 41.220936>,  <41.120861, 33.653305, 41.064381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799191, 33.680485, 41.220936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652924, 34.050385, 41.263134>,  <41.565163, 34.272324, 41.288452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652924, 34.050385, 41.263134>,  <41.799191, 33.680485, 41.220936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652924, 34.050385, 41.263134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327216, 0.021620, 0.944702,
		0.871330, 0.379968, -0.310497,
		-0.365669, 0.924747, 0.105493,
		41.543224, 34.327808, 41.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347939, 34.049622, 41.576244>,  <41.799191, 33.680485, 41.220936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347939, 34.049622, 41.576244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003471, 34.246235, 41.628078>,  <41.796791, 34.364201, 41.659180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003471, 34.246235, 41.628078>,  <42.347939, 34.049622, 41.576244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003471, 34.246235, 41.628078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207271, 0.106766, 0.972440,
		0.464147, 0.864292, -0.193823,
		-0.861166, 0.491529, 0.129588,
		41.745121, 34.393692, 41.666954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512424, 34.629868, 41.929630>,  <42.347939, 34.049622, 41.576244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512424, 34.629868, 41.929630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120125, 34.614422, 42.006191>,  <41.884743, 34.605152, 42.052128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120125, 34.614422, 42.006191>,  <42.512424, 34.629868, 41.929630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120125, 34.614422, 42.006191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176518, 0.243720, 0.953646,
		-0.083475, 0.969076, -0.232213,
		-0.980751, -0.038616, 0.191404,
		41.825901, 34.602837, 42.063614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398354, 35.193462, 42.540653>,  <42.512424, 34.629868, 41.929630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398354, 35.193462, 42.540653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072807, 34.961830, 42.521492>,  <41.877480, 34.822849, 42.509995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072807, 34.961830, 42.521492>,  <42.398354, 35.193462, 42.540653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072807, 34.961830, 42.521492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087557, -0.203718, 0.975107,
		-0.574423, 0.789409, 0.216501,
		-0.813862, -0.579080, -0.047902,
		41.828648, 34.788105, 42.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917542, 35.420864, 43.049789>,  <42.398354, 35.193462, 42.540653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917542, 35.420864, 43.049789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890232, 35.033730, 42.952930>,  <41.873848, 34.801449, 42.894814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890232, 35.033730, 42.952930>,  <41.917542, 35.420864, 43.049789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890232, 35.033730, 42.952930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163398, -0.250285, 0.954285,
		-0.984195, 0.025587, 0.175230,
		-0.068275, -0.967834, -0.242148,
		41.869751, 34.743378, 42.880287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341629, 35.138081, 43.393559>,  <41.917542, 35.420864, 43.049789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341629, 35.138081, 43.393559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594532, 34.835606, 43.326111>,  <41.746273, 34.654121, 43.285641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594532, 34.835606, 43.326111>,  <41.341629, 35.138081, 43.393559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594532, 34.835606, 43.326111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009495, -0.225188, 0.974269,
		-0.774699, -0.614389, -0.149557,
		0.632259, -0.756186, -0.168619,
		41.784210, 34.608749, 43.275524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950287, 34.466209, 43.598118>,  <41.341629, 35.138081, 43.393559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950287, 34.466209, 43.598118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345650, 34.520451, 43.625454>,  <41.582867, 34.552998, 43.641853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345650, 34.520451, 43.625454>,  <40.950287, 34.466209, 43.598118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345650, 34.520451, 43.625454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083893, 0.112542, 0.990099,
		0.126581, -0.984349, 0.122614,
		0.988402, 0.135614, 0.068335,
		41.642170, 34.561134, 43.645954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366276, 33.978764, 44.093052>,  <40.950287, 34.466209, 43.598118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366276, 33.978764, 44.093052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466358, 34.366035, 44.095348>,  <41.526409, 34.598396, 44.096725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466358, 34.366035, 44.095348>,  <41.366276, 33.978764, 44.093052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466358, 34.366035, 44.095348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165783, 0.037000, 0.985468,
		0.953893, -0.247522, 0.169764,
		0.250207, 0.968175, 0.005741,
		41.541420, 34.656487, 44.097073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034313, 33.799793, 43.737247>,  <41.366276, 33.978764, 44.093052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034313, 33.799793, 43.737247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641788, 33.808365, 43.660755>,  <41.406273, 33.813507, 43.614861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641788, 33.808365, 43.660755>,  <42.034313, 33.799793, 43.737247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641788, 33.808365, 43.660755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170971, 0.553153, -0.815347,
		0.088304, -0.832804, -0.546480,
		-0.981311, 0.021434, -0.191232,
		41.347397, 33.814796, 43.603386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959259, 33.616310, 43.052628>,  <42.034313, 33.799793, 43.737247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959259, 33.616310, 43.052628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646374, 33.843208, 43.155674>,  <41.458641, 33.979347, 43.217503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646374, 33.843208, 43.155674>,  <41.959259, 33.616310, 43.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646374, 33.843208, 43.155674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038162, 0.456356, -0.888978,
		-0.621839, -0.685541, -0.378616,
		-0.782215, 0.567250, 0.257618,
		41.411709, 34.013382, 43.232960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451340, 33.603683, 42.491684>,  <41.959259, 33.616310, 43.052628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451340, 33.603683, 42.491684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399200, 33.952110, 42.681103>,  <41.367916, 34.161167, 42.794754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399200, 33.952110, 42.681103>,  <41.451340, 33.603683, 42.491684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399200, 33.952110, 42.681103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009172, 0.478659, -0.877953,
		-0.991426, -0.110095, -0.070381,
		-0.130347, 0.871071, 0.473545,
		41.360096, 34.213432, 42.823166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838528, 33.995274, 42.400940>,  <41.451340, 33.603683, 42.491684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838528, 33.995274, 42.400940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130489, 34.264801, 42.446922>,  <41.305664, 34.426517, 42.474510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130489, 34.264801, 42.446922>,  <40.838528, 33.995274, 42.400940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130489, 34.264801, 42.446922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159758, 0.331674, -0.929769,
		-0.664621, 0.660275, 0.349737,
		0.729902, 0.673817, 0.114954,
		41.349461, 34.466946, 42.481407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581703, 34.781731, 42.318195>,  <40.838528, 33.995274, 42.400940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581703, 34.781731, 42.318195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969719, 34.743393, 42.228901>,  <41.202530, 34.720390, 42.175323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969719, 34.743393, 42.228901>,  <40.581703, 34.781731, 42.318195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969719, 34.743393, 42.228901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181646, 0.324057, -0.928435,
		0.161332, 0.941170, 0.296937,
		0.970040, -0.095849, -0.223240,
		41.260731, 34.714638, 42.161930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654690, 35.231079, 41.809727>,  <40.581703, 34.781731, 42.318195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654690, 35.231079, 41.809727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966572, 34.983547, 41.771564>,  <41.153702, 34.835026, 41.748665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966572, 34.983547, 41.771564>,  <40.654690, 35.231079, 41.809727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966572, 34.983547, 41.771564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072276, 0.240309, -0.968002,
		0.621958, 0.747863, 0.232098,
		0.779708, -0.618831, -0.095410,
		41.200485, 34.797897, 41.742943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249855, 35.587532, 41.455551>,  <40.654690, 35.231079, 41.809727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249855, 35.587532, 41.455551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364193, 35.205257, 41.427402>,  <41.432796, 34.975891, 41.410515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364193, 35.205257, 41.427402>,  <41.249855, 35.587532, 41.455551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364193, 35.205257, 41.427402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261439, 0.148422, -0.953740,
		0.921924, 0.254223, 0.292280,
		0.285843, -0.955689, -0.070370,
		41.449947, 34.918552, 41.406292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925407, 35.579468, 41.149536>,  <41.249855, 35.587532, 41.455551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925407, 35.579468, 41.149536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747295, 35.227104, 41.085384>,  <41.640430, 35.015686, 41.046894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747295, 35.227104, 41.085384>,  <41.925407, 35.579468, 41.149536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747295, 35.227104, 41.085384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127413, 0.114957, -0.985165,
		0.886282, -0.459104, 0.061052,
		-0.445275, -0.880913, -0.160380,
		41.613712, 34.962830, 41.037270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999107, 35.220695, 40.558342>,  <41.925407, 35.579468, 41.149536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999107, 35.220695, 40.558342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890781, 34.844997, 40.642696>,  <41.825787, 34.619579, 40.693310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890781, 34.844997, 40.642696>,  <41.999107, 35.220695, 40.558342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890781, 34.844997, 40.642696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149447, -0.175396, -0.973089,
		0.950960, -0.295045, -0.092868,
		-0.270816, -0.939247, 0.210888,
		41.809536, 34.563225, 40.705963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448803, 34.821987, 40.229546>,  <41.999107, 35.220695, 40.558342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448803, 34.821987, 40.229546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104366, 34.628460, 40.292068>,  <41.897705, 34.512344, 40.329582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104366, 34.628460, 40.292068>,  <42.448803, 34.821987, 40.229546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104366, 34.628460, 40.292068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041213, -0.239998, -0.969898,
		0.506773, -0.841615, 0.186722,
		-0.861094, -0.483823, 0.156310,
		41.846039, 34.483315, 40.338963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486473, 34.198151, 39.713833>,  <42.448803, 34.821987, 40.229546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486473, 34.198151, 39.713833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107197, 34.268040, 39.819965>,  <41.879631, 34.309975, 39.883644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107197, 34.268040, 39.819965>,  <42.486473, 34.198151, 39.713833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107197, 34.268040, 39.819965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310659, -0.335159, -0.889471,
		-0.066480, -0.925819, 0.372074,
		-0.948193, 0.174721, 0.265333,
		41.822739, 34.320457, 39.899567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152927, 33.612305, 39.679482>,  <42.486473, 34.198151, 39.713833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152927, 33.612305, 39.679482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925179, 33.927044, 39.584248>,  <41.788528, 34.115887, 39.527107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925179, 33.927044, 39.584248>,  <42.152927, 33.612305, 39.679482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925179, 33.927044, 39.584248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058260, -0.327512, -0.943049,
		-0.820010, -0.523079, 0.232319,
		-0.569377, 0.786844, -0.238088,
		41.754364, 34.163097, 39.512821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529488, 33.459843, 39.203094>,  <42.152927, 33.612305, 39.679482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529488, 33.459843, 39.203094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639935, 33.836479, 39.125988>,  <41.706203, 34.062462, 39.079723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639935, 33.836479, 39.125988>,  <41.529488, 33.459843, 39.203094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639935, 33.836479, 39.125988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169219, -0.149799, -0.974128,
		-0.946110, 0.301594, 0.117973,
		0.276119, 0.941595, -0.192761,
		41.722771, 34.118958, 39.068161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050739, 33.774693, 38.745354>,  <41.529488, 33.459843, 39.203094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050739, 33.774693, 38.745354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347519, 34.038559, 38.697430>,  <41.525585, 34.196880, 38.668674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347519, 34.038559, 38.697430>,  <41.050739, 33.774693, 38.745354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347519, 34.038559, 38.697430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116070, -0.049618, -0.992001,
		-0.660335, 0.749919, 0.039753,
		0.741947, 0.659667, -0.119808,
		41.570103, 34.236458, 38.661488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675938, 34.331596, 38.495586>,  <41.050739, 33.774693, 38.745354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675938, 34.331596, 38.495586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031021, 34.507671, 38.549568>,  <41.244072, 34.613316, 38.581955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031021, 34.507671, 38.549568>,  <40.675938, 34.331596, 38.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031021, 34.507671, 38.549568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052911, 0.193632, -0.979646,
		-0.457361, 0.876778, 0.148597,
		0.887706, 0.440190, 0.134951,
		41.297333, 34.639729, 38.590054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725143, 35.039421, 38.223869>,  <40.675938, 34.331596, 38.495586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725143, 35.039421, 38.223869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102955, 34.908051, 38.222488>,  <41.329639, 34.829227, 38.221661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102955, 34.908051, 38.222488>,  <40.725143, 35.039421, 38.223869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102955, 34.908051, 38.222488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069391, 0.209823, -0.975274,
		0.321026, 0.920930, 0.220973,
		0.944525, -0.328422, -0.003454,
		41.386311, 34.809525, 38.221451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170490, 35.582302, 37.861248>,  <40.725143, 35.039421, 38.223869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170490, 35.582302, 37.861248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385235, 35.246548, 37.827282>,  <41.514080, 35.045094, 37.806900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385235, 35.246548, 37.827282>,  <41.170490, 35.582302, 37.861248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385235, 35.246548, 37.827282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370125, 0.324776, -0.870361,
		0.758151, 0.435829, 0.485037,
		0.536857, -0.839389, -0.084918,
		41.546291, 34.994732, 37.801807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860672, 35.781830, 37.645668>,  <41.170490, 35.582302, 37.861248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860672, 35.781830, 37.645668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865990, 35.391747, 37.557308>,  <41.869179, 35.157696, 37.504292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865990, 35.391747, 37.557308>,  <41.860672, 35.781830, 37.645668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865990, 35.391747, 37.557308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317624, 0.213598, -0.923846,
		0.948124, -0.057881, 0.312588,
		0.013295, -0.975205, -0.220901,
		41.869980, 35.099186, 37.491039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372776, 35.715809, 37.186676>,  <41.860672, 35.781830, 37.645668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372776, 35.715809, 37.186676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130157, 35.406303, 37.113583>,  <41.984589, 35.220600, 37.069725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130157, 35.406303, 37.113583>,  <42.372776, 35.715809, 37.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130157, 35.406303, 37.113583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183565, 0.087341, -0.979120,
		0.773570, -0.627422, 0.089061,
		-0.606543, -0.773766, -0.182737,
		41.948196, 35.174175, 37.058762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339333, 35.769375, 36.449242>,  <42.372776, 35.715809, 37.186676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339333, 35.769375, 36.449242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197029, 35.399704, 36.504864>,  <42.111649, 35.177902, 36.538239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197029, 35.399704, 36.504864>,  <42.339333, 35.769375, 36.449242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197029, 35.399704, 36.504864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001672, -0.148161, -0.988962,
		0.934576, -0.352065, 0.051164,
		-0.355760, -0.924174, 0.139057,
		42.090302, 35.122452, 36.546581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784210, 35.218842, 36.061417>,  <42.339333, 35.769375, 36.449242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784210, 35.218842, 36.061417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410782, 35.082256, 36.104969>,  <42.186726, 35.000305, 36.131100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410782, 35.082256, 36.104969>,  <42.784210, 35.218842, 36.061417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410782, 35.082256, 36.104969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015863, -0.342874, -0.939248,
		0.358049, -0.875125, 0.325512,
		-0.933568, -0.341460, 0.108884,
		42.130711, 34.979820, 36.137634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746155, 34.430431, 35.932583>,  <42.784210, 35.218842, 36.061417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746155, 34.430431, 35.932583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380817, 34.578667, 35.865082>,  <42.161617, 34.667606, 35.824581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380817, 34.578667, 35.865082>,  <42.746155, 34.430431, 35.932583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380817, 34.578667, 35.865082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007265, -0.399535, -0.916689,
		-0.407153, -0.838467, 0.362215,
		-0.913331, 0.370602, -0.168763,
		42.106815, 34.689842, 35.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442436, 33.936737, 35.645130>,  <42.746155, 34.430431, 35.932583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442436, 33.936737, 35.645130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203419, 34.243721, 35.552223>,  <42.060009, 34.427914, 35.496479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203419, 34.243721, 35.552223>,  <42.442436, 33.936737, 35.645130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203419, 34.243721, 35.552223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043564, -0.320308, -0.946311,
		-0.800655, -0.555340, 0.224831,
		-0.597540, 0.767463, -0.232263,
		42.024158, 34.473961, 35.482544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975018, 33.470001, 35.807526>,  <42.442436, 33.936737, 35.645130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975018, 33.470001, 35.807526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997799, 33.305130, 35.443798>,  <42.011467, 33.206207, 35.225559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997799, 33.305130, 35.443798>,  <41.975018, 33.470001, 35.807526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997799, 33.305130, 35.443798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165756, -0.902063, 0.398507,
		-0.984521, 0.128030, -0.119695,
		0.056952, -0.412179, -0.909321,
		42.014885, 33.181477, 35.171001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368027, 33.168163, 35.807434>,  <41.975018, 33.470001, 35.807526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368027, 33.168163, 35.807434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666782, 32.998001, 35.603004>,  <41.846035, 32.895905, 35.480347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666782, 32.998001, 35.603004>,  <41.368027, 33.168163, 35.807434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666782, 32.998001, 35.603004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127621, -0.846002, 0.517681,
		-0.652590, -0.321425, -0.686158,
		0.746887, -0.425402, -0.511071,
		41.890850, 32.870380, 35.449684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337494, 32.396603, 35.706120>,  <41.368027, 33.168163, 35.807434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337494, 32.396603, 35.706120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731396, 32.461071, 35.732304>,  <41.967735, 32.499752, 35.748013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731396, 32.461071, 35.732304>,  <41.337494, 32.396603, 35.706120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731396, 32.461071, 35.732304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132867, -0.939739, 0.315019,
		0.112286, -0.301519, -0.946825,
		0.984753, 0.161174, 0.065457,
		42.026821, 32.509422, 35.751942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920925, 31.827143, 35.367271>,  <41.337494, 32.396603, 35.706120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920925, 31.827143, 35.367271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016544, 32.044334, 35.689274>,  <42.073917, 32.174648, 35.882473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016544, 32.044334, 35.689274>,  <41.920925, 31.827143, 35.367271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016544, 32.044334, 35.689274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163255, -0.839713, 0.517910,
		0.957184, 0.007613, -0.289378,
		0.239052, 0.542978, 0.805003,
		42.088261, 32.207230, 35.930775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586788, 31.453461, 35.935684>,  <41.920925, 31.827143, 35.367271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586788, 31.453461, 35.935684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939240, 31.639784, 35.968281>,  <42.150711, 31.751577, 35.987839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939240, 31.639784, 35.968281>,  <41.586788, 31.453461, 35.935684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939240, 31.639784, 35.968281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197004, -0.518249, 0.832230,
		0.429894, -0.717244, -0.548409,
		0.881125, 0.465810, 0.081492,
		42.203575, 31.779528, 35.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171890, 30.920517, 36.013290>,  <41.586788, 31.453461, 35.935684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171890, 30.920517, 36.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206516, 31.285238, 36.173851>,  <42.227291, 31.504070, 36.270187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206516, 31.285238, 36.173851>,  <42.171890, 30.920517, 36.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206516, 31.285238, 36.173851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116300, -0.409408, 0.904909,
		0.989435, -0.031648, -0.141482,
		0.086562, 0.911802, 0.401402,
		42.232487, 31.558779, 36.294273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849922, 31.036207, 36.340191>,  <42.171890, 30.920517, 36.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849922, 31.036207, 36.340191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556599, 31.251522, 36.506325>,  <42.380604, 31.380711, 36.606007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556599, 31.251522, 36.506325>,  <42.849922, 31.036207, 36.340191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556599, 31.251522, 36.506325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132103, -0.486433, 0.863673,
		0.666938, 0.688207, 0.285597,
		-0.733310, 0.538288, 0.415335,
		42.336605, 31.413008, 36.630924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035656, 31.485395, 36.971443>,  <42.849922, 31.036207, 36.340191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035656, 31.485395, 36.971443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655849, 31.361614, 36.992077>,  <42.427967, 31.287346, 37.004459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655849, 31.361614, 36.992077>,  <43.035656, 31.485395, 36.971443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655849, 31.361614, 36.992077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068962, -0.045463, 0.996583,
		-0.306050, 0.949827, 0.064509,
		-0.949514, -0.309452, 0.051588,
		42.370995, 31.268778, 37.007553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729031, 31.052988, 37.000275>,  <43.035656, 31.485395, 36.971443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729031, 31.052988, 37.000275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724220, 31.186918, 36.623394>,  <43.721336, 31.267277, 36.397266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724220, 31.186918, 36.623394>,  <43.729031, 31.052988, 37.000275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724220, 31.186918, 36.623394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999925, 0.001746, -0.012138,
		-0.002419, -0.942279, -0.334819,
		-0.012022, 0.334824, -0.942204,
		43.720615, 31.287365, 36.340733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211861, 30.633675, 36.686153>,  <43.729031, 31.052988, 37.000275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211861, 30.633675, 36.686153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149216, 30.977066, 36.490810>,  <44.111629, 31.183100, 36.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149216, 30.977066, 36.490810>,  <44.211861, 30.633675, 36.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149216, 30.977066, 36.490810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986730, 0.114541, -0.115083,
		-0.042859, -0.499898, -0.865023,
		-0.156610, 0.858477, -0.488356,
		44.102234, 31.234610, 36.344303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690464, 30.728931, 36.164368>,  <44.211861, 30.633675, 36.686153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690464, 30.728931, 36.164368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564682, 31.107552, 36.193119>,  <44.489212, 31.334723, 36.210369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564682, 31.107552, 36.193119>,  <44.690464, 30.728931, 36.164368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564682, 31.107552, 36.193119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941996, 0.320503, -0.099607,
		-0.117320, 0.036387, -0.992427,
		-0.314451, 0.946549, 0.071878,
		44.470348, 31.391516, 36.214684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086555, 31.082121, 35.729538>,  <44.690464, 30.728931, 36.164368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086555, 31.082121, 35.729538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986195, 31.349993, 36.009132>,  <44.925976, 31.510715, 36.176888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986195, 31.349993, 36.009132>,  <45.086555, 31.082121, 35.729538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986195, 31.349993, 36.009132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857388, 0.488945, -0.160682,
		-0.449370, 0.558984, -0.696852,
		-0.250904, 0.669678, 0.698984,
		44.910923, 31.550896, 36.218826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057476, 31.688635, 35.386074>,  <45.086555, 31.082121, 35.729538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057476, 31.688635, 35.386074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142994, 31.749872, 35.771996>,  <45.194305, 31.786615, 36.003548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.142994, 31.749872, 35.771996>,  <45.057476, 31.688635, 35.386074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142994, 31.749872, 35.771996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850373, 0.456919, -0.260942,
		-0.480788, 0.876235, -0.032500,
		0.213797, 0.153095, 0.964807,
		45.207134, 31.795801, 36.061440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124157, 32.537010, 35.672096>,  <45.057476, 31.688635, 35.386074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124157, 32.537010, 35.672096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349808, 32.250736, 35.836803>,  <45.485199, 32.078972, 35.935627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349808, 32.250736, 35.836803>,  <45.124157, 32.537010, 35.672096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349808, 32.250736, 35.836803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824800, 0.465297, -0.321253,
		0.038319, 0.520857, 0.852784,
		0.564125, -0.715686, 0.411773,
		45.519047, 32.036030, 35.960335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645077, 32.895344, 35.897797>,  <45.124157, 32.537010, 35.672096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645077, 32.895344, 35.897797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764305, 32.515186, 35.862255>,  <45.835842, 32.287090, 35.840931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764305, 32.515186, 35.862255>,  <45.645077, 32.895344, 35.897797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764305, 32.515186, 35.862255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937574, 0.308979, -0.159646,
		0.179181, -0.035719, 0.983168,
		0.298076, -0.950398, -0.088852,
		45.853729, 32.230068, 35.835598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170712, 32.642632, 36.419777>,  <45.645077, 32.895344, 35.897797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170712, 32.642632, 36.419777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194099, 32.467640, 36.060848>,  <46.208134, 32.362644, 35.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194099, 32.467640, 36.060848>,  <46.170712, 32.642632, 36.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194099, 32.467640, 36.060848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878019, 0.450265, -0.162310,
		0.475041, -0.778377, 0.410445,
		0.058471, -0.437482, -0.897324,
		46.211639, 32.336395, 35.791653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802681, 32.754601, 36.013290>,  <46.170712, 32.642632, 36.419777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802681, 32.754601, 36.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720673, 33.142731, 36.064560>,  <46.671467, 33.375610, 36.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720673, 33.142731, 36.064560>,  <46.802681, 32.754601, 36.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720673, 33.142731, 36.064560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937582, 0.157117, 0.310249,
		0.280904, 0.183785, -0.941974,
		-0.205019, 0.970329, 0.128179,
		46.659168, 33.433830, 36.103012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.359913, 33.111549, 35.679031>,  <46.802681, 32.754601, 36.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.359913, 33.111549, 35.679031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201393, 33.350750, 35.957699>,  <47.106281, 33.494270, 36.124901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201393, 33.350750, 35.957699>,  <47.359913, 33.111549, 35.679031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201393, 33.350750, 35.957699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912447, 0.340767, 0.226535,
		-0.101934, 0.725448, -0.680687,
		-0.396295, 0.597999, 0.696669,
		47.082504, 33.530151, 36.166698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339272, 33.911228, 35.557602>,  <47.359913, 33.111549, 35.679031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339272, 33.911228, 35.557602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369789, 33.819538, 35.945755>,  <47.388100, 33.764526, 36.178646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369789, 33.819538, 35.945755>,  <47.339272, 33.911228, 35.557602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369789, 33.819538, 35.945755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852406, 0.519896, 0.055791,
		-0.517285, 0.822901, 0.235056,
		0.076294, -0.229222, 0.970379,
		47.392677, 33.750771, 36.236870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.938892, 34.235355, 35.145832>,  <47.339272, 33.911228, 35.557602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.938892, 34.235355, 35.145832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762642, 34.429695, 34.843891>,  <47.656891, 34.546299, 34.662727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.762642, 34.429695, 34.843891>,  <47.938892, 34.235355, 35.145832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.762642, 34.429695, 34.843891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758160, 0.248846, 0.602718,
		0.480671, 0.837871, 0.258702,
		-0.440623, 0.485847, -0.754854,
		47.630455, 34.575451, 34.617435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.966022, 34.890572, 35.360783>,  <47.938892, 34.235355, 35.145832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.966022, 34.890572, 35.360783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667427, 34.794388, 35.112610>,  <47.488270, 34.736679, 34.963707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667427, 34.794388, 35.112610>,  <47.966022, 34.890572, 35.360783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.667427, 34.794388, 35.112610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622636, 0.581298, 0.523849,
		0.234693, 0.777350, -0.583648,
		-0.746488, -0.240456, -0.620433,
		47.443481, 34.722252, 34.926479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.930111, 32.169437, 26.477308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551624, 32.260670, 26.569096>,  <36.324532, 32.315407, 26.624168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551624, 32.260670, 26.569096>,  <36.930111, 32.169437, 26.477308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551624, 32.260670, 26.569096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217179, -0.077955, 0.973014,
		0.239812, 0.970517, 0.024228,
		-0.946215, 0.228079, 0.229470,
		36.267761, 32.329094, 26.637938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948933, 32.752777, 26.992968>,  <36.930111, 32.169437, 26.477308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948933, 32.752777, 26.992968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603203, 32.554501, 27.027004>,  <36.395767, 32.435535, 27.047426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.603203, 32.554501, 27.027004>,  <36.948933, 32.752777, 26.992968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603203, 32.554501, 27.027004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030534, 0.117164, 0.992643,
		-0.502011, 0.860561, -0.086133,
		-0.864322, -0.495688, 0.085094,
		36.343906, 32.405792, 27.052532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666847, 33.033436, 27.455784>,  <36.948933, 32.752777, 26.992968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666847, 33.033436, 27.455784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421654, 32.717396, 27.455414>,  <36.274540, 32.527771, 27.455193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421654, 32.717396, 27.455414>,  <36.666847, 33.033436, 27.455784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421654, 32.717396, 27.455414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009379, 0.006108, 0.999938,
		-0.790043, 0.612949, -0.011154,
		-0.612979, -0.790099, -0.000923,
		36.237759, 32.480366, 27.455137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079899, 33.206062, 27.906290>,  <36.666847, 33.033436, 27.455784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079899, 33.206062, 27.906290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133171, 32.809711, 27.898018>,  <36.165134, 32.571899, 27.893055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.133171, 32.809711, 27.898018>,  <36.079899, 33.206062, 27.906290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133171, 32.809711, 27.898018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075255, -0.030916, 0.996685,
		-0.988231, -0.131179, -0.078686,
		0.133177, -0.990877, -0.020680,
		36.173122, 32.512447, 27.891813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614941, 33.028172, 28.366018>,  <36.079899, 33.206062, 27.906290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614941, 33.028172, 28.366018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825008, 32.688976, 28.337437>,  <35.951050, 32.485458, 28.320288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825008, 32.688976, 28.337437>,  <35.614941, 33.028172, 28.366018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825008, 32.688976, 28.337437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265638, -0.243120, 0.932914,
		-0.808477, -0.470957, -0.352938,
		0.525169, -0.847993, -0.071453,
		35.982559, 32.434578, 28.316000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164463, 32.553825, 28.764185>,  <35.614941, 33.028172, 28.366018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164463, 32.553825, 28.764185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532219, 32.399628, 28.732883>,  <35.752872, 32.307110, 28.714102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.532219, 32.399628, 28.732883>,  <35.164463, 32.553825, 28.764185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532219, 32.399628, 28.732883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047868, -0.307104, 0.950471,
		-0.390432, -0.870105, -0.300800,
		0.919386, -0.385493, -0.078253,
		35.808033, 32.283981, 28.709408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087811, 31.886265, 29.119114>,  <35.164463, 32.553825, 28.764185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087811, 31.886265, 29.119114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457638, 32.038620, 29.115007>,  <35.679535, 32.130035, 29.112543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457638, 32.038620, 29.115007>,  <35.087811, 31.886265, 29.119114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457638, 32.038620, 29.115007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103817, -0.225901, 0.968602,
		0.366612, -0.896600, -0.248403,
		0.924564, 0.380890, -0.010265,
		35.735008, 32.152885, 29.111927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367153, 31.470137, 29.520250>,  <35.087811, 31.886265, 29.119114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367153, 31.470137, 29.520250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641598, 31.761030, 29.528080>,  <35.806263, 31.935566, 29.532778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641598, 31.761030, 29.528080>,  <35.367153, 31.470137, 29.520250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641598, 31.761030, 29.528080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150419, -0.168135, 0.974220,
		0.711775, -0.665480, -0.224748,
		0.686112, 0.727232, 0.019574,
		35.847431, 31.979200, 29.533953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890320, 31.300074, 29.962383>,  <35.367153, 31.470137, 29.520250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890320, 31.300074, 29.962383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920807, 31.698053, 29.936260>,  <35.939098, 31.936842, 29.920586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920807, 31.698053, 29.936260>,  <35.890320, 31.300074, 29.962383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920807, 31.698053, 29.936260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027077, 0.063408, 0.997620,
		0.996724, -0.077804, -0.022107,
		0.076217, 0.994950, -0.065307,
		35.943672, 31.996538, 29.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460613, 31.392273, 30.469175>,  <35.890320, 31.300074, 29.962383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460613, 31.392273, 30.469175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270435, 31.737852, 30.402788>,  <36.156330, 31.945200, 30.362955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270435, 31.737852, 30.402788>,  <36.460613, 31.392273, 30.469175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270435, 31.737852, 30.402788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291975, 0.332922, 0.896612,
		0.829881, 0.377831, -0.410537,
		-0.475445, 0.863948, -0.165968,
		36.127804, 31.997036, 30.352997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919544, 31.988142, 30.565174>,  <36.460613, 31.392273, 30.469175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919544, 31.988142, 30.565174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543182, 32.100246, 30.641222>,  <36.317364, 32.167507, 30.686852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.543182, 32.100246, 30.641222>,  <36.919544, 31.988142, 30.565174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543182, 32.100246, 30.641222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304899, 0.456673, 0.835755,
		0.147406, 0.844336, -0.515138,
		-0.940908, 0.280261, 0.190121,
		36.260910, 32.184326, 30.698257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000790, 32.669880, 30.830120>,  <36.919544, 31.988142, 30.565174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000790, 32.669880, 30.830120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632595, 32.564499, 30.945562>,  <36.411678, 32.501270, 31.014828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.632595, 32.564499, 30.945562>,  <37.000790, 32.669880, 30.830120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632595, 32.564499, 30.945562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216656, 0.270569, 0.938004,
		-0.325209, 0.925950, -0.191977,
		-0.920488, -0.263455, 0.288605,
		36.356449, 32.485462, 31.032145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749290, 33.279430, 31.164930>,  <37.000790, 32.669880, 30.830120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749290, 33.279430, 31.164930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546303, 32.954002, 31.278482>,  <36.424511, 32.758747, 31.346613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546303, 32.954002, 31.278482>,  <36.749290, 33.279430, 31.164930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546303, 32.954002, 31.278482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263222, 0.167336, 0.950112,
		-0.820483, 0.556872, 0.129232,
		-0.507465, -0.813568, 0.283878,
		36.394062, 32.709930, 31.363646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377937, 33.419090, 31.843102>,  <36.749290, 33.279430, 31.164930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377937, 33.419090, 31.843102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401470, 33.020329, 31.822222>,  <36.415592, 32.781071, 31.809694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401470, 33.020329, 31.822222>,  <36.377937, 33.419090, 31.843102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401470, 33.020329, 31.822222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186088, -0.040421, 0.981701,
		-0.980770, -0.067472, 0.183133,
		0.058835, -0.996902, -0.052200,
		36.419121, 32.721256, 31.806562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355015, 33.282940, 32.532040>,  <36.377937, 33.419090, 31.843102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355015, 33.282940, 32.532040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464703, 32.923691, 32.394531>,  <36.530518, 32.708141, 32.312027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464703, 32.923691, 32.394531>,  <36.355015, 33.282940, 32.532040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464703, 32.923691, 32.394531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559165, -0.141918, 0.816819,
		-0.782392, -0.416211, 0.463283,
		0.274221, -0.898124, -0.343767,
		36.546970, 32.654255, 32.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273945, 32.917992, 33.075287>,  <36.355015, 33.282940, 32.532040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273945, 32.917992, 33.075287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537609, 32.733902, 32.837395>,  <36.695808, 32.623447, 32.694660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537609, 32.733902, 32.837395>,  <36.273945, 32.917992, 33.075287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537609, 32.733902, 32.837395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522538, -0.288437, 0.802346,
		-0.540802, -0.839641, 0.050360,
		0.659157, -0.460225, -0.594731,
		36.735355, 32.595833, 32.658974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416080, 32.137402, 33.349220>,  <36.273945, 32.917992, 33.075287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416080, 32.137402, 33.349220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726631, 32.261360, 33.129688>,  <36.912960, 32.335735, 32.997971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.726631, 32.261360, 33.129688>,  <36.416080, 32.137402, 33.349220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726631, 32.261360, 33.129688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599869, -0.096125, 0.794303,
		0.193394, -0.945900, -0.260524,
		0.776374, 0.309894, -0.548825,
		36.959545, 32.354328, 32.965042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941395, 31.729887, 33.554256>,  <36.416080, 32.137402, 33.349220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941395, 31.729887, 33.554256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169285, 32.010216, 33.382553>,  <37.306019, 32.178413, 33.279533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169285, 32.010216, 33.382553>,  <36.941395, 31.729887, 33.554256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169285, 32.010216, 33.382553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732120, -0.195501, 0.652518,
		0.373379, -0.686025, -0.624467,
		0.569727, 0.700821, -0.429256,
		37.340202, 32.220463, 33.253777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639263, 31.482748, 33.456116>,  <36.941395, 31.729887, 33.554256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639263, 31.482748, 33.456116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649128, 31.881340, 33.488159>,  <37.655048, 32.120495, 33.507385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649128, 31.881340, 33.488159>,  <37.639263, 31.482748, 33.456116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649128, 31.881340, 33.488159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675331, -0.075695, 0.733620,
		0.737102, 0.036009, -0.674821,
		0.024664, 0.996481, 0.080113,
		37.656528, 32.180283, 33.512192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382587, 31.648167, 33.552727>,  <37.639263, 31.482748, 33.456116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382587, 31.648167, 33.552727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196598, 31.991673, 33.638817>,  <38.085003, 32.197777, 33.690472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196598, 31.991673, 33.638817>,  <38.382587, 31.648167, 33.552727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196598, 31.991673, 33.638817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719907, 0.225261, 0.656499,
		0.515298, 0.460195, -0.722972,
		-0.464975, 0.858766, 0.215221,
		38.057106, 32.249302, 33.703384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951492, 32.153786, 33.636375>,  <38.382587, 31.648167, 33.552727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951492, 32.153786, 33.636375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625786, 32.292782, 33.822372>,  <38.430363, 32.376179, 33.933971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625786, 32.292782, 33.822372>,  <38.951492, 32.153786, 33.636375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625786, 32.292782, 33.822372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579793, 0.447618, 0.680792,
		0.028427, 0.823948, -0.565952,
		-0.814268, 0.347488, 0.464995,
		38.381504, 32.397030, 33.961872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206337, 32.830036, 33.809612>,  <38.951492, 32.153786, 33.636375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206337, 32.830036, 33.809612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900970, 32.755436, 34.056969>,  <38.717751, 32.710678, 34.205383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.900970, 32.755436, 34.056969>,  <39.206337, 32.830036, 33.809612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900970, 32.755436, 34.056969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529028, 0.368746, 0.764301,
		-0.370571, 0.910629, -0.182844,
		-0.763418, -0.186498, 0.618395,
		38.671944, 32.699486, 34.242489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946548, 32.529064, 34.062088>,  <39.206337, 32.830036, 33.809612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946548, 32.529064, 34.062088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.345634, 32.548595, 34.080750>,  <40.585087, 32.560314, 34.091946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.345634, 32.548595, 34.080750>,  <39.946548, 32.529064, 34.062088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345634, 32.548595, 34.080750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063237, -0.432934, -0.899205,
		-0.023709, 0.900102, -0.435034,
		0.997717, 0.048830, 0.046655,
		40.644951, 32.563244, 34.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184135, 33.010891, 33.537502>,  <39.946548, 32.529064, 34.062088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184135, 33.010891, 33.537502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442726, 32.719406, 33.627880>,  <40.597881, 32.544514, 33.682106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.442726, 32.719406, 33.627880>,  <40.184135, 33.010891, 33.537502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442726, 32.719406, 33.627880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089774, -0.366755, -0.925976,
		0.757636, 0.578335, -0.302517,
		0.646474, -0.728711, 0.225948,
		40.636669, 32.500793, 33.695663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698544, 32.937748, 33.137085>,  <40.184135, 33.010891, 33.537502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698544, 32.937748, 33.137085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669399, 32.559837, 33.264893>,  <40.651913, 32.333092, 33.341579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669399, 32.559837, 33.264893>,  <40.698544, 32.937748, 33.137085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669399, 32.559837, 33.264893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097438, -0.325585, -0.940479,
		0.992571, -0.037392, 0.115780,
		-0.072863, -0.944773, 0.319523,
		40.647541, 32.276405, 33.360748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203915, 32.521347, 32.856777>,  <40.698544, 32.937748, 33.137085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203915, 32.521347, 32.856777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.909081, 32.270531, 32.957600>,  <40.732182, 32.120041, 33.018093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.909081, 32.270531, 32.957600>,  <41.203915, 32.521347, 32.856777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909081, 32.270531, 32.957600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063092, -0.435191, -0.898125,
		0.672850, -0.646090, 0.360333,
		-0.737084, -0.627037, 0.252056,
		40.687954, 32.082420, 33.033215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413208, 31.805422, 32.681065>,  <41.203915, 32.521347, 32.856777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413208, 31.805422, 32.681065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.014046, 31.812431, 32.705944>,  <40.774548, 31.816637, 32.720871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.014046, 31.812431, 32.705944>,  <41.413208, 31.805422, 32.681065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014046, 31.812431, 32.705944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064203, -0.378247, -0.923476,
		0.007343, -0.925539, 0.378582,
		-0.997910, 0.017525, 0.062200,
		40.714672, 31.817690, 32.724606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279980, 31.218369, 32.461651>,  <41.413208, 31.805422, 32.681065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279980, 31.218369, 32.461651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.918858, 31.377060, 32.395264>,  <40.702183, 31.472275, 32.355431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.918858, 31.377060, 32.395264>,  <41.279980, 31.218369, 32.461651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918858, 31.377060, 32.395264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036982, -0.456133, -0.889143,
		-0.428450, -0.796588, 0.426472,
		-0.902808, 0.396725, -0.165970,
		40.648014, 31.496078, 32.345470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980770, 30.810631, 31.969873>,  <41.279980, 31.218369, 32.461651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980770, 30.810631, 31.969873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.692001, 31.087006, 31.954695>,  <40.518742, 31.252831, 31.945587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.692001, 31.087006, 31.954695>,  <40.980770, 30.810631, 31.969873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692001, 31.087006, 31.954695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223128, -0.284339, -0.932397,
		-0.655016, -0.664649, 0.359437,
		-0.721919, 0.690936, -0.037945,
		40.475426, 31.294287, 31.943312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510059, 30.417976, 31.653629>,  <40.980770, 30.810631, 31.969873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510059, 30.417976, 31.653629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445438, 30.804951, 31.575686>,  <40.406666, 31.037136, 31.528919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445438, 30.804951, 31.575686>,  <40.510059, 30.417976, 31.653629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445438, 30.804951, 31.575686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321357, -0.238261, -0.916494,
		-0.933076, -0.085439, 0.349384,
		-0.161549, 0.967436, -0.194860,
		40.396973, 31.095181, 31.517227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834499, 30.535957, 31.427843>,  <40.510059, 30.417976, 31.653629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834499, 30.535957, 31.427843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044750, 30.846987, 31.289801>,  <40.170902, 31.033604, 31.206976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044750, 30.846987, 31.289801>,  <39.834499, 30.535957, 31.427843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044750, 30.846987, 31.289801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414730, -0.119977, -0.902000,
		-0.742776, 0.617240, 0.259420,
		0.525626, 0.777573, -0.345104,
		40.202438, 31.080259, 31.186270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404572, 30.930307, 31.047955>,  <39.834499, 30.535957, 31.427843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404572, 30.930307, 31.047955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764194, 31.018486, 30.896645>,  <39.979969, 31.071394, 30.805859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.764194, 31.018486, 30.896645>,  <39.404572, 30.930307, 31.047955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764194, 31.018486, 30.896645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337443, -0.201607, -0.919504,
		-0.278964, 0.954336, -0.106869,
		0.899061, 0.220446, -0.378275,
		40.033913, 31.084620, 30.783161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178646, 31.345934, 30.472998>,  <39.404572, 30.930307, 31.047955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178646, 31.345934, 30.472998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561646, 31.257317, 30.399109>,  <39.791443, 31.204145, 30.354776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561646, 31.257317, 30.399109>,  <39.178646, 31.345934, 30.472998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561646, 31.257317, 30.399109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203296, -0.063992, -0.977024,
		0.204633, 0.973049, -0.106311,
		0.957495, -0.221543, -0.184722,
		39.848892, 31.190853, 30.343693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442783, 31.778702, 29.956667>,  <39.178646, 31.345934, 30.472998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442783, 31.778702, 29.956667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661011, 31.443716, 29.943987>,  <39.791946, 31.242725, 29.936378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.661011, 31.443716, 29.943987>,  <39.442783, 31.778702, 29.956667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661011, 31.443716, 29.943987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233432, -0.115524, -0.965486,
		0.804899, 0.534141, -0.258518,
		0.545571, -0.837465, -0.031701,
		39.824680, 31.192476, 29.934477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858051, 31.911848, 29.357197>,  <39.442783, 31.778702, 29.956667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858051, 31.911848, 29.357197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.761208, 31.531324, 29.433508>,  <39.703102, 31.303011, 29.479294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.761208, 31.531324, 29.433508>,  <39.858051, 31.911848, 29.357197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761208, 31.531324, 29.433508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392359, -0.083835, -0.915984,
		0.887376, -0.296624, -0.352957,
		-0.242112, -0.951307, 0.190777,
		39.688572, 31.245932, 29.490742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206474, 31.515657, 28.836588>,  <39.858051, 31.911848, 29.357197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206474, 31.515657, 28.836588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917774, 31.281542, 28.984373>,  <39.744553, 31.141071, 29.073044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.917774, 31.281542, 28.984373>,  <40.206474, 31.515657, 28.836588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917774, 31.281542, 28.984373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379079, -0.112351, -0.918518,
		0.579111, -0.803001, -0.140782,
		-0.721754, -0.585292, 0.369465,
		39.701248, 31.105955, 29.095213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144955, 30.889034, 28.317202>,  <40.206474, 31.515657, 28.836588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144955, 30.889034, 28.317202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792156, 30.893431, 28.505650>,  <39.580475, 30.896069, 28.618719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792156, 30.893431, 28.505650>,  <40.144955, 30.889034, 28.317202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792156, 30.893431, 28.505650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465039, -0.182078, -0.866364,
		0.076260, -0.983223, 0.165704,
		-0.882000, 0.010990, 0.471122,
		39.527557, 30.896729, 28.646986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708149, 30.276217, 28.071377>,  <40.144955, 30.889034, 28.317202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708149, 30.276217, 28.071377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459496, 30.537855, 28.243759>,  <39.310303, 30.694839, 28.347189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459496, 30.537855, 28.243759>,  <39.708149, 30.276217, 28.071377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459496, 30.537855, 28.243759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549068, 0.028516, -0.835291,
		-0.558651, -0.755873, 0.341418,
		-0.621638, 0.654097, 0.430956,
		39.273003, 30.734085, 28.373045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104313, 30.104008, 27.879097>,  <39.708149, 30.276217, 28.071377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104313, 30.104008, 27.879097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033569, 30.475565, 28.009253>,  <38.991123, 30.698500, 28.087347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033569, 30.475565, 28.009253>,  <39.104313, 30.104008, 27.879097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033569, 30.475565, 28.009253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676626, 0.125340, -0.725580,
		-0.714770, -0.348496, 0.606345,
		-0.176862, 0.928892, 0.325391,
		38.980511, 30.754232, 28.106871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310333, 30.193468, 28.053085>,  <39.104313, 30.104008, 27.879097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310333, 30.193468, 28.053085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475250, 30.544731, 27.956045>,  <38.574200, 30.755489, 27.897821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.475250, 30.544731, 27.956045>,  <38.310333, 30.193468, 28.053085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475250, 30.544731, 27.956045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773983, 0.197147, -0.601733,
		-0.480588, 0.435859, 0.760961,
		0.412292, 0.878157, -0.242601,
		38.598938, 30.808178, 27.883265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.676331, 30.724960, 27.839344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009636, 30.924109, 27.743174>,  <38.209618, 31.043598, 27.685471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009636, 30.924109, 27.743174>,  <37.676331, 30.724960, 27.839344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009636, 30.924109, 27.743174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472640, 0.415817, -0.776987,
		-0.286865, 0.761066, 0.581796,
		0.833259, 0.497871, -0.240427,
		38.259613, 31.073469, 27.671045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410316, 31.262749, 27.570543>,  <37.676331, 30.724960, 27.839344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410316, 31.262749, 27.570543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779446, 31.255575, 27.416620>,  <38.000923, 31.251270, 27.324266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779446, 31.255575, 27.416620>,  <37.410316, 31.262749, 27.570543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779446, 31.255575, 27.416620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371507, 0.222792, -0.901303,
		0.101897, 0.974701, 0.198935,
		0.922822, -0.017934, -0.384810,
		38.056293, 31.250195, 27.301178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474537, 31.911114, 27.195217>,  <37.410316, 31.262749, 27.570543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474537, 31.911114, 27.195217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747147, 31.667179, 27.033417>,  <37.910713, 31.520819, 26.936337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747147, 31.667179, 27.033417>,  <37.474537, 31.911114, 27.195217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747147, 31.667179, 27.033417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312189, 0.257643, -0.914417,
		0.661861, 0.749480, -0.014793,
		0.681526, -0.609835, -0.404503,
		37.951603, 31.484228, 26.912066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818607, 32.216995, 26.621357>,  <37.474537, 31.911114, 27.195217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818607, 32.216995, 26.621357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891598, 31.829174, 26.556044>,  <37.935390, 31.596481, 26.516855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891598, 31.829174, 26.556044>,  <37.818607, 32.216995, 26.621357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891598, 31.829174, 26.556044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100208, 0.146869, -0.984067,
		0.978090, 0.195932, -0.070357,
		0.182477, -0.969557, -0.163285,
		37.946342, 31.538307, 26.507059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035095, 32.240307, 25.915064>,  <37.818607, 32.216995, 26.621357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035095, 32.240307, 25.915064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982883, 31.847588, 25.970247>,  <37.951557, 31.611956, 26.003357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982883, 31.847588, 25.970247>,  <38.035095, 32.240307, 25.915064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982883, 31.847588, 25.970247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056657, -0.131536, -0.989691,
		0.989824, -0.137002, -0.038456,
		-0.130531, -0.981799, 0.137960,
		37.943726, 31.553047, 26.011635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521088, 31.919689, 25.574869>,  <38.035095, 32.240307, 25.915064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521088, 31.919689, 25.574869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253784, 31.622490, 25.589735>,  <38.093403, 31.444170, 25.598654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.253784, 31.622490, 25.589735>,  <38.521088, 31.919689, 25.574869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253784, 31.622490, 25.589735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049531, -0.094283, -0.994313,
		0.742277, -0.662619, 0.099807,
		-0.668261, -0.742998, 0.037164,
		38.053307, 31.399590, 25.600883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680779, 31.472813, 25.011202>,  <38.521088, 31.919689, 25.574869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680779, 31.472813, 25.011202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308517, 31.372385, 25.117674>,  <38.085159, 31.312128, 25.181557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308517, 31.372385, 25.117674>,  <38.680779, 31.472813, 25.011202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308517, 31.372385, 25.117674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241079, -0.126506, -0.962225,
		0.275260, -0.959666, 0.057206,
		-0.930652, -0.251071, 0.266178,
		38.029324, 31.297064, 25.197527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512436, 30.790751, 24.754648>,  <38.680779, 31.472813, 25.011202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512436, 30.790751, 24.754648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173935, 30.996361, 24.810690>,  <37.970833, 31.119726, 24.844315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173935, 30.996361, 24.810690>,  <38.512436, 30.790751, 24.754648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173935, 30.996361, 24.810690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201261, -0.064944, -0.977382,
		-0.493300, -0.855314, 0.158412,
		-0.846256, 0.514024, 0.140104,
		37.920059, 31.150568, 24.852720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201416, 30.563456, 24.287928>,  <38.512436, 30.790751, 24.754648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201416, 30.563456, 24.287928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006859, 30.904682, 24.363506>,  <37.890125, 31.109419, 24.408854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006859, 30.904682, 24.363506>,  <38.201416, 30.563456, 24.287928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006859, 30.904682, 24.363506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193152, 0.105921, -0.975435,
		-0.852123, -0.510940, 0.113252,
		-0.486393, 0.853066, 0.188947,
		37.860943, 31.160603, 24.420191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590103, 30.437956, 23.987617>,  <38.201416, 30.563456, 24.287928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590103, 30.437956, 23.987617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617630, 30.834389, 24.033266>,  <37.634144, 31.072248, 24.060656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617630, 30.834389, 24.033266>,  <37.590103, 30.437956, 23.987617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617630, 30.834389, 24.033266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288894, 0.129288, -0.948591,
		-0.954885, 0.032309, 0.295214,
		0.068815, 0.991080, 0.114121,
		37.638275, 31.131714, 24.067503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055401, 30.733282, 23.578896>,  <37.590103, 30.437956, 23.987617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055401, 30.733282, 23.578896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307758, 31.040981, 23.619366>,  <37.459171, 31.225601, 23.643648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307758, 31.040981, 23.619366>,  <37.055401, 30.733282, 23.578896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307758, 31.040981, 23.619366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131123, 0.234240, -0.963295,
		-0.764711, 0.594468, 0.248646,
		0.630892, 0.769246, 0.101177,
		37.497025, 31.271755, 23.649719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676361, 31.304152, 23.372604>,  <37.055401, 30.733282, 23.578896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676361, 31.304152, 23.372604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059971, 31.411228, 23.335484>,  <37.290138, 31.475475, 23.313211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059971, 31.411228, 23.335484>,  <36.676361, 31.304152, 23.372604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059971, 31.411228, 23.335484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160990, 0.245343, -0.955975,
		-0.233140, 0.931744, 0.278386,
		0.959024, 0.267693, -0.092803,
		37.347679, 31.491535, 23.307642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697762, 31.856707, 22.901150>,  <36.676361, 31.304152, 23.372604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697762, 31.856707, 22.901150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073040, 31.719761, 22.880821>,  <37.298206, 31.637594, 22.868624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073040, 31.719761, 22.880821>,  <36.697762, 31.856707, 22.901150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073040, 31.719761, 22.880821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003938, 0.136262, -0.990665,
		0.346093, 0.929634, 0.126492,
		0.938192, -0.342364, -0.050821,
		37.354496, 31.617052, 22.865576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208885, 32.371273, 22.506313>,  <36.697762, 31.856707, 22.901150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208885, 32.371273, 22.506313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352928, 31.998528, 22.488642>,  <37.439354, 31.774879, 22.478039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352928, 31.998528, 22.488642>,  <37.208885, 32.371273, 22.506313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352928, 31.998528, 22.488642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068474, 0.073630, -0.994932,
		0.930394, 0.355258, 0.090323,
		0.360108, -0.931864, -0.044179,
		37.460960, 31.718967, 22.475388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746113, 32.413399, 22.058325>,  <37.208885, 32.371273, 22.506313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746113, 32.413399, 22.058325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655373, 32.024227, 22.040653>,  <37.600929, 31.790724, 22.030050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655373, 32.024227, 22.040653>,  <37.746113, 32.413399, 22.058325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655373, 32.024227, 22.040653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112312, 0.018925, -0.993493,
		0.967433, -0.230333, 0.104978,
		-0.226848, -0.972928, -0.044178,
		37.587318, 31.732349, 22.027399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175709, 32.057587, 21.642408>,  <37.746113, 32.413399, 22.058325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175709, 32.057587, 21.642408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863342, 31.807899, 21.651464>,  <37.675922, 31.658087, 21.656898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863342, 31.807899, 21.651464>,  <38.175709, 32.057587, 21.642408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863342, 31.807899, 21.651464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056481, 0.034470, -0.997808,
		0.622073, -0.780487, -0.062175,
		-0.780919, -0.624222, 0.022640,
		37.629066, 31.620632, 21.658257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279465, 31.560650, 21.028172>,  <38.175709, 32.057587, 21.642408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279465, 31.560650, 21.028172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891365, 31.554407, 21.124817>,  <37.658504, 31.550661, 21.182804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891365, 31.554407, 21.124817>,  <38.279465, 31.560650, 21.028172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891365, 31.554407, 21.124817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239838, 0.198505, -0.950302,
		-0.033132, -0.979976, -0.196342,
		-0.970248, -0.015605, 0.241612,
		37.600292, 31.549726, 21.197300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995956, 31.077215, 20.566019>,  <38.279465, 31.560650, 21.028172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995956, 31.077215, 20.566019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695065, 31.317230, 20.674908>,  <37.514530, 31.461239, 20.740242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695065, 31.317230, 20.674908>,  <37.995956, 31.077215, 20.566019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695065, 31.317230, 20.674908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242666, 0.131820, -0.961112,
		-0.612589, -0.789036, 0.046450,
		-0.752229, 0.600039, 0.272224,
		37.469395, 31.497242, 20.756575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477226, 30.927696, 20.039915>,  <37.995956, 31.077215, 20.566019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477226, 30.927696, 20.039915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369530, 31.273394, 20.209902>,  <37.304913, 31.480812, 20.311893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369530, 31.273394, 20.209902>,  <37.477226, 30.927696, 20.039915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369530, 31.273394, 20.209902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404274, 0.299079, -0.864358,
		-0.874112, -0.404523, 0.268866,
		-0.269241, 0.864241, 0.424966,
		37.288757, 31.532665, 20.337391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810909, 31.048241, 19.750214>,  <37.477226, 30.927696, 20.039915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810909, 31.048241, 19.750214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967449, 31.379181, 19.911381>,  <37.061371, 31.577745, 20.008081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967449, 31.379181, 19.911381>,  <36.810909, 31.048241, 19.750214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967449, 31.379181, 19.911381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343742, 0.537570, -0.769974,
		-0.853633, 0.162827, 0.494770,
		0.391346, 0.827349, 0.402918,
		37.084854, 31.627386, 20.032255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293182, 31.512922, 19.663494>,  <36.810909, 31.048241, 19.750214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293182, 31.512922, 19.663494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616158, 31.744724, 19.707706>,  <36.809944, 31.883804, 19.734234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616158, 31.744724, 19.707706>,  <36.293182, 31.512922, 19.663494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616158, 31.744724, 19.707706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283756, 0.545748, -0.788442,
		-0.517227, 0.605256, 0.605096,
		0.807440, 0.579503, 0.110530,
		36.858391, 31.918575, 19.740866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106045, 32.144947, 19.659191>,  <36.293182, 31.512922, 19.663494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106045, 32.144947, 19.659191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473228, 32.144306, 19.500526>,  <36.693539, 32.143921, 19.405327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473228, 32.144306, 19.500526>,  <36.106045, 32.144947, 19.659191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473228, 32.144306, 19.500526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346300, 0.484421, -0.803376,
		0.193442, 0.874833, 0.444125,
		0.917963, -0.001606, -0.396662,
		36.748619, 32.143826, 19.381527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244514, 32.802189, 19.532705>,  <36.106045, 32.144947, 19.659191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244514, 32.802189, 19.532705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448444, 32.555878, 19.292406>,  <36.570801, 32.408089, 19.148228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448444, 32.555878, 19.292406>,  <36.244514, 32.802189, 19.532705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448444, 32.555878, 19.292406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371166, 0.472530, -0.799344,
		0.776093, 0.630498, 0.012349,
		0.509820, -0.615782, -0.600747,
		36.601391, 32.371143, 19.112183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950142, 33.108562, 18.863180>,  <36.244514, 32.802189, 19.532705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950142, 33.108562, 18.863180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.798317, 33.469879, 18.783192>,  <35.707222, 33.686668, 18.735199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.798317, 33.469879, 18.783192>,  <35.950142, 33.108562, 18.863180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798317, 33.469879, 18.783192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063953, 0.190012, 0.979697,
		0.922952, 0.384648, -0.014354,
		-0.379566, 0.903295, -0.199971,
		35.684448, 33.740868, 18.723200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318832, 33.754715, 19.182344>,  <35.950142, 33.108562, 18.863180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318832, 33.754715, 19.182344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923988, 33.804886, 19.142601>,  <35.687080, 33.834988, 19.118755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923988, 33.804886, 19.142601>,  <36.318832, 33.754715, 19.182344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923988, 33.804886, 19.142601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086289, 0.105679, 0.990649,
		0.134754, 0.986458, -0.093494,
		-0.987115, 0.125427, -0.099361,
		35.627853, 33.842514, 19.112793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145199, 34.322716, 19.485292>,  <36.318832, 33.754715, 19.182344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145199, 34.322716, 19.485292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814896, 34.097710, 19.501816>,  <35.616714, 33.962708, 19.511730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814896, 34.097710, 19.501816>,  <36.145199, 34.322716, 19.485292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814896, 34.097710, 19.501816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139243, 0.274277, 0.951517,
		-0.546570, 0.779969, -0.304812,
		-0.825756, -0.562513, 0.041306,
		35.567169, 33.928955, 19.514208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980331, 34.527699, 20.041121>,  <36.145199, 34.322716, 19.485292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980331, 34.527699, 20.041121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715443, 34.233593, 19.983355>,  <35.556511, 34.057129, 19.948694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.715443, 34.233593, 19.983355>,  <35.980331, 34.527699, 20.041121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715443, 34.233593, 19.983355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149105, -0.059572, 0.987025,
		-0.734324, 0.675161, -0.070181,
		-0.662220, -0.735261, -0.144416,
		35.516777, 34.013016, 19.940029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313869, 34.784355, 20.290455>,  <35.980331, 34.527699, 20.041121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313869, 34.784355, 20.290455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319229, 34.384403, 20.293329>,  <35.322445, 34.144432, 20.295053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319229, 34.384403, 20.293329>,  <35.313869, 34.784355, 20.290455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319229, 34.384403, 20.293329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156353, 0.005004, 0.987689,
		-0.987610, -0.014360, -0.156268,
		0.013402, -0.999885, 0.007187,
		35.323250, 34.084438, 20.295485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676544, 34.472675, 20.640404>,  <35.313869, 34.784355, 20.290455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676544, 34.472675, 20.640404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977047, 34.211414, 20.678364>,  <35.157349, 34.054657, 20.701139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977047, 34.211414, 20.678364>,  <34.676544, 34.472675, 20.640404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977047, 34.211414, 20.678364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130077, -0.005551, 0.991488,
		-0.647071, -0.757202, -0.089131,
		0.751252, -0.653157, 0.094902,
		35.202423, 34.015469, 20.706835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499512, 34.151623, 21.196482>,  <34.676544, 34.472675, 20.640404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499512, 34.151623, 21.196482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859585, 33.980968, 21.161499>,  <35.075630, 33.878578, 21.140509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859585, 33.980968, 21.161499>,  <34.499512, 34.151623, 21.196482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859585, 33.980968, 21.161499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035027, -0.271095, 0.961915,
		-0.434097, -0.862838, -0.258979,
		0.900185, -0.426635, -0.087459,
		35.129639, 33.852978, 21.135262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507862, 33.451599, 21.453962>,  <34.499512, 34.151623, 21.196482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507862, 33.451599, 21.453962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891674, 33.563766, 21.464378>,  <35.121960, 33.631065, 21.470629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891674, 33.563766, 21.464378>,  <34.507862, 33.451599, 21.453962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891674, 33.563766, 21.464378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096130, -0.413041, 0.905625,
		0.264708, -0.866466, -0.423280,
		0.959525, 0.280416, 0.026042,
		35.179531, 33.647892, 21.472191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880795, 32.874805, 21.647886>,  <34.507862, 33.451599, 21.453962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880795, 32.874805, 21.647886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087879, 33.204403, 21.739983>,  <35.212132, 33.402161, 21.795240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087879, 33.204403, 21.739983>,  <34.880795, 32.874805, 21.647886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087879, 33.204403, 21.739983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121487, -0.337189, 0.933566,
		0.846885, -0.455348, -0.274671,
		0.517713, 0.823991, 0.230241,
		35.243195, 33.451599, 21.809055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417789, 32.591976, 21.990366>,  <34.880795, 32.874805, 21.647886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417789, 32.591976, 21.990366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436699, 32.976410, 22.099237>,  <35.448044, 33.207069, 22.164560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436699, 32.976410, 22.099237>,  <35.417789, 32.591976, 21.990366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436699, 32.976410, 22.099237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274399, -0.274495, 0.921606,
		0.960453, 0.031118, -0.276697,
		0.047273, 0.961085, 0.272179,
		35.450882, 33.264736, 22.180891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019798, 32.630848, 22.446280>,  <35.417789, 32.591976, 21.990366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019798, 32.630848, 22.446280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824146, 32.973049, 22.514244>,  <35.706757, 33.178368, 22.555023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.824146, 32.973049, 22.514244>,  <36.019798, 32.630848, 22.446280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824146, 32.973049, 22.514244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175009, -0.094582, 0.980013,
		0.854473, 0.509089, -0.103458,
		-0.489129, 0.855501, 0.169913,
		35.677406, 33.229698, 22.565218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398193, 33.151970, 22.784967>,  <36.019798, 32.630848, 22.446280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398193, 33.151970, 22.784967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022526, 33.236164, 22.893530>,  <35.797127, 33.286682, 22.958668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.022526, 33.236164, 22.893530>,  <36.398193, 33.151970, 22.784967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022526, 33.236164, 22.893530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252322, -0.113291, 0.960988,
		0.233021, 0.971011, 0.053290,
		-0.939167, 0.210485, 0.271406,
		35.740776, 33.299309, 22.974953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488487, 33.486343, 23.308786>,  <36.398193, 33.151970, 22.784967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488487, 33.486343, 23.308786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110176, 33.364250, 23.353224>,  <35.883190, 33.290993, 23.379887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110176, 33.364250, 23.353224>,  <36.488487, 33.486343, 23.308786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110176, 33.364250, 23.353224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186121, -0.228942, 0.955482,
		-0.266211, 0.924348, 0.273338,
		-0.945775, -0.305234, 0.111093,
		35.826443, 33.272678, 23.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208351, 33.838581, 23.807487>,  <36.488487, 33.486343, 23.308786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208351, 33.838581, 23.807487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980255, 33.510616, 23.787189>,  <35.843399, 33.313839, 23.775011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980255, 33.510616, 23.787189>,  <36.208351, 33.838581, 23.807487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980255, 33.510616, 23.787189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201989, -0.199820, 0.958787,
		-0.796259, 0.536487, 0.279558,
		-0.570238, -0.819911, -0.050744,
		35.809185, 33.264645, 23.771967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850254, 33.859379, 24.453465>,  <36.208351, 33.838581, 23.807487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850254, 33.859379, 24.453465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782215, 33.479462, 24.348429>,  <35.741390, 33.251511, 24.285408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782215, 33.479462, 24.348429>,  <35.850254, 33.859379, 24.453465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782215, 33.479462, 24.348429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090459, -0.280398, 0.955612,
		-0.981266, 0.138798, 0.133614,
		-0.170102, -0.949796, -0.262590,
		35.731186, 33.194523, 24.269651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257118, 33.624481, 24.865896>,  <35.850254, 33.859379, 24.453465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257118, 33.624481, 24.865896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444126, 33.300301, 24.724707>,  <35.556332, 33.105793, 24.639994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.444126, 33.300301, 24.724707>,  <35.257118, 33.624481, 24.865896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444126, 33.300301, 24.724707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002242, -0.398210, 0.917291,
		-0.883981, -0.429642, -0.184353,
		0.467518, -0.810454, -0.352973,
		35.584381, 33.057163, 24.618814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890163, 33.050819, 25.152803>,  <35.257118, 33.624481, 24.865896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890163, 33.050819, 25.152803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247852, 32.907047, 25.046082>,  <35.462463, 32.820786, 24.982048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247852, 32.907047, 25.046082>,  <34.890163, 33.050819, 25.152803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247852, 32.907047, 25.046082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045683, -0.519645, 0.853160,
		-0.445292, -0.775101, -0.448257,
		0.894220, -0.359428, -0.266803,
		35.516117, 32.799217, 24.966040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772003, 32.384914, 25.199062>,  <34.890163, 33.050819, 25.152803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772003, 32.384914, 25.199062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169064, 32.431744, 25.211369>,  <35.407299, 32.459839, 25.218752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169064, 32.431744, 25.211369>,  <34.772003, 32.384914, 25.199062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169064, 32.431744, 25.211369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027317, -0.464264, 0.885276,
		0.117921, -0.877926, -0.464048,
		0.992647, 0.117069, 0.030764,
		35.466858, 32.466866, 25.220598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943825, 31.934555, 25.600502>,  <34.772003, 32.384914, 25.199062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943825, 31.934555, 25.600502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271488, 32.163940, 25.596186>,  <35.468086, 32.301571, 25.593596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271488, 32.163940, 25.596186>,  <34.943825, 31.934555, 25.600502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271488, 32.163940, 25.596186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205516, -0.275898, 0.938959,
		0.535479, -0.771377, -0.343861,
		0.819162, 0.573461, -0.010793,
		35.517235, 32.335979, 25.592947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387867, 31.511215, 25.829935>,  <34.943825, 31.934555, 25.600502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387867, 31.511215, 25.829935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541912, 31.872997, 25.903315>,  <35.634338, 32.090065, 25.947342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541912, 31.872997, 25.903315>,  <35.387867, 31.511215, 25.829935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541912, 31.872997, 25.903315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319346, -0.317103, 0.893008,
		0.865857, -0.285323, -0.410954,
		0.385111, 0.904454, 0.183449,
		35.657444, 32.144333, 25.958349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064735, 31.347593, 26.094887>,  <35.387867, 31.511215, 25.829935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064735, 31.347593, 26.094887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990013, 31.728004, 26.193392>,  <35.945179, 31.956251, 26.252495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990013, 31.728004, 26.193392>,  <36.064735, 31.347593, 26.094887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990013, 31.728004, 26.193392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180248, -0.213240, 0.960229,
		0.965719, 0.223769, -0.131586,
		-0.186810, 0.951029, 0.246264,
		35.933971, 32.013313, 26.267271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.727039, 30.277996, 29.797495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530815, 30.626209, 29.813084>,  <40.413078, 30.835136, 29.822437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530815, 30.626209, 29.813084>,  <40.727039, 30.277996, 29.797495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530815, 30.626209, 29.813084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328870, 0.143536, 0.933404,
		0.806965, 0.470711, -0.356706,
		-0.490564, 0.870533, 0.038974,
		40.383648, 30.887369, 29.824776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078293, 30.879328, 30.041626>,  <40.727039, 30.277996, 29.797495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078293, 30.879328, 30.041626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707085, 31.001780, 30.126541>,  <40.484360, 31.075251, 30.177490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707085, 31.001780, 30.126541>,  <41.078293, 30.879328, 30.041626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707085, 31.001780, 30.126541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306766, 0.304650, 0.901711,
		0.211367, 0.901928, -0.376631,
		-0.928019, 0.306129, 0.212288,
		40.428680, 31.093618, 30.190228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037003, 31.619301, 30.256533>,  <41.078293, 30.879328, 30.041626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037003, 31.619301, 30.256533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721310, 31.456699, 30.440651>,  <40.531895, 31.359138, 30.551123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721310, 31.456699, 30.440651>,  <41.037003, 31.619301, 30.256533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721310, 31.456699, 30.440651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281449, 0.426754, 0.859458,
		-0.545806, 0.807859, -0.222396,
		-0.789229, -0.406504, 0.460296,
		40.484543, 31.334747, 30.578739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766022, 32.159992, 30.708538>,  <41.037003, 31.619301, 30.256533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766022, 32.159992, 30.708538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596329, 31.829096, 30.855892>,  <40.494514, 31.630558, 30.944304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596329, 31.829096, 30.855892>,  <40.766022, 32.159992, 30.708538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596329, 31.829096, 30.855892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266968, 0.274473, 0.923793,
		-0.865308, 0.490247, 0.104406,
		-0.424230, -0.827238, 0.368383,
		40.469059, 31.580925, 30.966408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333771, 32.399868, 31.272793>,  <40.766022, 32.159992, 30.708538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333771, 32.399868, 31.272793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396324, 32.008186, 31.324474>,  <40.433857, 31.773176, 31.355482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396324, 32.008186, 31.324474>,  <40.333771, 32.399868, 31.272793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396324, 32.008186, 31.324474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102099, 0.146139, 0.983981,
		-0.982405, -0.140691, 0.122830,
		0.156387, -0.979209, 0.129203,
		40.443241, 31.714424, 31.363235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757164, 32.297062, 31.686155>,  <40.333771, 32.399868, 31.272793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757164, 32.297062, 31.686155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985203, 31.985064, 31.789385>,  <40.122025, 31.797865, 31.851322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985203, 31.985064, 31.789385>,  <39.757164, 32.297062, 31.686155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985203, 31.985064, 31.789385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094628, 0.249690, 0.963691,
		-0.816110, -0.573818, 0.068538,
		0.570096, -0.779992, 0.258074,
		40.156231, 31.751066, 31.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369118, 31.831434, 32.140759>,  <39.757164, 32.297062, 31.686155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369118, 31.831434, 32.140759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.756577, 31.750690, 32.198696>,  <39.989052, 31.702244, 32.233459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.756577, 31.750690, 32.198696>,  <39.369118, 31.831434, 32.140759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756577, 31.750690, 32.198696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122711, 0.118208, 0.985377,
		-0.216029, -0.972255, 0.089732,
		0.968646, -0.201859, 0.144843,
		40.047169, 31.690132, 32.242149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412018, 31.659883, 32.844368>,  <39.369118, 31.831434, 32.140759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412018, 31.659883, 32.844368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807316, 31.700575, 32.798725>,  <40.044495, 31.724989, 32.771339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807316, 31.700575, 32.798725>,  <39.412018, 31.659883, 32.844368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807316, 31.700575, 32.798725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092340, 0.197607, 0.975923,
		0.121823, -0.974989, 0.185891,
		0.988247, 0.101725, -0.114103,
		40.103790, 31.731092, 32.764496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689186, 31.292952, 33.390892>,  <39.412018, 31.659883, 32.844368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689186, 31.292952, 33.390892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993290, 31.535158, 33.296776>,  <40.175751, 31.680481, 33.240307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993290, 31.535158, 33.296776>,  <39.689186, 31.292952, 33.390892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993290, 31.535158, 33.296776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129098, 0.214148, 0.968233,
		0.636667, -0.766480, 0.084636,
		0.760256, 0.605515, -0.235292,
		40.221367, 31.716812, 33.226189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249889, 31.120842, 33.776745>,  <39.689186, 31.292952, 33.390892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249889, 31.120842, 33.776745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392326, 31.467886, 33.637920>,  <40.477787, 31.676113, 33.554626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392326, 31.467886, 33.637920>,  <40.249889, 31.120842, 33.776745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392326, 31.467886, 33.637920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167832, 0.305985, 0.937126,
		0.919256, -0.391951, -0.036654,
		0.356091, 0.867610, -0.347061,
		40.499153, 31.728168, 33.533802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853260, 31.138094, 34.104450>,  <40.249889, 31.120842, 33.776745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853260, 31.138094, 34.104450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.705696, 31.494667, 33.999184>,  <40.617157, 31.708611, 33.936024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.705696, 31.494667, 33.999184>,  <40.853260, 31.138094, 34.104450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705696, 31.494667, 33.999184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245205, 0.366444, 0.897548,
		0.896538, 0.266584, -0.353768,
		-0.368908, 0.891433, -0.263163,
		40.595024, 31.762096, 33.920235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439941, 31.744150, 34.171879>,  <40.853260, 31.138094, 34.104450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439941, 31.744150, 34.171879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.063961, 31.858141, 34.247005>,  <40.838371, 31.926535, 34.292080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.063961, 31.858141, 34.247005>,  <41.439941, 31.744150, 34.171879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063961, 31.858141, 34.247005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317770, 0.529940, 0.786248,
		0.124530, 0.798719, -0.588676,
		-0.939955, 0.284975, 0.187815,
		40.781975, 31.943634, 34.303349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393654, 32.470375, 34.309986>,  <41.439941, 31.744150, 34.171879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393654, 32.470375, 34.309986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.068653, 32.327988, 34.494644>,  <40.873653, 32.242554, 34.605438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.068653, 32.327988, 34.494644>,  <41.393654, 32.470375, 34.309986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068653, 32.327988, 34.494644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189139, 0.588102, 0.786360,
		-0.551417, 0.726238, -0.410508,
		-0.812506, -0.355969, 0.461650,
		40.824902, 32.221195, 34.633141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241467, 32.999962, 34.812492>,  <41.393654, 32.470375, 34.309986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241467, 32.999962, 34.812492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.027542, 32.685032, 34.935196>,  <40.899189, 32.496075, 35.008816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.027542, 32.685032, 34.935196>,  <41.241467, 32.999962, 34.812492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027542, 32.685032, 34.935196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013559, 0.370988, 0.928538,
		-0.844862, 0.492434, -0.209084,
		-0.534812, -0.787322, 0.306757,
		40.867100, 32.448833, 35.027222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522705, 33.650124, 35.170868>,  <41.241467, 32.999962, 34.812492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522705, 33.650124, 35.170868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.582668, 34.040421, 35.107052>,  <41.618645, 34.274597, 35.068760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.582668, 34.040421, 35.107052>,  <41.522705, 33.650124, 35.170868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582668, 34.040421, 35.107052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015297, -0.159058, -0.987151,
		-0.988582, 0.150419, -0.008917,
		0.149904, 0.975743, -0.159543,
		41.627640, 34.333145, 35.059189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011013, 33.802662, 34.687107>,  <41.522705, 33.650124, 35.170868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011013, 33.802662, 34.687107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299397, 34.074890, 34.634880>,  <41.472427, 34.238228, 34.603542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.299397, 34.074890, 34.634880>,  <41.011013, 33.802662, 34.687107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299397, 34.074890, 34.634880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188465, 0.011251, -0.982015,
		-0.666857, 0.732600, 0.136374,
		0.720959, 0.680566, -0.130566,
		41.515686, 34.279060, 34.595711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721157, 34.378868, 34.357925>,  <41.011013, 33.802662, 34.687107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721157, 34.378868, 34.357925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115757, 34.408272, 34.299377>,  <41.352516, 34.425915, 34.264248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115757, 34.408272, 34.299377>,  <40.721157, 34.378868, 34.357925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115757, 34.408272, 34.299377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141312, -0.069827, -0.987499,
		-0.082808, 0.994847, -0.058497,
		0.986496, 0.073507, -0.146366,
		41.411705, 34.430325, 34.255466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744366, 34.651466, 33.784943>,  <40.721157, 34.378868, 34.357925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744366, 34.651466, 33.784943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137917, 34.595959, 33.830055>,  <41.374046, 34.562653, 33.857121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137917, 34.595959, 33.830055>,  <40.744366, 34.651466, 33.784943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137917, 34.595959, 33.830055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125461, 0.086294, -0.988338,
		0.127422, 0.986557, 0.102313,
		0.983882, -0.138772, 0.112779,
		41.433083, 34.554329, 33.863888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099678, 35.248772, 33.553982>,  <40.744366, 34.651466, 33.784943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099678, 35.248772, 33.553982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.318687, 34.918907, 33.497204>,  <41.450092, 34.720989, 33.463139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.318687, 34.918907, 33.497204>,  <41.099678, 35.248772, 33.553982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318687, 34.918907, 33.497204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050751, 0.202045, -0.978060,
		0.835250, 0.528306, 0.152477,
		0.547523, -0.824664, -0.141946,
		41.482944, 34.671509, 33.454620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677143, 35.464081, 33.149269>,  <41.099678, 35.248772, 33.553982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677143, 35.464081, 33.149269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643963, 35.071102, 33.082439>,  <41.624054, 34.835316, 33.042343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643963, 35.071102, 33.082439>,  <41.677143, 35.464081, 33.149269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643963, 35.071102, 33.082439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098023, 0.158794, -0.982434,
		0.991721, -0.097868, 0.083131,
		-0.082948, -0.982449, -0.167073,
		41.619080, 34.776367, 33.032318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217037, 35.188126, 32.673569>,  <41.677143, 35.464081, 33.149269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217037, 35.188126, 32.673569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973148, 34.874802, 32.625137>,  <41.826813, 34.686806, 32.596077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973148, 34.874802, 32.625137>,  <42.217037, 35.188126, 32.673569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973148, 34.874802, 32.625137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218625, -0.019374, -0.975617,
		0.761865, -0.621329, 0.183064,
		-0.609726, -0.783310, -0.121078,
		41.790230, 34.639809, 32.588814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519279, 34.687508, 32.304134>,  <42.217037, 35.188126, 32.673569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519279, 34.687508, 32.304134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.133636, 34.593102, 32.255470>,  <41.902252, 34.536457, 32.226273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.133636, 34.593102, 32.255470>,  <42.519279, 34.687508, 32.304134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133636, 34.593102, 32.255470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175694, -0.223477, -0.958744,
		0.199085, -0.945704, 0.256921,
		-0.964104, -0.236011, -0.121664,
		41.844406, 34.522297, 32.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551727, 34.184124, 31.758163>,  <42.519279, 34.687508, 32.304134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551727, 34.184124, 31.758163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161015, 34.264351, 31.788279>,  <41.926586, 34.312485, 31.806347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161015, 34.264351, 31.788279>,  <42.551727, 34.184124, 31.758163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161015, 34.264351, 31.788279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104153, -0.137492, -0.985012,
		-0.187211, -0.969984, 0.155190,
		-0.976783, 0.200568, 0.075286,
		41.867981, 34.324520, 31.810865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285789, 33.633011, 31.467176>,  <42.551727, 34.184124, 31.758163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285789, 33.633011, 31.467176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.005367, 33.916599, 31.436501>,  <41.837112, 34.086754, 31.418095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.005367, 33.916599, 31.436501>,  <42.285789, 33.633011, 31.467176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005367, 33.916599, 31.436501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132620, -0.235292, -0.962834,
		-0.700667, -0.664829, 0.258976,
		-0.701055, 0.708971, -0.076692,
		41.795052, 34.129292, 31.413492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639645, 33.302475, 31.100119>,  <42.285789, 33.633011, 31.467176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639645, 33.302475, 31.100119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600323, 33.698898, 31.064014>,  <41.576729, 33.936752, 31.042353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600323, 33.698898, 31.064014>,  <41.639645, 33.302475, 31.100119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600323, 33.698898, 31.064014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274557, -0.114189, -0.954767,
		-0.956533, -0.069076, 0.283326,
		-0.098304, 0.991055, -0.090261,
		41.570831, 33.996216, 31.036936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976189, 33.480804, 30.902967>,  <41.639645, 33.302475, 31.100119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976189, 33.480804, 30.902967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193035, 33.797783, 30.791149>,  <41.323143, 33.987968, 30.724058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193035, 33.797783, 30.791149>,  <40.976189, 33.480804, 30.902967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193035, 33.797783, 30.791149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280075, -0.143252, -0.949230,
		-0.792257, 0.592883, 0.144285,
		0.542113, 0.792445, -0.279544,
		41.355671, 34.035515, 30.707287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548771, 33.939659, 30.507341>,  <40.976189, 33.480804, 30.902967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548771, 33.939659, 30.507341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915783, 34.066689, 30.411608>,  <41.135990, 34.142906, 30.354168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915783, 34.066689, 30.411608>,  <40.548771, 33.939659, 30.507341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915783, 34.066689, 30.411608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247300, -0.015625, -0.968813,
		-0.311405, 0.948106, 0.064199,
		0.917534, 0.317569, -0.239333,
		41.191044, 34.161961, 30.339808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518593, 34.475647, 30.019217>,  <40.548771, 33.939659, 30.507341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518593, 34.475647, 30.019217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.890762, 34.336670, 29.972578>,  <41.114063, 34.253284, 29.944595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.890762, 34.336670, 29.972578>,  <40.518593, 34.475647, 30.019217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890762, 34.336670, 29.972578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094164, 0.080826, -0.992270,
		0.354182, 0.934211, 0.042486,
		0.930424, -0.347443, -0.116596,
		41.169891, 34.232437, 29.937599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463478, 35.213730, 30.375439>,  <40.518593, 34.475647, 30.019217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463478, 35.213730, 30.375439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291935, 35.569302, 30.311071>,  <40.189011, 35.782642, 30.272451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291935, 35.569302, 30.311071>,  <40.463478, 35.213730, 30.375439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291935, 35.569302, 30.311071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175941, 0.092530, 0.980042,
		0.886074, 0.448609, 0.116716,
		-0.428856, 0.888925, -0.160917,
		40.163277, 35.835979, 30.262796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811157, 35.772160, 30.818073>,  <40.463478, 35.213730, 30.375439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811157, 35.772160, 30.818073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.431824, 35.863647, 30.730122>,  <40.204224, 35.918541, 30.677351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.431824, 35.863647, 30.730122>,  <40.811157, 35.772160, 30.818073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431824, 35.863647, 30.730122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209953, 0.067172, 0.975401,
		0.237866, 0.971171, -0.015681,
		-0.948335, 0.228722, -0.219878,
		40.147324, 35.932262, 30.664158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558140, 36.188374, 31.362066>,  <40.811157, 35.772160, 30.818073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558140, 36.188374, 31.362066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212151, 36.087059, 31.188782>,  <40.004559, 36.026268, 31.084812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212151, 36.087059, 31.188782>,  <40.558140, 36.188374, 31.362066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212151, 36.087059, 31.188782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433296, -0.058508, 0.899351,
		-0.253143, 0.965619, -0.059142,
		-0.864970, -0.253291, -0.433210,
		39.952660, 36.011070, 31.058819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056400, 36.606110, 31.658789>,  <40.558140, 36.188374, 31.362066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056400, 36.606110, 31.658789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875370, 36.279648, 31.515085>,  <39.766754, 36.083771, 31.428864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875370, 36.279648, 31.515085>,  <40.056400, 36.606110, 31.658789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875370, 36.279648, 31.515085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551710, -0.060236, 0.831858,
		-0.700567, 0.574683, -0.423020,
		-0.452574, -0.816157, -0.359258,
		39.739597, 36.034801, 31.407309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354847, 36.678162, 31.912189>,  <40.056400, 36.606110, 31.658789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354847, 36.678162, 31.912189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422375, 36.292336, 31.831078>,  <39.462891, 36.060841, 31.782410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422375, 36.292336, 31.831078>,  <39.354847, 36.678162, 31.912189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422375, 36.292336, 31.831078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518850, -0.261887, 0.813763,
		-0.838031, -0.032162, -0.544674,
		0.168815, -0.964562, -0.202782,
		39.473019, 36.002968, 31.770243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759312, 36.392296, 32.046551>,  <39.354847, 36.678162, 31.912189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759312, 36.392296, 32.046551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.031769, 36.099678, 32.058422>,  <39.195244, 35.924107, 32.065544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.031769, 36.099678, 32.058422>,  <38.759312, 36.392296, 32.046551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031769, 36.099678, 32.058422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440587, -0.377182, 0.814627,
		-0.584747, -0.567951, -0.579225,
		0.681142, -0.731550, 0.029676,
		39.236111, 35.880215, 32.067326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392696, 35.892986, 32.221786>,  <38.759312, 36.392296, 32.046551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392696, 35.892986, 32.221786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.757759, 35.753716, 32.307423>,  <38.976795, 35.670151, 32.358807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.757759, 35.753716, 32.307423>,  <38.392696, 35.892986, 32.221786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757759, 35.753716, 32.307423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341464, -0.361598, 0.867554,
		-0.224647, -0.864881, -0.448903,
		0.912653, -0.348177, 0.214094,
		39.031555, 35.649261, 32.371651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239265, 35.206993, 32.258327>,  <38.392696, 35.892986, 32.221786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239265, 35.206993, 32.258327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576473, 35.282368, 32.459846>,  <38.778797, 35.327591, 32.580757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.576473, 35.282368, 32.459846>,  <38.239265, 35.206993, 32.258327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576473, 35.282368, 32.459846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381032, -0.451884, 0.806607,
		0.379653, -0.871948, -0.309146,
		0.843017, 0.188436, 0.503799,
		38.829380, 35.338898, 32.610985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393295, 34.604660, 32.839626>,  <38.239265, 35.206993, 32.258327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393295, 34.604660, 32.839626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623806, 34.912567, 32.949432>,  <38.762112, 35.097313, 33.015316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623806, 34.912567, 32.949432>,  <38.393295, 34.604660, 32.839626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623806, 34.912567, 32.949432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109499, -0.260145, 0.959341,
		0.809884, -0.582907, -0.065627,
		0.576279, 0.769769, 0.274515,
		38.796688, 35.143497, 33.031788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773102, 34.302032, 33.359787>,  <38.393295, 34.604660, 32.839626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773102, 34.302032, 33.359787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.819382, 34.688320, 33.452736>,  <38.847149, 34.920094, 33.508507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.819382, 34.688320, 33.452736>,  <38.773102, 34.302032, 33.359787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819382, 34.688320, 33.452736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150714, -0.214166, 0.965100,
		0.981783, -0.146685, 0.120768,
		0.115702, 0.965720, 0.232372,
		38.854092, 34.978035, 33.522446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263840, 34.323505, 33.806572>,  <38.773102, 34.302032, 33.359787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263840, 34.323505, 33.806572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082279, 34.675194, 33.864471>,  <38.973343, 34.886208, 33.899212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082279, 34.675194, 33.864471>,  <39.263840, 34.323505, 33.806572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082279, 34.675194, 33.864471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101984, -0.110122, 0.988672,
		0.885197, 0.463520, -0.039681,
		-0.453900, 0.879217, 0.144751,
		38.946110, 34.938957, 33.907898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784416, 34.593502, 34.195171>,  <39.263840, 34.323505, 33.806572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784416, 34.593502, 34.195171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.429569, 34.769646, 34.250462>,  <39.216660, 34.875332, 34.283634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.429569, 34.769646, 34.250462>,  <39.784416, 34.593502, 34.195171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429569, 34.769646, 34.250462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110913, -0.087306, 0.989988,
		0.448016, 0.893568, 0.028609,
		-0.887119, 0.440358, 0.138223,
		39.163433, 34.901752, 34.291927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.242603, 36.123112, 26.664095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855152, 36.218826, 26.690920>,  <40.622681, 36.276257, 26.707014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855152, 36.218826, 26.690920>,  <41.242603, 36.123112, 26.664095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855152, 36.218826, 26.690920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086465, 0.071524, 0.993684,
		0.232982, 0.968310, -0.089971,
		-0.968630, 0.239290, 0.067061,
		40.564564, 36.290615, 26.711039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288837, 36.663494, 27.073713>,  <41.242603, 36.123112, 26.664095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288837, 36.663494, 27.073713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906490, 36.546700, 27.086752>,  <40.677082, 36.476624, 27.094574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906490, 36.546700, 27.086752>,  <41.288837, 36.663494, 27.073713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906490, 36.546700, 27.086752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025607, 0.193316, 0.980802,
		-0.292686, 0.936680, -0.192261,
		-0.955866, -0.291990, 0.032595,
		40.619732, 36.459103, 27.096531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002869, 37.135017, 27.590014>,  <41.288837, 36.663494, 27.073713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002869, 37.135017, 27.590014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741390, 36.834583, 27.553009>,  <40.584503, 36.654324, 27.530806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741390, 36.834583, 27.553009>,  <41.002869, 37.135017, 27.590014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741390, 36.834583, 27.553009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152812, 0.011280, 0.988191,
		-0.741168, 0.660113, -0.122148,
		-0.653696, -0.751081, -0.092513,
		40.545280, 36.609261, 27.525255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402821, 37.303680, 28.033972>,  <41.002869, 37.135017, 27.590014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402821, 37.303680, 28.033972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385509, 36.909534, 27.968023>,  <40.375122, 36.673046, 27.928455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385509, 36.909534, 27.968023>,  <40.402821, 37.303680, 28.033972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385509, 36.909534, 27.968023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222115, -0.151404, 0.963194,
		-0.974060, 0.078302, -0.212312,
		-0.043275, -0.985366, -0.164869,
		40.372528, 36.613926, 27.918562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723000, 37.047649, 28.288977>,  <40.402821, 37.303680, 28.033972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723000, 37.047649, 28.288977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953403, 36.721485, 28.265940>,  <40.091648, 36.525787, 28.252117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953403, 36.721485, 28.265940>,  <39.723000, 37.047649, 28.288977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953403, 36.721485, 28.265940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376711, -0.327321, 0.866574,
		-0.725464, -0.477461, -0.495715,
		0.576013, -0.815409, -0.057595,
		40.126209, 36.476864, 28.248661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269253, 36.386940, 28.402575>,  <39.723000, 37.047649, 28.288977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269253, 36.386940, 28.402575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655952, 36.317707, 28.477871>,  <39.887974, 36.276169, 28.523048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655952, 36.317707, 28.477871>,  <39.269253, 36.386940, 28.402575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655952, 36.317707, 28.477871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255526, -0.625185, 0.737462,
		-0.009955, -0.761043, -0.648625,
		0.966751, -0.173082, 0.188243,
		39.945976, 36.265781, 28.534344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261425, 35.819695, 28.842104>,  <39.269253, 36.386940, 28.402575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261425, 35.819695, 28.842104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641628, 35.935150, 28.888109>,  <39.869751, 36.004425, 28.915712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641628, 35.935150, 28.888109>,  <39.261425, 35.819695, 28.842104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641628, 35.935150, 28.888109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030263, -0.282406, 0.958817,
		0.309232, -0.914841, -0.259694,
		0.950505, 0.288638, 0.115014,
		39.926781, 36.021740, 28.922613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530090, 35.349270, 29.280600>,  <39.261425, 35.819695, 28.842104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530090, 35.349270, 29.280600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803474, 35.638527, 29.320486>,  <39.967506, 35.812080, 29.344418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803474, 35.638527, 29.320486>,  <39.530090, 35.349270, 29.280600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803474, 35.638527, 29.320486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089589, -0.218661, 0.971680,
		0.724468, -0.655172, -0.214231,
		0.683461, 0.723144, 0.099717,
		40.008514, 35.855469, 29.350401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133327, 35.040848, 29.664274>,  <39.530090, 35.349270, 29.280600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133327, 35.040848, 29.664274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105007, 35.437363, 29.708704>,  <40.088013, 35.675270, 29.735361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105007, 35.437363, 29.708704>,  <40.133327, 35.040848, 29.664274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105007, 35.437363, 29.708704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114272, -0.102558, 0.988142,
		0.990923, 0.082658, -0.106015,
		-0.070805, 0.991287, 0.111073,
		40.083767, 35.734749, 29.742025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835079, 34.985920, 29.447826>,  <40.133327, 35.040848, 29.664274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835079, 34.985920, 29.447826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071838, 34.664379, 29.471399>,  <41.213894, 34.471455, 29.485544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071838, 34.664379, 29.471399>,  <40.835079, 34.985920, 29.447826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071838, 34.664379, 29.471399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020832, -0.057836, -0.998109,
		0.805745, 0.592005, -0.017487,
		0.591897, -0.803856, 0.058933,
		41.249409, 34.423222, 29.489079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358097, 35.070427, 29.027143>,  <40.835079, 34.985920, 29.447826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358097, 35.070427, 29.027143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383595, 34.671307, 29.034357>,  <41.398891, 34.431835, 29.038685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383595, 34.671307, 29.034357>,  <41.358097, 35.070427, 29.027143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383595, 34.671307, 29.034357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144129, -0.008677, -0.989521,
		0.987504, 0.065673, 0.143259,
		0.063742, -0.997804, 0.018034,
		41.402718, 34.371967, 29.039768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783688, 34.968143, 28.527491>,  <41.358097, 35.070427, 29.027143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783688, 34.968143, 28.527491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630398, 34.603168, 28.584900>,  <41.538425, 34.384182, 28.619345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630398, 34.603168, 28.584900>,  <41.783688, 34.968143, 28.527491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630398, 34.603168, 28.584900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125497, -0.205378, -0.970603,
		0.915092, -0.353943, 0.193213,
		-0.383220, -0.912439, 0.143522,
		41.515430, 34.329437, 28.627956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219387, 34.512657, 28.129049>,  <41.783688, 34.968143, 28.527491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219387, 34.512657, 28.129049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869934, 34.325882, 28.183809>,  <41.660263, 34.213818, 28.216665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869934, 34.325882, 28.183809>,  <42.219387, 34.512657, 28.129049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869934, 34.325882, 28.183809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059058, -0.177516, -0.982344,
		0.482995, -0.866290, 0.127507,
		-0.873630, -0.466937, 0.136901,
		41.607845, 34.185802, 28.224880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210663, 33.942593, 27.805584>,  <42.219387, 34.512657, 28.129049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210663, 33.942593, 27.805584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815586, 34.002232, 27.824463>,  <41.578541, 34.038017, 27.835791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815586, 34.002232, 27.824463>,  <42.210663, 33.942593, 27.805584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815586, 34.002232, 27.824463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087958, -0.280068, -0.955942,
		-0.129311, -0.948331, 0.289736,
		-0.987695, 0.149098, 0.047198,
		41.519276, 34.046963, 27.838621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950279, 33.361710, 27.447016>,  <42.210663, 33.942593, 27.805584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950279, 33.361710, 27.447016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634377, 33.606922, 27.455751>,  <41.444836, 33.754047, 27.460993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634377, 33.606922, 27.455751>,  <41.950279, 33.361710, 27.447016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634377, 33.606922, 27.455751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276958, -0.324587, -0.904399,
		-0.547334, -0.720305, 0.426129,
		-0.789759, 0.613028, 0.021837,
		41.397449, 33.790833, 27.462303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394379, 32.980072, 27.134192>,  <41.950279, 33.361710, 27.447016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394379, 32.980072, 27.134192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233326, 33.345718, 27.115095>,  <41.136692, 33.565105, 27.103638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233326, 33.345718, 27.115095>,  <41.394379, 32.980072, 27.134192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233326, 33.345718, 27.115095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263424, -0.165661, -0.950349,
		-0.876638, -0.370067, 0.307501,
		-0.402633, 0.914116, -0.047740,
		41.112537, 33.619953, 27.100773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649124, 32.945415, 26.913479>,  <41.394379, 32.980072, 27.134192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649124, 32.945415, 26.913479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798534, 33.291996, 26.780970>,  <40.888180, 33.499943, 26.701464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798534, 33.291996, 26.780970>,  <40.649124, 32.945415, 26.913479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798534, 33.291996, 26.780970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388306, -0.178277, -0.904121,
		-0.842437, 0.466344, 0.269858,
		0.373522, 0.866453, -0.331272,
		40.910591, 33.551933, 26.681587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115738, 33.120235, 26.369289>,  <40.649124, 32.945415, 26.913479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115738, 33.120235, 26.369289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428226, 33.364220, 26.316151>,  <40.615719, 33.510609, 26.284267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428226, 33.364220, 26.316151>,  <40.115738, 33.120235, 26.369289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428226, 33.364220, 26.316151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278920, 0.150669, -0.948421,
		-0.558481, 0.777978, 0.287835,
		0.781219, 0.609958, -0.132848,
		40.662594, 33.547207, 26.276297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897091, 33.689785, 26.043917>,  <40.115738, 33.120235, 26.369289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897091, 33.689785, 26.043917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287636, 33.664413, 25.961267>,  <40.521961, 33.649189, 25.911678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287636, 33.664413, 25.961267>,  <39.897091, 33.689785, 26.043917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287636, 33.664413, 25.961267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197641, 0.124958, -0.972278,
		0.087489, 0.990133, 0.109468,
		0.976363, -0.063429, -0.206623,
		40.580544, 33.645386, 25.899281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999695, 34.188549, 25.399511>,  <39.897091, 33.689785, 26.043917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999695, 34.188549, 25.399511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319557, 33.949497, 25.422792>,  <40.511475, 33.806065, 25.436760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319557, 33.949497, 25.422792>,  <39.999695, 34.188549, 25.399511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319557, 33.949497, 25.422792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173111, 0.136640, -0.975378,
		0.574962, 0.790043, 0.212721,
		0.799657, -0.597630, 0.058202,
		40.559456, 33.770206, 25.440252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585598, 34.564831, 24.995529>,  <39.999695, 34.188549, 25.399511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585598, 34.564831, 24.995529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679165, 34.176243, 25.011181>,  <40.735306, 33.943092, 25.020571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679165, 34.176243, 25.011181>,  <40.585598, 34.564831, 24.995529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679165, 34.176243, 25.011181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288544, 0.030935, -0.956967,
		0.928452, 0.235144, 0.287547,
		0.233921, -0.971468, 0.039128,
		40.749340, 33.884804, 25.022919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095573, 34.527367, 24.531279>,  <40.585598, 34.564831, 24.995529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095573, 34.527367, 24.531279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982273, 34.146313, 24.575562>,  <40.914291, 33.917679, 24.602131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982273, 34.146313, 24.575562>,  <41.095573, 34.527367, 24.531279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982273, 34.146313, 24.575562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100722, -0.144344, -0.984388,
		0.953741, -0.267682, 0.136838,
		-0.283255, -0.952634, 0.110706,
		40.897297, 33.860523, 24.608772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573307, 34.030411, 24.044508>,  <41.095573, 34.527367, 24.531279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573307, 34.030411, 24.044508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238083, 33.833538, 24.138670>,  <41.036949, 33.715416, 24.195168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238083, 33.833538, 24.138670>,  <41.573307, 34.030411, 24.044508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238083, 33.833538, 24.138670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169388, -0.175422, -0.969812,
		0.518616, -0.852635, 0.063645,
		-0.838060, -0.492179, 0.235403,
		40.986664, 33.685886, 24.209291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.314838, 34.681839, 25.812824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697651, 34.795078, 25.787725>,  <33.927338, 34.863022, 25.772667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697651, 34.795078, 25.787725>,  <33.314838, 34.681839, 25.812824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697651, 34.795078, 25.787725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133732, -0.238915, 0.961788,
		0.257294, -0.928856, -0.266510,
		0.957035, 0.283103, -0.062746,
		33.984760, 34.880009, 25.768902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756413, 34.135765, 26.097567>,  <33.314838, 34.681839, 25.812824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756413, 34.135765, 26.097567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.979374, 34.467731, 26.106894>,  <34.113152, 34.666912, 26.112490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.979374, 34.467731, 26.106894>,  <33.756413, 34.135765, 26.097567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979374, 34.467731, 26.106894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247212, -0.192721, 0.949603,
		0.792581, -0.523550, -0.312588,
		0.557406, 0.829912, 0.023319,
		34.146595, 34.716705, 26.113890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425514, 33.940697, 26.381762>,  <33.756413, 34.135765, 26.097567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425514, 33.940697, 26.381762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356049, 34.328358, 26.451723>,  <34.314369, 34.560955, 26.493700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356049, 34.328358, 26.451723>,  <34.425514, 33.940697, 26.381762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356049, 34.328358, 26.451723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183271, -0.142694, 0.972651,
		0.967602, 0.200965, -0.152837,
		-0.173660, 0.969150, 0.174902,
		34.303951, 34.619102, 26.504194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769737, 34.025925, 27.009005>,  <34.425514, 33.940697, 26.381762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769737, 34.025925, 27.009005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562588, 34.367813, 26.994827>,  <34.438297, 34.572945, 26.986320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562588, 34.367813, 26.994827>,  <34.769737, 34.025925, 27.009005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562588, 34.367813, 26.994827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127693, -0.036267, 0.991150,
		0.845872, 0.517819, 0.127924,
		-0.517876, 0.854721, -0.035445,
		34.407227, 34.624229, 26.984194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089310, 34.451931, 27.473534>,  <34.769737, 34.025925, 27.009005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089310, 34.451931, 27.473534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725414, 34.614758, 27.440842>,  <34.507076, 34.712456, 27.421227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725414, 34.614758, 27.440842>,  <35.089310, 34.451931, 27.473534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725414, 34.614758, 27.440842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121193, -0.072075, 0.990009,
		0.397110, 0.910550, 0.114903,
		-0.909734, 0.407068, -0.081730,
		34.452496, 34.736877, 27.416323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025158, 35.049892, 27.937393>,  <35.089310, 34.451931, 27.473534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025158, 35.049892, 27.937393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646172, 34.929218, 27.894896>,  <34.418777, 34.856815, 27.869396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.646172, 34.929218, 27.894896>,  <35.025158, 35.049892, 27.937393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646172, 34.929218, 27.894896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083295, -0.087986, 0.992633,
		-0.308807, 0.949340, 0.058235,
		-0.947470, -0.301681, -0.106246,
		34.361931, 34.838715, 27.863022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699730, 35.321899, 28.546236>,  <35.025158, 35.049892, 27.937393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699730, 35.321899, 28.546236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.429951, 35.054111, 28.421707>,  <34.268082, 34.893436, 28.346991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.429951, 35.054111, 28.421707>,  <34.699730, 35.321899, 28.546236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429951, 35.054111, 28.421707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229274, -0.210904, 0.950238,
		-0.701818, 0.712268, -0.011249,
		-0.674452, -0.669473, -0.311321,
		34.227615, 34.853268, 28.328310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034710, 35.414028, 28.941460>,  <34.699730, 35.321899, 28.546236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034710, 35.414028, 28.941460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051342, 35.043629, 28.791367>,  <34.061321, 34.821388, 28.701311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051342, 35.043629, 28.791367>,  <34.034710, 35.414028, 28.941460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051342, 35.043629, 28.791367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336722, -0.366574, 0.867319,
		-0.940686, 0.090285, -0.327046,
		0.041580, -0.925998, -0.375232,
		34.063816, 34.765831, 28.678797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510853, 35.114071, 29.144215>,  <34.034710, 35.414028, 28.941460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510853, 35.114071, 29.144215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.742744, 34.800907, 29.053915>,  <33.881878, 34.613007, 28.999735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.742744, 34.800907, 29.053915>,  <33.510853, 35.114071, 29.144215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742744, 34.800907, 29.053915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281263, -0.452311, 0.846349,
		-0.764726, -0.427158, -0.482422,
		0.579729, -0.782912, -0.225751,
		33.916664, 34.566032, 28.986191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081673, 34.620113, 29.288948>,  <33.510853, 35.114071, 29.144215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081673, 34.620113, 29.288948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454647, 34.475788, 29.296661>,  <33.678432, 34.389194, 29.301291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454647, 34.475788, 29.296661>,  <33.081673, 34.620113, 29.288948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454647, 34.475788, 29.296661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163343, -0.373314, 0.913212,
		-0.322296, -0.854665, -0.407029,
		0.932440, -0.360810, 0.019286,
		33.734379, 34.367546, 29.302446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041756, 33.845844, 29.478571>,  <33.081673, 34.620113, 29.288948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041756, 33.845844, 29.478571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409851, 33.977264, 29.563623>,  <33.630711, 34.056114, 29.614655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409851, 33.977264, 29.563623>,  <33.041756, 33.845844, 29.478571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409851, 33.977264, 29.563623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024578, -0.493735, 0.869265,
		0.390578, -0.805160, -0.446281,
		0.920241, 0.328548, 0.212631,
		33.685925, 34.075829, 29.627413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245075, 33.273518, 29.884140>,  <33.041756, 33.845844, 29.478571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245075, 33.273518, 29.884140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.544155, 33.535454, 29.928202>,  <33.723602, 33.692616, 29.954638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.544155, 33.535454, 29.928202>,  <33.245075, 33.273518, 29.884140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544155, 33.535454, 29.928202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203092, -0.383446, 0.900957,
		0.632217, -0.651274, -0.419695,
		0.747700, 0.654837, 0.110152,
		33.768467, 33.731903, 29.961246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929432, 32.870720, 30.127880>,  <33.245075, 33.273518, 29.884140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929432, 32.870720, 30.127880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.927532, 33.257637, 30.229334>,  <33.926392, 33.489788, 30.290207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.927532, 33.257637, 30.229334>,  <33.929432, 32.870720, 30.127880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927532, 33.257637, 30.229334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325994, -0.238285, 0.914849,
		0.945360, 0.087025, -0.314199,
		-0.004746, 0.967288, 0.253635,
		33.926109, 33.547825, 30.305424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659485, 33.060390, 30.472279>,  <33.929432, 32.870720, 30.127880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659485, 33.060390, 30.472279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.392094, 33.335182, 30.586260>,  <34.231659, 33.500057, 30.654648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.392094, 33.335182, 30.586260>,  <34.659485, 33.060390, 30.472279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392094, 33.335182, 30.586260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259040, -0.144086, 0.955059,
		0.697166, 0.712246, -0.081638,
		-0.668474, 0.686982, 0.284952,
		34.191551, 33.541275, 30.671745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342064, 33.076275, 30.239187>,  <34.659485, 33.060390, 30.472279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342064, 33.076275, 30.239187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603378, 32.776310, 30.280849>,  <35.760166, 32.596333, 30.305847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.603378, 32.776310, 30.280849>,  <35.342064, 33.076275, 30.239187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603378, 32.776310, 30.280849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218858, 0.055354, -0.974185,
		0.724785, 0.659220, 0.200286,
		0.653289, -0.749910, 0.104156,
		35.799366, 32.551338, 30.312096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068069, 33.272495, 29.980282>,  <35.342064, 33.076275, 30.239187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068069, 33.272495, 29.980282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005379, 32.877907, 29.961063>,  <35.967766, 32.641151, 29.949533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005379, 32.877907, 29.961063>,  <36.068069, 33.272495, 29.980282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005379, 32.877907, 29.961063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147273, 0.024759, -0.988786,
		0.976600, -0.162042, 0.141401,
		-0.156724, -0.986473, -0.048044,
		35.958363, 32.581966, 29.946650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553368, 33.030472, 29.335497>,  <36.068069, 33.272495, 29.980282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553368, 33.030472, 29.335497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378120, 32.680771, 29.419151>,  <36.272972, 32.470951, 29.469343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378120, 32.680771, 29.419151>,  <36.553368, 33.030472, 29.335497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378120, 32.680771, 29.419151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014472, -0.225762, -0.974075,
		0.898800, -0.429788, 0.086259,
		-0.438119, -0.874251, 0.209135,
		36.246685, 32.418495, 29.481892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999226, 32.441330, 29.068674>,  <36.553368, 33.030472, 29.335497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999226, 32.441330, 29.068674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609318, 32.352524, 29.077894>,  <36.375374, 32.299240, 29.083426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609318, 32.352524, 29.077894>,  <36.999226, 32.441330, 29.068674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609318, 32.352524, 29.077894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031534, -0.239210, -0.970456,
		0.220968, -0.945245, 0.240176,
		-0.974771, -0.222013, 0.023050,
		36.316887, 32.285919, 29.084808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979118, 31.800982, 28.680758>,  <36.999226, 32.441330, 29.068674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979118, 31.800982, 28.680758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600456, 31.929874, 28.681433>,  <36.373257, 32.007210, 28.681837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600456, 31.929874, 28.681433>,  <36.979118, 31.800982, 28.680758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600456, 31.929874, 28.681433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063532, -0.181508, -0.981335,
		-0.315914, -0.929096, 0.192298,
		-0.946658, 0.322235, 0.001686,
		36.316460, 32.026543, 28.681938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755569, 31.463079, 28.046461>,  <36.979118, 31.800982, 28.680758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755569, 31.463079, 28.046461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480007, 31.729973, 28.159740>,  <36.314671, 31.890110, 28.227707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480007, 31.729973, 28.159740>,  <36.755569, 31.463079, 28.046461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480007, 31.729973, 28.159740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369584, 0.012755, -0.929110,
		-0.623547, -0.744738, 0.237812,
		-0.688910, 0.667235, 0.283197,
		36.273335, 31.930143, 28.244699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152081, 31.215544, 27.778881>,  <36.755569, 31.463079, 28.046461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152081, 31.215544, 27.778881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171749, 31.613287, 27.816486>,  <36.183552, 31.851933, 27.839050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171749, 31.613287, 27.816486>,  <36.152081, 31.215544, 27.778881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171749, 31.613287, 27.816486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302802, 0.104539, -0.947303,
		-0.951784, 0.018116, 0.306233,
		0.049175, 0.994356, 0.094013,
		36.186501, 31.911594, 27.844690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536205, 31.381500, 27.478964>,  <36.152081, 31.215544, 27.778881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536205, 31.381500, 27.478964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766384, 31.707453, 27.451172>,  <35.904491, 31.903025, 27.434498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766384, 31.707453, 27.451172>,  <35.536205, 31.381500, 27.478964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766384, 31.707453, 27.451172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154783, 0.025098, -0.987630,
		-0.803055, 0.579087, 0.140572,
		0.575451, 0.814879, -0.069478,
		35.939018, 31.951916, 27.430328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152901, 31.881737, 27.261080>,  <35.536205, 31.381500, 27.478964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152901, 31.881737, 27.261080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523037, 32.007168, 27.175835>,  <35.745117, 32.082428, 27.124687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.523037, 32.007168, 27.175835>,  <35.152901, 31.881737, 27.261080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523037, 32.007168, 27.175835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286621, 0.210620, -0.934606,
		-0.248186, 0.925909, 0.284772,
		0.925339, 0.313578, -0.213112,
		35.800640, 32.101242, 27.111900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019939, 32.547344, 26.873739>,  <35.152901, 31.881737, 27.261080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019939, 32.547344, 26.873739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.401394, 32.436176, 26.827532>,  <35.630264, 32.369476, 26.799809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.401394, 32.436176, 26.827532>,  <35.019939, 32.547344, 26.873739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401394, 32.436176, 26.827532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009100, 0.357020, -0.934052,
		0.300830, 0.891795, 0.337938,
		0.953634, -0.277916, -0.115518,
		35.687485, 32.352802, 26.792877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358791, 33.114796, 26.668753>,  <35.019939, 32.547344, 26.873739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358791, 33.114796, 26.668753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559750, 32.786999, 26.558458>,  <35.680325, 32.590321, 26.492281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559750, 32.786999, 26.558458>,  <35.358791, 33.114796, 26.668753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559750, 32.786999, 26.558458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105873, 0.258200, -0.960273,
		0.858133, 0.511626, 0.042955,
		0.502392, -0.819494, -0.275737,
		35.710468, 32.541149, 26.475737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078659, 33.352798, 26.243660>,  <35.358791, 33.114796, 26.668753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078659, 33.352798, 26.243660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995041, 32.973827, 26.146759>,  <35.944870, 32.746445, 26.088619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995041, 32.973827, 26.146759>,  <36.078659, 33.352798, 26.243660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995041, 32.973827, 26.146759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136111, 0.273502, -0.952192,
		0.968386, -0.166082, -0.186130,
		-0.209049, -0.947425, -0.242250,
		35.932327, 32.689602, 26.074083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573410, 33.099022, 25.725401>,  <36.078659, 33.352798, 26.243660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573410, 33.099022, 25.725401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.246162, 32.872581, 25.684980>,  <36.049812, 32.736717, 25.660728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.246162, 32.872581, 25.684980>,  <36.573410, 33.099022, 25.725401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246162, 32.872581, 25.684980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124017, -0.002103, -0.992278,
		0.561519, -0.824332, 0.071927,
		-0.818117, -0.566103, -0.101051,
		36.000729, 32.702751, 25.654665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703873, 32.428219, 25.370571>,  <36.573410, 33.099022, 25.725401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703873, 32.428219, 25.370571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321152, 32.520367, 25.299622>,  <36.091518, 32.575657, 25.257051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321152, 32.520367, 25.299622>,  <36.703873, 32.428219, 25.370571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321152, 32.520367, 25.299622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150239, -0.130551, -0.979992,
		-0.248919, -0.964306, 0.090301,
		-0.956801, 0.230372, -0.177373,
		36.034111, 32.589478, 25.246410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755859, 31.684383, 25.104437>,  <36.703873, 32.428219, 25.370571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755859, 31.684383, 25.104437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116379, 31.536629, 25.013910>,  <37.332691, 31.447975, 24.959595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116379, 31.536629, 25.013910>,  <36.755859, 31.684383, 25.104437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116379, 31.536629, 25.013910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199130, -0.110693, 0.973701,
		-0.384726, -0.922659, -0.026211,
		0.901295, -0.369389, -0.226315,
		37.386768, 31.425812, 24.946016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759117, 31.083570, 25.430798>,  <36.755859, 31.684383, 25.104437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759117, 31.083570, 25.430798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147465, 31.163071, 25.377258>,  <37.380474, 31.210772, 25.345135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.147465, 31.163071, 25.377258>,  <36.759117, 31.083570, 25.430798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147465, 31.163071, 25.377258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210611, -0.441385, 0.872251,
		0.114281, -0.875030, -0.470386,
		0.970867, 0.198750, -0.133849,
		37.438725, 31.222696, 25.337103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025810, 30.642115, 25.831915>,  <36.759117, 31.083570, 25.430798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025810, 30.642115, 25.831915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335194, 30.884382, 25.757158>,  <37.520824, 31.029743, 25.712305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335194, 30.884382, 25.757158>,  <37.025810, 30.642115, 25.831915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335194, 30.884382, 25.757158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357462, -0.173316, 0.917705,
		0.523437, -0.776610, -0.350557,
		0.773456, 0.605672, -0.186889,
		37.567230, 31.066084, 25.701092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448902, 30.432131, 26.374805>,  <37.025810, 30.642115, 25.831915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448902, 30.432131, 26.374805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627697, 30.764240, 26.241634>,  <37.734974, 30.963507, 26.161732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627697, 30.764240, 26.241634>,  <37.448902, 30.432131, 26.374805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627697, 30.764240, 26.241634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578943, 0.015213, 0.815226,
		0.681927, -0.557145, -0.473883,
		0.446990, 0.830276, -0.332930,
		37.761795, 31.013323, 26.141756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145329, 30.294735, 26.469444>,  <37.448902, 30.432131, 26.374805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145329, 30.294735, 26.469444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105251, 30.692318, 26.451494>,  <38.081207, 30.930868, 26.440723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105251, 30.692318, 26.451494>,  <38.145329, 30.294735, 26.469444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105251, 30.692318, 26.451494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592485, 0.095834, 0.799861,
		0.799327, 0.053550, -0.598505,
		-0.100190, 0.993956, -0.044875,
		38.075195, 30.990505, 26.438032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845001, 30.584419, 26.592321>,  <38.145329, 30.294735, 26.469444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845001, 30.584419, 26.592321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.585880, 30.876976, 26.677565>,  <38.430408, 31.052509, 26.728710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.585880, 30.876976, 26.677565>,  <38.845001, 30.584419, 26.592321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585880, 30.876976, 26.677565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433588, 0.123976, 0.892542,
		0.626377, 0.670595, -0.397435,
		-0.647807, 0.731391, 0.213106,
		38.391537, 31.096394, 26.741497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228653, 31.103140, 26.849047>,  <38.845001, 30.584419, 26.592321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228653, 31.103140, 26.849047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862110, 31.184258, 26.987123>,  <38.642185, 31.232929, 27.069969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862110, 31.184258, 26.987123>,  <39.228653, 31.103140, 26.849047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862110, 31.184258, 26.987123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377809, 0.152782, 0.913191,
		0.132453, 0.967229, -0.216622,
		-0.916360, 0.202796, 0.345191,
		38.587200, 31.245096, 27.090681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317707, 31.703220, 27.309881>,  <39.228653, 31.103140, 26.849047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317707, 31.703220, 27.309881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.994125, 31.495958, 27.420950>,  <38.799976, 31.371601, 27.487591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.994125, 31.495958, 27.420950>,  <39.317707, 31.703220, 27.309881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994125, 31.495958, 27.420950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295406, 0.050068, 0.954059,
		-0.508255, 0.853819, 0.112564,
		-0.808957, -0.518157, 0.277671,
		38.751438, 31.340511, 27.504251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993618, 32.080017, 27.818171>,  <39.317707, 31.703220, 27.309881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993618, 32.080017, 27.818171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.888512, 31.694727, 27.840635>,  <38.825447, 31.463554, 27.854115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.888512, 31.694727, 27.840635>,  <38.993618, 32.080017, 27.818171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888512, 31.694727, 27.840635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443858, -0.068993, 0.893437,
		-0.856704, 0.259696, 0.445664,
		-0.262769, -0.963223, 0.056161,
		38.809681, 31.405760, 27.857483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627140, 31.937111, 28.418697>,  <38.993618, 32.080017, 27.818171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627140, 31.937111, 28.418697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754719, 31.566759, 28.337681>,  <38.831264, 31.344547, 28.289072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754719, 31.566759, 28.337681>,  <38.627140, 31.937111, 28.418697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754719, 31.566759, 28.337681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185600, -0.148548, 0.971332,
		-0.929424, -0.347390, 0.124465,
		0.318942, -0.925880, -0.202539,
		38.850403, 31.288996, 28.276918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530434, 31.672813, 28.981867>,  <38.627140, 31.937111, 28.418697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530434, 31.672813, 28.981867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764008, 31.405865, 28.796984>,  <38.904152, 31.245695, 28.686054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764008, 31.405865, 28.796984>,  <38.530434, 31.672813, 28.981867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764008, 31.405865, 28.796984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251106, -0.392950, 0.884611,
		-0.771987, -0.632620, -0.061878,
		0.583937, -0.667370, -0.462207,
		38.939190, 31.205654, 28.658321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404366, 31.001310, 29.282362>,  <38.530434, 31.672813, 28.981867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404366, 31.001310, 29.282362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761055, 30.963093, 29.105412>,  <38.975071, 30.940163, 28.999241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761055, 30.963093, 29.105412>,  <38.404366, 31.001310, 29.282362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761055, 30.963093, 29.105412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376792, -0.384737, 0.842618,
		-0.250701, -0.918068, -0.307082,
		0.891727, -0.095539, -0.442375,
		39.028572, 30.934431, 28.972698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766060, 30.397421, 29.681849>,  <38.404366, 31.001310, 29.282362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766060, 30.397421, 29.681849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051193, 30.592710, 29.480452>,  <39.222275, 30.709885, 29.359613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051193, 30.592710, 29.480452>,  <38.766060, 30.397421, 29.681849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051193, 30.592710, 29.480452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657208, -0.214388, 0.722575,
		0.244837, -0.845975, -0.473689,
		0.712834, 0.488225, -0.503492,
		39.265045, 30.739178, 29.329405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423191, 29.952003, 29.632336>,  <38.766060, 30.397421, 29.681849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423191, 29.952003, 29.632336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.482544, 30.347157, 29.614151>,  <39.518158, 30.584249, 29.603241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.482544, 30.347157, 29.614151>,  <39.423191, 29.952003, 29.632336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482544, 30.347157, 29.614151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614424, -0.056075, 0.786981,
		0.774897, -0.144710, -0.615300,
		0.148386, 0.987884, -0.045461,
		39.527061, 30.643522, 29.600513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.679039, 33.356628, 23.632906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.290108, 33.355282, 23.726341>,  <41.056747, 33.354473, 23.782402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.290108, 33.355282, 23.726341>,  <41.679039, 33.356628, 23.632906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290108, 33.355282, 23.726341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211804, -0.409135, -0.887551,
		0.098553, -0.912468, 0.397102,
		-0.972330, -0.003363, 0.233586,
		40.998409, 33.354275, 23.796417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501514, 32.759777, 23.405045>,  <41.679039, 33.356628, 23.632906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501514, 32.759777, 23.405045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.201279, 33.024014, 23.411154>,  <41.021137, 33.182556, 23.414820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.201279, 33.024014, 23.411154>,  <41.501514, 32.759777, 23.405045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201279, 33.024014, 23.411154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174490, -0.175861, -0.968827,
		-0.637311, -0.729859, 0.247266,
		-0.750592, 0.660589, 0.015275,
		40.976101, 33.222191, 23.415737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875252, 32.436970, 23.177174>,  <41.501514, 32.759777, 23.405045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875252, 32.436970, 23.177174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820011, 32.826881, 23.107056>,  <40.786869, 33.060829, 23.064985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.820011, 32.826881, 23.107056>,  <40.875252, 32.436970, 23.177174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820011, 32.826881, 23.107056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178308, -0.198570, -0.963730,
		-0.974235, -0.101834, 0.201234,
		-0.138100, 0.974782, -0.175296,
		40.778580, 33.119316, 23.054466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265102, 32.382507, 22.751434>,  <40.875252, 32.436970, 23.177174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265102, 32.382507, 22.751434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411060, 32.750797, 22.696117>,  <40.498634, 32.971771, 22.662928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411060, 32.750797, 22.696117>,  <40.265102, 32.382507, 22.751434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411060, 32.750797, 22.696117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377698, 0.010623, -0.925868,
		-0.850996, 0.390078, 0.351630,
		0.364896, 0.920720, -0.138292,
		40.520531, 33.027012, 22.654631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684647, 32.760132, 22.448872>,  <40.265102, 32.382507, 22.751434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684647, 32.760132, 22.448872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.998344, 32.996387, 22.372866>,  <40.186562, 33.138142, 22.327261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.998344, 32.996387, 22.372866>,  <39.684647, 32.760132, 22.448872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998344, 32.996387, 22.372866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335939, 0.146736, -0.930384,
		-0.521643, 0.793479, 0.313496,
		0.784241, 0.590644, -0.190017,
		40.233616, 33.173580, 22.315861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406754, 33.461330, 22.251297>,  <39.684647, 32.760132, 22.448872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406754, 33.461330, 22.251297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782642, 33.429615, 22.118250>,  <40.008175, 33.410587, 22.038422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782642, 33.429615, 22.118250>,  <39.406754, 33.461330, 22.251297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782642, 33.429615, 22.118250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317649, 0.157659, -0.935010,
		0.126572, 0.984306, 0.122971,
		0.939723, -0.079284, -0.332618,
		40.064560, 33.405830, 22.018465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505856, 34.069565, 21.791582>,  <39.406754, 33.461330, 22.251297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505856, 34.069565, 21.791582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751038, 33.766800, 21.700922>,  <39.898148, 33.585140, 21.646526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751038, 33.766800, 21.700922>,  <39.505856, 34.069565, 21.791582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751038, 33.766800, 21.700922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269250, 0.069585, -0.960553,
		0.742823, 0.649805, -0.161145,
		0.612959, -0.756909, -0.226650,
		39.934925, 33.539726, 21.632927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718094, 34.305870, 21.243280>,  <39.505856, 34.069565, 21.791582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718094, 34.305870, 21.243280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818764, 33.922604, 21.188774>,  <39.879166, 33.692642, 21.156071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818764, 33.922604, 21.188774>,  <39.718094, 34.305870, 21.243280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818764, 33.922604, 21.188774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328294, 0.047928, -0.943359,
		0.910429, 0.282158, -0.302499,
		0.251678, -0.958170, -0.136266,
		39.894268, 33.635151, 21.147894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038696, 34.266136, 20.624380>,  <39.718094, 34.305870, 21.243280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038696, 34.266136, 20.624380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927887, 33.889912, 20.702980>,  <39.861401, 33.664177, 20.750141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927887, 33.889912, 20.702980>,  <40.038696, 34.266136, 20.624380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927887, 33.889912, 20.702980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361309, -0.087531, -0.928329,
		0.890346, -0.328163, -0.315584,
		-0.277020, -0.940557, 0.196501,
		39.844780, 33.607746, 20.761930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187973, 33.905743, 19.998444>,  <40.038696, 34.266136, 20.624380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187973, 33.905743, 19.998444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.918900, 33.683880, 20.194342>,  <39.757454, 33.550762, 20.311880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.918900, 33.683880, 20.194342>,  <40.187973, 33.905743, 19.998444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918900, 33.683880, 20.194342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561745, -0.047976, -0.825918,
		0.481600, -0.830692, -0.279306,
		-0.672684, -0.554661, 0.489743,
		39.717094, 33.517483, 20.341265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956364, 33.417980, 19.528791>,  <40.187973, 33.905743, 19.998444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956364, 33.417980, 19.528791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666492, 33.395111, 19.803478>,  <39.492569, 33.381390, 19.968290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666492, 33.395111, 19.803478>,  <39.956364, 33.417980, 19.528791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666492, 33.395111, 19.803478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687574, -0.006114, -0.726089,
		0.045716, -0.998345, -0.034884,
		-0.724674, -0.057180, 0.686715,
		39.449089, 33.377960, 20.009493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577690, 32.785168, 19.456680>,  <39.956364, 33.417980, 19.528791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577690, 32.785168, 19.456680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.321766, 33.018326, 19.657026>,  <39.168209, 33.158222, 19.777233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.321766, 33.018326, 19.657026>,  <39.577690, 32.785168, 19.456680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321766, 33.018326, 19.657026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451514, 0.242284, -0.858739,
		-0.621910, -0.775582, 0.108170,
		-0.639815, 0.582899, 0.500865,
		39.129822, 33.193195, 19.807285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884300, 32.564579, 19.205381>,  <39.577690, 32.785168, 19.456680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884300, 32.564579, 19.205381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871933, 32.930584, 19.366278>,  <38.864513, 33.150188, 19.462816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871933, 32.930584, 19.366278>,  <38.884300, 32.564579, 19.205381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871933, 32.930584, 19.366278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296754, 0.375885, -0.877865,
		-0.954453, -0.146506, 0.259913,
		-0.030915, 0.915012, 0.402241,
		38.862659, 33.205086, 19.486950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218876, 32.980797, 19.133806>,  <38.884300, 32.564579, 19.205381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218876, 32.980797, 19.133806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.528297, 33.231831, 19.169031>,  <38.713951, 33.382450, 19.190166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.528297, 33.231831, 19.169031>,  <38.218876, 32.980797, 19.133806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528297, 33.231831, 19.169031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228632, 0.405968, -0.884826,
		-0.591056, 0.664323, 0.457523,
		0.773550, 0.627587, 0.088064,
		38.760361, 33.420105, 19.195450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946278, 32.376259, 19.332340>,  <38.218876, 32.980797, 19.133806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946278, 32.376259, 19.332340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569340, 32.437778, 19.451225>,  <37.343178, 32.474689, 19.522556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.569340, 32.437778, 19.451225>,  <37.946278, 32.376259, 19.332340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569340, 32.437778, 19.451225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190957, -0.482227, 0.854981,
		0.274820, 0.862440, 0.425054,
		-0.942343, 0.153799, 0.297214,
		37.286636, 32.483917, 19.540390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951767, 32.702541, 19.983059>,  <37.946278, 32.376259, 19.332340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951767, 32.702541, 19.983059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624664, 32.483631, 19.911777>,  <37.428402, 32.352283, 19.869009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.624664, 32.483631, 19.911777>,  <37.951767, 32.702541, 19.983059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624664, 32.483631, 19.911777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133890, -0.482009, 0.865876,
		-0.559773, 0.684217, 0.467442,
		-0.817757, -0.547280, -0.178206,
		37.379337, 32.319447, 19.858316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593449, 32.711460, 20.614906>,  <37.951767, 32.702541, 19.983059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593449, 32.711460, 20.614906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386696, 32.414177, 20.444973>,  <37.262646, 32.235809, 20.343012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386696, 32.414177, 20.444973>,  <37.593449, 32.711460, 20.614906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386696, 32.414177, 20.444973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008527, -0.500714, 0.865571,
		-0.856016, 0.443772, 0.265146,
		-0.516878, -0.743203, -0.424835,
		37.231632, 32.191216, 20.317522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979279, 32.563755, 20.994406>,  <37.593449, 32.711460, 20.614906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979279, 32.563755, 20.994406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069042, 32.232273, 20.789314>,  <37.122902, 32.033382, 20.666260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.069042, 32.232273, 20.789314>,  <36.979279, 32.563755, 20.994406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069042, 32.232273, 20.789314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067363, -0.538080, 0.840198,
		-0.972163, -0.154012, -0.176576,
		0.224412, -0.828704, -0.512726,
		37.136368, 31.983662, 20.635496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508053, 32.115269, 21.321594>,  <36.979279, 32.563755, 20.994406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508053, 32.115269, 21.321594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794239, 31.919985, 21.121693>,  <36.965950, 31.802814, 21.001751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.794239, 31.919985, 21.121693>,  <36.508053, 32.115269, 21.321594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794239, 31.919985, 21.121693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122293, -0.616759, 0.777594,
		-0.687857, -0.617462, -0.381568,
		0.715470, -0.488210, -0.499753,
		37.008881, 31.773521, 20.971767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391506, 31.436165, 21.622261>,  <36.508053, 32.115269, 21.321594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391506, 31.436165, 21.622261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.759655, 31.477867, 21.471508>,  <36.980545, 31.502890, 21.381056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.759655, 31.477867, 21.471508>,  <36.391506, 31.436165, 21.622261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759655, 31.477867, 21.471508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367050, -0.562714, 0.740693,
		-0.134855, -0.820051, -0.556176,
		0.920374, 0.104258, -0.376885,
		37.035767, 31.509144, 21.358442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654690, 30.825602, 21.840696>,  <36.391506, 31.436165, 21.622261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654690, 30.825602, 21.840696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966503, 31.066622, 21.772268>,  <37.153591, 31.211233, 21.731211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966503, 31.066622, 21.772268>,  <36.654690, 30.825602, 21.840696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966503, 31.066622, 21.772268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398706, -0.266697, 0.877443,
		0.483079, -0.752201, -0.448139,
		0.779531, 0.602550, -0.171071,
		37.200363, 31.247387, 21.720947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224014, 30.491270, 22.128435>,  <36.654690, 30.825602, 21.840696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224014, 30.491270, 22.128435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.351757, 30.865986, 22.071255>,  <37.428402, 31.090816, 22.036947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.351757, 30.865986, 22.071255>,  <37.224014, 30.491270, 22.128435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351757, 30.865986, 22.071255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483210, -0.031216, 0.874948,
		0.815181, -0.348494, -0.462636,
		0.319356, 0.936791, -0.142949,
		37.447563, 31.147022, 22.028370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965076, 30.544901, 22.390175>,  <37.224014, 30.491270, 22.128435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965076, 30.544901, 22.390175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806641, 30.910925, 22.420588>,  <37.711578, 31.130539, 22.438835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806641, 30.910925, 22.420588>,  <37.965076, 30.544901, 22.390175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806641, 30.910925, 22.420588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317492, 0.058787, 0.946437,
		0.861576, 0.399011, -0.313809,
		-0.396087, 0.915059, 0.076033,
		37.687813, 31.185442, 22.443398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474613, 31.031534, 22.670237>,  <37.965076, 30.544901, 22.390175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474613, 31.031534, 22.670237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115234, 31.199013, 22.723133>,  <37.899609, 31.299500, 22.754871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115234, 31.199013, 22.723133>,  <38.474613, 31.031534, 22.670237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115234, 31.199013, 22.723133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208734, 0.142304, 0.967564,
		0.386297, 0.896908, -0.215248,
		-0.898446, 0.418696, 0.132243,
		37.845699, 31.324621, 22.762806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631256, 31.611462, 23.210606>,  <38.474613, 31.031534, 22.670237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631256, 31.611462, 23.210606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.234489, 31.595940, 23.258932>,  <37.996429, 31.586626, 23.287928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.234489, 31.595940, 23.258932>,  <38.631256, 31.611462, 23.210606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234489, 31.595940, 23.258932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111619, 0.186107, 0.976169,
		-0.060366, 0.981763, -0.180271,
		-0.991916, -0.038806, 0.120818,
		37.936916, 31.584297, 23.295177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318916, 32.273075, 23.650202>,  <38.631256, 31.611462, 23.210606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318916, 32.273075, 23.650202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053951, 31.973845, 23.666155>,  <37.894974, 31.794306, 23.675728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053951, 31.973845, 23.666155>,  <38.318916, 32.273075, 23.650202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053951, 31.973845, 23.666155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048376, 0.010414, 0.998775,
		-0.747577, 0.663529, 0.029291,
		-0.662411, -0.748078, 0.039884,
		37.855228, 31.749420, 23.678120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740402, 32.445530, 24.098536>,  <38.318916, 32.273075, 23.650202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740402, 32.445530, 24.098536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730125, 32.045700, 24.092920>,  <37.723961, 31.805803, 24.089552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.730125, 32.045700, 24.092920>,  <37.740402, 32.445530, 24.098536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730125, 32.045700, 24.092920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064139, -0.015662, 0.997818,
		-0.997610, 0.024733, 0.064514,
		-0.025690, -0.999571, -0.014038,
		37.722420, 31.745829, 24.088709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410858, 32.349331, 24.659744>,  <37.740402, 32.445530, 24.098536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410858, 32.349331, 24.659744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555489, 31.983025, 24.589729>,  <37.642265, 31.763241, 24.547720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.555489, 31.983025, 24.589729>,  <37.410858, 32.349331, 24.659744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555489, 31.983025, 24.589729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058976, -0.164899, 0.984546,
		-0.930476, -0.366310, -0.005616,
		0.361575, -0.915765, -0.175038,
		37.663960, 31.708296, 24.537218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647762, 32.220760, 24.612200>,  <37.410858, 32.349331, 24.659744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647762, 32.220760, 24.612200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296268, 32.386646, 24.706713>,  <36.085373, 32.486179, 24.763420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.296268, 32.386646, 24.706713>,  <36.647762, 32.220760, 24.612200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296268, 32.386646, 24.706713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107748, 0.309899, -0.944645,
		-0.464984, -0.855554, -0.227635,
		-0.878738, 0.414718, 0.236282,
		36.032646, 32.511063, 24.777597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223969, 32.103573, 24.053539>,  <36.647762, 32.220760, 24.612200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223969, 32.103573, 24.053539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027992, 32.396751, 24.242323>,  <35.910408, 32.572659, 24.355593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027992, 32.396751, 24.242323>,  <36.223969, 32.103573, 24.053539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027992, 32.396751, 24.242323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366800, 0.317809, -0.874331,
		-0.790833, -0.601483, 0.113139,
		-0.489939, 0.732950, 0.471958,
		35.881012, 32.616634, 24.383911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568424, 31.954292, 23.906008>,  <36.223969, 32.103573, 24.053539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568424, 31.954292, 23.906008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619755, 32.338654, 24.004145>,  <35.650555, 32.569271, 24.063026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619755, 32.338654, 24.004145>,  <35.568424, 31.954292, 23.906008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619755, 32.338654, 24.004145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275199, 0.272176, -0.922055,
		-0.952784, 0.050809, 0.299369,
		0.128330, 0.960905, 0.245343,
		35.658253, 32.626926, 24.077747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957916, 32.312469, 23.682007>,  <35.568424, 31.954292, 23.906008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957916, 32.312469, 23.682007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232086, 32.603188, 23.699734>,  <35.396587, 32.777618, 23.710369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232086, 32.603188, 23.699734>,  <34.957916, 32.312469, 23.682007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232086, 32.603188, 23.699734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305687, 0.342456, -0.888414,
		-0.660873, 0.595391, 0.456899,
		0.685422, 0.726796, 0.044317,
		35.437714, 32.821228, 23.713028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567444, 32.911964, 23.508190>,  <34.957916, 32.312469, 23.682007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567444, 32.911964, 23.508190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951111, 33.010792, 23.453123>,  <35.181313, 33.070087, 23.420084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951111, 33.010792, 23.453123>,  <34.567444, 32.911964, 23.508190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951111, 33.010792, 23.453123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216585, 0.328595, -0.919302,
		-0.181890, 0.911584, 0.368689,
		0.959170, 0.247064, -0.137667,
		35.238861, 33.084911, 23.411823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539265, 33.628807, 23.225548>,  <34.567444, 32.911964, 23.508190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539265, 33.628807, 23.225548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918015, 33.523067, 23.152277>,  <35.145264, 33.459625, 23.108315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.918015, 33.523067, 23.152277>,  <34.539265, 33.628807, 23.225548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918015, 33.523067, 23.152277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009293, 0.546830, -0.837192,
		0.321478, 0.794415, 0.515321,
		0.946871, -0.264350, -0.183176,
		35.202076, 33.443764, 23.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958767, 34.260944, 22.972479>,  <34.539265, 33.628807, 23.225548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958767, 34.260944, 22.972479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162323, 33.947578, 22.829765>,  <35.284458, 33.759560, 22.744137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162323, 33.947578, 22.829765>,  <34.958767, 34.260944, 22.972479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162323, 33.947578, 22.829765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049648, 0.440485, -0.896386,
		0.859399, 0.438448, 0.263053,
		0.508890, -0.783413, -0.356785,
		35.314991, 33.712555, 22.722731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148266, 34.978748, 22.985615>,  <34.958767, 34.260944, 22.972479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148266, 34.978748, 22.985615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868172, 35.263992, 22.999197>,  <34.700115, 35.435139, 23.007347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868172, 35.263992, 22.999197>,  <35.148266, 34.978748, 22.985615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868172, 35.263992, 22.999197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168427, -0.211234, 0.962815,
		0.693763, 0.668475, 0.268020,
		-0.700233, 0.713107, 0.033957,
		34.658100, 35.477924, 23.009384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386921, 35.312191, 23.545155>,  <35.148266, 34.978748, 22.985615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386921, 35.312191, 23.545155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003517, 35.419407, 23.506363>,  <34.773476, 35.483738, 23.483088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003517, 35.419407, 23.506363>,  <35.386921, 35.312191, 23.545155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003517, 35.419407, 23.506363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178763, -0.300251, 0.936960,
		0.222024, 0.915426, 0.335710,
		-0.958514, 0.268040, -0.096981,
		34.715961, 35.499821, 23.477268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260292, 35.623070, 24.139641>,  <35.386921, 35.312191, 23.545155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260292, 35.623070, 24.139641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886852, 35.557011, 24.012445>,  <34.662788, 35.517376, 23.936129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886852, 35.557011, 24.012445>,  <35.260292, 35.623070, 24.139641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886852, 35.557011, 24.012445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264697, -0.280271, 0.922705,
		-0.241510, 0.945607, 0.217946,
		-0.933600, -0.165152, -0.317987,
		34.606773, 35.507465, 23.917049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790863, 36.134407, 24.496946>,  <35.260292, 35.623070, 24.139641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790863, 36.134407, 24.496946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555367, 35.834763, 24.375483>,  <34.414066, 35.654976, 24.302605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555367, 35.834763, 24.375483>,  <34.790863, 36.134407, 24.496946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555367, 35.834763, 24.375483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214214, -0.217642, 0.952231,
		-0.779418, 0.625669, -0.032335,
		-0.588744, -0.749113, -0.303661,
		34.378742, 35.610027, 24.284384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229946, 36.292099, 24.901033>,  <34.790863, 36.134407, 24.496946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229946, 36.292099, 24.901033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214165, 35.908226, 24.789711>,  <34.204697, 35.677902, 24.722918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214165, 35.908226, 24.789711>,  <34.229946, 36.292099, 24.901033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214165, 35.908226, 24.789711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193888, -0.265878, 0.944307,
		-0.980230, 0.091217, -0.175581,
		-0.039453, -0.959682, -0.278307,
		34.202328, 35.620323, 24.706219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622349, 36.010353, 25.175043>,  <34.229946, 36.292099, 24.901033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622349, 36.010353, 25.175043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855289, 35.690556, 25.116165>,  <33.995056, 35.498676, 25.080837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855289, 35.690556, 25.116165>,  <33.622349, 36.010353, 25.175043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855289, 35.690556, 25.116165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229232, -0.335218, 0.913828,
		-0.779945, -0.498431, -0.378486,
		0.582355, -0.799497, -0.147196,
		34.029995, 35.450706, 25.072006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292915, 35.385151, 25.518211>,  <33.622349, 36.010353, 25.175043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292915, 35.385151, 25.518211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670712, 35.260040, 25.478003>,  <33.897388, 35.184975, 25.453878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670712, 35.260040, 25.478003>,  <33.292915, 35.385151, 25.518211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670712, 35.260040, 25.478003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073798, -0.500134, 0.862798,
		-0.320136, -0.807488, -0.495455,
		0.944493, -0.312776, -0.100520,
		33.954060, 35.166206, 25.447847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.632053, 35.738438, 20.284449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.673050, 35.342838, 20.327129>,  <37.697647, 35.105480, 20.352737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.673050, 35.342838, 20.327129>,  <37.632053, 35.738438, 20.284449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673050, 35.342838, 20.327129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545100, 0.145564, 0.825637,
		-0.832083, -0.026456, 0.554020,
		0.102488, -0.988995, 0.106700,
		37.703796, 35.046139, 20.359138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511158, 35.543045, 20.935572>,  <37.632053, 35.738438, 20.284449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511158, 35.543045, 20.935572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765316, 35.256241, 20.820906>,  <37.917809, 35.084160, 20.752106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765316, 35.256241, 20.820906>,  <37.511158, 35.543045, 20.935572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765316, 35.256241, 20.820906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584688, 0.204234, 0.785130,
		-0.504398, -0.666474, 0.548994,
		0.635392, -0.717008, -0.286664,
		37.955933, 35.041138, 20.734907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538090, 34.992996, 21.320629>,  <37.511158, 35.543045, 20.935572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538090, 34.992996, 21.320629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912437, 35.029167, 21.184412>,  <38.137047, 35.050869, 21.102682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.912437, 35.029167, 21.184412>,  <37.538090, 34.992996, 21.320629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912437, 35.029167, 21.184412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307694, 0.261160, 0.914943,
		0.171672, -0.961051, 0.216588,
		0.935870, 0.090427, -0.340544,
		38.193199, 35.056297, 21.082249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864487, 34.589233, 21.833622>,  <37.538090, 34.992996, 21.320629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864487, 34.589233, 21.833622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.153126, 34.811176, 21.668003>,  <38.326309, 34.944344, 21.568632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.153126, 34.811176, 21.668003>,  <37.864487, 34.589233, 21.833622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153126, 34.811176, 21.668003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429706, 0.109962, 0.896248,
		0.542820, -0.824646, -0.159078,
		0.721594, 0.554859, -0.414045,
		38.369606, 34.977634, 21.543789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388000, 34.340767, 22.177795>,  <37.864487, 34.589233, 21.833622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388000, 34.340767, 22.177795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522312, 34.677753, 22.009272>,  <38.602901, 34.879944, 21.908157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522312, 34.677753, 22.009272>,  <38.388000, 34.340767, 22.177795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522312, 34.677753, 22.009272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448440, 0.250360, 0.858033,
		0.828343, -0.477044, -0.293729,
		0.335782, 0.842466, -0.421310,
		38.623047, 34.930492, 21.882879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045258, 34.309284, 22.329666>,  <38.388000, 34.340767, 22.177795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045258, 34.309284, 22.329666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932423, 34.686024, 22.256620>,  <38.864719, 34.912067, 22.212793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932423, 34.686024, 22.256620>,  <39.045258, 34.309284, 22.329666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932423, 34.686024, 22.256620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343391, 0.276858, 0.897459,
		0.895827, 0.190458, -0.401521,
		-0.282092, 0.941847, -0.182616,
		38.847794, 34.968578, 22.201836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641994, 34.718311, 22.669012>,  <39.045258, 34.309284, 22.329666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641994, 34.718311, 22.669012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.352119, 34.991085, 22.629431>,  <39.178196, 35.154751, 22.605682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.352119, 34.991085, 22.629431>,  <39.641994, 34.718311, 22.669012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352119, 34.991085, 22.629431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269851, 0.412987, 0.869841,
		0.634040, 0.603661, -0.483307,
		-0.724689, 0.681935, -0.098952,
		39.134712, 35.195667, 22.599745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907616, 35.527088, 22.876747>,  <39.641994, 34.718311, 22.669012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907616, 35.527088, 22.876747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511753, 35.508301, 22.930979>,  <39.274235, 35.497028, 22.963518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511753, 35.508301, 22.930979>,  <39.907616, 35.527088, 22.876747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511753, 35.508301, 22.930979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093327, 0.507023, 0.856865,
		-0.108984, 0.860652, -0.497394,
		-0.989653, -0.046964, 0.135579,
		39.214859, 35.494213, 22.971653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662819, 36.274467, 22.891376>,  <39.907616, 35.527088, 22.876747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662819, 36.274467, 22.891376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394154, 36.045147, 23.079071>,  <39.232952, 35.907555, 23.191689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394154, 36.045147, 23.079071>,  <39.662819, 36.274467, 22.891376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394154, 36.045147, 23.079071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112445, 0.547148, 0.829449,
		-0.732270, 0.609877, -0.303036,
		-0.671667, -0.573306, 0.469238,
		39.192654, 35.873154, 23.219843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324860, 36.707680, 23.353149>,  <39.662819, 36.274467, 22.891376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324860, 36.707680, 23.353149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226768, 36.348492, 23.499308>,  <39.167912, 36.132980, 23.587004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.226768, 36.348492, 23.499308>,  <39.324860, 36.707680, 23.353149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226768, 36.348492, 23.499308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318645, 0.281306, 0.905170,
		-0.915602, 0.338408, 0.217147,
		-0.245231, -0.897968, 0.365397,
		39.153198, 36.079102, 23.608927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076992, 36.825298, 23.916321>,  <39.324860, 36.707680, 23.353149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076992, 36.825298, 23.916321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.151619, 36.438534, 23.985914>,  <39.196396, 36.206474, 24.027670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.151619, 36.438534, 23.985914>,  <39.076992, 36.825298, 23.916321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151619, 36.438534, 23.985914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334530, 0.229036, 0.914129,
		-0.923732, -0.112345, 0.366193,
		0.186570, -0.966913, 0.173985,
		39.207588, 36.148460, 24.038111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697540, 36.648155, 24.428074>,  <39.076992, 36.825298, 23.916321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697540, 36.648155, 24.428074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003220, 36.391823, 24.457285>,  <39.186626, 36.238022, 24.474812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003220, 36.391823, 24.457285>,  <38.697540, 36.648155, 24.428074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003220, 36.391823, 24.457285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094940, 0.223754, 0.970011,
		-0.637953, -0.734349, 0.231834,
		0.764200, -0.640832, 0.073026,
		39.232479, 36.199574, 24.479193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026218, 36.262089, 24.326946>,  <38.697540, 36.648155, 24.428074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026218, 36.262089, 24.326946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.729374, 36.525501, 24.376917>,  <37.551266, 36.683548, 24.406898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.729374, 36.525501, 24.376917>,  <38.026218, 36.262089, 24.326946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729374, 36.525501, 24.376917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066936, 0.112639, -0.991379,
		-0.666926, -0.744076, -0.039511,
		-0.742111, 0.658532, 0.124927,
		37.506741, 36.723061, 24.414394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456108, 36.019566, 23.846685>,  <38.026218, 36.262089, 24.326946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456108, 36.019566, 23.846685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422485, 36.411526, 23.919052>,  <37.402313, 36.646702, 23.962473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422485, 36.411526, 23.919052>,  <37.456108, 36.019566, 23.846685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422485, 36.411526, 23.919052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204751, 0.160700, -0.965532,
		-0.975198, -0.118202, 0.187128,
		-0.084057, 0.979900, 0.180916,
		37.397266, 36.705494, 23.973328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826687, 36.184635, 23.550213>,  <37.456108, 36.019566, 23.846685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826687, 36.184635, 23.550213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.000401, 36.541431, 23.600405>,  <37.104630, 36.755508, 23.630520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.000401, 36.541431, 23.600405>,  <36.826687, 36.184635, 23.550213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000401, 36.541431, 23.600405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333088, 0.288453, -0.897690,
		-0.836928, 0.348057, 0.422383,
		0.434285, 0.891993, 0.125480,
		37.130688, 36.809029, 23.638048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408798, 36.602459, 23.346718>,  <36.826687, 36.184635, 23.550213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408798, 36.602459, 23.346718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.719303, 36.854008, 23.329155>,  <36.905609, 37.004936, 23.318617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.719303, 36.854008, 23.329155>,  <36.408798, 36.602459, 23.346718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719303, 36.854008, 23.329155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302607, 0.310622, -0.901079,
		-0.553027, 0.712764, 0.431427,
		0.776267, 0.628873, -0.043905,
		36.952183, 37.042671, 23.315983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166542, 37.322712, 23.093578>,  <36.408798, 36.602459, 23.346718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166542, 37.322712, 23.093578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.558998, 37.316544, 23.016500>,  <36.794472, 37.312843, 22.970255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.558998, 37.316544, 23.016500>,  <36.166542, 37.322712, 23.093578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558998, 37.316544, 23.016500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174461, 0.358697, -0.917006,
		0.083255, 0.933327, 0.349242,
		0.981138, -0.015417, -0.192693,
		36.853340, 37.311920, 22.958693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231796, 38.029072, 22.959490>,  <36.166542, 37.322712, 23.093578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231796, 38.029072, 22.959490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537292, 37.823677, 22.803009>,  <36.720589, 37.700439, 22.709120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.537292, 37.823677, 22.803009>,  <36.231796, 38.029072, 22.959490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537292, 37.823677, 22.803009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071168, 0.535348, -0.841628,
		0.641592, 0.670623, 0.372321,
		0.763737, -0.513485, -0.391202,
		36.766415, 37.669632, 22.685648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589893, 38.517864, 22.533815>,  <36.231796, 38.029072, 22.959490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589893, 38.517864, 22.533815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724361, 38.165268, 22.401169>,  <36.805042, 37.953709, 22.321581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.724361, 38.165268, 22.401169>,  <36.589893, 38.517864, 22.533815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724361, 38.165268, 22.401169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015012, 0.357077, -0.933954,
		0.941683, 0.308987, 0.133270,
		0.336167, -0.881489, -0.331615,
		36.825211, 37.900822, 22.301683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154224, 38.723156, 22.120230>,  <36.589893, 38.517864, 22.533815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154224, 38.723156, 22.120230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029415, 38.357067, 22.018236>,  <36.954529, 38.137413, 21.957041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029415, 38.357067, 22.018236>,  <37.154224, 38.723156, 22.120230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029415, 38.357067, 22.018236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005092, 0.266767, -0.963748,
		0.950060, -0.302012, -0.078578,
		-0.312025, -0.915218, -0.254982,
		36.935806, 38.082500, 21.941742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645142, 38.381752, 21.725018>,  <37.154224, 38.723156, 22.120230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645142, 38.381752, 21.725018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.284435, 38.233540, 21.635994>,  <37.068012, 38.144611, 21.582581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.284435, 38.233540, 21.635994>,  <37.645142, 38.381752, 21.725018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284435, 38.233540, 21.635994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161091, 0.189704, -0.968536,
		0.401092, -0.909242, -0.111378,
		-0.901762, -0.370530, -0.222559,
		37.013908, 38.122379, 21.569225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735031, 37.982796, 21.086744>,  <37.645142, 38.381752, 21.725018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735031, 37.982796, 21.086744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.335072, 37.986855, 21.082689>,  <37.095097, 37.989288, 21.080256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.335072, 37.986855, 21.082689>,  <37.735031, 37.982796, 21.086744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335072, 37.986855, 21.082689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011397, 0.132866, -0.991069,
		-0.008709, -0.991082, -0.132968,
		-0.999897, 0.010147, -0.010139,
		37.035103, 37.989899, 21.079647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567074, 37.608719, 20.542654>,  <37.735031, 37.982796, 21.086744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567074, 37.608719, 20.542654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.225910, 37.808384, 20.603821>,  <37.021210, 37.928181, 20.640520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.225910, 37.808384, 20.603821>,  <37.567074, 37.608719, 20.542654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225910, 37.808384, 20.603821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146244, 0.052736, -0.987842,
		-0.501155, -0.864904, 0.028020,
		-0.852911, 0.499159, 0.152916,
		36.970036, 37.958130, 20.649696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975037, 37.267433, 20.155029>,  <37.567074, 37.608719, 20.542654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975037, 37.267433, 20.155029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.835289, 37.634441, 20.231024>,  <36.751442, 37.854649, 20.276621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.835289, 37.634441, 20.231024>,  <36.975037, 37.267433, 20.155029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835289, 37.634441, 20.231024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312018, 0.077269, -0.946929,
		-0.883509, -0.390104, 0.259289,
		-0.349366, 0.917523, 0.189988,
		36.730480, 37.909698, 20.288019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253017, 37.237423, 19.995331>,  <36.975037, 37.267433, 20.155029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253017, 37.237423, 19.995331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.309479, 37.631931, 19.961035>,  <36.343353, 37.868637, 19.940456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.309479, 37.631931, 19.961035>,  <36.253017, 37.237423, 19.995331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309479, 37.631931, 19.961035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512893, -0.001227, -0.858452,
		-0.846769, 0.165148, 0.505676,
		0.141152, 0.986268, -0.085742,
		36.351826, 37.927811, 19.935312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500954, 37.164536, 20.146400>,  <36.253017, 37.237423, 19.995331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500954, 37.164536, 20.146400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.175991, 36.954746, 20.044481>,  <34.981014, 36.828873, 19.983330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.175991, 36.954746, 20.044481>,  <35.500954, 37.164536, 20.146400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175991, 36.954746, 20.044481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120132, -0.277054, 0.953315,
		-0.570583, 0.805088, 0.162074,
		-0.812406, -0.524475, -0.254799,
		34.932270, 36.797405, 19.968042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917294, 37.421543, 20.585272>,  <35.500954, 37.164536, 20.146400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917294, 37.421543, 20.585272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829166, 37.051079, 20.462835>,  <34.776291, 36.828800, 20.389374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829166, 37.051079, 20.462835>,  <34.917294, 37.421543, 20.585272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829166, 37.051079, 20.462835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169723, -0.272618, 0.947034,
		-0.960548, 0.260603, -0.097126,
		-0.220322, -0.926156, -0.306093,
		34.763069, 36.773232, 20.371008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318073, 37.346008, 20.930494>,  <34.917294, 37.421543, 20.585272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318073, 37.346008, 20.930494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.441254, 36.978977, 20.829924>,  <34.515160, 36.758759, 20.769581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.441254, 36.978977, 20.829924>,  <34.318073, 37.346008, 20.930494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441254, 36.978977, 20.829924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155226, -0.309185, 0.938248,
		-0.938655, -0.249903, -0.237645,
		0.307947, -0.917580, -0.251427,
		34.533638, 36.703705, 20.754496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816135, 36.913239, 21.156179>,  <34.318073, 37.346008, 20.930494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816135, 36.913239, 21.156179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.135944, 36.676052, 21.117895>,  <34.327827, 36.533741, 21.094925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.135944, 36.676052, 21.117895>,  <33.816135, 36.913239, 21.156179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135944, 36.676052, 21.117895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044622, -0.217546, 0.975030,
		-0.598982, -0.775283, -0.200391,
		0.799518, -0.592967, -0.095711,
		34.375801, 36.498161, 21.089182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556641, 36.295002, 21.437853>,  <33.816135, 36.913239, 21.156179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556641, 36.295002, 21.437853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.955597, 36.275345, 21.458986>,  <34.194973, 36.263550, 21.471666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.955597, 36.275345, 21.458986>,  <33.556641, 36.295002, 21.437853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955597, 36.275345, 21.458986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066143, -0.330022, 0.941653,
		-0.028841, -0.942693, -0.332412,
		0.997393, -0.049145, 0.052834,
		34.254814, 36.260601, 21.474836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728397, 35.590740, 21.647154>,  <33.556641, 36.295002, 21.437853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728397, 35.590740, 21.647154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.047401, 35.807755, 21.752697>,  <34.238804, 35.937965, 21.816023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.047401, 35.807755, 21.752697>,  <33.728397, 35.590740, 21.647154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047401, 35.807755, 21.752697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074512, -0.522588, 0.849323,
		0.598681, -0.657687, -0.457197,
		0.797515, 0.542540, 0.263858,
		34.286655, 35.970516, 21.831854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276581, 35.090115, 21.913837>,  <33.728397, 35.590740, 21.647154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276581, 35.090115, 21.913837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405350, 35.436569, 22.066769>,  <34.482609, 35.644444, 22.158527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405350, 35.436569, 22.066769>,  <34.276581, 35.090115, 21.913837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405350, 35.436569, 22.066769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018907, -0.397865, 0.917249,
		0.946578, -0.302509, -0.111704,
		0.321919, 0.866136, 0.382330,
		34.501926, 35.696411, 22.181467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766018, 34.932499, 22.389416>,  <34.276581, 35.090115, 21.913837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766018, 34.932499, 22.389416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.654606, 35.301247, 22.497177>,  <34.587757, 35.522495, 22.561834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.654606, 35.301247, 22.497177>,  <34.766018, 34.932499, 22.389416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654606, 35.301247, 22.497177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088371, -0.254714, 0.962970,
		0.956353, 0.292023, -0.010521,
		-0.278530, 0.921869, 0.269403,
		34.571049, 35.577808, 22.577997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463654, 34.544731, 22.515965>,  <34.766018, 34.932499, 22.389416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463654, 34.544731, 22.515965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.456902, 34.158367, 22.412630>,  <35.452850, 33.926548, 22.350630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.456902, 34.158367, 22.412630>,  <35.463654, 34.544731, 22.515965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456902, 34.158367, 22.412630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211468, 0.249081, -0.945114,
		0.977239, -0.070585, 0.200054,
		-0.016881, -0.965907, -0.258338,
		35.451836, 33.868595, 22.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061459, 34.446930, 22.103825>,  <35.463654, 34.544731, 22.515965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061459, 34.446930, 22.103825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.819355, 34.139328, 22.021557>,  <35.674091, 33.954769, 21.972197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.819355, 34.139328, 22.021557>,  <36.061459, 34.446930, 22.103825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819355, 34.139328, 22.021557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171445, 0.126372, -0.977055,
		0.777346, -0.626633, 0.055353,
		-0.605260, -0.769000, -0.205668,
		35.637775, 33.908627, 21.959856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417294, 34.051186, 21.559341>,  <36.061459, 34.446930, 22.103825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417294, 34.051186, 21.559341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.042347, 33.915287, 21.528566>,  <35.817379, 33.833748, 21.510101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.042347, 33.915287, 21.528566>,  <36.417294, 34.051186, 21.559341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042347, 33.915287, 21.528566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031614, 0.136988, -0.990068,
		0.346911, -0.930488, -0.117667,
		-0.937365, -0.339746, -0.076939,
		35.761139, 33.813362, 21.505486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373569, 33.624378, 20.963398>,  <36.417294, 34.051186, 21.559341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373569, 33.624378, 20.963398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979622, 33.647980, 21.028576>,  <35.743252, 33.662140, 21.067682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.979622, 33.647980, 21.028576>,  <36.373569, 33.624378, 20.963398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979622, 33.647980, 21.028576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166354, -0.058388, -0.984336,
		-0.048542, -0.996550, 0.067316,
		-0.984871, 0.058980, 0.162946,
		35.684162, 33.665680, 21.077459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002579, 33.018784, 20.671854>,  <36.373569, 33.624378, 20.963398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002579, 33.018784, 20.671854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.759438, 33.335663, 20.693514>,  <35.613552, 33.525791, 20.706511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.759438, 33.335663, 20.693514>,  <36.002579, 33.018784, 20.671854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759438, 33.335663, 20.693514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296824, -0.163444, -0.940841,
		-0.736482, -0.587969, 0.334494,
		-0.607856, 0.792199, 0.054150,
		35.577080, 33.573322, 20.709759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283180, 32.819241, 20.435614>,  <36.002579, 33.018784, 20.671854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283180, 32.819241, 20.435614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.294201, 33.215202, 20.379999>,  <35.300812, 33.452778, 20.346630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.294201, 33.215202, 20.379999>,  <35.283180, 32.819241, 20.435614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294201, 33.215202, 20.379999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402910, -0.116296, -0.907821,
		-0.914825, 0.081028, 0.395639,
		0.027548, 0.989904, -0.139037,
		35.302464, 33.512173, 20.338287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819534, 32.926731, 19.872763>,  <35.283180, 32.819241, 20.435614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819534, 32.926731, 19.872763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.018456, 33.273502, 19.886246>,  <35.137806, 33.481564, 19.894335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.018456, 33.273502, 19.886246>,  <34.819534, 32.926731, 19.872763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018456, 33.273502, 19.886246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056939, 0.071380, -0.995823,
		-0.865709, 0.493302, 0.084859,
		0.497299, 0.866924, 0.033706,
		35.167645, 33.533581, 19.896357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377907, 33.335197, 19.463406>,  <34.819534, 32.926731, 19.872763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377907, 33.335197, 19.463406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736027, 33.513016, 19.474897>,  <34.950897, 33.619705, 19.481792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736027, 33.513016, 19.474897>,  <34.377907, 33.335197, 19.463406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736027, 33.513016, 19.474897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032424, -0.000702, -0.999474,
		-0.444290, 0.895757, -0.015043,
		0.895296, 0.444544, 0.028732,
		35.004616, 33.646378, 19.483517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409866, 33.935848, 18.943335>,  <34.377907, 33.335197, 19.463406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409866, 33.935848, 18.943335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792294, 33.835476, 19.003962>,  <35.021748, 33.775253, 19.040339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792294, 33.835476, 19.003962>,  <34.409866, 33.935848, 18.943335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792294, 33.835476, 19.003962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153243, -0.012964, -0.988103,
		0.249914, 0.967917, 0.026060,
		0.956065, -0.250934, 0.151567,
		35.079113, 33.760197, 19.049431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.636391, 32.111523, 34.876492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942284, 32.306019, 34.707371>,  <38.125820, 32.422718, 34.605900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942284, 32.306019, 34.707371>,  <37.636391, 32.111523, 34.876492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942284, 32.306019, 34.707371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523402, 0.086052, -0.847729,
		-0.375819, 0.869577, 0.320307,
		0.764729, 0.486242, -0.422798,
		38.171703, 32.451893, 34.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286850, 32.753830, 34.553631>,  <37.636391, 32.111523, 34.876492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286850, 32.753830, 34.553631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644779, 32.659885, 34.401768>,  <37.859535, 32.603519, 34.310650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644779, 32.659885, 34.401768>,  <37.286850, 32.753830, 34.553631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644779, 32.659885, 34.401768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406726, -0.078276, -0.910191,
		0.184047, 0.968873, -0.165566,
		0.894819, -0.234857, -0.379659,
		37.913223, 32.589428, 34.287868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567028, 33.305477, 34.201031>,  <37.286850, 32.753830, 34.553631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567028, 33.305477, 34.201031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690884, 32.958256, 34.045799>,  <37.765198, 32.749924, 33.952660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690884, 32.958256, 34.045799>,  <37.567028, 33.305477, 34.201031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690884, 32.958256, 34.045799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497512, 0.199911, -0.844108,
		0.810311, 0.454447, -0.369964,
		0.309642, -0.868051, -0.388083,
		37.783775, 32.697842, 33.929375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695896, 33.471851, 33.524204>,  <37.567028, 33.305477, 34.201031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695896, 33.471851, 33.524204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677742, 33.072384, 33.534088>,  <37.666851, 32.832703, 33.540020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677742, 33.072384, 33.534088>,  <37.695896, 33.471851, 33.524204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677742, 33.072384, 33.534088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502742, 0.001458, -0.864435,
		0.863245, -0.051654, -0.502136,
		-0.045384, -0.998664, 0.024710,
		37.664127, 32.772785, 33.541500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926201, 33.273567, 32.748680>,  <37.695896, 33.471851, 33.524204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926201, 33.273567, 32.748680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.741566, 32.963009, 32.920326>,  <37.630783, 32.776672, 33.023315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.741566, 32.963009, 32.920326>,  <37.926201, 33.273567, 32.748680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741566, 32.963009, 32.920326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589653, -0.092869, -0.802299,
		0.662757, -0.623360, -0.414940,
		-0.461586, -0.776401, 0.429115,
		37.603088, 32.730087, 33.049061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925186, 32.719189, 32.228085>,  <37.926201, 33.273567, 32.748680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925186, 32.719189, 32.228085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631176, 32.609779, 32.476254>,  <37.454769, 32.544136, 32.625156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631176, 32.609779, 32.476254>,  <37.925186, 32.719189, 32.228085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631176, 32.609779, 32.476254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584308, -0.208696, -0.784238,
		0.343985, -0.938953, -0.006423,
		-0.735022, -0.273520, 0.620426,
		37.410667, 32.527725, 32.662380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691643, 32.051472, 31.949793>,  <37.925186, 32.719189, 32.228085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691643, 32.051472, 31.949793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392559, 32.230381, 32.146107>,  <37.213108, 32.337727, 32.263897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392559, 32.230381, 32.146107>,  <37.691643, 32.051472, 31.949793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392559, 32.230381, 32.146107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609932, -0.170428, -0.773911,
		-0.262512, -0.878005, 0.400242,
		-0.747710, 0.447281, 0.490784,
		37.168247, 32.364563, 32.293343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130253, 31.610266, 31.897738>,  <37.691643, 32.051472, 31.949793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130253, 31.610266, 31.897738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954956, 31.950439, 32.014156>,  <36.849777, 32.154545, 32.084007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954956, 31.950439, 32.014156>,  <37.130253, 31.610266, 31.897738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954956, 31.950439, 32.014156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624636, -0.055302, -0.778955,
		-0.646355, -0.523167, 0.555447,
		-0.438241, 0.850434, 0.291045,
		36.823483, 32.205570, 32.101471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401413, 31.408504, 31.872713>,  <37.130253, 31.610266, 31.897738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401413, 31.408504, 31.872713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422474, 31.806992, 31.845064>,  <36.435108, 32.046085, 31.828474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.422474, 31.806992, 31.845064>,  <36.401413, 31.408504, 31.872713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422474, 31.806992, 31.845064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650098, -0.018350, -0.759628,
		-0.758024, 0.084932, 0.646673,
		0.052650, 0.996218, -0.069124,
		36.438271, 32.105858, 31.824327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701660, 31.624985, 31.719570>,  <36.401413, 31.408504, 31.872713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701660, 31.624985, 31.719570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910141, 31.948568, 31.610806>,  <36.035229, 32.142719, 31.545546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910141, 31.948568, 31.610806>,  <35.701660, 31.624985, 31.719570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910141, 31.948568, 31.610806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622729, 0.142625, -0.769329,
		-0.583572, 0.570304, 0.578098,
		0.521203, 0.808957, -0.271913,
		36.066502, 32.191254, 31.529232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157593, 31.992195, 31.302061>,  <35.701660, 31.624985, 31.719570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157593, 31.992195, 31.302061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520107, 32.143227, 31.226080>,  <35.737614, 32.233845, 31.180492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520107, 32.143227, 31.226080>,  <35.157593, 31.992195, 31.302061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520107, 32.143227, 31.226080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263343, 0.152906, -0.952507,
		-0.330603, 0.913265, 0.238009,
		0.906285, 0.377580, -0.189951,
		35.791992, 32.256500, 31.169094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075191, 32.686890, 30.955702>,  <35.157593, 31.992195, 31.302061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075191, 32.686890, 30.955702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430714, 32.523975, 30.871656>,  <35.644028, 32.426228, 30.821230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430714, 32.523975, 30.871656>,  <35.075191, 32.686890, 30.955702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430714, 32.523975, 30.871656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142102, 0.190955, -0.971259,
		0.435700, 0.893116, 0.111846,
		0.888804, -0.407284, -0.210112,
		35.697353, 32.401791, 30.808622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965919, 33.415756, 31.026682>,  <35.075191, 32.686890, 30.955702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965919, 33.415756, 31.026682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593559, 33.550804, 31.082436>,  <34.370144, 33.631832, 31.115889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593559, 33.550804, 31.082436>,  <34.965919, 33.415756, 31.026682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593559, 33.550804, 31.082436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137841, -0.028666, 0.990039,
		0.338257, 0.940844, -0.019853,
		-0.930904, 0.337624, 0.139384,
		34.314289, 33.652092, 31.124250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147308, 33.955132, 31.474178>,  <34.965919, 33.415756, 31.026682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147308, 33.955132, 31.474178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756691, 33.870869, 31.492006>,  <34.522320, 33.820309, 31.502703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756691, 33.870869, 31.492006>,  <35.147308, 33.955132, 31.474178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756691, 33.870869, 31.492006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041078, 0.020922, 0.998937,
		-0.211369, 0.977335, -0.011777,
		-0.976543, -0.210661, 0.044569,
		34.463730, 33.807671, 31.505377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886669, 34.443798, 31.919958>,  <35.147308, 33.955132, 31.474178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886669, 34.443798, 31.919958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634052, 34.134613, 31.944220>,  <34.482483, 33.949100, 31.958776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.634052, 34.134613, 31.944220>,  <34.886669, 34.443798, 31.919958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634052, 34.134613, 31.944220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097116, -0.001252, 0.995272,
		-0.769235, 0.634447, 0.075858,
		-0.631543, -0.772965, 0.060652,
		34.444588, 33.902725, 31.962416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356789, 34.534782, 32.506828>,  <34.886669, 34.443798, 31.919958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356789, 34.534782, 32.506828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344501, 34.142235, 32.430962>,  <34.337132, 33.906708, 32.385441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344501, 34.142235, 32.430962>,  <34.356789, 34.534782, 32.506828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344501, 34.142235, 32.430962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072225, -0.187082, 0.979686,
		-0.996915, 0.043788, -0.065133,
		-0.030713, -0.981368, -0.189667,
		34.335289, 33.847824, 32.374062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933048, 34.306595, 32.945362>,  <34.356789, 34.534782, 32.506828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933048, 34.306595, 32.945362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146862, 33.981899, 32.851250>,  <34.275150, 33.787083, 32.794781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.146862, 33.981899, 32.851250>,  <33.933048, 34.306595, 32.945362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146862, 33.981899, 32.851250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037724, -0.255201, 0.966152,
		-0.844307, -0.525313, -0.105791,
		0.534530, -0.811738, -0.235285,
		34.307220, 33.738377, 32.780663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536533, 33.729652, 33.249962>,  <33.933048, 34.306595, 32.945362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536533, 33.729652, 33.249962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906578, 33.596359, 33.177162>,  <34.128605, 33.516384, 33.133480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906578, 33.596359, 33.177162>,  <33.536533, 33.729652, 33.249962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906578, 33.596359, 33.177162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082554, -0.291343, 0.953050,
		-0.370615, -0.896702, -0.242015,
		0.925110, -0.333235, -0.182003,
		34.184113, 33.496391, 33.122562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654617, 33.127342, 33.781532>,  <33.536533, 33.729652, 33.249962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654617, 33.127342, 33.781532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014904, 33.247974, 33.656464>,  <34.231075, 33.320354, 33.581421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014904, 33.247974, 33.656464>,  <33.654617, 33.127342, 33.781532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014904, 33.247974, 33.656464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362150, -0.123758, 0.923868,
		0.239926, -0.945374, -0.220688,
		0.900712, 0.301582, -0.312674,
		34.285118, 33.338448, 33.562660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113400, 32.717773, 34.187233>,  <33.654617, 33.127342, 33.781532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113400, 32.717773, 34.187233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346615, 33.016960, 34.060356>,  <34.486546, 33.196472, 33.984230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346615, 33.016960, 34.060356>,  <34.113400, 32.717773, 34.187233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346615, 33.016960, 34.060356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431430, 0.045785, 0.900984,
		0.688426, -0.662158, -0.295999,
		0.583042, 0.747964, -0.317195,
		34.521526, 33.241348, 33.965199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801598, 32.560463, 34.436348>,  <34.113400, 32.717773, 34.187233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801598, 32.560463, 34.436348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792488, 32.954590, 34.368671>,  <34.787022, 33.191067, 34.328064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792488, 32.954590, 34.368671>,  <34.801598, 32.560463, 34.436348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792488, 32.954590, 34.368671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560783, 0.152698, 0.813760,
		0.827649, -0.076347, -0.556028,
		-0.022776, 0.985319, -0.169195,
		34.785656, 33.250187, 34.317913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455555, 32.822598, 34.477871>,  <34.801598, 32.560463, 34.436348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455555, 32.822598, 34.477871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233082, 33.149532, 34.538021>,  <35.099598, 33.345695, 34.574112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233082, 33.149532, 34.538021>,  <35.455555, 32.822598, 34.477871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233082, 33.149532, 34.538021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493561, 0.179282, 0.851032,
		0.668622, 0.547553, -0.503122,
		-0.556186, 0.817340, 0.150379,
		35.066227, 33.394733, 34.583134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970360, 33.280182, 34.548233>,  <35.455555, 32.822598, 34.477871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970360, 33.280182, 34.548233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.641296, 33.429596, 34.719677>,  <35.443859, 33.519245, 34.822544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.641296, 33.429596, 34.719677>,  <35.970360, 33.280182, 34.548233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641296, 33.429596, 34.719677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558212, 0.387645, 0.733574,
		0.107867, 0.842735, -0.527410,
		-0.822657, 0.373535, 0.428611,
		35.394501, 33.541656, 34.848259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059998, 33.981201, 34.773720>,  <35.970360, 33.280182, 34.548233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059998, 33.981201, 34.773720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764297, 33.836494, 35.000927>,  <35.586880, 33.749672, 35.137249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764297, 33.836494, 35.000927>,  <36.059998, 33.981201, 34.773720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764297, 33.836494, 35.000927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344361, 0.521780, 0.780488,
		-0.578731, 0.772575, -0.261148,
		-0.739247, -0.361763, 0.568015,
		35.542522, 33.727966, 35.171333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896206, 34.541901, 35.152054>,  <36.059998, 33.981201, 34.773720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896206, 34.541901, 35.152054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.783417, 34.208809, 35.342651>,  <35.715744, 34.008953, 35.457012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.783417, 34.208809, 35.342651>,  <35.896206, 34.541901, 35.152054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783417, 34.208809, 35.342651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244356, 0.417938, 0.874996,
		-0.927783, 0.363161, 0.085635,
		-0.281974, -0.832732, 0.476496,
		35.698826, 33.958988, 35.485600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283772, 34.691074, 35.567501>,  <35.896206, 34.541901, 35.152054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283772, 34.691074, 35.567501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520119, 34.402836, 35.712620>,  <35.661926, 34.229893, 35.799690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520119, 34.402836, 35.712620>,  <35.283772, 34.691074, 35.567501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520119, 34.402836, 35.712620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170487, 0.551059, 0.816865,
		-0.788551, -0.420805, 0.448453,
		0.590865, -0.720595, 0.362796,
		35.697380, 34.186657, 35.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249069, 34.711708, 34.781414>,  <35.283772, 34.691074, 35.567501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249069, 34.711708, 34.781414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906616, 34.877914, 34.904305>,  <34.701145, 34.977638, 34.978039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906616, 34.877914, 34.904305>,  <35.249069, 34.711708, 34.781414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906616, 34.877914, 34.904305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433275, 0.253183, 0.864969,
		0.281623, 0.873640, -0.396790,
		-0.856131, 0.415514, 0.307225,
		34.649776, 35.002567, 34.996471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814346, 35.214672, 34.849148>,  <35.249069, 34.711708, 34.781414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814346, 35.214672, 34.849148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202991, 35.254940, 34.934792>,  <36.436176, 35.279102, 34.986179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202991, 35.254940, 34.934792>,  <35.814346, 35.214672, 34.849148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202991, 35.254940, 34.934792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100552, 0.643464, -0.758844,
		-0.214164, 0.758828, 0.615072,
		0.971608, 0.100670, 0.214109,
		36.494473, 35.285141, 34.999023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862976, 35.954109, 34.847485>,  <35.814346, 35.214672, 34.849148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862976, 35.954109, 34.847485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200272, 35.757656, 34.760086>,  <36.402649, 35.639782, 34.707645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200272, 35.757656, 34.760086>,  <35.862976, 35.954109, 34.847485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200272, 35.757656, 34.760086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157667, 0.614567, -0.772948,
		0.513904, 0.617326, 0.595660,
		0.843234, -0.491137, -0.218496,
		36.453243, 35.610313, 34.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303703, 36.455845, 34.506500>,  <35.862976, 35.954109, 34.847485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303703, 36.455845, 34.506500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468838, 36.107754, 34.398975>,  <36.567917, 35.898899, 34.334461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468838, 36.107754, 34.398975>,  <36.303703, 36.455845, 34.506500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468838, 36.107754, 34.398975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093813, 0.334198, -0.937822,
		0.905961, 0.361949, 0.219609,
		0.412837, -0.870232, -0.268814,
		36.592690, 35.846684, 34.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969925, 36.619843, 34.177742>,  <36.303703, 36.455845, 34.506500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969925, 36.619843, 34.177742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903011, 36.248119, 34.046047>,  <36.862862, 36.025085, 33.967030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903011, 36.248119, 34.046047>,  <36.969925, 36.619843, 34.177742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903011, 36.248119, 34.046047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379850, 0.247407, -0.891349,
		0.909796, -0.274170, 0.311611,
		-0.167287, -0.929312, -0.329234,
		36.852825, 35.969326, 33.947277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533112, 36.496479, 33.729973>,  <36.969925, 36.619843, 34.177742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533112, 36.496479, 33.729973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257427, 36.229534, 33.617107>,  <37.092018, 36.069366, 33.549385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257427, 36.229534, 33.617107>,  <37.533112, 36.496479, 33.729973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257427, 36.229534, 33.617107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296940, 0.095075, -0.950151,
		0.660924, -0.738638, 0.132641,
		-0.689207, -0.667364, -0.282168,
		37.050667, 36.029324, 33.532455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830227, 36.111099, 33.239189>,  <37.533112, 36.496479, 33.729973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830227, 36.111099, 33.239189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442379, 36.034817, 33.177902>,  <37.209671, 35.989048, 33.141129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442379, 36.034817, 33.177902>,  <37.830227, 36.111099, 33.239189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442379, 36.034817, 33.177902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122410, 0.164036, -0.978830,
		0.211803, -0.967845, -0.135707,
		-0.969616, -0.190707, -0.153217,
		37.151493, 35.977608, 33.131939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714268, 35.562607, 32.705437>,  <37.830227, 36.111099, 33.239189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714268, 35.562607, 32.705437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382408, 35.785904, 32.708271>,  <37.183292, 35.919880, 32.709972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.382408, 35.785904, 32.708271>,  <37.714268, 35.562607, 32.705437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382408, 35.785904, 32.708271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012855, 0.031796, -0.999412,
		-0.558136, -0.829070, -0.033556,
		-0.829649, 0.558239, 0.007089,
		37.133514, 35.953377, 32.710396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305885, 35.352909, 32.031673>,  <37.714268, 35.562607, 32.705437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305885, 35.352909, 32.031673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169922, 35.705151, 32.163731>,  <37.088345, 35.916496, 32.242966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169922, 35.705151, 32.163731>,  <37.305885, 35.352909, 32.031673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169922, 35.705151, 32.163731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037465, 0.338089, -0.940368,
		-0.939712, -0.332008, -0.081927,
		-0.339909, 0.880606, 0.330145,
		37.067947, 35.969334, 32.262775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766495, 35.444866, 31.622513>,  <37.305885, 35.352909, 32.031673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766495, 35.444866, 31.622513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845757, 35.802540, 31.783092>,  <36.893314, 36.017143, 31.879440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845757, 35.802540, 31.783092>,  <36.766495, 35.444866, 31.622513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845757, 35.802540, 31.783092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116013, 0.428089, -0.896259,
		-0.973281, 0.131025, 0.188566,
		0.198156, 0.894188, 0.401450,
		36.905205, 36.070797, 31.903528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255436, 35.986156, 31.371418>,  <36.766495, 35.444866, 31.622513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255436, 35.986156, 31.371418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569752, 36.203163, 31.490223>,  <36.758339, 36.333366, 31.561506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569752, 36.203163, 31.490223>,  <36.255436, 35.986156, 31.371418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569752, 36.203163, 31.490223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001683, 0.482086, -0.876122,
		-0.618497, 0.687944, 0.379730,
		0.785786, 0.542517, 0.297011,
		36.805489, 36.365917, 31.579327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122360, 36.746010, 31.194000>,  <36.255436, 35.986156, 31.371418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122360, 36.746010, 31.194000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507984, 36.640202, 31.184029>,  <36.739357, 36.576717, 31.178045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507984, 36.640202, 31.184029>,  <36.122360, 36.746010, 31.194000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507984, 36.640202, 31.184029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129420, 0.549481, -0.825422,
		0.232036, 0.792529, 0.563966,
		0.964059, -0.264516, -0.024930,
		36.797203, 36.560848, 31.176550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283314, 37.075703, 30.547125>,  <36.122360, 36.746010, 31.194000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283314, 37.075703, 30.547125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.642754, 36.924107, 30.635559>,  <36.858418, 36.833149, 30.688620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.642754, 36.924107, 30.635559>,  <36.283314, 37.075703, 30.547125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642754, 36.924107, 30.635559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309553, 0.190510, -0.931602,
		0.310948, 0.905579, 0.288510,
		0.898603, -0.378989, 0.221086,
		36.912334, 36.810410, 30.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844723, 37.596184, 30.434364>,  <36.283314, 37.075703, 30.547125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844723, 37.596184, 30.434364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970280, 37.216660, 30.420374>,  <37.045616, 36.988945, 30.411980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.970280, 37.216660, 30.420374>,  <36.844723, 37.596184, 30.434364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970280, 37.216660, 30.420374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420982, 0.172102, -0.890593,
		0.851025, 0.264829, 0.453455,
		0.313895, -0.948813, -0.034975,
		37.064449, 36.932014, 30.409882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439972, 37.628151, 30.249050>,  <36.844723, 37.596184, 30.434364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439972, 37.628151, 30.249050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362442, 37.248230, 30.150814>,  <37.315926, 37.020279, 30.091873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362442, 37.248230, 30.150814>,  <37.439972, 37.628151, 30.249050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362442, 37.248230, 30.150814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311882, 0.177692, -0.933357,
		0.930141, -0.257501, 0.261785,
		-0.193823, -0.949800, -0.245588,
		37.304295, 36.963291, 30.077137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956360, 37.406643, 29.853373>,  <37.439972, 37.628151, 30.249050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956360, 37.406643, 29.853373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685745, 37.131588, 29.747955>,  <37.523376, 36.966557, 29.684706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685745, 37.131588, 29.747955>,  <37.956360, 37.406643, 29.853373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685745, 37.131588, 29.747955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234157, 0.138427, -0.962293,
		0.698190, -0.712736, 0.067365,
		-0.676536, -0.687638, -0.263541,
		37.482784, 36.925297, 29.668894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135059, 37.248112, 29.230459>,  <37.956360, 37.406643, 29.853373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135059, 37.248112, 29.230459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787548, 37.050056, 29.227503>,  <37.579041, 36.931221, 29.225729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787548, 37.050056, 29.227503>,  <38.135059, 37.248112, 29.230459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787548, 37.050056, 29.227503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082688, -0.130341, -0.988015,
		0.488245, -0.858979, 0.154180,
		-0.868780, -0.495142, -0.007389,
		37.526913, 36.901512, 29.225286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189507, 36.591660, 28.876530>,  <38.135059, 37.248112, 29.230459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189507, 36.591660, 28.876530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796818, 36.662960, 28.849836>,  <37.561207, 36.705742, 28.833820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796818, 36.662960, 28.849836>,  <38.189507, 36.591660, 28.876530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796818, 36.662960, 28.849836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054905, -0.070491, -0.996000,
		-0.182249, -0.981456, 0.059415,
		-0.981718, 0.178258, -0.066734,
		37.502300, 36.716438, 28.829817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977654, 36.091446, 28.467152>,  <38.189507, 36.591660, 28.876530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977654, 36.091446, 28.467152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.686268, 36.364876, 28.448971>,  <37.511436, 36.528934, 28.438063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.686268, 36.364876, 28.448971>,  <37.977654, 36.091446, 28.467152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686268, 36.364876, 28.448971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058316, -0.004233, -0.998289,
		-0.682595, -0.729871, -0.036779,
		-0.728467, 0.683572, -0.045453,
		37.467728, 36.569946, 28.435335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366940, 35.821430, 28.026527>,  <37.977654, 36.091446, 28.467152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366940, 35.821430, 28.026527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303211, 36.216309, 28.023521>,  <37.264977, 36.453236, 28.021717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303211, 36.216309, 28.023521>,  <37.366940, 35.821430, 28.026527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303211, 36.216309, 28.023521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053015, -0.016157, -0.998463,
		-0.985803, -0.158673, 0.054910,
		-0.159316, 0.987199, -0.007515,
		37.255417, 36.512466, 28.021267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779488, 35.919994, 27.669151>,  <37.366940, 35.821430, 28.026527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779488, 35.919994, 27.669151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938877, 36.286671, 27.657141>,  <37.034512, 36.506676, 27.649935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.938877, 36.286671, 27.657141>,  <36.779488, 35.919994, 27.669151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938877, 36.286671, 27.657141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126947, 0.022700, -0.991650,
		-0.908350, 0.398962, 0.125416,
		0.398477, 0.916687, -0.030027,
		37.058422, 36.561676, 27.648132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333836, 36.317299, 27.363165>,  <36.779488, 35.919994, 27.669151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333836, 36.317299, 27.363165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672604, 36.525269, 27.318609>,  <36.875866, 36.650051, 27.291876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672604, 36.525269, 27.318609>,  <36.333836, 36.317299, 27.363165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672604, 36.525269, 27.318609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158116, 0.046244, -0.986337,
		-0.507666, 0.852961, 0.121373,
		0.846920, 0.519921, -0.111390,
		36.926682, 36.681244, 27.285192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181290, 36.935051, 26.984354>,  <36.333836, 36.317299, 27.363165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181290, 36.935051, 26.984354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578030, 36.895809, 26.951847>,  <36.816074, 36.872265, 26.932343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578030, 36.895809, 26.951847>,  <36.181290, 36.935051, 26.984354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578030, 36.895809, 26.951847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046759, 0.313036, -0.948589,
		0.118505, 0.944660, 0.305898,
		0.991852, -0.098109, -0.081268,
		36.875584, 36.866375, 26.927467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399181, 37.515610, 26.542879>,  <36.181290, 36.935051, 26.984354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399181, 37.515610, 26.542879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707428, 37.260895, 26.553089>,  <36.892376, 37.108067, 26.559216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707428, 37.260895, 26.553089>,  <36.399181, 37.515610, 26.542879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707428, 37.260895, 26.553089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104736, 0.087033, -0.990684,
		0.628634, 0.766111, 0.133764,
		0.770616, -0.636788, 0.025527,
		36.938614, 37.069859, 26.560747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876259, 37.777832, 26.076645>,  <36.399181, 37.515610, 26.542879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876259, 37.777832, 26.076645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974483, 37.390903, 26.101913>,  <37.033417, 37.158745, 26.117075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974483, 37.390903, 26.101913>,  <36.876259, 37.777832, 26.076645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974483, 37.390903, 26.101913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245256, -0.001053, -0.969458,
		0.937842, 0.253557, 0.236982,
		0.245563, -0.967320, 0.063173,
		37.048153, 37.100708, 26.120865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596172, 37.798264, 25.846533>,  <36.876259, 37.777832, 26.076645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596172, 37.798264, 25.846533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465408, 37.420979, 25.822947>,  <37.386951, 37.194607, 25.808796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465408, 37.420979, 25.822947>,  <37.596172, 37.798264, 25.846533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465408, 37.420979, 25.822947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263018, -0.030878, -0.964297,
		0.907718, -0.330745, 0.258177,
		-0.326908, -0.943215, -0.058964,
		37.367336, 37.138016, 25.805258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140701, 37.410740, 25.492071>,  <37.596172, 37.798264, 25.846533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140701, 37.410740, 25.492071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796841, 37.211617, 25.446150>,  <37.590523, 37.092140, 25.418596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796841, 37.211617, 25.446150>,  <38.140701, 37.410740, 25.492071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796841, 37.211617, 25.446150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176889, -0.079216, -0.981038,
		0.479278, -0.863660, 0.156156,
		-0.859653, -0.497812, -0.114805,
		37.538944, 37.062275, 25.411709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312122, 37.001755, 24.913153>,  <38.140701, 37.410740, 25.492071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312122, 37.001755, 24.913153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912846, 36.977982, 24.916836>,  <37.673279, 36.963718, 24.919044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912846, 36.977982, 24.916836>,  <38.312122, 37.001755, 24.913153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912846, 36.977982, 24.916836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010262, 0.017475, -0.999795,
		0.059269, -0.998079, -0.018053,
		-0.998189, -0.059442, 0.009207,
		37.613388, 36.960152, 24.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636467, 36.329884, 25.096624>,  <38.312122, 37.001755, 24.913153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636467, 36.329884, 25.096624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021557, 36.267559, 25.008192>,  <39.252613, 36.230164, 24.955133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021557, 36.267559, 25.008192>,  <38.636467, 36.329884, 25.096624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021557, 36.267559, 25.008192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246913, 0.172666, 0.953531,
		-0.110395, -0.972579, 0.204702,
		0.962729, -0.155809, -0.221081,
		39.310375, 36.220818, 24.941868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891376, 35.878857, 25.615625>,  <38.636467, 36.329884, 25.096624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891376, 35.878857, 25.615625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237740, 35.992588, 25.451012>,  <39.445557, 36.060825, 25.352243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237740, 35.992588, 25.451012>,  <38.891376, 35.878857, 25.615625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237740, 35.992588, 25.451012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385279, 0.145574, 0.911245,
		0.318999, -0.947611, 0.016509,
		0.865910, 0.284326, -0.411533,
		39.497513, 36.077885, 25.327551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343830, 35.517925, 25.997822>,  <38.891376, 35.878857, 25.615625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343830, 35.517925, 25.997822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.565434, 35.804722, 25.828585>,  <39.698395, 35.976799, 25.727043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.565434, 35.804722, 25.828585>,  <39.343830, 35.517925, 25.997822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565434, 35.804722, 25.828585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567761, 0.046294, 0.821891,
		0.608871, -0.695548, -0.381430,
		0.554006, 0.716987, -0.423092,
		39.731636, 36.019817, 25.701656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076664, 35.279713, 26.225630>,  <39.343830, 35.517925, 25.997822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076664, 35.279713, 26.225630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.048729, 35.663437, 26.116198>,  <40.031967, 35.893673, 26.050539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.048729, 35.663437, 26.116198>,  <40.076664, 35.279713, 26.225630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048729, 35.663437, 26.116198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389210, 0.278717, 0.877970,
		0.918498, -0.045167, -0.392838,
		-0.069835, 0.959310, -0.273580,
		40.027779, 35.951229, 26.034124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715294, 35.519421, 26.259184>,  <40.076664, 35.279713, 26.225630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715294, 35.519421, 26.259184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.500546, 35.855503, 26.289692>,  <40.371696, 36.057152, 26.307997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.500546, 35.855503, 26.289692>,  <40.715294, 35.519421, 26.259184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500546, 35.855503, 26.289692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456495, 0.213279, 0.863785,
		0.709494, 0.498558, -0.498055,
		-0.536871, 0.840209, 0.076269,
		40.339485, 36.107567, 26.312572>
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
