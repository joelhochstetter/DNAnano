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
	<24.146338, 35.114159, 35.380592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406534, 35.027084, 35.089531>,  <24.562653, 34.974838, 34.914894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406534, 35.027084, 35.089531>,  <24.146338, 35.114159, 35.380592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406534, 35.027084, 35.089531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756862, 0.105780, 0.644957,
		-0.063428, -0.970270, 0.233568,
		0.650489, -0.217687, -0.727651,
		24.601681, 34.961777, 34.871235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604181, 34.663635, 35.629234>,  <24.146338, 35.114159, 35.380592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604181, 34.663635, 35.629234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837883, 34.809525, 35.339233>,  <24.978104, 34.897057, 35.165234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837883, 34.809525, 35.339233>,  <24.604181, 34.663635, 35.629234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837883, 34.809525, 35.339233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798403, -0.098025, 0.594091,
		0.145610, -0.925942, -0.348467,
		0.584252, 0.364722, -0.725002,
		25.013159, 34.918941, 35.121735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132421, 34.128643, 35.306522>,  <24.604181, 34.663635, 35.629234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132421, 34.128643, 35.306522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267883, 34.501835, 35.257759>,  <25.349161, 34.725750, 35.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267883, 34.501835, 35.257759>,  <25.132421, 34.128643, 35.306522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267883, 34.501835, 35.257759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840889, -0.241973, 0.484102,
		0.422159, -0.266455, -0.866478,
		0.338656, 0.932979, -0.121908,
		25.369480, 34.781727, 35.221188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791403, 34.228371, 35.646606>,  <25.132421, 34.128643, 35.306522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791403, 34.228371, 35.646606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762964, 34.547291, 35.406857>,  <25.745901, 34.738644, 35.263004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762964, 34.547291, 35.406857>,  <25.791403, 34.228371, 35.646606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762964, 34.547291, 35.406857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939286, 0.255741, 0.228776,
		0.335689, -0.546723, -0.767077,
		-0.071096, 0.797302, -0.599378,
		25.741636, 34.786480, 35.227043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345079, 34.389091, 35.017895>,  <25.791403, 34.228371, 35.646606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345079, 34.389091, 35.017895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213856, 34.735394, 35.169075>,  <26.135122, 34.943176, 35.259781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213856, 34.735394, 35.169075>,  <26.345079, 34.389091, 35.017895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213856, 34.735394, 35.169075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944645, 0.298593, 0.135975,
		0.004868, 0.401634, -0.915787,
		-0.328059, 0.865755, 0.377948,
		26.115438, 34.995121, 35.282459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577747, 35.098717, 34.842041>,  <26.345079, 34.389091, 35.017895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577747, 35.098717, 34.842041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977394, 35.084789, 34.832638>,  <27.217182, 35.076431, 34.826996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977394, 35.084789, 34.832638>,  <26.577747, 35.098717, 34.842041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977394, 35.084789, 34.832638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007304, 0.694923, -0.719047,
		0.041372, 0.718241, 0.694564,
		0.999117, -0.034821, -0.023504,
		27.277130, 35.074345, 34.825588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720434, 35.753853, 34.762909>,  <26.577747, 35.098717, 34.842041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720434, 35.753853, 34.762909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027700, 35.540318, 34.621521>,  <27.212061, 35.412197, 34.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027700, 35.540318, 34.621521>,  <26.720434, 35.753853, 34.762909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027700, 35.540318, 34.621521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022609, 0.574350, -0.818298,
		0.639850, 0.620598, 0.453266,
		0.768167, -0.533836, -0.353467,
		27.258150, 35.380165, 34.515480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206923, 36.340088, 34.386467>,  <26.720434, 35.753853, 34.762909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206923, 36.340088, 34.386467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279127, 35.961407, 34.279755>,  <27.322449, 35.734200, 34.215725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279127, 35.961407, 34.279755>,  <27.206923, 36.340088, 34.386467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279127, 35.961407, 34.279755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049302, 0.279607, -0.958848,
		0.982337, 0.159928, 0.097146,
		0.180509, -0.946701, -0.266784,
		27.333281, 35.677395, 34.199718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645311, 36.385921, 33.755882>,  <27.206923, 36.340088, 34.386467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645311, 36.385921, 33.755882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557301, 35.996429, 33.732445>,  <27.504494, 35.762733, 33.718384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557301, 35.996429, 33.732445>,  <27.645311, 36.385921, 33.755882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557301, 35.996429, 33.732445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243701, 0.003290, -0.969845,
		0.944562, -0.227672, 0.236575,
		-0.220028, -0.973732, -0.058591,
		27.491293, 35.704311, 33.714867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263517, 36.011036, 33.416470>,  <27.645311, 36.385921, 33.755882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263517, 36.011036, 33.416470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898640, 35.850964, 33.381241>,  <27.679714, 35.754921, 33.360104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898640, 35.850964, 33.381241>,  <28.263517, 36.011036, 33.416470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898640, 35.850964, 33.381241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097756, -0.003816, -0.995203,
		0.397929, -0.916427, 0.042601,
		-0.912193, -0.400185, -0.088067,
		27.624981, 35.730907, 33.354820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262850, 35.383381, 32.971516>,  <28.263517, 36.011036, 33.416470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262850, 35.383381, 32.971516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869648, 35.456036, 32.960880>,  <27.633726, 35.499630, 32.954498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869648, 35.456036, 32.960880>,  <28.262850, 35.383381, 32.971516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869648, 35.456036, 32.960880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009531, -0.094123, -0.995515,
		-0.183326, -0.978851, 0.090792,
		-0.983006, 0.181638, -0.026584,
		27.574745, 35.510529, 32.952904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020163, 34.858620, 32.534447>,  <28.262850, 35.383381, 32.971516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020163, 34.858620, 32.534447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761196, 35.163403, 32.541019>,  <27.605816, 35.346272, 32.544964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761196, 35.163403, 32.541019>,  <28.020163, 34.858620, 32.534447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761196, 35.163403, 32.541019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056591, -0.026559, -0.998044,
		-0.760033, -0.647079, 0.060315,
		-0.647416, 0.761960, 0.016433,
		27.566971, 35.391991, 32.545948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525543, 34.643951, 32.091156>,  <28.020163, 34.858620, 32.534447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525543, 34.643951, 32.091156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451149, 35.036694, 32.105934>,  <27.406513, 35.272339, 32.114799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451149, 35.036694, 32.105934>,  <27.525543, 34.643951, 32.091156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451149, 35.036694, 32.105934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263964, -0.013715, -0.964435,
		-0.946432, -0.189121, 0.261726,
		-0.185984, 0.981858, 0.036941,
		27.395353, 35.331249, 32.117016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010538, 34.738132, 31.636644>,  <27.525543, 34.643951, 32.091156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010538, 34.738132, 31.636644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134415, 35.116772, 31.672535>,  <27.208740, 35.343956, 31.694069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134415, 35.116772, 31.672535>,  <27.010538, 34.738132, 31.636644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134415, 35.116772, 31.672535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009907, 0.091150, -0.995788,
		-0.950786, 0.309275, 0.018851,
		0.309691, 0.946594, 0.089728,
		27.227322, 35.400749, 31.699453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624165, 35.100212, 31.086508>,  <27.010538, 34.738132, 31.636644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624165, 35.100212, 31.086508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942114, 35.318089, 31.193457>,  <27.132883, 35.448814, 31.257626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942114, 35.318089, 31.193457>,  <26.624165, 35.100212, 31.086508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942114, 35.318089, 31.193457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127421, 0.280976, -0.951219,
		-0.593248, 0.790165, 0.153934,
		0.794871, 0.544694, 0.267372,
		27.180574, 35.481495, 31.273668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545181, 35.687141, 30.653816>,  <26.624165, 35.100212, 31.086508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545181, 35.687141, 30.653816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927202, 35.687870, 30.772390>,  <27.156414, 35.688309, 30.843534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927202, 35.687870, 30.772390>,  <26.545181, 35.687141, 30.653816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927202, 35.687870, 30.772390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258297, 0.485587, -0.835157,
		-0.145468, 0.874186, 0.463290,
		0.955051, 0.001823, 0.296437,
		27.213718, 35.688416, 30.861320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777937, 36.313873, 30.708757>,  <26.545181, 35.687141, 30.653816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777937, 36.313873, 30.708757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111397, 36.096539, 30.669128>,  <27.311472, 35.966137, 30.645351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111397, 36.096539, 30.669128>,  <26.777937, 36.313873, 30.708757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111397, 36.096539, 30.669128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263948, 0.549524, -0.792689,
		0.485139, 0.634674, 0.601522,
		0.833650, -0.543334, -0.099074,
		27.361492, 35.933537, 30.639406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335348, 36.800312, 30.578144>,  <26.777937, 36.313873, 30.708757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335348, 36.800312, 30.578144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488689, 36.455608, 30.445229>,  <27.580694, 36.248787, 30.365480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488689, 36.455608, 30.445229>,  <27.335348, 36.800312, 30.578144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488689, 36.455608, 30.445229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274586, 0.449844, -0.849849,
		0.881841, 0.234551, 0.409075,
		0.383353, -0.861757, -0.332287,
		27.603695, 36.197083, 30.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882500, 36.943951, 30.254704>,  <27.335348, 36.800312, 30.578144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882500, 36.943951, 30.254704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820131, 36.580872, 30.098869>,  <27.782711, 36.363026, 30.005369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820131, 36.580872, 30.098869>,  <27.882500, 36.943951, 30.254704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820131, 36.580872, 30.098869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266662, 0.341084, -0.901417,
		0.951094, -0.244436, 0.188867,
		-0.155919, -0.907696, -0.389585,
		27.773355, 36.308563, 29.981995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514385, 36.793087, 29.896383>,  <27.882500, 36.943951, 30.254704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514385, 36.793087, 29.896383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203598, 36.587925, 29.750368>,  <28.017126, 36.464828, 29.662760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203598, 36.587925, 29.750368>,  <28.514385, 36.793087, 29.896383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203598, 36.587925, 29.750368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262044, 0.263735, -0.928319,
		0.572412, -0.816929, -0.070510,
		-0.776967, -0.512905, -0.365036,
		27.970509, 36.434055, 29.640858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729937, 36.436195, 29.350733>,  <28.514385, 36.793087, 29.896383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729937, 36.436195, 29.350733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335453, 36.441746, 29.284763>,  <28.098763, 36.445076, 29.245182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335453, 36.441746, 29.284763>,  <28.729937, 36.436195, 29.350733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335453, 36.441746, 29.284763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156405, 0.404008, -0.901285,
		0.054123, -0.914650, -0.400606,
		-0.986209, 0.013877, -0.164922,
		28.039591, 36.445908, 29.235287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744835, 36.347401, 28.632046>,  <28.729937, 36.436195, 29.350733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744835, 36.347401, 28.632046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359983, 36.436394, 28.695049>,  <28.129072, 36.489792, 28.732851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359983, 36.436394, 28.695049>,  <28.744835, 36.347401, 28.632046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359983, 36.436394, 28.695049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095314, 0.266772, -0.959035,
		-0.255392, -0.937727, -0.235463,
		-0.962128, 0.222488, 0.157510,
		28.071344, 36.503139, 28.742302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279860, 35.891506, 28.255730>,  <28.744835, 36.347401, 28.632046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279860, 35.891506, 28.255730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096024, 36.236187, 28.341749>,  <27.985722, 36.442997, 28.393360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096024, 36.236187, 28.341749>,  <28.279860, 35.891506, 28.255730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096024, 36.236187, 28.341749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241969, 0.111488, -0.963858,
		-0.854534, -0.495014, 0.157267,
		-0.459589, 0.861703, 0.215048,
		27.958147, 36.494698, 28.406263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273632, 35.764725, 27.412756>,  <28.279860, 35.891506, 28.255730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273632, 35.764725, 27.412756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169613, 36.065754, 27.170763>,  <28.107201, 36.246372, 27.025568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169613, 36.065754, 27.170763>,  <28.273632, 35.764725, 27.412756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169613, 36.065754, 27.170763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955890, 0.112031, -0.271522,
		-0.136565, -0.648905, -0.748513,
		-0.260048, 0.752576, -0.604982,
		28.091599, 36.291527, 26.989269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432938, 35.672359, 26.619633>,  <28.273632, 35.764725, 27.412756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432938, 35.672359, 26.619633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449186, 36.057381, 26.726843>,  <28.458937, 36.288395, 26.791168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449186, 36.057381, 26.726843>,  <28.432938, 35.672359, 26.619633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449186, 36.057381, 26.726843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938205, 0.055523, -0.341596,
		-0.343687, 0.265340, -0.900819,
		0.040623, 0.962555, 0.268025,
		28.461372, 36.346146, 26.807251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773344, 36.073811, 26.133543>,  <28.432938, 35.672359, 26.619633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773344, 36.073811, 26.133543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824108, 36.301933, 26.458170>,  <28.854567, 36.438808, 26.652946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824108, 36.301933, 26.458170>,  <28.773344, 36.073811, 26.133543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824108, 36.301933, 26.458170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966878, 0.111539, -0.229579,
		-0.221453, 0.813821, -0.537266,
		0.126910, 0.570311, 0.811566,
		28.862181, 36.473026, 26.701639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131197, 36.598888, 25.977715>,  <28.773344, 36.073811, 26.133543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131197, 36.598888, 25.977715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210258, 36.541767, 26.365641>,  <29.257696, 36.507492, 26.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210258, 36.541767, 26.365641>,  <29.131197, 36.598888, 25.977715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210258, 36.541767, 26.365641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978469, -0.031226, -0.204017,
		0.059419, 0.989258, 0.133561,
		0.197654, -0.142808, 0.969814,
		29.269554, 36.498924, 26.656586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784372, 36.916916, 26.163515>,  <29.131197, 36.598888, 25.977715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784372, 36.916916, 26.163515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749847, 36.666710, 26.473684>,  <29.729132, 36.516586, 26.659786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749847, 36.666710, 26.473684>,  <29.784372, 36.916916, 26.163515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749847, 36.666710, 26.473684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991466, -0.130259, 0.005285,
		0.097701, 0.769264, 0.631417,
		-0.086313, -0.625512, 0.775425,
		29.723953, 36.479057, 26.706312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150629, 37.118858, 26.800873>,  <29.784372, 36.916916, 26.163515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150629, 37.118858, 26.800873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121666, 36.724766, 26.738808>,  <30.104288, 36.488312, 26.701569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121666, 36.724766, 26.738808>,  <30.150629, 37.118858, 26.800873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121666, 36.724766, 26.738808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986715, -0.048077, -0.155187,
		0.145435, -0.164336, 0.975624,
		-0.072407, -0.985232, -0.155160,
		30.099943, 36.429195, 26.692259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486088, 36.676304, 27.297770>,  <30.150629, 37.118858, 26.800873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486088, 36.676304, 27.297770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470636, 36.555710, 26.916695>,  <30.461367, 36.483353, 26.688049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.470636, 36.555710, 26.916695>,  <30.486088, 36.676304, 27.297770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470636, 36.555710, 26.916695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990395, 0.115120, -0.076587,
		0.132764, -0.946495, 0.294143,
		-0.038628, -0.301486, -0.952688,
		30.459047, 36.465263, 26.630888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856464, 36.027210, 27.089581>,  <30.486088, 36.676304, 27.297770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856464, 36.027210, 27.089581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844763, 36.311317, 26.808252>,  <30.837742, 36.481781, 26.639456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844763, 36.311317, 26.808252>,  <30.856464, 36.027210, 27.089581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844763, 36.311317, 26.808252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997596, 0.064971, 0.024116,
		0.062824, -0.700924, -0.710464,
		-0.029255, 0.710271, -0.703320,
		30.835987, 36.524399, 26.597256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394976, 35.844753, 26.504169>,  <30.856464, 36.027210, 27.089581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394976, 35.844753, 26.504169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324818, 36.229134, 26.589783>,  <31.282722, 36.459763, 26.641150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324818, 36.229134, 26.589783>,  <31.394976, 35.844753, 26.504169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324818, 36.229134, 26.589783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984322, 0.175281, 0.019673,
		-0.018611, 0.214127, -0.976629,
		-0.175397, 0.960951, 0.214032,
		31.272198, 36.517418, 26.653992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134228, 35.848278, 26.888443>,  <31.394976, 35.844753, 26.504169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134228, 35.848278, 26.888443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345600, 36.136032, 26.708111>,  <32.472424, 36.308685, 26.599911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345600, 36.136032, 26.708111>,  <32.134228, 35.848278, 26.888443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345600, 36.136032, 26.708111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844377, 0.500550, -0.190991,
		0.088267, 0.481595, 0.871938,
		0.528429, 0.719386, -0.450830,
		32.504128, 36.351849, 26.572863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662731, 35.321537, 27.126900>,  <32.134228, 35.848278, 26.888443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662731, 35.321537, 27.126900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889465, 35.644081, 27.059391>,  <33.025505, 35.837608, 27.018887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889465, 35.644081, 27.059391>,  <32.662731, 35.321537, 27.126900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889465, 35.644081, 27.059391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154635, 0.097081, 0.983191,
		0.809190, -0.583403, -0.069663,
		0.566834, 0.806360, -0.168771,
		33.059517, 35.885990, 27.008760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393970, 35.297806, 27.226875>,  <32.662731, 35.321537, 27.126900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393970, 35.297806, 27.226875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218891, 35.651024, 27.294594>,  <33.113846, 35.862953, 27.335224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218891, 35.651024, 27.294594>,  <33.393970, 35.297806, 27.226875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218891, 35.651024, 27.294594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156491, -0.110598, 0.981467,
		0.885399, 0.456078, -0.089780,
		-0.437697, 0.883040, 0.169296,
		33.087582, 35.915936, 27.345383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640041, 35.489609, 27.815689>,  <33.393970, 35.297806, 27.226875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640041, 35.489609, 27.815689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331985, 35.744492, 27.804028>,  <33.147152, 35.897423, 27.797031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331985, 35.744492, 27.804028>,  <33.640041, 35.489609, 27.815689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331985, 35.744492, 27.804028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017273, 0.024856, 0.999542,
		0.637644, 0.770289, -0.008136,
		-0.770138, 0.637211, -0.029155,
		33.100945, 35.935654, 27.795280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694637, 35.968422, 28.390062>,  <33.640041, 35.489609, 27.815689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694637, 35.968422, 28.390062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308975, 35.980011, 28.284555>,  <33.077579, 35.986965, 28.221251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308975, 35.980011, 28.284555>,  <33.694637, 35.968422, 28.390062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308975, 35.980011, 28.284555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260242, 0.090959, 0.961249,
		0.051840, 0.995433, -0.080159,
		-0.964151, 0.028971, -0.263769,
		33.019730, 35.988701, 28.205425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473682, 36.615940, 28.585947>,  <33.694637, 35.968422, 28.390062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473682, 36.615940, 28.585947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166588, 36.359814, 28.576241>,  <32.982330, 36.206139, 28.570417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166588, 36.359814, 28.576241>,  <33.473682, 36.615940, 28.585947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166588, 36.359814, 28.576241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083556, 0.062491, 0.994542,
		-0.635300, 0.765569, -0.101478,
		-0.767732, -0.640311, -0.024267,
		32.936268, 36.167721, 28.568960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181164, 36.610542, 29.273415>,  <33.473682, 36.615940, 28.585947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181164, 36.610542, 29.273415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960938, 36.301144, 29.147820>,  <32.828804, 36.115505, 29.072462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960938, 36.301144, 29.147820>,  <33.181164, 36.610542, 29.273415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960938, 36.301144, 29.147820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180703, -0.256783, 0.949426,
		-0.815003, 0.579455, 0.001602,
		-0.550561, -0.773495, -0.313988,
		32.795769, 36.069096, 29.053623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515709, 36.790028, 29.362165>,  <33.181164, 36.610542, 29.273415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515709, 36.790028, 29.362165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526833, 36.390450, 29.347599>,  <32.533508, 36.150703, 29.338860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526833, 36.390450, 29.347599>,  <32.515709, 36.790028, 29.362165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526833, 36.390450, 29.347599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500461, -0.045454, 0.864565,
		-0.865312, -0.005821, -0.501200,
		0.027814, -0.998950, -0.036419,
		32.535175, 36.090763, 29.336674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817953, 36.555843, 29.709940>,  <32.515709, 36.790028, 29.362165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817953, 36.555843, 29.709940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041454, 36.224506, 29.693684>,  <32.175556, 36.025703, 29.683929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041454, 36.224506, 29.693684>,  <31.817953, 36.555843, 29.709940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041454, 36.224506, 29.693684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424905, -0.328012, 0.843720,
		-0.712216, -0.454162, -0.535242,
		0.558752, -0.828339, -0.040640,
		32.209080, 35.976006, 29.681492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349888, 36.064838, 29.861664>,  <31.817953, 36.555843, 29.709940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349888, 36.064838, 29.861664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711073, 35.922886, 29.958593>,  <31.927784, 35.837715, 30.016750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711073, 35.922886, 29.958593>,  <31.349888, 36.064838, 29.861664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711073, 35.922886, 29.958593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362995, -0.328103, 0.872114,
		-0.229991, -0.875447, -0.425084,
		0.902961, -0.354882, 0.242323,
		31.981962, 35.816422, 30.031290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250381, 35.412598, 30.125051>,  <31.349888, 36.064838, 29.861664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250381, 35.412598, 30.125051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620790, 35.480740, 30.259790>,  <31.843035, 35.521626, 30.340633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620790, 35.480740, 30.259790>,  <31.250381, 35.412598, 30.125051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620790, 35.480740, 30.259790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233582, -0.442392, 0.865868,
		0.296522, -0.880494, -0.369873,
		0.926021, 0.170353, 0.336847,
		31.898596, 35.531845, 30.360844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511765, 34.795185, 30.370974>,  <31.250381, 35.412598, 30.125051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511765, 34.795185, 30.370974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714699, 35.074005, 30.573647>,  <31.836460, 35.241299, 30.695250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714699, 35.074005, 30.573647>,  <31.511765, 34.795185, 30.370974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714699, 35.074005, 30.573647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400557, -0.329842, 0.854844,
		0.762997, -0.636649, 0.111868,
		0.507337, 0.697053, 0.506683,
		31.866899, 35.283119, 30.725651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727316, 34.482960, 30.907349>,  <31.511765, 34.795185, 30.370974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727316, 34.482960, 30.907349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783905, 34.857235, 31.036633>,  <31.817860, 35.081802, 31.114202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783905, 34.857235, 31.036633>,  <31.727316, 34.482960, 30.907349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783905, 34.857235, 31.036633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368716, -0.253194, 0.894394,
		0.918713, -0.245706, 0.309185,
		0.141474, 0.935693, 0.323209,
		31.826347, 35.137943, 31.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085655, 34.306396, 31.551512>,  <31.727316, 34.482960, 30.907349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085655, 34.306396, 31.551512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898407, 34.659775, 31.543596>,  <31.786058, 34.871799, 31.538847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898407, 34.659775, 31.543596>,  <32.085655, 34.306396, 31.551512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898407, 34.659775, 31.543596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252535, -0.112287, 0.961050,
		0.846810, 0.454886, 0.275665,
		-0.468122, 0.883442, -0.019789,
		31.757971, 34.924809, 31.537659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280949, 34.574657, 32.167721>,  <32.085655, 34.306396, 31.551512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280949, 34.574657, 32.167721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953333, 34.768833, 32.045395>,  <31.756763, 34.885338, 31.972000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953333, 34.768833, 32.045395>,  <32.280949, 34.574657, 32.167721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953333, 34.768833, 32.045395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350065, -0.000529, 0.936725,
		0.454560, 0.874271, 0.170368,
		-0.819042, 0.485437, -0.305811,
		31.707621, 34.914463, 31.953651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135159, 34.911911, 32.734921>,  <32.280949, 34.574657, 32.167721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135159, 34.911911, 32.734921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795586, 34.969040, 32.531387>,  <31.591843, 35.003319, 32.409267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795586, 34.969040, 32.531387>,  <32.135159, 34.911911, 32.734921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795586, 34.969040, 32.531387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513131, 0.007758, 0.858275,
		0.126530, 0.989718, 0.066702,
		-0.848933, 0.142824, -0.508837,
		31.540905, 35.011887, 32.378735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818880, 35.519157, 33.029053>,  <32.135159, 34.911911, 32.734921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818880, 35.519157, 33.029053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531357, 35.329411, 32.825764>,  <31.358843, 35.215565, 32.703789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531357, 35.329411, 32.825764>,  <31.818880, 35.519157, 33.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531357, 35.329411, 32.825764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602945, 0.061454, 0.795412,
		-0.346082, 0.878181, -0.330189,
		-0.718807, -0.474364, -0.508227,
		31.315714, 35.187103, 32.673294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183353, 35.988968, 32.926220>,  <31.818880, 35.519157, 33.029053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183353, 35.988968, 32.926220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074152, 35.604759, 32.904823>,  <31.008631, 35.374233, 32.891987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074152, 35.604759, 32.904823>,  <31.183353, 35.988968, 32.926220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074152, 35.604759, 32.904823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627137, 0.135532, 0.767027,
		-0.729498, 0.242949, -0.639381,
		-0.273005, -0.960524, -0.053492,
		30.992250, 35.316601, 32.888775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433968, 35.915405, 32.974312>,  <31.183353, 35.988968, 32.926220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433968, 35.915405, 32.974312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559652, 35.547340, 33.067760>,  <30.635063, 35.326504, 33.123829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559652, 35.547340, 33.067760>,  <30.433968, 35.915405, 32.974312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559652, 35.547340, 33.067760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568842, 0.014531, 0.822319,
		-0.760059, -0.391274, -0.518859,
		0.314212, -0.920160, 0.233618,
		30.653915, 35.271294, 33.137844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826452, 35.471893, 32.936546>,  <30.433968, 35.915405, 32.974312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826452, 35.471893, 32.936546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093657, 35.303802, 33.182201>,  <30.253979, 35.202950, 33.329594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093657, 35.303802, 33.182201>,  <29.826452, 35.471893, 32.936546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093657, 35.303802, 33.182201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698827, -0.070637, 0.711794,
		-0.255732, -0.904666, -0.340851,
		0.668013, -0.420225, 0.614142,
		30.294060, 35.177734, 33.366444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472361, 35.078663, 33.269936>,  <29.826452, 35.471893, 32.936546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472361, 35.078663, 33.269936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793413, 35.046772, 33.506386>,  <29.986044, 35.027637, 33.648254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793413, 35.046772, 33.506386>,  <29.472361, 35.078663, 33.269936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793413, 35.046772, 33.506386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588589, -0.266488, 0.763248,
		0.096672, -0.960535, -0.260821,
		0.802631, -0.079731, 0.591123,
		30.034203, 35.022854, 33.683723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395617, 34.452488, 33.582859>,  <29.472361, 35.078663, 33.269936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395617, 34.452488, 33.582859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646399, 34.655327, 33.819427>,  <29.796867, 34.777031, 33.961369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646399, 34.655327, 33.819427>,  <29.395617, 34.452488, 33.582859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646399, 34.655327, 33.819427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529289, -0.279777, 0.800986,
		0.571647, -0.815213, 0.092996,
		0.626956, 0.507102, 0.591417,
		29.834486, 34.807457, 33.996853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552914, 33.950161, 34.188854>,  <29.395617, 34.452488, 33.582859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552914, 33.950161, 34.188854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687677, 34.308857, 34.303638>,  <29.768536, 34.524075, 34.372509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687677, 34.308857, 34.303638>,  <29.552914, 33.950161, 34.188854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687677, 34.308857, 34.303638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268200, -0.200745, 0.942216,
		0.902531, -0.394402, 0.172874,
		0.336908, 0.896743, 0.286957,
		29.788750, 34.577881, 34.389725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947041, 33.877705, 34.692909>,  <29.552914, 33.950161, 34.188854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947041, 33.877705, 34.692909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885080, 34.269127, 34.747231>,  <29.847904, 34.503979, 34.779823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885080, 34.269127, 34.747231>,  <29.947041, 33.877705, 34.692909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885080, 34.269127, 34.747231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058502, -0.146306, 0.987508,
		0.986197, 0.145020, 0.079910,
		-0.154899, 0.978552, 0.135802,
		29.838610, 34.562691, 34.787971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454464, 34.078850, 35.311928>,  <29.947041, 33.877705, 34.692909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454464, 34.078850, 35.311928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144081, 34.325333, 35.257999>,  <29.957851, 34.473221, 35.225643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144081, 34.325333, 35.257999>,  <30.454464, 34.078850, 35.311928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144081, 34.325333, 35.257999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232441, -0.080637, 0.969262,
		0.586395, 0.783445, 0.205803,
		-0.775959, 0.616208, -0.134819,
		29.911293, 34.510197, 35.217552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964144, 34.409988, 35.869900>,  <30.454464, 34.078850, 35.311928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964144, 34.409988, 35.869900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162128, 34.498394, 35.533764>,  <31.280920, 34.551437, 35.332085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162128, 34.498394, 35.533764>,  <30.964144, 34.409988, 35.869900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162128, 34.498394, 35.533764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858319, 0.026202, 0.512447,
		0.135276, -0.974919, -0.176730,
		0.494963, 0.221012, -0.840336,
		31.310617, 34.564697, 35.281662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388342, 33.931339, 35.682281>,  <30.964144, 34.409988, 35.869900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388342, 33.931339, 35.682281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581059, 34.247868, 35.531719>,  <31.696690, 34.437786, 35.441380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581059, 34.247868, 35.531719>,  <31.388342, 33.931339, 35.682281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581059, 34.247868, 35.531719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787080, -0.201963, 0.582852,
		0.385203, -0.577079, -0.720138,
		0.481793, 0.791322, -0.376410,
		31.725597, 34.485264, 35.418797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106152, 33.753273, 35.537918>,  <31.388342, 33.931339, 35.682281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106152, 33.753273, 35.537918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076458, 34.140884, 35.632126>,  <32.058643, 34.373451, 35.688652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076458, 34.140884, 35.632126>,  <32.106152, 33.753273, 35.537918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076458, 34.140884, 35.632126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639760, -0.134893, 0.756644,
		0.764981, 0.206846, -0.609933,
		-0.074233, 0.969030, 0.235522,
		32.054188, 34.431595, 35.702782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820065, 34.033989, 35.631165>,  <32.106152, 33.753273, 35.537918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820065, 34.033989, 35.631165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543015, 34.247490, 35.825230>,  <32.376785, 34.375591, 35.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543015, 34.247490, 35.825230>,  <32.820065, 34.033989, 35.631165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543015, 34.247490, 35.825230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541084, -0.060304, 0.838804,
		0.476970, 0.843489, -0.247036,
		-0.692624, 0.533751, 0.485161,
		32.335228, 34.407616, 35.970779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141613, 34.473850, 36.147339>,  <32.820065, 34.033989, 35.631165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141613, 34.473850, 36.147339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791874, 34.358929, 36.303787>,  <32.582031, 34.289974, 36.397655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791874, 34.358929, 36.303787>,  <33.141613, 34.473850, 36.147339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791874, 34.358929, 36.303787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364010, 0.144773, 0.920075,
		-0.320964, 0.946836, -0.022000,
		-0.874344, -0.287303, 0.391125,
		32.529572, 34.272739, 36.421124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085182, 34.925797, 36.658562>,  <33.141613, 34.473850, 36.147339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085182, 34.925797, 36.658562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857639, 34.612591, 36.759197>,  <32.721115, 34.424667, 36.819580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857639, 34.612591, 36.759197>,  <33.085182, 34.925797, 36.658562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857639, 34.612591, 36.759197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320675, 0.070526, 0.944560,
		-0.757345, 0.617996, 0.210973,
		-0.568855, -0.783011, 0.251589,
		32.686981, 34.377686, 36.834675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922314, 35.123508, 37.329590>,  <33.085182, 34.925797, 36.658562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922314, 35.123508, 37.329590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902386, 34.725079, 37.300323>,  <32.890427, 34.486019, 37.282764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902386, 34.725079, 37.300323>,  <32.922314, 35.123508, 37.329590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902386, 34.725079, 37.300323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361046, -0.086268, 0.928549,
		-0.931216, 0.019847, 0.363927,
		-0.049824, -0.996074, -0.073169,
		32.887440, 34.426258, 37.278374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404930, 34.854233, 37.814648>,  <32.922314, 35.123508, 37.329590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404930, 34.854233, 37.814648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669281, 34.560844, 37.751076>,  <32.827892, 34.384811, 37.712933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669281, 34.560844, 37.751076>,  <32.404930, 34.854233, 37.814648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669281, 34.560844, 37.751076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336895, 0.100702, 0.936142,
		-0.670629, -0.672218, 0.313655,
		0.660877, -0.733472, -0.158933,
		32.867546, 34.340801, 37.703396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426735, 34.447350, 38.494106>,  <32.404930, 34.854233, 37.814648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426735, 34.447350, 38.494106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756168, 34.337734, 38.295467>,  <32.953831, 34.271965, 38.176285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756168, 34.337734, 38.295467>,  <32.426735, 34.447350, 38.494106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756168, 34.337734, 38.295467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515179, -0.004832, 0.857069,
		-0.237268, -0.961707, 0.137199,
		0.823586, -0.274037, -0.496598,
		33.003242, 34.255524, 38.146488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783161, 33.928085, 38.933472>,  <32.426735, 34.447350, 38.494106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783161, 33.928085, 38.933472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057308, 34.110725, 38.706570>,  <33.221798, 34.220310, 38.570427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057308, 34.110725, 38.706570>,  <32.783161, 33.928085, 38.933472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057308, 34.110725, 38.706570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502858, 0.266665, 0.822207,
		0.526688, -0.848767, -0.046840,
		0.685371, 0.456600, -0.567258,
		33.262920, 34.247707, 38.536392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296059, 33.565182, 39.079384>,  <32.783161, 33.928085, 38.933472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296059, 33.565182, 39.079384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443657, 33.902916, 38.923981>,  <33.532215, 34.105556, 38.830738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443657, 33.902916, 38.923981>,  <33.296059, 33.565182, 39.079384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443657, 33.902916, 38.923981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623014, 0.085490, 0.777525,
		0.689707, -0.528947, -0.494489,
		0.368996, 0.844338, -0.388505,
		33.554356, 34.156216, 38.807430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017307, 33.592686, 39.327236>,  <33.296059, 33.565182, 39.079384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017307, 33.592686, 39.327236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970253, 33.967205, 39.194870>,  <33.942020, 34.191917, 39.115452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970253, 33.967205, 39.194870>,  <34.017307, 33.592686, 39.327236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970253, 33.967205, 39.194870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549283, 0.338958, 0.763803,
		0.827315, -0.091919, -0.554166,
		-0.117631, 0.936300, -0.330915,
		33.934963, 34.248096, 39.095596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683418, 33.900723, 39.272682>,  <34.017307, 33.592686, 39.327236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683418, 33.900723, 39.272682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413471, 34.190380, 39.329506>,  <34.251503, 34.364174, 39.363598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413471, 34.190380, 39.329506>,  <34.683418, 33.900723, 39.272682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413471, 34.190380, 39.329506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513028, 0.322025, 0.795677,
		0.530436, 0.609852, -0.588827,
		-0.674863, 0.724141, 0.142057,
		34.211014, 34.407623, 39.372124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909729, 34.539505, 39.331844>,  <34.683418, 33.900723, 39.272682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909729, 34.539505, 39.331844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567303, 34.604622, 39.528069>,  <34.361847, 34.643692, 39.645802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567303, 34.604622, 39.528069>,  <34.909729, 34.539505, 39.331844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567303, 34.604622, 39.528069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516742, 0.290372, 0.805395,
		-0.011332, 0.942965, -0.332700,
		-0.856066, 0.162793, 0.490560,
		34.310482, 34.653461, 39.675236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056248, 35.127678, 39.717712>,  <34.909729, 34.539505, 39.331844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056248, 35.127678, 39.717712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730003, 34.973774, 39.890568>,  <34.534256, 34.881432, 39.994282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730003, 34.973774, 39.890568>,  <35.056248, 35.127678, 39.717712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730003, 34.973774, 39.890568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321127, 0.320269, 0.891238,
		-0.481311, 0.865673, -0.137658,
		-0.815608, -0.384757, 0.432140,
		34.485321, 34.858345, 40.020210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962807, 35.606239, 40.259254>,  <35.056248, 35.127678, 39.717712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962807, 35.606239, 40.259254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756222, 35.276550, 40.352142>,  <34.632271, 35.078735, 40.407875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756222, 35.276550, 40.352142>,  <34.962807, 35.606239, 40.259254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756222, 35.276550, 40.352142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163649, 0.171186, 0.971552,
		-0.840528, 0.539771, 0.046472,
		-0.516461, -0.824222, 0.232219,
		34.601284, 35.029285, 40.421806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575085, 35.811993, 40.857838>,  <34.962807, 35.606239, 40.259254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575085, 35.811993, 40.857838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601578, 35.413055, 40.845676>,  <34.617474, 35.173695, 40.838379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601578, 35.413055, 40.845676>,  <34.575085, 35.811993, 40.857838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601578, 35.413055, 40.845676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266870, -0.011650, 0.963662,
		-0.961454, -0.071939, 0.265389,
		0.066233, -0.997341, -0.030399,
		34.621449, 35.113853, 40.836555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104378, 35.469635, 41.453442>,  <34.575085, 35.811993, 40.857838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104378, 35.469635, 41.453442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369221, 35.186348, 41.355431>,  <34.528126, 35.016376, 41.296623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369221, 35.186348, 41.355431>,  <34.104378, 35.469635, 41.453442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369221, 35.186348, 41.355431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300103, -0.049023, 0.952646,
		-0.686693, -0.704290, 0.180079,
		0.662111, -0.708218, -0.245023,
		34.567856, 34.973881, 41.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006790, 34.919479, 41.883415>,  <34.104378, 35.469635, 41.453442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006790, 34.919479, 41.883415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384956, 34.849201, 41.773640>,  <34.611858, 34.807034, 41.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384956, 34.849201, 41.773640>,  <34.006790, 34.919479, 41.883415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384956, 34.849201, 41.773640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256139, -0.119941, 0.959170,
		-0.201440, -0.977110, -0.068392,
		0.945418, -0.175697, -0.274437,
		34.668583, 34.796494, 41.691307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115665, 34.264492, 42.202713>,  <34.006790, 34.919479, 41.883415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115665, 34.264492, 42.202713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465847, 34.429672, 42.102276>,  <34.675957, 34.528782, 42.042015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465847, 34.429672, 42.102276>,  <34.115665, 34.264492, 42.202713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465847, 34.429672, 42.102276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388956, -0.293637, 0.873207,
		0.286864, -0.862118, -0.417687,
		0.875455, 0.412953, -0.251092,
		34.728485, 34.553558, 42.026947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589031, 33.708424, 42.283710>,  <34.115665, 34.264492, 42.202713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589031, 33.708424, 42.283710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801144, 34.047249, 42.298054>,  <34.928410, 34.250546, 42.306660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801144, 34.047249, 42.298054>,  <34.589031, 33.708424, 42.283710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801144, 34.047249, 42.298054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347601, -0.255793, 0.902077,
		0.773289, -0.465889, -0.430082,
		0.530280, 0.847064, 0.035858,
		34.960228, 34.301369, 42.308811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159752, 33.460308, 42.600872>,  <34.589031, 33.708424, 42.283710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159752, 33.460308, 42.600872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198486, 33.856369, 42.641319>,  <35.221725, 34.094006, 42.665588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198486, 33.856369, 42.641319>,  <35.159752, 33.460308, 42.600872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198486, 33.856369, 42.641319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460463, -0.134633, 0.877410,
		0.882382, -0.038401, -0.468964,
		0.096832, 0.990151, 0.101116,
		35.227535, 34.153416, 42.671654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766529, 33.536407, 42.774723>,  <35.159752, 33.460308, 42.600872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766529, 33.536407, 42.774723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573261, 33.860237, 42.908073>,  <35.457298, 34.054535, 42.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573261, 33.860237, 42.908073>,  <35.766529, 33.536407, 42.774723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573261, 33.860237, 42.908073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253187, -0.235305, 0.938364,
		0.838117, 0.537799, -0.091280,
		-0.483173, 0.809570, 0.333377,
		35.428310, 34.103107, 43.008087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237644, 33.899780, 43.211327>,  <35.766529, 33.536407, 42.774723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237644, 33.899780, 43.211327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878746, 34.043350, 43.314190>,  <35.663406, 34.129494, 43.375908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878746, 34.043350, 43.314190>,  <36.237644, 33.899780, 43.211327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878746, 34.043350, 43.314190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258161, -0.046050, 0.965004,
		0.358206, 0.932230, -0.051342,
		-0.897241, 0.358925, 0.257160,
		35.609573, 34.151028, 43.391338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339088, 34.415283, 43.735664>,  <36.237644, 33.899780, 43.211327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339088, 34.415283, 43.735664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961872, 34.289238, 43.778320>,  <35.735542, 34.213612, 43.803913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961872, 34.289238, 43.778320>,  <36.339088, 34.415283, 43.735664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961872, 34.289238, 43.778320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144080, -0.097937, 0.984707,
		-0.299852, 0.943986, 0.137761,
		-0.943042, -0.315116, 0.106643,
		35.678959, 34.194702, 43.810314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200451, 34.661346, 44.382095>,  <36.339088, 34.415283, 43.735664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200451, 34.661346, 44.382095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924072, 34.382271, 44.306393>,  <35.758244, 34.214825, 44.260971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924072, 34.382271, 44.306393>,  <36.200451, 34.661346, 44.382095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924072, 34.382271, 44.306393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003820, -0.258279, 0.966063,
		-0.722893, 0.668223, 0.175792,
		-0.690949, -0.697689, -0.189261,
		35.716789, 34.172966, 44.249615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763401, 34.776291, 44.887970>,  <36.200451, 34.661346, 44.382095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763401, 34.776291, 44.887970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714542, 34.396900, 44.771030>,  <35.685226, 34.169266, 44.700867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714542, 34.396900, 44.771030>,  <35.763401, 34.776291, 44.887970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714542, 34.396900, 44.771030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113119, -0.305937, 0.945308,
		-0.986044, 0.082400, 0.144661,
		-0.122150, -0.948479, -0.292347,
		35.677898, 34.112358, 44.683327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343224, 34.639149, 45.353004>,  <35.763401, 34.776291, 44.887970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343224, 34.639149, 45.353004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448059, 34.274303, 45.226921>,  <35.510960, 34.055397, 45.151272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448059, 34.274303, 45.226921>,  <35.343224, 34.639149, 45.353004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448059, 34.274303, 45.226921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012770, -0.323317, 0.946204,
		-0.964960, -0.252013, -0.073090,
		0.262087, -0.912116, -0.315206,
		35.526684, 34.000668, 45.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063164, 34.181927, 45.864426>,  <35.343224, 34.639149, 45.353004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063164, 34.181927, 45.864426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335632, 33.951733, 45.683399>,  <35.499115, 33.813614, 45.574783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335632, 33.951733, 45.683399>,  <35.063164, 34.181927, 45.864426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335632, 33.951733, 45.683399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060219, -0.572023, 0.818024,
		-0.729643, -0.584468, -0.354991,
		0.681172, -0.575488, -0.452569,
		35.539986, 33.779087, 45.547630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880829, 33.548061, 45.960815>,  <35.063164, 34.181927, 45.864426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880829, 33.548061, 45.960815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272346, 33.503002, 45.892372>,  <35.507256, 33.475967, 45.851307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272346, 33.503002, 45.892372>,  <34.880829, 33.548061, 45.960815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272346, 33.503002, 45.892372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088456, -0.520993, 0.848965,
		-0.184783, -0.846095, -0.499978,
		0.978791, -0.112648, -0.171112,
		35.565983, 33.469208, 45.841038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049210, 32.905815, 46.146633>,  <34.880829, 33.548061, 45.960815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049210, 32.905815, 46.146633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412338, 33.073147, 46.134846>,  <35.630215, 33.173546, 46.127773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412338, 33.073147, 46.134846>,  <35.049210, 32.905815, 46.146633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412338, 33.073147, 46.134846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257332, -0.500195, 0.826792,
		0.331130, -0.758160, -0.561735,
		0.907818, 0.418328, -0.029469,
		35.684685, 33.198647, 46.126003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460217, 32.369476, 46.319187>,  <35.049210, 32.905815, 46.146633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460217, 32.369476, 46.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702724, 32.684231, 46.365219>,  <35.848228, 32.873085, 46.392838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702724, 32.684231, 46.365219>,  <35.460217, 32.369476, 46.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702724, 32.684231, 46.365219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389885, -0.420228, 0.819389,
		0.693124, -0.451907, -0.561568,
		0.606274, 0.786885, 0.115078,
		35.884605, 32.920296, 46.399742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071999, 32.117916, 46.620895>,  <35.460217, 32.369476, 46.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071999, 32.117916, 46.620895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085133, 32.503414, 46.726814>,  <36.093014, 32.734715, 46.790367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085133, 32.503414, 46.726814>,  <36.071999, 32.117916, 46.620895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085133, 32.503414, 46.726814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382560, -0.256886, 0.887501,
		0.923347, 0.072158, -0.377125,
		0.032838, 0.963744, 0.264800,
		36.094986, 32.792538, 46.806255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627953, 32.072334, 47.066135>,  <36.071999, 32.117916, 46.620895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627953, 32.072334, 47.066135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459499, 32.427105, 47.142048>,  <36.358429, 32.639965, 47.187595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459499, 32.427105, 47.142048>,  <36.627953, 32.072334, 47.066135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459499, 32.427105, 47.142048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436152, 0.014571, 0.899755,
		0.795247, 0.461689, -0.392969,
		-0.421133, 0.886922, 0.189779,
		36.333160, 32.693180, 47.198982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125965, 32.563675, 47.276295>,  <36.627953, 32.072334, 47.066135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125965, 32.563675, 47.276295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792534, 32.727676, 47.424374>,  <36.592476, 32.826077, 47.513222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792534, 32.727676, 47.424374>,  <37.125965, 32.563675, 47.276295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792534, 32.727676, 47.424374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447559, 0.108470, 0.887651,
		0.323787, 0.905611, -0.273919,
		-0.833578, 0.410005, 0.370194,
		36.542461, 32.850677, 47.535431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321205, 33.179790, 47.601875>,  <37.125965, 32.563675, 47.276295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321205, 33.179790, 47.601875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966488, 33.106884, 47.771759>,  <36.753658, 33.063141, 47.873688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966488, 33.106884, 47.771759>,  <37.321205, 33.179790, 47.601875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966488, 33.106884, 47.771759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390743, 0.195082, 0.899590,
		-0.246820, 0.963702, -0.101777,
		-0.886792, -0.182268, 0.424710,
		36.700451, 33.052204, 47.899174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226780, 33.691559, 48.064777>,  <37.321205, 33.179790, 47.601875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226780, 33.691559, 48.064777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981804, 33.403004, 48.194099>,  <36.834820, 33.229870, 48.271694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981804, 33.403004, 48.194099>,  <37.226780, 33.691559, 48.064777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981804, 33.403004, 48.194099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315314, 0.152118, 0.936716,
		-0.724913, 0.675622, 0.134299,
		-0.612437, -0.721384, 0.323305,
		36.798073, 33.186588, 48.291092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851845, 33.932697, 48.641201>,  <37.226780, 33.691559, 48.064777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851845, 33.932697, 48.641201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826817, 33.534546, 48.670322>,  <36.811798, 33.295654, 48.687794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826817, 33.534546, 48.670322>,  <36.851845, 33.932697, 48.641201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826817, 33.534546, 48.670322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325453, 0.048605, 0.944308,
		-0.943486, 0.082779, 0.320909,
		-0.062571, -0.995382, 0.072799,
		36.808044, 33.235931, 48.692162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041538, 33.751595, 49.300438>,  <36.851845, 33.932697, 48.641201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041538, 33.751595, 49.300438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044903, 33.381252, 49.149319>,  <37.046921, 33.159046, 49.058647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044903, 33.381252, 49.149319>,  <37.041538, 33.751595, 49.300438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044903, 33.381252, 49.149319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197658, -0.368814, 0.908244,
		-0.980235, -0.082315, 0.179899,
		0.008412, -0.925851, -0.377795,
		37.047428, 33.103497, 49.035980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599087, 33.318336, 49.765045>,  <37.041538, 33.751595, 49.300438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599087, 33.318336, 49.765045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869720, 33.084953, 49.585350>,  <37.032101, 32.944923, 49.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869720, 33.084953, 49.585350>,  <36.599087, 33.318336, 49.765045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869720, 33.084953, 49.585350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154857, -0.483697, 0.861427,
		-0.719902, -0.652392, -0.236908,
		0.676579, -0.583457, -0.449242,
		37.072693, 32.909916, 49.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594440, 32.713375, 50.123970>,  <36.599087, 33.318336, 49.765045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594440, 32.713375, 50.123970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939987, 32.677769, 49.925655>,  <37.147316, 32.656403, 49.806667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939987, 32.677769, 49.925655>,  <36.594440, 32.713375, 50.123970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939987, 32.677769, 49.925655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369542, -0.556848, 0.743881,
		-0.342296, -0.825831, -0.448149,
		0.863871, -0.089018, -0.495786,
		37.199150, 32.651062, 49.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795654, 32.005054, 50.202713>,  <36.594440, 32.713375, 50.123970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795654, 32.005054, 50.202713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130184, 32.212276, 50.130962>,  <37.330902, 32.336609, 50.087914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130184, 32.212276, 50.130962>,  <36.795654, 32.005054, 50.202713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130184, 32.212276, 50.130962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464368, -0.495487, 0.734068,
		0.291410, -0.697216, -0.654958,
		0.836327, 0.518056, -0.179375,
		37.381081, 32.367695, 50.077148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314472, 31.528404, 50.138172>,  <36.795654, 32.005054, 50.202713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314472, 31.528404, 50.138172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496861, 31.865580, 50.252399>,  <37.606293, 32.067886, 50.320934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496861, 31.865580, 50.252399>,  <37.314472, 31.528404, 50.138172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496861, 31.865580, 50.252399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500946, -0.508287, 0.700498,
		0.735626, -0.176351, -0.654029,
		0.455969, 0.842938, 0.285567,
		37.633652, 32.118462, 50.338070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971016, 31.249493, 50.332035>,  <37.314472, 31.528404, 50.138172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971016, 31.249493, 50.332035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930260, 31.614830, 50.489731>,  <37.905807, 31.834032, 50.584347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930260, 31.614830, 50.489731>,  <37.971016, 31.249493, 50.332035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930260, 31.614830, 50.489731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486119, -0.300050, 0.820767,
		0.867932, 0.275276, -0.413421,
		-0.101890, 0.913342, 0.394240,
		37.899693, 31.888832, 50.608002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628632, 31.348417, 50.388966>,  <37.971016, 31.249493, 50.332035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628632, 31.348417, 50.388966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408237, 31.574699, 50.634369>,  <38.276001, 31.710468, 50.781612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408237, 31.574699, 50.634369>,  <38.628632, 31.348417, 50.388966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408237, 31.574699, 50.634369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409526, -0.457269, 0.789426,
		0.727123, 0.686208, 0.020275,
		-0.550981, 0.565707, 0.613510,
		38.242943, 31.744411, 50.818420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047321, 31.740969, 50.801430>,  <38.628632, 31.348417, 50.388966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047321, 31.740969, 50.801430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708748, 31.722685, 51.013641>,  <38.505604, 31.711714, 51.140968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708748, 31.722685, 51.013641>,  <39.047321, 31.740969, 50.801430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708748, 31.722685, 51.013641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516442, -0.313282, 0.796958,
		0.129778, 0.948560, 0.288778,
		-0.846431, -0.045709, 0.530533,
		38.454819, 31.708973, 51.172802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271240, 31.681051, 51.446110>,  <39.047321, 31.740969, 50.801430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271240, 31.681051, 51.446110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888630, 31.648750, 51.558205>,  <38.659061, 31.629370, 51.625462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888630, 31.648750, 51.558205>,  <39.271240, 31.681051, 51.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888630, 31.648750, 51.558205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290994, -0.328229, 0.898659,
		0.019412, 0.941140, 0.337459,
		-0.956528, -0.080754, 0.280237,
		38.601673, 31.624525, 51.642277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279785, 32.076637, 52.136219>,  <39.271240, 31.681051, 51.446110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279785, 32.076637, 52.136219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972603, 31.825491, 52.085575>,  <38.788292, 31.674803, 52.055191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972603, 31.825491, 52.085575>,  <39.279785, 32.076637, 52.136219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972603, 31.825491, 52.085575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160684, -0.380203, 0.910838,
		-0.620018, 0.679141, 0.392867,
		-0.767957, -0.627864, -0.126605,
		38.742214, 31.637133, 52.047592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835884, 32.132973, 52.644913>,  <39.279785, 32.076637, 52.136219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835884, 32.132973, 52.644913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769989, 31.764868, 52.502937>,  <38.730453, 31.544004, 52.417751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769989, 31.764868, 52.502937>,  <38.835884, 32.132973, 52.644913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769989, 31.764868, 52.502937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141944, -0.378223, 0.914767,
		-0.976071, 0.100313, 0.192932,
		-0.164734, -0.920263, -0.354934,
		38.720570, 31.488789, 52.396458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320492, 31.618816, 53.098217>,  <38.835884, 32.132973, 52.644913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320492, 31.618816, 53.098217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551254, 31.373848, 52.882023>,  <38.689713, 31.226868, 52.752308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551254, 31.373848, 52.882023>,  <38.320492, 31.618816, 53.098217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551254, 31.373848, 52.882023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140594, -0.577371, 0.804286,
		-0.804619, -0.539986, -0.246986,
		0.576906, -0.612419, -0.540483,
		38.724327, 31.190123, 52.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073071, 30.942888, 53.090092>,  <38.320492, 31.618816, 53.098217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073071, 30.942888, 53.090092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469002, 30.984304, 53.051067>,  <38.706562, 31.009153, 53.027653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469002, 30.984304, 53.051067>,  <38.073071, 30.942888, 53.090092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469002, 30.984304, 53.051067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131743, -0.408396, 0.903248,
		0.053679, -0.906914, -0.417883,
		0.989830, 0.103539, -0.097557,
		38.765949, 31.015366, 53.021801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261940, 30.775896, 53.809479>,  <38.073071, 30.942888, 53.090092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261940, 30.775896, 53.809479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581650, 30.832657, 53.575886>,  <38.773476, 30.866713, 53.435730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581650, 30.832657, 53.575886>,  <38.261940, 30.775896, 53.809479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581650, 30.832657, 53.575886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584802, -0.407536, 0.701370,
		-0.138467, -0.902097, -0.408716,
		0.799270, 0.141901, -0.583979,
		38.821430, 30.875227, 53.400692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608616, 30.182495, 53.691551>,  <38.261940, 30.775896, 53.809479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608616, 30.182495, 53.691551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888283, 30.468046, 53.675816>,  <39.056084, 30.639376, 53.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888283, 30.468046, 53.675816>,  <38.608616, 30.182495, 53.691551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888283, 30.468046, 53.675816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321521, -0.264793, 0.909125,
		0.638586, -0.648278, -0.414660,
		0.699166, 0.713876, -0.039342,
		39.098034, 30.682209, 53.664013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232903, 29.956291, 53.716827>,  <38.608616, 30.182495, 53.691551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232903, 29.956291, 53.716827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253101, 30.318466, 53.885414>,  <39.265221, 30.535772, 53.986565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253101, 30.318466, 53.885414>,  <39.232903, 29.956291, 53.716827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253101, 30.318466, 53.885414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398196, -0.405260, 0.822924,
		0.915910, 0.126274, -0.381005,
		0.050492, 0.905439, 0.421463,
		39.268250, 30.590097, 54.011852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981205, 29.405064, 53.236263>,  <39.232903, 29.956291, 53.716827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981205, 29.405064, 53.236263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307709, 29.299469, 53.030727>,  <39.503609, 29.236113, 52.907406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307709, 29.299469, 53.030727>,  <38.981205, 29.405064, 53.236263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307709, 29.299469, 53.030727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534409, -0.007263, -0.845195,
		0.219389, 0.964499, -0.147006,
		0.816257, -0.263988, -0.513844,
		39.552586, 29.220272, 52.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113991, 29.838890, 52.532780>,  <38.981205, 29.405064, 53.236263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113991, 29.838890, 52.532780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281334, 29.476292, 52.510017>,  <39.381741, 29.258732, 52.496361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281334, 29.476292, 52.510017>,  <39.113991, 29.838890, 52.532780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281334, 29.476292, 52.510017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498349, -0.176714, -0.848775,
		0.759358, 0.383450, -0.525683,
		0.418359, -0.906498, -0.056903,
		39.406841, 29.204342, 52.492947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570148, 29.864220, 52.044800>,  <39.113991, 29.838890, 52.532780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570148, 29.864220, 52.044800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434891, 29.489065, 52.075851>,  <39.353737, 29.263971, 52.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434891, 29.489065, 52.075851>,  <39.570148, 29.864220, 52.044800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434891, 29.489065, 52.075851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420054, 0.076601, -0.904261,
		0.842148, -0.338378, -0.419865,
		-0.338144, -0.937887, 0.077627,
		39.333447, 29.207699, 52.099140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716793, 29.496582, 51.443439>,  <39.570148, 29.864220, 52.044800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716793, 29.496582, 51.443439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409695, 29.309031, 51.618126>,  <39.225437, 29.196501, 51.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409695, 29.309031, 51.618126>,  <39.716793, 29.496582, 51.443439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409695, 29.309031, 51.618126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341072, -0.277930, -0.898011,
		0.542433, -0.838396, 0.053459,
		-0.767747, -0.468878, 0.436712,
		39.179371, 29.168367, 51.749138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596375, 28.824854, 51.116795>,  <39.716793, 29.496582, 51.443439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596375, 28.824854, 51.116795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273476, 29.012796, 51.259674>,  <39.079735, 29.125561, 51.345402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273476, 29.012796, 51.259674>,  <39.596375, 28.824854, 51.116795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273476, 29.012796, 51.259674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476502, -0.161699, -0.864176,
		-0.348279, -0.867808, 0.354418,
		-0.807247, 0.469855, 0.357195,
		39.031300, 29.153753, 51.366833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923878, 28.446217, 51.020859>,  <39.596375, 28.824854, 51.116795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923878, 28.446217, 51.020859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861015, 28.841246, 51.020695>,  <38.823299, 29.078264, 51.020596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861015, 28.841246, 51.020695>,  <38.923878, 28.446217, 51.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861015, 28.841246, 51.020695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302474, -0.048528, -0.951921,
		-0.940113, -0.149477, 0.306342,
		-0.157156, 0.987574, -0.000409,
		38.813869, 29.137518, 51.020573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192120, 28.583984, 50.824039>,  <38.923878, 28.446217, 51.020859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192120, 28.583984, 50.824039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399754, 28.913696, 50.733604>,  <38.524334, 29.111523, 50.679344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399754, 28.913696, 50.733604>,  <38.192120, 28.583984, 50.824039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399754, 28.913696, 50.733604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279776, -0.086079, -0.956199,
		-0.807635, 0.559603, 0.185931,
		0.519087, 0.824278, -0.226084,
		38.555481, 29.160980, 50.665779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728016, 28.979509, 50.385712>,  <38.192120, 28.583984, 50.824039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728016, 28.979509, 50.385712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091339, 29.135408, 50.324959>,  <38.309334, 29.228949, 50.288506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091339, 29.135408, 50.324959>,  <37.728016, 28.979509, 50.385712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091339, 29.135408, 50.324959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216922, 0.128423, -0.967705,
		-0.357655, 0.911923, 0.201193,
		0.908310, 0.389748, -0.151886,
		38.363831, 29.252333, 50.279392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551647, 29.628195, 50.068298>,  <37.728016, 28.979509, 50.385712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551647, 29.628195, 50.068298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925201, 29.498573, 50.007828>,  <38.149334, 29.420799, 49.971546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925201, 29.498573, 50.007828>,  <37.551647, 29.628195, 50.068298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925201, 29.498573, 50.007828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099982, 0.169267, -0.980486,
		0.343321, 0.930772, 0.125676,
		0.933881, -0.324056, -0.151174,
		38.205364, 29.401356, 49.962475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855774, 30.161404, 49.648109>,  <37.551647, 29.628195, 50.068298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855774, 30.161404, 49.648109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076435, 29.832582, 49.591682>,  <38.208832, 29.635290, 49.557827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076435, 29.832582, 49.591682>,  <37.855774, 30.161404, 49.648109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076435, 29.832582, 49.591682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215404, 0.022981, -0.976255,
		0.805776, 0.568945, -0.164396,
		0.551657, -0.822054, -0.141071,
		38.241932, 29.585966, 49.549362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246723, 30.383989, 49.071087>,  <37.855774, 30.161404, 49.648109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246723, 30.383989, 49.071087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273678, 29.985270, 49.088299>,  <38.289848, 29.746038, 49.098625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273678, 29.985270, 49.088299>,  <38.246723, 30.383989, 49.071087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273678, 29.985270, 49.088299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204410, -0.056008, -0.977282,
		0.976563, 0.057057, -0.207530,
		0.067384, -0.996799, 0.043033,
		38.293892, 29.686230, 49.101208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799133, 30.170740, 48.573189>,  <38.246723, 30.383989, 49.071087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799133, 30.170740, 48.573189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563015, 29.853045, 48.630787>,  <38.421345, 29.662428, 48.665344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563015, 29.853045, 48.630787>,  <38.799133, 30.170740, 48.573189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563015, 29.853045, 48.630787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028817, -0.157542, -0.987092,
		0.806673, -0.586825, 0.070109,
		-0.590295, -0.794239, 0.143996,
		38.385925, 29.614773, 48.673985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170345, 29.696753, 48.236706>,  <38.799133, 30.170740, 48.573189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170345, 29.696753, 48.236706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805191, 29.538429, 48.276657>,  <38.586098, 29.443436, 48.300629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805191, 29.538429, 48.276657>,  <39.170345, 29.696753, 48.236706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805191, 29.538429, 48.276657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084943, -0.055130, -0.994860,
		0.399282, -0.916676, 0.016706,
		-0.912885, -0.395811, 0.099877,
		38.531326, 29.419687, 48.306622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204456, 29.198870, 47.747250>,  <39.170345, 29.696753, 48.236706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204456, 29.198870, 47.747250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811134, 29.224545, 47.815350>,  <38.575142, 29.239950, 47.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811134, 29.224545, 47.815350>,  <39.204456, 29.198870, 47.747250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811134, 29.224545, 47.815350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176892, -0.118297, -0.977095,
		-0.042576, -0.990901, 0.127677,
		-0.983309, 0.064186, 0.170246,
		38.516140, 29.243801, 47.866425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957355, 28.830976, 47.205544>,  <39.204456, 29.198870, 47.747250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957355, 28.830976, 47.205544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632385, 29.028563, 47.329456>,  <38.437405, 29.147114, 47.403805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632385, 29.028563, 47.329456>,  <38.957355, 28.830976, 47.205544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632385, 29.028563, 47.329456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369703, -0.025569, -0.928798,
		-0.450873, -0.869105, 0.203393,
		-0.812424, 0.493965, 0.309782,
		38.388657, 29.176752, 47.422390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360481, 28.650921, 46.749596>,  <38.957355, 28.830976, 47.205544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360481, 28.650921, 46.749596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255791, 29.004034, 46.905643>,  <38.192978, 29.215902, 46.999271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255791, 29.004034, 46.905643>,  <38.360481, 28.650921, 46.749596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255791, 29.004034, 46.905643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437552, 0.251757, -0.863230,
		-0.860259, -0.396631, 0.320371,
		-0.261728, 0.882781, 0.390123,
		38.177273, 29.268867, 47.022682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660454, 28.824913, 46.457569>,  <38.360481, 28.650921, 46.749596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660454, 28.824913, 46.457569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865906, 29.152672, 46.559368>,  <37.989178, 29.349327, 46.620449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865906, 29.152672, 46.559368>,  <37.660454, 28.824913, 46.457569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865906, 29.152672, 46.559368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260180, 0.431391, -0.863834,
		-0.817611, 0.377478, 0.434767,
		0.513633, 0.819398, 0.254498,
		38.019997, 29.398491, 46.635719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180565, 29.409760, 46.497829>,  <37.660454, 28.824913, 46.457569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180565, 29.409760, 46.497829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549099, 29.556280, 46.445717>,  <37.770218, 29.644192, 46.414448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549099, 29.556280, 46.445717>,  <37.180565, 29.409760, 46.497829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549099, 29.556280, 46.445717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282167, 0.399480, -0.872237,
		-0.267454, 0.840381, 0.471411,
		0.921331, 0.366300, -0.130285,
		37.825497, 29.666170, 46.406631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996933, 30.032780, 46.314110>,  <37.180565, 29.409760, 46.497829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996933, 30.032780, 46.314110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368633, 29.963717, 46.183464>,  <37.591656, 29.922277, 46.105076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368633, 29.963717, 46.183464>,  <36.996933, 30.032780, 46.314110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368633, 29.963717, 46.183464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219216, 0.453925, -0.863653,
		0.297376, 0.874151, 0.383962,
		0.929253, -0.172659, -0.326614,
		37.647408, 29.911919, 46.085480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266899, 30.688690, 46.045113>,  <36.996933, 30.032780, 46.314110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266899, 30.688690, 46.045113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500324, 30.401459, 45.893417>,  <37.640381, 30.229120, 45.802402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500324, 30.401459, 45.893417>,  <37.266899, 30.688690, 46.045113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500324, 30.401459, 45.893417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092155, 0.405424, -0.909472,
		0.806823, 0.565682, 0.170415,
		0.583562, -0.718078, -0.379236,
		37.675392, 30.186035, 45.779648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650288, 31.041313, 45.514034>,  <37.266899, 30.688690, 46.045113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650288, 31.041313, 45.514034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675011, 30.655315, 45.412083>,  <37.689846, 30.423716, 45.350914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675011, 30.655315, 45.412083>,  <37.650288, 31.041313, 45.514034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675011, 30.655315, 45.412083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198835, 0.238339, -0.950610,
		0.978082, 0.109436, -0.177144,
		0.061811, -0.964996, -0.254875,
		37.693554, 30.365816, 45.335621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030899, 30.961874, 44.900948>,  <37.650288, 31.041313, 45.514034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030899, 30.961874, 44.900948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810139, 30.629145, 44.924534>,  <37.677685, 30.429506, 44.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810139, 30.629145, 44.924534>,  <38.030899, 30.961874, 44.900948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810139, 30.629145, 44.924534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388986, 0.194251, -0.900531,
		0.737631, -0.519936, -0.430775,
		-0.551897, -0.831825, 0.058962,
		37.644569, 30.379597, 44.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038010, 30.749399, 44.187607>,  <38.030899, 30.961874, 44.900948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038010, 30.749399, 44.187607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765553, 30.490711, 44.324898>,  <37.602077, 30.335499, 44.407272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765553, 30.490711, 44.324898>,  <38.038010, 30.749399, 44.187607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765553, 30.490711, 44.324898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337772, -0.138355, -0.931004,
		0.649584, -0.750076, -0.124204,
		-0.681139, -0.646718, 0.343228,
		37.561211, 30.296696, 44.427868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951962, 30.164410, 43.776749>,  <38.038010, 30.749399, 44.187607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951962, 30.164410, 43.776749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595345, 30.187695, 43.956421>,  <37.381374, 30.201666, 44.064224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595345, 30.187695, 43.956421>,  <37.951962, 30.164410, 43.776749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595345, 30.187695, 43.956421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451637, -0.189377, -0.871872,
		0.034313, -0.980178, 0.195127,
		-0.891542, 0.058210, 0.449182,
		37.327881, 30.205158, 44.091175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588741, 29.470728, 43.628555>,  <37.951962, 30.164410, 43.776749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588741, 29.470728, 43.628555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322906, 29.756094, 43.717430>,  <37.163406, 29.927313, 43.770756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322906, 29.756094, 43.717430>,  <37.588741, 29.470728, 43.628555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322906, 29.756094, 43.717430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435322, -0.127995, -0.891130,
		-0.607308, -0.688953, 0.395629,
		-0.664585, 0.713416, 0.222183,
		37.123531, 29.970119, 43.784084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836872, 29.184671, 43.540199>,  <37.588741, 29.470728, 43.628555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836872, 29.184671, 43.540199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788033, 29.581678, 43.540417>,  <36.758728, 29.819883, 43.540546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788033, 29.581678, 43.540417>,  <36.836872, 29.184671, 43.540199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788033, 29.581678, 43.540417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575547, -0.070359, -0.814737,
		-0.808602, -0.099792, 0.579831,
		-0.122100, 0.992518, 0.000543,
		36.751404, 29.879435, 43.540581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070126, 29.285213, 43.420223>,  <36.836872, 29.184671, 43.540199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070126, 29.285213, 43.420223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253609, 29.621376, 43.304775>,  <36.363697, 29.823074, 43.235504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253609, 29.621376, 43.304775>,  <36.070126, 29.285213, 43.420223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253609, 29.621376, 43.304775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536036, 0.002656, -0.844191,
		-0.708697, 0.541950, 0.451707,
		0.458709, 0.840407, -0.288622,
		36.391220, 29.873499, 43.218189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530575, 29.626772, 43.091572>,  <36.070126, 29.285213, 43.420223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530575, 29.626772, 43.091572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856327, 29.833807, 42.986580>,  <36.051777, 29.958029, 42.923584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856327, 29.833807, 42.986580>,  <35.530575, 29.626772, 43.091572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856327, 29.833807, 42.986580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420272, 0.214095, -0.881779,
		-0.400203, 0.828411, 0.391882,
		0.814376, 0.517588, -0.262477,
		36.100639, 29.989084, 42.907837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334549, 30.286942, 42.770081>,  <35.530575, 29.626772, 43.091572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334549, 30.286942, 42.770081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709415, 30.259640, 42.633224>,  <35.934334, 30.243259, 42.551109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709415, 30.259640, 42.633224>,  <35.334549, 30.286942, 42.770081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709415, 30.259640, 42.633224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288126, 0.401575, -0.869322,
		0.196729, 0.913279, 0.356677,
		0.937167, -0.068253, -0.342141,
		35.990566, 30.239164, 42.530582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526821, 30.944069, 42.482208>,  <35.334549, 30.286942, 42.770081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526821, 30.944069, 42.482208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789192, 30.708834, 42.292927>,  <35.946613, 30.567694, 42.179359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789192, 30.708834, 42.292927>,  <35.526821, 30.944069, 42.482208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789192, 30.708834, 42.292927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320412, 0.350691, -0.879973,
		0.683446, 0.728815, 0.041597,
		0.655925, -0.588086, -0.473199,
		35.985970, 30.532408, 42.150967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819748, 31.326876, 42.035343>,  <35.526821, 30.944069, 42.482208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819748, 31.326876, 42.035343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871918, 30.961899, 41.880199>,  <35.903221, 30.742912, 41.787113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871918, 30.961899, 41.880199>,  <35.819748, 31.326876, 42.035343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871918, 30.961899, 41.880199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266689, 0.344497, -0.900110,
		0.954917, 0.220836, -0.198407,
		0.130426, -0.912443, -0.387861,
		35.911045, 30.688166, 41.763840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229912, 31.424469, 41.543095>,  <35.819748, 31.326876, 42.035343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229912, 31.424469, 41.543095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074184, 31.070505, 41.440826>,  <35.980747, 30.858128, 41.379463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074184, 31.070505, 41.440826>,  <36.229912, 31.424469, 41.543095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074184, 31.070505, 41.440826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205664, 0.354077, -0.912322,
		0.897849, -0.302602, -0.319843,
		-0.389319, -0.884908, -0.255673,
		35.957390, 30.805033, 41.364124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556858, 31.260677, 40.905804>,  <36.229912, 31.424469, 41.543095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556858, 31.260677, 40.905804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230873, 31.029169, 40.917561>,  <36.035282, 30.890265, 40.924614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230873, 31.029169, 40.917561>,  <36.556858, 31.260677, 40.905804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230873, 31.029169, 40.917561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142209, 0.150563, -0.978319,
		0.561797, -0.801471, -0.205009,
		-0.814961, -0.578770, 0.029391,
		35.986385, 30.855537, 40.926376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679039, 30.803410, 40.475796>,  <36.556858, 31.260677, 40.905804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679039, 30.803410, 40.475796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282612, 30.825247, 40.524452>,  <36.044754, 30.838350, 40.553646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282612, 30.825247, 40.524452>,  <36.679039, 30.803410, 40.475796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282612, 30.825247, 40.524452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110568, 0.173281, -0.978646,
		-0.074508, -0.983358, -0.165697,
		-0.991071, 0.054596, 0.121639,
		35.985291, 30.841625, 40.560944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328735, 30.502951, 39.895290>,  <36.679039, 30.803410, 40.475796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328735, 30.502951, 39.895290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039555, 30.738964, 40.039074>,  <35.866047, 30.880571, 40.125343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039555, 30.738964, 40.039074>,  <36.328735, 30.502951, 39.895290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039555, 30.738964, 40.039074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243308, 0.269518, -0.931752,
		-0.646645, -0.761065, -0.051287,
		-0.722947, 0.590034, 0.359455,
		35.822670, 30.915974, 40.146912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714653, 30.425898, 39.424698>,  <36.328735, 30.502951, 39.895290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714653, 30.425898, 39.424698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613430, 30.751717, 39.633495>,  <35.552696, 30.947208, 39.758774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613430, 30.751717, 39.633495>,  <35.714653, 30.425898, 39.424698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613430, 30.751717, 39.633495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470039, 0.368074, -0.802238,
		-0.845591, -0.448371, 0.289723,
		-0.253060, 0.814546, 0.521992,
		35.537510, 30.996080, 39.790092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982010, 30.567377, 39.245945>,  <35.714653, 30.425898, 39.424698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982010, 30.567377, 39.245945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114685, 30.906908, 39.410614>,  <35.194290, 31.110626, 39.509415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114685, 30.906908, 39.410614>,  <34.982010, 30.567377, 39.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114685, 30.906908, 39.410614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400261, 0.521776, -0.753353,
		-0.854267, 0.085103, 0.512821,
		0.331690, 0.848827, 0.411672,
		35.214191, 31.161556, 39.534115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369263, 31.054798, 39.235546>,  <34.982010, 30.567377, 39.245945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369263, 31.054798, 39.235546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708218, 31.264862, 39.266895>,  <34.911591, 31.390902, 39.285706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708218, 31.264862, 39.266895>,  <34.369263, 31.054798, 39.235546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708218, 31.264862, 39.266895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394730, 0.721768, -0.568541,
		-0.355140, 0.450839, 0.818914,
		0.847386, 0.525162, 0.078370,
		34.962433, 31.422411, 39.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144962, 31.707851, 39.238171>,  <34.369263, 31.054798, 39.235546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144962, 31.707851, 39.238171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523510, 31.719877, 39.109493>,  <34.750637, 31.727093, 39.032288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523510, 31.719877, 39.109493>,  <34.144962, 31.707851, 39.238171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523510, 31.719877, 39.109493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296785, 0.474418, -0.828762,
		0.127700, 0.879786, 0.457896,
		0.946367, 0.030064, -0.321691,
		34.807419, 31.728897, 39.012985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107491, 32.385040, 38.862915>,  <34.144962, 31.707851, 39.238171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107491, 32.385040, 38.862915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430321, 32.183472, 38.739830>,  <34.624020, 32.062531, 38.665977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430321, 32.183472, 38.739830>,  <34.107491, 32.385040, 38.862915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430321, 32.183472, 38.739830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060123, 0.448306, -0.891856,
		0.587377, 0.738297, 0.331520,
		0.807077, -0.503924, -0.307713,
		34.672443, 32.032295, 38.647514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641998, 32.922451, 38.538853>,  <34.107491, 32.385040, 38.862915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641998, 32.922451, 38.538853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736057, 32.563927, 38.388474>,  <34.792492, 32.348812, 38.298248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736057, 32.563927, 38.388474>,  <34.641998, 32.922451, 38.538853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736057, 32.563927, 38.388474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009054, 0.388795, -0.921280,
		0.971917, 0.213236, 0.099541,
		0.235151, -0.896308, -0.375946,
		34.806602, 32.295033, 38.275688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251316, 33.128002, 38.129112>,  <34.641998, 32.922451, 38.538853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251316, 33.128002, 38.129112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107143, 32.778774, 37.997753>,  <35.020641, 32.569237, 37.918938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107143, 32.778774, 37.997753>,  <35.251316, 33.128002, 38.129112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107143, 32.778774, 37.997753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119641, 0.305884, -0.944522,
		0.925081, -0.379725, -0.005795,
		-0.360431, -0.873066, -0.328398,
		34.999016, 32.516853, 37.899235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635582, 32.968716, 37.500298>,  <35.251316, 33.128002, 38.129112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635582, 32.968716, 37.500298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326908, 32.716316, 37.468460>,  <35.141705, 32.564877, 37.449356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326908, 32.716316, 37.468460>,  <35.635582, 32.968716, 37.500298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326908, 32.716316, 37.468460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005193, 0.118896, -0.992893,
		0.635981, -0.766616, -0.088474,
		-0.771687, -0.631002, -0.079597,
		35.095402, 32.527016, 37.444580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839642, 32.367214, 37.178616>,  <35.635582, 32.968716, 37.500298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839642, 32.367214, 37.178616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447102, 32.390285, 37.105278>,  <35.211578, 32.404129, 37.061275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447102, 32.390285, 37.105278>,  <35.839642, 32.367214, 37.178616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447102, 32.390285, 37.105278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184200, 0.009799, -0.982840,
		-0.054896, -0.998287, -0.020242,
		-0.981355, 0.057682, -0.183347,
		35.152695, 32.407589, 37.050274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396816, 32.697041, 37.479961>,  <35.839642, 32.367214, 37.178616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396816, 32.697041, 37.479961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577709, 32.538879, 37.160175>,  <36.686245, 32.443985, 36.968304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577709, 32.538879, 37.160175>,  <36.396816, 32.697041, 37.479961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577709, 32.538879, 37.160175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713301, -0.377767, 0.590333,
		-0.535428, -0.837228, 0.111198,
		0.452237, -0.395399, -0.799463,
		36.713379, 32.420261, 36.920338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527416, 32.001541, 37.572575>,  <36.396816, 32.697041, 37.479961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527416, 32.001541, 37.572575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826321, 32.094261, 37.323460>,  <37.005665, 32.149895, 37.173992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826321, 32.094261, 37.323460>,  <36.527416, 32.001541, 37.572575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826321, 32.094261, 37.323460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650308, -0.447933, 0.613560,
		-0.136742, -0.863495, -0.485468,
		0.747263, 0.231804, -0.622788,
		37.050499, 32.163803, 37.136623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824665, 31.399220, 37.340073>,  <36.527416, 32.001541, 37.572575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824665, 31.399220, 37.340073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094742, 31.693104, 37.313801>,  <37.256790, 31.869434, 37.298038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094742, 31.693104, 37.313801>,  <36.824665, 31.399220, 37.340073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094742, 31.693104, 37.313801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560822, -0.453463, 0.692712,
		0.479158, -0.504552, -0.718217,
		0.675194, 0.734710, -0.065684,
		37.297298, 31.913517, 37.294094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539871, 31.093512, 37.208382>,  <36.824665, 31.399220, 37.340073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539871, 31.093512, 37.208382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603554, 31.455582, 37.366020>,  <37.641762, 31.672825, 37.460602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603554, 31.455582, 37.366020>,  <37.539871, 31.093512, 37.208382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603554, 31.455582, 37.366020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672908, -0.391584, 0.627581,
		0.722392, 0.165276, -0.671442,
		0.159202, 0.905177, 0.394092,
		37.651314, 31.727135, 37.484249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318165, 31.107403, 37.230473>,  <37.539871, 31.093512, 37.208382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318165, 31.107403, 37.230473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197891, 31.396383, 37.479519>,  <38.125729, 31.569771, 37.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197891, 31.396383, 37.479519>,  <38.318165, 31.107403, 37.230473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197891, 31.396383, 37.479519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727351, -0.248560, 0.639671,
		0.616889, 0.645199, -0.450739,
		-0.300680, 0.722451, 0.622620,
		38.107689, 31.613119, 37.666306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950279, 31.294941, 37.582680>,  <38.318165, 31.107403, 37.230473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950279, 31.294941, 37.582680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669106, 31.453173, 37.819122>,  <38.500401, 31.548111, 37.960987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669106, 31.453173, 37.819122>,  <38.950279, 31.294941, 37.582680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669106, 31.453173, 37.819122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553163, -0.218370, 0.803944,
		0.447102, 0.892095, -0.065319,
		-0.702930, 0.395577, 0.591108,
		38.458225, 31.571846, 37.996456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205940, 31.798986, 38.076694>,  <38.950279, 31.294941, 37.582680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205940, 31.798986, 38.076694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872704, 31.643831, 38.234428>,  <38.672760, 31.550739, 38.329067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872704, 31.643831, 38.234428>,  <39.205940, 31.798986, 38.076694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872704, 31.643831, 38.234428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522492, -0.317856, 0.791183,
		-0.181547, 0.865166, 0.467471,
		-0.833092, -0.387887, 0.394336,
		38.622776, 31.527466, 38.352730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250702, 31.871241, 38.811451>,  <39.205940, 31.798986, 38.076694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250702, 31.871241, 38.811451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937878, 31.621986, 38.807896>,  <38.750183, 31.472433, 38.805763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937878, 31.621986, 38.807896>,  <39.250702, 31.871241, 38.811451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937878, 31.621986, 38.807896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219760, -0.289100, 0.931733,
		-0.583166, 0.726721, 0.363034,
		-0.782064, -0.623135, -0.008889,
		38.703259, 31.435045, 38.805229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822876, 32.071510, 39.325901>,  <39.250702, 31.871241, 38.811451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822876, 32.071510, 39.325901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766403, 31.684635, 39.241405>,  <38.732521, 31.452511, 39.190708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766403, 31.684635, 39.241405>,  <38.822876, 32.071510, 39.325901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766403, 31.684635, 39.241405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319479, -0.246475, 0.914977,
		-0.937017, 0.061689, 0.343793,
		-0.141181, -0.967184, -0.211243,
		38.724049, 31.394480, 39.178032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601334, 31.772533, 40.008595>,  <38.822876, 32.071510, 39.325901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601334, 31.772533, 40.008595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718456, 31.459423, 39.788948>,  <38.788731, 31.271557, 39.657162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718456, 31.459423, 39.788948>,  <38.601334, 31.772533, 40.008595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718456, 31.459423, 39.788948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374730, -0.434400, 0.819069,
		-0.879683, -0.445598, 0.166134,
		0.292807, -0.782776, -0.549114,
		38.806297, 31.224590, 39.624214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259430, 31.200359, 40.366062>,  <38.601334, 31.772533, 40.008595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259430, 31.200359, 40.366062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570187, 31.081692, 40.143917>,  <38.756641, 31.010490, 40.010632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570187, 31.081692, 40.143917>,  <38.259430, 31.200359, 40.366062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570187, 31.081692, 40.143917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352962, -0.525202, 0.774326,
		-0.521388, -0.797592, -0.303318,
		0.776899, -0.296665, -0.555353,
		38.803253, 30.992691, 39.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200531, 30.531691, 40.425163>,  <38.259430, 31.200359, 40.366062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200531, 30.531691, 40.425163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572464, 30.634905, 40.320217>,  <38.795624, 30.696833, 40.257248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572464, 30.634905, 40.320217>,  <38.200531, 30.531691, 40.425163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572464, 30.634905, 40.320217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364057, -0.541080, 0.758086,
		0.053652, -0.800407, -0.597052,
		0.929830, 0.258034, -0.262364,
		38.851414, 30.712315, 40.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571686, 29.928303, 40.313538>,  <38.200531, 30.531691, 40.425163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571686, 29.928303, 40.313538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851185, 30.200308, 40.402382>,  <39.018883, 30.363510, 40.455688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851185, 30.200308, 40.402382>,  <38.571686, 29.928303, 40.313538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851185, 30.200308, 40.402382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246321, -0.520210, 0.817745,
		0.671624, -0.516685, -0.530997,
		0.698747, 0.680013, 0.222115,
		39.060810, 30.404312, 40.469017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027763, 29.532108, 40.682953>,  <38.571686, 29.928303, 40.313538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027763, 29.532108, 40.682953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157330, 29.904526, 40.750168>,  <39.235069, 30.127975, 40.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157330, 29.904526, 40.750168>,  <39.027763, 29.532108, 40.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157330, 29.904526, 40.750168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312524, -0.272943, 0.909852,
		0.892976, -0.242202, -0.379385,
		0.323919, 0.931043, 0.168037,
		39.254505, 30.183838, 40.800579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713135, 29.443110, 41.028023>,  <39.027763, 29.532108, 40.682953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713135, 29.443110, 41.028023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566250, 29.805920, 41.110451>,  <39.478119, 30.023605, 41.159908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566250, 29.805920, 41.110451>,  <39.713135, 29.443110, 41.028023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566250, 29.805920, 41.110451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271236, -0.107497, 0.956491,
		0.889712, 0.407127, -0.206544,
		-0.367210, 0.907024, 0.206069,
		39.456085, 30.078026, 41.172272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139301, 29.669172, 41.475922>,  <39.713135, 29.443110, 41.028023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139301, 29.669172, 41.475922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820656, 29.901562, 41.542706>,  <39.629467, 30.040997, 41.582775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820656, 29.901562, 41.542706>,  <40.139301, 29.669172, 41.475922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820656, 29.901562, 41.542706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177454, -0.039266, 0.983346,
		0.577855, 0.812973, -0.071816,
		-0.796614, 0.580975, 0.166955,
		39.581673, 30.075855, 41.592793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409962, 30.062807, 41.996651>,  <40.139301, 29.669172, 41.475922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409962, 30.062807, 41.996651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013523, 30.108707, 42.023655>,  <39.775661, 30.136248, 42.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013523, 30.108707, 42.023655>,  <40.409962, 30.062807, 41.996651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013523, 30.108707, 42.023655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072902, 0.043432, 0.996393,
		0.111406, 0.992444, -0.051411,
		-0.991097, 0.114752, 0.067513,
		39.716194, 30.143133, 42.043907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358734, 30.430073, 42.566166>,  <40.409962, 30.062807, 41.996651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358734, 30.430073, 42.566166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985195, 30.294500, 42.520473>,  <39.761070, 30.213158, 42.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985195, 30.294500, 42.520473>,  <40.358734, 30.430073, 42.566166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985195, 30.294500, 42.520473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046050, -0.202787, 0.978139,
		-0.354686, 0.918697, 0.173765,
		-0.933851, -0.338930, -0.114232,
		39.705040, 30.192822, 42.486202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029922, 30.848167, 43.016174>,  <40.358734, 30.430073, 42.566166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029922, 30.848167, 43.016174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829197, 30.510521, 42.940647>,  <39.708763, 30.307932, 42.895332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829197, 30.510521, 42.940647>,  <40.029922, 30.848167, 43.016174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829197, 30.510521, 42.940647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101107, -0.159550, 0.981999,
		-0.859047, 0.511869, -0.005282,
		-0.501812, -0.844117, -0.188815,
		39.678654, 30.257286, 42.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453411, 30.883064, 43.444519>,  <40.029922, 30.848167, 43.016174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453411, 30.883064, 43.444519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515297, 30.492653, 43.383286>,  <39.552429, 30.258406, 43.346546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515297, 30.492653, 43.383286>,  <39.453411, 30.883064, 43.444519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515297, 30.492653, 43.383286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139175, -0.174940, 0.974693,
		-0.978107, -0.129493, -0.162904,
		0.154714, -0.976026, -0.153087,
		39.561710, 30.199844, 43.337360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103695, 30.554371, 43.970699>,  <39.453411, 30.883064, 43.444519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103695, 30.554371, 43.970699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317833, 30.246172, 43.832287>,  <39.446316, 30.061253, 43.749237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317833, 30.246172, 43.832287>,  <39.103695, 30.554371, 43.970699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317833, 30.246172, 43.832287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142304, -0.321549, 0.936139,
		-0.832559, -0.550400, -0.062495,
		0.535346, -0.770497, -0.346033,
		39.478436, 30.015022, 43.728477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802631, 30.024530, 44.306999>,  <39.103695, 30.554371, 43.970699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802631, 30.024530, 44.306999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167099, 29.909233, 44.189224>,  <39.385780, 29.840055, 44.118557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167099, 29.909233, 44.189224>,  <38.802631, 30.024530, 44.306999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167099, 29.909233, 44.189224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183964, -0.354826, 0.916655,
		-0.368710, -0.889385, -0.270273,
		0.911159, -0.288259, -0.294443,
		39.440449, 29.822760, 44.100891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872704, 29.329760, 44.501095>,  <38.802631, 30.024530, 44.306999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872704, 29.329760, 44.501095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237827, 29.491167, 44.475956>,  <39.456902, 29.588011, 44.460873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237827, 29.491167, 44.475956>,  <38.872704, 29.329760, 44.501095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237827, 29.491167, 44.475956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251909, -0.435226, 0.864361,
		0.321433, -0.804829, -0.498929,
		0.912810, 0.403519, -0.062848,
		39.511669, 29.612223, 44.457100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297615, 28.790266, 44.625271>,  <38.872704, 29.329760, 44.501095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297615, 28.790266, 44.625271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497379, 29.126217, 44.710312>,  <39.617237, 29.327787, 44.761337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497379, 29.126217, 44.710312>,  <39.297615, 28.790266, 44.625271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497379, 29.126217, 44.710312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433198, -0.454596, 0.778256,
		0.750287, -0.296568, -0.590861,
		0.499408, 0.839875, 0.212605,
		39.647202, 29.378180, 44.774094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960125, 28.524872, 44.905682>,  <39.297615, 28.790266, 44.625271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960125, 28.524872, 44.905682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950806, 28.911936, 45.006157>,  <39.945213, 29.144175, 45.066441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950806, 28.911936, 45.006157>,  <39.960125, 28.524872, 44.905682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950806, 28.911936, 45.006157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483566, -0.209000, 0.849990,
		0.874998, 0.141271, -0.463056,
		-0.023301, 0.967658, 0.251188,
		39.943817, 29.202232, 45.081512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560780, 28.697426, 45.197109>,  <39.960125, 28.524872, 44.905682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560780, 28.697426, 45.197109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352055, 29.015968, 45.319439>,  <40.226818, 29.207094, 45.392838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352055, 29.015968, 45.319439>,  <40.560780, 28.697426, 45.197109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352055, 29.015968, 45.319439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491333, -0.012498, 0.870882,
		0.697355, 0.604699, -0.384754,
		-0.521812, 0.796356, 0.305824,
		40.195511, 29.254875, 45.411186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111324, 29.173094, 45.525738>,  <40.560780, 28.697426, 45.197109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111324, 29.173094, 45.525738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737240, 29.232023, 45.654533>,  <40.512791, 29.267382, 45.731812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737240, 29.232023, 45.654533>,  <41.111324, 29.173094, 45.525738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737240, 29.232023, 45.654533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307149, -0.114921, 0.944697,
		0.176180, 0.982389, 0.062225,
		-0.935211, 0.147325, 0.321987,
		40.456676, 29.276220, 45.751129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254341, 29.739874, 45.986923>,  <41.111324, 29.173094, 45.525738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254341, 29.739874, 45.986923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878372, 29.650602, 46.090260>,  <40.652790, 29.597040, 46.152264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878372, 29.650602, 46.090260>,  <41.254341, 29.739874, 45.986923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878372, 29.650602, 46.090260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223279, 0.170584, 0.959712,
		-0.258255, 0.959736, -0.110504,
		-0.939921, -0.223177, 0.258343,
		40.596397, 29.583649, 46.167763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054287, 30.247272, 46.459137>,  <41.254341, 29.739874, 45.986923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054287, 30.247272, 46.459137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820820, 29.938154, 46.558834>,  <40.680740, 29.752684, 46.618652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820820, 29.938154, 46.558834>,  <41.054287, 30.247272, 46.459137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820820, 29.938154, 46.558834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255450, 0.116609, 0.959764,
		-0.770765, 0.623851, 0.129350,
		-0.583667, -0.772795, 0.249241,
		40.645721, 29.706316, 46.633606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703308, 30.445574, 47.054642>,  <41.054287, 30.247272, 46.459137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703308, 30.445574, 47.054642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699791, 30.045595, 47.052578>,  <40.697681, 29.805607, 47.051338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699791, 30.045595, 47.052578>,  <40.703308, 30.445574, 47.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699791, 30.045595, 47.052578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263910, -0.007299, 0.964520,
		-0.964507, 0.007114, 0.263961,
		-0.008788, -0.999948, -0.005162,
		40.697155, 29.745611, 47.051029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266247, 30.340818, 47.466400>,  <40.703308, 30.445574, 47.054642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266247, 30.340818, 47.466400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503117, 30.019379, 47.442535>,  <40.645237, 29.826515, 47.428215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503117, 30.019379, 47.442535>,  <40.266247, 30.340818, 47.466400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503117, 30.019379, 47.442535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224369, 0.093317, 0.970026,
		-0.773943, -0.587812, 0.235563,
		0.592175, -0.803598, -0.059665,
		40.680771, 29.778299, 47.424637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138966, 29.968355, 48.061939>,  <40.266247, 30.340818, 47.466400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138966, 29.968355, 48.061939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482567, 29.813948, 47.927418>,  <40.688728, 29.721302, 47.846703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482567, 29.813948, 47.927418>,  <40.138966, 29.968355, 48.061939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482567, 29.813948, 47.927418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389586, 0.066657, 0.918575,
		-0.332171, -0.920079, 0.207646,
		0.859002, -0.386020, -0.336308,
		40.740269, 29.698141, 47.826527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375542, 29.429058, 48.557220>,  <40.138966, 29.968355, 48.061939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375542, 29.429058, 48.557220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711750, 29.508810, 48.355721>,  <40.913475, 29.556662, 48.234821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711750, 29.508810, 48.355721>,  <40.375542, 29.429058, 48.557220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711750, 29.508810, 48.355721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502135, 0.062434, 0.862533,
		0.203427, -0.977931, -0.047640,
		0.840523, 0.199384, -0.503754,
		40.963905, 29.568624, 48.204594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950665, 29.013618, 48.826603>,  <40.375542, 29.429058, 48.557220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950665, 29.013618, 48.826603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079826, 29.349821, 48.652576>,  <41.157322, 29.551542, 48.548161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079826, 29.349821, 48.652576>,  <40.950665, 29.013618, 48.826603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079826, 29.349821, 48.652576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365033, 0.313519, 0.876617,
		0.873203, -0.441877, -0.205576,
		0.322905, 0.840506, -0.435065,
		41.176697, 29.601973, 48.522057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703922, 29.131592, 49.143890>,  <40.950665, 29.013618, 48.826603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703922, 29.131592, 49.143890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609741, 29.495121, 49.006138>,  <41.553230, 29.713238, 48.923485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609741, 29.495121, 49.006138>,  <41.703922, 29.131592, 49.143890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609741, 29.495121, 49.006138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478849, 0.416834, 0.772627,
		0.845732, 0.017013, -0.533336,
		-0.235457, 0.908824, -0.344383,
		41.539104, 29.767769, 48.902824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320847, 29.526236, 49.139610>,  <41.703922, 29.131592, 49.143890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320847, 29.526236, 49.139610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018311, 29.787907, 49.138443>,  <41.836788, 29.944910, 49.137745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018311, 29.787907, 49.138443>,  <42.320847, 29.526236, 49.139610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018311, 29.787907, 49.138443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426284, 0.496225, 0.756335,
		0.496225, 0.570800, -0.654178,
		-0.756335, 0.654178, -0.002916,
		41.791409, 29.984159, 49.137569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683334, 30.121819, 49.424080>,  <42.320847, 29.526236, 49.139610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683334, 30.121819, 49.424080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294029, 30.207113, 49.458229>,  <42.060448, 30.258289, 49.478718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294029, 30.207113, 49.458229>,  <42.683334, 30.121819, 49.424080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294029, 30.207113, 49.458229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177630, 0.463097, 0.868325,
		0.145622, 0.860274, -0.488592,
		-0.973263, 0.213236, 0.085374,
		42.002048, 30.271084, 49.483841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564072, 30.850708, 49.481213>,  <42.683334, 30.121819, 49.424080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564072, 30.850708, 49.481213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248188, 30.657558, 49.632580>,  <42.058659, 30.541670, 49.723400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248188, 30.657558, 49.632580>,  <42.564072, 30.850708, 49.481213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248188, 30.657558, 49.632580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069833, 0.542072, 0.837425,
		-0.609500, 0.687744, -0.394357,
		-0.789704, -0.482872, 0.378420,
		42.011276, 30.512697, 49.746105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102074, 31.305994, 49.566444>,  <42.564072, 30.850708, 49.481213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102074, 31.305994, 49.566444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232559, 31.673185, 49.656685>,  <43.310852, 31.893499, 49.710831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232559, 31.673185, 49.656685>,  <43.102074, 31.305994, 49.566444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232559, 31.673185, 49.656685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411236, 0.352708, -0.840525,
		-0.851157, 0.181415, 0.492565,
		0.326216, 0.917979, 0.225606,
		43.330425, 31.948580, 49.724365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595074, 31.680088, 49.430515>,  <43.102074, 31.305994, 49.566444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595074, 31.680088, 49.430515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915829, 31.918356, 49.411980>,  <43.108284, 32.061317, 49.400860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915829, 31.918356, 49.411980>,  <42.595074, 31.680088, 49.430515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915829, 31.918356, 49.411980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322877, 0.366785, -0.872479,
		-0.502714, 0.714595, 0.486450,
		0.801891, 0.595670, -0.046338,
		43.156395, 32.097057, 49.398079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372196, 32.395523, 49.394650>,  <42.595074, 31.680088, 49.430515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372196, 32.395523, 49.394650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734676, 32.359936, 49.229298>,  <42.952164, 32.338585, 49.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734676, 32.359936, 49.229298>,  <42.372196, 32.395523, 49.394650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734676, 32.359936, 49.229298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371902, 0.297502, -0.879307,
		0.201209, 0.950567, 0.236510,
		0.906203, -0.088966, -0.413378,
		43.006538, 32.333244, 49.105286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315792, 32.903725, 48.806503>,  <42.372196, 32.395523, 49.394650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315792, 32.903725, 48.806503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665112, 32.717564, 48.748894>,  <42.874702, 32.605865, 48.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.665112, 32.717564, 48.748894>,  <42.315792, 32.903725, 48.806503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665112, 32.717564, 48.748894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034987, 0.234954, -0.971377,
		0.485923, 0.853343, 0.188902,
		0.873301, -0.465405, -0.144026,
		42.927101, 32.577942, 48.705685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787930, 33.345669, 48.354233>,  <42.315792, 32.903725, 48.806503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787930, 33.345669, 48.354233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919491, 32.973499, 48.289577>,  <42.998428, 32.750198, 48.250786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919491, 32.973499, 48.289577>,  <42.787930, 33.345669, 48.354233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919491, 32.973499, 48.289577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126889, 0.126069, -0.983873,
		0.935801, 0.344107, -0.076597,
		0.328901, -0.930428, -0.161639,
		43.018162, 32.694370, 48.241085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251152, 33.379654, 47.815422>,  <42.787930, 33.345669, 48.354233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251152, 33.379654, 47.815422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121159, 33.001766, 47.798073>,  <43.043163, 32.775032, 47.787663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121159, 33.001766, 47.798073>,  <43.251152, 33.379654, 47.815422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121159, 33.001766, 47.798073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324627, 0.154509, -0.933137,
		0.888257, -0.289179, -0.356896,
		-0.324988, -0.944724, -0.043369,
		43.023663, 32.718349, 47.785061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578941, 33.113354, 47.220337>,  <43.251152, 33.379654, 47.815422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578941, 33.113354, 47.220337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257637, 32.889820, 47.302776>,  <43.064854, 32.755699, 47.352242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257637, 32.889820, 47.302776>,  <43.578941, 33.113354, 47.220337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257637, 32.889820, 47.302776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336986, 0.141072, -0.930881,
		0.491131, -0.817194, -0.301636,
		-0.803263, -0.558832, 0.206098,
		43.016659, 32.722172, 47.364605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617256, 32.503090, 46.741428>,  <43.578941, 33.113354, 47.220337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617256, 32.503090, 46.741428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239063, 32.547901, 46.863743>,  <43.012146, 32.574787, 46.937130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239063, 32.547901, 46.863743>,  <43.617256, 32.503090, 46.741428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239063, 32.547901, 46.863743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320522, -0.153971, -0.934643,
		-0.057623, -0.981704, 0.181485,
		-0.945487, 0.112027, 0.305786,
		42.955418, 32.581509, 46.955479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310814, 32.005043, 46.334602>,  <43.617256, 32.503090, 46.741428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310814, 32.005043, 46.334602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019894, 32.252693, 46.453068>,  <42.845341, 32.401283, 46.524147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019894, 32.252693, 46.453068>,  <43.310814, 32.005043, 46.334602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019894, 32.252693, 46.453068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433589, -0.079996, -0.897553,
		-0.532005, -0.781208, 0.326627,
		-0.727304, 0.619124, 0.296165,
		42.801701, 32.438431, 46.541916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706013, 31.778307, 46.033787>,  <43.310814, 32.005043, 46.334602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706013, 31.778307, 46.033787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617199, 32.153301, 46.140984>,  <42.563911, 32.378300, 46.205299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617199, 32.153301, 46.140984>,  <42.706013, 31.778307, 46.033787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617199, 32.153301, 46.140984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518825, 0.119111, -0.846542,
		-0.825542, -0.327003, 0.459944,
		-0.222038, 0.937487, 0.267989,
		42.550587, 32.434547, 46.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976814, 31.875872, 45.862896>,  <42.706013, 31.778307, 46.033787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976814, 31.875872, 45.862896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126221, 32.243732, 45.911442>,  <42.215866, 32.464447, 45.940567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126221, 32.243732, 45.911442>,  <41.976814, 31.875872, 45.862896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126221, 32.243732, 45.911442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368944, 0.267320, -0.890180,
		-0.851097, 0.287722, 0.439148,
		0.373517, 0.919650, 0.121362,
		42.238277, 32.519627, 45.947849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476925, 32.331062, 45.644646>,  <41.976814, 31.875872, 45.862896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476925, 32.331062, 45.644646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810421, 32.550278, 45.617718>,  <42.010517, 32.681808, 45.601562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810421, 32.550278, 45.617718>,  <41.476925, 32.331062, 45.644646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810421, 32.550278, 45.617718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178572, 0.152255, -0.972075,
		-0.522484, 0.822480, 0.224805,
		0.833740, 0.548037, -0.067321,
		42.060543, 32.714687, 45.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358688, 32.979321, 45.423546>,  <41.476925, 32.331062, 45.644646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358688, 32.979321, 45.423546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739849, 32.940899, 45.308479>,  <41.968544, 32.917847, 45.239441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739849, 32.940899, 45.308479>,  <41.358688, 32.979321, 45.423546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739849, 32.940899, 45.308479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241050, 0.335739, -0.910590,
		0.184047, 0.937045, 0.296772,
		0.952902, -0.096054, -0.287667,
		42.025719, 32.912083, 45.222179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491718, 33.573158, 45.086929>,  <41.358688, 32.979321, 45.423546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491718, 33.573158, 45.086929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781437, 33.319908, 44.977711>,  <41.955269, 33.167957, 44.912182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781437, 33.319908, 44.977711>,  <41.491718, 33.573158, 45.086929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781437, 33.319908, 44.977711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094058, 0.301576, -0.948791,
		0.683047, 0.712885, 0.158879,
		0.724293, -0.633125, -0.273043,
		41.998726, 33.129971, 44.895798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852409, 34.021000, 44.736019>,  <41.491718, 33.573158, 45.086929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852409, 34.021000, 44.736019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932419, 33.641125, 44.639610>,  <41.980427, 33.413200, 44.581764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932419, 33.641125, 44.639610>,  <41.852409, 34.021000, 44.736019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932419, 33.641125, 44.639610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056040, 0.234497, -0.970500,
		0.978187, 0.207632, -0.006315,
		0.200026, -0.949684, -0.241018,
		41.992428, 33.356220, 44.567307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134827, 34.039665, 44.019329>,  <41.852409, 34.021000, 44.736019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134827, 34.039665, 44.019329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078800, 33.645824, 44.061161>,  <42.045185, 33.409519, 44.086262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078800, 33.645824, 44.061161>,  <42.134827, 34.039665, 44.019329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078800, 33.645824, 44.061161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326609, -0.053768, -0.943629,
		0.934723, -0.166332, -0.314049,
		-0.140070, -0.984603, 0.104584,
		42.036777, 33.350445, 44.092537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349453, 33.751484, 43.347862>,  <42.134827, 34.039665, 44.019329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349453, 33.751484, 43.347862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128311, 33.464645, 43.517624>,  <41.995625, 33.292542, 43.619480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128311, 33.464645, 43.517624>,  <42.349453, 33.751484, 43.347862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128311, 33.464645, 43.517624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526582, -0.094071, -0.844904,
		0.645803, -0.690595, -0.325603,
		-0.552856, -0.717098, 0.424406,
		41.962456, 33.249516, 43.644947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453232, 33.126041, 42.919868>,  <42.349453, 33.751484, 43.347862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453232, 33.126041, 42.919868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113724, 33.075375, 43.125214>,  <41.910019, 33.044975, 43.248421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113724, 33.075375, 43.125214>,  <42.453232, 33.126041, 42.919868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113724, 33.075375, 43.125214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488554, -0.183464, -0.853028,
		0.202233, -0.974832, 0.093835,
		-0.848774, -0.126667, 0.513361,
		41.859093, 33.037376, 43.279221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130535, 32.410114, 42.740437>,  <42.453232, 33.126041, 42.919868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130535, 32.410114, 42.740437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834297, 32.638817, 42.881638>,  <41.656555, 32.776039, 42.966358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834297, 32.638817, 42.881638>,  <42.130535, 32.410114, 42.740437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834297, 32.638817, 42.881638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594615, -0.312964, -0.740598,
		-0.312964, -0.758386, 0.571755,
		0.740598, -0.571755, -0.353001,
		41.612118, 32.810345, 42.987537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545597, 31.969866, 42.657974>,  <42.130535, 32.410114, 42.740437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545597, 31.969866, 42.657974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411400, 32.345581, 42.686771>,  <41.330883, 32.571011, 42.704048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411400, 32.345581, 42.686771>,  <41.545597, 31.969866, 42.657974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411400, 32.345581, 42.686771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680217, -0.188667, -0.708314,
		-0.651730, -0.286600, 0.702217,
		-0.335488, 0.939290, 0.071990,
		41.310753, 32.627369, 42.708370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842873, 31.862505, 42.635979>,  <41.545597, 31.969866, 42.657974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842873, 31.862505, 42.635979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879517, 32.247974, 42.535629>,  <40.901501, 32.479256, 42.475418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879517, 32.247974, 42.535629>,  <40.842873, 31.862505, 42.635979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879517, 32.247974, 42.535629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579312, -0.153342, -0.800552,
		-0.809942, 0.218672, 0.544221,
		0.091606, 0.963675, -0.250877,
		40.906998, 32.537075, 42.460365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298306, 31.975880, 42.229870>,  <40.842873, 31.862505, 42.635979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298306, 31.975880, 42.229870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514538, 32.294277, 42.120934>,  <40.644276, 32.485317, 42.055573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514538, 32.294277, 42.120934>,  <40.298306, 31.975880, 42.229870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514538, 32.294277, 42.120934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425224, -0.020801, -0.904849,
		-0.725921, 0.604945, 0.327231,
		0.540578, 0.795995, -0.272337,
		40.676712, 32.533077, 42.039234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856590, 32.464058, 41.938099>,  <40.298306, 31.975880, 42.229870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856590, 32.464058, 41.938099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225796, 32.515560, 41.793060>,  <40.447319, 32.546459, 41.706039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225796, 32.515560, 41.793060>,  <39.856590, 32.464058, 41.938099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225796, 32.515560, 41.793060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373940, 0.078099, -0.924159,
		-0.090668, 0.988597, 0.120231,
		0.923010, 0.128751, -0.362595,
		40.502697, 32.554184, 41.684280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729744, 32.886314, 41.267231>,  <39.856590, 32.464058, 41.938099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729744, 32.886314, 41.267231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112148, 32.773899, 41.233635>,  <40.341591, 32.706451, 41.213478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112148, 32.773899, 41.233635>,  <39.729744, 32.886314, 41.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112148, 32.773899, 41.233635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077270, 0.034935, -0.996398,
		0.282955, 0.959062, 0.011683,
		0.956016, -0.281034, -0.083992,
		40.398952, 32.689590, 41.208439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114769, 33.408806, 40.824890>,  <39.729744, 32.886314, 41.267231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114769, 33.408806, 40.824890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309921, 33.059753, 40.816067>,  <40.427013, 32.850323, 40.810772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309921, 33.059753, 40.816067>,  <40.114769, 33.408806, 40.824890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309921, 33.059753, 40.816067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003928, 0.023081, -0.999726,
		0.872899, 0.487837, 0.007833,
		0.487885, -0.872629, -0.022063,
		40.456287, 32.797966, 40.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481415, 33.565502, 40.361652>,  <40.114769, 33.408806, 40.824890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481415, 33.565502, 40.361652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525856, 33.168041, 40.354530>,  <40.552521, 32.929565, 40.350258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525856, 33.168041, 40.354530>,  <40.481415, 33.565502, 40.361652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525856, 33.168041, 40.354530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016353, 0.019740, -0.999672,
		0.993675, 0.110773, 0.018442,
		0.111100, -0.993650, -0.017803,
		40.559185, 32.869946, 40.349190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995705, 33.522984, 39.974106>,  <40.481415, 33.565502, 40.361652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995705, 33.522984, 39.974106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773582, 33.190849, 39.955402>,  <40.640308, 32.991570, 39.944180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773582, 33.190849, 39.955402>,  <40.995705, 33.522984, 39.974106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773582, 33.190849, 39.955402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157924, 0.160484, -0.974323,
		0.816516, -0.533659, -0.220247,
		-0.555302, -0.830333, -0.046760,
		40.606991, 32.941750, 39.941376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306095, 33.193939, 39.420811>,  <40.995705, 33.522984, 39.974106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306095, 33.193939, 39.420811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947754, 33.017647, 39.443447>,  <40.732750, 32.911873, 39.457031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947754, 33.017647, 39.443447>,  <41.306095, 33.193939, 39.420811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947754, 33.017647, 39.443447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078142, 0.030882, -0.996464,
		0.437427, -0.897107, -0.062105,
		-0.895852, -0.440733, 0.056593,
		40.678997, 32.885426, 39.460426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315067, 32.679585, 38.990204>,  <41.306095, 33.193939, 39.420811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315067, 32.679585, 38.990204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923481, 32.742580, 39.042091>,  <40.688530, 32.780376, 39.073223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923481, 32.742580, 39.042091>,  <41.315067, 32.679585, 38.990204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923481, 32.742580, 39.042091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103924, 0.162226, -0.981266,
		-0.175581, -0.974105, -0.142446,
		-0.978964, 0.157488, 0.129716,
		40.629791, 32.789825, 39.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013233, 32.295643, 38.378807>,  <41.315067, 32.679585, 38.990204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013233, 32.295643, 38.378807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739269, 32.544624, 38.530308>,  <40.574890, 32.694016, 38.621208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739269, 32.544624, 38.530308>,  <41.013233, 32.295643, 38.378807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739269, 32.544624, 38.530308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145461, 0.392540, -0.908159,
		-0.713965, -0.677096, -0.178309,
		-0.684905, 0.622457, 0.378752,
		40.533798, 32.731361, 38.643932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455753, 32.191982, 37.900208>,  <41.013233, 32.295643, 38.378807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455753, 32.191982, 37.900208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442276, 32.549988, 38.078114>,  <40.434189, 32.764790, 38.184856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442276, 32.549988, 38.078114>,  <40.455753, 32.191982, 37.900208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442276, 32.549988, 38.078114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275737, 0.419422, -0.864901,
		-0.960642, -0.151782, 0.232655,
		-0.033696, 0.895012, 0.444767,
		40.432167, 32.818493, 38.211544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927715, 32.587215, 37.544968>,  <40.455753, 32.191982, 37.900208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927715, 32.587215, 37.544968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135593, 32.862598, 37.747334>,  <40.260319, 33.027828, 37.868752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135593, 32.862598, 37.747334>,  <39.927715, 32.587215, 37.544968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135593, 32.862598, 37.747334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145509, 0.654831, -0.741636,
		-0.841869, 0.311810, 0.440489,
		0.519696, 0.688456, 0.505911,
		40.291504, 33.069134, 37.899105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478138, 33.215248, 37.525558>,  <39.927715, 32.587215, 37.544968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478138, 33.215248, 37.525558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838818, 33.363113, 37.615261>,  <40.055225, 33.451832, 37.669083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838818, 33.363113, 37.615261>,  <39.478138, 33.215248, 37.525558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838818, 33.363113, 37.615261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101367, 0.684948, -0.721506,
		-0.420317, 0.627849, 0.655087,
		0.901697, 0.369666, 0.224252,
		40.109325, 33.474014, 37.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389488, 33.958397, 37.598034>,  <39.478138, 33.215248, 37.525558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389488, 33.958397, 37.598034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781811, 33.918888, 37.530788>,  <40.017204, 33.895184, 37.490440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781811, 33.918888, 37.530788>,  <39.389488, 33.958397, 37.598034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781811, 33.918888, 37.530788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042890, 0.731787, -0.680182,
		0.190204, 0.674338, 0.713506,
		0.980807, -0.098771, -0.168112,
		40.076054, 33.889256, 37.480354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751225, 34.591423, 37.428112>,  <39.389488, 33.958397, 37.598034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751225, 34.591423, 37.428112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050739, 34.360146, 37.298485>,  <40.230446, 34.221378, 37.220707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050739, 34.360146, 37.298485>,  <39.751225, 34.591423, 37.428112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050739, 34.360146, 37.298485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206751, 0.668279, -0.714603,
		0.629744, 0.468082, 0.619937,
		0.748783, -0.578190, -0.324068,
		40.275375, 34.186687, 37.201263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265678, 35.058907, 37.419128>,  <39.751225, 34.591423, 37.428112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265678, 35.058907, 37.419128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374527, 34.752438, 37.186260>,  <40.439835, 34.568554, 37.046539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374527, 34.752438, 37.186260>,  <40.265678, 35.058907, 37.419128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374527, 34.752438, 37.186260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263177, 0.641196, -0.720836,
		0.925575, 0.042939, 0.376122,
		0.272120, -0.766174, -0.582175,
		40.456161, 34.522587, 37.011608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931789, 35.054420, 37.270309>,  <40.265678, 35.058907, 37.419128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931789, 35.054420, 37.270309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777927, 34.851627, 36.961761>,  <40.685608, 34.729950, 36.776634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777927, 34.851627, 36.961761>,  <40.931789, 35.054420, 37.270309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777927, 34.851627, 36.961761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362691, 0.685440, -0.631370,
		0.848819, -0.522629, -0.079782,
		-0.384658, -0.506983, -0.771367,
		40.662529, 34.699532, 36.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429016, 35.092884, 36.783657>,  <40.931789, 35.054420, 37.270309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429016, 35.092884, 36.783657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110733, 35.001743, 36.559181>,  <40.919762, 34.947060, 36.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110733, 35.001743, 36.559181>,  <41.429016, 35.092884, 36.783657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110733, 35.001743, 36.559181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356371, 0.573070, -0.737963,
		0.489745, -0.787195, -0.374798,
		-0.795707, -0.227847, -0.561192,
		40.872021, 34.933388, 36.390823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731228, 34.966225, 36.051544>,  <41.429016, 35.092884, 36.783657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731228, 34.966225, 36.051544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339161, 34.999443, 35.979568>,  <41.103920, 35.019375, 35.936382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339161, 34.999443, 35.979568>,  <41.731228, 34.966225, 36.051544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339161, 34.999443, 35.979568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195374, 0.557172, -0.807086,
		0.033227, -0.826234, -0.562347,
		-0.980166, 0.083051, -0.179938,
		41.045113, 35.024357, 35.925587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615124, 34.751812, 35.384159>,  <41.731228, 34.966225, 36.051544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615124, 34.751812, 35.384159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331535, 35.014862, 35.486057>,  <41.161385, 35.172691, 35.547195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331535, 35.014862, 35.486057>,  <41.615124, 34.751812, 35.384159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331535, 35.014862, 35.486057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255045, 0.575849, -0.776756,
		-0.657508, -0.485724, -0.575982,
		-0.708968, 0.657624, 0.254744,
		41.118843, 35.212151, 35.562481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225880, 34.975349, 34.703453>,  <41.615124, 34.751812, 35.384159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225880, 34.975349, 34.703453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172848, 35.257595, 34.981888>,  <41.141029, 35.426941, 35.148949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172848, 35.257595, 34.981888>,  <41.225880, 34.975349, 34.703453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172848, 35.257595, 34.981888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094595, 0.708085, -0.699762,
		-0.986648, -0.026928, -0.160626,
		-0.132580, 0.705614, 0.696083,
		41.133072, 35.469280, 35.190712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763687, 35.416885, 34.376514>,  <41.225880, 34.975349, 34.703453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763687, 35.416885, 34.376514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986263, 35.633648, 34.628456>,  <41.119808, 35.763706, 34.779621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986263, 35.633648, 34.628456>,  <40.763687, 35.416885, 34.376514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986263, 35.633648, 34.628456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036073, 0.741578, -0.669896,
		-0.830102, 0.395480, 0.393099,
		0.556444, 0.541902, 0.629851,
		41.153198, 35.796219, 34.817413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483517, 36.059479, 34.442528>,  <40.763687, 35.416885, 34.376514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483517, 36.059479, 34.442528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873318, 36.080338, 34.529816>,  <41.107201, 36.092854, 34.582188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873318, 36.080338, 34.529816>,  <40.483517, 36.059479, 34.442528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873318, 36.080338, 34.529816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125660, 0.678891, -0.723407,
		-0.185869, 0.732385, 0.655030,
		0.974506, 0.052148, 0.218216,
		41.165668, 36.095982, 34.595280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650829, 36.635178, 34.757221>,  <40.483517, 36.059479, 34.442528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650829, 36.635178, 34.757221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961914, 36.521496, 34.532940>,  <41.148567, 36.453285, 34.398373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961914, 36.521496, 34.532940>,  <40.650829, 36.635178, 34.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961914, 36.521496, 34.532940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034844, 0.871099, -0.489870,
		0.627651, 0.400517, 0.667563,
		0.777714, -0.284207, -0.560702,
		41.195229, 36.436234, 34.364731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247101, 37.120426, 34.811131>,  <40.650829, 36.635178, 34.757221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247101, 37.120426, 34.811131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236752, 36.927856, 34.460690>,  <41.230541, 36.812313, 34.250423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236752, 36.927856, 34.460690>,  <41.247101, 37.120426, 34.811131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236752, 36.927856, 34.460690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144797, 0.868960, -0.473225,
		0.989123, 0.114613, -0.092194,
		-0.025875, -0.481427, -0.876104,
		41.228989, 36.783428, 34.197857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653019, 37.561508, 34.411285>,  <41.247101, 37.120426, 34.811131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653019, 37.561508, 34.411285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425182, 37.339397, 34.168884>,  <41.288479, 37.206131, 34.023445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.425182, 37.339397, 34.168884>,  <41.653019, 37.561508, 34.411285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425182, 37.339397, 34.168884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001250, 0.737876, -0.674935,
		0.821926, -0.383680, -0.420983,
		-0.569593, -0.555273, -0.606000,
		41.254303, 37.172817, 33.987083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922050, 37.437763, 33.709305>,  <41.653019, 37.561508, 34.411285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922050, 37.437763, 33.709305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523083, 37.446335, 33.681900>,  <41.283703, 37.451477, 33.665459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523083, 37.446335, 33.681900>,  <41.922050, 37.437763, 33.709305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523083, 37.446335, 33.681900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054717, 0.844721, -0.532403,
		0.046467, -0.534778, -0.843714,
		-0.997420, 0.021426, -0.068513,
		41.223858, 37.452763, 33.661346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364193, 37.286125, 34.278637>,  <41.922050, 37.437763, 33.709305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364193, 37.286125, 34.278637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692715, 37.098560, 34.408611>,  <42.889828, 36.986023, 34.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692715, 37.098560, 34.408611>,  <42.364193, 37.286125, 34.278637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692715, 37.098560, 34.408611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335064, 0.857463, 0.390499,
		-0.461731, -0.211843, 0.861352,
		0.821302, -0.468913, 0.324936,
		42.939106, 36.957886, 34.506092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560680, 37.601616, 34.888138>,  <42.364193, 37.286125, 34.278637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560680, 37.601616, 34.888138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893238, 37.402035, 34.790298>,  <43.092773, 37.282284, 34.731594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893238, 37.402035, 34.790298>,  <42.560680, 37.601616, 34.888138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893238, 37.402035, 34.790298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532536, 0.841143, 0.094253,
		0.158715, -0.208620, 0.965032,
		0.831393, -0.498955, -0.244600,
		43.142654, 37.252350, 34.716919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095512, 37.496658, 35.488567>,  <42.560680, 37.601616, 34.888138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095512, 37.496658, 35.488567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297104, 37.491611, 35.143116>,  <43.418060, 37.488583, 34.935844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297104, 37.491611, 35.143116>,  <43.095512, 37.496658, 35.488567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297104, 37.491611, 35.143116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487386, 0.829642, 0.272302,
		0.713064, -0.558152, 0.424270,
		0.503978, -0.012614, -0.863624,
		43.448296, 37.487827, 34.884029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806473, 37.756447, 35.625172>,  <43.095512, 37.496658, 35.488567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806473, 37.756447, 35.625172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697514, 37.804756, 35.243340>,  <43.632137, 37.833740, 35.014240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697514, 37.804756, 35.243340>,  <43.806473, 37.756447, 35.625172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697514, 37.804756, 35.243340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358327, 0.933462, 0.015848,
		0.892974, -0.337733, -0.297545,
		-0.272394, 0.120770, -0.954576,
		43.615795, 37.840988, 34.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367744, 38.219406, 35.427147>,  <43.806473, 37.756447, 35.625172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367744, 38.219406, 35.427147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106472, 38.229614, 35.124439>,  <43.949707, 38.235741, 34.942814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106472, 38.229614, 35.124439>,  <44.367744, 38.219406, 35.427147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106472, 38.229614, 35.124439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289859, 0.931734, -0.218756,
		0.699526, -0.362245, -0.615988,
		-0.653180, 0.025524, -0.756772,
		43.910519, 38.237270, 34.897408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681915, 38.375492, 34.875927>,  <44.367744, 38.219406, 35.427147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681915, 38.375492, 34.875927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314388, 38.488941, 34.766140>,  <44.093872, 38.557011, 34.700268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314388, 38.488941, 34.766140>,  <44.681915, 38.375492, 34.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314388, 38.488941, 34.766140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350716, 0.905690, -0.238167,
		0.181032, -0.315092, -0.931635,
		-0.918818, 0.283623, -0.274467,
		44.038742, 38.574028, 34.683800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821587, 38.748871, 34.340595>,  <44.681915, 38.375492, 34.875927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821587, 38.748871, 34.340595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450394, 38.871685, 34.425053>,  <44.227676, 38.945374, 34.475727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450394, 38.871685, 34.425053>,  <44.821587, 38.748871, 34.340595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450394, 38.871685, 34.425053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286334, 0.950170, -0.123248,
		-0.238463, -0.053914, -0.969654,
		-0.927981, 0.307035, 0.211142,
		44.172001, 38.963795, 34.488396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562511, 39.201237, 33.743576>,  <44.821587, 38.748871, 34.340595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562511, 39.201237, 33.743576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367733, 39.296871, 34.079605>,  <44.250866, 39.354252, 34.281223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367733, 39.296871, 34.079605>,  <44.562511, 39.201237, 33.743576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367733, 39.296871, 34.079605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270147, 0.955872, -0.115450,
		-0.830605, 0.170725, -0.530046,
		-0.486946, 0.239084, 0.840073,
		44.221649, 39.368595, 34.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227215, 39.755234, 33.542904>,  <44.562511, 39.201237, 33.743576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227215, 39.755234, 33.542904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251087, 39.758755, 33.942177>,  <44.265411, 39.760868, 34.181740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251087, 39.758755, 33.942177>,  <44.227215, 39.755234, 33.542904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251087, 39.758755, 33.942177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206532, 0.978215, -0.020979,
		-0.976618, 0.207408, 0.056559,
		0.059678, 0.008807, 0.998179,
		44.268990, 39.761398, 34.241631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791679, 40.305489, 33.798874>,  <44.227215, 39.755234, 33.542904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791679, 40.305489, 33.798874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014774, 40.220112, 34.119717>,  <44.148632, 40.168884, 34.312222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014774, 40.220112, 34.119717>,  <43.791679, 40.305489, 33.798874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014774, 40.220112, 34.119717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211078, 0.971073, 0.111634,
		-0.802731, 0.107045, 0.586655,
		0.557735, -0.213443, 0.802106,
		44.182095, 40.156078, 34.360348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532677, 40.839394, 34.244816>,  <43.791679, 40.305489, 33.798874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532677, 40.839394, 34.244816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870590, 40.719891, 34.422390>,  <44.073338, 40.648190, 34.528934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870590, 40.719891, 34.422390>,  <43.532677, 40.839394, 34.244816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870590, 40.719891, 34.422390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311906, 0.949040, 0.045150,
		-0.434804, 0.100325, 0.894919,
		0.844784, -0.298762, 0.443938,
		44.124027, 40.630260, 34.555573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702404, 41.299603, 34.801517>,  <43.532677, 40.839394, 34.244816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702404, 41.299603, 34.801517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056812, 41.151329, 34.690121>,  <44.269459, 41.062363, 34.623283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056812, 41.151329, 34.690121>,  <43.702404, 41.299603, 34.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056812, 41.151329, 34.690121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367317, 0.927734, -0.066239,
		0.282923, -0.043607, 0.958151,
		0.886021, -0.370686, -0.278495,
		44.322617, 41.040123, 34.606571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257339, 41.554794, 35.331264>,  <43.702404, 41.299603, 34.801517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257339, 41.554794, 35.331264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389584, 41.468822, 34.963676>,  <44.468929, 41.417240, 34.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389584, 41.468822, 34.963676>,  <44.257339, 41.554794, 35.331264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389584, 41.468822, 34.963676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202459, 0.967206, -0.153371,
		0.921795, -0.135346, 0.363285,
		0.330613, -0.214927, -0.918967,
		44.488766, 41.404343, 34.687984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924793, 41.847977, 35.333294>,  <44.257339, 41.554794, 35.331264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924793, 41.847977, 35.333294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829399, 41.781643, 34.950542>,  <44.772163, 41.741844, 34.720890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829399, 41.781643, 34.950542>,  <44.924793, 41.847977, 35.333294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829399, 41.781643, 34.950542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284514, 0.930149, -0.232107,
		0.928536, -0.327600, -0.174642,
		-0.238481, -0.165832, -0.956884,
		44.757854, 41.731895, 34.663479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485527, 42.130062, 35.015949>,  <44.924793, 41.847977, 35.333294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485527, 42.130062, 35.015949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212086, 42.105782, 34.725021>,  <45.048019, 42.091213, 34.550465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212086, 42.105782, 34.725021>,  <45.485527, 42.130062, 35.015949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212086, 42.105782, 34.725021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179256, 0.952046, -0.247945,
		0.707494, -0.299873, -0.639943,
		-0.683607, -0.060705, -0.727321,
		45.007004, 42.087570, 34.506824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813709, 42.506645, 34.416550>,  <45.485527, 42.130062, 35.015949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813709, 42.506645, 34.416550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416088, 42.499767, 34.373531>,  <45.177517, 42.495640, 34.347721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416088, 42.499767, 34.373531>,  <45.813709, 42.506645, 34.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416088, 42.499767, 34.373531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017413, 0.999848, 0.001066,
		0.107511, 0.002932, -0.994200,
		-0.994051, -0.017198, -0.107546,
		45.117874, 42.494610, 34.341267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721313, 43.038246, 33.853622>,  <45.813709, 42.506645, 34.416550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721313, 43.038246, 33.853622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363884, 42.982288, 34.024246>,  <45.149426, 42.948711, 34.126621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363884, 42.982288, 34.024246>,  <45.721313, 43.038246, 33.853622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363884, 42.982288, 34.024246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215955, 0.966990, -0.135254,
		-0.393557, -0.212977, -0.894290,
		-0.893575, -0.139897, 0.426559,
		45.095810, 42.940319, 34.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185123, 43.295288, 33.381847>,  <45.721313, 43.038246, 33.853622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185123, 43.295288, 33.381847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986496, 43.266121, 33.727821>,  <44.867321, 43.248619, 33.935406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986496, 43.266121, 33.727821>,  <45.185123, 43.295288, 33.381847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986496, 43.266121, 33.727821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611588, 0.736496, -0.289024,
		-0.615942, -0.672500, -0.410316,
		-0.496565, -0.072923, 0.864931,
		44.837528, 43.244244, 33.987301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555866, 43.504517, 33.154808>,  <45.185123, 43.295288, 33.381847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555866, 43.504517, 33.154808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538181, 43.534054, 33.553322>,  <44.527569, 43.551777, 33.792431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538181, 43.534054, 33.553322>,  <44.555866, 43.504517, 33.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538181, 43.534054, 33.553322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542440, 0.835679, -0.086013,
		-0.838930, -0.544230, 0.003107,
		-0.044215, 0.073844, 0.996289,
		44.524918, 43.556206, 33.852207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802006, 43.527584, 33.275330>,  <44.555866, 43.504517, 33.154808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802006, 43.527584, 33.275330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028889, 43.704491, 33.553226>,  <44.165020, 43.810635, 33.719967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028889, 43.704491, 33.553226>,  <43.802006, 43.527584, 33.275330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028889, 43.704491, 33.553226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601457, 0.798715, -0.017410,
		-0.562604, -0.407985, 0.719045,
		0.567209, 0.442269, 0.694746,
		44.199051, 43.837170, 33.761650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281864, 43.752110, 33.731155>,  <43.802006, 43.527584, 33.275330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281864, 43.752110, 33.731155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612503, 43.971928, 33.779701>,  <43.810886, 44.103817, 33.808830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612503, 43.971928, 33.779701>,  <43.281864, 43.752110, 33.731155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612503, 43.971928, 33.779701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554246, 0.832331, 0.006072,
		-0.097680, -0.072286, 0.992589,
		0.826601, 0.549546, 0.121366,
		43.860485, 44.136791, 33.816113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900043, 44.474197, 33.778107>,  <43.281864, 43.752110, 33.731155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900043, 44.474197, 33.778107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111080, 44.796127, 33.669361>,  <43.237701, 44.989285, 33.604115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111080, 44.796127, 33.669361>,  <42.900043, 44.474197, 33.778107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111080, 44.796127, 33.669361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572866, -0.100761, 0.813432,
		0.627275, -0.584900, -0.514216,
		0.527589, 0.804822, -0.271865,
		43.269356, 45.037575, 33.587803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514660, 44.868637, 34.226128>,  <42.900043, 44.474197, 33.778107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514660, 44.868637, 34.226128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444782, 44.880974, 34.619785>,  <42.402855, 44.888374, 34.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444782, 44.880974, 34.619785>,  <42.514660, 44.868637, 34.226128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444782, 44.880974, 34.619785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218091, -0.975895, -0.008129,
		0.960166, -0.216052, 0.177209,
		-0.174693, 0.030843, 0.984140,
		42.392376, 44.890228, 34.915028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513500, 44.375683, 34.752583>,  <42.514660, 44.868637, 34.226128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513500, 44.375683, 34.752583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662731, 44.708408, 34.916977>,  <42.752270, 44.908043, 35.015614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662731, 44.708408, 34.916977>,  <42.513500, 44.375683, 34.752583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662731, 44.708408, 34.916977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361339, -0.538255, 0.761390,
		0.854546, -0.135551, -0.501375,
		0.373075, 0.831809, 0.410984,
		42.774654, 44.957951, 35.040272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266911, 43.742962, 34.635761>,  <42.513500, 44.375683, 34.752583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266911, 43.742962, 34.635761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582375, 43.573532, 34.457508>,  <42.771652, 43.471874, 34.350555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582375, 43.573532, 34.457508>,  <42.266911, 43.742962, 34.635761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582375, 43.573532, 34.457508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402622, -0.191974, 0.895009,
		-0.464657, -0.885284, 0.019140,
		0.788663, -0.423579, -0.445637,
		42.818974, 43.446457, 34.323818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502857, 43.330460, 35.240082>,  <42.266911, 43.742962, 34.635761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502857, 43.330460, 35.240082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269066, 43.041260, 35.092754>,  <42.128792, 42.867741, 35.004356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269066, 43.041260, 35.092754>,  <42.502857, 43.330460, 35.240082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269066, 43.041260, 35.092754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709297, 0.675700, -0.200819,
		0.394067, 0.143876, -0.907751,
		-0.584473, -0.723000, -0.368322,
		42.093723, 42.824360, 34.982258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045498, 43.039604, 35.095375>,  <42.502857, 43.330460, 35.240082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045498, 43.039604, 35.095375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268856, 42.847225, 35.365749>,  <43.402870, 42.731796, 35.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268856, 42.847225, 35.365749>,  <43.045498, 43.039604, 35.095375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268856, 42.847225, 35.365749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356860, 0.874810, 0.327655,
		-0.748899, 0.058253, 0.660119,
		0.558393, -0.480950, 0.675932,
		43.436375, 42.702942, 35.568527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409363, 43.497608, 35.589417>,  <43.045498, 43.039604, 35.095375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409363, 43.497608, 35.589417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624435, 43.173256, 35.681820>,  <43.753479, 42.978645, 35.737263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624435, 43.173256, 35.681820>,  <43.409363, 43.497608, 35.589417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624435, 43.173256, 35.681820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697744, 0.581749, 0.417997,
		-0.473336, -0.063565, 0.878586,
		0.537686, -0.810881, 0.231011,
		43.785740, 42.929993, 35.751122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485985, 43.463444, 36.347210>,  <43.409363, 43.497608, 35.589417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485985, 43.463444, 36.347210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789154, 43.290134, 36.152142>,  <43.971058, 43.186150, 36.035099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789154, 43.290134, 36.152142>,  <43.485985, 43.463444, 36.347210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789154, 43.290134, 36.152142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627574, 0.688319, 0.363823,
		0.178039, -0.581801, 0.793605,
		0.757926, -0.433271, -0.487671,
		44.016533, 43.160152, 36.005840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770882, 43.319717, 37.059883>,  <43.485985, 43.463444, 36.347210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770882, 43.319717, 37.059883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482376, 43.271893, 37.332787>,  <43.309273, 43.243198, 37.496529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482376, 43.271893, 37.332787>,  <43.770882, 43.319717, 37.059883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482376, 43.271893, 37.332787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501329, -0.769785, 0.395096,
		0.477956, 0.627007, 0.615159,
		-0.721267, -0.119558, 0.682260,
		43.265995, 43.236027, 37.537464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139885, 43.145771, 37.772099>,  <43.770882, 43.319717, 37.059883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139885, 43.145771, 37.772099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758381, 43.025837, 37.780506>,  <43.529480, 42.953876, 37.785549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758381, 43.025837, 37.780506>,  <44.139885, 43.145771, 37.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758381, 43.025837, 37.780506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285645, -0.882407, 0.373852,
		-0.093547, 0.362569, 0.927250,
		-0.953759, -0.299837, 0.021019,
		43.472252, 42.935886, 37.786812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141609, 42.698151, 38.278606>,  <44.139885, 43.145771, 37.772099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141609, 42.698151, 38.278606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828869, 42.602066, 38.048477>,  <43.641224, 42.544415, 37.910400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.828869, 42.602066, 38.048477>,  <44.141609, 42.698151, 38.278606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828869, 42.602066, 38.048477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185536, -0.970632, 0.153130,
		-0.595216, 0.012982, 0.803461,
		-0.781853, -0.240216, -0.575328,
		43.594315, 42.530003, 37.875877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724167, 42.308071, 38.664543>,  <44.141609, 42.698151, 38.278606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724167, 42.308071, 38.664543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623611, 42.209721, 38.290089>,  <43.563278, 42.150711, 38.065414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623611, 42.209721, 38.290089>,  <43.724167, 42.308071, 38.664543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623611, 42.209721, 38.290089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187009, -0.961308, 0.202273,
		-0.949649, -0.124217, 0.287640,
		-0.251385, -0.245880, -0.936135,
		43.548195, 42.135956, 38.009247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715584, 41.619217, 38.753387>,  <43.724167, 42.308071, 38.664543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715584, 41.619217, 38.753387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686981, 41.662430, 38.356758>,  <43.669819, 41.688358, 38.118782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686981, 41.662430, 38.356758>,  <43.715584, 41.619217, 38.753387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686981, 41.662430, 38.356758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182240, -0.975968, -0.119475,
		-0.980651, -0.189247, 0.050097,
		-0.071503, 0.108033, -0.991572,
		43.665531, 41.694839, 38.059288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272690, 41.073711, 38.567181>,  <43.715584, 41.619217, 38.753387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272690, 41.073711, 38.567181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504429, 41.193428, 38.263924>,  <43.643471, 41.265259, 38.081970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504429, 41.193428, 38.263924>,  <43.272690, 41.073711, 38.567181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504429, 41.193428, 38.263924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089747, -0.947913, -0.305625,
		-0.810126, 0.109021, -0.576029,
		0.579345, 0.299291, -0.758145,
		43.678234, 41.283215, 38.036480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033596, 40.719357, 37.949623>,  <43.272690, 41.073711, 38.567181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033596, 40.719357, 37.949623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402340, 40.833515, 37.844765>,  <43.623589, 40.902012, 37.781849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402340, 40.833515, 37.844765>,  <43.033596, 40.719357, 37.949623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402340, 40.833515, 37.844765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170586, -0.906265, -0.386761,
		-0.347951, 0.311822, -0.884136,
		0.921862, 0.285395, -0.262144,
		43.678898, 40.919132, 37.766121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129494, 40.518997, 37.286594>,  <43.033596, 40.719357, 37.949623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129494, 40.518997, 37.286594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496864, 40.554867, 37.440716>,  <43.717285, 40.576389, 37.533188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496864, 40.554867, 37.440716>,  <43.129494, 40.518997, 37.286594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496864, 40.554867, 37.440716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265523, -0.861725, -0.432352,
		0.293253, 0.499388, -0.815239,
		0.918423, 0.089677, 0.385302,
		43.772392, 40.581768, 37.556305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466507, 40.172344, 36.843311>,  <43.129494, 40.518997, 37.286594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466507, 40.172344, 36.843311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705940, 40.210968, 37.161400>,  <43.849598, 40.234142, 37.352253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705940, 40.210968, 37.161400>,  <43.466507, 40.172344, 36.843311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705940, 40.210968, 37.161400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388863, -0.902924, -0.183069,
		0.700348, 0.418814, -0.578020,
		0.598580, 0.096558, 0.795222,
		43.885513, 40.239937, 37.399967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178154, 40.106232, 36.534611>,  <43.466507, 40.172344, 36.843311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178154, 40.106232, 36.534611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144375, 40.034973, 36.926762>,  <44.124107, 39.992218, 37.162052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144375, 40.034973, 36.926762>,  <44.178154, 40.106232, 36.534611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144375, 40.034973, 36.926762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493860, -0.862023, -0.114099,
		0.865431, 0.474532, 0.160774,
		-0.084447, -0.178145, 0.980374,
		44.119041, 39.981529, 37.220875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818993, 39.901527, 36.773106>,  <44.178154, 40.106232, 36.534611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818993, 39.901527, 36.773106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571884, 39.763245, 37.055622>,  <44.423618, 39.680275, 37.225132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.571884, 39.763245, 37.055622>,  <44.818993, 39.901527, 36.773106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571884, 39.763245, 37.055622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416190, -0.905810, -0.079339,
		0.667195, 0.244938, 0.703460,
		-0.617768, -0.345707, 0.706293,
		44.386555, 39.659531, 37.267509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222267, 39.389481, 37.190697>,  <44.818993, 39.901527, 36.773106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222267, 39.389481, 37.190697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848083, 39.322395, 37.315136>,  <44.623573, 39.282143, 37.389797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848083, 39.322395, 37.315136>,  <45.222267, 39.389481, 37.190697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848083, 39.322395, 37.315136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186985, -0.981810, 0.032959,
		0.299909, 0.089002, 0.949807,
		-0.935463, -0.167715, 0.311096,
		44.567444, 39.272079, 37.408466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309875, 38.947037, 37.813362>,  <45.222267, 39.389481, 37.190697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309875, 38.947037, 37.813362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943428, 38.900261, 37.659969>,  <44.723560, 38.872196, 37.567932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.943428, 38.900261, 37.659969>,  <45.309875, 38.947037, 37.813362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943428, 38.900261, 37.659969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137840, -0.990076, -0.027384,
		-0.376478, -0.077947, 0.923141,
		-0.916114, -0.116936, -0.383486,
		44.668594, 38.865181, 37.544922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101452, 38.321232, 38.109531>,  <45.309875, 38.947037, 37.813362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101452, 38.321232, 38.109531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860512, 38.398655, 37.799767>,  <44.715950, 38.445110, 37.613907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860512, 38.398655, 37.799767>,  <45.101452, 38.321232, 38.109531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860512, 38.398655, 37.799767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046570, -0.959980, -0.276168,
		-0.796875, -0.202413, 0.569227,
		-0.602346, 0.193562, -0.774411,
		44.679810, 38.456722, 37.567444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567131, 37.874870, 38.147587>,  <45.101452, 38.321232, 38.109531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567131, 37.874870, 38.147587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577709, 37.992661, 37.765469>,  <44.584057, 38.063335, 37.536198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577709, 37.992661, 37.765469>,  <44.567131, 37.874870, 38.147587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577709, 37.992661, 37.765469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115669, -0.950109, -0.289680,
		-0.992936, -0.102836, -0.059193,
		0.026450, 0.294480, -0.955291,
		44.585644, 38.081005, 37.478882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112232, 37.395481, 37.808208>,  <44.567131, 37.874870, 38.147587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112232, 37.395481, 37.808208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323681, 37.540535, 37.501209>,  <44.450550, 37.627567, 37.317009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323681, 37.540535, 37.501209>,  <44.112232, 37.395481, 37.808208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323681, 37.540535, 37.501209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120149, -0.927016, -0.355253,
		-0.840312, 0.095580, -0.533610,
		0.528620, 0.362636, -0.767499,
		44.482265, 37.649326, 37.270958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743927, 37.246307, 37.200542>,  <44.112232, 37.395481, 37.808208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743927, 37.246307, 37.200542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130524, 37.285812, 37.105762>,  <44.362480, 37.309517, 37.048893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.130524, 37.285812, 37.105762>,  <43.743927, 37.246307, 37.200542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130524, 37.285812, 37.105762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040366, -0.853076, -0.520222,
		-0.253515, 0.512354, -0.820502,
		0.966489, 0.098764, -0.236949,
		44.420471, 37.315441, 37.034679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801491, 36.994820, 36.594334>,  <43.743927, 37.246307, 37.200542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801491, 36.994820, 36.594334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199356, 36.995522, 36.635597>,  <44.438076, 36.995945, 36.660355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199356, 36.995522, 36.635597>,  <43.801491, 36.994820, 36.594334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199356, 36.995522, 36.635597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070806, -0.738863, -0.670126,
		0.075041, 0.673854, -0.735044,
		0.994663, 0.001758, 0.103158,
		44.497757, 36.996048, 36.666546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111813, 36.955250, 35.899094>,  <43.801491, 36.994820, 36.594334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111813, 36.955250, 35.899094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391529, 36.830746, 36.156498>,  <44.559357, 36.756042, 36.310940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391529, 36.830746, 36.156498>,  <44.111813, 36.955250, 35.899094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391529, 36.830746, 36.156498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210436, -0.770694, -0.601454,
		0.683163, 0.556009, -0.473437,
		0.699289, -0.311263, 0.643514,
		44.601315, 36.737366, 36.349552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645679, 37.022816, 35.441998>,  <44.111813, 36.955250, 35.899094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645679, 37.022816, 35.441998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757442, 36.778934, 35.738697>,  <44.824501, 36.632607, 35.916718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757442, 36.778934, 35.738697>,  <44.645679, 37.022816, 35.441998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757442, 36.778934, 35.738697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301252, -0.677842, -0.670655,
		0.911691, 0.410837, -0.005717,
		0.279405, -0.609707, 0.741747,
		44.841263, 36.596024, 35.961220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394814, 36.956280, 35.484531>,  <44.645679, 37.022816, 35.441998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394814, 36.956280, 35.484531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219566, 36.630859, 35.637470>,  <45.114418, 36.435608, 35.729233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219566, 36.630859, 35.637470>,  <45.394814, 36.956280, 35.484531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219566, 36.630859, 35.637470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529976, -0.577327, -0.621143,
		0.726072, -0.069496, 0.684098,
		-0.438115, -0.813550, 0.382350,
		45.088131, 36.386795, 35.752174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945740, 36.594025, 35.632343>,  <45.394814, 36.956280, 35.484531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945740, 36.594025, 35.632343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627934, 36.352127, 35.610332>,  <45.437248, 36.206989, 35.597126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.627934, 36.352127, 35.610332>,  <45.945740, 36.594025, 35.632343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627934, 36.352127, 35.610332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532847, -0.650854, -0.540798,
		0.291225, -0.458998, 0.839350,
		-0.794520, -0.604739, -0.055030,
		45.389576, 36.170704, 35.593822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255154, 35.957829, 35.459454>,  <45.945740, 36.594025, 35.632343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255154, 35.957829, 35.459454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870815, 35.878792, 35.381748>,  <45.640213, 35.831367, 35.335125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870815, 35.878792, 35.381748>,  <46.255154, 35.957829, 35.459454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870815, 35.878792, 35.381748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276953, -0.662367, -0.696109,
		0.008873, -0.722653, 0.691154,
		-0.960842, -0.197594, -0.194264,
		45.582561, 35.819515, 35.323467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258568, 35.135456, 35.461338>,  <46.255154, 35.957829, 35.459454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258568, 35.135456, 35.461338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968277, 35.339909, 35.277138>,  <45.794102, 35.462578, 35.166618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968277, 35.339909, 35.277138>,  <46.258568, 35.135456, 35.461338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968277, 35.339909, 35.277138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172884, -0.512391, -0.841170,
		-0.665903, -0.690076, 0.283492,
		-0.725730, 0.511127, -0.460505,
		45.750557, 35.493248, 35.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767929, 34.919140, 35.875065>,  <46.258568, 35.135456, 35.461338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767929, 34.919140, 35.875065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868805, 35.256203, 35.684769>,  <46.929333, 35.458439, 35.570591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868805, 35.256203, 35.684769>,  <46.767929, 34.919140, 35.875065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868805, 35.256203, 35.684769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767960, -0.473405, -0.431422,
		-0.588759, -0.256548, -0.766516,
		0.252192, 0.842657, -0.475740,
		46.944462, 35.508999, 35.542046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226574, 34.655678, 35.342747>,  <46.767929, 34.919140, 35.875065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226574, 34.655678, 35.342747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310131, 35.046322, 35.363163>,  <47.360264, 35.280708, 35.375412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310131, 35.046322, 35.363163>,  <47.226574, 34.655678, 35.342747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310131, 35.046322, 35.363163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918639, -0.178056, -0.352702,
		-0.335363, 0.120563, -0.934343,
		0.208888, 0.976607, 0.051040,
		47.372799, 35.339302, 35.378475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.521744, 35.062729, 34.698719>,  <47.226574, 34.655678, 35.342747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.521744, 35.062729, 34.698719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658745, 35.208729, 35.045006>,  <47.740944, 35.296329, 35.252777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658745, 35.208729, 35.045006>,  <47.521744, 35.062729, 34.698719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658745, 35.208729, 35.045006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939518, -0.133520, -0.315401,
		0.000468, 0.921382, -0.388658,
		0.342499, 0.365004, 0.865717,
		47.761494, 35.318230, 35.304722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.870075, 35.303905, 45.007896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491051, 35.334713, 45.131958>,  <38.263634, 35.353195, 45.206394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.491051, 35.334713, 45.131958>,  <38.870075, 35.303905, 45.007896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491051, 35.334713, 45.131958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304079, 0.081198, -0.949180,
		-0.098287, -0.993718, -0.053520,
		-0.947563, 0.077017, 0.310149,
		38.206783, 35.357819, 45.225002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547058, 34.862076, 44.692566>,  <38.870075, 35.303905, 45.007896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547058, 34.862076, 44.692566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278137, 35.143738, 44.783932>,  <38.116783, 35.312737, 44.838749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278137, 35.143738, 44.783932>,  <38.547058, 34.862076, 44.692566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278137, 35.143738, 44.783932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242274, 0.082263, -0.966714,
		-0.699511, -0.705260, 0.115294,
		-0.672301, 0.704159, 0.228411,
		38.076447, 35.354984, 44.852455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035652, 34.745956, 44.225357>,  <38.547058, 34.862076, 44.692566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035652, 34.745956, 44.225357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997002, 35.125214, 44.346481>,  <37.973812, 35.352768, 44.419155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997002, 35.125214, 44.346481>,  <38.035652, 34.745956, 44.225357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997002, 35.125214, 44.346481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262706, 0.269150, -0.926576,
		-0.960025, -0.169083, 0.223074,
		-0.096628, 0.948140, 0.302810,
		37.968014, 35.409657, 44.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563457, 34.945881, 43.824581>,  <38.035652, 34.745956, 44.225357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563457, 34.945881, 43.824581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644016, 35.307510, 43.975365>,  <37.692352, 35.524487, 44.065834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644016, 35.307510, 43.975365>,  <37.563457, 34.945881, 43.824581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644016, 35.307510, 43.975365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470731, 0.426822, -0.772163,
		-0.858982, -0.021932, 0.511536,
		0.201400, 0.904070, 0.376956,
		37.704437, 35.578732, 44.088451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888409, 35.353497, 43.934464>,  <37.563457, 34.945881, 43.824581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888409, 35.353497, 43.934464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204277, 35.581806, 43.844463>,  <37.393799, 35.718792, 43.790462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.204277, 35.581806, 43.844463>,  <36.888409, 35.353497, 43.934464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204277, 35.581806, 43.844463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468832, 0.324836, -0.821388,
		-0.395741, 0.754119, 0.524113,
		0.789675, 0.570777, -0.225004,
		37.441181, 35.753040, 43.776962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511700, 35.924397, 43.718174>,  <36.888409, 35.353497, 43.934464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511700, 35.924397, 43.718174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896339, 35.987728, 43.628498>,  <37.127125, 36.025726, 43.574692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896339, 35.987728, 43.628498>,  <36.511700, 35.924397, 43.718174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896339, 35.987728, 43.628498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253564, 0.199864, -0.946446,
		-0.105041, 0.966947, 0.232335,
		0.961598, 0.158327, -0.224190,
		37.184818, 36.035225, 43.561241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419167, 36.364063, 43.150383>,  <36.511700, 35.924397, 43.718174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419167, 36.364063, 43.150383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800205, 36.242928, 43.138760>,  <37.028828, 36.170246, 43.131786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800205, 36.242928, 43.138760>,  <36.419167, 36.364063, 43.150383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800205, 36.242928, 43.138760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005679, 0.113206, -0.993555,
		0.304181, 0.946293, 0.109560,
		0.952597, -0.302843, -0.029061,
		37.085983, 36.152073, 43.130043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643845, 36.858078, 42.682491>,  <36.419167, 36.364063, 43.150383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643845, 36.858078, 42.682491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899582, 36.550617, 42.690590>,  <37.053024, 36.366142, 42.695450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899582, 36.550617, 42.690590>,  <36.643845, 36.858078, 42.682491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899582, 36.550617, 42.690590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085379, 0.044793, -0.995341,
		0.764164, 0.638096, 0.094265,
		0.639346, -0.768653, 0.020251,
		37.091385, 36.320023, 42.696667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091469, 37.128666, 42.184406>,  <36.643845, 36.858078, 42.682491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091469, 37.128666, 42.184406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127644, 36.732327, 42.224472>,  <37.149349, 36.494522, 42.248512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127644, 36.732327, 42.224472>,  <37.091469, 37.128666, 42.184406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127644, 36.732327, 42.224472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066480, -0.094347, -0.993317,
		0.993681, 0.096493, 0.057339,
		0.090438, -0.990852, 0.100166,
		37.154774, 36.435070, 42.254520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646408, 36.878609, 41.795578>,  <37.091469, 37.128666, 42.184406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646408, 36.878609, 41.795578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411179, 36.557140, 41.831966>,  <37.270039, 36.364258, 41.853798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411179, 36.557140, 41.831966>,  <37.646408, 36.878609, 41.795578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411179, 36.557140, 41.831966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176230, -0.237097, -0.955368,
		0.789372, -0.545798, 0.281063,
		-0.588077, -0.803673, 0.090971,
		37.234756, 36.316040, 41.859257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975876, 36.385239, 41.450726>,  <37.646408, 36.878609, 41.795578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975876, 36.385239, 41.450726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608494, 36.231232, 41.486931>,  <37.388065, 36.138828, 41.508656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608494, 36.231232, 41.486931>,  <37.975876, 36.385239, 41.450726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608494, 36.231232, 41.486931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000443, -0.227856, -0.973695,
		0.395515, -0.894339, 0.209106,
		-0.918459, -0.385018, 0.090517,
		37.332954, 36.115726, 41.514088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959637, 35.726181, 41.089764>,  <37.975876, 36.385239, 41.450726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959637, 35.726181, 41.089764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593620, 35.884563, 41.120529>,  <37.374008, 35.979591, 41.138988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593620, 35.884563, 41.120529>,  <37.959637, 35.726181, 41.089764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593620, 35.884563, 41.120529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148697, -0.153880, -0.976837,
		-0.374945, -0.905286, 0.199684,
		-0.915044, 0.395953, 0.076917,
		37.319107, 36.003349, 41.143604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606937, 35.169125, 40.776211>,  <37.959637, 35.726181, 41.089764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606937, 35.169125, 40.776211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354713, 35.479523, 40.782204>,  <37.203381, 35.665764, 40.785801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354713, 35.479523, 40.782204>,  <37.606937, 35.169125, 40.776211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354713, 35.479523, 40.782204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329102, -0.249838, -0.910644,
		-0.702914, -0.579145, 0.412920,
		-0.630558, 0.775997, 0.014983,
		37.165546, 35.712322, 40.786697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976456, 34.962315, 40.503368>,  <37.606937, 35.169125, 40.776211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976456, 34.962315, 40.503368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937542, 35.359905, 40.483196>,  <36.914192, 35.598461, 40.471092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937542, 35.359905, 40.483196>,  <36.976456, 34.962315, 40.503368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937542, 35.359905, 40.483196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300643, -0.077657, -0.950570,
		-0.948762, -0.077315, 0.306388,
		-0.097287, 0.993978, -0.050434,
		36.908356, 35.658100, 40.468067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426060, 35.020500, 39.986919>,  <36.976456, 34.962315, 40.503368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426060, 35.020500, 39.986919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629402, 35.364059, 40.011818>,  <36.751408, 35.570194, 40.026756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629402, 35.364059, 40.011818>,  <36.426060, 35.020500, 39.986919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629402, 35.364059, 40.011818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134787, 0.150756, -0.979339,
		-0.850534, 0.489460, 0.192405,
		0.508354, 0.858895, 0.062251,
		36.781910, 35.621727, 40.030495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048138, 35.512005, 39.607754>,  <36.426060, 35.020500, 39.986919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048138, 35.512005, 39.607754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405739, 35.688175, 39.640690>,  <36.620300, 35.793877, 39.660450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405739, 35.688175, 39.640690>,  <36.048138, 35.512005, 39.607754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405739, 35.688175, 39.640690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013616, 0.210388, -0.977523,
		-0.447849, 0.872790, 0.194085,
		0.894006, 0.440425, 0.082338,
		36.673939, 35.820301, 39.665390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071114, 35.930317, 39.081871>,  <36.048138, 35.512005, 39.607754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071114, 35.930317, 39.081871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451874, 35.964649, 39.199532>,  <36.680328, 35.985249, 39.270130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451874, 35.964649, 39.199532>,  <36.071114, 35.930317, 39.081871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451874, 35.964649, 39.199532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250296, 0.335977, -0.908004,
		-0.176765, 0.937951, 0.298332,
		0.951896, 0.085832, 0.294155,
		36.737442, 35.990398, 39.287777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352489, 36.597313, 38.948719>,  <36.071114, 35.930317, 39.081871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352489, 36.597313, 38.948719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674732, 36.360336, 38.947567>,  <36.868080, 36.218151, 38.946877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674732, 36.360336, 38.947567>,  <36.352489, 36.597313, 38.948719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674732, 36.360336, 38.947567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241047, 0.332212, -0.911884,
		0.541192, 0.733929, 0.410439,
		0.805610, -0.592439, -0.002879,
		36.916416, 36.182606, 38.946705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765656, 36.992252, 38.584209>,  <36.352489, 36.597313, 38.948719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765656, 36.992252, 38.584209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926983, 36.627480, 38.553967>,  <37.023781, 36.408615, 38.535820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926983, 36.627480, 38.553967>,  <36.765656, 36.992252, 38.584209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926983, 36.627480, 38.553967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266445, 0.196083, -0.943694,
		0.875408, 0.360467, 0.322064,
		0.403322, -0.911929, -0.075608,
		37.047977, 36.353901, 38.531284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395782, 37.016510, 38.331787>,  <36.765656, 36.992252, 38.584209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395782, 37.016510, 38.331787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293587, 36.644634, 38.225647>,  <37.232269, 36.421509, 38.161964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293587, 36.644634, 38.225647>,  <37.395782, 37.016510, 38.331787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293587, 36.644634, 38.225647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183949, 0.222697, -0.957376,
		0.949151, -0.293411, 0.114118,
		-0.255491, -0.929686, -0.265346,
		37.216938, 36.365730, 38.146042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979450, 36.834915, 38.024155>,  <37.395782, 37.016510, 38.331787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979450, 36.834915, 38.024155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677399, 36.612877, 37.884640>,  <37.496166, 36.479656, 37.800930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677399, 36.612877, 37.884640>,  <37.979450, 36.834915, 38.024155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677399, 36.612877, 37.884640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363518, 0.088213, -0.927401,
		0.545561, -0.827098, 0.135174,
		-0.755127, -0.555092, -0.348791,
		37.450859, 36.446350, 37.780003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330158, 36.552979, 37.520573>,  <37.979450, 36.834915, 38.024155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330158, 36.552979, 37.520573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946091, 36.486900, 37.430435>,  <37.715649, 36.447254, 37.376354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946091, 36.486900, 37.430435>,  <38.330158, 36.552979, 37.520573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946091, 36.486900, 37.430435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261507, -0.247267, -0.932991,
		0.098402, -0.954762, 0.280618,
		-0.960173, -0.165192, -0.225345,
		37.658039, 36.437344, 37.362831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626179, 36.496872, 36.826771>,  <38.330158, 36.552979, 37.520573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626179, 36.496872, 36.826771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936363, 36.736271, 36.746311>,  <39.122475, 36.879913, 36.698036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936363, 36.736271, 36.746311>,  <38.626179, 36.496872, 36.826771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936363, 36.736271, 36.746311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523230, -0.430818, 0.735273,
		0.353405, -0.675419, -0.647235,
		0.775458, 0.598502, -0.201146,
		39.169003, 36.915821, 36.685966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120441, 36.005573, 36.813198>,  <38.626179, 36.496872, 36.826771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120441, 36.005573, 36.813198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285225, 36.363190, 36.883606>,  <39.384094, 36.577759, 36.925850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285225, 36.363190, 36.883606>,  <39.120441, 36.005573, 36.813198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285225, 36.363190, 36.883606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482683, -0.377962, 0.790039,
		0.772855, -0.240503, -0.587243,
		0.411962, 0.894038, 0.176023,
		39.408813, 36.631401, 36.936413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777218, 35.833832, 37.038586>,  <39.120441, 36.005573, 36.813198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777218, 35.833832, 37.038586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.735016, 36.214268, 37.154728>,  <39.709694, 36.442528, 37.224411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.735016, 36.214268, 37.154728>,  <39.777218, 35.833832, 37.038586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735016, 36.214268, 37.154728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529093, -0.193534, 0.826199,
		0.841979, 0.240792, -0.482794,
		-0.105505, 0.951086, 0.290353,
		39.703365, 36.499592, 37.241833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495949, 36.100021, 37.282120>,  <39.777218, 35.833832, 37.038586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495949, 36.100021, 37.282120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236488, 36.354412, 37.449345>,  <40.080811, 36.507046, 37.549679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236488, 36.354412, 37.449345>,  <40.495949, 36.100021, 37.282120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236488, 36.354412, 37.449345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434261, -0.141835, 0.889550,
		0.625032, 0.758560, -0.184179,
		-0.648654, 0.635979, 0.418065,
		40.041893, 36.545204, 37.574764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898907, 36.390728, 37.887489>,  <40.495949, 36.100021, 37.282120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898907, 36.390728, 37.887489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525951, 36.505875, 37.974930>,  <40.302177, 36.574963, 38.027393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525951, 36.505875, 37.974930>,  <40.898907, 36.390728, 37.887489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525951, 36.505875, 37.974930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201926, -0.086775, 0.975549,
		0.299799, 0.953730, 0.022780,
		-0.932388, 0.287869, 0.218598,
		40.246235, 36.592236, 38.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927330, 36.873741, 38.408600>,  <40.898907, 36.390728, 37.887489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927330, 36.873741, 38.408600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548191, 36.749859, 38.438709>,  <40.320709, 36.675529, 38.456776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548191, 36.749859, 38.438709>,  <40.927330, 36.873741, 38.408600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548191, 36.749859, 38.438709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085210, -0.018651, 0.996188,
		-0.307118, 0.950650, 0.044068,
		-0.947849, -0.309703, 0.075277,
		40.263836, 36.656948, 38.461292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504223, 37.270870, 38.880749>,  <40.927330, 36.873741, 38.408600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504223, 37.270870, 38.880749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.327339, 36.912132, 38.876221>,  <40.221210, 36.696892, 38.873505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.327339, 36.912132, 38.876221>,  <40.504223, 37.270870, 38.880749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327339, 36.912132, 38.876221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045374, 0.009760, 0.998922,
		-0.895765, 0.442244, -0.045009,
		-0.442207, -0.896841, -0.011324,
		40.194675, 36.643082, 38.872822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184219, 37.356701, 39.423897>,  <40.504223, 37.270870, 38.880749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184219, 37.356701, 39.423897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152142, 36.963902, 39.355480>,  <40.132893, 36.728222, 39.314430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152142, 36.963902, 39.355480>,  <40.184219, 37.356701, 39.423897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152142, 36.963902, 39.355480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157245, -0.156984, 0.975003,
		-0.984298, 0.105089, -0.141824,
		-0.080198, -0.981994, -0.171043,
		40.128082, 36.669304, 39.304169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619648, 37.106121, 39.792294>,  <40.184219, 37.356701, 39.423897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619648, 37.106121, 39.792294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.834766, 36.773708, 39.735489>,  <39.963837, 36.574261, 39.701405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.834766, 36.773708, 39.735489>,  <39.619648, 37.106121, 39.792294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834766, 36.773708, 39.735489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023588, -0.153547, 0.987860,
		-0.842744, -0.534618, -0.062974,
		0.537798, -0.831027, -0.142011,
		39.996105, 36.524399, 39.692886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277847, 36.583344, 40.233528>,  <39.619648, 37.106121, 39.792294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277847, 36.583344, 40.233528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.656498, 36.474880, 40.163818>,  <39.883690, 36.409801, 40.121990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.656498, 36.474880, 40.163818>,  <39.277847, 36.583344, 40.233528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656498, 36.474880, 40.163818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106132, -0.248316, 0.962847,
		-0.304367, -0.929951, -0.206283,
		0.946624, -0.271166, -0.174277,
		39.940487, 36.393532, 40.111534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261463, 35.993763, 40.601242>,  <39.277847, 36.583344, 40.233528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261463, 35.993763, 40.601242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651386, 36.060364, 40.541885>,  <39.885342, 36.100327, 40.506271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651386, 36.060364, 40.541885>,  <39.261463, 35.993763, 40.601242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651386, 36.060364, 40.541885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216643, -0.548752, 0.807426,
		0.053012, -0.819235, -0.571002,
		0.974811, 0.166507, -0.148391,
		39.943829, 36.110317, 40.497368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608078, 35.380333, 40.666798>,  <39.261463, 35.993763, 40.601242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608078, 35.380333, 40.666798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889290, 35.656147, 40.736423>,  <40.058018, 35.821636, 40.778198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.889290, 35.656147, 40.736423>,  <39.608078, 35.380333, 40.666798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889290, 35.656147, 40.736423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174217, -0.404292, 0.897884,
		0.689494, -0.600911, -0.404356,
		0.703026, 0.689532, 0.174068,
		40.100197, 35.863007, 40.788643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308041, 35.034431, 40.722603>,  <39.608078, 35.380333, 40.666798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308041, 35.034431, 40.722603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279739, 35.373329, 40.933189>,  <40.262760, 35.576668, 41.059544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.279739, 35.373329, 40.933189>,  <40.308041, 35.034431, 40.722603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279739, 35.373329, 40.933189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281984, -0.489277, 0.825284,
		0.956807, 0.206844, -0.204294,
		-0.070749, 0.847245, 0.526470,
		40.258514, 35.627502, 41.091129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644115, 34.962181, 41.316216>,  <40.308041, 35.034431, 40.722603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644115, 34.962181, 41.316216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516808, 35.319790, 41.442341>,  <40.440422, 35.534355, 41.518017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516808, 35.319790, 41.442341>,  <40.644115, 34.962181, 41.316216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516808, 35.319790, 41.442341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314741, -0.214089, 0.924718,
		0.894227, 0.393552, -0.213248,
		-0.318271, 0.894026, 0.315311,
		40.421326, 35.587997, 41.536934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116558, 35.180809, 41.836426>,  <40.644115, 34.962181, 41.316216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116558, 35.180809, 41.836426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.808746, 35.424149, 41.914120>,  <40.624058, 35.570152, 41.960735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.808746, 35.424149, 41.914120>,  <41.116558, 35.180809, 41.836426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808746, 35.424149, 41.914120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336696, 0.128059, 0.932865,
		0.542637, 0.783268, -0.303376,
		-0.769533, 0.608352, 0.194233,
		40.577885, 35.606655, 41.972389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360519, 35.669666, 42.297913>,  <41.116558, 35.180809, 41.836426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360519, 35.669666, 42.297913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.962631, 35.661282, 42.338089>,  <40.723896, 35.656250, 42.362194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.962631, 35.661282, 42.338089>,  <41.360519, 35.669666, 42.297913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962631, 35.661282, 42.338089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100573, -0.005375, 0.994915,
		-0.020314, 0.999766, 0.007455,
		-0.994722, -0.020961, 0.100441,
		40.664215, 35.654995, 42.368221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121765, 36.258720, 42.731827>,  <41.360519, 35.669666, 42.297913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121765, 36.258720, 42.731827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843620, 35.971313, 42.737610>,  <40.676735, 35.798870, 42.741081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.843620, 35.971313, 42.737610>,  <41.121765, 36.258720, 42.731827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843620, 35.971313, 42.737610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014468, 0.034109, 0.999313,
		-0.718514, 0.694675, -0.034114,
		-0.695362, -0.718515, 0.014457,
		40.635014, 35.755760, 42.741947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616638, 36.462135, 43.247925>,  <41.121765, 36.258720, 42.731827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616638, 36.462135, 43.247925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507893, 36.078098, 43.221680>,  <40.442646, 35.847675, 43.205933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507893, 36.078098, 43.221680>,  <40.616638, 36.462135, 43.247925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507893, 36.078098, 43.221680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046021, -0.081070, 0.995645,
		-0.961234, 0.267663, 0.066225,
		-0.271866, -0.960096, -0.065609,
		40.426334, 35.790070, 43.201996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.008568, 36.339767, 43.715775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148689, 35.970795, 43.650772>,  <40.232761, 35.749413, 43.611771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148689, 35.970795, 43.650772>,  <40.008568, 36.339767, 43.715775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148689, 35.970795, 43.650772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003075, -0.172371, 0.985027,
		-0.936631, -0.345559, -0.057546,
		0.350305, -0.922430, -0.162511,
		40.253780, 35.694065, 43.602020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530983, 35.887901, 44.025497>,  <40.008568, 36.339767, 43.715775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530983, 35.887901, 44.025497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.877266, 35.688080, 44.012863>,  <40.085033, 35.568188, 44.005283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.877266, 35.688080, 44.012863>,  <39.530983, 35.887901, 44.025497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877266, 35.688080, 44.012863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057448, -0.161844, 0.985143,
		-0.497248, -0.851028, -0.168808,
		0.865704, -0.499558, -0.031587,
		40.136978, 35.538212, 44.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333065, 35.262276, 44.327286>,  <39.530983, 35.887901, 44.025497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333065, 35.262276, 44.327286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726185, 35.306553, 44.386402>,  <39.962059, 35.333118, 44.421871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726185, 35.306553, 44.386402>,  <39.333065, 35.262276, 44.327286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726185, 35.306553, 44.386402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123035, -0.204274, 0.971151,
		0.137691, -0.972635, -0.187142,
		0.982804, 0.110694, 0.147795,
		40.021027, 35.339760, 44.430740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540009, 34.695904, 44.826790>,  <39.333065, 35.262276, 44.327286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540009, 34.695904, 44.826790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860146, 34.935719, 44.827442>,  <40.052227, 35.079605, 44.827835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860146, 34.935719, 44.827442>,  <39.540009, 34.695904, 44.826790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860146, 34.935719, 44.827442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015063, 0.017391, 0.999735,
		0.599348, -0.800160, 0.022949,
		0.800347, 0.599535, 0.001630,
		40.100250, 35.115578, 44.827930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015362, 34.361752, 45.299488>,  <39.540009, 34.695904, 44.826790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015362, 34.361752, 45.299488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149273, 34.736462, 45.258739>,  <40.229618, 34.961288, 45.234291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149273, 34.736462, 45.258739>,  <40.015362, 34.361752, 45.299488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149273, 34.736462, 45.258739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419509, -0.051361, 0.906297,
		0.843763, -0.346144, -0.410180,
		0.334776, 0.936774, -0.101875,
		40.249706, 35.017494, 45.228176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668240, 34.325348, 45.537075>,  <40.015362, 34.361752, 45.299488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668240, 34.325348, 45.537075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.529453, 34.697853, 45.581535>,  <40.446182, 34.921356, 45.608212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.529453, 34.697853, 45.581535>,  <40.668240, 34.325348, 45.537075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529453, 34.697853, 45.581535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400242, 0.039846, 0.915543,
		0.848186, 0.362151, -0.386558,
		-0.346967, 0.931268, 0.111151,
		40.425362, 34.977234, 45.614880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245613, 34.765945, 45.666637>,  <40.668240, 34.325348, 45.537075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245613, 34.765945, 45.666637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925804, 34.957932, 45.811085>,  <40.733917, 35.073124, 45.897751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.925804, 34.957932, 45.811085>,  <41.245613, 34.765945, 45.666637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925804, 34.957932, 45.811085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400964, -0.021143, 0.915850,
		0.447208, 0.877035, -0.175542,
		-0.799521, 0.479961, 0.361115,
		40.685947, 35.101921, 45.919418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562149, 35.218071, 46.108345>,  <41.245613, 34.765945, 45.666637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562149, 35.218071, 46.108345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181301, 35.194283, 46.228302>,  <40.952793, 35.180012, 46.300278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181301, 35.194283, 46.228302>,  <41.562149, 35.218071, 46.108345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181301, 35.194283, 46.228302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294368, 0.086661, 0.951755,
		-0.082588, 0.994461, -0.065006,
		-0.952117, -0.059468, 0.299894,
		40.895664, 35.176441, 46.318272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377502, 35.823795, 46.525543>,  <41.562149, 35.218071, 46.108345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377502, 35.823795, 46.525543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.154678, 35.502098, 46.608376>,  <41.020985, 35.309082, 46.658073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.154678, 35.502098, 46.608376>,  <41.377502, 35.823795, 46.525543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154678, 35.502098, 46.608376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365407, -0.013449, 0.930751,
		-0.745762, 0.594153, 0.301367,
		-0.557061, -0.804240, 0.207078,
		40.987560, 35.260826, 46.670498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342644, 36.045563, 47.225807>,  <41.377502, 35.823795, 46.525543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342644, 36.045563, 47.225807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145924, 35.697311, 47.230469>,  <41.027893, 35.488361, 47.233265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145924, 35.697311, 47.230469>,  <41.342644, 36.045563, 47.225807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145924, 35.697311, 47.230469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053540, -0.016874, 0.998423,
		-0.869063, 0.491645, 0.054912,
		-0.491796, -0.870632, 0.011658,
		40.998386, 35.436123, 47.233967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963001, 36.056767, 47.746616>,  <41.342644, 36.045563, 47.225807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963001, 36.056767, 47.746616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.981144, 35.663704, 47.674694>,  <40.992027, 35.427868, 47.631542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.981144, 35.663704, 47.674694>,  <40.963001, 36.056767, 47.746616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981144, 35.663704, 47.674694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083066, -0.183078, 0.979583,
		-0.995512, -0.029491, -0.089928,
		0.045353, -0.982656, -0.179807,
		40.994751, 35.368908, 47.620750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486488, 35.598465, 48.259254>,  <40.963001, 36.056767, 47.746616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486488, 35.598465, 48.259254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816463, 35.402679, 48.146183>,  <41.014450, 35.285210, 48.078339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816463, 35.402679, 48.146183>,  <40.486488, 35.598465, 48.259254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816463, 35.402679, 48.146183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189588, -0.231530, 0.954175,
		-0.532482, -0.840726, -0.098201,
		0.824936, -0.489463, -0.282677,
		41.063946, 35.255840, 48.061378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488697, 35.082470, 48.737000>,  <40.486488, 35.598465, 48.259254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488697, 35.082470, 48.737000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855640, 35.038132, 48.584068>,  <41.075806, 35.011528, 48.492310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.855640, 35.038132, 48.584068>,  <40.488697, 35.082470, 48.737000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855640, 35.038132, 48.584068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336250, -0.298288, 0.893286,
		-0.213062, -0.948017, -0.236363,
		0.917355, -0.110849, -0.382325,
		41.130848, 35.004875, 48.469372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681141, 34.326771, 48.899559>,  <40.488697, 35.082470, 48.737000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681141, 34.326771, 48.899559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034767, 34.477898, 48.789513>,  <41.246941, 34.568573, 48.723484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034767, 34.477898, 48.789513>,  <40.681141, 34.326771, 48.899559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034767, 34.477898, 48.789513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450127, -0.529905, 0.718739,
		0.125767, -0.759247, -0.638535,
		0.884063, 0.377815, -0.275114,
		41.299988, 34.591244, 48.706978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267220, 33.834930, 48.779133>,  <40.681141, 34.326771, 48.899559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267220, 33.834930, 48.779133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.478214, 34.169231, 48.840153>,  <41.604813, 34.369812, 48.876766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.478214, 34.169231, 48.840153>,  <41.267220, 33.834930, 48.779133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478214, 34.169231, 48.840153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550009, -0.472798, 0.688442,
		0.647493, -0.279241, -0.709068,
		0.527487, 0.835755, 0.152548,
		41.636459, 34.419956, 48.885918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903244, 33.532661, 48.944046>,  <41.267220, 33.834930, 48.779133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903244, 33.532661, 48.944046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.908356, 33.911060, 49.073620>,  <41.911423, 34.138100, 49.151363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.908356, 33.911060, 49.073620>,  <41.903244, 33.532661, 48.944046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908356, 33.911060, 49.073620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388176, -0.303243, 0.870266,
		0.921496, 0.114623, -0.371087,
		0.012777, 0.945994, 0.323931,
		41.912189, 34.194859, 49.170799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578941, 33.840324, 48.936337>,  <41.903244, 33.532661, 48.944046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578941, 33.840324, 48.936337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361965, 34.013702, 49.224194>,  <42.231781, 34.117729, 49.396908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361965, 34.013702, 49.224194>,  <42.578941, 33.840324, 48.936337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361965, 34.013702, 49.224194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429250, -0.593359, 0.680933,
		0.722154, 0.678270, 0.135804,
		-0.542437, 0.433445, 0.719644,
		42.199234, 34.143734, 49.440086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076702, 33.844707, 49.418301>,  <42.578941, 33.840324, 48.936337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076702, 33.844707, 49.418301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.739796, 33.945393, 49.608974>,  <42.537651, 34.005806, 49.723377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.739796, 33.945393, 49.608974>,  <43.076702, 33.844707, 49.418301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739796, 33.945393, 49.608974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310332, -0.496631, 0.810587,
		0.440771, 0.830661, 0.340181,
		-0.842268, 0.251715, 0.476681,
		42.487114, 34.020908, 49.751980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374252, 34.147671, 49.897854>,  <43.076702, 33.844707, 49.418301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374252, 34.147671, 49.897854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.014404, 34.037411, 50.033329>,  <42.798496, 33.971252, 50.114613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.014404, 34.037411, 50.033329>,  <43.374252, 34.147671, 49.897854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014404, 34.037411, 50.033329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423806, -0.364183, 0.829312,
		-0.105259, 0.889599, 0.444448,
		-0.899616, -0.275652, 0.338684,
		42.744518, 33.954716, 50.134933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384602, 34.334900, 50.635357>,  <43.374252, 34.147671, 49.897854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384602, 34.334900, 50.635357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.079552, 34.077183, 50.612427>,  <42.896523, 33.922554, 50.598671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.079552, 34.077183, 50.612427>,  <43.384602, 34.334900, 50.635357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079552, 34.077183, 50.612427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250786, -0.376204, 0.891951,
		-0.596243, 0.665851, 0.448483,
		-0.762628, -0.644293, -0.057323,
		42.850765, 33.883896, 50.595230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856377, 34.553646, 51.133362>,  <43.384602, 34.334900, 50.635357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856377, 34.553646, 51.133362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.817688, 34.160671, 51.069542>,  <42.794476, 33.924885, 51.031250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.817688, 34.160671, 51.069542>,  <42.856377, 34.553646, 51.133362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817688, 34.160671, 51.069542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208162, -0.176726, 0.961996,
		-0.973300, 0.059837, 0.221600,
		-0.096725, -0.982440, -0.159552,
		42.788670, 33.865940, 51.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703537, 34.249531, 51.798370>,  <42.856377, 34.553646, 51.133362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703537, 34.249531, 51.798370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.843456, 33.927105, 51.607418>,  <42.927406, 33.733650, 51.492847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.843456, 33.927105, 51.607418>,  <42.703537, 34.249531, 51.798370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843456, 33.927105, 51.607418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245535, -0.412879, 0.877065,
		-0.904076, -0.424011, 0.053493,
		0.349799, -0.806068, -0.477384,
		42.948395, 33.685284, 51.464203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469627, 33.667320, 52.162231>,  <42.703537, 34.249531, 51.798370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469627, 33.667320, 52.162231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.799683, 33.567760, 51.959373>,  <42.997715, 33.508026, 51.837658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.799683, 33.567760, 51.959373>,  <42.469627, 33.667320, 52.162231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799683, 33.567760, 51.959373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177351, -0.738203, 0.650848,
		-0.536376, -0.626981, -0.564974,
		0.825135, -0.248900, -0.507150,
		43.047222, 33.493092, 51.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653343, 33.673687, 52.132751>,  <42.469627, 33.667320, 52.162231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653343, 33.673687, 52.132751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.601768, 33.282871, 52.064911>,  <41.570824, 33.048382, 52.024204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.601768, 33.282871, 52.064911>,  <41.653343, 33.673687, 52.132751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601768, 33.282871, 52.064911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883702, 0.190810, -0.427391,
		0.449941, 0.094775, -0.888015,
		-0.128936, -0.977041, -0.169606,
		41.563087, 32.989758, 52.014030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590244, 33.443970, 51.334446>,  <41.653343, 33.673687, 52.132751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590244, 33.443970, 51.334446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368843, 33.233433, 51.592625>,  <41.236004, 33.107109, 51.747532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368843, 33.233433, 51.592625>,  <41.590244, 33.443970, 51.334446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368843, 33.233433, 51.592625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815141, 0.183390, -0.549467,
		0.170840, -0.830258, -0.530551,
		-0.553497, -0.526345, 0.645447,
		41.202793, 33.075531, 51.786259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223412, 32.966686, 50.947598>,  <41.590244, 33.443970, 51.334446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223412, 32.966686, 50.947598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017639, 32.987747, 51.289963>,  <40.894176, 33.000385, 51.495380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017639, 32.987747, 51.289963>,  <41.223412, 32.966686, 50.947598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017639, 32.987747, 51.289963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851089, 0.090766, -0.517116,
		-0.104918, -0.994479, -0.001877,
		-0.514432, 0.052658, 0.855913,
		40.863308, 33.003544, 51.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634914, 32.605644, 50.903622>,  <41.223412, 32.966686, 50.947598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634914, 32.605644, 50.903622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576687, 32.899632, 51.168541>,  <40.541748, 33.076023, 51.327492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576687, 32.899632, 51.168541>,  <40.634914, 32.605644, 50.903622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576687, 32.899632, 51.168541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827262, 0.276736, -0.488932,
		-0.542629, -0.619066, 0.567725,
		-0.145572, 0.734966, 0.662295,
		40.533016, 33.120121, 51.367229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021954, 32.480545, 51.225227>,  <40.634914, 32.605644, 50.903622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021954, 32.480545, 51.225227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.103951, 32.871807, 51.238979>,  <40.153149, 33.106564, 51.247231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.103951, 32.871807, 51.238979>,  <40.021954, 32.480545, 51.225227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103951, 32.871807, 51.238979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753594, 0.180149, -0.632173,
		-0.624560, 0.103682, 0.774064,
		0.204991, 0.978160, 0.034380,
		40.165447, 33.165257, 51.249294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409420, 32.861027, 51.483116>,  <40.021954, 32.480545, 51.225227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409420, 32.861027, 51.483116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640938, 33.124050, 51.290199>,  <39.779850, 33.281864, 51.174450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640938, 33.124050, 51.290199>,  <39.409420, 32.861027, 51.483116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640938, 33.124050, 51.290199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784295, 0.286909, -0.550059,
		-0.223324, 0.696632, 0.681785,
		0.578799, 0.657562, -0.482291,
		39.814579, 33.321320, 51.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858788, 33.267250, 51.009808>,  <39.409420, 32.861027, 51.483116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858788, 33.267250, 51.009808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191978, 33.458588, 50.898567>,  <39.391891, 33.573391, 50.831821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.191978, 33.458588, 50.898567>,  <38.858788, 33.267250, 51.009808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191978, 33.458588, 50.898567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535297, 0.569475, -0.623822,
		-0.140026, 0.668498, 0.730413,
		0.832976, 0.478340, -0.278104,
		39.441872, 33.602089, 50.815136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642960, 33.876167, 50.826866>,  <38.858788, 33.267250, 51.009808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642960, 33.876167, 50.826866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003330, 33.861607, 50.653893>,  <39.219555, 33.852871, 50.550110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003330, 33.861607, 50.653893>,  <38.642960, 33.876167, 50.826866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003330, 33.861607, 50.653893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342113, 0.553488, -0.759348,
		0.266990, 0.832061, 0.486200,
		0.900930, -0.036403, -0.432435,
		39.273609, 33.850685, 50.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765305, 34.614578, 50.571346>,  <38.642960, 33.876167, 50.826866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765305, 34.614578, 50.571346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995155, 34.343639, 50.387608>,  <39.133064, 34.181076, 50.277367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995155, 34.343639, 50.387608>,  <38.765305, 34.614578, 50.571346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995155, 34.343639, 50.387608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224132, 0.409559, -0.884322,
		0.787126, 0.611110, 0.083529,
		0.574628, -0.677352, -0.459344,
		39.167545, 34.140434, 50.249805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233021, 34.966133, 50.203121>,  <38.765305, 34.614578, 50.571346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233021, 34.966133, 50.203121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.219563, 34.602013, 50.038086>,  <39.211487, 34.383541, 49.939064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.219563, 34.602013, 50.038086>,  <39.233021, 34.966133, 50.203121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219563, 34.602013, 50.038086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060704, 0.413918, -0.908288,
		0.997589, -0.005514, -0.069185,
		-0.033645, -0.910297, -0.412586,
		39.209469, 34.328922, 49.914310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542877, 35.046452, 49.613312>,  <39.233021, 34.966133, 50.203121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542877, 35.046452, 49.613312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318588, 34.718761, 49.565216>,  <39.184013, 34.522148, 49.536358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318588, 34.718761, 49.565216>,  <39.542877, 35.046452, 49.613312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318588, 34.718761, 49.565216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235211, 0.296829, -0.925510,
		0.793892, -0.490674, -0.359130,
		-0.560724, -0.819226, -0.120238,
		39.150372, 34.472992, 49.529144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755665, 34.685787, 48.917847>,  <39.542877, 35.046452, 49.613312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755665, 34.685787, 48.917847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399994, 34.529160, 49.012531>,  <39.186592, 34.435181, 49.069344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399994, 34.529160, 49.012531>,  <39.755665, 34.685787, 48.917847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399994, 34.529160, 49.012531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318030, 0.156950, -0.934999,
		0.328969, -0.906662, -0.264089,
		-0.889178, -0.391574, 0.236714,
		39.133240, 34.411686, 49.083546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582069, 34.138817, 48.452637>,  <39.755665, 34.685787, 48.917847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582069, 34.138817, 48.452637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230667, 34.243759, 48.612339>,  <39.019825, 34.306725, 48.708160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230667, 34.243759, 48.612339>,  <39.582069, 34.138817, 48.452637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230667, 34.243759, 48.612339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379910, 0.123053, -0.916802,
		-0.289659, -0.957093, -0.008430,
		-0.878502, 0.262358, 0.399253,
		38.967117, 34.322468, 48.732117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995140, 33.691261, 48.163475>,  <39.582069, 34.138817, 48.452637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995140, 33.691261, 48.163475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871971, 34.051929, 48.284912>,  <38.798069, 34.268330, 48.357773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.871971, 34.051929, 48.284912>,  <38.995140, 33.691261, 48.163475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871971, 34.051929, 48.284912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330420, 0.197881, -0.922857,
		-0.892190, -0.384484, 0.236998,
		-0.307926, 0.901673, 0.303589,
		38.779594, 34.322430, 48.375988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431179, 33.804199, 47.610317>,  <38.995140, 33.691261, 48.163475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431179, 33.804199, 47.610317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478550, 34.152470, 47.801273>,  <38.506973, 34.361431, 47.915848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478550, 34.152470, 47.801273>,  <38.431179, 33.804199, 47.610317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478550, 34.152470, 47.801273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232789, 0.491721, -0.839059,
		-0.965290, -0.011767, 0.260915,
		0.118425, 0.870673, 0.477393,
		38.514076, 34.413673, 47.944492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862404, 34.205898, 47.431118>,  <38.431179, 33.804199, 47.610317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862404, 34.205898, 47.431118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152946, 34.455509, 47.546356>,  <38.327271, 34.605274, 47.615498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152946, 34.455509, 47.546356>,  <37.862404, 34.205898, 47.431118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152946, 34.455509, 47.546356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061586, 0.476559, -0.876983,
		-0.684552, 0.619261, 0.384583,
		0.726357, 0.624025, 0.288092,
		38.370853, 34.642715, 47.632782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563438, 34.811058, 47.207550>,  <37.862404, 34.205898, 47.431118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563438, 34.811058, 47.207550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944714, 34.920601, 47.258831>,  <38.173477, 34.986324, 47.289600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944714, 34.920601, 47.258831>,  <37.563438, 34.811058, 47.207550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944714, 34.920601, 47.258831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024979, 0.493843, -0.869192,
		-0.301344, 0.825301, 0.477566,
		0.953188, 0.273855, 0.128202,
		38.230671, 35.002758, 47.297291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683167, 35.481197, 47.139271>,  <37.563438, 34.811058, 47.207550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683167, 35.481197, 47.139271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002674, 35.287029, 46.997101>,  <38.194378, 35.170528, 46.911797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002674, 35.287029, 46.997101>,  <37.683167, 35.481197, 47.139271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002674, 35.287029, 46.997101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045078, 0.540819, -0.839930,
		0.599943, 0.686934, 0.410109,
		0.798772, -0.485424, -0.355426,
		38.242306, 35.141403, 46.890472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289116, 35.905533, 46.893936>,  <37.683167, 35.481197, 47.139271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289116, 35.905533, 46.893936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273491, 35.559303, 46.694237>,  <38.264118, 35.351566, 46.574417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273491, 35.559303, 46.694237>,  <38.289116, 35.905533, 46.893936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273491, 35.559303, 46.694237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126468, 0.499894, -0.856803,
		0.991201, 0.029672, -0.128994,
		-0.039061, -0.865578, -0.499248,
		38.261772, 35.299629, 46.544460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585258, 36.029324, 46.241425>,  <38.289116, 35.905533, 46.893936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585258, 36.029324, 46.241425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389156, 35.690643, 46.158718>,  <38.271496, 35.487434, 46.109093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389156, 35.690643, 46.158718>,  <38.585258, 36.029324, 46.241425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389156, 35.690643, 46.158718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154795, 0.318046, -0.935353,
		0.857722, -0.426556, -0.286989,
		-0.490256, -0.846697, -0.206766,
		38.242081, 35.436634, 46.096687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857475, 35.790531, 45.581657>,  <38.585258, 36.029324, 46.241425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857475, 35.790531, 45.581657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520607, 35.580814, 45.632053>,  <38.318485, 35.454987, 45.662289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520607, 35.580814, 45.632053>,  <38.857475, 35.790531, 45.581657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520607, 35.580814, 45.632053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243559, 0.161414, -0.956360,
		0.481074, -0.836102, -0.263633,
		-0.842168, -0.524289, 0.125988,
		38.267956, 35.423527, 45.669849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.365753, 43.997078, 35.346367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162136, 43.724697, 35.556961>,  <45.039967, 43.561268, 35.683315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162136, 43.724697, 35.556961>,  <45.365753, 43.997078, 35.346367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162136, 43.724697, 35.556961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858642, 0.359032, -0.365827,
		0.060085, -0.638282, -0.767455,
		-0.509042, -0.680950, 0.526483,
		45.009422, 43.520412, 35.714905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984818, 44.293068, 34.766445>,  <45.365753, 43.997078, 35.346367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984818, 44.293068, 34.766445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.699730, 44.166550, 34.516010>,  <44.528679, 44.090637, 34.365749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.699730, 44.166550, 34.516010>,  <44.984818, 44.293068, 34.766445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699730, 44.166550, 34.516010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298300, -0.944504, 0.137580,
		-0.634861, -0.088707, 0.767517,
		-0.712719, -0.316295, -0.626091,
		44.485916, 44.071663, 34.328182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574936, 43.850983, 35.128464>,  <44.984818, 44.293068, 34.766445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574936, 43.850983, 35.128464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555397, 43.730568, 34.747520>,  <44.543674, 43.658321, 34.518955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555397, 43.730568, 34.747520>,  <44.574936, 43.850983, 35.128464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555397, 43.730568, 34.747520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335020, -0.903200, 0.268312,
		-0.940944, -0.305954, 0.144973,
		-0.048848, -0.301035, -0.952361,
		44.540741, 43.640259, 34.461811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159370, 43.223106, 35.074402>,  <44.574936, 43.850983, 35.128464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159370, 43.223106, 35.074402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386707, 43.236549, 34.745560>,  <44.523109, 43.244617, 34.548252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.386707, 43.236549, 34.745560>,  <44.159370, 43.223106, 35.074402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386707, 43.236549, 34.745560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360396, -0.908387, 0.212010,
		-0.739666, -0.416777, -0.528384,
		0.568338, 0.033611, -0.822108,
		44.557209, 43.246632, 34.498928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918579, 42.626465, 34.727066>,  <44.159370, 43.223106, 35.074402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918579, 42.626465, 34.727066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251259, 42.732845, 34.532108>,  <44.450867, 42.796673, 34.415134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251259, 42.732845, 34.532108>,  <43.918579, 42.626465, 34.727066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251259, 42.732845, 34.532108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263079, -0.961786, -0.075877,
		-0.488945, -0.065115, -0.869881,
		0.831699, 0.265947, -0.487391,
		44.500767, 42.812630, 34.385891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853401, 42.299366, 34.120811>,  <43.918579, 42.626465, 34.727066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853401, 42.299366, 34.120811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236084, 42.386326, 34.198227>,  <44.465694, 42.438503, 34.244675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236084, 42.386326, 34.198227>,  <43.853401, 42.299366, 34.120811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236084, 42.386326, 34.198227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255795, -0.945247, -0.202674,
		0.138879, 0.243405, -0.959930,
		0.956703, 0.217398, 0.193537,
		44.523094, 42.451546, 34.256287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122849, 41.855381, 33.627651>,  <43.853401, 42.299366, 34.120811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122849, 41.855381, 33.627651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.398209, 41.938988, 33.905479>,  <44.563423, 41.989151, 34.072174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.398209, 41.938988, 33.905479>,  <44.122849, 41.855381, 33.627651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398209, 41.938988, 33.905479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226088, -0.971707, 0.068333,
		0.689198, 0.109993, -0.716176,
		0.688397, 0.209014, 0.694566,
		44.604729, 42.001694, 34.113850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679356, 41.535187, 33.388313>,  <44.122849, 41.855381, 33.627651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679356, 41.535187, 33.388313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.682774, 41.589890, 33.784542>,  <44.684826, 41.622711, 34.022278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.682774, 41.589890, 33.784542>,  <44.679356, 41.535187, 33.388313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682774, 41.589890, 33.784542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110514, -0.984665, 0.134984,
		0.993838, 0.108318, -0.023529,
		0.008547, 0.136752, 0.990569,
		44.685337, 41.630917, 34.081711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201622, 41.048496, 33.623383>,  <44.679356, 41.535187, 33.388313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201622, 41.048496, 33.623383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990673, 41.149326, 33.947933>,  <44.864105, 41.209824, 34.142666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990673, 41.149326, 33.947933>,  <45.201622, 41.048496, 33.623383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990673, 41.149326, 33.947933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126127, -0.967621, 0.218636,
		0.840221, 0.012965, 0.542089,
		-0.527371, 0.252075, 0.811380,
		44.832462, 41.224949, 34.191349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407856, 40.585800, 34.137016>,  <45.201622, 41.048496, 33.623383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407856, 40.585800, 34.137016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.065372, 40.724545, 34.290165>,  <44.859882, 40.807793, 34.382053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.065372, 40.724545, 34.290165>,  <45.407856, 40.585800, 34.137016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065372, 40.724545, 34.290165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210606, -0.911066, 0.354406,
		0.471750, 0.222811, 0.853116,
		-0.856210, 0.346863, 0.382870,
		44.808510, 40.828602, 34.405025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352669, 40.334709, 34.850666>,  <45.407856, 40.585800, 34.137016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352669, 40.334709, 34.850666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973309, 40.430393, 34.767414>,  <44.745693, 40.487804, 34.717464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973309, 40.430393, 34.767414>,  <45.352669, 40.334709, 34.850666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973309, 40.430393, 34.767414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311225, -0.827797, 0.466788,
		-0.060629, 0.507476, 0.859530,
		-0.948400, 0.239207, -0.208127,
		44.688789, 40.502155, 34.704975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895191, 40.018814, 35.443188>,  <45.352669, 40.334709, 34.850666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895191, 40.018814, 35.443188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649780, 40.074310, 35.132233>,  <44.502533, 40.107609, 34.945660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649780, 40.074310, 35.132233>,  <44.895191, 40.018814, 35.443188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649780, 40.074310, 35.132233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441649, -0.876372, 0.192144,
		-0.654624, 0.461219, 0.598954,
		-0.613526, 0.138745, -0.777390,
		44.465721, 40.115932, 34.899017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221603, 39.863865, 35.522678>,  <44.895191, 40.018814, 35.443188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221603, 39.863865, 35.522678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227077, 39.829731, 35.124176>,  <44.230362, 39.809250, 34.885075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227077, 39.829731, 35.124176>,  <44.221603, 39.863865, 35.522678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227077, 39.829731, 35.124176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264715, -0.961111, 0.078690,
		-0.964229, 0.262648, -0.035746,
		0.013688, -0.085338, -0.996258,
		44.231186, 39.804131, 34.825298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547333, 39.598270, 35.398724>,  <44.221603, 39.863865, 35.522678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547333, 39.598270, 35.398724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777676, 39.512806, 35.083069>,  <43.915882, 39.461525, 34.893677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777676, 39.512806, 35.083069>,  <43.547333, 39.598270, 35.398724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777676, 39.512806, 35.083069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470371, -0.876075, -0.106040,
		-0.668688, 0.432252, -0.604993,
		0.575854, -0.213663, -0.789139,
		43.950432, 39.448708, 34.846329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891914, 39.349678, 34.944519>,  <43.547333, 39.598270, 35.398724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891914, 39.349678, 34.944519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258335, 39.259949, 34.811531>,  <43.478188, 39.206112, 34.731739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258335, 39.259949, 34.811531>,  <42.891914, 39.349678, 34.944519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258335, 39.259949, 34.811531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291005, -0.942196, -0.166079,
		-0.275992, 0.248886, -0.928377,
		0.916048, -0.224325, -0.332466,
		43.533150, 39.192650, 34.711792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806206, 38.875683, 34.403019>,  <42.891914, 39.349678, 34.944519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806206, 38.875683, 34.403019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190479, 38.800896, 34.485115>,  <43.421043, 38.756023, 34.534370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190479, 38.800896, 34.485115>,  <42.806206, 38.875683, 34.403019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190479, 38.800896, 34.485115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164619, -0.978884, -0.121186,
		0.223562, 0.082635, -0.971180,
		0.960688, -0.186967, 0.205238,
		43.478687, 38.744804, 34.546688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090504, 38.353142, 33.951908>,  <42.806206, 38.875683, 34.403019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090504, 38.353142, 33.951908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.317635, 38.309822, 34.278305>,  <43.453911, 38.283829, 34.474144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.317635, 38.309822, 34.278305>,  <43.090504, 38.353142, 33.951908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317635, 38.309822, 34.278305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047104, -0.985407, -0.163568,
		0.821800, 0.131315, -0.554438,
		0.567825, -0.108304, 0.815993,
		43.487984, 38.277332, 34.523102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721195, 37.931530, 33.719807>,  <43.090504, 38.353142, 33.951908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721195, 37.931530, 33.719807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662487, 37.895443, 34.113827>,  <43.627262, 37.873791, 34.350239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662487, 37.895443, 34.113827>,  <43.721195, 37.931530, 33.719807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662487, 37.895443, 34.113827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149544, -0.986410, -0.068064,
		0.977801, 0.137318, 0.158268,
		-0.146771, -0.090221, 0.985048,
		43.618454, 37.868378, 34.409340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053997, 37.367691, 33.772182>,  <43.721195, 37.931530, 33.719807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053997, 37.367691, 33.772182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857384, 37.392708, 34.119625>,  <43.739414, 37.407719, 34.328091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857384, 37.392708, 34.119625>,  <44.053997, 37.367691, 33.772182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857384, 37.392708, 34.119625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025762, -0.998026, 0.057282,
		0.870478, 0.005779, 0.492174,
		-0.491533, 0.062542, 0.868610,
		43.709923, 37.411469, 34.380207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204678, 36.707855, 34.210976>,  <44.053997, 37.367691, 33.772182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204678, 36.707855, 34.210976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878788, 36.878117, 34.368473>,  <43.683254, 36.980274, 34.462971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878788, 36.878117, 34.368473>,  <44.204678, 36.707855, 34.210976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878788, 36.878117, 34.368473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479428, -0.876450, -0.044537,
		0.326140, -0.225058, 0.918140,
		-0.814728, 0.425657, 0.393745,
		43.634369, 37.005814, 34.486595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935066, 36.226059, 34.848385>,  <44.204678, 36.707855, 34.210976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935066, 36.226059, 34.848385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629471, 36.452396, 34.724354>,  <43.446114, 36.588200, 34.649937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.629471, 36.452396, 34.724354>,  <43.935066, 36.226059, 34.848385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629471, 36.452396, 34.724354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510982, -0.824018, -0.244727,
		-0.393984, -0.028526, 0.918674,
		-0.763986, 0.565845, -0.310074,
		43.400276, 36.622150, 34.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371456, 35.637917, 35.160709>,  <43.935066, 36.226059, 34.848385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371456, 35.637917, 35.160709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.761822, 35.693146, 35.228283>,  <44.996040, 35.726284, 35.268826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.761822, 35.693146, 35.228283>,  <44.371456, 35.637917, 35.160709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761822, 35.693146, 35.228283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204954, 0.314720, 0.926793,
		0.074797, -0.939089, 0.335436,
		0.975909, 0.138071, 0.168930,
		45.054596, 35.734566, 35.278961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570633, 35.215157, 35.746304>,  <44.371456, 35.637917, 35.160709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570633, 35.215157, 35.746304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.803757, 35.536716, 35.698845>,  <44.943630, 35.729652, 35.670372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.803757, 35.536716, 35.698845>,  <44.570633, 35.215157, 35.746304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803757, 35.536716, 35.698845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232939, 0.305153, 0.923375,
		0.778505, -0.510517, 0.365106,
		0.582812, 0.803899, -0.118643,
		44.978600, 35.777885, 35.663254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639431, 35.414600, 36.414841>,  <44.570633, 35.215157, 35.746304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639431, 35.414600, 36.414841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824821, 35.712364, 36.222572>,  <44.936054, 35.891022, 36.107212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824821, 35.712364, 36.222572>,  <44.639431, 35.414600, 36.414841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824821, 35.712364, 36.222572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061514, 0.568171, 0.820608,
		0.883974, -0.350761, 0.309124,
		0.463472, 0.744411, -0.480672,
		44.963863, 35.935688, 36.078369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000031, 35.706848, 36.985348>,  <44.639431, 35.414600, 36.414841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000031, 35.706848, 36.985348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976521, 35.984581, 36.698448>,  <44.962414, 36.151222, 36.526310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976521, 35.984581, 36.698448>,  <45.000031, 35.706848, 36.985348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976521, 35.984581, 36.698448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046317, 0.715818, 0.696749,
		0.997196, 0.074170, -0.009910,
		-0.058772, 0.694336, -0.717247,
		44.958889, 36.192883, 36.483273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589836, 36.252048, 37.042374>,  <45.000031, 35.706848, 36.985348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589836, 36.252048, 37.042374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306358, 36.433220, 36.826000>,  <45.136272, 36.541924, 36.696178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306358, 36.433220, 36.826000>,  <45.589836, 36.252048, 37.042374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306358, 36.433220, 36.826000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020400, 0.779557, 0.625999,
		0.705217, 0.432609, -0.561710,
		-0.708698, 0.452924, -0.540932,
		45.093750, 36.569096, 36.663719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750809, 36.946327, 36.977329>,  <45.589836, 36.252048, 37.042374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750809, 36.946327, 36.977329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363773, 36.949135, 36.876350>,  <45.131554, 36.950817, 36.815762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363773, 36.949135, 36.876350>,  <45.750809, 36.946327, 36.977329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363773, 36.949135, 36.876350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087053, 0.929084, 0.359478,
		0.237069, 0.369802, -0.898357,
		-0.967585, 0.007016, -0.252450,
		45.073498, 36.951241, 36.800617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714603, 37.581909, 36.771038>,  <45.750809, 36.946327, 36.977329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714603, 37.581909, 36.771038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329407, 37.503010, 36.844521>,  <45.098289, 37.455669, 36.888611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329407, 37.503010, 36.844521>,  <45.714603, 37.581909, 36.771038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329407, 37.503010, 36.844521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114441, 0.916261, 0.383887,
		-0.244043, 0.348655, -0.904921,
		-0.962988, -0.197245, 0.183707,
		45.040512, 37.443836, 36.899632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358418, 38.175884, 36.514908>,  <45.714603, 37.581909, 36.771038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358418, 38.175884, 36.514908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068169, 38.015942, 36.738907>,  <44.894020, 37.919975, 36.873306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068169, 38.015942, 36.738907>,  <45.358418, 38.175884, 36.514908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068169, 38.015942, 36.738907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254076, 0.912015, 0.321984,
		-0.639471, 0.091356, -0.763368,
		-0.725618, -0.399853, 0.559996,
		44.850483, 37.895985, 36.906906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645386, 38.415371, 36.265781>,  <45.358418, 38.175884, 36.514908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645386, 38.415371, 36.265781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601784, 38.297848, 36.645634>,  <44.575623, 38.227333, 36.873543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601784, 38.297848, 36.645634>,  <44.645386, 38.415371, 36.265781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601784, 38.297848, 36.645634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307777, 0.918353, 0.248802,
		-0.945194, -0.265152, -0.190533,
		-0.109007, -0.293807, 0.949629,
		44.569080, 38.209705, 36.930523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970264, 38.658772, 36.475292>,  <44.645386, 38.415371, 36.265781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970264, 38.658772, 36.475292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.172508, 38.587860, 36.813034>,  <44.293854, 38.545311, 37.015678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.172508, 38.587860, 36.813034>,  <43.970264, 38.658772, 36.475292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172508, 38.587860, 36.813034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402211, 0.817373, 0.412465,
		-0.763273, -0.548154, 0.341967,
		0.505609, -0.177281, 0.844352,
		44.324192, 38.534676, 37.066341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463867, 38.724907, 36.985092>,  <43.970264, 38.658772, 36.475292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463867, 38.724907, 36.985092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.820160, 38.784145, 37.156979>,  <44.033936, 38.819691, 37.260113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.820160, 38.784145, 37.156979>,  <43.463867, 38.724907, 36.985092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820160, 38.784145, 37.156979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360009, 0.807015, 0.468103,
		-0.277465, -0.571658, 0.772153,
		0.890734, 0.148100, 0.429721,
		44.087379, 38.828575, 37.285896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362507, 39.010937, 37.584045>,  <43.463867, 38.724907, 36.985092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362507, 39.010937, 37.584045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750229, 39.100079, 37.542522>,  <43.982864, 39.153564, 37.517609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750229, 39.100079, 37.542522>,  <43.362507, 39.010937, 37.584045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750229, 39.100079, 37.542522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138984, 0.845020, 0.516356,
		0.202793, -0.486081, 0.850059,
		0.969308, 0.222857, -0.103807,
		44.041023, 39.166935, 37.511379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626240, 39.316372, 38.273727>,  <43.362507, 39.010937, 37.584045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626240, 39.316372, 38.273727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869225, 39.406387, 37.969006>,  <44.015015, 39.460396, 37.786175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869225, 39.406387, 37.969006>,  <43.626240, 39.316372, 38.273727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869225, 39.406387, 37.969006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102951, 0.928637, 0.356419,
		0.787646, -0.294941, 0.540947,
		0.607466, 0.225041, -0.761801,
		44.051464, 39.473900, 37.740463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345051, 39.738400, 38.436478>,  <43.626240, 39.316372, 38.273727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345051, 39.738400, 38.436478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273674, 39.826214, 38.052818>,  <44.230846, 39.878902, 37.822624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273674, 39.826214, 38.052818>,  <44.345051, 39.738400, 38.436478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273674, 39.826214, 38.052818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117868, 0.972541, 0.200674,
		0.976864, -0.077243, -0.199423,
		-0.178447, 0.219537, -0.959146,
		44.220139, 39.892075, 37.765076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832985, 40.239651, 38.339409>,  <44.345051, 39.738400, 38.436478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832985, 40.239651, 38.339409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.546963, 40.256557, 38.060295>,  <44.375347, 40.266701, 37.892826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.546963, 40.256557, 38.060295>,  <44.832985, 40.239651, 38.339409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546963, 40.256557, 38.060295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058666, 0.991021, 0.120144,
		0.696598, 0.126846, -0.706160,
		-0.715059, 0.042265, -0.697785,
		44.332443, 40.269238, 37.850960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965820, 40.858322, 38.036987>,  <44.832985, 40.239651, 38.339409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965820, 40.858322, 38.036987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.603264, 40.779922, 37.887295>,  <44.385731, 40.732883, 37.797482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.603264, 40.779922, 37.887295>,  <44.965820, 40.858322, 38.036987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603264, 40.779922, 37.887295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252372, 0.961628, 0.107608,
		0.338777, 0.191979, -0.921072,
		-0.906387, -0.195998, -0.374228,
		44.331348, 40.721123, 37.775024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850361, 41.330532, 37.449219>,  <44.965820, 40.858322, 38.036987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850361, 41.330532, 37.449219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486412, 41.213680, 37.567062>,  <44.268044, 41.143570, 37.637768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486412, 41.213680, 37.567062>,  <44.850361, 41.330532, 37.449219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486412, 41.213680, 37.567062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265601, 0.955638, 0.127323,
		-0.318738, 0.037598, -0.947097,
		-0.909869, -0.292133, 0.294612,
		44.213451, 41.126041, 37.655445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434284, 41.683651, 37.035480>,  <44.850361, 41.330532, 37.449219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434284, 41.683651, 37.035480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200577, 41.551132, 37.331825>,  <44.060352, 41.471622, 37.509632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200577, 41.551132, 37.331825>,  <44.434284, 41.683651, 37.035480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200577, 41.551132, 37.331825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500206, 0.865876, -0.007274,
		-0.639085, -0.374834, -0.671618,
		-0.584264, -0.331298, 0.740862,
		44.025299, 41.451744, 37.554085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810665, 41.605328, 36.700638>,  <44.434284, 41.683651, 37.035480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810665, 41.605328, 36.700638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778111, 41.655727, 37.096111>,  <43.758575, 41.685966, 37.333397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778111, 41.655727, 37.096111>,  <43.810665, 41.605328, 36.700638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778111, 41.655727, 37.096111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592238, 0.791743, -0.149657,
		-0.801642, -0.597718, 0.010185,
		-0.081388, 0.126003, 0.988686,
		43.753693, 41.693527, 37.392715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157215, 41.955101, 36.785610>,  <43.810665, 41.605328, 36.700638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157215, 41.955101, 36.785610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.272415, 42.006866, 37.165150>,  <43.341534, 42.037926, 37.392872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.272415, 42.006866, 37.165150>,  <43.157215, 41.955101, 36.785610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272415, 42.006866, 37.165150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352775, 0.935483, -0.020516,
		-0.890285, -0.328821, 0.315071,
		0.287997, 0.129414, 0.948846,
		43.358814, 42.045692, 37.449802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546185, 42.264278, 37.125366>,  <43.157215, 41.955101, 36.785610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546185, 42.264278, 37.125366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871914, 42.351089, 37.340687>,  <43.067352, 42.403175, 37.469879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871914, 42.351089, 37.340687>,  <42.546185, 42.264278, 37.125366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871914, 42.351089, 37.340687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290534, 0.955319, 0.054360,
		-0.502455, -0.200663, 0.840995,
		0.814327, 0.217024, 0.538305,
		43.116211, 42.416195, 37.502178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.965458, 36.761997, 41.033703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713013, 36.461815, 40.955208>,  <40.561546, 36.281704, 40.908112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713013, 36.461815, 40.955208>,  <40.965458, 36.761997, 41.033703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713013, 36.461815, 40.955208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060354, 0.299724, -0.952115,
		0.773337, -0.589052, -0.234454,
		-0.631116, -0.750455, -0.196236,
		40.523678, 36.236679, 40.896336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174149, 36.462921, 40.418739>,  <40.965458, 36.761997, 41.033703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174149, 36.462921, 40.418739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791302, 36.350918, 40.448483>,  <40.561596, 36.283714, 40.466328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791302, 36.350918, 40.448483>,  <41.174149, 36.462921, 40.418739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791302, 36.350918, 40.448483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115395, 0.133034, -0.984371,
		0.265739, -0.950735, -0.159640,
		-0.957114, -0.280007, 0.074357,
		40.504166, 36.266914, 40.470791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153816, 35.922337, 39.917683>,  <41.174149, 36.462921, 40.418739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153816, 35.922337, 39.917683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779667, 36.044556, 39.988926>,  <40.555180, 36.117886, 40.031673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779667, 36.044556, 39.988926>,  <41.153816, 35.922337, 39.917683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779667, 36.044556, 39.988926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185359, 0.005382, -0.982656,
		-0.301204, -0.952162, 0.051601,
		-0.935371, 0.305544, 0.178113,
		40.499054, 36.136219, 40.042358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773327, 35.494431, 39.443348>,  <41.153816, 35.922337, 39.917683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773327, 35.494431, 39.443348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557590, 35.820404, 39.528194>,  <40.428150, 36.015987, 39.579102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557590, 35.820404, 39.528194>,  <40.773327, 35.494431, 39.443348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557590, 35.820404, 39.528194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151943, 0.153585, -0.976383,
		-0.828269, -0.558829, 0.040990,
		-0.539336, 0.814936, 0.212121,
		40.395790, 36.064884, 39.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208332, 35.392010, 39.022633>,  <40.773327, 35.494431, 39.443348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208332, 35.392010, 39.022633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171848, 35.778576, 39.118729>,  <40.149956, 36.010517, 39.176384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171848, 35.778576, 39.118729>,  <40.208332, 35.392010, 39.022633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171848, 35.778576, 39.118729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269356, 0.208308, -0.940242,
		-0.958712, -0.150470, 0.241311,
		-0.091211, 0.966419, 0.240237,
		40.144485, 36.068501, 39.190800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569191, 35.513771, 38.787712>,  <40.208332, 35.392010, 39.022633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569191, 35.513771, 38.787712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772362, 35.857410, 38.812885>,  <39.894264, 36.063595, 38.827991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772362, 35.857410, 38.812885>,  <39.569191, 35.513771, 38.787712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772362, 35.857410, 38.812885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306333, 0.248434, -0.918934,
		-0.805093, 0.447468, 0.389356,
		0.507923, 0.859100, 0.062938,
		39.924740, 36.115139, 38.831768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125263, 36.021309, 38.590248>,  <39.569191, 35.513771, 38.787712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125263, 36.021309, 38.590248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481396, 36.187527, 38.515800>,  <39.695076, 36.287258, 38.471134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481396, 36.187527, 38.515800>,  <39.125263, 36.021309, 38.590248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481396, 36.187527, 38.515800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373810, 0.433703, -0.819858,
		-0.259969, 0.799515, 0.541472,
		0.890327, 0.415545, -0.186117,
		39.748493, 36.312191, 38.459965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935352, 36.568012, 38.257202>,  <39.125263, 36.021309, 38.590248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935352, 36.568012, 38.257202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327488, 36.582481, 38.179619>,  <39.562771, 36.591164, 38.133068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327488, 36.582481, 38.179619>,  <38.935352, 36.568012, 38.257202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327488, 36.582481, 38.179619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190368, 0.431790, -0.881656,
		0.051859, 0.901249, 0.430187,
		0.980342, 0.036172, -0.193961,
		39.621590, 36.593334, 38.121429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085297, 37.283577, 38.058125>,  <38.935352, 36.568012, 38.257202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085297, 37.283577, 38.058125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379433, 37.049355, 37.921654>,  <39.555912, 36.908821, 37.839771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379433, 37.049355, 37.921654>,  <39.085297, 37.283577, 38.058125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379433, 37.049355, 37.921654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064226, 0.440951, -0.895230,
		0.674651, 0.680209, 0.286640,
		0.735337, -0.585558, -0.341175,
		39.600033, 36.873688, 37.819302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494259, 37.728165, 37.633701>,  <39.085297, 37.283577, 38.058125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494259, 37.728165, 37.633701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592480, 37.356495, 37.523182>,  <39.651413, 37.133492, 37.456871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592480, 37.356495, 37.523182>,  <39.494259, 37.728165, 37.633701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592480, 37.356495, 37.523182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194080, 0.232132, -0.953125,
		0.949756, 0.287666, -0.123334,
		0.245552, -0.929173, -0.276299,
		39.666145, 37.077744, 37.440292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028751, 37.756496, 37.046185>,  <39.494259, 37.728165, 37.633701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028751, 37.756496, 37.046185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857468, 37.398632, 36.995235>,  <39.754700, 37.183914, 36.964664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857468, 37.398632, 36.995235>,  <40.028751, 37.756496, 37.046185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857468, 37.398632, 36.995235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193195, 0.228325, -0.954224,
		0.882788, -0.383997, -0.270614,
		-0.428207, -0.894659, -0.127376,
		39.729004, 37.130234, 36.957024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216671, 37.530575, 36.371689>,  <40.028751, 37.756496, 37.046185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216671, 37.530575, 36.371689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873306, 37.352016, 36.472763>,  <39.667286, 37.244881, 36.533409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873306, 37.352016, 36.472763>,  <40.216671, 37.530575, 36.371689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873306, 37.352016, 36.472763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360330, 0.174158, -0.916423,
		0.365083, -0.877723, -0.310350,
		-0.858415, -0.446399, 0.252688,
		39.615780, 37.218098, 36.548569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077461, 36.825733, 35.951332>,  <40.216671, 37.530575, 36.371689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077461, 36.825733, 35.951332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469971, 36.869671, 36.014618>,  <40.705479, 36.896034, 36.052589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469971, 36.869671, 36.014618>,  <40.077461, 36.825733, 35.951332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469971, 36.869671, 36.014618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188796, -0.711137, -0.677230,
		0.038123, 0.694420, -0.718560,
		0.981276, 0.109843, 0.158214,
		40.764355, 36.902622, 36.062080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582073, 36.259197, 36.056198>,  <40.077461, 36.825733, 35.951332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582073, 36.259197, 36.056198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593670, 36.009800, 35.743679>,  <40.600628, 35.860161, 35.556168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593670, 36.009800, 35.743679>,  <40.582073, 36.259197, 36.056198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593670, 36.009800, 35.743679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214098, -0.767356, 0.604423,
		-0.976382, 0.149748, -0.155737,
		0.028995, -0.623491, -0.781293,
		40.602367, 35.822754, 35.509293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989223, 35.807400, 35.946121>,  <40.582073, 36.259197, 36.056198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989223, 35.807400, 35.946121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310230, 35.619541, 35.798935>,  <40.502834, 35.506828, 35.710621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310230, 35.619541, 35.798935>,  <39.989223, 35.807400, 35.946121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310230, 35.619541, 35.798935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301864, -0.851598, 0.428554,
		-0.514628, -0.232846, -0.825191,
		0.802518, -0.469642, -0.367968,
		40.550987, 35.478649, 35.688545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796120, 35.224701, 35.827991>,  <39.989223, 35.807400, 35.946121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796120, 35.224701, 35.827991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192104, 35.179409, 35.861816>,  <40.429695, 35.152233, 35.882111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192104, 35.179409, 35.861816>,  <39.796120, 35.224701, 35.827991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192104, 35.179409, 35.861816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140129, -0.863932, 0.483721,
		0.018284, -0.490716, -0.871128,
		0.989964, -0.113226, 0.084560,
		40.489094, 35.145443, 35.887184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887589, 34.561966, 35.739807>,  <39.796120, 35.224701, 35.827991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887589, 34.561966, 35.739807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216305, 34.689709, 35.928562>,  <40.413532, 34.766354, 36.041817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216305, 34.689709, 35.928562>,  <39.887589, 34.561966, 35.739807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216305, 34.689709, 35.928562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024204, -0.807860, 0.588877,
		0.569281, -0.495353, -0.656159,
		0.821787, 0.319355, 0.471889,
		40.462841, 34.785515, 36.070129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483852, 33.958443, 35.710617>,  <39.887589, 34.561966, 35.739807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483852, 33.958443, 35.710617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534767, 34.193054, 36.030563>,  <40.565315, 34.333820, 36.222530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534767, 34.193054, 36.030563>,  <40.483852, 33.958443, 35.710617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534767, 34.193054, 36.030563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086075, -0.796847, 0.598018,
		0.988124, -0.144967, -0.050941,
		0.127285, 0.586531, 0.799862,
		40.572952, 34.369015, 36.270523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889565, 33.591610, 36.202644>,  <40.483852, 33.958443, 35.710617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889565, 33.591610, 36.202644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716541, 33.856159, 36.447750>,  <40.612728, 34.014889, 36.594814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716541, 33.856159, 36.447750>,  <40.889565, 33.591610, 36.202644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716541, 33.856159, 36.447750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110717, -0.635531, 0.764095,
		0.894783, 0.398357, 0.201677,
		-0.432555, 0.661371, 0.612768,
		40.586773, 34.054569, 36.631580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127964, 33.365116, 36.844822>,  <40.889565, 33.591610, 36.202644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127964, 33.365116, 36.844822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882721, 33.657654, 36.964310>,  <40.735577, 33.833176, 37.036003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882721, 33.657654, 36.964310>,  <41.127964, 33.365116, 36.844822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882721, 33.657654, 36.964310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119585, -0.287855, 0.950178,
		0.780896, 0.618284, 0.089028,
		-0.613107, 0.731344, 0.298723,
		40.698788, 33.877056, 37.053928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346886, 33.687656, 37.387844>,  <41.127964, 33.365116, 36.844822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346886, 33.687656, 37.387844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956810, 33.767441, 37.426254>,  <40.722763, 33.815311, 37.449303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956810, 33.767441, 37.426254>,  <41.346886, 33.687656, 37.387844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956810, 33.767441, 37.426254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017417, -0.501564, 0.864945,
		0.220690, 0.841812, 0.492593,
		-0.975188, 0.199465, 0.096028,
		40.664253, 33.827282, 37.455063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324501, 33.703091, 38.037766>,  <41.346886, 33.687656, 37.387844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324501, 33.703091, 38.037766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938183, 33.675850, 37.937679>,  <40.706394, 33.659504, 37.877628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938183, 33.675850, 37.937679>,  <41.324501, 33.703091, 38.037766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938183, 33.675850, 37.937679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175517, -0.538627, 0.824060,
		-0.190893, 0.839788, 0.508248,
		-0.965792, -0.068101, -0.250217,
		40.648445, 33.655418, 37.862614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900669, 33.975063, 38.561848>,  <41.324501, 33.703091, 38.037766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900669, 33.975063, 38.561848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700169, 33.697083, 38.355625>,  <40.579868, 33.530296, 38.231892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700169, 33.697083, 38.355625>,  <40.900669, 33.975063, 38.561848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700169, 33.697083, 38.355625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078584, -0.556784, 0.826932,
		-0.861728, 0.455012, 0.224474,
		-0.501248, -0.694950, -0.515553,
		40.549793, 33.488598, 38.200958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215977, 33.958115, 38.847908>,  <40.900669, 33.975063, 38.561848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215977, 33.958115, 38.847908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273350, 33.613117, 38.653782>,  <40.307774, 33.406116, 38.537308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273350, 33.613117, 38.653782>,  <40.215977, 33.958115, 38.847908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273350, 33.613117, 38.653782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167451, -0.504464, 0.847040,
		-0.975391, -0.040225, -0.216781,
		0.143431, -0.862496, -0.485314,
		40.316380, 33.354370, 38.508186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602966, 33.602093, 39.011204>,  <40.215977, 33.958115, 38.847908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602966, 33.602093, 39.011204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899178, 33.352093, 38.912415>,  <40.076904, 33.202091, 38.853142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899178, 33.352093, 38.912415>,  <39.602966, 33.602093, 39.011204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899178, 33.352093, 38.912415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263163, -0.607842, 0.749182,
		-0.618370, -0.489785, -0.614596,
		0.740515, -0.625011, -0.246978,
		40.121334, 33.164593, 38.838322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389236, 32.951263, 39.326237>,  <39.602966, 33.602093, 39.011204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389236, 32.951263, 39.326237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775085, 32.892921, 39.238396>,  <40.006596, 32.857918, 39.185692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775085, 32.892921, 39.238396>,  <39.389236, 32.951263, 39.326237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775085, 32.892921, 39.238396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121174, -0.494497, 0.860691,
		-0.234129, -0.856854, -0.459330,
		0.964625, -0.145854, -0.219605,
		40.064472, 32.849167, 39.172516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538692, 32.251808, 39.541569>,  <39.389236, 32.951263, 39.326237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538692, 32.251808, 39.541569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888115, 32.446445, 39.537125>,  <40.097771, 32.563229, 39.534458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888115, 32.446445, 39.537125>,  <39.538692, 32.251808, 39.541569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888115, 32.446445, 39.537125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295029, -0.511221, 0.807225,
		0.387108, -0.708436, -0.590140,
		0.873559, 0.486592, -0.011111,
		40.150181, 32.592422, 39.533791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041664, 31.762564, 39.715603>,  <39.538692, 32.251808, 39.541569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041664, 31.762564, 39.715603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206867, 32.119320, 39.789314>,  <40.305988, 32.333374, 39.833542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206867, 32.119320, 39.789314>,  <40.041664, 31.762564, 39.715603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206867, 32.119320, 39.789314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331911, -0.335829, 0.881506,
		0.848093, -0.302903, -0.434727,
		0.413005, 0.891891, 0.184278,
		40.330769, 32.386887, 39.844597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005394, 30.980097, 39.717724>,  <40.041664, 31.762564, 39.715603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005394, 30.980097, 39.717724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660072, 30.876858, 39.891201>,  <39.452881, 30.814915, 39.995289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660072, 30.876858, 39.891201>,  <40.005394, 30.980097, 39.717724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660072, 30.876858, 39.891201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478609, 0.146048, -0.865796,
		0.160120, -0.955016, -0.249612,
		-0.863305, -0.258098, 0.433694,
		39.401081, 30.799429, 40.021309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761658, 30.648029, 39.162983>,  <40.005394, 30.980097, 39.717724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761658, 30.648029, 39.162983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470104, 30.738113, 39.421597>,  <39.295170, 30.792164, 39.576763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470104, 30.738113, 39.421597>,  <39.761658, 30.648029, 39.162983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470104, 30.738113, 39.421597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607895, 0.221525, -0.762490,
		-0.314943, -0.948793, -0.024563,
		-0.728886, 0.225209, 0.646534,
		39.251438, 30.805676, 39.615555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120918, 30.155506, 39.024231>,  <39.761658, 30.648029, 39.162983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120918, 30.155506, 39.024231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024681, 30.493357, 39.215530>,  <38.966938, 30.696068, 39.330311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024681, 30.493357, 39.215530>,  <39.120918, 30.155506, 39.024231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024681, 30.493357, 39.215530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611934, 0.250472, -0.750200,
		-0.753427, -0.473149, 0.456594,
		-0.240593, 0.844626, 0.478249,
		38.952503, 30.746744, 39.359005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415936, 30.145325, 38.838215>,  <39.120918, 30.155506, 39.024231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415936, 30.145325, 38.838215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516216, 30.514194, 38.956024>,  <38.576385, 30.735516, 39.026711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516216, 30.514194, 38.956024>,  <38.415936, 30.145325, 38.838215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516216, 30.514194, 38.956024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293026, 0.362255, -0.884820,
		-0.922652, 0.135520, 0.361038,
		0.250699, 0.922174, 0.294525,
		38.591427, 30.790846, 39.044380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884525, 30.472872, 38.679470>,  <38.415936, 30.145325, 38.838215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884525, 30.472872, 38.679470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154102, 30.765789, 38.718552>,  <38.315849, 30.941540, 38.742001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154102, 30.765789, 38.718552>,  <37.884525, 30.472872, 38.679470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154102, 30.765789, 38.718552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446528, 0.509125, -0.735801,
		-0.588566, 0.452261, 0.670112,
		0.673945, 0.732291, 0.097706,
		38.356285, 30.985476, 38.747864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504490, 31.059063, 38.803116>,  <37.884525, 30.472872, 38.679470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504490, 31.059063, 38.803116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852604, 31.218655, 38.687592>,  <38.061474, 31.314409, 38.618279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852604, 31.218655, 38.687592>,  <37.504490, 31.059063, 38.803116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852604, 31.218655, 38.687592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478818, 0.547875, -0.685979,
		-0.115459, 0.735288, 0.667848,
		0.870289, 0.398980, -0.288812,
		38.113689, 31.338348, 38.600948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448727, 31.711710, 38.771061>,  <37.504490, 31.059063, 38.803116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448727, 31.711710, 38.771061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768383, 31.687172, 38.531857>,  <37.960175, 31.672449, 38.388332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768383, 31.687172, 38.531857>,  <37.448727, 31.711710, 38.771061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768383, 31.687172, 38.531857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390200, 0.703809, -0.593631,
		0.457300, 0.707736, 0.538504,
		0.799138, -0.061343, -0.598010,
		38.008125, 31.668770, 38.352455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647449, 32.386127, 38.549828>,  <37.448727, 31.711710, 38.771061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647449, 32.386127, 38.549828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812191, 32.142918, 38.278336>,  <37.911037, 31.996992, 38.115440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812191, 32.142918, 38.278336>,  <37.647449, 32.386127, 38.549828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812191, 32.142918, 38.278336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469052, 0.497135, -0.729964,
		0.781260, 0.619000, -0.080449,
		0.411854, -0.608026, -0.678734,
		37.935749, 31.960510, 38.074715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953831, 32.849754, 37.995125>,  <37.647449, 32.386127, 38.549828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953831, 32.849754, 37.995125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877804, 32.493141, 37.830662>,  <37.832188, 32.279175, 37.731983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877804, 32.493141, 37.830662>,  <37.953831, 32.849754, 37.995125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877804, 32.493141, 37.830662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465672, 0.450551, -0.761678,
		0.864307, 0.046700, -0.500793,
		-0.190063, -0.891528, -0.411161,
		37.820786, 32.225681, 37.707314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089344, 32.964470, 37.243530>,  <37.953831, 32.849754, 37.995125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089344, 32.964470, 37.243530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850376, 32.645237, 37.274937>,  <37.706997, 32.453697, 37.293781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850376, 32.645237, 37.274937>,  <38.089344, 32.964470, 37.243530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850376, 32.645237, 37.274937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608438, 0.387316, -0.692669,
		0.522395, -0.461582, -0.716970,
		-0.597417, -0.798078, 0.078512,
		37.671150, 32.405815, 37.298489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998260, 32.697372, 36.622021>,  <38.089344, 32.964470, 37.243530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998260, 32.697372, 36.622021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672855, 32.576210, 36.820591>,  <37.477612, 32.503513, 36.939735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672855, 32.576210, 36.820591>,  <37.998260, 32.697372, 36.622021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672855, 32.576210, 36.820591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581269, 0.449807, -0.678085,
		-0.017900, -0.840191, -0.541995,
		-0.813514, -0.302907, 0.496429,
		37.428802, 32.485336, 36.969521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461056, 32.382080, 36.161942>,  <37.998260, 32.697372, 36.622021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461056, 32.382080, 36.161942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273979, 32.493053, 36.497631>,  <37.161732, 32.559639, 36.699043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273979, 32.493053, 36.497631>,  <37.461056, 32.382080, 36.161942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273979, 32.493053, 36.497631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663240, 0.517464, -0.540688,
		-0.584274, -0.809481, -0.058006,
		-0.467693, 0.277438, 0.839221,
		37.133671, 32.576286, 36.749397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.245049, 29.038919, 43.375156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005791, 29.341215, 43.481800>,  <39.862236, 29.522593, 43.545784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005791, 29.341215, 43.481800>,  <40.245049, 29.038919, 43.375156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005791, 29.341215, 43.481800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081609, 0.273510, -0.958401,
		-0.797223, -0.595019, -0.101923,
		-0.598143, 0.755742, 0.266607,
		39.826347, 29.567938, 43.561783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569347, 28.979361, 43.041115>,  <40.245049, 29.038919, 43.375156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569347, 28.979361, 43.041115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624714, 29.365885, 43.127907>,  <39.657932, 29.597799, 43.179981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624714, 29.365885, 43.127907>,  <39.569347, 28.979361, 43.041115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624714, 29.365885, 43.127907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012915, 0.220836, -0.975226,
		-0.990290, 0.132185, 0.043048,
		0.138416, 0.966312, 0.216984,
		39.666237, 29.655779, 43.193001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186058, 29.134308, 42.490696>,  <39.569347, 28.979361, 43.041115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186058, 29.134308, 42.490696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303791, 29.496569, 42.612785>,  <39.374432, 29.713926, 42.686039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303791, 29.496569, 42.612785>,  <39.186058, 29.134308, 42.490696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303791, 29.496569, 42.612785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267113, 0.384597, -0.883593,
		-0.917616, 0.178542, 0.355111,
		0.294333, 0.905653, 0.305221,
		39.392090, 29.768265, 42.704353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571365, 29.655596, 42.314697>,  <39.186058, 29.134308, 42.490696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571365, 29.655596, 42.314697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926266, 29.833941, 42.362011>,  <39.139206, 29.940947, 42.390400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926266, 29.833941, 42.362011>,  <38.571365, 29.655596, 42.314697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926266, 29.833941, 42.362011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154114, 0.528199, -0.835018,
		-0.434778, 0.722643, 0.537359,
		0.887253, 0.445862, 0.118280,
		39.192440, 29.967699, 42.397495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484882, 30.371096, 42.216347>,  <38.571365, 29.655596, 42.314697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484882, 30.371096, 42.216347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875164, 30.324881, 42.141880>,  <39.109333, 30.297152, 42.097198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875164, 30.324881, 42.141880>,  <38.484882, 30.371096, 42.216347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875164, 30.324881, 42.141880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113269, 0.461356, -0.879955,
		0.187560, 0.879660, 0.437058,
		0.975701, -0.115539, -0.186170,
		39.167873, 30.290218, 42.086029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715946, 31.029289, 41.822632>,  <38.484882, 30.371096, 42.216347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715946, 31.029289, 41.822632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964497, 30.726549, 41.741573>,  <39.113628, 30.544905, 41.692936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964497, 30.726549, 41.741573>,  <38.715946, 31.029289, 41.822632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964497, 30.726549, 41.741573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024316, 0.277146, -0.960520,
		0.783134, 0.591917, 0.190616,
		0.621377, -0.756851, -0.202649,
		39.150909, 30.499495, 41.680779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979660, 31.289843, 41.287617>,  <38.715946, 31.029289, 41.822632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979660, 31.289843, 41.287617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129570, 30.919271, 41.273296>,  <39.219517, 30.696930, 41.264706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129570, 30.919271, 41.273296>,  <38.979660, 31.289843, 41.287617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129570, 30.919271, 41.273296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216344, 0.124937, -0.968290,
		0.901522, 0.355143, 0.247249,
		0.374772, -0.926426, -0.035801,
		39.242001, 30.641344, 41.262558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668545, 31.362167, 41.068478>,  <38.979660, 31.289843, 41.287617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668545, 31.362167, 41.068478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538963, 30.994444, 40.979107>,  <39.461212, 30.773809, 40.925484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538963, 30.994444, 40.979107>,  <39.668545, 31.362167, 41.068478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538963, 30.994444, 40.979107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064810, 0.214045, -0.974671,
		0.943850, -0.330231, -0.009761,
		-0.323956, -0.919311, -0.223428,
		39.441776, 30.718651, 40.912079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088726, 31.222086, 40.549324>,  <39.668545, 31.362167, 41.068478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088726, 31.222086, 40.549324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767010, 30.984549, 40.540707>,  <39.573978, 30.842026, 40.535538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767010, 30.984549, 40.540707>,  <40.088726, 31.222086, 40.549324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767010, 30.984549, 40.540707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112190, 0.187352, -0.975865,
		0.583549, -0.782462, -0.217309,
		-0.804291, -0.593845, -0.021545,
		39.525723, 30.806395, 40.534245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686874, 31.610491, 40.153179>,  <40.088726, 31.222086, 40.549324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686874, 31.610491, 40.153179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589630, 31.991903, 40.224373>,  <40.531284, 32.220749, 40.267090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589630, 31.991903, 40.224373>,  <40.686874, 31.610491, 40.153179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589630, 31.991903, 40.224373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450084, -0.051646, 0.891491,
		0.859256, 0.296840, -0.416613,
		-0.243113, 0.953530, 0.177980,
		40.516697, 32.277962, 40.277767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193836, 31.785421, 40.527256>,  <40.686874, 31.610491, 40.153179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193836, 31.785421, 40.527256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.943207, 32.083069, 40.619946>,  <40.792828, 32.261658, 40.675560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.943207, 32.083069, 40.619946>,  <41.193836, 31.785421, 40.527256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943207, 32.083069, 40.619946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334929, -0.011378, 0.942175,
		0.703726, 0.667951, -0.242098,
		-0.626572, 0.744118, 0.231723,
		40.755234, 32.306305, 40.689461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557411, 32.207134, 40.982346>,  <41.193836, 31.785421, 40.527256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557411, 32.207134, 40.982346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202278, 32.376453, 41.054535>,  <40.989197, 32.478043, 41.097851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202278, 32.376453, 41.054535>,  <41.557411, 32.207134, 40.982346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202278, 32.376453, 41.054535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297909, 0.229820, 0.926516,
		0.350711, 0.876359, -0.330146,
		-0.887835, 0.423294, 0.180475,
		40.935928, 32.503441, 41.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666233, 32.828182, 41.221458>,  <41.557411, 32.207134, 40.982346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666233, 32.828182, 41.221458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.298306, 32.750477, 41.357811>,  <41.077549, 32.703854, 41.439625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.298306, 32.750477, 41.357811>,  <41.666233, 32.828182, 41.221458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298306, 32.750477, 41.357811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273715, 0.304757, 0.912252,
		-0.281107, 0.932407, -0.227146,
		-0.919814, -0.194267, 0.340883,
		41.022362, 32.692196, 41.460075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422775, 33.473328, 41.559399>,  <41.666233, 32.828182, 41.221458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422775, 33.473328, 41.559399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.196838, 33.179482, 41.709759>,  <41.061275, 33.003174, 41.799976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.196838, 33.179482, 41.709759>,  <41.422775, 33.473328, 41.559399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196838, 33.179482, 41.709759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227841, 0.298983, 0.926660,
		-0.793121, 0.609062, -0.001503,
		-0.564843, -0.734611, 0.375899,
		41.027386, 32.959099, 41.822529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055420, 33.787952, 42.201870>,  <41.422775, 33.473328, 41.559399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055420, 33.787952, 42.201870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005711, 33.397289, 42.271950>,  <40.975883, 33.162891, 42.313999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.005711, 33.397289, 42.271950>,  <41.055420, 33.787952, 42.201870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005711, 33.397289, 42.271950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324581, 0.126839, 0.937315,
		-0.937658, 0.173354, 0.301241,
		-0.124278, -0.976658, 0.175199,
		40.968426, 33.104294, 42.324509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726185, 33.787121, 42.887436>,  <41.055420, 33.787952, 42.201870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726185, 33.787121, 42.887436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949821, 33.467663, 42.798367>,  <41.084003, 33.275990, 42.744923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949821, 33.467663, 42.798367>,  <40.726185, 33.787121, 42.887436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949821, 33.467663, 42.798367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486584, 0.098603, 0.868051,
		-0.671308, -0.593670, 0.443735,
		0.559090, -0.798644, -0.222678,
		41.117550, 33.228069, 42.731564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680908, 33.470051, 43.537228>,  <40.726185, 33.787121, 42.887436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680908, 33.470051, 43.537228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.983021, 33.299248, 43.338345>,  <41.164288, 33.196766, 43.219017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.983021, 33.299248, 43.338345>,  <40.680908, 33.470051, 43.537228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983021, 33.299248, 43.338345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515860, -0.080633, 0.852870,
		-0.404277, -0.900644, 0.159378,
		0.755281, -0.427012, -0.497204,
		41.209606, 33.171143, 43.189182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736225, 32.947720, 43.886391>,  <40.680908, 33.470051, 43.537228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736225, 32.947720, 43.886391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.080284, 32.979843, 43.684914>,  <41.286720, 32.999119, 43.564030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.080284, 32.979843, 43.684914>,  <40.736225, 32.947720, 43.886391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080284, 32.979843, 43.684914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509842, -0.107063, 0.853580,
		0.014628, -0.991003, -0.133037,
		0.860144, 0.080314, -0.503689,
		41.338326, 33.003937, 43.533806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156090, 32.395691, 44.110981>,  <40.736225, 32.947720, 43.886391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156090, 32.395691, 44.110981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.431877, 32.643280, 43.960514>,  <41.597351, 32.791832, 43.870232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.431877, 32.643280, 43.960514>,  <41.156090, 32.395691, 44.110981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431877, 32.643280, 43.960514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555053, -0.117849, 0.823424,
		0.465342, -0.776524, -0.424814,
		0.689473, 0.618968, -0.376172,
		41.638718, 32.828972, 43.847664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791637, 32.093643, 44.234394>,  <41.156090, 32.395691, 44.110981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791637, 32.093643, 44.234394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.859097, 32.485382, 44.189785>,  <41.899574, 32.720425, 44.163021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.859097, 32.485382, 44.189785>,  <41.791637, 32.093643, 44.234394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859097, 32.485382, 44.189785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538221, 0.003287, 0.842797,
		0.825757, -0.202163, -0.526551,
		0.168652, 0.979346, -0.111522,
		41.909691, 32.779186, 44.156330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463531, 32.138710, 44.378380>,  <41.791637, 32.093643, 44.234394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463531, 32.138710, 44.378380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.329903, 32.513714, 44.417294>,  <42.249725, 32.738716, 44.440643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.329903, 32.513714, 44.417294>,  <42.463531, 32.138710, 44.378380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329903, 32.513714, 44.417294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374827, 0.037436, 0.926339,
		0.864812, 0.345930, -0.363911,
		-0.334072, 0.937513, 0.097289,
		42.229683, 32.794968, 44.446480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035965, 32.517406, 44.491203>,  <42.463531, 32.138710, 44.378380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035965, 32.517406, 44.491203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.710518, 32.702309, 44.632256>,  <42.515251, 32.813251, 44.716885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.710518, 32.702309, 44.632256>,  <43.035965, 32.517406, 44.491203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710518, 32.702309, 44.632256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394708, -0.006160, 0.918786,
		0.426888, 0.886724, -0.177446,
		-0.813617, 0.462258, 0.352627,
		42.466434, 32.840984, 44.738045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295601, 32.705315, 45.023277>,  <43.035965, 32.517406, 44.491203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295601, 32.705315, 45.023277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.918846, 32.818291, 45.096035>,  <42.692795, 32.886078, 45.139690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.918846, 32.818291, 45.096035>,  <43.295601, 32.705315, 45.023277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918846, 32.818291, 45.096035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205396, 0.055697, 0.977093,
		0.265839, 0.957667, -0.110472,
		-0.941882, 0.282440, 0.181895,
		42.636280, 32.903023, 45.150604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.620197, 33.774673, 47.497063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856762, 33.473686, 47.381111>,  <35.998699, 33.293095, 47.311539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856762, 33.473686, 47.381111>,  <35.620197, 33.774673, 47.497063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856762, 33.473686, 47.381111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076999, 0.305145, -0.949188,
		0.802688, 0.583677, 0.122526,
		0.591408, -0.752467, -0.289879,
		36.034184, 33.247948, 47.294147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061192, 34.038395, 47.082409>,  <35.620197, 33.774673, 47.497063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061192, 34.038395, 47.082409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098022, 33.647285, 47.007061>,  <36.120121, 33.412621, 46.961853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098022, 33.647285, 47.007061>,  <36.061192, 34.038395, 47.082409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098022, 33.647285, 47.007061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061415, 0.194390, -0.979000,
		0.993856, 0.078572, 0.077948,
		0.092074, -0.977773, -0.188370,
		36.125645, 33.353954, 46.950550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641949, 33.958763, 46.647491>,  <36.061192, 34.038395, 47.082409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641949, 33.958763, 46.647491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415554, 33.639507, 46.564907>,  <36.279716, 33.447952, 46.515358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415554, 33.639507, 46.564907>,  <36.641949, 33.958763, 46.647491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415554, 33.639507, 46.564907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160397, 0.352258, -0.922056,
		0.808658, -0.488759, -0.327394,
		-0.565990, -0.798141, -0.206461,
		36.245758, 33.400066, 46.502968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829029, 33.739983, 45.973175>,  <36.641949, 33.958763, 46.647491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829029, 33.739983, 45.973175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473682, 33.566013, 46.032024>,  <36.260475, 33.461632, 46.067333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473682, 33.566013, 46.032024>,  <36.829029, 33.739983, 45.973175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473682, 33.566013, 46.032024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240034, 0.166786, -0.956330,
		0.391394, -0.884885, -0.252564,
		-0.888366, -0.434926, 0.147123,
		36.207172, 33.435535, 46.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807030, 33.177898, 45.571938>,  <36.829029, 33.739983, 45.973175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807030, 33.177898, 45.571938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431004, 33.293533, 45.644272>,  <36.205387, 33.362915, 45.687672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431004, 33.293533, 45.644272>,  <36.807030, 33.177898, 45.571938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431004, 33.293533, 45.644272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099801, 0.273827, -0.956587,
		-0.326057, -0.917303, -0.228564,
		-0.940068, 0.289091, 0.180831,
		36.148983, 33.380260, 45.698521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448296, 33.037792, 44.986603>,  <36.807030, 33.177898, 45.571938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448296, 33.037792, 44.986603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166759, 33.263378, 45.159370>,  <35.997837, 33.398727, 45.263031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.166759, 33.263378, 45.159370>,  <36.448296, 33.037792, 44.986603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166759, 33.263378, 45.159370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312425, 0.300304, -0.901226,
		-0.637965, -0.769262, -0.035170,
		-0.703841, 0.563962, 0.431920,
		35.955608, 33.432568, 45.288948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911846, 32.878056, 44.582287>,  <36.448296, 33.037792, 44.986603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911846, 32.878056, 44.582287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.805599, 33.216770, 44.766632>,  <35.741852, 33.419998, 44.877239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.805599, 33.216770, 44.766632>,  <35.911846, 32.878056, 44.582287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805599, 33.216770, 44.766632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285263, 0.387600, -0.876579,
		-0.920908, -0.364306, 0.138602,
		-0.265621, 0.846787, 0.460867,
		35.725914, 33.470806, 44.904892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169689, 32.910526, 44.462486>,  <35.911846, 32.878056, 44.582287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169689, 32.910526, 44.462486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331394, 33.271000, 44.525017>,  <35.428417, 33.487286, 44.562534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331394, 33.271000, 44.525017>,  <35.169689, 32.910526, 44.462486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331394, 33.271000, 44.525017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333926, 0.304539, -0.892048,
		-0.851506, 0.308424, 0.424043,
		0.404267, 0.901183, 0.156326,
		35.452675, 33.541355, 44.571915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673134, 33.422691, 44.212765>,  <35.169689, 32.910526, 44.462486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673134, 33.422691, 44.212765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016232, 33.628315, 44.214870>,  <35.222088, 33.751690, 44.216133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016232, 33.628315, 44.214870>,  <34.673134, 33.422691, 44.212765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016232, 33.628315, 44.214870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208790, 0.357695, -0.910199,
		-0.469774, 0.779616, 0.414139,
		0.857741, 0.514055, 0.005260,
		35.273552, 33.782532, 44.216450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383102, 34.041618, 44.002514>,  <34.673134, 33.422691, 44.212765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383102, 34.041618, 44.002514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778297, 34.072247, 43.948822>,  <35.015415, 34.090622, 43.916607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.778297, 34.072247, 43.948822>,  <34.383102, 34.041618, 44.002514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778297, 34.072247, 43.948822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154274, 0.438471, -0.885406,
		-0.008936, 0.895478, 0.445016,
		0.987988, 0.076566, -0.134231,
		35.074696, 34.095215, 43.908554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502628, 34.730400, 43.784721>,  <34.383102, 34.041618, 44.002514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502628, 34.730400, 43.784721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818752, 34.535561, 43.636047>,  <35.008427, 34.418655, 43.546844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.818752, 34.535561, 43.636047>,  <34.502628, 34.730400, 43.784721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818752, 34.535561, 43.636047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080807, 0.518456, -0.851277,
		0.607359, 0.702805, 0.370378,
		0.790307, -0.487102, -0.371681,
		35.055843, 34.389431, 43.524544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743298, 35.178215, 43.287373>,  <34.502628, 34.730400, 43.784721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743298, 35.178215, 43.287373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958691, 34.851200, 43.205715>,  <35.087925, 34.654991, 43.156719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958691, 34.851200, 43.205715>,  <34.743298, 35.178215, 43.287373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958691, 34.851200, 43.205715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023803, 0.256929, -0.966137,
		0.842300, 0.515389, 0.157812,
		0.538483, -0.817534, -0.204144,
		35.120235, 34.605942, 43.144470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166721, 35.437439, 42.671684>,  <34.743298, 35.178215, 43.287373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166721, 35.437439, 42.671684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217037, 35.040867, 42.685753>,  <35.247227, 34.802921, 42.694195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.217037, 35.040867, 42.685753>,  <35.166721, 35.437439, 42.671684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217037, 35.040867, 42.685753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112308, -0.020996, -0.993451,
		0.985679, 0.128918, 0.108705,
		0.125792, -0.991433, 0.035174,
		35.254776, 34.743439, 42.696304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764114, 35.348740, 42.307621>,  <35.166721, 35.437439, 42.671684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764114, 35.348740, 42.307621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519211, 35.032555, 42.300636>,  <35.372269, 34.842842, 42.296444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519211, 35.032555, 42.300636>,  <35.764114, 35.348740, 42.307621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519211, 35.032555, 42.300636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025325, 0.002468, -0.999676,
		0.790253, -0.612501, 0.018508,
		-0.612257, -0.790466, -0.017462,
		35.335533, 34.795414, 42.295399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532246, 35.304150, 42.194717>,  <35.764114, 35.348740, 42.307621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532246, 35.304150, 42.194717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758118, 35.604790, 42.058350>,  <36.893642, 35.785175, 41.976528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758118, 35.604790, 42.058350>,  <36.532246, 35.304150, 42.194717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758118, 35.604790, 42.058350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374681, 0.134589, 0.917333,
		0.735356, -0.645737, -0.205611,
		0.564683, 0.751605, -0.340916,
		36.927521, 35.830273, 41.956074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185059, 35.141434, 42.588657>,  <36.532246, 35.304150, 42.194717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185059, 35.141434, 42.588657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213779, 35.523132, 42.472546>,  <37.231010, 35.752151, 42.402878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213779, 35.523132, 42.472546>,  <37.185059, 35.141434, 42.588657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213779, 35.523132, 42.472546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369102, 0.244948, 0.896529,
		0.926611, -0.171514, -0.334626,
		0.071801, 0.954245, -0.290278,
		37.235321, 35.809406, 42.385464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915997, 35.338963, 42.687328>,  <37.185059, 35.141434, 42.588657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915997, 35.338963, 42.687328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681126, 35.662685, 42.693619>,  <37.540203, 35.856918, 42.697392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681126, 35.662685, 42.693619>,  <37.915997, 35.338963, 42.687328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681126, 35.662685, 42.693619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259594, 0.169869, 0.950661,
		0.766705, 0.562288, -0.309834,
		-0.587176, 0.809307, 0.015727,
		37.504974, 35.905476, 42.698338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293804, 35.724548, 43.080814>,  <37.915997, 35.338963, 42.687328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293804, 35.724548, 43.080814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926224, 35.882294, 43.080978>,  <37.705673, 35.976940, 43.081078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.926224, 35.882294, 43.080978>,  <38.293804, 35.724548, 43.080814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926224, 35.882294, 43.080978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125628, 0.291765, 0.948204,
		0.373819, 0.871407, -0.317662,
		-0.918954, 0.394364, 0.000406,
		37.650539, 36.000603, 43.081100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399151, 36.413937, 43.180748>,  <38.293804, 35.724548, 43.080814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399151, 36.413937, 43.180748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036957, 36.291882, 43.298729>,  <37.819641, 36.218651, 43.369518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.036957, 36.291882, 43.298729>,  <38.399151, 36.413937, 43.180748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036957, 36.291882, 43.298729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284884, 0.078112, 0.955374,
		-0.314556, 0.949101, 0.016198,
		-0.905481, -0.305134, 0.294954,
		37.765312, 36.200340, 43.387215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413975, 36.560329, 43.851868>,  <38.399151, 36.413937, 43.180748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413975, 36.560329, 43.851868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.093357, 36.321423, 43.840618>,  <37.900986, 36.178078, 43.833870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.093357, 36.321423, 43.840618>,  <38.413975, 36.560329, 43.851868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093357, 36.321423, 43.840618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022385, -0.076971, 0.996782,
		-0.597510, 0.798340, 0.075066,
		-0.801549, -0.597268, -0.028120,
		37.852894, 36.142242, 43.832184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899208, 36.796711, 44.319065>,  <38.413975, 36.560329, 43.851868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899208, 36.796711, 44.319065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.872890, 36.402435, 44.256989>,  <37.857101, 36.165871, 44.219742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.872890, 36.402435, 44.256989>,  <37.899208, 36.796711, 44.319065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872890, 36.402435, 44.256989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084705, -0.160488, 0.983397,
		-0.994232, 0.051555, 0.094052,
		-0.065794, -0.985691, -0.155195,
		37.853153, 36.106728, 44.210430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694614, 36.574528, 44.936005>,  <37.899208, 36.796711, 44.319065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694614, 36.574528, 44.936005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743805, 36.212292, 44.773632>,  <37.773319, 35.994949, 44.676208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743805, 36.212292, 44.773632>,  <37.694614, 36.574528, 44.936005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743805, 36.212292, 44.773632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146544, -0.421119, 0.895089,
		-0.981530, -0.050590, -0.184497,
		0.122978, -0.905593, -0.405927,
		37.780697, 35.940613, 44.651855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131203, 36.180790, 45.182831>,  <37.694614, 36.574528, 44.936005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131203, 36.180790, 45.182831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437885, 35.935818, 45.105804>,  <37.621895, 35.788834, 45.059589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437885, 35.935818, 45.105804>,  <37.131203, 36.180790, 45.182831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437885, 35.935818, 45.105804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150297, -0.462845, 0.873605,
		-0.624155, -0.640858, -0.446914,
		0.766708, -0.612434, -0.192568,
		37.667896, 35.752087, 45.048035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968166, 35.581699, 45.579102>,  <37.131203, 36.180790, 45.182831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968166, 35.581699, 45.579102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347202, 35.521156, 45.466549>,  <37.574623, 35.484833, 45.399017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347202, 35.521156, 45.466549>,  <36.968166, 35.581699, 45.579102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347202, 35.521156, 45.466549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156898, -0.546744, 0.822469,
		-0.278325, -0.823507, -0.494339,
		0.947586, -0.151352, -0.281379,
		37.631477, 35.475750, 45.382133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107693, 34.851665, 45.783310>,  <36.968166, 35.581699, 45.579102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107693, 34.851665, 45.783310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466194, 35.023685, 45.739883>,  <37.681293, 35.126896, 45.713825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466194, 35.023685, 45.739883>,  <37.107693, 34.851665, 45.783310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466194, 35.023685, 45.739883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268940, -0.332264, 0.904031,
		0.352702, -0.839441, -0.413450,
		0.896255, 0.430046, -0.108570,
		37.735069, 35.152699, 45.707314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642113, 34.351608, 45.859859>,  <37.107693, 34.851665, 45.783310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642113, 34.351608, 45.859859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830223, 34.697254, 45.931568>,  <37.943089, 34.904644, 45.974594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.830223, 34.697254, 45.931568>,  <37.642113, 34.351608, 45.859859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830223, 34.697254, 45.931568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394030, -0.387358, 0.833483,
		0.789670, -0.321331, -0.522654,
		0.470278, 0.864118, 0.179272,
		37.971306, 34.956490, 45.985348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370518, 34.128170, 46.017254>,  <37.642113, 34.351608, 45.859859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370518, 34.128170, 46.017254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304840, 34.494438, 46.163994>,  <38.265434, 34.714199, 46.252037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304840, 34.494438, 46.163994>,  <38.370518, 34.128170, 46.017254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304840, 34.494438, 46.163994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538707, -0.228300, 0.810970,
		0.826337, 0.330784, -0.455795,
		-0.164198, 0.915675, 0.366849,
		38.255581, 34.769142, 46.274048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021324, 34.490898, 46.261002>,  <38.370518, 34.128170, 46.017254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021324, 34.490898, 46.261002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700050, 34.638985, 46.447693>,  <38.507286, 34.727837, 46.559708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700050, 34.638985, 46.447693>,  <39.021324, 34.490898, 46.261002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700050, 34.638985, 46.447693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278188, -0.459702, 0.843377,
		0.526788, 0.807225, 0.266236,
		-0.803185, 0.370218, 0.466726,
		38.459095, 34.750050, 46.587711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649090, 34.927792, 46.449120>,  <39.021324, 34.490898, 46.261002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649090, 34.927792, 46.449120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032776, 35.040863, 46.450089>,  <40.262985, 35.108707, 46.450672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032776, 35.040863, 46.450089>,  <39.649090, 34.927792, 46.449120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032776, 35.040863, 46.450089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043516, 0.156134, -0.986777,
		-0.279321, 0.946422, 0.162066,
		0.959211, 0.282680, 0.002427,
		40.320538, 35.125668, 46.450817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643570, 35.733887, 46.282047>,  <39.649090, 34.927792, 46.449120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643570, 35.733887, 46.282047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968315, 35.528305, 46.171242>,  <40.163162, 35.404957, 46.104759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968315, 35.528305, 46.171242>,  <39.643570, 35.733887, 46.282047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968315, 35.528305, 46.171242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124440, 0.311240, -0.942149,
		0.570435, 0.799366, 0.188728,
		0.811861, -0.513950, -0.277015,
		40.211872, 35.374119, 46.088139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949150, 36.194019, 45.722393>,  <39.643570, 35.733887, 46.282047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949150, 36.194019, 45.722393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114189, 35.829945, 45.707817>,  <40.213211, 35.611500, 45.699074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114189, 35.829945, 45.707817>,  <39.949150, 36.194019, 45.722393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114189, 35.829945, 45.707817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014499, 0.033433, -0.999336,
		0.910799, 0.412850, 0.000598,
		0.412596, -0.910185, -0.036436,
		40.237968, 35.556889, 45.696888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526608, 36.244373, 45.256748>,  <39.949150, 36.194019, 45.722393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526608, 36.244373, 45.256748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.467110, 35.849319, 45.236954>,  <40.431412, 35.612286, 45.225079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.467110, 35.849319, 45.236954>,  <40.526608, 36.244373, 45.256748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467110, 35.849319, 45.236954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011436, 0.051755, -0.998594,
		0.988810, -0.147969, -0.018993,
		-0.148743, -0.987637, -0.049483,
		40.422485, 35.553028, 45.222107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161312, 35.926891, 44.839718>,  <40.526608, 36.244373, 45.256748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161312, 35.926891, 44.839718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851906, 35.673386, 44.838329>,  <40.666264, 35.521282, 44.837498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851906, 35.673386, 44.838329>,  <41.161312, 35.926891, 44.839718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851906, 35.673386, 44.838329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090044, -0.104471, -0.990443,
		0.627349, -0.766435, 0.137877,
		-0.773515, -0.633769, -0.003473,
		40.619850, 35.483253, 44.837288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310760, 35.373165, 44.495140>,  <41.161312, 35.926891, 44.839718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310760, 35.373165, 44.495140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.911552, 35.363808, 44.471786>,  <40.672028, 35.358192, 44.457775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.911552, 35.363808, 44.471786>,  <41.310760, 35.373165, 44.495140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911552, 35.363808, 44.471786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062638, -0.285338, -0.956378,
		0.005710, -0.958141, 0.286239,
		-0.998020, -0.023390, -0.058387,
		40.612148, 35.356792, 44.454269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248001, 34.877243, 43.906994>,  <41.310760, 35.373165, 44.495140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248001, 34.877243, 43.906994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905281, 35.081383, 43.936481>,  <40.699650, 35.203865, 43.954174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905281, 35.081383, 43.936481>,  <41.248001, 34.877243, 43.906994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905281, 35.081383, 43.936481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117917, -0.054738, -0.991514,
		-0.501980, -0.858225, 0.107078,
		-0.856803, 0.510346, 0.073722,
		40.648239, 35.234486, 43.958599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849270, 34.530323, 43.430511>,  <41.248001, 34.877243, 43.906994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849270, 34.530323, 43.430511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644508, 34.866920, 43.499615>,  <40.521652, 35.068878, 43.541077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644508, 34.866920, 43.499615>,  <40.849270, 34.530323, 43.430511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644508, 34.866920, 43.499615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271027, 0.032624, -0.962019,
		-0.815166, -0.539285, 0.211366,
		-0.511907, 0.841491, 0.172755,
		40.490936, 35.119370, 43.551441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170708, 34.508541, 43.099472>,  <40.849270, 34.530323, 43.430511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170708, 34.508541, 43.099472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.262646, 34.897018, 43.124641>,  <40.317806, 35.130104, 43.139744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.262646, 34.897018, 43.124641>,  <40.170708, 34.508541, 43.099472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262646, 34.897018, 43.124641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300134, 0.132236, -0.944687,
		-0.925793, 0.198243, 0.321881,
		0.229842, 0.971192, 0.062924,
		40.331596, 35.188377, 43.143520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664761, 34.905270, 42.743908>,  <40.170708, 34.508541, 43.099472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664761, 34.905270, 42.743908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960384, 35.174549, 42.753666>,  <40.137760, 35.336117, 42.759521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960384, 35.174549, 42.753666>,  <39.664761, 34.905270, 42.743908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960384, 35.174549, 42.753666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157213, 0.207586, -0.965501,
		-0.655038, 0.709727, 0.259253,
		0.739059, 0.673198, 0.024399,
		40.182102, 35.376507, 42.760986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428101, 35.561459, 42.586540>,  <39.664761, 34.905270, 42.743908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428101, 35.561459, 42.586540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820576, 35.570564, 42.509857>,  <40.056061, 35.576027, 42.463848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.820576, 35.570564, 42.509857>,  <39.428101, 35.561459, 42.586540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820576, 35.570564, 42.509857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181751, 0.443744, -0.877529,
		0.065091, 0.895864, 0.439534,
		0.981188, 0.022767, -0.191708,
		40.114933, 35.577393, 42.452343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462894, 36.167103, 42.283455>,  <39.428101, 35.561459, 42.586540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462894, 36.167103, 42.283455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.822975, 36.015118, 42.198357>,  <40.039024, 35.923927, 42.147297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.822975, 36.015118, 42.198357>,  <39.462894, 36.167103, 42.283455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822975, 36.015118, 42.198357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025399, 0.441891, -0.896709,
		0.434725, 0.812625, 0.388142,
		0.900205, -0.379964, -0.212741,
		40.093037, 35.901127, 42.134533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689701, 36.664570, 41.986668>,  <39.462894, 36.167103, 42.283455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689701, 36.664570, 41.986668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.921337, 36.357693, 41.876350>,  <40.060318, 36.173565, 41.810162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.921337, 36.357693, 41.876350>,  <39.689701, 36.664570, 41.986668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921337, 36.357693, 41.876350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173034, 0.446243, -0.878025,
		0.796689, 0.460734, 0.391166,
		0.579091, -0.767197, -0.275794,
		40.095066, 36.127533, 41.793613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293762, 36.824478, 41.625854>,  <39.689701, 36.664570, 41.986668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293762, 36.824478, 41.625854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291733, 36.454029, 41.474979>,  <40.290516, 36.231758, 41.384457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291733, 36.454029, 41.474979>,  <40.293762, 36.824478, 41.625854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291733, 36.454029, 41.474979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038405, 0.376732, -0.925526,
		0.999249, -0.019180, 0.033657,
		-0.005072, -0.926124, -0.377186,
		40.290211, 36.176193, 41.361824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.198631, 37.738483, 27.943279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098423, 37.369106, 27.827003>,  <28.038298, 37.147480, 27.757238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098423, 37.369106, 27.827003>,  <28.198631, 37.738483, 27.943279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098423, 37.369106, 27.827003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674326, -0.048999, 0.736806,
		-0.694638, 0.380606, -0.610424,
		-0.250523, -0.923438, -0.290689,
		28.023266, 37.092075, 27.739798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417389, 37.571064, 27.811934>,  <28.198631, 37.738483, 27.943279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417389, 37.571064, 27.811934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602306, 37.244083, 27.949368>,  <27.713257, 37.047894, 28.031828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602306, 37.244083, 27.949368>,  <27.417389, 37.571064, 27.811934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602306, 37.244083, 27.949368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483346, 0.092544, 0.870525,
		-0.743411, -0.568509, -0.352331,
		0.462295, -0.817455, 0.343585,
		27.740995, 36.998848, 28.052443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138075, 37.439865, 28.575068>,  <27.417389, 37.571064, 27.811934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138075, 37.439865, 28.575068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377279, 37.126659, 28.506632>,  <27.520802, 36.938736, 28.465570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377279, 37.126659, 28.506632>,  <27.138075, 37.439865, 28.575068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377279, 37.126659, 28.506632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235495, -0.375701, 0.896321,
		-0.766109, -0.495721, -0.409069,
		0.598013, -0.783014, -0.171088,
		27.556683, 36.891754, 28.455305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865501, 36.950066, 29.015123>,  <27.138075, 37.439865, 28.575068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865501, 36.950066, 29.015123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218174, 36.792641, 28.911007>,  <27.429777, 36.698185, 28.848537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218174, 36.792641, 28.911007>,  <26.865501, 36.950066, 29.015123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218174, 36.792641, 28.911007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050732, -0.627513, 0.776952,
		-0.469113, -0.671818, -0.573231,
		0.881680, -0.393559, -0.260292,
		27.482677, 36.674572, 28.832920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822773, 36.162113, 29.085377>,  <26.865501, 36.950066, 29.015123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822773, 36.162113, 29.085377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204962, 36.266521, 29.140429>,  <27.434275, 36.329166, 29.173460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204962, 36.266521, 29.140429>,  <26.822773, 36.162113, 29.085377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204962, 36.266521, 29.140429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076015, -0.668386, 0.739920,
		0.285125, -0.696511, -0.658465,
		0.955471, 0.261023, 0.137629,
		27.491604, 36.344830, 29.181717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223480, 35.588745, 29.052790>,  <26.822773, 36.162113, 29.085377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223480, 35.588745, 29.052790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424366, 35.855297, 29.273235>,  <27.544897, 36.015228, 29.405502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424366, 35.855297, 29.273235>,  <27.223480, 35.588745, 29.052790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424366, 35.855297, 29.273235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006969, -0.640411, 0.768001,
		0.864716, -0.381859, -0.326266,
		0.502213, 0.666377, 0.551112,
		27.575029, 36.055210, 29.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614584, 35.127716, 29.521463>,  <27.223480, 35.588745, 29.052790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614584, 35.127716, 29.521463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670198, 35.495293, 29.669092>,  <27.703568, 35.715839, 29.757669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670198, 35.495293, 29.669092>,  <27.614584, 35.127716, 29.521463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670198, 35.495293, 29.669092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262751, -0.393567, 0.880947,
		0.954794, -0.025508, -0.296172,
		0.139035, 0.918942, 0.369073,
		27.711908, 35.770977, 29.779814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124962, 35.084286, 30.007917>,  <27.614584, 35.127716, 29.521463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124962, 35.084286, 30.007917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.963297, 35.437023, 30.105076>,  <27.866299, 35.648666, 30.163370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.963297, 35.437023, 30.105076>,  <28.124962, 35.084286, 30.007917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963297, 35.437023, 30.105076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031800, -0.251844, 0.967245,
		0.914135, 0.398647, 0.073742,
		-0.404161, 0.881848, 0.242896,
		27.842049, 35.701576, 30.177944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464800, 35.199005, 30.652521>,  <28.124962, 35.084286, 30.007917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464800, 35.199005, 30.652521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.144768, 35.438599, 30.639286>,  <27.952749, 35.582355, 30.631346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.144768, 35.438599, 30.639286>,  <28.464800, 35.199005, 30.652521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144768, 35.438599, 30.639286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189531, -0.200061, 0.961277,
		0.569167, 0.775369, 0.273590,
		-0.800079, 0.598981, -0.033088,
		27.904743, 35.618294, 30.629360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506330, 35.546440, 31.206211>,  <28.464800, 35.199005, 30.652521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506330, 35.546440, 31.206211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121443, 35.602581, 31.112885>,  <27.890511, 35.636265, 31.056889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121443, 35.602581, 31.112885>,  <28.506330, 35.546440, 31.206211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121443, 35.602581, 31.112885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218338, 0.114224, 0.969165,
		0.162670, 0.983491, -0.079265,
		-0.962220, 0.140348, -0.233315,
		27.832777, 35.644684, 31.042891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265913, 36.201115, 31.459721>,  <28.506330, 35.546440, 31.206211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265913, 36.201115, 31.459721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940737, 35.973885, 31.408478>,  <27.745630, 35.837547, 31.377731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940737, 35.973885, 31.408478>,  <28.265913, 36.201115, 31.459721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940737, 35.973885, 31.408478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241994, 0.129452, 0.961603,
		-0.529683, 0.812729, -0.242709,
		-0.812942, -0.568079, -0.128107,
		27.696854, 35.803459, 31.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802340, 36.581539, 31.735020>,  <28.265913, 36.201115, 31.459721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802340, 36.581539, 31.735020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624996, 36.223309, 31.720186>,  <27.518591, 36.008369, 31.711287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624996, 36.223309, 31.720186>,  <27.802340, 36.581539, 31.735020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624996, 36.223309, 31.720186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348550, 0.134137, 0.927642,
		-0.825801, 0.424202, -0.371625,
		-0.443356, -0.895578, -0.037085,
		27.491989, 35.954636, 31.709061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175695, 36.591732, 32.162933>,  <27.802340, 36.581539, 31.735020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175695, 36.591732, 32.162933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259666, 36.201218, 32.141811>,  <27.310049, 35.966908, 32.129139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259666, 36.201218, 32.141811>,  <27.175695, 36.591732, 32.162933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259666, 36.201218, 32.141811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262722, -0.108349, 0.958769,
		-0.941758, -0.187398, -0.279239,
		0.209926, -0.976290, -0.052805,
		27.322645, 35.908329, 32.125969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666739, 36.327644, 32.639259>,  <27.175695, 36.591732, 32.162933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666739, 36.327644, 32.639259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.927681, 36.028145, 32.592251>,  <27.084246, 35.848446, 32.564045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.927681, 36.028145, 32.592251>,  <26.666739, 36.327644, 32.639259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927681, 36.028145, 32.592251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151790, -0.280984, 0.947633,
		-0.742559, -0.600354, -0.296954,
		0.652354, -0.748748, -0.117519,
		27.123386, 35.803520, 32.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347488, 35.837364, 33.002140>,  <26.666739, 36.327644, 32.639259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347488, 35.837364, 33.002140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733646, 35.739067, 32.967201>,  <26.965342, 35.680088, 32.946239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.733646, 35.739067, 32.967201>,  <26.347488, 35.837364, 33.002140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733646, 35.739067, 32.967201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016059, -0.278255, 0.960373,
		-0.260294, -0.928543, -0.264680,
		0.965396, -0.245728, -0.087339,
		27.023264, 35.665344, 32.940998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419918, 35.134239, 33.162426>,  <26.347488, 35.837364, 33.002140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419918, 35.134239, 33.162426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772526, 35.312832, 33.223846>,  <26.984091, 35.419987, 33.260696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772526, 35.312832, 33.223846>,  <26.419918, 35.134239, 33.162426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772526, 35.312832, 33.223846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048084, -0.408422, 0.911526,
		0.469690, -0.796146, -0.381501,
		0.881521, 0.446478, 0.153550,
		27.036982, 35.446774, 33.269913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828766, 34.635849, 33.516373>,  <26.419918, 35.134239, 33.162426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828766, 34.635849, 33.516373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057232, 34.958988, 33.574551>,  <27.194311, 35.152870, 33.609455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057232, 34.958988, 33.574551>,  <26.828766, 34.635849, 33.516373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057232, 34.958988, 33.574551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323717, -0.384515, 0.864497,
		0.754307, -0.446686, -0.481135,
		0.571163, 0.807848, 0.145443,
		27.228580, 35.201344, 33.618183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551529, 34.472492, 33.608944>,  <26.828766, 34.635849, 33.516373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551529, 34.472492, 33.608944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489538, 34.827278, 33.782967>,  <27.452343, 35.040150, 33.887379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.489538, 34.827278, 33.782967>,  <27.551529, 34.472492, 33.608944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489538, 34.827278, 33.782967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341080, -0.365259, 0.866170,
		0.927171, 0.282626, -0.245919,
		-0.154978, 0.886966, 0.435056,
		27.443045, 35.093369, 33.913483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084759, 34.497204, 34.020641>,  <27.551529, 34.472492, 33.608944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084759, 34.497204, 34.020641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836510, 34.777409, 34.161556>,  <27.687559, 34.945534, 34.246105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836510, 34.777409, 34.161556>,  <28.084759, 34.497204, 34.020641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836510, 34.777409, 34.161556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258284, -0.241569, 0.935379,
		0.740348, 0.671509, -0.031008,
		-0.620625, 0.700514, 0.352285,
		27.650322, 34.987564, 34.267242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536875, 34.978722, 34.507923>,  <28.084759, 34.497204, 34.020641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536875, 34.978722, 34.507923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145884, 34.963959, 34.591038>,  <27.911289, 34.955101, 34.640907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.145884, 34.963959, 34.591038>,  <28.536875, 34.978722, 34.507923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145884, 34.963959, 34.591038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203836, -0.420150, 0.884265,
		0.054670, 0.906704, 0.418209,
		-0.977477, -0.036903, 0.207788,
		27.852640, 34.952888, 34.653374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839527, 35.320637, 35.105026>,  <28.536875, 34.978722, 34.507923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839527, 35.320637, 35.105026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156424, 35.078304, 35.134201>,  <29.346561, 34.932903, 35.151707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156424, 35.078304, 35.134201>,  <28.839527, 35.320637, 35.105026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156424, 35.078304, 35.134201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355087, 0.360498, -0.862528,
		0.496254, 0.709230, 0.500725,
		0.792241, -0.605834, 0.072939,
		29.394096, 34.896553, 35.156082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454029, 35.765701, 34.917561>,  <28.839527, 35.320637, 35.105026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454029, 35.765701, 34.917561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563866, 35.382912, 34.880043>,  <29.629768, 35.153236, 34.857533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563866, 35.382912, 34.880043>,  <29.454029, 35.765701, 34.917561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563866, 35.382912, 34.880043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515390, 0.228825, -0.825840,
		0.811771, 0.178430, 0.556049,
		0.274593, -0.956975, -0.093792,
		29.646244, 35.095818, 34.851906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178547, 35.720222, 34.901302>,  <29.454029, 35.765701, 34.917561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178547, 35.720222, 34.901302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052982, 35.371830, 34.750118>,  <29.977644, 35.162796, 34.659409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052982, 35.371830, 34.750118>,  <30.178547, 35.720222, 34.901302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052982, 35.371830, 34.750118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603987, 0.123961, -0.787294,
		0.732570, -0.475424, 0.487148,
		-0.313911, -0.870980, -0.377960,
		29.958809, 35.110535, 34.636730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773100, 35.374279, 34.752922>,  <30.178547, 35.720222, 34.901302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773100, 35.374279, 34.752922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481537, 35.218864, 34.527451>,  <30.306599, 35.125614, 34.392166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481537, 35.218864, 34.527451>,  <30.773100, 35.374279, 34.752922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481537, 35.218864, 34.527451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569983, 0.111668, -0.814033,
		0.379227, -0.914642, 0.140065,
		-0.728907, -0.388537, -0.563678,
		30.262865, 35.102303, 34.358349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123095, 34.914055, 34.394352>,  <30.773100, 35.374279, 34.752922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123095, 34.914055, 34.394352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.788353, 34.940453, 34.176979>,  <30.587507, 34.956291, 34.046555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.788353, 34.940453, 34.176979>,  <31.123095, 34.914055, 34.394352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788353, 34.940453, 34.176979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525144, -0.183567, -0.830980,
		-0.154589, -0.980790, 0.118968,
		-0.836855, 0.065985, -0.543433,
		30.537296, 34.960251, 34.013950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062494, 34.278206, 33.922131>,  <31.123095, 34.914055, 34.394352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062494, 34.278206, 33.922131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.858383, 34.578896, 33.755024>,  <30.735916, 34.759308, 33.654758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.858383, 34.578896, 33.755024>,  <31.062494, 34.278206, 33.922131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858383, 34.578896, 33.755024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407938, -0.216080, -0.887072,
		-0.757103, -0.623076, -0.196395,
		-0.510275, 0.751722, -0.417771,
		30.705301, 34.804413, 33.629692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067080, 34.001526, 33.268871>,  <31.062494, 34.278206, 33.922131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067080, 34.001526, 33.268871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949179, 34.383625, 33.258865>,  <30.878437, 34.612885, 33.252861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949179, 34.383625, 33.258865>,  <31.067080, 34.001526, 33.268871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949179, 34.383625, 33.258865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304517, 0.069085, -0.949998,
		-0.905753, -0.287634, -0.311251,
		-0.294754, 0.955246, -0.025015,
		30.860752, 34.670200, 33.251362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596226, 34.100605, 32.628181>,  <31.067080, 34.001526, 33.268871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596226, 34.100605, 32.628181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746485, 34.461800, 32.711613>,  <30.836641, 34.678516, 32.761673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.746485, 34.461800, 32.711613>,  <30.596226, 34.100605, 32.628181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746485, 34.461800, 32.711613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248763, 0.118558, -0.961281,
		-0.892751, 0.412992, -0.180093,
		0.375649, 0.902985, 0.208580,
		30.859180, 34.732697, 32.774185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421072, 34.422291, 32.016949>,  <30.596226, 34.100605, 32.628181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421072, 34.422291, 32.016949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.681509, 34.649948, 32.217808>,  <30.837772, 34.786541, 32.338322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.681509, 34.649948, 32.217808>,  <30.421072, 34.422291, 32.016949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681509, 34.649948, 32.217808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405097, 0.298900, -0.864034,
		-0.641852, 0.765986, -0.035946,
		0.651094, 0.569144, 0.502148,
		30.876837, 34.820690, 32.368454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436373, 35.039738, 31.698288>,  <30.421072, 34.422291, 32.016949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436373, 35.039738, 31.698288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.767710, 35.059017, 31.921545>,  <30.966513, 35.070583, 32.055500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.767710, 35.059017, 31.921545>,  <30.436373, 35.039738, 31.698288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767710, 35.059017, 31.921545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505191, 0.366352, -0.781389,
		-0.242137, 0.929227, 0.279117,
		0.828343, 0.048196, 0.558145,
		31.016212, 35.073475, 32.088989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698023, 35.675472, 31.446867>,  <30.436373, 35.039738, 31.698288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698023, 35.675472, 31.446867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.984858, 35.458107, 31.621447>,  <31.156958, 35.327686, 31.726194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.984858, 35.458107, 31.621447>,  <30.698023, 35.675472, 31.446867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984858, 35.458107, 31.621447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615839, 0.200755, -0.761866,
		0.326391, 0.815105, 0.478615,
		0.717085, -0.543416, 0.436449,
		31.199984, 35.295082, 31.752380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245707, 36.130009, 31.510424>,  <30.698023, 35.675472, 31.446867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245707, 36.130009, 31.510424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397854, 35.760090, 31.513783>,  <31.489143, 35.538139, 31.515799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397854, 35.760090, 31.513783>,  <31.245707, 36.130009, 31.510424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397854, 35.760090, 31.513783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692343, 0.278718, -0.665565,
		0.613172, 0.258975, 0.746292,
		0.380370, -0.924796, 0.008397,
		31.511965, 35.482651, 31.516302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958250, 36.281685, 31.676538>,  <31.245707, 36.130009, 31.510424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958250, 36.281685, 31.676538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.911686, 35.925785, 31.500000>,  <31.883747, 35.712246, 31.394077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.911686, 35.925785, 31.500000>,  <31.958250, 36.281685, 31.676538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911686, 35.925785, 31.500000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595214, 0.293236, -0.748153,
		0.795091, -0.349788, 0.495459,
		-0.116408, -0.889753, -0.441348,
		31.876764, 35.658859, 31.367596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545620, 36.248329, 31.231493>,  <31.958250, 36.281685, 31.676538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545620, 36.248329, 31.231493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.332958, 35.945259, 31.080084>,  <32.205360, 35.763420, 30.989239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.332958, 35.945259, 31.080084>,  <32.545620, 36.248329, 31.231493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332958, 35.945259, 31.080084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553061, 0.027911, -0.832673,
		0.641457, -0.652040, 0.404199,
		-0.531655, -0.757671, -0.378522,
		32.173462, 35.717957, 30.966528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045177, 35.866058, 30.827728>,  <32.545620, 36.248329, 31.231493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045177, 35.866058, 30.827728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689960, 35.767342, 30.672562>,  <32.476830, 35.708111, 30.579462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.689960, 35.767342, 30.672562>,  <33.045177, 35.866058, 30.827728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689960, 35.767342, 30.672562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385929, 0.058445, -0.920675,
		0.249891, -0.967303, 0.043344,
		-0.888039, -0.246796, -0.387915,
		32.423550, 35.693302, 30.556187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161182, 35.422371, 30.339291>,  <33.045177, 35.866058, 30.827728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161182, 35.422371, 30.339291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.793983, 35.555435, 30.252928>,  <32.573662, 35.635273, 30.201111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.793983, 35.555435, 30.252928>,  <33.161182, 35.422371, 30.339291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793983, 35.555435, 30.252928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248264, 0.057497, -0.966985,
		-0.309261, -0.941293, -0.135369,
		-0.917999, 0.332658, -0.215907,
		32.518585, 35.655231, 30.188156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979309, 34.942139, 29.718906>,  <33.161182, 35.422371, 30.339291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979309, 34.942139, 29.718906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737110, 35.259312, 29.691666>,  <32.591793, 35.449615, 29.675322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737110, 35.259312, 29.691666>,  <32.979309, 34.942139, 29.718906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737110, 35.259312, 29.691666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219520, 0.084149, -0.971972,
		-0.764975, -0.603475, -0.225015,
		-0.605496, 0.792930, -0.068103,
		32.555462, 35.497192, 29.671234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596626, 34.772083, 29.230099>,  <32.979309, 34.942139, 29.718906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596626, 34.772083, 29.230099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.563641, 35.169018, 29.266916>,  <32.543850, 35.407177, 29.289007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.563641, 35.169018, 29.266916>,  <32.596626, 34.772083, 29.230099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563641, 35.169018, 29.266916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180275, 0.105686, -0.977922,
		-0.980154, -0.064050, -0.187608,
		-0.082463, 0.992335, 0.092042,
		32.538902, 35.466717, 29.294529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162975, 35.022419, 28.667692>,  <32.596626, 34.772083, 29.230099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162975, 35.022419, 28.667692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.365746, 35.346817, 28.784529>,  <32.487408, 35.541454, 28.854630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.365746, 35.346817, 28.784529>,  <32.162975, 35.022419, 28.667692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365746, 35.346817, 28.784529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099861, 0.281320, -0.954404,
		-0.856187, 0.512978, 0.061621,
		0.506924, 0.810995, 0.292089,
		32.517822, 35.590115, 28.872156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819866, 35.538509, 28.332382>,  <32.162975, 35.022419, 28.667692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819866, 35.538509, 28.332382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176491, 35.690258, 28.431330>,  <32.390465, 35.781307, 28.490698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176491, 35.690258, 28.431330>,  <31.819866, 35.538509, 28.332382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176491, 35.690258, 28.431330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181365, 0.201412, -0.962570,
		-0.414996, 0.903055, 0.110766,
		0.891563, 0.379374, 0.247368,
		32.443958, 35.804070, 28.505541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768301, 36.272736, 28.039175>,  <31.819866, 35.538509, 28.332382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768301, 36.272736, 28.039175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.149555, 36.156677, 28.073469>,  <32.378307, 36.087044, 28.094046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.149555, 36.156677, 28.073469>,  <31.768301, 36.272736, 28.039175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149555, 36.156677, 28.073469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170999, 0.282846, -0.943800,
		0.249589, 0.914228, 0.319204,
		0.953134, -0.290146, 0.085737,
		32.435497, 36.069633, 28.099190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129841, 36.753212, 27.618706>,  <31.768301, 36.272736, 28.039175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129841, 36.753212, 27.618706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.406792, 36.472343, 27.685125>,  <32.572964, 36.303822, 27.724977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.406792, 36.472343, 27.685125>,  <32.129841, 36.753212, 27.618706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406792, 36.472343, 27.685125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351254, 0.126988, -0.927629,
		0.630264, 0.700596, 0.334563,
		0.692378, -0.702167, 0.166051,
		32.614506, 36.261692, 27.734941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.185543, 33.281300, 45.490036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.817734, 33.126789, 45.519062>,  <42.597050, 33.034081, 45.536476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.817734, 33.126789, 45.519062>,  <43.185543, 33.281300, 45.490036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817734, 33.126789, 45.519062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110343, -0.076523, 0.990943,
		-0.377228, 0.919202, 0.112988,
		-0.919523, -0.386279, 0.072561,
		42.541878, 33.010906, 45.540829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773407, 33.709095, 46.023060>,  <43.185543, 33.281300, 45.490036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773407, 33.709095, 46.023060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.622963, 33.338909, 46.004921>,  <42.532696, 33.116798, 45.994038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.622963, 33.338909, 46.004921>,  <42.773407, 33.709095, 46.023060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622963, 33.338909, 46.004921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105942, -0.091568, 0.990147,
		-0.920500, 0.367598, 0.132485,
		-0.376107, -0.925466, -0.045344,
		42.510132, 33.061268, 45.991318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292706, 33.646328, 46.596695>,  <42.773407, 33.709095, 46.023060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292706, 33.646328, 46.596695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.353020, 33.268803, 46.479069>,  <42.389206, 33.042286, 46.408493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.353020, 33.268803, 46.479069>,  <42.292706, 33.646328, 46.596695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353020, 33.268803, 46.479069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172154, -0.267856, 0.947954,
		-0.973462, -0.193561, 0.122093,
		0.150783, -0.943815, -0.294070,
		42.398254, 32.985657, 46.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897652, 33.267563, 47.090294>,  <42.292706, 33.646328, 46.596695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897652, 33.267563, 47.090294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.154930, 33.011013, 46.922993>,  <42.309296, 32.857082, 46.822613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.154930, 33.011013, 46.922993>,  <41.897652, 33.267563, 47.090294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154930, 33.011013, 46.922993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309579, -0.281771, 0.908166,
		-0.700330, -0.713609, 0.017324,
		0.643194, -0.641379, -0.418251,
		42.347889, 32.818600, 46.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754322, 32.617226, 47.427845>,  <41.897652, 33.267563, 47.090294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754322, 32.617226, 47.427845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.126331, 32.596153, 47.282360>,  <42.349537, 32.583511, 47.195068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.126331, 32.596153, 47.282360>,  <41.754322, 32.617226, 47.427845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126331, 32.596153, 47.282360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340078, -0.251793, 0.906061,
		-0.139307, -0.966347, -0.216259,
		0.930021, -0.052675, -0.363710,
		42.405338, 32.580349, 47.173248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061073, 31.984392, 47.657036>,  <41.754322, 32.617226, 47.427845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061073, 31.984392, 47.657036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.379040, 32.202049, 47.549698>,  <42.569820, 32.332645, 47.485294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.379040, 32.202049, 47.549698>,  <42.061073, 31.984392, 47.657036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379040, 32.202049, 47.549698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503338, -0.344507, 0.792443,
		0.338755, -0.764998, -0.547744,
		0.794918, 0.544145, -0.268349,
		42.617516, 32.365292, 47.469193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630978, 31.534763, 47.753445>,  <42.061073, 31.984392, 47.657036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630978, 31.534763, 47.753445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.781185, 31.905458, 47.748665>,  <42.871311, 32.127876, 47.745796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.781185, 31.905458, 47.748665>,  <42.630978, 31.534763, 47.753445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781185, 31.905458, 47.748665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531225, -0.204658, 0.822140,
		0.759463, -0.315076, -0.569159,
		0.375520, 0.926737, -0.011947,
		42.893841, 32.183479, 47.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315029, 31.429701, 48.005859>,  <42.630978, 31.534763, 47.753445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315029, 31.429701, 48.005859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.211292, 31.807047, 48.088612>,  <43.149052, 32.033455, 48.138264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.211292, 31.807047, 48.088612>,  <43.315029, 31.429701, 48.005859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211292, 31.807047, 48.088612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446055, -0.072997, 0.892024,
		0.856608, 0.323621, -0.401862,
		-0.259343, 0.943367, 0.206882,
		43.133488, 32.090057, 48.150677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905136, 31.719809, 48.342716>,  <43.315029, 31.429701, 48.005859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905136, 31.719809, 48.342716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.598694, 31.959311, 48.436157>,  <43.414829, 32.103012, 48.492222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.598694, 31.959311, 48.436157>,  <43.905136, 31.719809, 48.342716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598694, 31.959311, 48.436157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342432, 0.072680, 0.936727,
		0.543890, 0.797630, -0.260713,
		-0.766110, 0.598753, 0.233604,
		43.368862, 32.138935, 48.506237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188938, 32.456100, 48.578842>,  <43.905136, 31.719809, 48.342716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188938, 32.456100, 48.578842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.825020, 32.398518, 48.734558>,  <43.606667, 32.363968, 48.827988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.825020, 32.398518, 48.734558>,  <44.188938, 32.456100, 48.578842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825020, 32.398518, 48.734558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358014, 0.202324, 0.911532,
		-0.209981, 0.968681, -0.132536,
		-0.909799, -0.143955, 0.389286,
		43.552082, 32.355331, 48.851345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016022, 33.078709, 49.046677>,  <44.188938, 32.456100, 48.578842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016022, 33.078709, 49.046677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.823311, 32.753475, 49.177391>,  <43.707684, 32.558334, 49.255821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.823311, 32.753475, 49.177391>,  <44.016022, 33.078709, 49.046677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823311, 32.753475, 49.177391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268927, 0.217736, 0.938227,
		-0.834010, 0.539895, 0.113761,
		-0.481774, -0.813083, 0.326786,
		43.678780, 32.509552, 49.275425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715134, 33.233212, 49.695576>,  <44.016022, 33.078709, 49.046677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715134, 33.233212, 49.695576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.669346, 32.835873, 49.700714>,  <43.641872, 32.597469, 49.703796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.669346, 32.835873, 49.700714>,  <43.715134, 33.233212, 49.695576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669346, 32.835873, 49.700714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310770, -0.023522, 0.950194,
		-0.943567, 0.112759, 0.311394,
		-0.114468, -0.993344, 0.012847,
		43.635006, 32.537868, 49.704567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266289, 33.185585, 50.242115>,  <43.715134, 33.233212, 49.695576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266289, 33.185585, 50.242115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.485008, 32.858780, 50.168907>,  <43.616241, 32.662697, 50.124981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.485008, 32.858780, 50.168907>,  <43.266289, 33.185585, 50.242115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485008, 32.858780, 50.168907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448406, 0.101161, 0.888087,
		-0.707066, -0.567673, 0.421669,
		0.546800, -0.817015, -0.183020,
		43.649048, 32.613674, 50.114002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714508, 33.174671, 50.857697>,  <43.266289, 33.185585, 50.242115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714508, 33.174671, 50.857697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.462315, 33.096767, 51.158245>,  <43.310997, 33.050026, 51.338573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.462315, 33.096767, 51.158245>,  <43.714508, 33.174671, 50.857697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462315, 33.096767, 51.158245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765581, 0.315615, -0.560600,
		-0.127965, -0.928686, -0.348091,
		-0.630485, -0.194755, 0.751372,
		43.273170, 33.038342, 51.383656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190243, 32.637188, 50.760777>,  <43.714508, 33.174671, 50.857697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190243, 32.637188, 50.760777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.100464, 32.954700, 50.986889>,  <43.046597, 33.145206, 51.122555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.100464, 32.954700, 50.986889>,  <43.190243, 32.637188, 50.760777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100464, 32.954700, 50.986889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641125, 0.316567, -0.699102,
		-0.733880, -0.519327, 0.437857,
		-0.224451, 0.793779, 0.565277,
		43.033127, 33.192833, 51.156471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496201, 32.600624, 50.851040>,  <43.190243, 32.637188, 50.760777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496201, 32.600624, 50.851040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.619049, 32.980545, 50.874859>,  <42.692760, 33.208500, 50.889149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.619049, 32.980545, 50.874859>,  <42.496201, 32.600624, 50.851040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619049, 32.980545, 50.874859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687788, 0.264775, -0.675901,
		-0.657741, 0.166628, 0.734583,
		0.307124, 0.949805, 0.059549,
		42.711185, 33.265488, 50.892723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110947, 32.867657, 50.326511>,  <42.496201, 32.600624, 50.851040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110947, 32.867657, 50.326511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350353, 33.173649, 50.421665>,  <42.493996, 33.357243, 50.478756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350353, 33.173649, 50.421665>,  <42.110947, 32.867657, 50.326511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350353, 33.173649, 50.421665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456981, 0.569905, -0.682918,
		-0.657990, 0.300027, 0.690676,
		0.598513, 0.764979, 0.237885,
		42.529907, 33.403141, 50.493031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601082, 33.387089, 50.450733>,  <42.110947, 32.867657, 50.326511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601082, 33.387089, 50.450733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.953255, 33.544331, 50.344669>,  <42.164558, 33.638676, 50.281029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.953255, 33.544331, 50.344669>,  <41.601082, 33.387089, 50.450733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953255, 33.544331, 50.344669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473619, 0.756099, -0.451662,
		0.022938, 0.523243, 0.851875,
		0.880431, 0.393103, -0.265161,
		42.217384, 33.662262, 50.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398067, 34.097092, 50.392853>,  <41.601082, 33.387089, 50.450733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398067, 34.097092, 50.392853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.741386, 34.091560, 50.187668>,  <41.947380, 34.088242, 50.064556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.741386, 34.091560, 50.187668>,  <41.398067, 34.097092, 50.392853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741386, 34.091560, 50.187668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371872, 0.672074, -0.640334,
		0.353601, 0.740355, 0.571700,
		0.858299, -0.013824, -0.512963,
		41.998875, 34.087414, 50.033779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584343, 34.874065, 50.281002>,  <41.398067, 34.097092, 50.392853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584343, 34.874065, 50.281002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.768475, 34.635689, 50.017807>,  <41.878952, 34.492661, 49.859890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.768475, 34.635689, 50.017807>,  <41.584343, 34.874065, 50.281002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768475, 34.635689, 50.017807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221393, 0.640704, -0.735176,
		0.859701, 0.484094, 0.162994,
		0.460325, -0.595946, -0.657989,
		41.906570, 34.456905, 49.820412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894848, 35.303421, 49.828449>,  <41.584343, 34.874065, 50.281002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894848, 35.303421, 49.828449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.893322, 34.975571, 49.599293>,  <41.892406, 34.778862, 49.461800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.893322, 34.975571, 49.599293>,  <41.894848, 35.303421, 49.828449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893322, 34.975571, 49.599293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190804, 0.562964, -0.804155,
		0.981621, 0.106245, -0.158533,
		-0.003811, -0.819624, -0.572890,
		41.892178, 34.729683, 49.427425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291210, 35.476318, 49.198086>,  <41.894848, 35.303421, 49.828449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291210, 35.476318, 49.198086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.090549, 35.147507, 49.090294>,  <41.970154, 34.950222, 49.025620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.090549, 35.147507, 49.090294>,  <42.291210, 35.476318, 49.198086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090549, 35.147507, 49.090294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326657, 0.468449, -0.820884,
		0.801023, -0.323774, -0.503520,
		-0.501655, -0.822026, -0.269476,
		41.940052, 34.900898, 49.009453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326500, 35.334694, 48.430954>,  <42.291210, 35.476318, 49.198086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326500, 35.334694, 48.430954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.033138, 35.076443, 48.516075>,  <41.857121, 34.921494, 48.567146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.033138, 35.076443, 48.516075>,  <42.326500, 35.334694, 48.430954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033138, 35.076443, 48.516075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477530, 0.266501, -0.837223,
		0.483823, -0.715641, -0.503759,
		-0.733404, -0.645628, 0.212800,
		41.813118, 34.882755, 48.579914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288364, 34.834435, 47.890125>,  <42.326500, 35.334694, 48.430954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288364, 34.834435, 47.890125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.934669, 34.865269, 48.074379>,  <41.722454, 34.883770, 48.184933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.934669, 34.865269, 48.074379>,  <42.288364, 34.834435, 47.890125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934669, 34.865269, 48.074379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426311, 0.269608, -0.863464,
		-0.190752, -0.959880, -0.205534,
		-0.884236, 0.077086, 0.460635,
		41.669399, 34.888393, 48.212570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850639, 34.377171, 47.538551>,  <42.288364, 34.834435, 47.890125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850639, 34.377171, 47.538551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.610073, 34.649391, 47.705956>,  <41.465733, 34.812725, 47.806396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.610073, 34.649391, 47.705956>,  <41.850639, 34.377171, 47.538551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610073, 34.649391, 47.705956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542397, 0.036818, -0.839315,
		-0.586607, -0.731773, 0.346987,
		-0.601413, 0.680553, 0.418510,
		41.429649, 34.853558, 47.831509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252571, 34.102955, 47.366024>,  <41.850639, 34.377171, 47.538551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252571, 34.102955, 47.366024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.190857, 34.491577, 47.437893>,  <41.153828, 34.724751, 47.481014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.190857, 34.491577, 47.437893>,  <41.252571, 34.102955, 47.366024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190857, 34.491577, 47.437893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534214, 0.070946, -0.842367,
		-0.831151, -0.225945, 0.508072,
		-0.154283, 0.971553, 0.179669,
		41.144573, 34.783043, 47.491795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544918, 34.235447, 47.102131>,  <41.252571, 34.102955, 47.366024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544918, 34.235447, 47.102131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.688736, 34.606071, 47.146347>,  <40.775024, 34.828445, 47.172878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.688736, 34.606071, 47.146347>,  <40.544918, 34.235447, 47.102131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688736, 34.606071, 47.146347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358277, 0.246458, -0.900498,
		-0.861607, 0.284162, 0.420576,
		0.359542, 0.926558, 0.110542,
		40.796600, 34.884041, 47.179508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922329, 34.694382, 47.161896>,  <40.544918, 34.235447, 47.102131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922329, 34.694382, 47.161896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256351, 34.844479, 47.000957>,  <40.456764, 34.934536, 46.904396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.256351, 34.844479, 47.000957>,  <39.922329, 34.694382, 47.161896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256351, 34.844479, 47.000957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467334, 0.097895, -0.878644,
		-0.290314, 0.921745, 0.257109,
		0.835055, 0.375238, -0.402343,
		40.506866, 34.957050, 46.880253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546677, 35.156883, 47.470074>,  <39.922329, 34.694382, 47.161896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546677, 35.156883, 47.470074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151421, 35.127872, 47.415924>,  <38.914268, 35.110466, 47.383434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151421, 35.127872, 47.415924>,  <39.546677, 35.156883, 47.470074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151421, 35.127872, 47.415924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128140, -0.096533, 0.987047,
		-0.084652, 0.992684, 0.086095,
		-0.988137, -0.072524, -0.135374,
		38.854980, 35.106117, 47.375313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207405, 35.583221, 48.024544>,  <39.546677, 35.156883, 47.470074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207405, 35.583221, 48.024544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954323, 35.297363, 47.905231>,  <38.802475, 35.125851, 47.833645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954323, 35.297363, 47.905231>,  <39.207405, 35.583221, 48.024544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954323, 35.297363, 47.905231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248555, -0.177389, 0.952236,
		-0.733419, 0.676624, -0.065393,
		-0.632706, -0.714641, -0.298279,
		38.764511, 35.082970, 47.815746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585106, 35.619095, 48.474449>,  <39.207405, 35.583221, 48.024544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585106, 35.619095, 48.474449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.589931, 35.247593, 48.326248>,  <38.592827, 35.024693, 48.237328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.589931, 35.247593, 48.326248>,  <38.585106, 35.619095, 48.474449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589931, 35.247593, 48.326248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250203, -0.361547, 0.898155,
		-0.968118, 0.081865, -0.236738,
		0.012064, -0.928753, -0.370503,
		38.593552, 34.968967, 48.215096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130936, 35.331791, 48.892883>,  <38.585106, 35.619095, 48.474449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130936, 35.331791, 48.892883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312458, 35.023571, 48.713856>,  <38.421371, 34.838638, 48.606438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312458, 35.023571, 48.713856>,  <38.130936, 35.331791, 48.892883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312458, 35.023571, 48.713856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044291, -0.521149, 0.852316,
		-0.889999, -0.366962, -0.270628,
		0.453805, -0.770547, -0.447569,
		38.448601, 34.792408, 48.579586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739895, 34.669022, 49.102077>,  <38.130936, 35.331791, 48.892883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739895, 34.669022, 49.102077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109207, 34.558865, 48.994961>,  <38.330795, 34.492771, 48.930691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.109207, 34.558865, 48.994961>,  <37.739895, 34.669022, 49.102077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109207, 34.558865, 48.994961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116433, -0.463707, 0.878305,
		-0.366059, -0.842100, -0.396066,
		0.923279, -0.275396, -0.267792,
		38.386192, 34.476246, 48.914623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923328, 33.939415, 49.260403>,  <37.739895, 34.669022, 49.102077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923328, 33.939415, 49.260403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294502, 34.084332, 49.225353>,  <38.517208, 34.171284, 49.204323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294502, 34.084332, 49.225353>,  <37.923328, 33.939415, 49.260403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294502, 34.084332, 49.225353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237708, -0.394105, 0.887793,
		0.287109, -0.844644, -0.451824,
		0.927935, 0.362295, -0.087627,
		38.572884, 34.193020, 49.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398083, 33.433537, 49.327507>,  <37.923328, 33.939415, 49.260403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398083, 33.433537, 49.327507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623653, 33.758236, 49.388233>,  <38.758995, 33.953056, 49.424671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623653, 33.758236, 49.388233>,  <38.398083, 33.433537, 49.327507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623653, 33.758236, 49.388233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337577, -0.394366, 0.854703,
		0.753680, -0.430736, -0.496420,
		0.563922, 0.811753, 0.151819,
		38.792831, 34.001762, 49.433781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376308, 32.710674, 49.250805>,  <38.398083, 33.433537, 49.327507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376308, 32.710674, 49.250805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008575, 32.691437, 49.407013>,  <37.787933, 32.679893, 49.500736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008575, 32.691437, 49.407013>,  <38.376308, 32.710674, 49.250805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008575, 32.691437, 49.407013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386589, 0.295232, -0.873720,
		-0.073270, -0.954214, -0.290012,
		-0.919337, -0.048098, 0.390520,
		37.732773, 32.677006, 49.524170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949783, 32.258224, 48.769367>,  <38.376308, 32.710674, 49.250805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949783, 32.258224, 48.769367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683800, 32.459930, 48.989746>,  <37.524208, 32.580956, 49.121975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683800, 32.459930, 48.989746>,  <37.949783, 32.258224, 48.769367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683800, 32.459930, 48.989746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560603, 0.150437, -0.814305,
		-0.493511, -0.850343, 0.182659,
		-0.664959, 0.504268, 0.550947,
		37.484310, 32.611210, 49.155029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421001, 31.995768, 48.526402>,  <37.949783, 32.258224, 48.769367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421001, 31.995768, 48.526402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277191, 32.329330, 48.693897>,  <37.190907, 32.529469, 48.794395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277191, 32.329330, 48.693897>,  <37.421001, 31.995768, 48.526402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277191, 32.329330, 48.693897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625358, 0.117743, -0.771404,
		-0.692582, -0.539201, 0.479158,
		-0.359525, 0.833906, 0.418740,
		37.169334, 32.579502, 48.819519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717495, 31.932613, 48.755901>,  <37.421001, 31.995768, 48.526402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717495, 31.932613, 48.755901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745441, 32.331573, 48.748791>,  <36.762211, 32.570950, 48.744526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745441, 32.331573, 48.748791>,  <36.717495, 31.932613, 48.755901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745441, 32.331573, 48.748791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730040, 0.038980, -0.682292,
		-0.679824, 0.060646, 0.730864,
		0.069867, 0.997398, -0.017774,
		36.766403, 32.630795, 48.743458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008709, 32.252941, 48.721092>,  <36.717495, 31.932613, 48.755901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008709, 32.252941, 48.721092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239811, 32.546455, 48.578117>,  <36.378471, 32.722565, 48.492332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.239811, 32.546455, 48.578117>,  <36.008709, 32.252941, 48.721092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239811, 32.546455, 48.578117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604063, 0.089901, -0.791849,
		-0.548914, 0.673407, 0.495193,
		0.577755, 0.733785, -0.357433,
		36.413139, 32.766590, 48.470886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519966, 32.716824, 48.379974>,  <36.008709, 32.252941, 48.721092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519966, 32.716824, 48.379974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888069, 32.794994, 48.244366>,  <36.108932, 32.841896, 48.163002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888069, 32.794994, 48.244366>,  <35.519966, 32.716824, 48.379974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888069, 32.794994, 48.244366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383121, 0.273623, -0.882241,
		-0.079649, 0.941775, 0.326675,
		0.920258, 0.195426, -0.339020,
		36.164146, 32.853622, 48.142658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410530, 33.252773, 47.996174>,  <35.519966, 32.716824, 48.379974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410530, 33.252773, 47.996174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760704, 33.143486, 47.836689>,  <35.970806, 33.077915, 47.740997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760704, 33.143486, 47.836689>,  <35.410530, 33.252773, 47.996174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760704, 33.143486, 47.836689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319516, 0.291843, -0.901519,
		0.362671, 0.916614, 0.168192,
		0.875431, -0.273215, -0.398716,
		36.023335, 33.061523, 47.717075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.872185, 30.121391, 50.173775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.234104, 30.231600, 50.043892>,  <41.451256, 30.297724, 49.965961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.234104, 30.231600, 50.043892>,  <40.872185, 30.121391, 50.173775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234104, 30.231600, 50.043892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259196, -0.248686, -0.933259,
		-0.337882, 0.928571, -0.153595,
		0.904794, 0.275520, -0.324709,
		41.505543, 30.314257, 49.946480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699955, 30.450830, 49.577450>,  <40.872185, 30.121391, 50.173775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699955, 30.450830, 49.577450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.095833, 30.408068, 49.539341>,  <41.333359, 30.382410, 49.516476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.095833, 30.408068, 49.539341>,  <40.699955, 30.450830, 49.577450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095833, 30.408068, 49.539341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111745, -0.160526, -0.980686,
		0.089549, 0.981225, -0.170818,
		0.989694, -0.106907, -0.095272,
		41.392742, 30.375996, 49.510757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835499, 30.819727, 48.987930>,  <40.699955, 30.450830, 49.577450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835499, 30.819727, 48.987930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.126217, 30.550104, 49.040718>,  <41.300648, 30.388330, 49.072392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.126217, 30.550104, 49.040718>,  <40.835499, 30.819727, 48.987930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126217, 30.550104, 49.040718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103909, -0.297827, -0.948948,
		0.678949, 0.675978, -0.286500,
		0.726795, -0.674057, 0.131969,
		41.344257, 30.347887, 49.080307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348495, 30.936304, 48.409065>,  <40.835499, 30.819727, 48.987930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348495, 30.936304, 48.409065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.351929, 30.573713, 48.577934>,  <41.353989, 30.356159, 48.679256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.351929, 30.573713, 48.577934>,  <41.348495, 30.936304, 48.409065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351929, 30.573713, 48.577934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043248, -0.422129, -0.905504,
		0.999027, -0.010484, -0.042827,
		0.008585, -0.906475, 0.422172,
		41.354504, 30.301771, 48.704586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688564, 30.616430, 47.897053>,  <41.348495, 30.936304, 48.409065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688564, 30.616430, 47.897053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.516342, 30.315269, 48.096157>,  <41.413010, 30.134573, 48.215618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.516342, 30.315269, 48.096157>,  <41.688564, 30.616430, 47.897053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516342, 30.315269, 48.096157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242932, -0.434471, -0.867305,
		0.869257, -0.494343, 0.004159,
		-0.430554, -0.752901, 0.497759,
		41.387177, 30.089399, 48.245483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014122, 29.981226, 47.604961>,  <41.688564, 30.616430, 47.897053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014122, 29.981226, 47.604961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.677425, 29.865675, 47.787395>,  <41.475407, 29.796345, 47.896854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.677425, 29.865675, 47.787395>,  <42.014122, 29.981226, 47.604961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677425, 29.865675, 47.787395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285972, -0.477966, -0.830523,
		0.457914, -0.829517, 0.319714,
		-0.841746, -0.288879, 0.456085,
		41.424900, 29.779011, 47.924221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904343, 29.351891, 47.410793>,  <42.014122, 29.981226, 47.604961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904343, 29.351891, 47.410793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.542908, 29.458809, 47.544708>,  <41.326046, 29.522961, 47.625057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.542908, 29.458809, 47.544708>,  <41.904343, 29.351891, 47.410793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542908, 29.458809, 47.544708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417415, -0.373482, -0.828417,
		-0.096396, -0.888293, 0.449047,
		-0.903589, 0.267295, 0.334785,
		41.271832, 29.538998, 47.645145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511032, 28.702345, 47.282475>,  <41.904343, 29.351891, 47.410793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511032, 28.702345, 47.282475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.252029, 29.001917, 47.338821>,  <41.096630, 29.181660, 47.372627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.252029, 29.001917, 47.338821>,  <41.511032, 28.702345, 47.282475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252029, 29.001917, 47.338821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431352, -0.207807, -0.877925,
		-0.628231, -0.629222, 0.457608,
		-0.647504, 0.748930, 0.140866,
		41.057777, 29.226595, 47.381081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847450, 28.465418, 47.018566>,  <41.511032, 28.702345, 47.282475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847450, 28.465418, 47.018566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.817383, 28.864166, 47.008808>,  <40.799343, 29.103416, 47.002953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.817383, 28.864166, 47.008808>,  <40.847450, 28.465418, 47.018566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817383, 28.864166, 47.008808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388542, -0.051806, -0.919973,
		-0.918360, -0.059672, 0.391221,
		-0.075164, 0.996873, -0.024392,
		40.794834, 29.163229, 47.001492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065655, 28.568567, 46.846210>,  <40.847450, 28.465418, 47.018566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065655, 28.568567, 46.846210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.251862, 28.917231, 46.784878>,  <40.363586, 29.126429, 46.748077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.251862, 28.917231, 46.784878>,  <40.065655, 28.568567, 46.846210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251862, 28.917231, 46.784878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540594, 0.142864, -0.829064,
		-0.700753, 0.468833, 0.537718,
		0.465514, 0.871657, -0.153336,
		40.391514, 29.178728, 46.738876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580688, 28.999863, 46.594082>,  <40.065655, 28.568567, 46.846210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580688, 28.999863, 46.594082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.915421, 29.168396, 46.454254>,  <40.116261, 29.269516, 46.370358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.915421, 29.168396, 46.454254>,  <39.580688, 28.999863, 46.594082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915421, 29.168396, 46.454254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411556, 0.063071, -0.909199,
		-0.361030, 0.904709, 0.226183,
		0.836826, 0.421336, -0.349568,
		40.166470, 29.294796, 46.349384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357697, 29.673262, 46.287048>,  <39.580688, 28.999863, 46.594082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357697, 29.673262, 46.287048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.708248, 29.595278, 46.110886>,  <39.918579, 29.548487, 46.005188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.708248, 29.595278, 46.110886>,  <39.357697, 29.673262, 46.287048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708248, 29.595278, 46.110886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349368, 0.372088, -0.859938,
		0.331524, 0.907491, 0.257975,
		0.876375, -0.194962, -0.440404,
		39.971161, 29.536789, 45.978764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908077, 30.283386, 46.250172>,  <39.357697, 29.673262, 46.287048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908077, 30.283386, 46.250172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568653, 30.078211, 46.302067>,  <38.364998, 29.955105, 46.333202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.568653, 30.078211, 46.302067>,  <38.908077, 30.283386, 46.250172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568653, 30.078211, 46.302067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195407, -0.075965, 0.977776,
		-0.491686, 0.855056, 0.164693,
		-0.848564, -0.512940, 0.129733,
		38.314083, 29.924328, 46.340988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631096, 30.532419, 46.972023>,  <38.908077, 30.283386, 46.250172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631096, 30.532419, 46.972023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452606, 30.183758, 46.890930>,  <38.345512, 29.974562, 46.842274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452606, 30.183758, 46.890930>,  <38.631096, 30.532419, 46.972023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452606, 30.183758, 46.890930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030007, -0.240983, 0.970066,
		-0.894416, 0.426787, 0.133689,
		-0.446228, -0.871654, -0.202733,
		38.318737, 29.922262, 46.830109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938583, 30.480612, 47.273521>,  <38.631096, 30.532419, 46.972023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938583, 30.480612, 47.273521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046516, 30.100348, 47.212292>,  <38.111279, 29.872189, 47.175552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046516, 30.100348, 47.212292>,  <37.938583, 30.480612, 47.273521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046516, 30.100348, 47.212292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097545, -0.185145, 0.977858,
		-0.957953, -0.248929, -0.142691,
		0.269836, -0.950661, -0.153079,
		38.127468, 29.815149, 47.166367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460751, 30.078066, 47.599335>,  <37.938583, 30.480612, 47.273521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460751, 30.078066, 47.599335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.732052, 29.787277, 47.556461>,  <37.894833, 29.612804, 47.530735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.732052, 29.787277, 47.556461>,  <37.460751, 30.078066, 47.599335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732052, 29.787277, 47.556461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001780, -0.144239, 0.989541,
		-0.734830, -0.671347, -0.096536,
		0.678249, -0.726972, -0.107186,
		37.935528, 29.569185, 47.524307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239090, 29.477768, 48.013988>,  <37.460751, 30.078066, 47.599335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239090, 29.477768, 48.013988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.629421, 29.406969, 47.962715>,  <37.863621, 29.364491, 47.931950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.629421, 29.406969, 47.962715>,  <37.239090, 29.477768, 48.013988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629421, 29.406969, 47.962715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069007, -0.306979, 0.949211,
		-0.207354, -0.935113, -0.287346,
		0.975829, -0.176994, -0.128182,
		37.922169, 29.353870, 47.924259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343754, 28.936068, 48.430443>,  <37.239090, 29.477768, 48.013988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343754, 28.936068, 48.430443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709023, 29.089128, 48.374310>,  <37.928185, 29.180965, 48.340630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709023, 29.089128, 48.374310>,  <37.343754, 28.936068, 48.430443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709023, 29.089128, 48.374310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260894, -0.284276, 0.922563,
		0.313130, -0.879070, -0.359425,
		0.913173, 0.382654, -0.140329,
		37.982975, 29.203924, 48.332211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799313, 28.481037, 48.803284>,  <37.343754, 28.936068, 48.430443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799313, 28.481037, 48.803284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.989098, 28.830084, 48.756927>,  <38.102966, 29.039511, 48.729115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.989098, 28.830084, 48.756927>,  <37.799313, 28.481037, 48.803284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989098, 28.830084, 48.756927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361754, -0.073265, 0.929390,
		0.802510, -0.482881, -0.350434,
		0.474460, 0.872615, -0.115888,
		38.131435, 29.091869, 48.722160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488266, 28.372540, 49.052647>,  <37.799313, 28.481037, 48.803284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488266, 28.372540, 49.052647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.457336, 28.771122, 49.039379>,  <38.438778, 29.010271, 49.031418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.457336, 28.771122, 49.039379>,  <38.488266, 28.372540, 49.052647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457336, 28.771122, 49.039379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372233, 0.059718, 0.926216,
		0.924913, 0.059276, -0.375530,
		-0.077329, 0.996454, -0.033169,
		38.434139, 29.070059, 49.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100735, 28.596386, 49.249538>,  <38.488266, 28.372540, 49.052647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100735, 28.596386, 49.249538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.867332, 28.907667, 49.342430>,  <38.727291, 29.094435, 49.398167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.867332, 28.907667, 49.342430>,  <39.100735, 28.596386, 49.249538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867332, 28.907667, 49.342430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413493, 0.038573, 0.909690,
		0.698964, 0.626830, -0.344288,
		-0.583501, 0.778201, 0.232229,
		38.692284, 29.141127, 49.412098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481827, 29.063635, 49.679569>,  <39.100735, 28.596386, 49.249538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481827, 29.063635, 49.679569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.109798, 29.186916, 49.759544>,  <38.886581, 29.260885, 49.807529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.109798, 29.186916, 49.759544>,  <39.481827, 29.063635, 49.679569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109798, 29.186916, 49.759544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225050, 0.047825, 0.973173,
		0.290372, 0.950118, -0.113841,
		-0.930073, 0.308202, 0.199937,
		38.830776, 29.279377, 49.819527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507851, 29.741640, 50.053978>,  <39.481827, 29.063635, 49.679569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507851, 29.741640, 50.053978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.143105, 29.594351, 50.126545>,  <38.924255, 29.505978, 50.170086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.143105, 29.594351, 50.126545>,  <39.507851, 29.741640, 50.053978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143105, 29.594351, 50.126545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094786, 0.241121, 0.965855,
		-0.399392, 0.897927, -0.184968,
		-0.911867, -0.368222, 0.181413,
		38.869545, 29.483885, 50.180969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127174, 30.277618, 50.412243>,  <39.507851, 29.741640, 50.053978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127174, 30.277618, 50.412243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.962021, 29.923555, 50.498055>,  <38.862926, 29.711117, 50.549541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.962021, 29.923555, 50.498055>,  <39.127174, 30.277618, 50.412243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962021, 29.923555, 50.498055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087185, 0.196047, 0.976711,
		-0.906600, 0.421975, -0.003773,
		-0.412887, -0.885157, 0.214526,
		38.838154, 29.658009, 50.562412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861671, 30.461870, 50.920647>,  <39.127174, 30.277618, 50.412243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861671, 30.461870, 50.920647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.872398, 30.064228, 50.962669>,  <38.878834, 29.825644, 50.987881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.872398, 30.064228, 50.962669>,  <38.861671, 30.461870, 50.920647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872398, 30.064228, 50.962669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261583, 0.108409, 0.959074,
		-0.964809, 0.001762, 0.262948,
		0.026816, -0.994105, 0.105055,
		38.880444, 29.765997, 50.994186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261238, 30.197552, 51.384121>,  <38.861671, 30.461870, 50.920647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261238, 30.197552, 51.384121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.593384, 29.975302, 51.367252>,  <38.792671, 29.841951, 51.357132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.593384, 29.975302, 51.367252>,  <38.261238, 30.197552, 51.384121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593384, 29.975302, 51.367252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135402, 0.127790, 0.982515,
		-0.540520, -0.821555, 0.181345,
		0.830364, -0.555623, -0.042167,
		38.842491, 29.808615, 51.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832844, 30.637100, 51.892883>,  <38.261238, 30.197552, 51.384121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832844, 30.637100, 51.892883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108402, 30.923111, 51.940479>,  <38.273735, 31.094717, 51.969036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.108402, 30.923111, 51.940479>,  <37.832844, 30.637100, 51.892883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108402, 30.923111, 51.940479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353226, 0.474495, -0.806279,
		-0.632974, 0.513409, 0.579443,
		0.688894, 0.715028, 0.118993,
		38.315071, 31.137619, 51.976177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417065, 31.305496, 51.983929>,  <37.832844, 30.637100, 51.892883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417065, 31.305496, 51.983929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.787498, 31.409986, 51.875031>,  <38.009758, 31.472681, 51.809692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.787498, 31.409986, 51.875031>,  <37.417065, 31.305496, 51.983929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787498, 31.409986, 51.875031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377305, 0.639795, -0.669554,
		-0.000722, 0.722788, 0.691070,
		0.926089, 0.261227, -0.272250,
		38.065327, 31.488356, 51.793354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467339, 32.047615, 51.961788>,  <37.417065, 31.305496, 51.983929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467339, 32.047615, 51.961788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.758934, 31.923109, 51.717922>,  <37.933891, 31.848406, 51.571602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.758934, 31.923109, 51.717922>,  <37.467339, 32.047615, 51.961788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758934, 31.923109, 51.717922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295328, 0.660468, -0.690336,
		0.617536, 0.683300, 0.389552,
		0.728993, -0.311261, -0.609660,
		37.977631, 31.829731, 51.535023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724457, 32.632092, 51.720509>,  <37.467339, 32.047615, 51.961788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724457, 32.632092, 51.720509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.831329, 32.352623, 51.455040>,  <37.895454, 32.184940, 51.295757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.831329, 32.352623, 51.455040>,  <37.724457, 32.632092, 51.720509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831329, 32.352623, 51.455040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153527, 0.649054, -0.745090,
		0.951337, 0.300968, 0.066151,
		0.267184, -0.698676, -0.663676,
		37.911484, 32.143021, 51.255936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271290, 32.935852, 51.241360>,  <37.724457, 32.632092, 51.720509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271290, 32.935852, 51.241360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.093914, 32.634663, 51.046879>,  <37.987488, 32.453949, 50.930191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.093914, 32.634663, 51.046879>,  <38.271290, 32.935852, 51.241360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093914, 32.634663, 51.046879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029519, 0.529884, -0.847556,
		0.895818, -0.390192, -0.212745,
		-0.443440, -0.752976, -0.486198,
		37.960880, 32.408772, 50.901020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278713, 33.215248, 50.563560>,  <38.271290, 32.935852, 51.241360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278713, 33.215248, 50.563560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.102894, 32.864491, 50.485744>,  <37.997402, 32.654034, 50.439053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.102894, 32.864491, 50.485744>,  <38.278713, 33.215248, 50.563560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102894, 32.864491, 50.485744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281205, 0.340041, -0.897383,
		0.853066, -0.339737, -0.396053,
		-0.439548, -0.876898, -0.194542,
		37.971027, 32.601421, 50.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508961, 32.959934, 49.931335>,  <38.278713, 33.215248, 50.563560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508961, 32.959934, 49.931335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.148594, 32.792995, 49.978962>,  <37.932373, 32.692833, 50.007538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.148594, 32.792995, 49.978962>,  <38.508961, 32.959934, 49.931335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148594, 32.792995, 49.978962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265226, 0.312300, -0.912208,
		0.343529, -0.853397, -0.392048,
		-0.900912, -0.417351, 0.119059,
		37.878319, 32.667793, 50.014683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116756, 33.168701, 49.482471>,  <38.508961, 32.959934, 49.931335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116756, 33.168701, 49.482471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.167755, 33.552586, 49.582634>,  <39.198357, 33.782917, 49.642731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.167755, 33.552586, 49.582634>,  <39.116756, 33.168701, 49.482471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167755, 33.552586, 49.582634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611453, -0.274840, 0.742016,
		0.780941, 0.058506, -0.621858,
		0.127499, 0.959708, 0.250407,
		39.206005, 33.840500, 49.657757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837982, 33.284031, 49.600727>,  <39.116756, 33.168701, 49.482471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837982, 33.284031, 49.600727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.631092, 33.555000, 49.809944>,  <39.506958, 33.717583, 49.935474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.631092, 33.555000, 49.809944>,  <39.837982, 33.284031, 49.600727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631092, 33.555000, 49.809944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605335, -0.142469, 0.783117,
		0.605020, 0.721665, -0.336379,
		-0.517224, 0.677424, 0.523045,
		39.475925, 33.758228, 49.966858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317760, 33.742802, 49.769409>,  <39.837982, 33.284031, 49.600727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317760, 33.742802, 49.769409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.027134, 33.791012, 50.039986>,  <39.852757, 33.819939, 50.202332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.027134, 33.791012, 50.039986>,  <40.317760, 33.742802, 49.769409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027134, 33.791012, 50.039986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667927, -0.107040, 0.736489,
		0.161172, 0.986923, -0.002730,
		-0.726565, 0.120525, 0.676444,
		39.809166, 33.827168, 50.242920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536476, 34.067955, 50.374096>,  <40.317760, 33.742802, 49.769409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536476, 34.067955, 50.374096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.189804, 33.924156, 50.512444>,  <39.981800, 33.837875, 50.595451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.189804, 33.924156, 50.512444>,  <40.536476, 34.067955, 50.374096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189804, 33.924156, 50.512444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418791, -0.147574, 0.896011,
		-0.271071, 0.921403, 0.278453,
		-0.866680, -0.359497, 0.345873,
		39.929802, 33.816307, 50.616207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221954, 34.434315, 50.923943>,  <40.536476, 34.067955, 50.374096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221954, 34.434315, 50.923943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.141315, 34.045097, 50.968758>,  <40.092930, 33.811569, 50.995647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.141315, 34.045097, 50.968758>,  <40.221954, 34.434315, 50.923943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141315, 34.045097, 50.968758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592765, -0.030147, 0.804811,
		-0.779736, 0.228660, 0.582861,
		-0.201599, -0.973040, 0.112035,
		40.080837, 33.753185, 51.002369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371750, 34.463783, 51.603096>,  <40.221954, 34.434315, 50.923943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371750, 34.463783, 51.603096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.303391, 34.078217, 51.521458>,  <40.262375, 33.846878, 51.472473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.303391, 34.078217, 51.521458>,  <40.371750, 34.463783, 51.603096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303391, 34.078217, 51.521458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498720, -0.263275, 0.825811,
		-0.849748, 0.039344, 0.525719,
		-0.170900, -0.963918, -0.204096,
		40.252121, 33.789040, 51.460228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476067, 34.130238, 52.172451>,  <40.371750, 34.463783, 51.603096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476067, 34.130238, 52.172451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.506676, 33.808971, 51.936119>,  <40.525040, 33.616211, 51.794319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.506676, 33.808971, 51.936119>,  <40.476067, 34.130238, 52.172451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506676, 33.808971, 51.936119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657300, -0.404936, 0.635597,
		-0.749734, -0.436987, 0.496931,
		0.076522, -0.803162, -0.590826,
		40.529633, 33.568024, 51.758873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307899, 33.530609, 52.630608>,  <40.476067, 34.130238, 52.172451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307899, 33.530609, 52.630608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.498474, 33.399483, 52.304283>,  <40.612820, 33.320805, 52.108490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.498474, 33.399483, 52.304283>,  <40.307899, 33.530609, 52.630608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498474, 33.399483, 52.304283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613473, -0.540732, 0.575552,
		-0.629811, -0.774690, -0.056516,
		0.476435, -0.327818, -0.815810,
		40.641403, 33.301136, 52.059540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458824, 32.858185, 52.759258>,  <40.307899, 33.530609, 52.630608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458824, 32.858185, 52.759258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.717510, 32.929512, 52.462620>,  <40.872723, 32.972309, 52.284637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.717510, 32.929512, 52.462620>,  <40.458824, 32.858185, 52.759258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717510, 32.929512, 52.462620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637666, -0.659882, 0.397414,
		-0.418498, -0.729903, -0.540464,
		0.646716, 0.178318, -0.741593,
		40.911526, 32.983009, 52.240143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.442486, 36.057156, 37.016499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814793, 36.143181, 37.134762>,  <37.038177, 36.194798, 37.205719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814793, 36.143181, 37.134762>,  <36.442486, 36.057156, 37.016499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814793, 36.143181, 37.134762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170137, -0.460990, 0.870943,
		0.323605, -0.860950, -0.392486,
		0.930771, 0.215065, 0.295658,
		37.094025, 36.207699, 37.223457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548214, 35.529186, 37.412960>,  <36.442486, 36.057156, 37.016499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548214, 35.529186, 37.412960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829762, 35.787804, 37.530636>,  <36.998692, 35.942974, 37.601242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829762, 35.787804, 37.530636>,  <36.548214, 35.529186, 37.412960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829762, 35.787804, 37.530636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053508, -0.364720, 0.929578,
		0.708309, -0.670046, -0.222121,
		0.703872, 0.646543, 0.294187,
		37.040924, 35.981766, 37.618893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918293, 35.137363, 37.949215>,  <36.548214, 35.529186, 37.412960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918293, 35.137363, 37.949215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022602, 35.521591, 37.987820>,  <37.085186, 35.752129, 38.010983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022602, 35.521591, 37.987820>,  <36.918293, 35.137363, 37.949215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022602, 35.521591, 37.987820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194975, -0.150310, 0.969222,
		0.945507, -0.233928, -0.226483,
		0.260771, 0.960565, 0.096508,
		37.100834, 35.809761, 38.016773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305477, 35.062595, 38.524334>,  <36.918293, 35.137363, 37.949215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305477, 35.062595, 38.524334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237926, 35.456348, 38.504444>,  <37.197395, 35.692600, 38.492508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237926, 35.456348, 38.504444>,  <37.305477, 35.062595, 38.524334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237926, 35.456348, 38.504444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113384, 0.069519, 0.991116,
		0.979093, 0.161740, -0.123353,
		-0.168879, 0.984382, -0.049727,
		37.187263, 35.751663, 38.489525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855705, 35.272270, 38.951725>,  <37.305477, 35.062595, 38.524334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855705, 35.272270, 38.951725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571617, 35.553753, 38.943913>,  <37.401165, 35.722645, 38.939224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571617, 35.553753, 38.943913>,  <37.855705, 35.272270, 38.951725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571617, 35.553753, 38.943913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100756, -0.074146, 0.992144,
		0.696733, 0.706608, 0.123563,
		-0.710219, 0.703710, -0.019535,
		37.358551, 35.764866, 38.938053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009804, 35.783360, 39.317696>,  <37.855705, 35.272270, 38.951725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009804, 35.783360, 39.317696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617214, 35.859665, 39.324764>,  <37.381660, 35.905449, 39.329006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617214, 35.859665, 39.324764>,  <38.009804, 35.783360, 39.317696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617214, 35.859665, 39.324764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034004, 0.082677, 0.995996,
		0.188535, 0.978149, -0.087633,
		-0.981478, 0.190760, 0.017673,
		37.322769, 35.916893, 39.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849873, 36.335342, 39.662800>,  <38.009804, 35.783360, 39.317696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849873, 36.335342, 39.662800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485710, 36.170776, 39.680222>,  <37.267212, 36.072037, 39.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485710, 36.170776, 39.680222>,  <37.849873, 36.335342, 39.662800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485710, 36.170776, 39.680222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049195, 0.212178, 0.975992,
		-0.410776, 0.886409, -0.213408,
		-0.910408, -0.411413, 0.043551,
		37.212589, 36.047352, 39.693287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538631, 36.713310, 40.139477>,  <37.849873, 36.335342, 39.662800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538631, 36.713310, 40.139477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290619, 36.401085, 40.107765>,  <37.141811, 36.213749, 40.088737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290619, 36.401085, 40.107765>,  <37.538631, 36.713310, 40.139477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290619, 36.401085, 40.107765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198530, 0.058332, 0.978357,
		-0.759045, 0.622350, -0.191133,
		-0.620030, -0.780563, -0.079278,
		37.104610, 36.166916, 40.083981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915951, 36.945831, 40.503094>,  <37.538631, 36.713310, 40.139477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915951, 36.945831, 40.503094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918510, 36.546417, 40.481598>,  <36.920048, 36.306770, 40.468700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918510, 36.546417, 40.481598>,  <36.915951, 36.945831, 40.503094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918510, 36.546417, 40.481598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254719, -0.053601, 0.965529,
		-0.966994, 0.007507, -0.254689,
		0.006404, -0.998534, -0.053744,
		36.920433, 36.246857, 40.465473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342010, 36.768486, 40.895546>,  <36.915951, 36.945831, 40.503094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342010, 36.768486, 40.895546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574104, 36.445705, 40.851437>,  <36.713360, 36.252037, 40.824970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574104, 36.445705, 40.851437>,  <36.342010, 36.768486, 40.895546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574104, 36.445705, 40.851437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050716, -0.099336, 0.993761,
		-0.812867, -0.582210, -0.016713,
		0.580237, -0.806947, -0.110275,
		36.748177, 36.203621, 40.818356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037167, 36.275688, 41.240311>,  <36.342010, 36.768486, 40.895546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037167, 36.275688, 41.240311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428257, 36.195454, 41.215595>,  <36.662910, 36.147312, 41.200768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428257, 36.195454, 41.215595>,  <36.037167, 36.275688, 41.240311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428257, 36.195454, 41.215595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038400, -0.118460, 0.992216,
		-0.206344, -0.972488, -0.108119,
		0.977726, -0.200586, -0.061787,
		36.721577, 36.135281, 41.197060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119694, 35.642662, 41.653252>,  <36.037167, 36.275688, 41.240311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119694, 35.642662, 41.653252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482456, 35.806248, 41.612736>,  <36.700115, 35.904400, 41.588425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482456, 35.806248, 41.612736>,  <36.119694, 35.642662, 41.653252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482456, 35.806248, 41.612736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122602, -0.026152, 0.992111,
		0.403093, -0.912174, -0.073858,
		0.906909, 0.408968, -0.101293,
		36.754528, 35.928940, 41.582348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968468, 34.942730, 41.757698>,  <36.119694, 35.642662, 41.653252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968468, 34.942730, 41.757698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593182, 34.832943, 41.842003>,  <35.368011, 34.767071, 41.892586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593182, 34.832943, 41.842003>,  <35.968468, 34.942730, 41.757698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593182, 34.832943, 41.842003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188527, -0.105323, -0.976404,
		0.290186, -0.955812, 0.047072,
		-0.938216, -0.274464, 0.210759,
		35.311718, 34.750603, 41.905231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829174, 34.413631, 41.304829>,  <35.968468, 34.942730, 41.757698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829174, 34.413631, 41.304829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455502, 34.501839, 41.417030>,  <35.231300, 34.554764, 41.484352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455502, 34.501839, 41.417030>,  <35.829174, 34.413631, 41.304829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455502, 34.501839, 41.417030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283802, 0.017258, -0.958728,
		-0.216260, -0.975230, 0.046462,
		-0.934178, 0.220520, 0.280504,
		35.175247, 34.567993, 41.501183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386055, 34.015938, 40.940804>,  <35.829174, 34.413631, 41.304829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386055, 34.015938, 40.940804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137840, 34.314213, 41.037876>,  <34.988911, 34.493176, 41.096119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137840, 34.314213, 41.037876>,  <35.386055, 34.015938, 40.940804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137840, 34.314213, 41.037876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483766, -0.120460, -0.866868,
		-0.617177, -0.655320, 0.435486,
		-0.620534, 0.745684, 0.242677,
		34.951679, 34.537918, 41.110680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694187, 33.809734, 40.869297>,  <35.386055, 34.015938, 40.940804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694187, 33.809734, 40.869297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677975, 34.208027, 40.836136>,  <34.668247, 34.447002, 40.816238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677975, 34.208027, 40.836136>,  <34.694187, 33.809734, 40.869297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677975, 34.208027, 40.836136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552552, -0.091464, -0.828445,
		-0.832493, 0.012234, 0.553901,
		-0.040527, 0.995733, -0.082903,
		34.665817, 34.506748, 40.811264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924007, 33.906055, 40.818676>,  <34.694187, 33.809734, 40.869297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924007, 33.906055, 40.818676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113487, 34.237331, 40.698872>,  <34.227177, 34.436096, 40.626987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113487, 34.237331, 40.698872>,  <33.924007, 33.906055, 40.818676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113487, 34.237331, 40.698872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549468, 0.012151, -0.835427,
		-0.688253, 0.560315, 0.460820,
		0.473701, 0.828191, -0.299512,
		34.255596, 34.485790, 40.609016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401085, 34.331024, 40.455715>,  <33.924007, 33.906055, 40.818676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401085, 34.331024, 40.455715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740925, 34.504101, 40.335075>,  <33.944828, 34.607948, 40.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740925, 34.504101, 40.335075>,  <33.401085, 34.331024, 40.455715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740925, 34.504101, 40.335075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317916, -0.036148, -0.947429,
		-0.420851, 0.900815, 0.106850,
		0.849596, 0.432696, -0.301596,
		33.995804, 34.633911, 40.244595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124439, 34.742657, 40.037422>,  <33.401085, 34.331024, 40.455715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124439, 34.742657, 40.037422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508575, 34.743599, 39.925900>,  <33.739059, 34.744164, 39.858986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508575, 34.743599, 39.925900>,  <33.124439, 34.742657, 40.037422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508575, 34.743599, 39.925900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278634, -0.028163, -0.959984,
		-0.010110, 0.999600, -0.026391,
		0.960344, 0.002352, -0.278807,
		33.796680, 34.744305, 39.842258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229801, 35.224789, 39.540585>,  <33.124439, 34.742657, 40.037422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229801, 35.224789, 39.540585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513569, 34.947056, 39.492226>,  <33.683830, 34.780415, 39.463211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513569, 34.947056, 39.492226>,  <33.229801, 35.224789, 39.540585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513569, 34.947056, 39.492226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218642, -0.053741, -0.974324,
		0.670010, 0.717642, -0.189935,
		0.709424, -0.694335, -0.120900,
		33.726395, 34.738754, 39.455956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649311, 35.482174, 38.925030>,  <33.229801, 35.224789, 39.540585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649311, 35.482174, 38.925030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713825, 35.091919, 38.984531>,  <33.752533, 34.857765, 39.020233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713825, 35.091919, 38.984531>,  <33.649311, 35.482174, 38.925030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713825, 35.091919, 38.984531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248298, -0.185992, -0.950660,
		0.955163, 0.116391, -0.272245,
		0.161284, -0.975633, 0.148753,
		33.762211, 34.799229, 39.029156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945084, 35.259930, 38.259155>,  <33.649311, 35.482174, 38.925030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945084, 35.259930, 38.259155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835590, 34.919357, 38.438099>,  <33.769894, 34.715012, 38.545467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835590, 34.919357, 38.438099>,  <33.945084, 35.259930, 38.259155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835590, 34.919357, 38.438099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255586, -0.384012, -0.887249,
		0.927225, -0.357208, -0.112498,
		-0.273732, -0.851433, 0.447363,
		33.753471, 34.663929, 38.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286781, 34.716888, 37.899189>,  <33.945084, 35.259930, 38.259155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286781, 34.716888, 37.899189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962040, 34.586090, 38.092670>,  <33.767197, 34.507610, 38.208759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962040, 34.586090, 38.092670>,  <34.286781, 34.716888, 37.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962040, 34.586090, 38.092670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338370, -0.411636, -0.846204,
		0.475818, -0.850663, 0.223540,
		-0.811852, -0.327000, 0.483703,
		33.718483, 34.487991, 38.237782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099403, 34.161453, 37.484501>,  <34.286781, 34.716888, 37.899189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099403, 34.161453, 37.484501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759186, 34.213531, 37.688313>,  <33.555054, 34.244778, 37.810600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759186, 34.213531, 37.688313>,  <34.099403, 34.161453, 37.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759186, 34.213531, 37.688313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495579, -0.522641, -0.693720,
		0.175977, -0.842553, 0.509055,
		-0.850549, 0.130198, 0.509524,
		33.504021, 34.252590, 37.841171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765686, 33.444424, 37.529140>,  <34.099403, 34.161453, 37.484501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765686, 33.444424, 37.529140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464825, 33.702644, 37.582108>,  <33.284309, 33.857578, 37.613888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464825, 33.702644, 37.582108>,  <33.765686, 33.444424, 37.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464825, 33.702644, 37.582108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388283, -0.271783, -0.880551,
		-0.532453, -0.713720, 0.455079,
		-0.752150, 0.645552, 0.132414,
		33.239182, 33.896309, 37.621830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129002, 33.192066, 37.433163>,  <33.765686, 33.444424, 37.529140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129002, 33.192066, 37.433163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104301, 33.582836, 37.351379>,  <33.089481, 33.817299, 37.302311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104301, 33.582836, 37.351379>,  <33.129002, 33.192066, 37.433163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104301, 33.582836, 37.351379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246233, -0.213426, -0.945420,
		-0.967242, -0.008038, 0.253731,
		-0.061752, 0.976926, -0.204455,
		33.085777, 33.875916, 37.290043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563419, 32.623901, 37.195126>,  <33.129002, 33.192066, 37.433163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563419, 32.623901, 37.195126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829632, 32.688183, 36.903580>,  <33.989357, 32.726749, 36.728653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829632, 32.688183, 36.903580>,  <33.563419, 32.623901, 37.195126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829632, 32.688183, 36.903580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519362, 0.601631, 0.606879,
		0.536034, -0.782442, 0.316942,
		0.665530, 0.160700, -0.728866,
		34.029289, 32.736393, 36.684921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600708, 32.885323, 36.481594>,  <33.563419, 32.623901, 37.195126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600708, 32.885323, 36.481594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572964, 33.119610, 36.158577>,  <33.556316, 33.260181, 35.964767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572964, 33.119610, 36.158577>,  <33.600708, 32.885323, 36.481594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572964, 33.119610, 36.158577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638861, 0.595642, 0.486896,
		0.766189, 0.549681, 0.332875,
		-0.069363, 0.585715, -0.807544,
		33.552155, 33.295326, 35.916313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922367, 32.264133, 36.700588>,  <33.600708, 32.885323, 36.481594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922367, 32.264133, 36.700588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300056, 32.301037, 36.827034>,  <34.526669, 32.323177, 36.902901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300056, 32.301037, 36.827034>,  <33.922367, 32.264133, 36.700588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300056, 32.301037, 36.827034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287226, -0.238780, 0.927623,
		0.161062, -0.966681, -0.198963,
		0.944225, 0.092258, 0.316115,
		34.583324, 32.328712, 36.921867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024082, 31.790081, 37.267826>,  <33.922367, 32.264133, 36.700588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024082, 31.790081, 37.267826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347641, 32.019283, 37.320507>,  <34.541779, 32.156803, 37.352116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347641, 32.019283, 37.320507>,  <34.024082, 31.790081, 37.267826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347641, 32.019283, 37.320507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072457, -0.319457, 0.944826,
		0.583463, -0.754728, -0.299928,
		0.808901, 0.573004, 0.131706,
		34.590313, 32.191185, 37.360020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646324, 31.323959, 37.475094>,  <34.024082, 31.790081, 37.267826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646324, 31.323959, 37.475094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731747, 31.688641, 37.615490>,  <34.783001, 31.907450, 37.699726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731747, 31.688641, 37.615490>,  <34.646324, 31.323959, 37.475094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731747, 31.688641, 37.615490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276086, -0.400954, 0.873506,
		0.937108, -0.089639, -0.337334,
		0.213555, 0.911702, 0.350989,
		34.795815, 31.962151, 37.720787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292500, 31.242155, 37.787579>,  <34.646324, 31.323959, 37.475094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292500, 31.242155, 37.787579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166553, 31.590994, 37.937408>,  <35.090988, 31.800297, 38.027306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166553, 31.590994, 37.937408>,  <35.292500, 31.242155, 37.787579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166553, 31.590994, 37.937408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158497, -0.340799, 0.926679,
		0.935810, 0.351147, -0.030919,
		-0.314863, 0.872096, 0.374579,
		35.072094, 31.852623, 38.049782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745625, 31.419313, 38.326122>,  <35.292500, 31.242155, 37.787579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745625, 31.419313, 38.326122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408520, 31.616667, 38.412220>,  <35.206257, 31.735079, 38.463879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408520, 31.616667, 38.412220>,  <35.745625, 31.419313, 38.326122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408520, 31.616667, 38.412220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155860, -0.159072, 0.974887,
		0.515232, 0.855143, 0.057160,
		-0.842760, 0.493383, 0.215241,
		35.155693, 31.764681, 38.476791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014774, 31.970695, 38.675373>,  <35.745625, 31.419313, 38.326122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014774, 31.970695, 38.675373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641392, 31.872705, 38.780178>,  <35.417362, 31.813911, 38.843063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641392, 31.872705, 38.780178>,  <36.014774, 31.970695, 38.675373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641392, 31.872705, 38.780178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338828, -0.362444, 0.868234,
		-0.117727, 0.899235, 0.421328,
		-0.933454, -0.244973, 0.262016,
		35.361355, 31.799213, 38.858784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987381, 32.230225, 39.343342>,  <36.014774, 31.970695, 38.675373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987381, 32.230225, 39.343342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700352, 31.952494, 39.321434>,  <35.528133, 31.785854, 39.308289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700352, 31.952494, 39.321434>,  <35.987381, 32.230225, 39.343342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700352, 31.952494, 39.321434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318617, -0.397166, 0.860664,
		-0.619336, 0.600137, 0.506220,
		-0.717569, -0.694331, -0.054765,
		35.485081, 31.744194, 39.305004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730747, 32.256336, 39.999077>,  <35.987381, 32.230225, 39.343342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730747, 32.256336, 39.999077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603798, 31.910181, 39.843964>,  <35.527626, 31.702488, 39.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603798, 31.910181, 39.843964>,  <35.730747, 32.256336, 39.999077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603798, 31.910181, 39.843964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124610, -0.443436, 0.887602,
		-0.940077, 0.233382, 0.248572,
		-0.317376, -0.865389, -0.387783,
		35.508587, 31.650564, 39.727631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353199, 31.997355, 40.529682>,  <35.730747, 32.256336, 39.999077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353199, 31.997355, 40.529682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417706, 31.685692, 40.287388>,  <35.456409, 31.498695, 40.142014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417706, 31.685692, 40.287388>,  <35.353199, 31.997355, 40.529682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417706, 31.685692, 40.287388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126748, -0.592333, 0.795661,
		-0.978739, -0.205086, 0.003235,
		0.161263, -0.779154, -0.605733,
		35.466084, 31.451946, 40.105667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902309, 31.548336, 40.750343>,  <35.353199, 31.997355, 40.529682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902309, 31.548336, 40.750343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180397, 31.336357, 40.556095>,  <35.347248, 31.209169, 40.439545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180397, 31.336357, 40.556095>,  <34.902309, 31.548336, 40.750343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180397, 31.336357, 40.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116688, -0.583433, 0.803735,
		-0.709268, -0.615434, -0.343772,
		0.695214, -0.529950, -0.485624,
		35.388962, 31.177372, 40.410408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677834, 30.869621, 40.843742>,  <34.902309, 31.548336, 40.750343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677834, 30.869621, 40.843742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068813, 30.857037, 40.760227>,  <35.303402, 30.849485, 40.710117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068813, 30.857037, 40.760227>,  <34.677834, 30.869621, 40.843742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068813, 30.857037, 40.760227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151679, -0.583303, 0.797967,
		-0.146893, -0.811645, -0.565380,
		0.977454, -0.031460, -0.208792,
		35.362049, 30.847599, 40.697590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867756, 30.174868, 41.097347>,  <34.677834, 30.869621, 40.843742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867756, 30.174868, 41.097347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208843, 30.369816, 41.022156>,  <35.413498, 30.486784, 40.977039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208843, 30.369816, 41.022156>,  <34.867756, 30.174868, 41.097347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208843, 30.369816, 41.022156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478658, -0.584933, 0.654783,
		0.209167, -0.648325, -0.732069,
		0.852723, 0.487369, -0.187977,
		35.464661, 30.516027, 40.965763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426456, 29.656404, 41.055340>,  <34.867756, 30.174868, 41.097347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426456, 29.656404, 41.055340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604858, 30.004513, 41.138966>,  <35.711899, 30.213377, 41.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604858, 30.004513, 41.138966>,  <35.426456, 29.656404, 41.055340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604858, 30.004513, 41.138966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342046, -0.381586, 0.858718,
		0.827093, -0.311484, -0.467862,
		0.446006, 0.870270, 0.209066,
		35.738659, 30.265594, 41.201687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077206, 29.505684, 41.286209>,  <35.426456, 29.656404, 41.055340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077206, 29.505684, 41.286209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025455, 29.878437, 41.421768>,  <35.994404, 30.102089, 41.503105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025455, 29.878437, 41.421768>,  <36.077206, 29.505684, 41.286209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025455, 29.878437, 41.421768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391791, -0.265921, 0.880787,
		0.910912, 0.246732, -0.330699,
		-0.129379, 0.931885, 0.338898,
		35.986641, 30.158003, 41.523438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693657, 29.586790, 41.658207>,  <36.077206, 29.505684, 41.286209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693657, 29.586790, 41.658207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491405, 29.904858, 41.792099>,  <36.370052, 30.095697, 41.872433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491405, 29.904858, 41.792099>,  <36.693657, 29.586790, 41.658207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491405, 29.904858, 41.792099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427153, -0.106355, 0.897903,
		0.749584, 0.596989, -0.285882,
		-0.505633, 0.795169, 0.334728,
		36.339714, 30.143408, 41.892517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156292, 29.957016, 41.996307>,  <36.693657, 29.586790, 41.658207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156292, 29.957016, 41.996307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801235, 30.063332, 42.146748>,  <36.588200, 30.127121, 42.237011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801235, 30.063332, 42.146748>,  <37.156292, 29.957016, 41.996307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801235, 30.063332, 42.146748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354497, -0.126986, 0.926394,
		0.293983, 0.955631, 0.018497,
		-0.887640, 0.265787, 0.376100,
		36.534943, 30.143068, 42.259579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152363, 30.604322, 42.377243>,  <37.156292, 29.957016, 41.996307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152363, 30.604322, 42.377243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843781, 30.394495, 42.521290>,  <36.658630, 30.268599, 42.607719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843781, 30.394495, 42.521290>,  <37.152363, 30.604322, 42.377243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843781, 30.394495, 42.521290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304532, 0.192537, 0.932839,
		-0.558675, 0.829311, 0.011215,
		-0.771455, -0.524569, 0.360118,
		36.612343, 30.237123, 42.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855228, 30.984652, 42.769859>,  <37.152363, 30.604322, 42.377243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855228, 30.984652, 42.769859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745861, 30.622524, 42.899868>,  <36.680241, 30.405249, 42.977875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745861, 30.622524, 42.899868>,  <36.855228, 30.984652, 42.769859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745861, 30.622524, 42.899868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389093, 0.204928, 0.898115,
		-0.879686, 0.372028, 0.296221,
		-0.273420, -0.905317, 0.325026,
		36.663834, 30.350929, 42.997375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502163, 31.138952, 43.467175>,  <36.855228, 30.984652, 42.769859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502163, 31.138952, 43.467175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579769, 30.747023, 43.486351>,  <36.626331, 30.511864, 43.497856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579769, 30.747023, 43.486351>,  <36.502163, 31.138952, 43.467175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579769, 30.747023, 43.486351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347144, 0.114285, 0.930822,
		-0.917523, -0.163951, 0.362314,
		0.194016, -0.979826, 0.047945,
		36.637974, 30.453075, 43.500736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211315, 30.952581, 44.003689>,  <36.502163, 31.138952, 43.467175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211315, 30.952581, 44.003689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487343, 30.671692, 43.933620>,  <36.652958, 30.503159, 43.891579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487343, 30.671692, 43.933620>,  <36.211315, 30.952581, 44.003689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487343, 30.671692, 43.933620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250298, 0.004457, 0.968158,
		-0.679085, -0.711940, 0.178841,
		0.690068, -0.702226, -0.175170,
		36.694363, 30.461023, 43.881069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184586, 30.386684, 44.558933>,  <36.211315, 30.952581, 44.003689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184586, 30.386684, 44.558933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556133, 30.330759, 44.421726>,  <36.779060, 30.297205, 44.339401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556133, 30.330759, 44.421726>,  <36.184586, 30.386684, 44.558933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556133, 30.330759, 44.421726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309742, -0.214696, 0.926264,
		-0.203142, -0.966623, -0.156120,
		0.928867, -0.139806, -0.343017,
		36.834793, 30.288815, 44.318821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486214, 29.777382, 44.887341>,  <36.184586, 30.386684, 44.558933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486214, 29.777382, 44.887341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811665, 29.950289, 44.731823>,  <37.006935, 30.054033, 44.638512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811665, 29.950289, 44.731823>,  <36.486214, 29.777382, 44.887341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811665, 29.950289, 44.731823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518055, -0.235522, 0.822282,
		0.263877, -0.870445, -0.415565,
		0.813626, 0.432267, -0.388789,
		37.055752, 30.079969, 44.615185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955875, 29.311697, 45.066181>,  <36.486214, 29.777382, 44.887341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955875, 29.311697, 45.066181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160587, 29.652563, 45.022552>,  <37.283413, 29.857082, 44.996376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160587, 29.652563, 45.022552>,  <36.955875, 29.311697, 45.066181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160587, 29.652563, 45.022552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506231, -0.196551, 0.839701,
		0.694126, -0.484956, -0.531983,
		0.511780, 0.852165, -0.109069,
		37.314121, 29.908213, 44.989830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679287, 29.105211, 44.978100>,  <36.955875, 29.311697, 45.066181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679287, 29.105211, 44.978100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681339, 29.488327, 45.093071>,  <37.682571, 29.718197, 45.162052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681339, 29.488327, 45.093071>,  <37.679287, 29.105211, 44.978100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681339, 29.488327, 45.093071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558992, -0.241073, 0.793355,
		0.829157, 0.156601, -0.536633,
		0.005127, 0.957789, 0.287426,
		37.682877, 29.775663, 45.179298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444149, 29.231474, 45.246750>,  <37.679287, 29.105211, 44.978100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444149, 29.231474, 45.246750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188370, 29.497194, 45.401573>,  <38.034901, 29.656626, 45.494465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188370, 29.497194, 45.401573>,  <38.444149, 29.231474, 45.246750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188370, 29.497194, 45.401573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491546, -0.033861, 0.870193,
		0.591174, 0.746699, -0.304882,
		-0.639449, 0.664299, 0.387055,
		37.996536, 29.696484, 45.517689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885323, 29.810286, 45.720005>,  <38.444149, 29.231474, 45.246750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885323, 29.810286, 45.720005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508781, 29.815660, 45.854862>,  <38.282856, 29.818886, 45.935776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508781, 29.815660, 45.854862>,  <38.885323, 29.810286, 45.720005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508781, 29.815660, 45.854862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337341, 0.057730, 0.939611,
		-0.006837, 0.998242, -0.058878,
		-0.941358, 0.013438, 0.337143,
		38.226376, 29.819693, 45.956005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498646, 30.211405, 45.813110>,  <38.885323, 29.810286, 45.720005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498646, 30.211405, 45.813110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747692, 29.928663, 45.678825>,  <39.897121, 29.759018, 45.598255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747692, 29.928663, 45.678825>,  <39.498646, 30.211405, 45.813110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747692, 29.928663, 45.678825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162423, 0.302938, -0.939067,
		0.765484, 0.639208, 0.073805,
		0.622618, -0.706853, -0.335716,
		39.934479, 29.716608, 45.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054798, 30.447212, 45.415993>,  <39.498646, 30.211405, 45.813110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054798, 30.447212, 45.415993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011993, 30.065376, 45.304775>,  <39.986309, 29.836275, 45.238045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011993, 30.065376, 45.304775>,  <40.054798, 30.447212, 45.415993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011993, 30.065376, 45.304775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108365, 0.289186, -0.951119,
		0.988334, -0.071652, -0.134391,
		-0.107014, -0.954588, -0.278048,
		39.979889, 29.778999, 45.221359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506565, 30.375608, 44.750565>,  <40.054798, 30.447212, 45.415993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506565, 30.375608, 44.750565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254177, 30.066101, 44.773033>,  <40.102745, 29.880396, 44.786514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254177, 30.066101, 44.773033>,  <40.506565, 30.375608, 44.750565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254177, 30.066101, 44.773033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006338, -0.077541, -0.996969,
		0.775780, -0.628703, 0.053831,
		-0.630972, -0.773769, 0.056170,
		40.064884, 29.833971, 44.789883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792442, 29.928967, 44.337948>,  <40.506565, 30.375608, 44.750565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792442, 29.928967, 44.337948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402679, 29.845356, 44.371017>,  <40.168819, 29.795189, 44.390858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402679, 29.845356, 44.371017>,  <40.792442, 29.928967, 44.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402679, 29.845356, 44.371017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077259, -0.033932, -0.996433,
		0.211087, -0.977321, 0.016915,
		-0.974409, -0.209027, 0.082669,
		40.110355, 29.782648, 44.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672333, 29.511675, 43.760456>,  <40.792442, 29.928967, 44.337948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672333, 29.511675, 43.760456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302505, 29.594116, 43.888638>,  <40.080608, 29.643581, 43.965546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302505, 29.594116, 43.888638>,  <40.672333, 29.511675, 43.760456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302505, 29.594116, 43.888638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296177, 0.140329, -0.944768,
		-0.239692, -0.968415, -0.068700,
		-0.924568, 0.206106, 0.320458,
		40.025135, 29.655949, 43.984776>
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
