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
	<24.697203, 35.011127, 35.002220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328003, 35.079754, 34.864445>,  <24.106483, 35.120930, 34.781780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328003, 35.079754, 34.864445>,  <24.697203, 35.011127, 35.002220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.328003, 35.079754, 34.864445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306960, 0.211520, 0.927920,
		0.232051, 0.962198, -0.142570,
		-0.922999, 0.171562, -0.344440,
		24.051104, 35.131222, 34.761112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393082, 35.661377, 35.273041>,  <24.697203, 35.011127, 35.002220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393082, 35.661377, 35.273041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.095448, 35.409946, 35.182503>,  <23.916866, 35.259090, 35.128181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.095448, 35.409946, 35.182503>,  <24.393082, 35.661377, 35.273041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.095448, 35.409946, 35.182503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385276, 0.126947, 0.914028,
		-0.545801, 0.767319, -0.336634,
		-0.744086, -0.628575, -0.226342,
		23.872221, 35.221375, 35.114601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667326, 36.290318, 35.579414>,  <24.393082, 35.661377, 35.273041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667326, 36.290318, 35.579414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384666, 36.543186, 35.706539>,  <24.215071, 36.694908, 35.782814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384666, 36.543186, 35.706539>,  <24.667326, 36.290318, 35.579414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384666, 36.543186, 35.706539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216189, -0.234781, 0.947703,
		0.673728, 0.738401, 0.029239,
		-0.706649, 0.632173, 0.317813,
		24.172672, 36.732838, 35.801884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895203, 36.833591, 36.139622>,  <24.667326, 36.290318, 35.579414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895203, 36.833591, 36.139622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498095, 36.811028, 36.182003>,  <24.259830, 36.797489, 36.207432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.498095, 36.811028, 36.182003>,  <24.895203, 36.833591, 36.139622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498095, 36.811028, 36.182003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112571, -0.131201, 0.984944,
		-0.041664, 0.989749, 0.136603,
		-0.992770, -0.056414, 0.105951,
		24.200264, 36.794102, 36.213787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549639, 37.017159, 35.905804>,  <24.895203, 36.833591, 36.139622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549639, 37.017159, 35.905804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759571, 37.223301, 35.634815>,  <25.885530, 37.346985, 35.472221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759571, 37.223301, 35.634815>,  <25.549639, 37.017159, 35.905804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759571, 37.223301, 35.634815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831546, -0.140345, 0.537434,
		0.181888, -0.845409, -0.502196,
		0.524832, 0.515352, -0.677469,
		25.917021, 37.377907, 35.431576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207682, 36.630238, 35.590527>,  <25.549639, 37.017159, 35.905804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207682, 36.630238, 35.590527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191347, 37.022194, 35.668644>,  <26.181547, 37.257370, 35.715515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191347, 37.022194, 35.668644>,  <26.207682, 36.630238, 35.590527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191347, 37.022194, 35.668644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704432, -0.110383, 0.701135,
		0.708596, 0.166204, -0.685761,
		-0.040835, 0.979894, 0.195297,
		26.179096, 37.316162, 35.727234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689457, 36.738678, 34.938789>,  <26.207682, 36.630238, 35.590527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689457, 36.738678, 34.938789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071068, 36.793465, 34.832150>,  <27.300034, 36.826336, 34.768166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071068, 36.793465, 34.832150>,  <26.689457, 36.738678, 34.938789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071068, 36.793465, 34.832150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117757, -0.646680, -0.753617,
		-0.275623, 0.750364, -0.600821,
		0.954026, 0.136964, -0.266601,
		27.357275, 36.834553, 34.752171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755539, 36.852734, 34.220795>,  <26.689457, 36.738678, 34.938789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755539, 36.852734, 34.220795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075001, 36.657562, 34.361691>,  <27.266678, 36.540459, 34.446228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075001, 36.657562, 34.361691>,  <26.755539, 36.852734, 34.220795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075001, 36.657562, 34.361691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131130, -0.712356, -0.689459,
		0.587329, 0.504451, -0.632909,
		0.798655, -0.487932, 0.352239,
		27.314598, 36.511181, 34.467361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102495, 36.757786, 33.593151>,  <26.755539, 36.852734, 34.220795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102495, 36.757786, 33.593151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188217, 36.473881, 33.861572>,  <27.239651, 36.303539, 34.022625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188217, 36.473881, 33.861572>,  <27.102495, 36.757786, 33.593151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188217, 36.473881, 33.861572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313551, -0.700646, -0.640922,
		0.925073, -0.073059, -0.372696,
		0.214303, -0.709759, 0.671056,
		27.252508, 36.260952, 34.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481920, 36.265598, 33.314011>,  <27.102495, 36.757786, 33.593151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481920, 36.265598, 33.314011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344534, 36.054459, 33.624729>,  <27.262102, 35.927776, 33.811161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344534, 36.054459, 33.624729>,  <27.481920, 36.265598, 33.314011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344534, 36.054459, 33.624729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387909, -0.673528, -0.629195,
		0.855311, -0.517432, 0.026577,
		-0.343466, -0.527849, 0.776793,
		27.241493, 35.896103, 33.857765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788877, 35.595467, 33.201149>,  <27.481920, 36.265598, 33.314011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788877, 35.595467, 33.201149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447596, 35.586189, 33.409573>,  <27.242826, 35.580624, 33.534626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447596, 35.586189, 33.409573>,  <27.788877, 35.595467, 33.201149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447596, 35.586189, 33.409573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327915, -0.753032, -0.570450,
		0.405606, -0.657575, 0.634885,
		-0.853203, -0.023190, 0.521063,
		27.191635, 35.579231, 33.565891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653715, 34.905972, 33.405804>,  <27.788877, 35.595467, 33.201149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653715, 34.905972, 33.405804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309654, 35.097961, 33.336796>,  <27.103218, 35.213154, 33.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309654, 35.097961, 33.336796>,  <27.653715, 34.905972, 33.405804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309654, 35.097961, 33.336796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268974, -0.714258, -0.646134,
		-0.433349, -0.509371, 0.743471,
		-0.860152, 0.479976, -0.172515,
		27.051609, 35.241955, 33.285042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082491, 34.390205, 33.446384>,  <27.653715, 34.905972, 33.405804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082491, 34.390205, 33.446384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004301, 34.708553, 33.217167>,  <26.957388, 34.899563, 33.079636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004301, 34.708553, 33.217167>,  <27.082491, 34.390205, 33.446384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004301, 34.708553, 33.217167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487616, -0.585841, -0.647318,
		-0.850894, 0.152889, 0.502598,
		-0.195475, 0.795874, -0.573040,
		26.945658, 34.947315, 33.045254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297518, 34.553528, 33.353783>,  <27.082491, 34.390205, 33.446384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297518, 34.553528, 33.353783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515244, 34.671585, 33.039684>,  <26.645880, 34.742420, 32.851227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515244, 34.671585, 33.039684>,  <26.297518, 34.553528, 33.353783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515244, 34.671585, 33.039684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666547, -0.416190, -0.618466,
		-0.509347, 0.860044, -0.029813,
		0.544316, 0.295142, -0.785246,
		26.678539, 34.760128, 32.804111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912571, 35.127464, 32.961491>,  <26.297518, 34.553528, 33.353783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912571, 35.127464, 32.961491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161625, 34.961739, 32.695957>,  <26.311058, 34.862305, 32.536636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161625, 34.961739, 32.695957>,  <25.912571, 35.127464, 32.961491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161625, 34.961739, 32.695957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759576, -0.116112, -0.639971,
		0.188069, 0.902697, -0.386997,
		0.622635, -0.414312, -0.663830,
		26.348415, 34.837444, 32.496807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159061, 35.626362, 33.350010>,  <25.912571, 35.127464, 32.961491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159061, 35.626362, 33.350010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447632, 35.370857, 33.456993>,  <26.620773, 35.217556, 33.521183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447632, 35.370857, 33.456993>,  <26.159061, 35.626362, 33.350010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447632, 35.370857, 33.456993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266661, 0.612688, 0.743980,
		-0.639093, -0.465404, 0.612340,
		0.721424, -0.638759, 0.267459,
		26.664059, 35.179230, 33.537231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040833, 35.457043, 34.159771>,  <26.159061, 35.626362, 33.350010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040833, 35.457043, 34.159771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412174, 35.450619, 34.011230>,  <26.634979, 35.446762, 33.922108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412174, 35.450619, 34.011230>,  <26.040833, 35.457043, 34.159771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412174, 35.450619, 34.011230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305062, 0.603706, 0.736530,
		0.212353, -0.797045, 0.565354,
		0.928356, -0.016063, -0.371347,
		26.690681, 35.445801, 33.899826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519926, 35.258270, 34.690437>,  <26.040833, 35.457043, 34.159771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519926, 35.258270, 34.690437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748140, 35.449181, 34.423096>,  <26.885069, 35.563725, 34.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748140, 35.449181, 34.423096>,  <26.519926, 35.258270, 34.690437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748140, 35.449181, 34.423096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425035, 0.524752, 0.737551,
		0.702735, -0.704872, 0.096530,
		0.570534, 0.477274, -0.668357,
		26.919300, 35.592361, 34.222588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244650, 35.234035, 34.952847>,  <26.519926, 35.258270, 34.690437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244650, 35.234035, 34.952847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211803, 35.562664, 34.727184>,  <27.192097, 35.759842, 34.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211803, 35.562664, 34.727184>,  <27.244650, 35.234035, 34.952847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211803, 35.562664, 34.727184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529254, 0.515600, 0.673830,
		0.844481, -0.243250, -0.477160,
		-0.082115, 0.821576, -0.564155,
		27.187168, 35.809135, 34.557938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929379, 35.515240, 34.782970>,  <27.244650, 35.234035, 34.952847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929379, 35.515240, 34.782970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647087, 35.798050, 34.801163>,  <27.477713, 35.967735, 34.812077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647087, 35.798050, 34.801163>,  <27.929379, 35.515240, 34.782970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647087, 35.798050, 34.801163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571377, 0.530025, 0.626579,
		0.418899, 0.468181, -0.778029,
		-0.705728, 0.707022, 0.045481,
		27.435369, 36.010155, 34.814808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264528, 36.121605, 34.720608>,  <27.929379, 35.515240, 34.782970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264528, 36.121605, 34.720608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914995, 36.197823, 34.899544>,  <27.705275, 36.243553, 35.006905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914995, 36.197823, 34.899544>,  <28.264528, 36.121605, 34.720608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914995, 36.197823, 34.899544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482721, 0.450237, 0.751177,
		-0.058275, 0.872342, -0.485411,
		-0.873833, 0.190543, 0.447335,
		27.652845, 36.254986, 35.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250820, 36.818218, 34.874115>,  <28.264528, 36.121605, 34.720608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250820, 36.818218, 34.874115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092279, 36.597477, 35.167606>,  <27.997154, 36.465031, 35.343700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092279, 36.597477, 35.167606>,  <28.250820, 36.818218, 34.874115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092279, 36.597477, 35.167606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792352, 0.198089, 0.577009,
		-0.463771, 0.810071, 0.358751,
		-0.396353, -0.551857, 0.733729,
		27.973373, 36.431919, 35.387726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040056, 37.279739, 35.517384>,  <28.250820, 36.818218, 34.874115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040056, 37.279739, 35.517384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122501, 36.898216, 35.604805>,  <28.171968, 36.669300, 35.657257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122501, 36.898216, 35.604805>,  <28.040056, 37.279739, 35.517384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122501, 36.898216, 35.604805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698716, 0.299822, 0.649540,
		-0.685064, 0.018829, 0.728239,
		0.206112, -0.953809, 0.218553,
		28.184336, 36.612072, 35.670372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207821, 37.147675, 36.264969>,  <28.040056, 37.279739, 35.517384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207821, 37.147675, 36.264969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352354, 36.821651, 36.083809>,  <28.439074, 36.626038, 35.975113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352354, 36.821651, 36.083809>,  <28.207821, 37.147675, 36.264969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352354, 36.821651, 36.083809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749281, -0.035300, 0.661311,
		-0.554993, -0.578306, 0.597951,
		0.361333, -0.815056, -0.452904,
		28.460754, 36.577133, 35.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669388, 36.806595, 36.739292>,  <28.207821, 37.147675, 36.264969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669388, 36.806595, 36.739292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732912, 36.620251, 36.391098>,  <28.771027, 36.508446, 36.182182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732912, 36.620251, 36.391098>,  <28.669388, 36.806595, 36.739292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732912, 36.620251, 36.391098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852897, -0.379396, 0.358644,
		-0.497338, -0.799395, 0.337078,
		0.158813, -0.465860, -0.870490,
		28.780556, 36.480492, 36.129951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884413, 37.412956, 36.433712>,  <28.669388, 36.806595, 36.739292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884413, 37.412956, 36.433712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872549, 37.805614, 36.509064>,  <28.865431, 38.041210, 36.554276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872549, 37.805614, 36.509064>,  <28.884413, 37.412956, 36.433712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872549, 37.805614, 36.509064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736759, -0.105893, 0.667812,
		0.675505, 0.158596, -0.720097,
		-0.029659, 0.981649, 0.188378,
		28.863651, 38.100109, 36.565578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553904, 37.788261, 36.458389>,  <28.884413, 37.412956, 36.433712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553904, 37.788261, 36.458389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319456, 37.994320, 36.708538>,  <29.178787, 38.117954, 36.858627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319456, 37.994320, 36.708538>,  <29.553904, 37.788261, 36.458389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319456, 37.994320, 36.708538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755500, 0.068636, 0.651543,
		0.292717, 0.854349, -0.429422,
		-0.586120, 0.515146, 0.625370,
		29.143620, 38.148865, 36.896149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720976, 38.497936, 36.650845>,  <29.553904, 37.788261, 36.458389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720976, 38.497936, 36.650845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530857, 38.264103, 36.913860>,  <29.416786, 38.123802, 37.071671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530857, 38.264103, 36.913860>,  <29.720976, 38.497936, 36.650845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530857, 38.264103, 36.913860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865273, -0.175211, 0.469684,
		-0.159362, 0.792188, 0.589102,
		-0.475295, -0.584584, 0.657537,
		29.388269, 38.088726, 37.111122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315109, 38.596535, 37.070274>,  <29.720976, 38.497936, 36.650845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315109, 38.596535, 37.070274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513094, 38.252327, 37.022064>,  <30.631886, 38.045803, 36.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513094, 38.252327, 37.022064>,  <30.315109, 38.596535, 37.070274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513094, 38.252327, 37.022064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534776, 0.192358, 0.822808,
		-0.684856, -0.471711, 0.555393,
		0.494962, -0.860516, -0.120523,
		30.661583, 37.994171, 36.985909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299129, 38.211205, 37.666325>,  <30.315109, 38.596535, 37.070274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299129, 38.211205, 37.666325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635439, 38.174805, 37.452850>,  <30.837225, 38.152966, 37.324764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635439, 38.174805, 37.452850>,  <30.299129, 38.211205, 37.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635439, 38.174805, 37.452850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538996, 0.233293, 0.809356,
		0.050851, -0.968139, 0.245196,
		0.840772, -0.091004, -0.533686,
		30.887671, 38.147503, 37.292744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742760, 37.780594, 38.039612>,  <30.299129, 38.211205, 37.666325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742760, 37.780594, 38.039612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967926, 38.031292, 37.824089>,  <31.103025, 38.181709, 37.694775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967926, 38.031292, 37.824089>,  <30.742760, 37.780594, 38.039612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967926, 38.031292, 37.824089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347584, 0.411948, 0.842309,
		0.749874, -0.661432, 0.014046,
		0.562916, 0.626744, -0.538812,
		31.136801, 38.219315, 37.662445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466114, 37.792622, 38.311287>,  <30.742760, 37.780594, 38.039612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466114, 37.792622, 38.311287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376696, 38.133667, 38.122364>,  <31.323046, 38.338295, 38.009010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376696, 38.133667, 38.122364>,  <31.466114, 37.792622, 38.311287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376696, 38.133667, 38.122364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277812, 0.520207, 0.807592,
		0.934264, 0.049319, -0.353156,
		-0.223544, 0.852615, -0.472309,
		31.309633, 38.389450, 37.980671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023407, 38.271084, 38.549236>,  <31.466114, 37.792622, 38.311287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023407, 38.271084, 38.549236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786509, 38.538227, 38.368919>,  <31.644369, 38.698513, 38.260731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786509, 38.538227, 38.368919>,  <32.023407, 38.271084, 38.549236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786509, 38.538227, 38.368919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301401, 0.702466, 0.644748,
		0.747264, 0.245981, -0.617325,
		-0.592245, 0.667859, -0.450788,
		31.608835, 38.738586, 38.233685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428787, 38.969753, 38.534031>,  <32.023407, 38.271084, 38.549236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428787, 38.969753, 38.534031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047722, 39.065823, 38.459469>,  <31.819082, 39.123463, 38.414734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047722, 39.065823, 38.459469>,  <32.428787, 38.969753, 38.534031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047722, 39.065823, 38.459469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082147, 0.793667, 0.602780,
		0.292711, 0.558936, -0.775829,
		-0.952666, 0.240172, -0.186401,
		31.761923, 39.137875, 38.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611656, 39.288021, 39.132694>,  <32.428787, 38.969753, 38.534031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611656, 39.288021, 39.132694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539558, 39.333176, 39.523544>,  <32.496300, 39.360268, 39.758053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539558, 39.333176, 39.523544>,  <32.611656, 39.288021, 39.132694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539558, 39.333176, 39.523544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933090, -0.294684, 0.206167,
		0.311217, 0.948903, -0.052221,
		-0.180244, 0.112890, 0.977122,
		32.485485, 39.367043, 39.816681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550648, 39.943619, 39.638428>,  <32.611656, 39.288021, 39.132694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550648, 39.943619, 39.638428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598778, 39.547241, 39.662270>,  <32.627655, 39.309414, 39.676575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598778, 39.547241, 39.662270>,  <32.550648, 39.943619, 39.638428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598778, 39.547241, 39.662270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960460, -0.131385, -0.245469,
		0.251078, -0.027714, -0.967570,
		0.120321, -0.990944, 0.059606,
		32.634872, 39.249958, 39.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851080, 40.057037, 39.420071>,  <32.550648, 39.943619, 39.638428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851080, 40.057037, 39.420071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470530, 40.075176, 39.298203>,  <31.242199, 40.086060, 39.225082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470530, 40.075176, 39.298203>,  <31.851080, 40.057037, 39.420071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470530, 40.075176, 39.298203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173657, -0.737982, -0.652094,
		-0.254412, -0.673296, 0.694224,
		-0.951377, 0.045344, -0.304674,
		31.185116, 40.088779, 39.206799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358351, 39.415005, 39.515858>,  <31.851080, 40.057037, 39.420071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358351, 39.415005, 39.515858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247181, 39.636562, 39.201923>,  <31.180479, 39.769497, 39.013565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247181, 39.636562, 39.201923>,  <31.358351, 39.415005, 39.515858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247181, 39.636562, 39.201923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066086, -0.804062, -0.590862,
		-0.958327, -0.216082, 0.186865,
		-0.277926, 0.553890, -0.784834,
		31.163803, 39.802731, 38.966473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692766, 39.191082, 39.015724>,  <31.358351, 39.415005, 39.515858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692766, 39.191082, 39.015724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996206, 39.372234, 38.828354>,  <31.178270, 39.480927, 38.715931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996206, 39.372234, 38.828354>,  <30.692766, 39.191082, 39.015724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996206, 39.372234, 38.828354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036488, -0.688281, -0.724526,
		-0.650535, 0.566717, -0.505605,
		0.758600, 0.452880, -0.468429,
		31.223785, 39.508099, 38.687824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501453, 39.285961, 38.356133>,  <30.692766, 39.191082, 39.015724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501453, 39.285961, 38.356133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900831, 39.268166, 38.369591>,  <31.140457, 39.257488, 38.377666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900831, 39.268166, 38.369591>,  <30.501453, 39.285961, 38.356133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900831, 39.268166, 38.369591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001407, -0.623073, -0.782162,
		0.055758, 0.780897, -0.622166,
		0.998443, -0.044487, 0.033642,
		31.200365, 39.254818, 38.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706873, 39.540981, 37.737930>,  <30.501453, 39.285961, 38.356133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706873, 39.540981, 37.737930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982037, 39.296104, 37.893879>,  <31.147135, 39.149178, 37.987446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982037, 39.296104, 37.893879>,  <30.706873, 39.540981, 37.737930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982037, 39.296104, 37.893879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021106, -0.553806, -0.832378,
		0.725489, 0.564373, -0.393890,
		0.687910, -0.612195, 0.389868,
		31.188410, 39.112446, 38.010838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281261, 39.504581, 37.305096>,  <30.706873, 39.540981, 37.737930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281261, 39.504581, 37.305096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271706, 39.160511, 37.508873>,  <31.265972, 38.954071, 37.631138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271706, 39.160511, 37.508873>,  <31.281261, 39.504581, 37.305096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271706, 39.160511, 37.508873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129961, -0.502592, -0.854699,
		0.991231, -0.086628, -0.099781,
		-0.023892, -0.860172, 0.509443,
		31.264538, 38.902458, 37.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793127, 39.171803, 37.028294>,  <31.281261, 39.504581, 37.305096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793127, 39.171803, 37.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519365, 38.919231, 37.174107>,  <31.355108, 38.767689, 37.261597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519365, 38.919231, 37.174107>,  <31.793127, 39.171803, 37.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519365, 38.919231, 37.174107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123272, -0.392567, -0.911425,
		0.718606, -0.668721, 0.190837,
		-0.684405, -0.631430, 0.364536,
		31.314043, 38.729801, 37.283466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036877, 38.401211, 36.912987>,  <31.793127, 39.171803, 37.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036877, 38.401211, 36.912987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645638, 38.484459, 36.913792>,  <31.410892, 38.534409, 36.914276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645638, 38.484459, 36.913792>,  <32.036877, 38.401211, 36.912987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645638, 38.484459, 36.913792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086996, -0.400013, -0.912371,
		-0.189077, -0.892567, 0.409358,
		-0.978101, 0.208121, 0.002016,
		31.352207, 38.546894, 36.914398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700123, 37.792171, 36.712799>,  <32.036877, 38.401211, 36.912987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700123, 37.792171, 36.712799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497753, 38.114452, 36.589584>,  <31.376331, 38.307819, 36.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497753, 38.114452, 36.589584>,  <31.700123, 37.792171, 36.712799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497753, 38.114452, 36.589584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057455, -0.387794, -0.919954,
		-0.860663, -0.447728, 0.242486,
		-0.505924, 0.805702, -0.308035,
		31.345976, 38.356163, 36.497173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109228, 37.546867, 36.504574>,  <31.700123, 37.792171, 36.712799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109228, 37.546867, 36.504574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245483, 37.871071, 36.313980>,  <31.327236, 38.065594, 36.199623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245483, 37.871071, 36.313980>,  <31.109228, 37.546867, 36.504574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245483, 37.871071, 36.313980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029101, -0.497457, -0.867000,
		-0.939744, 0.309199, -0.145866,
		0.340638, 0.810513, -0.476480,
		31.347675, 38.114223, 36.171036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653051, 37.940250, 35.992142>,  <31.109228, 37.546867, 36.504574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653051, 37.940250, 35.992142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044355, 37.960255, 35.911633>,  <31.279137, 37.972260, 35.863327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044355, 37.960255, 35.911633>,  <30.653051, 37.940250, 35.992142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044355, 37.960255, 35.911633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100668, -0.733974, -0.671675,
		-0.181322, 0.677333, -0.712981,
		0.978258, 0.050015, -0.201271,
		31.337833, 37.975258, 35.851250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544559, 37.518669, 35.454948>,  <30.653051, 37.940250, 35.992142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544559, 37.518669, 35.454948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509409, 37.311306, 35.114704>,  <30.488317, 37.186890, 34.910557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509409, 37.311306, 35.114704>,  <30.544559, 37.518669, 35.454948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509409, 37.311306, 35.114704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045656, -0.855110, 0.516433,
		-0.995085, 0.006548, 0.098813,
		-0.087877, -0.518405, -0.850608,
		30.483046, 37.155785, 34.859520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871218, 37.039352, 35.465298>,  <30.544559, 37.518669, 35.454948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871218, 37.039352, 35.465298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201948, 36.942924, 35.262028>,  <30.400387, 36.885067, 35.140064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201948, 36.942924, 35.262028>,  <29.871218, 37.039352, 35.465298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201948, 36.942924, 35.262028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211740, -0.703622, 0.678294,
		-0.521080, -0.668433, -0.530729,
		0.826826, -0.241069, -0.508177,
		30.449997, 36.870605, 35.109573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084452, 36.415581, 35.931828>,  <29.871218, 37.039352, 35.465298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084452, 36.415581, 35.931828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382339, 36.514339, 35.683815>,  <30.561073, 36.573593, 35.535007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382339, 36.514339, 35.683815>,  <30.084452, 36.415581, 35.931828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382339, 36.514339, 35.683815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499103, -0.822799, 0.271842,
		-0.443043, -0.511904, -0.735981,
		0.744721, 0.246893, -0.620028,
		30.605755, 36.588406, 35.497807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315773, 35.811382, 35.573456>,  <30.084452, 36.415581, 35.931828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315773, 35.811382, 35.573456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611694, 36.074730, 35.628937>,  <30.789248, 36.232738, 35.662224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.611694, 36.074730, 35.628937>,  <30.315773, 35.811382, 35.573456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611694, 36.074730, 35.628937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593183, -0.735518, 0.327334,
		0.317524, -0.159887, -0.934673,
		0.739805, 0.658369, 0.138702,
		30.833635, 36.272240, 35.670547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044714, 35.622929, 35.190430>,  <30.315773, 35.811382, 35.573456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044714, 35.622929, 35.190430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093311, 35.830433, 35.528927>,  <31.122469, 35.954933, 35.732025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093311, 35.830433, 35.528927>,  <31.044714, 35.622929, 35.190430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093311, 35.830433, 35.528927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434357, -0.794382, 0.424608,
		0.892510, 0.315986, -0.321838,
		0.121492, 0.518759, 0.846244,
		31.129759, 35.986061, 35.782799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845552, 35.600174, 35.438419>,  <31.044714, 35.622929, 35.190430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845552, 35.600174, 35.438419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639002, 35.702087, 35.765453>,  <31.515072, 35.763237, 35.961674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639002, 35.702087, 35.765453>,  <31.845552, 35.600174, 35.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639002, 35.702087, 35.765453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509074, -0.676380, 0.532309,
		0.688619, 0.691083, 0.219564,
		-0.516379, 0.254784, 0.817581,
		31.484089, 35.778522, 36.010727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145554, 35.877815, 35.996758>,  <31.845552, 35.600174, 35.438419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145554, 35.877815, 35.996758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314667, 35.811962, 35.640297>,  <32.416134, 35.772449, 35.426418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314667, 35.811962, 35.640297>,  <32.145554, 35.877815, 35.996758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314667, 35.811962, 35.640297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760273, 0.599604, 0.249919,
		0.493195, -0.783181, 0.378663,
		0.422780, -0.164628, -0.891154,
		32.441502, 35.762573, 35.372952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964952, 35.656513, 36.751614>,  <32.145554, 35.877815, 35.996758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964952, 35.656513, 36.751614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993429, 35.259697, 36.793159>,  <32.010517, 35.021606, 36.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993429, 35.259697, 36.793159>,  <31.964952, 35.656513, 36.751614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993429, 35.259697, 36.793159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304372, -0.077558, -0.949390,
		0.949889, 0.099203, 0.296428,
		0.071192, -0.992040, 0.103866,
		32.014786, 34.962086, 36.824318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627888, 35.435463, 36.803829>,  <31.964952, 35.656513, 36.751614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627888, 35.435463, 36.803829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371330, 35.182827, 36.629604>,  <32.217396, 35.031246, 36.525070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371330, 35.182827, 36.629604>,  <32.627888, 35.435463, 36.803829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371330, 35.182827, 36.629604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492756, 0.096017, -0.864854,
		0.588053, -0.769335, 0.249635,
		-0.641393, -0.631589, -0.435558,
		32.178913, 34.993351, 36.498936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880428, 34.844440, 36.535721>,  <32.627888, 35.435463, 36.803829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880428, 34.844440, 36.535721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579170, 34.938190, 36.289845>,  <32.398415, 34.994438, 36.142319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579170, 34.938190, 36.289845>,  <32.880428, 34.844440, 36.535721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579170, 34.938190, 36.289845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652063, 0.142199, -0.744711,
		-0.087132, -0.961690, -0.259922,
		-0.753142, 0.234373, -0.614692,
		32.353230, 35.008503, 36.105438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991600, 34.578442, 35.824299>,  <32.880428, 34.844440, 36.535721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991600, 34.578442, 35.824299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742451, 34.886391, 35.768684>,  <32.592960, 35.071159, 35.735317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742451, 34.886391, 35.768684>,  <32.991600, 34.578442, 35.824299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742451, 34.886391, 35.768684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422829, 0.181760, -0.887794,
		-0.658216, -0.611769, -0.438736,
		-0.622870, 0.769871, -0.139036,
		32.555588, 35.117352, 35.726974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560730, 34.381233, 35.310421>,  <32.991600, 34.578442, 35.824299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560730, 34.381233, 35.310421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627377, 34.775616, 35.315113>,  <32.667366, 35.012245, 35.317928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627377, 34.775616, 35.315113>,  <32.560730, 34.381233, 35.310421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627377, 34.775616, 35.315113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646168, -0.100194, -0.756590,
		-0.744786, 0.133643, -0.653784,
		0.166618, 0.985952, 0.011733,
		32.677361, 35.071400, 35.318634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373997, 34.541019, 34.602921>,  <32.560730, 34.381233, 35.310421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373997, 34.541019, 34.602921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653717, 34.746952, 34.801281>,  <32.821548, 34.870514, 34.920300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653717, 34.746952, 34.801281>,  <32.373997, 34.541019, 34.602921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653717, 34.746952, 34.801281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682859, -0.275986, -0.676413,
		-0.211378, 0.811651, -0.544557,
		0.699301, 0.514835, 0.495906,
		32.863506, 34.901402, 34.950054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641785, 35.060127, 34.081944>,  <32.373997, 34.541019, 34.602921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641785, 35.060127, 34.081944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893509, 34.907246, 34.352612>,  <33.044544, 34.815517, 34.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893509, 34.907246, 34.352612>,  <32.641785, 35.060127, 34.081944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893509, 34.907246, 34.352612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479951, -0.493685, -0.725205,
		0.611239, 0.781151, -0.127244,
		0.629313, -0.382203, 0.676673,
		33.082302, 34.792583, 34.555614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971672, 35.415321, 34.125259>,  <32.641785, 35.060127, 34.081944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971672, 35.415321, 34.125259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143497, 35.567917, 33.797859>,  <32.246593, 35.659473, 33.601418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143497, 35.567917, 33.797859>,  <31.971672, 35.415321, 34.125259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143497, 35.567917, 33.797859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027819, -0.900366, -0.434244,
		-0.902608, 0.209305, -0.376151,
		0.429562, 0.381488, -0.818501,
		32.272366, 35.682362, 33.552307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659540, 35.060226, 33.423279>,  <31.971672, 35.415321, 34.125259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659540, 35.060226, 33.423279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036484, 35.190060, 33.390770>,  <32.262650, 35.267960, 33.371265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036484, 35.190060, 33.390770>,  <31.659540, 35.060226, 33.423279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036484, 35.190060, 33.390770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244162, -0.833133, -0.496260,
		-0.228790, 0.447811, -0.864361,
		0.942359, 0.324583, -0.081274,
		32.319191, 35.287434, 33.366386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923668, 35.030849, 32.765404>,  <31.659540, 35.060226, 33.423279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923668, 35.030849, 32.765404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221977, 34.993233, 33.029217>,  <32.400963, 34.970665, 33.187504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221977, 34.993233, 33.029217>,  <31.923668, 35.030849, 32.765404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221977, 34.993233, 33.029217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218122, -0.900953, -0.375109,
		0.629479, 0.423605, -0.651395,
		0.745774, -0.094040, 0.659529,
		32.445709, 34.965019, 33.227074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729862, 35.066463, 32.520741>,  <31.923668, 35.030849, 32.765404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729862, 35.066463, 32.520741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664673, 34.819729, 32.828754>,  <32.625561, 34.671688, 33.013561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664673, 34.819729, 32.828754>,  <32.729862, 35.066463, 32.520741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664673, 34.819729, 32.828754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408013, -0.752738, -0.516634,
		0.898313, 0.229988, 0.374352,
		-0.162970, -0.616839, 0.770033,
		32.615784, 34.634678, 33.059765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444389, 34.730625, 32.661846>,  <32.729862, 35.066463, 32.520741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444389, 34.730625, 32.661846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088512, 34.557144, 32.718895>,  <32.874985, 34.453056, 32.753124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088512, 34.557144, 32.718895>,  <33.444389, 34.730625, 32.661846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088512, 34.557144, 32.718895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232085, -0.698648, -0.676777,
		0.393167, -0.569025, 0.722240,
		-0.889695, -0.433707, 0.142623,
		32.821606, 34.427032, 32.761681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564663, 34.042263, 32.554195>,  <33.444389, 34.730625, 32.661846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564663, 34.042263, 32.554195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168922, 34.094906, 32.529331>,  <32.931477, 34.126492, 32.514412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168922, 34.094906, 32.529331>,  <33.564663, 34.042263, 32.554195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168922, 34.094906, 32.529331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031111, -0.608450, -0.792982,
		-0.142181, -0.782605, 0.606065,
		-0.989351, 0.131602, -0.062162,
		32.872116, 34.134388, 32.510681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165745, 33.420841, 32.658241>,  <33.564663, 34.042263, 32.554195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165745, 33.420841, 32.658241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017296, 33.695560, 32.408257>,  <32.928226, 33.860394, 32.258266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017296, 33.695560, 32.408257>,  <33.165745, 33.420841, 32.658241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017296, 33.695560, 32.408257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199678, -0.598256, -0.776027,
		-0.906862, -0.412790, 0.084885,
		-0.371119, 0.686800, -0.624961,
		32.905960, 33.901600, 32.220768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595970, 33.132874, 32.105980>,  <33.165745, 33.420841, 32.658241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595970, 33.132874, 32.105980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777359, 33.462246, 31.969553>,  <32.886192, 33.659870, 31.887697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777359, 33.462246, 31.969553>,  <32.595970, 33.132874, 32.105980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777359, 33.462246, 31.969553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078710, -0.418177, -0.904949,
		-0.887787, 0.383526, -0.254445,
		0.453475, 0.823429, -0.341065,
		32.913403, 33.709274, 31.867233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337627, 33.196640, 31.477760>,  <32.595970, 33.132874, 32.105980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337627, 33.196640, 31.477760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658173, 33.432629, 31.438257>,  <32.850498, 33.574223, 31.414555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658173, 33.432629, 31.438257>,  <32.337627, 33.196640, 31.477760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658173, 33.432629, 31.438257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196252, -0.415266, -0.888279,
		-0.565070, 0.692451, -0.448561,
		0.801362, 0.589970, -0.098760,
		32.898582, 33.609619, 31.408628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288399, 33.608665, 30.815502>,  <32.337627, 33.196640, 31.477760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288399, 33.608665, 30.815502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670372, 33.587215, 30.932272>,  <32.899555, 33.574345, 31.002335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670372, 33.587215, 30.932272>,  <32.288399, 33.608665, 30.815502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670372, 33.587215, 30.932272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250949, -0.379330, -0.890580,
		0.158496, 0.923706, -0.348778,
		0.954936, -0.053628, 0.291926,
		32.956852, 33.571129, 31.019850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660263, 33.923222, 30.268438>,  <32.288399, 33.608665, 30.815502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660263, 33.923222, 30.268438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939438, 33.706673, 30.455969>,  <33.106941, 33.576744, 30.568487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939438, 33.706673, 30.455969>,  <32.660263, 33.923222, 30.268438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939438, 33.706673, 30.455969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461560, -0.160506, -0.872468,
		0.547581, 0.825319, 0.137854,
		0.697938, -0.541375, 0.468824,
		33.148819, 33.544262, 30.596617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254456, 34.169144, 29.941916>,  <32.660263, 33.923222, 30.268438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254456, 34.169144, 29.941916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368481, 33.828693, 30.118244>,  <33.436893, 33.624424, 30.224041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368481, 33.828693, 30.118244>,  <33.254456, 34.169144, 29.941916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368481, 33.828693, 30.118244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692159, -0.135360, -0.708938,
		0.663066, 0.507209, 0.550530,
		0.285060, -0.851127, 0.440822,
		33.453999, 33.573357, 30.250490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945004, 34.281700, 29.984413>,  <33.254456, 34.169144, 29.941916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945004, 34.281700, 29.984413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864510, 33.889942, 29.991243>,  <33.816212, 33.654888, 29.995342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864510, 33.889942, 29.991243>,  <33.945004, 34.281700, 29.984413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864510, 33.889942, 29.991243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690729, -0.154240, -0.706473,
		0.694549, -0.130371, 0.707534,
		-0.201234, -0.979394, 0.017076,
		33.804138, 33.596123, 29.996367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668842, 33.886265, 29.949234>,  <33.945004, 34.281700, 29.984413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668842, 33.886265, 29.949234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364357, 33.651218, 29.839504>,  <34.181664, 33.510189, 29.773666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364357, 33.651218, 29.839504>,  <34.668842, 33.886265, 29.949234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364357, 33.651218, 29.839504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542054, -0.344328, -0.766561,
		0.355987, -0.732218, 0.580629,
		-0.761216, -0.587618, -0.274325,
		34.135994, 33.474934, 29.757206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913895, 33.272720, 29.670326>,  <34.668842, 33.886265, 29.949234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913895, 33.272720, 29.670326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537159, 33.253086, 29.537344>,  <34.311119, 33.241306, 29.457554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537159, 33.253086, 29.537344>,  <34.913895, 33.272720, 29.670326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537159, 33.253086, 29.537344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335375, -0.200529, -0.920496,
		-0.021483, -0.978457, 0.205329,
		-0.941840, -0.049087, -0.332458,
		34.254608, 33.238361, 29.437607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963001, 32.787636, 29.192041>,  <34.913895, 33.272720, 29.670326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963001, 32.787636, 29.192041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604454, 32.938320, 29.098564>,  <34.389324, 33.028732, 29.042479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604454, 32.938320, 29.098564>,  <34.963001, 32.787636, 29.192041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604454, 32.938320, 29.098564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205060, -0.115025, -0.971967,
		-0.393030, -0.919162, 0.025857,
		-0.896369, 0.376710, -0.233692,
		34.335545, 33.051334, 29.028456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615402, 32.445568, 28.639795>,  <34.963001, 32.787636, 29.192041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615402, 32.445568, 28.639795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408802, 32.784515, 28.590488>,  <34.284840, 32.987885, 28.560904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408802, 32.784515, 28.590488>,  <34.615402, 32.445568, 28.639795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408802, 32.784515, 28.590488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255698, 0.015239, -0.966637,
		-0.817216, -0.530792, -0.224541,
		-0.516504, 0.847365, -0.123269,
		34.253849, 33.038727, 28.553507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242798, 32.280689, 27.973200>,  <34.615402, 32.445568, 28.639795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242798, 32.280689, 27.973200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225731, 32.672798, 28.050388>,  <34.215492, 32.908066, 28.096701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225731, 32.672798, 28.050388>,  <34.242798, 32.280689, 27.973200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225731, 32.672798, 28.050388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292330, 0.196941, -0.935819,
		-0.955365, 0.016484, -0.294967,
		-0.042665, 0.980277, 0.192969,
		34.212933, 32.966881, 28.108278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831135, 32.463299, 27.458117>,  <34.242798, 32.280689, 27.973200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831135, 32.463299, 27.458117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016815, 32.796852, 27.577555>,  <34.128223, 32.996983, 27.649218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016815, 32.796852, 27.577555>,  <33.831135, 32.463299, 27.458117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016815, 32.796852, 27.577555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121085, 0.274207, -0.954017,
		-0.877415, 0.479010, 0.026316,
		0.464200, 0.833883, 0.298594,
		34.156075, 33.047016, 27.667133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615269, 32.943111, 27.089617>,  <33.831135, 32.463299, 27.458117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615269, 32.943111, 27.089617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971581, 33.073906, 27.215851>,  <34.185368, 33.152382, 27.291592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971581, 33.073906, 27.215851>,  <33.615269, 32.943111, 27.089617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971581, 33.073906, 27.215851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233456, 0.266532, -0.935125,
		-0.389889, 0.906663, 0.161083,
		0.890778, 0.326989, 0.315584,
		34.238815, 33.172001, 27.310526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693672, 33.606682, 26.754398>,  <33.615269, 32.943111, 27.089617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693672, 33.606682, 26.754398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059917, 33.511028, 26.883688>,  <34.279663, 33.453636, 26.961262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059917, 33.511028, 26.883688>,  <33.693672, 33.606682, 26.754398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059917, 33.511028, 26.883688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377927, 0.237506, -0.894853,
		0.137226, 0.941490, 0.307839,
		0.915609, -0.239138, 0.323223,
		34.334599, 33.439285, 26.980656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148621, 34.121174, 26.517126>,  <33.693672, 33.606682, 26.754398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148621, 34.121174, 26.517126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390228, 33.810680, 26.589375>,  <34.535194, 33.624386, 26.632723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390228, 33.810680, 26.589375>,  <34.148621, 34.121174, 26.517126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390228, 33.810680, 26.589375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251134, -0.029708, -0.967496,
		0.756369, 0.629745, 0.176995,
		0.604018, -0.776234, 0.180620,
		34.571434, 33.577808, 26.643560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590298, 34.248993, 26.129490>,  <34.148621, 34.121174, 26.517126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590298, 34.248993, 26.129490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706432, 33.870243, 26.184811>,  <34.776115, 33.642994, 26.218002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706432, 33.870243, 26.184811>,  <34.590298, 34.248993, 26.129490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706432, 33.870243, 26.184811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276412, -0.055382, -0.959442,
		0.916133, 0.316792, 0.245648,
		0.290339, -0.946877, 0.138302,
		34.793533, 33.586182, 26.226301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089436, 34.193642, 25.649467>,  <34.590298, 34.248993, 26.129490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089436, 34.193642, 25.649467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979557, 33.815796, 25.721302>,  <34.913631, 33.589088, 25.764402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979557, 33.815796, 25.721302>,  <35.089436, 34.193642, 25.649467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979557, 33.815796, 25.721302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197323, -0.238178, -0.950965,
		0.941067, -0.225786, 0.251820,
		-0.274693, -0.944612, 0.179588,
		34.897148, 33.532413, 25.775179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567280, 33.828018, 25.209106>,  <35.089436, 34.193642, 25.649467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567280, 33.828018, 25.209106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271221, 33.571873, 25.291189>,  <35.093586, 33.418186, 25.340439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271221, 33.571873, 25.291189>,  <35.567280, 33.828018, 25.209106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271221, 33.571873, 25.291189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021509, -0.282466, -0.959036,
		0.672098, -0.714244, 0.195293,
		-0.740149, -0.640366, 0.205208,
		35.049175, 33.379765, 25.352751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707802, 33.276932, 24.781712>,  <35.567280, 33.828018, 25.209106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707802, 33.276932, 24.781712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325138, 33.225941, 24.886438>,  <35.095539, 33.195347, 24.949274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325138, 33.225941, 24.886438>,  <35.707802, 33.276932, 24.781712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325138, 33.225941, 24.886438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168109, -0.492375, -0.853994,
		0.237780, -0.860997, 0.449605,
		-0.956661, -0.127480, 0.261818,
		35.038139, 33.187698, 24.964983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556889, 32.586845, 24.710188>,  <35.707802, 33.276932, 24.781712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556889, 32.586845, 24.710188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190643, 32.746284, 24.689125>,  <34.970898, 32.841949, 24.676487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190643, 32.746284, 24.689125>,  <35.556889, 32.586845, 24.710188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190643, 32.746284, 24.689125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115057, -0.385249, -0.915612,
		-0.385249, -0.832287, 0.398600,
		0.915612, -0.398600, 0.052656,
		34.915958, 32.865864, 24.673328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067951, 32.039635, 24.547926>,  <35.556889, 32.586845, 24.710188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067951, 32.039635, 24.547926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902592, 32.388832, 24.444395>,  <34.803375, 32.598351, 24.382277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902592, 32.388832, 24.444395>,  <35.067951, 32.039635, 24.547926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902592, 32.388832, 24.444395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390887, -0.426874, -0.815467,
		-0.822381, -0.235940, 0.517709,
		-0.413398, 0.872990, -0.258827,
		34.778572, 32.650730, 24.366747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317345, 31.946980, 24.295355>,  <35.067951, 32.039635, 24.547926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317345, 31.946980, 24.295355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427162, 32.298988, 24.140341>,  <34.493053, 32.510193, 24.047333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427162, 32.298988, 24.140341>,  <34.317345, 31.946980, 24.295355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427162, 32.298988, 24.140341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300955, -0.304134, -0.903841,
		-0.913264, 0.364776, 0.181349,
		0.274546, 0.880023, -0.387536,
		34.509525, 32.562996, 24.024080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853706, 32.097324, 23.788235>,  <34.317345, 31.946980, 24.295355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853706, 32.097324, 23.788235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149765, 32.339008, 23.670174>,  <34.327400, 32.484020, 23.599337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149765, 32.339008, 23.670174>,  <33.853706, 32.097324, 23.788235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149765, 32.339008, 23.670174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216086, -0.201936, -0.955264,
		-0.636782, 0.770812, -0.018901,
		0.740146, 0.604210, -0.295151,
		34.371807, 32.520271, 23.581629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556023, 32.282246, 23.223866>,  <33.853706, 32.097324, 23.788235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556023, 32.282246, 23.223866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936039, 32.402287, 23.189560>,  <34.164051, 32.474312, 23.168976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936039, 32.402287, 23.189560>,  <33.556023, 32.282246, 23.223866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936039, 32.402287, 23.189560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059080, -0.096903, -0.993539,
		-0.306474, 0.948972, -0.074332,
		0.950044, 0.300102, -0.085764,
		34.221050, 32.492317, 23.163832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523140, 32.592339, 22.607670>,  <33.556023, 32.282246, 23.223866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523140, 32.592339, 22.607670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914009, 32.543983, 22.677555>,  <34.148529, 32.514973, 22.719486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914009, 32.543983, 22.677555>,  <33.523140, 32.592339, 22.607670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914009, 32.543983, 22.677555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180771, 0.041042, -0.982669,
		0.111619, 0.991818, 0.061957,
		0.977171, -0.120884, 0.174711,
		34.207161, 32.507717, 22.729969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904491, 33.016331, 22.178675>,  <33.523140, 32.592339, 22.607670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904491, 33.016331, 22.178675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186192, 32.747986, 22.271608>,  <34.355209, 32.586979, 22.327370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186192, 32.747986, 22.271608>,  <33.904491, 33.016331, 22.178675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186192, 32.747986, 22.271608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396060, 0.099645, -0.912802,
		0.589212, 0.734857, 0.335877,
		0.704248, -0.670861, 0.232335,
		34.397465, 32.546726, 22.341309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608486, 33.270664, 21.984205>,  <33.904491, 33.016331, 22.178675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608486, 33.270664, 21.984205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637039, 32.871746, 21.977152>,  <34.654171, 32.632397, 21.972919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637039, 32.871746, 21.977152>,  <34.608486, 33.270664, 21.984205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637039, 32.871746, 21.977152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331670, 0.040404, -0.942530,
		0.940691, 0.061429, 0.333656,
		0.071380, -0.997293, -0.017634,
		34.658455, 32.572559, 21.971861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184311, 33.148472, 21.507006>,  <34.608486, 33.270664, 21.984205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184311, 33.148472, 21.507006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993553, 32.796928, 21.512348>,  <34.879097, 32.586002, 21.515553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993553, 32.796928, 21.512348>,  <35.184311, 33.148472, 21.507006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993553, 32.796928, 21.512348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220061, -0.134096, -0.966225,
		0.850965, -0.457852, 0.257352,
		-0.476898, -0.878857, 0.013355,
		34.850483, 32.533272, 21.516356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521160, 32.679096, 21.108461>,  <35.184311, 33.148472, 21.507006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521160, 32.679096, 21.108461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141281, 32.554810, 21.092760>,  <34.913353, 32.480240, 21.083340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141281, 32.554810, 21.092760>,  <35.521160, 32.679096, 21.108461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141281, 32.554810, 21.092760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072785, -0.097061, -0.992613,
		0.304608, -0.945535, 0.114794,
		-0.949693, -0.310714, -0.039255,
		34.856373, 32.461597, 21.080984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523853, 32.166199, 20.549950>,  <35.521160, 32.679096, 21.108461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523853, 32.166199, 20.549950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143471, 32.270729, 20.616163>,  <34.915241, 32.333447, 20.655891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143471, 32.270729, 20.616163>,  <35.523853, 32.166199, 20.549950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143471, 32.270729, 20.616163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180886, -0.035663, -0.982857,
		-0.250938, -0.964593, 0.081183,
		-0.950952, 0.261321, 0.165532,
		34.858185, 32.349125, 20.665823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134789, 31.706003, 20.200939>,  <35.523853, 32.166199, 20.549950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134789, 31.706003, 20.200939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908405, 32.033226, 20.241882>,  <34.772575, 32.229561, 20.266447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908405, 32.033226, 20.241882>,  <35.134789, 31.706003, 20.200939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908405, 32.033226, 20.241882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232978, -0.039605, -0.971675,
		-0.790833, -0.573771, 0.213004,
		-0.565955, 0.818058, 0.102356,
		34.738617, 32.278645, 20.272589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635643, 31.577852, 19.665051>,  <35.134789, 31.706003, 20.200939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635643, 31.577852, 19.665051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606388, 31.959427, 19.781435>,  <34.588837, 32.188370, 19.851265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606388, 31.959427, 19.781435>,  <34.635643, 31.577852, 19.665051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606388, 31.959427, 19.781435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288195, 0.259081, -0.921857,
		-0.954775, -0.151273, 0.255971,
		-0.073135, 0.953936, 0.290960,
		34.584446, 32.245609, 19.868723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040112, 31.915848, 19.241949>,  <34.635643, 31.577852, 19.665051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040112, 31.915848, 19.241949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290012, 32.191509, 19.388781>,  <34.439953, 32.356907, 19.476879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290012, 32.191509, 19.388781>,  <34.040112, 31.915848, 19.241949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290012, 32.191509, 19.388781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005730, 0.474154, -0.880423,
		-0.780801, 0.547945, 0.300178,
		0.624754, 0.689155, 0.367080,
		34.477440, 32.398254, 19.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846645, 32.425076, 18.920946>,  <34.040112, 31.915848, 19.241949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846645, 32.425076, 18.920946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213593, 32.522865, 19.046593>,  <34.433762, 32.581539, 19.121981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213593, 32.522865, 19.046593>,  <33.846645, 32.425076, 18.920946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213593, 32.522865, 19.046593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173264, 0.465205, -0.868081,
		-0.358349, 0.850775, 0.384406,
		0.917369, 0.244472, 0.314114,
		34.488804, 32.596207, 19.140827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980938, 33.218708, 18.955259>,  <33.846645, 32.425076, 18.920946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980938, 33.218708, 18.955259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348003, 33.059837, 18.950523>,  <34.568245, 32.964516, 18.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348003, 33.059837, 18.950523>,  <33.980938, 33.218708, 18.955259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348003, 33.059837, 18.950523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271895, 0.649380, -0.710197,
		0.289764, 0.648503, 0.703904,
		0.917666, -0.397177, -0.011842,
		34.623302, 32.940685, 18.946970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373409, 33.821213, 18.765810>,  <33.980938, 33.218708, 18.955259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373409, 33.821213, 18.765810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546661, 33.475258, 18.664330>,  <34.650612, 33.267685, 18.603441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546661, 33.475258, 18.664330>,  <34.373409, 33.821213, 18.765810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546661, 33.475258, 18.664330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272993, 0.394133, -0.877573,
		0.858996, 0.310844, 0.406819,
		0.433130, -0.864890, -0.253701,
		34.676601, 33.215790, 18.588219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121380, 34.003857, 18.588146>,  <34.373409, 33.821213, 18.765810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121380, 34.003857, 18.588146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073479, 33.650826, 18.406284>,  <35.044739, 33.439007, 18.297167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073479, 33.650826, 18.406284>,  <35.121380, 34.003857, 18.588146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073479, 33.650826, 18.406284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359103, 0.388439, -0.848623,
		0.925584, -0.264889, 0.270422,
		-0.119748, -0.882581, -0.454655,
		35.037556, 33.386051, 18.269888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802315, 33.885494, 18.259644>,  <35.121380, 34.003857, 18.588146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802315, 33.885494, 18.259644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538010, 33.642601, 18.083158>,  <35.379429, 33.496864, 17.977266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538010, 33.642601, 18.083158>,  <35.802315, 33.885494, 18.259644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538010, 33.642601, 18.083158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368807, 0.249315, -0.895446,
		0.653744, -0.754395, 0.059214,
		-0.660758, -0.607231, -0.441214,
		35.339783, 33.460430, 17.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149689, 33.722149, 17.663076>,  <35.802315, 33.885494, 18.259644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149689, 33.722149, 17.663076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764385, 33.657413, 17.577337>,  <35.533203, 33.618572, 17.525894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764385, 33.657413, 17.577337>,  <36.149689, 33.722149, 17.663076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764385, 33.657413, 17.577337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120566, 0.452594, -0.883529,
		0.240003, -0.876908, -0.416451,
		-0.963256, -0.161840, -0.214349,
		35.475407, 33.608860, 17.513033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102501, 33.387791, 16.878786>,  <36.149689, 33.722149, 17.663076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102501, 33.387791, 16.878786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730057, 33.503422, 16.967752>,  <35.506592, 33.572800, 17.021132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730057, 33.503422, 16.967752>,  <36.102501, 33.387791, 16.878786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730057, 33.503422, 16.967752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077559, 0.438923, -0.895171,
		-0.356401, -0.850752, -0.386264,
		-0.931108, 0.289082, 0.222417,
		35.450726, 33.590145, 17.034477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617626, 33.158104, 16.278210>,  <36.102501, 33.387791, 16.878786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617626, 33.158104, 16.278210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473152, 33.470783, 16.481581>,  <35.386467, 33.658390, 16.603603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473152, 33.470783, 16.481581>,  <35.617626, 33.158104, 16.278210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473152, 33.470783, 16.481581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155368, 0.487166, -0.859378,
		-0.919461, -0.389384, -0.054505,
		-0.361181, 0.781696, 0.508428,
		35.364799, 33.705292, 16.634109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122654, 33.403919, 15.871222>,  <35.617626, 33.158104, 16.278210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122654, 33.403919, 15.871222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171959, 33.719337, 16.112221>,  <35.201542, 33.908588, 16.256819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171959, 33.719337, 16.112221>,  <35.122654, 33.403919, 15.871222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171959, 33.719337, 16.112221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231774, 0.613210, -0.755152,
		-0.964929, -0.046561, 0.258350,
		0.123262, 0.788547, 0.602495,
		35.208939, 33.955902, 16.292969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716850, 34.113762, 16.051283>,  <35.122654, 33.403919, 15.871222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716850, 34.113762, 16.051283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062973, 34.307587, 15.999996>,  <35.270645, 34.423882, 15.969225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062973, 34.307587, 15.999996>,  <34.716850, 34.113762, 16.051283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062973, 34.307587, 15.999996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475051, 0.711206, -0.518181,
		-0.159906, 0.509294, 0.845606,
		0.865307, 0.484566, -0.128215,
		35.322567, 34.452957, 15.961532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835228, 34.796211, 16.358019>,  <34.716850, 34.113762, 16.051283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835228, 34.796211, 16.358019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071033, 34.767227, 16.036219>,  <35.212517, 34.749836, 15.843139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071033, 34.767227, 16.036219>,  <34.835228, 34.796211, 16.358019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071033, 34.767227, 16.036219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526250, 0.721143, -0.450571,
		0.612807, 0.688987, 0.386994,
		0.589516, -0.072458, -0.804501,
		35.247887, 34.745491, 15.794868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342117, 35.303997, 16.190926>,  <34.835228, 34.796211, 16.358019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342117, 35.303997, 16.190926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386951, 35.699821, 16.227173>,  <34.413853, 35.937317, 16.248922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386951, 35.699821, 16.227173>,  <34.342117, 35.303997, 16.190926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386951, 35.699821, 16.227173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159070, 0.072150, -0.984627,
		-0.980884, 0.124779, -0.149322,
		0.112088, 0.989558, 0.090619,
		34.420578, 35.996689, 16.254358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910530, 35.540447, 15.644920>,  <34.342117, 35.303997, 16.190926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910530, 35.540447, 15.644920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176113, 35.815571, 15.762276>,  <34.335461, 35.980644, 15.832689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176113, 35.815571, 15.762276>,  <33.910530, 35.540447, 15.644920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176113, 35.815571, 15.762276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280303, 0.134814, -0.950397,
		-0.693249, 0.713259, -0.103285,
		0.663955, 0.687813, 0.293389,
		34.375301, 36.021915, 15.850292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876732, 35.802795, 14.911135>,  <33.910530, 35.540447, 15.644920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876732, 35.802795, 14.911135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936993, 36.178196, 14.786865>,  <33.973148, 36.403435, 14.712304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936993, 36.178196, 14.786865>,  <33.876732, 35.802795, 14.911135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936993, 36.178196, 14.786865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125502, -0.329873, -0.935646,
		-0.980588, 0.101966, -0.167480,
		0.150652, 0.938502, -0.310673,
		33.982189, 36.459747, 14.693664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648151, 35.631351, 14.735700>,  <33.876732, 35.802795, 14.911135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648151, 35.631351, 14.735700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875317, 35.958725, 14.770663>,  <35.011616, 36.155151, 14.791641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875317, 35.958725, 14.770663>,  <34.648151, 35.631351, 14.735700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875317, 35.958725, 14.770663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173741, 0.015395, 0.984671,
		0.804544, -0.574391, 0.150939,
		0.567910, 0.818436, 0.087410,
		35.045689, 36.204254, 14.796886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048206, 35.547787, 15.334517>,  <34.648151, 35.631351, 14.735700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048206, 35.547787, 15.334517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010303, 35.938332, 15.256804>,  <34.987560, 36.172657, 15.210176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010303, 35.938332, 15.256804>,  <35.048206, 35.547787, 15.334517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010303, 35.938332, 15.256804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048244, 0.199435, 0.978723,
		0.994330, 0.083372, -0.066002,
		-0.094761, 0.976358, -0.194282,
		34.981876, 36.231239, 15.198519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478901, 36.125729, 15.702801>,  <35.048206, 35.547787, 15.334517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478901, 36.125729, 15.702801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125011, 36.278202, 15.595494>,  <34.912678, 36.369686, 15.531110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125011, 36.278202, 15.595494>,  <35.478901, 36.125729, 15.702801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125011, 36.278202, 15.595494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183643, 0.243931, 0.952246,
		0.428422, 0.891737, -0.145808,
		-0.884720, 0.381187, -0.268267,
		34.859596, 36.392559, 15.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315720, 36.855743, 15.972843>,  <35.478901, 36.125729, 15.702801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315720, 36.855743, 15.972843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975471, 36.648304, 15.938220>,  <34.771320, 36.523838, 15.917446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975471, 36.648304, 15.938220>,  <35.315720, 36.855743, 15.972843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975471, 36.648304, 15.938220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254739, 0.262485, 0.930704,
		-0.459946, 0.813727, -0.355384,
		-0.850622, -0.518603, -0.086559,
		34.720284, 36.492722, 15.912252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753681, 37.239082, 16.320612>,  <35.315720, 36.855743, 15.972843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753681, 37.239082, 16.320612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647091, 36.853783, 16.307142>,  <34.583138, 36.622601, 16.299061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647091, 36.853783, 16.307142>,  <34.753681, 37.239082, 16.320612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647091, 36.853783, 16.307142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282021, 0.044518, 0.958375,
		-0.921657, 0.264884, -0.283521,
		-0.266480, -0.963252, -0.033673,
		34.567146, 36.564808, 16.297041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037373, 37.072414, 16.539326>,  <34.753681, 37.239082, 16.320612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037373, 37.072414, 16.539326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281509, 36.761459, 16.600191>,  <34.427990, 36.574886, 16.636711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281509, 36.761459, 16.600191>,  <34.037373, 37.072414, 16.539326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281509, 36.761459, 16.600191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233760, 0.006783, 0.972271,
		-0.756863, -0.628986, -0.177582,
		0.610340, -0.777387, 0.152166,
		34.464611, 36.528244, 16.645842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684032, 36.623581, 17.049635>,  <34.037373, 37.072414, 16.539326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684032, 36.623581, 17.049635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052723, 36.468685, 17.058250>,  <34.273937, 36.375748, 17.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052723, 36.468685, 17.058250>,  <33.684032, 36.623581, 17.049635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052723, 36.468685, 17.058250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051399, -0.066915, 0.996434,
		-0.384420, -0.919546, -0.081581,
		0.921726, -0.387243, 0.021541,
		34.329239, 36.352512, 17.064713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671101, 36.140522, 17.559225>,  <33.684032, 36.623581, 17.049635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671101, 36.140522, 17.559225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068707, 36.153378, 17.517473>,  <34.307270, 36.161091, 17.492422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068707, 36.153378, 17.517473>,  <33.671101, 36.140522, 17.559225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068707, 36.153378, 17.517473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108740, -0.202180, 0.973293,
		0.010180, -0.978821, -0.204466,
		0.994018, 0.032142, -0.104379,
		34.366913, 36.163021, 17.486160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927010, 35.443726, 17.736132>,  <33.671101, 36.140522, 17.559225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927010, 35.443726, 17.736132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223347, 35.709206, 17.777435>,  <34.401150, 35.868492, 17.802217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223347, 35.709206, 17.777435>,  <33.927010, 35.443726, 17.736132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223347, 35.709206, 17.777435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129004, -0.291466, 0.947843,
		0.659178, -0.688877, -0.301549,
		0.740839, 0.663698, 0.103260,
		34.445599, 35.908314, 17.808413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399719, 35.050316, 18.031992>,  <33.927010, 35.443726, 17.736132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399719, 35.050316, 18.031992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490849, 35.419914, 18.154839>,  <34.545528, 35.641674, 18.228546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490849, 35.419914, 18.154839>,  <34.399719, 35.050316, 18.031992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490849, 35.419914, 18.154839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268947, -0.362855, 0.892191,
		0.935823, -0.120665, -0.331174,
		0.227825, 0.924000, 0.307115,
		34.559196, 35.697113, 18.246973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969227, 34.926277, 18.450172>,  <34.399719, 35.050316, 18.031992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969227, 34.926277, 18.450172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846081, 35.287392, 18.570303>,  <34.772194, 35.504059, 18.642382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846081, 35.287392, 18.570303>,  <34.969227, 34.926277, 18.450172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846081, 35.287392, 18.570303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311421, -0.202653, 0.928412,
		0.899019, 0.379355, -0.218756,
		-0.307866, 0.902785, 0.300328,
		34.753719, 35.558228, 18.660402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415577, 35.144707, 19.041868>,  <34.969227, 34.926277, 18.450172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415577, 35.144707, 19.041868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090252, 35.376411, 19.063694>,  <34.895058, 35.515434, 19.076790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090252, 35.376411, 19.063694>,  <35.415577, 35.144707, 19.041868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090252, 35.376411, 19.063694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051789, -0.021336, 0.998430,
		0.579512, 0.814866, -0.012646,
		-0.813317, 0.579257, 0.054566,
		34.846256, 35.550190, 19.080063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638466, 35.462654, 19.590702>,  <35.415577, 35.144707, 19.041868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638466, 35.462654, 19.590702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248165, 35.532810, 19.538319>,  <35.013985, 35.574902, 19.506887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248165, 35.532810, 19.538319>,  <35.638466, 35.462654, 19.590702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248165, 35.532810, 19.538319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163478, -0.186070, 0.968841,
		0.145554, 0.966756, 0.210230,
		-0.975751, 0.175387, -0.130960,
		34.955441, 35.585426, 19.499031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512863, 35.825485, 20.164825>,  <35.638466, 35.462654, 19.590702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512863, 35.825485, 20.164825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143112, 35.718849, 20.055679>,  <34.921261, 35.654869, 19.990191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143112, 35.718849, 20.055679>,  <35.512863, 35.825485, 20.164825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143112, 35.718849, 20.055679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252850, -0.107427, 0.961523,
		-0.285644, 0.957805, 0.031896,
		-0.924378, -0.266588, -0.272867,
		34.865799, 35.638874, 19.973820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108345, 36.177433, 20.576803>,  <35.512863, 35.825485, 20.164825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108345, 36.177433, 20.576803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897579, 35.865463, 20.441702>,  <34.771118, 35.678280, 20.360641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897579, 35.865463, 20.441702>,  <35.108345, 36.177433, 20.576803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897579, 35.865463, 20.441702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312186, -0.192010, 0.930415,
		-0.790504, 0.595695, -0.142307,
		-0.526919, -0.779923, -0.337752,
		34.739502, 35.631485, 20.340376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383755, 36.272713, 20.647734>,  <35.108345, 36.177433, 20.576803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383755, 36.272713, 20.647734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448654, 35.878056, 20.642035>,  <34.487595, 35.641262, 20.638615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448654, 35.878056, 20.642035>,  <34.383755, 36.272713, 20.647734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448654, 35.878056, 20.642035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273180, -0.058790, 0.960165,
		-0.948181, -0.151898, -0.279070,
		0.162253, -0.986646, -0.014248,
		34.497330, 35.582062, 20.637760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866707, 36.033978, 20.994253>,  <34.383755, 36.272713, 20.647734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866707, 36.033978, 20.994253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096001, 35.706253, 20.999008>,  <34.233578, 35.509621, 21.001862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096001, 35.706253, 20.999008>,  <33.866707, 36.033978, 20.994253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096001, 35.706253, 20.999008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188056, -0.117423, 0.975114,
		-0.797522, -0.561201, -0.221386,
		0.573231, -0.819307, 0.011889,
		34.267971, 35.460461, 21.002575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431877, 35.529705, 21.335098>,  <33.866707, 36.033978, 20.994253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431877, 35.529705, 21.335098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811729, 35.409943, 21.372122>,  <34.039639, 35.338085, 21.394337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811729, 35.409943, 21.372122>,  <33.431877, 35.529705, 21.335098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811729, 35.409943, 21.372122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184401, -0.295037, 0.937523,
		-0.253391, -0.907364, -0.335386,
		0.949626, -0.299405, 0.092559,
		34.096619, 35.320122, 21.399889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300709, 34.900211, 21.706366>,  <33.431877, 35.529705, 21.335098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300709, 34.900211, 21.706366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678913, 35.023003, 21.749775>,  <33.905834, 35.096680, 21.775820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678913, 35.023003, 21.749775>,  <33.300709, 34.900211, 21.706366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678913, 35.023003, 21.749775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058391, -0.168030, 0.984051,
		0.320321, -0.936765, -0.140949,
		0.945508, 0.306982, 0.108522,
		33.962566, 35.115097, 21.782331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553394, 34.467670, 22.199442>,  <33.300709, 34.900211, 21.706366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553394, 34.467670, 22.199442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802368, 34.778519, 22.236643>,  <33.951752, 34.965027, 22.258965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802368, 34.778519, 22.236643>,  <33.553394, 34.467670, 22.199442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802368, 34.778519, 22.236643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100996, -0.197586, 0.975069,
		0.776125, -0.597527, -0.201471,
		0.622438, 0.777124, 0.093004,
		33.989101, 35.011654, 22.264544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033920, 34.274998, 22.747993>,  <33.553394, 34.467670, 22.199442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033920, 34.274998, 22.747993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080383, 34.671967, 22.731964>,  <34.108261, 34.910149, 22.722345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080383, 34.671967, 22.731964>,  <34.033920, 34.274998, 22.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080383, 34.671967, 22.731964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044154, 0.035148, 0.998406,
		0.992249, -0.117739, -0.039737,
		0.116154, 0.992422, -0.040074,
		34.115231, 34.969692, 22.719942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514473, 34.428524, 23.283775>,  <34.033920, 34.274998, 22.747993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514473, 34.428524, 23.283775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324268, 34.773418, 23.213997>,  <34.210144, 34.980354, 23.172131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324268, 34.773418, 23.213997>,  <34.514473, 34.428524, 23.283775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324268, 34.773418, 23.213997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063323, 0.164235, 0.984387,
		0.877425, 0.479138, -0.023497,
		-0.475516, 0.862238, -0.174445,
		34.181614, 35.032089, 23.161663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888489, 34.917625, 23.659554>,  <34.514473, 34.428524, 23.283775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888489, 34.917625, 23.659554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516029, 35.043453, 23.585779>,  <34.292553, 35.118950, 23.541513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516029, 35.043453, 23.585779>,  <34.888489, 34.917625, 23.659554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516029, 35.043453, 23.585779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128656, 0.189857, 0.973345,
		0.341199, 0.930055, -0.136314,
		-0.931145, 0.314567, -0.184437,
		34.236687, 35.137825, 23.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831993, 35.592152, 23.949430>,  <34.888489, 34.917625, 23.659554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831993, 35.592152, 23.949430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440929, 35.518631, 23.908649>,  <34.206291, 35.474518, 23.884180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440929, 35.518631, 23.908649>,  <34.831993, 35.592152, 23.949430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440929, 35.518631, 23.908649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154737, 0.301139, 0.940942,
		-0.142241, 0.935700, -0.322852,
		-0.977663, -0.183797, -0.101953,
		34.147629, 35.463493, 23.878063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508957, 36.180813, 24.087368>,  <34.831993, 35.592152, 23.949430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508957, 36.180813, 24.087368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227592, 35.898396, 24.120144>,  <34.058773, 35.728947, 24.139809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227592, 35.898396, 24.120144>,  <34.508957, 36.180813, 24.087368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227592, 35.898396, 24.120144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306881, 0.405658, 0.860968,
		-0.641119, 0.580471, -0.502016,
		-0.703414, -0.706042, 0.081940,
		34.016567, 35.686584, 24.144726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881912, 36.452976, 24.150826>,  <34.508957, 36.180813, 24.087368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881912, 36.452976, 24.150826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851273, 36.104012, 24.343914>,  <33.832890, 35.894630, 24.459768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851273, 36.104012, 24.343914>,  <33.881912, 36.452976, 24.150826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851273, 36.104012, 24.343914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453801, 0.461600, 0.762227,
		-0.887804, -0.160671, -0.431264,
		-0.076603, -0.872416, 0.482723,
		33.828293, 35.842285, 24.488731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235703, 36.531128, 24.513556>,  <33.881912, 36.452976, 24.150826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235703, 36.531128, 24.513556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364731, 36.183311, 24.663141>,  <33.442146, 35.974621, 24.752893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364731, 36.183311, 24.663141>,  <33.235703, 36.531128, 24.513556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364731, 36.183311, 24.663141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508967, 0.173771, 0.843064,
		-0.798062, -0.462280, -0.386515,
		0.322567, -0.869540, 0.373965,
		33.461502, 35.922451, 24.775331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633450, 36.186413, 24.803425>,  <33.235703, 36.531128, 24.513556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633450, 36.186413, 24.803425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951168, 36.002953, 24.962793>,  <33.141800, 35.892876, 25.058414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951168, 36.002953, 24.962793>,  <32.633450, 36.186413, 24.803425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951168, 36.002953, 24.962793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445648, 0.005862, 0.895189,
		-0.412912, -0.888599, -0.199739,
		0.794293, -0.458647, 0.398423,
		33.189457, 35.865360, 25.082321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409634, 35.573753, 25.236120>,  <32.633450, 36.186413, 24.803425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409634, 35.573753, 25.236120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770126, 35.692295, 25.362579>,  <32.986423, 35.763420, 25.438456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770126, 35.692295, 25.362579>,  <32.409634, 35.573753, 25.236120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770126, 35.692295, 25.362579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358392, 0.099661, 0.928236,
		0.243580, -0.949864, 0.196029,
		0.901235, 0.296356, 0.316148,
		33.040497, 35.781200, 25.457424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407536, 35.320061, 25.970612>,  <32.409634, 35.573753, 25.236120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407536, 35.320061, 25.970612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705063, 35.586712, 25.951227>,  <32.883579, 35.746700, 25.939596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705063, 35.586712, 25.951227>,  <32.407536, 35.320061, 25.970612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705063, 35.586712, 25.951227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120622, 0.205196, 0.971260,
		0.657410, -0.716594, 0.233038,
		0.743816, 0.666625, -0.048460,
		32.928207, 35.786697, 25.936689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790791, 35.132675, 26.577904>,  <32.407536, 35.320061, 25.970612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790791, 35.132675, 26.577904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874725, 35.505341, 26.459269>,  <32.925087, 35.728939, 26.388088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874725, 35.505341, 26.459269>,  <32.790791, 35.132675, 26.577904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874725, 35.505341, 26.459269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101106, 0.322391, 0.941192,
		0.972495, -0.167510, 0.161847,
		0.209837, 0.931667, -0.296588,
		32.937675, 35.784840, 26.370293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145016, 35.346725, 27.107405>,  <32.790791, 35.132675, 26.577904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145016, 35.346725, 27.107405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055359, 35.692005, 26.926455>,  <33.001564, 35.899174, 26.817884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055359, 35.692005, 26.926455>,  <33.145016, 35.346725, 27.107405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055359, 35.692005, 26.926455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077828, 0.478557, 0.874600,
		0.971443, 0.160828, -0.174447,
		-0.224143, 0.863202, -0.452374,
		32.988117, 35.950966, 26.790743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688625, 35.719585, 27.177588>,  <33.145016, 35.346725, 27.107405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688625, 35.719585, 27.177588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402515, 35.987259, 27.097015>,  <33.230850, 36.147861, 27.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402515, 35.987259, 27.097015>,  <33.688625, 35.719585, 27.177588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402515, 35.987259, 27.097015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182496, 0.457091, 0.870496,
		0.674591, 0.585886, -0.449070,
		-0.715277, 0.669182, -0.201428,
		33.187931, 36.188015, 27.036587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958126, 36.527515, 27.273989>,  <33.688625, 35.719585, 27.177588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958126, 36.527515, 27.273989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562897, 36.493298, 27.325199>,  <33.325760, 36.472767, 27.355925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562897, 36.493298, 27.325199>,  <33.958126, 36.527515, 27.273989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562897, 36.493298, 27.325199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069371, 0.494975, 0.866134,
		-0.137462, 0.864686, -0.483138,
		-0.988075, -0.085545, 0.128024,
		33.266476, 36.467632, 27.363605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744553, 37.103706, 27.565748>,  <33.958126, 36.527515, 27.273989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744553, 37.103706, 27.565748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414463, 36.882473, 27.611555>,  <33.216412, 36.749733, 27.639038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414463, 36.882473, 27.611555>,  <33.744553, 37.103706, 27.565748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414463, 36.882473, 27.611555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014158, 0.222943, 0.974729,
		-0.564632, 0.802745, -0.191808,
		-0.825221, -0.553079, 0.114515,
		33.166897, 36.716549, 27.645910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336487, 37.514492, 27.924858>,  <33.744553, 37.103706, 27.565748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336487, 37.514492, 27.924858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214241, 37.138092, 27.982979>,  <33.140896, 36.912251, 28.017851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214241, 37.138092, 27.982979>,  <33.336487, 37.514492, 27.924858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214241, 37.138092, 27.982979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061712, 0.171856, 0.983187,
		-0.950154, 0.291508, -0.110592,
		-0.305613, -0.941004, 0.145300,
		33.122559, 36.855789, 28.026569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919571, 37.575195, 28.448256>,  <33.336487, 37.514492, 27.924858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919571, 37.575195, 28.448256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934601, 37.175919, 28.467030>,  <32.943619, 36.936352, 28.478294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934601, 37.175919, 28.467030>,  <32.919571, 37.575195, 28.448256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934601, 37.175919, 28.467030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184655, 0.039223, 0.982020,
		-0.982085, -0.045568, -0.182847,
		0.037577, -0.998191, 0.046935,
		32.945873, 36.876461, 28.481110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354774, 37.339920, 28.882374>,  <32.919571, 37.575195, 28.448256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354774, 37.339920, 28.882374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623646, 37.044231, 28.899000>,  <32.784969, 36.866817, 28.908976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623646, 37.044231, 28.899000>,  <32.354774, 37.339920, 28.882374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623646, 37.044231, 28.899000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067389, -0.005179, 0.997713,
		-0.737318, -0.673440, -0.053296,
		0.672176, -0.739223, 0.041564,
		32.825298, 36.822464, 28.911469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053364, 36.804268, 29.211073>,  <32.354774, 37.339920, 28.882374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053364, 36.804268, 29.211073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440243, 36.708839, 29.245955>,  <32.672371, 36.651581, 29.266884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440243, 36.708839, 29.245955>,  <32.053364, 36.804268, 29.211073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440243, 36.708839, 29.245955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141683, -0.221759, 0.964753,
		-0.210797, -0.945473, -0.248285,
		0.967208, -0.238545, 0.087212,
		32.730404, 36.637268, 29.272116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077183, 36.048428, 29.556242>,  <32.053364, 36.804268, 29.211073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077183, 36.048428, 29.556242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422943, 36.238579, 29.621752>,  <32.630402, 36.352669, 29.661058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422943, 36.238579, 29.621752>,  <32.077183, 36.048428, 29.556242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422943, 36.238579, 29.621752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035986, -0.266403, 0.963190,
		0.501508, -0.838479, -0.213173,
		0.864404, 0.475376, 0.163777,
		32.682266, 36.381191, 29.670885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456646, 35.619804, 29.913500>,  <32.077183, 36.048428, 29.556242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456646, 35.619804, 29.913500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657639, 35.955173, 29.997940>,  <32.778236, 36.156395, 30.048605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657639, 35.955173, 29.997940>,  <32.456646, 35.619804, 29.913500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657639, 35.955173, 29.997940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159745, -0.329991, 0.930370,
		0.849700, -0.433775, -0.299748,
		0.502485, 0.838419, 0.211100,
		32.808384, 36.206699, 30.061270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043743, 35.385262, 30.240490>,  <32.456646, 35.619804, 29.913500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043743, 35.385262, 30.240490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037579, 35.776566, 30.323223>,  <33.033882, 36.011349, 30.372862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037579, 35.776566, 30.323223>,  <33.043743, 35.385262, 30.240490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037579, 35.776566, 30.323223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334716, -0.189874, 0.922991,
		0.942193, 0.083452, -0.324512,
		-0.015409, 0.978255, 0.206831,
		33.032955, 36.070042, 30.385273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721092, 35.499935, 30.578136>,  <33.043743, 35.385262, 30.240490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721092, 35.499935, 30.578136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459419, 35.785751, 30.677319>,  <33.302418, 35.957241, 30.736828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459419, 35.785751, 30.677319>,  <33.721092, 35.499935, 30.578136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459419, 35.785751, 30.677319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037964, -0.358445, 0.932778,
		0.755386, 0.600791, 0.261615,
		-0.654179, 0.714540, 0.247956,
		33.263165, 36.000114, 30.751705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044296, 35.804955, 31.105621>,  <33.721092, 35.499935, 30.578136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044296, 35.804955, 31.105621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654625, 35.886539, 31.144360>,  <33.420822, 35.935490, 31.167603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654625, 35.886539, 31.144360>,  <34.044296, 35.804955, 31.105621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654625, 35.886539, 31.144360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058040, -0.188294, 0.980396,
		0.218202, 0.960700, 0.171594,
		-0.974176, 0.203965, 0.096845,
		33.362373, 35.947727, 31.173412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358345, 36.360271, 31.467318>,  <34.044296, 35.804955, 31.105621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358345, 36.360271, 31.467318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676167, 36.602383, 31.486578>,  <34.866859, 36.747650, 31.498135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676167, 36.602383, 31.486578>,  <34.358345, 36.360271, 31.467318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676167, 36.602383, 31.486578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138641, 0.258056, -0.956131,
		-0.591154, 0.753022, 0.288956,
		0.794554, 0.605281, 0.048151,
		34.914532, 36.783966, 31.501022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276672, 36.919899, 30.923620>,  <34.358345, 36.360271, 31.467318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276672, 36.919899, 30.923620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663063, 36.933445, 31.026182>,  <34.894897, 36.941574, 31.087719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663063, 36.933445, 31.026182>,  <34.276672, 36.919899, 30.923620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663063, 36.933445, 31.026182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256132, 0.012272, -0.966564,
		-0.035880, 0.999351, 0.003181,
		0.965976, 0.033866, 0.256406,
		34.952854, 36.943604, 31.103104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533607, 37.413948, 30.449524>,  <34.276672, 36.919899, 30.923620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533607, 37.413948, 30.449524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851021, 37.211246, 30.584288>,  <35.041470, 37.089626, 30.665146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851021, 37.211246, 30.584288>,  <34.533607, 37.413948, 30.449524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851021, 37.211246, 30.584288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322553, -0.119202, -0.939016,
		0.516013, 0.853808, 0.068866,
		0.793530, -0.506758, 0.336908,
		35.089081, 37.059219, 30.685360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123653, 37.790226, 30.208961>,  <34.533607, 37.413948, 30.449524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123653, 37.790226, 30.208961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206520, 37.406761, 30.286989>,  <35.256241, 37.176682, 30.333805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206520, 37.406761, 30.286989>,  <35.123653, 37.790226, 30.208961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206520, 37.406761, 30.286989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182160, -0.158109, -0.970474,
		0.961198, 0.236580, 0.141875,
		0.207163, -0.958661, 0.195069,
		35.268669, 37.119164, 30.345510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756618, 37.696697, 29.876577>,  <35.123653, 37.790226, 30.208961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756618, 37.696697, 29.876577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641113, 37.318428, 29.936340>,  <35.571812, 37.091465, 29.972198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641113, 37.318428, 29.936340>,  <35.756618, 37.696697, 29.876577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641113, 37.318428, 29.936340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154222, -0.199961, -0.967591,
		0.944898, -0.256361, 0.203585,
		-0.288761, -0.945672, 0.149406,
		35.554485, 37.034725, 29.981161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257687, 37.293976, 29.573750>,  <35.756618, 37.696697, 29.876577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257687, 37.293976, 29.573750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944878, 37.045357, 29.592180>,  <35.757195, 36.896183, 29.603239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944878, 37.045357, 29.592180>,  <36.257687, 37.293976, 29.573750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944878, 37.045357, 29.592180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122815, -0.226159, -0.966317,
		0.611035, -0.750019, 0.253196,
		-0.782019, -0.621550, 0.046078,
		35.710274, 36.858891, 29.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482880, 36.647305, 29.370037>,  <36.257687, 37.293976, 29.573750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482880, 36.647305, 29.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086601, 36.664738, 29.318457>,  <35.848835, 36.675198, 29.287508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086601, 36.664738, 29.318457>,  <36.482880, 36.647305, 29.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086601, 36.664738, 29.318457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120580, -0.158551, -0.979960,
		-0.063150, -0.986389, 0.151821,
		-0.990694, 0.043578, -0.128951,
		35.789394, 36.677811, 29.279772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423786, 36.089901, 28.942406>,  <36.482880, 36.647305, 29.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423786, 36.089901, 28.942406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092579, 36.303234, 28.873186>,  <35.893856, 36.431232, 28.831654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092579, 36.303234, 28.873186>,  <36.423786, 36.089901, 28.942406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092579, 36.303234, 28.873186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063732, -0.217107, -0.974065,
		-0.557070, -0.817571, 0.145778,
		-0.828017, 0.533332, -0.173049,
		35.844173, 36.463234, 28.821272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995834, 35.629719, 28.632378>,  <36.423786, 36.089901, 28.942406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995834, 35.629719, 28.632378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883873, 36.002567, 28.540459>,  <35.816696, 36.226276, 28.485308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883873, 36.002567, 28.540459>,  <35.995834, 35.629719, 28.632378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883873, 36.002567, 28.540459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148629, -0.278555, -0.948850,
		-0.948452, -0.231435, 0.216510,
		-0.279907, 0.932119, -0.229798,
		35.799900, 36.282204, 28.471519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370411, 35.586273, 28.197664>,  <35.995834, 35.629719, 28.632378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370411, 35.586273, 28.197664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509060, 35.955158, 28.129114>,  <35.592251, 36.176491, 28.087984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509060, 35.955158, 28.129114>,  <35.370411, 35.586273, 28.197664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509060, 35.955158, 28.129114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311294, -0.059248, -0.948465,
		-0.884844, 0.382107, 0.266544,
		0.346623, 0.922217, -0.171373,
		35.613049, 36.231823, 28.077702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990948, 35.838161, 27.620979>,  <35.370411, 35.586273, 28.197664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990948, 35.838161, 27.620979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315773, 36.069664, 27.650896>,  <35.510670, 36.208565, 27.668846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315773, 36.069664, 27.650896>,  <34.990948, 35.838161, 27.620979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315773, 36.069664, 27.650896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024062, 0.161260, -0.986619,
		-0.583075, 0.799396, 0.144879,
		0.812062, 0.578759, 0.074791,
		35.559391, 36.243290, 27.673334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823452, 36.346848, 27.103004>,  <34.990948, 35.838161, 27.620979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823452, 36.346848, 27.103004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218246, 36.349319, 27.167269>,  <35.455124, 36.350803, 27.205828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218246, 36.349319, 27.167269>,  <34.823452, 36.346848, 27.103004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218246, 36.349319, 27.167269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158239, 0.139593, -0.977484,
		-0.028469, 0.990190, 0.136799,
		0.986990, 0.006181, 0.160661,
		35.514343, 36.351173, 27.215467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048626, 36.938801, 26.828741>,  <34.823452, 36.346848, 27.103004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048626, 36.938801, 26.828741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366898, 36.696793, 26.840380>,  <35.557861, 36.551590, 26.847363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366898, 36.696793, 26.840380>,  <35.048626, 36.938801, 26.828741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366898, 36.696793, 26.840380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124580, 0.116449, -0.985353,
		0.592766, 0.787652, 0.168029,
		0.795682, -0.605016, 0.029099,
		35.605602, 36.515289, 26.849110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556110, 37.273357, 26.472223>,  <35.048626, 36.938801, 26.828741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556110, 37.273357, 26.472223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665283, 36.888554, 26.474745>,  <35.730785, 36.657669, 26.476257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665283, 36.888554, 26.474745>,  <35.556110, 37.273357, 26.472223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665283, 36.888554, 26.474745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221344, 0.056417, -0.973563,
		0.936225, 0.267108, 0.228333,
		0.272929, -0.962014, 0.006304,
		35.747162, 36.599949, 26.476637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135921, 37.166103, 25.997129>,  <35.556110, 37.273357, 26.472223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135921, 37.166103, 25.997129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010223, 36.786766, 26.014585>,  <35.934807, 36.559166, 26.025059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010223, 36.786766, 26.014585>,  <36.135921, 37.166103, 25.997129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010223, 36.786766, 26.014585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223485, -0.118576, -0.967468,
		0.922662, -0.294268, 0.249201,
		-0.314244, -0.948339, 0.043641,
		35.915951, 36.502266, 26.027678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695236, 36.820324, 25.736170>,  <36.135921, 37.166103, 25.997129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695236, 36.820324, 25.736170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364601, 36.601643, 25.682692>,  <36.166222, 36.470436, 25.650604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364601, 36.601643, 25.682692>,  <36.695236, 36.820324, 25.736170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364601, 36.601643, 25.682692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315241, -0.252945, -0.914681,
		0.466238, -0.798210, 0.381423,
		-0.826586, -0.546699, -0.133696,
		36.116627, 36.437634, 25.642582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952568, 36.170986, 25.550171>,  <36.695236, 36.820324, 25.736170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952568, 36.170986, 25.550171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572289, 36.176613, 25.426252>,  <36.344120, 36.179989, 25.351902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572289, 36.176613, 25.426252>,  <36.952568, 36.170986, 25.550171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572289, 36.176613, 25.426252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274763, -0.424979, -0.862495,
		-0.143789, -0.905094, 0.400162,
		-0.950699, 0.014068, -0.309794,
		36.287079, 36.180832, 25.333315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908775, 35.561111, 25.141977>,  <36.952568, 36.170986, 25.550171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908775, 35.561111, 25.141977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595486, 35.788471, 25.041191>,  <36.407513, 35.924885, 24.980719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595486, 35.788471, 25.041191>,  <36.908775, 35.561111, 25.141977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595486, 35.788471, 25.041191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138880, -0.235079, -0.962003,
		-0.606031, -0.788457, 0.105180,
		-0.783224, 0.568396, -0.251966,
		36.360519, 35.958988, 24.965601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541813, 35.162170, 24.696337>,  <36.908775, 35.561111, 25.141977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541813, 35.162170, 24.696337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382729, 35.522858, 24.628540>,  <36.287277, 35.739269, 24.587862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382729, 35.522858, 24.628540>,  <36.541813, 35.162170, 24.696337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382729, 35.522858, 24.628540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017471, -0.177256, -0.984010,
		-0.917343, -0.394315, 0.054744,
		-0.397714, 0.901718, -0.169493,
		36.263416, 35.793373, 24.577692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018497, 35.087971, 24.187450>,  <36.541813, 35.162170, 24.696337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018497, 35.087971, 24.187450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097691, 35.479401, 24.164837>,  <36.145206, 35.714260, 24.151268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097691, 35.479401, 24.164837>,  <36.018497, 35.087971, 24.187450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097691, 35.479401, 24.164837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054295, -0.068537, -0.996170,
		-0.978701, 0.194152, -0.066700,
		0.197980, 0.978574, -0.056536,
		36.157085, 35.772972, 24.147877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528133, 35.415379, 23.696840>,  <36.018497, 35.087971, 24.187450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528133, 35.415379, 23.696840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842152, 35.662594, 23.713455>,  <36.030563, 35.810925, 23.723425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842152, 35.662594, 23.713455>,  <35.528133, 35.415379, 23.696840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842152, 35.662594, 23.713455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066725, -0.017707, -0.997614,
		-0.615832, 0.785945, -0.055140,
		0.785047, 0.618042, 0.041537,
		36.077667, 35.848007, 23.725916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412121, 35.943737, 23.216606>,  <35.528133, 35.415379, 23.696840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412121, 35.943737, 23.216606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806431, 35.947659, 23.283718>,  <36.043018, 35.950012, 23.323984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806431, 35.947659, 23.283718>,  <35.412121, 35.943737, 23.216606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806431, 35.947659, 23.283718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161512, 0.220746, -0.961865,
		-0.046470, 0.975282, 0.216022,
		0.985776, 0.009808, 0.167778,
		36.102165, 35.950600, 23.334051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651928, 36.314323, 22.663784>,  <35.412121, 35.943737, 23.216606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651928, 36.314323, 22.663784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993740, 36.158123, 22.800770>,  <36.198830, 36.064404, 22.882961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993740, 36.158123, 22.800770>,  <35.651928, 36.314323, 22.663784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993740, 36.158123, 22.800770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377553, 0.014214, -0.925879,
		0.356690, 0.920492, 0.159582,
		0.854533, -0.390502, 0.342464,
		36.250099, 36.040974, 22.903509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160496, 36.822033, 22.512861>,  <35.651928, 36.314323, 22.663784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160496, 36.822033, 22.512861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292084, 36.445587, 22.544050>,  <36.371037, 36.219719, 22.562763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292084, 36.445587, 22.544050>,  <36.160496, 36.822033, 22.512861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292084, 36.445587, 22.544050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272466, 0.015533, -0.962040,
		0.904180, 0.337727, 0.261532,
		0.328970, -0.941116, 0.077974,
		36.390774, 36.163254, 22.567442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703987, 36.812271, 22.144211>,  <36.160496, 36.822033, 22.512861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703987, 36.812271, 22.144211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617798, 36.423668, 22.183699>,  <36.566086, 36.190506, 22.207392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617798, 36.423668, 22.183699>,  <36.703987, 36.812271, 22.144211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617798, 36.423668, 22.183699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178830, -0.138640, -0.974063,
		0.959996, -0.192228, 0.203608,
		-0.215470, -0.971508, 0.098717,
		36.553158, 36.132217, 22.213314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182487, 36.560158, 21.700823>,  <36.703987, 36.812271, 22.144211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182487, 36.560158, 21.700823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960052, 36.234726, 21.768780>,  <36.826591, 36.039467, 21.809555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960052, 36.234726, 21.768780>,  <37.182487, 36.560158, 21.700823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960052, 36.234726, 21.768780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251628, -0.359623, -0.898529,
		0.792119, -0.456909, 0.404699,
		-0.556085, -0.813576, 0.169893,
		36.793228, 35.990654, 21.819748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553490, 36.076839, 21.431198>,  <37.182487, 36.560158, 21.700823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553490, 36.076839, 21.431198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173737, 35.951981, 21.445311>,  <36.945885, 35.877068, 21.453777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173737, 35.951981, 21.445311>,  <37.553490, 36.076839, 21.431198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173737, 35.951981, 21.445311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060105, -0.290738, -0.954913,
		0.308327, -0.904454, 0.294782,
		-0.949379, -0.312143, 0.035280,
		36.888924, 35.858337, 21.455894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601513, 35.488533, 21.081314>,  <37.553490, 36.076839, 21.431198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601513, 35.488533, 21.081314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208317, 35.561096, 21.069891>,  <36.972397, 35.604633, 21.063038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208317, 35.561096, 21.069891>,  <37.601513, 35.488533, 21.081314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208317, 35.561096, 21.069891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057754, -0.453002, -0.889637,
		-0.174319, -0.872858, 0.455775,
		-0.982994, 0.181403, -0.028555,
		36.913418, 35.615517, 21.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294136, 34.880856, 20.941580>,  <37.601513, 35.488533, 21.081314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294136, 34.880856, 20.941580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058449, 35.166473, 20.790339>,  <36.917038, 35.337845, 20.699594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058449, 35.166473, 20.790339>,  <37.294136, 34.880856, 20.941580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058449, 35.166473, 20.790339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048850, -0.498589, -0.865461,
		-0.806498, -0.491472, 0.328657,
		-0.589215, 0.714048, -0.378102,
		36.881683, 35.380688, 20.676908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754375, 34.565464, 20.562666>,  <37.294136, 34.880856, 20.941580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754375, 34.565464, 20.562666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758068, 34.937614, 20.416069>,  <36.760284, 35.160904, 20.328112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758068, 34.937614, 20.416069>,  <36.754375, 34.565464, 20.562666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758068, 34.937614, 20.416069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112830, -0.363197, -0.924855,
		-0.993571, 0.049887, 0.101622,
		0.009229, 0.930376, -0.366491,
		36.760838, 35.216728, 20.306122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228561, 34.590912, 20.004608>,  <36.754375, 34.565464, 20.562666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228561, 34.590912, 20.004608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421101, 34.933384, 19.929506>,  <36.536625, 35.138866, 19.884445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421101, 34.933384, 19.929506>,  <36.228561, 34.590912, 20.004608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421101, 34.933384, 19.929506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016157, -0.205499, -0.978524,
		-0.876378, 0.474049, -0.085084,
		0.481353, 0.856182, -0.187754,
		36.565506, 35.190239, 19.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049011, 34.703049, 19.264622>,  <36.228561, 34.590912, 20.004608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049011, 34.703049, 19.264622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362652, 34.945415, 19.318357>,  <36.550838, 35.090836, 19.350599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362652, 34.945415, 19.318357>,  <36.049011, 34.703049, 19.264622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362652, 34.945415, 19.318357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269816, -0.137878, -0.952989,
		-0.558909, 0.783490, -0.271596,
		0.784104, 0.605916, 0.134337,
		36.597881, 35.127190, 19.358658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168076, 35.029049, 18.652468>,  <36.049011, 34.703049, 19.264622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168076, 35.029049, 18.652468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512108, 35.125797, 18.832136>,  <36.718529, 35.183846, 18.939938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512108, 35.125797, 18.832136>,  <36.168076, 35.029049, 18.652468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512108, 35.125797, 18.832136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489541, -0.143550, -0.860083,
		-0.143550, 0.959631, -0.241871,
		0.860083, 0.241871, 0.449172,
		36.770134, 35.198360, 18.966888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438934, 35.625088, 18.367680>,  <36.168076, 35.029049, 18.652468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438934, 35.625088, 18.367680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745510, 35.395035, 18.482075>,  <36.929455, 35.257004, 18.550713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745510, 35.395035, 18.482075>,  <36.438934, 35.625088, 18.367680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745510, 35.395035, 18.482075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327336, -0.033351, -0.944319,
		0.552650, 0.817377, 0.162701,
		0.766439, -0.575136, 0.285988,
		36.975441, 35.222492, 18.567871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117321, 36.029160, 18.312124>,  <36.438934, 35.625088, 18.367680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117321, 36.029160, 18.312124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244453, 35.649906, 18.310316>,  <37.320732, 35.422352, 18.309231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244453, 35.649906, 18.310316>,  <37.117321, 36.029160, 18.312124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244453, 35.649906, 18.310316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401853, 0.139022, -0.905089,
		0.858776, 0.285851, 0.425197,
		0.317833, -0.948136, -0.004519,
		37.339802, 35.365467, 18.308960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864784, 36.081459, 18.114681>,  <37.117321, 36.029160, 18.312124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864784, 36.081459, 18.114681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775253, 35.693775, 18.073626>,  <37.721535, 35.461166, 18.048992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775253, 35.693775, 18.073626>,  <37.864784, 36.081459, 18.114681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775253, 35.693775, 18.073626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473194, -0.016004, -0.880813,
		0.852049, -0.245721, 0.462206,
		-0.223831, -0.969208, -0.102637,
		37.708103, 35.403011, 18.042835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424389, 35.649456, 18.098610>,  <37.864784, 36.081459, 18.114681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424389, 35.649456, 18.098610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142937, 35.458191, 17.888369>,  <37.974064, 35.343433, 17.762224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142937, 35.458191, 17.888369>,  <38.424389, 35.649456, 18.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142937, 35.458191, 17.888369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579268, 0.042386, -0.814035,
		0.411519, -0.877248, 0.247160,
		-0.703635, -0.478162, -0.525604,
		37.931847, 35.314743, 17.730688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718597, 35.251808, 17.460665>,  <38.424389, 35.649456, 18.098610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718597, 35.251808, 17.460665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338085, 35.336674, 17.371170>,  <38.109779, 35.387592, 17.317472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338085, 35.336674, 17.371170>,  <38.718597, 35.251808, 17.460665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338085, 35.336674, 17.371170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251533, 0.114287, -0.961077,
		-0.178337, -0.970528, -0.162085,
		-0.951276, 0.212165, -0.223739,
		38.052704, 35.400322, 17.304049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338032, 35.174698, 17.787441>,  <38.718597, 35.251808, 17.460665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338032, 35.174698, 17.787441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719425, 35.064175, 17.835640>,  <39.948261, 34.997860, 17.864559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719425, 35.064175, 17.835640>,  <39.338032, 35.174698, 17.787441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719425, 35.064175, 17.835640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077513, 0.161564, 0.983813,
		-0.291302, -0.947392, 0.132632,
		0.953486, -0.276306, 0.120499,
		40.005470, 34.981281, 17.871790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336246, 34.672565, 18.287745>,  <39.338032, 35.174698, 17.787441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336246, 34.672565, 18.287745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683311, 34.871143, 18.277138>,  <39.891552, 34.990292, 18.270773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683311, 34.871143, 18.277138>,  <39.336246, 34.672565, 18.287745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683311, 34.871143, 18.277138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060607, 0.158563, 0.985487,
		0.493444, -0.853464, 0.167668,
		0.867663, 0.496445, -0.026516,
		39.943611, 35.020077, 18.269182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730648, 34.372055, 18.848026>,  <39.336246, 34.672565, 18.287745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730648, 34.372055, 18.848026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882030, 34.731323, 18.758524>,  <39.972858, 34.946884, 18.704823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882030, 34.731323, 18.758524>,  <39.730648, 34.372055, 18.848026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882030, 34.731323, 18.758524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108265, 0.283031, 0.952981,
		0.919268, -0.336432, 0.204353,
		0.378452, 0.898169, -0.223758,
		39.995567, 35.000774, 18.691397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099346, 34.502323, 19.351427>,  <39.730648, 34.372055, 18.848026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099346, 34.502323, 19.351427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089760, 34.873882, 19.203606>,  <40.084007, 35.096817, 19.114912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089760, 34.873882, 19.203606>,  <40.099346, 34.502323, 19.351427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089760, 34.873882, 19.203606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105381, 0.365253, 0.924924,
		0.994143, 0.061110, 0.089135,
		-0.023966, 0.928901, -0.369553,
		40.082569, 35.152554, 19.092739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666561, 34.890167, 19.693516>,  <40.099346, 34.502323, 19.351427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666561, 34.890167, 19.693516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400990, 35.153152, 19.550999>,  <40.241646, 35.310944, 19.465488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400990, 35.153152, 19.550999>,  <40.666561, 34.890167, 19.693516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400990, 35.153152, 19.550999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029303, 0.498964, 0.866127,
		0.747219, 0.564609, -0.350543,
		-0.663932, 0.657459, -0.356291,
		40.201809, 35.350391, 19.444111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908573, 35.478870, 19.954802>,  <40.666561, 34.890167, 19.693516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908573, 35.478870, 19.954802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537441, 35.594578, 19.860605>,  <40.314762, 35.664001, 19.804089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537441, 35.594578, 19.860605>,  <40.908573, 35.478870, 19.954802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537441, 35.594578, 19.860605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135832, 0.325958, 0.935575,
		0.347389, 0.900043, -0.263142,
		-0.927831, 0.289265, -0.235488,
		40.259090, 35.681358, 19.789959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884327, 36.233101, 20.217228>,  <40.908573, 35.478870, 19.954802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884327, 36.233101, 20.217228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520885, 36.067188, 20.197624>,  <40.302822, 35.967640, 20.185862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520885, 36.067188, 20.197624>,  <40.884327, 36.233101, 20.217228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520885, 36.067188, 20.197624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231527, 0.402520, 0.885648,
		-0.347624, 0.816047, -0.461763,
		-0.908599, -0.414783, -0.049011,
		40.248306, 35.942753, 20.182920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413937, 36.798275, 20.487808>,  <40.884327, 36.233101, 20.217228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413937, 36.798275, 20.487808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207821, 36.456795, 20.517933>,  <40.084152, 36.251907, 20.536007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207821, 36.456795, 20.517933>,  <40.413937, 36.798275, 20.487808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207821, 36.456795, 20.517933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278995, 0.250187, 0.927129,
		-0.810335, 0.456725, -0.367097,
		-0.515286, -0.853703, 0.075312,
		40.053234, 36.200684, 20.540525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734531, 37.015213, 20.810492>,  <40.413937, 36.798275, 20.487808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734531, 37.015213, 20.810492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757896, 36.618675, 20.857521>,  <39.771915, 36.380753, 20.885738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757896, 36.618675, 20.857521>,  <39.734531, 37.015213, 20.810492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757896, 36.618675, 20.857521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430890, 0.081201, 0.898744,
		-0.900512, -0.103164, -0.422417,
		0.058417, -0.991344, 0.117575,
		39.775421, 36.321274, 20.892794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105740, 36.873066, 21.147306>,  <39.734531, 37.015213, 20.810492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105740, 36.873066, 21.147306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340672, 36.560188, 21.230463>,  <39.481628, 36.372463, 21.280357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340672, 36.560188, 21.230463>,  <39.105740, 36.873066, 21.147306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340672, 36.560188, 21.230463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388210, -0.046875, 0.920378,
		-0.710169, -0.621270, -0.331186,
		0.587327, -0.782193, 0.207894,
		39.516869, 36.325531, 21.292831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635201, 36.379513, 21.564888>,  <39.105740, 36.873066, 21.147306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635201, 36.379513, 21.564888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018726, 36.282619, 21.624205>,  <39.248844, 36.224483, 21.659796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018726, 36.282619, 21.624205>,  <38.635201, 36.379513, 21.564888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018726, 36.282619, 21.624205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182195, -0.124036, 0.975408,
		-0.217887, -0.962256, -0.163063,
		0.958817, -0.242238, 0.148292,
		39.306374, 36.209949, 21.668692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643639, 35.630478, 21.954109>,  <38.635201, 36.379513, 21.564888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643639, 35.630478, 21.954109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985542, 35.831032, 22.007759>,  <39.190685, 35.951366, 22.039949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985542, 35.831032, 22.007759>,  <38.643639, 35.630478, 21.954109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985542, 35.831032, 22.007759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087259, -0.115921, 0.989418,
		0.511632, -0.857421, -0.055334,
		0.854762, 0.501389, 0.134127,
		39.241970, 35.981449, 22.047997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050434, 35.276352, 22.562883>,  <38.643639, 35.630478, 21.954109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050434, 35.276352, 22.562883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222534, 35.634930, 22.520416>,  <39.325794, 35.850075, 22.494936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222534, 35.634930, 22.520416>,  <39.050434, 35.276352, 22.562883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222534, 35.634930, 22.520416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114929, 0.062254, 0.991421,
		0.895365, -0.438759, -0.076243,
		0.430248, 0.896446, -0.106166,
		39.351608, 35.903862, 22.488567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843182, 35.180012, 22.842779>,  <39.050434, 35.276352, 22.562883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843182, 35.180012, 22.842779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747204, 35.567444, 22.868927>,  <39.689617, 35.799904, 22.884615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747204, 35.567444, 22.868927>,  <39.843182, 35.180012, 22.842779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747204, 35.567444, 22.868927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026497, -0.060776, 0.997800,
		0.970426, 0.241144, -0.011082,
		-0.239940, 0.968585, 0.065368,
		39.675220, 35.858021, 22.888538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195465, 35.362938, 23.376514>,  <39.843182, 35.180012, 22.842779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195465, 35.362938, 23.376514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901337, 35.632114, 23.344385>,  <39.724861, 35.793621, 23.325108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901337, 35.632114, 23.344385>,  <40.195465, 35.362938, 23.376514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901337, 35.632114, 23.344385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052861, 0.061207, 0.996724,
		0.675656, 0.737156, -0.009434,
		-0.735319, 0.672945, -0.080322,
		39.680740, 35.834000, 23.320288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323376, 35.867607, 23.857876>,  <40.195465, 35.362938, 23.376514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323376, 35.867607, 23.857876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933491, 35.882641, 23.769756>,  <39.699562, 35.891663, 23.716885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933491, 35.882641, 23.769756>,  <40.323376, 35.867607, 23.857876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933491, 35.882641, 23.769756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216401, 0.087440, 0.972381,
		0.055811, 0.995461, -0.077095,
		-0.974708, 0.037586, -0.220299,
		39.641079, 35.893917, 23.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147209, 36.255089, 24.344656>,  <40.323376, 35.867607, 23.857876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147209, 36.255089, 24.344656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802158, 36.085548, 24.234217>,  <39.595127, 35.983826, 24.167953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802158, 36.085548, 24.234217>,  <40.147209, 36.255089, 24.344656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802158, 36.085548, 24.234217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224278, -0.168769, 0.959800,
		-0.453408, 0.889870, 0.050524,
		-0.862624, -0.423850, -0.276100,
		39.543369, 35.958393, 24.151386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496292, 36.645329, 24.714334>,  <40.147209, 36.255089, 24.344656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496292, 36.645329, 24.714334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372822, 36.286167, 24.588802>,  <39.298740, 36.070671, 24.513483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372822, 36.286167, 24.588802>,  <39.496292, 36.645329, 24.714334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372822, 36.286167, 24.588802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464790, -0.145480, 0.873388,
		-0.829875, 0.415454, -0.372431,
		-0.308671, -0.897905, -0.313829,
		39.280220, 36.016796, 24.494654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828987, 36.697769, 24.805540>,  <39.496292, 36.645329, 24.714334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828987, 36.697769, 24.805540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905346, 36.306561, 24.771975>,  <38.951160, 36.071835, 24.751835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905346, 36.306561, 24.771975>,  <38.828987, 36.697769, 24.805540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905346, 36.306561, 24.771975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539365, -0.175933, 0.823488,
		-0.820149, -0.111940, -0.561093,
		0.190896, -0.978017, -0.083915,
		38.962616, 36.013157, 24.746799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240673, 36.321236, 24.861036>,  <38.828987, 36.697769, 24.805540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240673, 36.321236, 24.861036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498367, 36.026402, 24.942690>,  <38.652985, 35.849503, 24.991682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498367, 36.026402, 24.942690>,  <38.240673, 36.321236, 24.861036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498367, 36.026402, 24.942690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479729, -0.181562, 0.858426,
		-0.595668, -0.650957, -0.470568,
		0.644236, -0.737082, 0.204133,
		38.691639, 35.805279, 25.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836903, 35.747402, 25.046629>,  <38.240673, 36.321236, 24.861036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836903, 35.747402, 25.046629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203445, 35.695721, 25.198204>,  <38.423370, 35.664711, 25.289148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203445, 35.695721, 25.198204>,  <37.836903, 35.747402, 25.046629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203445, 35.695721, 25.198204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393358, -0.114310, 0.912252,
		-0.074552, -0.985007, -0.155573,
		0.916358, -0.129206, 0.378938,
		38.478352, 35.656960, 25.311886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765873, 35.344124, 25.639078>,  <37.836903, 35.747402, 25.046629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765873, 35.344124, 25.639078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143631, 35.463333, 25.694641>,  <38.370285, 35.534859, 25.727978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143631, 35.463333, 25.694641>,  <37.765873, 35.344124, 25.639078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143631, 35.463333, 25.694641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126458, -0.060751, 0.990110,
		0.303516, -0.952623, -0.019686,
		0.944398, 0.298024, 0.138905,
		38.426949, 35.552742, 25.736313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167671, 34.798794, 26.114559>,  <37.765873, 35.344124, 25.639078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167671, 34.798794, 26.114559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293133, 35.175632, 26.162020>,  <38.368408, 35.401737, 26.190496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293133, 35.175632, 26.162020>,  <38.167671, 34.798794, 26.114559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293133, 35.175632, 26.162020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062089, -0.104343, 0.992601,
		0.947506, -0.318697, 0.025766,
		0.313650, 0.942096, 0.118653,
		38.387226, 35.458260, 26.197617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420731, 34.813622, 26.803726>,  <38.167671, 34.798794, 26.114559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420731, 34.813622, 26.803726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439064, 35.202293, 26.711004>,  <38.450066, 35.435497, 26.655371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439064, 35.202293, 26.711004>,  <38.420731, 34.813622, 26.803726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439064, 35.202293, 26.711004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173459, 0.236264, 0.956081,
		0.983774, -0.003616, 0.179377,
		0.045838, 0.971682, -0.231803,
		38.452816, 35.493797, 26.641464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857983, 35.105904, 27.370234>,  <38.420731, 34.813622, 26.803726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857983, 35.105904, 27.370234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661629, 35.399750, 27.182886>,  <38.543816, 35.576057, 27.070477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661629, 35.399750, 27.182886>,  <38.857983, 35.105904, 27.370234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661629, 35.399750, 27.182886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125450, 0.472397, 0.872412,
		0.862145, 0.487012, -0.139735,
		-0.490885, 0.734616, -0.468371,
		38.514362, 35.620136, 27.042376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199230, 35.716267, 27.612673>,  <38.857983, 35.105904, 27.370234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199230, 35.716267, 27.612673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820705, 35.792709, 27.508387>,  <38.593590, 35.838577, 27.445814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820705, 35.792709, 27.508387>,  <39.199230, 35.716267, 27.612673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820705, 35.792709, 27.508387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211314, 0.244627, 0.946311,
		0.244627, 0.950597, -0.191109,
		-0.946311, 0.191109, -0.260717,
		38.536812, 35.850040, 27.430172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157467, 36.381508, 27.870060>,  <39.199230, 35.716267, 27.612673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157467, 36.381508, 27.870060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788815, 36.237720, 27.811575>,  <38.567623, 36.151447, 27.776484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788815, 36.237720, 27.811575>,  <39.157467, 36.381508, 27.870060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788815, 36.237720, 27.811575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312612, 0.464486, 0.828569,
		-0.229931, 0.809343, -0.540459,
		-0.921632, -0.359468, -0.146211,
		38.512325, 36.129879, 27.767712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702641, 36.860722, 27.937382>,  <39.157467, 36.381508, 27.870060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702641, 36.860722, 27.937382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481796, 36.541519, 28.034010>,  <38.349289, 36.349998, 28.091988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481796, 36.541519, 28.034010>,  <38.702641, 36.860722, 27.937382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481796, 36.541519, 28.034010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251039, 0.435392, 0.864530,
		-0.795083, 0.416670, -0.440715,
		-0.552108, -0.798010, 0.241572,
		38.316162, 36.302116, 28.106482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263218, 37.169724, 28.498135>,  <38.702641, 36.860722, 27.937382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263218, 37.169724, 28.498135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183716, 36.778332, 28.520285>,  <38.136013, 36.543495, 28.533575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183716, 36.778332, 28.520285>,  <38.263218, 37.169724, 28.498135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183716, 36.778332, 28.520285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184337, 0.092817, 0.978471,
		-0.962557, 0.184270, -0.198818,
		-0.198756, -0.978483, 0.055374,
		38.124088, 36.484787, 28.536898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605061, 37.073425, 28.855970>,  <38.263218, 37.169724, 28.498135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605061, 37.073425, 28.855970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797703, 36.724289, 28.887505>,  <37.913288, 36.514809, 28.906425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797703, 36.724289, 28.887505>,  <37.605061, 37.073425, 28.855970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797703, 36.724289, 28.887505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094692, 0.037602, 0.994796,
		-0.871259, -0.486562, -0.064542,
		0.481603, -0.872836, 0.078835,
		37.942184, 36.462437, 28.911156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175449, 36.580704, 29.216053>,  <37.605061, 37.073425, 28.855970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175449, 36.580704, 29.216053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549896, 36.451263, 29.271147>,  <37.774563, 36.373600, 29.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549896, 36.451263, 29.271147>,  <37.175449, 36.580704, 29.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549896, 36.451263, 29.271147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033506, 0.307787, 0.950865,
		-0.350098, -0.894733, 0.277280,
		0.936113, -0.323606, 0.137735,
		37.830730, 36.354183, 29.312468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215630, 36.307117, 29.867821>,  <37.175449, 36.580704, 29.216053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215630, 36.307117, 29.867821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601616, 36.362988, 29.778982>,  <37.833210, 36.396511, 29.725679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601616, 36.362988, 29.778982>,  <37.215630, 36.307117, 29.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601616, 36.362988, 29.778982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175627, 0.284989, 0.942304,
		0.194910, -0.948300, 0.250475,
		0.964969, 0.139675, -0.222094,
		37.891106, 36.404892, 29.712355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623337, 35.951813, 30.373848>,  <37.215630, 36.307117, 29.867821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623337, 35.951813, 30.373848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906143, 36.196232, 30.231443>,  <38.075829, 36.342884, 30.146002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906143, 36.196232, 30.231443>,  <37.623337, 35.951813, 30.373848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906143, 36.196232, 30.231443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280910, 0.219334, 0.934335,
		0.649013, -0.760597, -0.016578,
		0.707016, 0.611052, -0.356010,
		38.118248, 36.379547, 30.124640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344120, 35.650482, 30.544941>,  <37.623337, 35.951813, 30.373848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344120, 35.650482, 30.544941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393757, 36.043388, 30.488716>,  <38.423538, 36.279133, 30.454981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393757, 36.043388, 30.488716>,  <38.344120, 35.650482, 30.544941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393757, 36.043388, 30.488716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607097, 0.036894, 0.793771,
		0.784879, -0.183836, -0.591751,
		0.124091, 0.982264, -0.140563,
		38.430984, 36.338066, 30.446547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025654, 35.777870, 30.693419>,  <38.344120, 35.650482, 30.544941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025654, 35.777870, 30.693419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901020, 36.157757, 30.705837>,  <38.826241, 36.385689, 30.713289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901020, 36.157757, 30.705837>,  <39.025654, 35.777870, 30.693419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901020, 36.157757, 30.705837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709905, 0.210937, 0.671968,
		0.631627, 0.231413, -0.739929,
		-0.311581, 0.949712, 0.031048,
		38.807545, 36.442669, 30.715151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533100, 36.130280, 30.611282>,  <39.025654, 35.777870, 30.693419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533100, 36.130280, 30.611282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282146, 36.380405, 30.796913>,  <39.131573, 36.530479, 30.908291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282146, 36.380405, 30.796913>,  <39.533100, 36.130280, 30.611282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282146, 36.380405, 30.796913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745714, 0.310818, 0.589324,
		0.224271, 0.715802, -0.661309,
		-0.627386, 0.625316, 0.464076,
		39.093929, 36.568001, 30.936136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905396, 36.815392, 30.687037>,  <39.533100, 36.130280, 30.611282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905396, 36.815392, 30.687037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602222, 36.830704, 30.947521>,  <39.420319, 36.839893, 31.103813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602222, 36.830704, 30.947521>,  <39.905396, 36.815392, 30.687037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602222, 36.830704, 30.947521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630420, 0.299579, 0.716117,
		-0.167673, 0.953303, -0.251196,
		-0.757929, 0.038285, 0.651213,
		39.374844, 36.842190, 31.142885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009911, 37.381886, 31.125534>,  <39.905396, 36.815392, 30.687037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009911, 37.381886, 31.125534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753178, 37.200237, 31.372704>,  <39.599140, 37.091248, 31.521006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753178, 37.200237, 31.372704>,  <40.009911, 37.381886, 31.125534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753178, 37.200237, 31.372704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547372, 0.293042, 0.783907,
		-0.537064, 0.841370, 0.060488,
		-0.641830, -0.454118, 0.617924,
		39.560627, 37.064003, 31.558081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816551, 37.826660, 31.781734>,  <40.009911, 37.381886, 31.125534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816551, 37.826660, 31.781734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721729, 37.462708, 31.917919>,  <39.664837, 37.244335, 31.999630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721729, 37.462708, 31.917919>,  <39.816551, 37.826660, 31.781734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721729, 37.462708, 31.917919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553203, 0.161656, 0.817211,
		-0.798605, 0.382073, 0.465028,
		-0.237059, -0.909883, 0.340463,
		39.650612, 37.189743, 32.020058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647839, 37.957386, 32.470570>,  <39.816551, 37.826660, 31.781734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647839, 37.957386, 32.470570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726906, 37.565979, 32.447163>,  <39.774345, 37.331135, 32.433121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726906, 37.565979, 32.447163>,  <39.647839, 37.957386, 32.470570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726906, 37.565979, 32.447163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518292, 0.053657, 0.853519,
		-0.832047, -0.199040, 0.517766,
		0.197666, -0.978521, -0.058516,
		39.786205, 37.272423, 32.429607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276192, 37.567543, 33.001148>,  <39.647839, 37.957386, 32.470570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276192, 37.567543, 33.001148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608257, 37.362328, 32.913868>,  <39.807499, 37.239197, 32.861500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608257, 37.362328, 32.913868>,  <39.276192, 37.567543, 33.001148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608257, 37.362328, 32.913868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243298, -0.018770, 0.969770,
		-0.501626, -0.858160, 0.109240,
		0.830167, -0.513039, -0.218204,
		39.857307, 37.208416, 32.848408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270550, 37.171234, 33.581211>,  <39.276192, 37.567543, 33.001148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270550, 37.171234, 33.581211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630547, 37.105984, 33.419518>,  <39.846542, 37.066833, 33.322502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630547, 37.105984, 33.419518>,  <39.270550, 37.171234, 33.581211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630547, 37.105984, 33.419518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382033, -0.151426, 0.911658,
		-0.209928, -0.974915, -0.073962,
		0.899989, -0.163126, -0.404239,
		39.900543, 37.057045, 33.298244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542999, 36.487820, 33.791683>,  <39.270550, 37.171234, 33.581211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542999, 36.487820, 33.791683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861923, 36.709961, 33.697124>,  <40.053276, 36.843246, 33.640388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861923, 36.709961, 33.697124>,  <39.542999, 36.487820, 33.791683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861923, 36.709961, 33.697124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395722, -0.185244, 0.899493,
		0.455744, -0.810721, -0.367462,
		0.797309, 0.555352, -0.236396,
		40.101116, 36.876568, 33.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122257, 36.134113, 34.175735>,  <39.542999, 36.487820, 33.791683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122257, 36.134113, 34.175735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266472, 36.499222, 34.098930>,  <40.353001, 36.718285, 34.052849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266472, 36.499222, 34.098930>,  <40.122257, 36.134113, 34.175735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266472, 36.499222, 34.098930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548567, -0.041007, 0.835101,
		0.754381, -0.406412, -0.515499,
		0.360534, 0.912770, -0.192009,
		40.374634, 36.773052, 34.041328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798466, 36.101803, 34.469536>,  <40.122257, 36.134113, 34.175735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798466, 36.101803, 34.469536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659142, 36.476196, 34.449074>,  <40.575546, 36.700832, 34.436794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659142, 36.476196, 34.449074>,  <40.798466, 36.101803, 34.469536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659142, 36.476196, 34.449074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203342, 0.128720, 0.970609,
		0.915059, 0.327669, -0.235159,
		-0.348308, 0.935983, -0.051158,
		40.554649, 36.756992, 34.433727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457832, 36.437664, 34.498703>,  <40.798466, 36.101803, 34.469536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457832, 36.437664, 34.498703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190048, 36.725960, 34.426750>,  <41.029377, 36.898937, 34.383579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190048, 36.725960, 34.426750>,  <41.457832, 36.437664, 34.498703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190048, 36.725960, 34.426750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199778, 0.407913, 0.890896,
		0.715478, 0.560485, -0.417070,
		-0.669462, 0.720738, -0.179880,
		40.989208, 36.942181, 34.372787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686001, 36.974651, 34.933411>,  <41.457832, 36.437664, 34.498703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686001, 36.974651, 34.933411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298962, 37.048908, 34.864956>,  <41.066738, 37.093464, 34.823883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298962, 37.048908, 34.864956>,  <41.686001, 36.974651, 34.933411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298962, 37.048908, 34.864956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125390, 0.234995, 0.963875,
		0.219154, 0.954103, -0.204103,
		-0.967599, 0.185645, -0.171135,
		41.008682, 37.104603, 34.813614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513649, 37.479855, 35.302628>,  <41.686001, 36.974651, 34.933411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513649, 37.479855, 35.302628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151176, 37.322067, 35.241650>,  <40.933693, 37.227394, 35.205063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151176, 37.322067, 35.241650>,  <41.513649, 37.479855, 35.302628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151176, 37.322067, 35.241650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275309, 0.276628, 0.920696,
		-0.321012, 0.876284, -0.359274,
		-0.906177, -0.394466, -0.152448,
		40.879322, 37.203728, 35.195915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068634, 37.845787, 35.793598>,  <41.513649, 37.479855, 35.302628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068634, 37.845787, 35.793598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769405, 37.604729, 35.682453>,  <40.589870, 37.460094, 35.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769405, 37.604729, 35.682453>,  <41.068634, 37.845787, 35.793598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769405, 37.604729, 35.682453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289704, -0.080141, 0.953755,
		-0.597048, 0.793972, -0.114639,
		-0.748067, -0.602650, -0.277865,
		40.544987, 37.423935, 35.599094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384403, 38.134430, 36.021126>,  <41.068634, 37.845787, 35.793598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384403, 38.134430, 36.021126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392326, 37.736843, 35.977974>,  <40.397079, 37.498291, 35.952084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392326, 37.736843, 35.977974>,  <40.384403, 38.134430, 36.021126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392326, 37.736843, 35.977974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190225, -0.109681, 0.975594,
		-0.981541, 0.001199, -0.191249,
		0.019807, -0.993966, -0.107884,
		40.398270, 37.438652, 35.945610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651371, 37.849606, 36.252605>,  <40.384403, 38.134430, 36.021126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651371, 37.849606, 36.252605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910507, 37.545536, 36.272354>,  <40.065990, 37.363094, 36.284203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910507, 37.545536, 36.272354>,  <39.651371, 37.849606, 36.252605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910507, 37.545536, 36.272354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078294, -0.001977, 0.996928,
		-0.757741, -0.649717, -0.060798,
		0.647842, -0.760173, 0.049371,
		40.104858, 37.317486, 36.287167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320545, 37.313148, 36.660709>,  <39.651371, 37.849606, 36.252605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320545, 37.313148, 36.660709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719749, 37.293621, 36.676678>,  <39.959270, 37.281906, 36.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719749, 37.293621, 36.676678>,  <39.320545, 37.313148, 36.660709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719749, 37.293621, 36.676678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042829, -0.060037, 0.997277,
		-0.046269, -0.997003, -0.062007,
		0.998010, -0.048799, 0.039923,
		40.019154, 37.278976, 36.688656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364567, 36.985722, 37.321869>,  <39.320545, 37.313148, 36.660709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364567, 36.985722, 37.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736530, 37.086048, 37.214275>,  <39.959709, 37.146244, 37.149719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736530, 37.086048, 37.214275>,  <39.364567, 36.985722, 37.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736530, 37.086048, 37.214275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242720, 0.130961, 0.961216,
		0.276315, -0.959135, 0.060904,
		0.929912, 0.250816, -0.268988,
		40.015503, 37.161293, 37.133579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701622, 36.539505, 37.651634>,  <39.364567, 36.985722, 37.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701622, 36.539505, 37.651634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923401, 36.866169, 37.587570>,  <40.056469, 37.062168, 37.549133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923401, 36.866169, 37.587570>,  <39.701622, 36.539505, 37.651634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923401, 36.866169, 37.587570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075058, 0.142595, 0.986931,
		0.828829, -0.559220, 0.017764,
		0.554445, 0.816664, -0.160161,
		40.089733, 37.111168, 37.539520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136204, 36.487755, 38.103104>,  <39.701622, 36.539505, 37.651634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136204, 36.487755, 38.103104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104351, 36.881519, 38.040379>,  <40.085239, 37.117779, 38.002743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104351, 36.881519, 38.040379>,  <40.136204, 36.487755, 38.103104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104351, 36.881519, 38.040379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082262, 0.163266, 0.983147,
		0.993424, 0.065394, -0.093982,
		-0.079636, 0.984412, -0.156813,
		40.080460, 37.176842, 37.993336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742020, 36.785610, 38.373062>,  <40.136204, 36.487755, 38.103104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742020, 36.785610, 38.373062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434334, 37.040451, 38.353424>,  <40.249722, 37.193356, 38.341640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434334, 37.040451, 38.353424>,  <40.742020, 36.785610, 38.373062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434334, 37.040451, 38.353424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110175, 0.207910, 0.971923,
		0.629423, 0.742207, -0.230120,
		-0.769213, 0.637104, -0.049091,
		40.203571, 37.231583, 38.338696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873768, 37.404663, 38.820187>,  <40.742020, 36.785610, 38.373062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873768, 37.404663, 38.820187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474277, 37.419106, 38.806042>,  <40.234585, 37.427773, 38.797554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474277, 37.419106, 38.806042>,  <40.873768, 37.404663, 38.820187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474277, 37.419106, 38.806042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020627, 0.347492, 0.937456,
		0.046136, 0.936988, -0.346303,
		-0.998722, 0.036108, -0.035359,
		40.174660, 37.429939, 38.795433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637138, 38.030510, 39.205029>,  <40.873768, 37.404663, 38.820187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637138, 38.030510, 39.205029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269615, 37.876812, 39.168903>,  <40.049103, 37.784595, 39.147228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269615, 37.876812, 39.168903>,  <40.637138, 38.030510, 39.205029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269615, 37.876812, 39.168903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234053, 0.346125, 0.908525,
		-0.317831, 0.855896, -0.407954,
		-0.918805, -0.384240, -0.090316,
		39.993973, 37.761539, 39.141808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203442, 38.553421, 39.362175>,  <40.637138, 38.030510, 39.205029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203442, 38.553421, 39.362175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997948, 38.217983, 39.434650>,  <39.874649, 38.016720, 39.478134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997948, 38.217983, 39.434650>,  <40.203442, 38.553421, 39.362175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997948, 38.217983, 39.434650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346638, 0.396066, 0.850279,
		-0.784803, 0.374014, -0.494164,
		-0.513737, -0.838597, 0.181187,
		39.843826, 37.966404, 39.489006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667759, 38.801720, 39.732399>,  <40.203442, 38.553421, 39.362175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667759, 38.801720, 39.732399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635929, 38.409744, 39.805485>,  <39.616829, 38.174557, 39.849335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635929, 38.409744, 39.805485>,  <39.667759, 38.801720, 39.732399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635929, 38.409744, 39.805485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408684, 0.199253, 0.890660,
		-0.909200, -0.003796, -0.416342,
		-0.079577, -0.979941, 0.182713,
		39.612057, 38.115761, 39.860298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968777, 38.504978, 39.853340>,  <39.667759, 38.801720, 39.732399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968777, 38.504978, 39.853340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277855, 38.369839, 40.068302>,  <39.463303, 38.288757, 40.197277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277855, 38.369839, 40.068302>,  <38.968777, 38.504978, 39.853340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277855, 38.369839, 40.068302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375813, 0.438802, 0.816221,
		-0.511570, -0.832654, 0.212094,
		0.772697, -0.337847, 0.537401,
		39.509663, 38.268486, 40.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830898, 38.187275, 40.575123>,  <38.968777, 38.504978, 39.853340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830898, 38.187275, 40.575123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219940, 38.276047, 40.602814>,  <39.453365, 38.329311, 40.619431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219940, 38.276047, 40.602814>,  <38.830898, 38.187275, 40.575123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219940, 38.276047, 40.602814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179059, 0.525196, 0.831930,
		0.148270, -0.821533, 0.550545,
		0.972601, 0.221931, 0.069232,
		39.511719, 38.342625, 40.623585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177025, 38.015835, 41.343670>,  <38.830898, 38.187275, 40.575123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177025, 38.015835, 41.343670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309292, 38.315956, 41.114689>,  <39.388653, 38.496029, 40.977299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309292, 38.315956, 41.114689>,  <39.177025, 38.015835, 41.343670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309292, 38.315956, 41.114689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104906, 0.632042, 0.767801,
		0.937898, -0.193835, 0.287708,
		0.330670, 0.750301, -0.572456,
		39.408493, 38.541046, 40.942951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666119, 37.553619, 41.197308>,  <39.177025, 38.015835, 41.343670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666119, 37.553619, 41.197308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901379, 37.278942, 41.368202>,  <39.042534, 37.114136, 41.470737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901379, 37.278942, 41.368202>,  <38.666119, 37.553619, 41.197308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901379, 37.278942, 41.368202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070052, -0.569534, -0.818977,
		0.805715, 0.451749, -0.383074,
		0.588146, -0.686698, 0.427236,
		39.077824, 37.072933, 41.496372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115650, 37.346016, 40.585159>,  <38.666119, 37.553619, 41.197308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115650, 37.346016, 40.585159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036575, 37.086971, 40.879513>,  <38.989132, 36.931545, 41.056126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036575, 37.086971, 40.879513>,  <39.115650, 37.346016, 40.585159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036575, 37.086971, 40.879513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136552, -0.725183, -0.674880,
		0.970708, -0.233901, 0.054926,
		-0.197686, -0.647611, 0.735881,
		38.977268, 36.892689, 41.100277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735207, 36.974457, 40.296036>,  <39.115650, 37.346016, 40.585159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735207, 36.974457, 40.296036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612404, 37.320774, 40.137970>,  <39.538723, 37.528564, 40.043129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612404, 37.320774, 40.137970>,  <39.735207, 36.974457, 40.296036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612404, 37.320774, 40.137970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192088, -0.350301, -0.916728,
		-0.932120, -0.357350, -0.058762,
		-0.307009, 0.865788, -0.395165,
		39.520302, 37.580509, 40.019421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243423, 36.789906, 39.721886>,  <39.735207, 36.974457, 40.296036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243423, 36.789906, 39.721886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393379, 37.152195, 39.642776>,  <39.483353, 37.369568, 39.595310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393379, 37.152195, 39.642776>,  <39.243423, 36.789906, 39.721886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393379, 37.152195, 39.642776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010496, -0.217469, -0.976011,
		-0.927009, 0.363824, -0.091034,
		0.374893, 0.905726, -0.197777,
		39.505848, 37.423912, 39.583443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865498, 37.037609, 39.118015>,  <39.243423, 36.789906, 39.721886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865498, 37.037609, 39.118015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210522, 37.238983, 39.138203>,  <39.417534, 37.359810, 39.150314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210522, 37.238983, 39.138203>,  <38.865498, 37.037609, 39.118015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210522, 37.238983, 39.138203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151458, -0.161747, -0.975140,
		-0.482759, 0.848757, -0.215765,
		0.862557, 0.503438, 0.050466,
		39.469288, 37.390015, 39.153343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907887, 37.643902, 38.723175>,  <38.865498, 37.037609, 39.118015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907887, 37.643902, 38.723175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297432, 37.560028, 38.758087>,  <39.531158, 37.509705, 38.779034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297432, 37.560028, 38.758087>,  <38.907887, 37.643902, 38.723175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297432, 37.560028, 38.758087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118459, 0.141064, -0.982888,
		0.193780, 0.967541, 0.162216,
		0.973867, -0.209680, 0.087279,
		39.589592, 37.497124, 38.784271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304859, 38.253345, 38.291451>,  <38.907887, 37.643902, 38.723175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304859, 38.253345, 38.291451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542641, 37.932514, 38.314411>,  <39.685310, 37.740017, 38.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542641, 37.932514, 38.314411>,  <39.304859, 38.253345, 38.291451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542641, 37.932514, 38.314411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173348, 0.058116, -0.983144,
		0.785222, 0.594385, 0.173586,
		0.594455, -0.802078, 0.057401,
		39.720978, 37.691891, 38.331631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807159, 38.489655, 37.778992>,  <39.304859, 38.253345, 38.291451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807159, 38.489655, 37.778992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878510, 38.107807, 37.874393>,  <39.921318, 37.878696, 37.931633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878510, 38.107807, 37.874393>,  <39.807159, 38.489655, 37.778992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878510, 38.107807, 37.874393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313000, -0.174750, -0.933538,
		0.932853, 0.241167, 0.267626,
		0.178371, -0.954621, 0.238501,
		39.932022, 37.821423, 37.945946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604630, 38.327576, 37.642620>,  <39.807159, 38.489655, 37.778992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604630, 38.327576, 37.642620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377014, 37.998672, 37.639000>,  <40.240444, 37.801331, 37.636829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377014, 37.998672, 37.639000>,  <40.604630, 38.327576, 37.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377014, 37.998672, 37.639000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376845, -0.250980, -0.891626,
		0.730876, -0.510783, 0.452682,
		-0.569041, -0.822259, -0.009051,
		40.206303, 37.751995, 37.636284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865353, 38.089798, 37.134785>,  <40.604630, 38.327576, 37.642620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865353, 38.089798, 37.134785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653358, 37.777016, 37.266033>,  <40.526161, 37.589348, 37.344784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653358, 37.777016, 37.266033>,  <40.865353, 38.089798, 37.134785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653358, 37.777016, 37.266033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199044, -0.490834, -0.848212,
		0.824318, -0.384226, 0.415777,
		-0.529982, -0.781954, 0.328126,
		40.494362, 37.542431, 37.364471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233913, 37.444771, 36.998047>,  <40.865353, 38.089798, 37.134785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233913, 37.444771, 36.998047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847420, 37.346188, 37.028091>,  <40.615524, 37.287037, 37.046120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847420, 37.346188, 37.028091>,  <41.233913, 37.444771, 36.998047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847420, 37.346188, 37.028091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031617, -0.402744, -0.914767,
		0.255703, -0.881508, 0.396938,
		-0.966238, -0.246459, 0.075113,
		40.557549, 37.272251, 37.050625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203869, 36.858719, 36.734123>,  <41.233913, 37.444771, 36.998047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203869, 36.858719, 36.734123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816261, 36.957504, 36.732349>,  <40.583698, 37.016773, 36.731285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816261, 36.957504, 36.732349>,  <41.203869, 36.858719, 36.734123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816261, 36.957504, 36.732349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078669, -0.325585, -0.942235,
		-0.234134, -0.912692, 0.334925,
		-0.969016, 0.246957, -0.004429,
		40.525558, 37.031593, 36.731022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863007, 36.312943, 36.441311>,  <41.203869, 36.858719, 36.734123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863007, 36.312943, 36.441311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624878, 36.627270, 36.374279>,  <40.482002, 36.815865, 36.334061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624878, 36.627270, 36.374279>,  <40.863007, 36.312943, 36.441311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624878, 36.627270, 36.374279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136290, -0.106778, -0.984898,
		-0.791844, -0.609171, -0.043532,
		-0.595323, 0.785818, -0.167575,
		40.446281, 36.863014, 36.324005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456100, 36.179115, 35.854912>,  <40.863007, 36.312943, 36.441311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456100, 36.179115, 35.854912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407543, 36.575138, 35.883320>,  <40.378410, 36.812752, 35.900364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407543, 36.575138, 35.883320>,  <40.456100, 36.179115, 35.854912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407543, 36.575138, 35.883320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219624, 0.096566, -0.970794,
		-0.968003, -0.102249, -0.229163,
		-0.121392, 0.990061, 0.071020,
		40.371124, 36.872158, 35.904625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998520, 36.220196, 35.317280>,  <40.456100, 36.179115, 35.854912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998520, 36.220196, 35.317280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213608, 36.540726, 35.422142>,  <40.342663, 36.733044, 35.485062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213608, 36.540726, 35.422142>,  <39.998520, 36.220196, 35.317280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213608, 36.540726, 35.422142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149156, 0.215622, -0.965018,
		-0.829823, 0.558016, -0.003578,
		0.537723, 0.801328, 0.262159,
		40.374924, 36.781124, 35.500790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653717, 36.741364, 34.949200>,  <39.998520, 36.220196, 35.317280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653717, 36.741364, 34.949200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018333, 36.883236, 35.032425>,  <40.237103, 36.968357, 35.082359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018333, 36.883236, 35.032425>,  <39.653717, 36.741364, 34.949200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018333, 36.883236, 35.032425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157079, 0.167277, -0.973316,
		-0.380018, 0.919904, 0.096768,
		0.911544, 0.354677, 0.208066,
		40.291798, 36.989639, 35.094845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724297, 37.301231, 34.511295>,  <39.653717, 36.741364, 34.949200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724297, 37.301231, 34.511295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103073, 37.231647, 34.619392>,  <40.330341, 37.189896, 34.684250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103073, 37.231647, 34.619392>,  <39.724297, 37.301231, 34.511295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103073, 37.231647, 34.619392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269437, -0.028703, -0.962590,
		0.175209, 0.984334, 0.019691,
		0.946945, -0.173960, 0.270245,
		40.387157, 37.179459, 34.700466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061573, 37.850266, 34.204617>,  <39.724297, 37.301231, 34.511295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061573, 37.850266, 34.204617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289173, 37.528297, 34.271961>,  <40.425735, 37.335117, 34.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289173, 37.528297, 34.271961>,  <40.061573, 37.850266, 34.204617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289173, 37.528297, 34.271961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147454, -0.101554, -0.983842,
		0.809008, 0.584634, 0.060903,
		0.569002, -0.804916, 0.168365,
		40.459873, 37.286823, 34.322472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717094, 37.959248, 33.868767>,  <40.061573, 37.850266, 34.204617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717094, 37.959248, 33.868767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640049, 37.567833, 33.898060>,  <40.593822, 37.332985, 33.915638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640049, 37.567833, 33.898060>,  <40.717094, 37.959248, 33.868767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640049, 37.567833, 33.898060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047723, -0.065205, -0.996730,
		0.980115, -0.195474, -0.034140,
		-0.192609, -0.978539, 0.073237,
		40.582268, 37.274273, 33.920033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745892, 38.249016, 33.210632>,  <40.717094, 37.959248, 33.868767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745892, 38.249016, 33.210632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620705, 38.344425, 33.578362>,  <40.545593, 38.401672, 33.799000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620705, 38.344425, 33.578362>,  <40.745892, 38.249016, 33.210632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620705, 38.344425, 33.578362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368745, 0.922535, -0.113827,
		-0.875258, 0.303371, -0.376682,
		-0.312971, 0.238528, 0.919322,
		40.526814, 38.415985, 33.854156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051746, 37.597801, 33.129120>,  <40.745892, 38.249016, 33.210632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051746, 37.597801, 33.129120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780197, 37.363251, 33.305885>,  <40.617268, 37.222519, 33.411945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780197, 37.363251, 33.305885>,  <41.051746, 37.597801, 33.129120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780197, 37.363251, 33.305885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413491, -0.192034, -0.890027,
		0.606757, -0.786944, -0.112096,
		-0.678876, -0.586381, 0.441911,
		40.576534, 37.187336, 33.438457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035999, 36.956226, 32.713360>,  <41.051746, 37.597801, 33.129120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035999, 36.956226, 32.713360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685955, 36.952763, 32.906895>,  <40.475929, 36.950684, 33.023018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685955, 36.952763, 32.906895>,  <41.035999, 36.956226, 32.713360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685955, 36.952763, 32.906895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441191, -0.396487, -0.805077,
		0.198811, -0.918000, 0.343149,
		-0.875114, -0.008664, 0.483839,
		40.423420, 36.950165, 33.052048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711597, 36.265354, 32.541397>,  <41.035999, 36.956226, 32.713360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711597, 36.265354, 32.541397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458309, 36.559990, 32.636448>,  <40.306335, 36.736771, 32.693478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458309, 36.559990, 32.636448>,  <40.711597, 36.265354, 32.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458309, 36.559990, 32.636448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539661, -0.200115, -0.817753,
		-0.554799, -0.646053, 0.524227,
		-0.633217, 0.736593, 0.237626,
		40.268345, 36.780968, 32.707737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508495, 36.202667, 32.451641>,  <40.711597, 36.265354, 32.541397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508495, 36.202667, 32.451641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630898, 36.582809, 32.429100>,  <41.704338, 36.810894, 32.415573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630898, 36.582809, 32.429100>,  <41.508495, 36.202667, 32.451641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630898, 36.582809, 32.429100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810532, 0.229019, -0.539062,
		-0.499396, 0.210636, 0.840378,
		0.306009, 0.950359, -0.056356,
		41.722698, 36.867916, 32.412193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726212, 35.776428, 31.879398>,  <41.508495, 36.202667, 32.451641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726212, 35.776428, 31.879398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828869, 36.162937, 31.870893>,  <41.890465, 36.394844, 31.865789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828869, 36.162937, 31.870893>,  <41.726212, 35.776428, 31.879398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828869, 36.162937, 31.870893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883412, -0.225599, 0.410716,
		0.392066, -0.124192, -0.911515,
		0.256645, 0.966272, -0.021263,
		41.905861, 36.452820, 31.864515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310150, 35.810184, 31.461348>,  <41.726212, 35.776428, 31.879398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310150, 35.810184, 31.461348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356457, 36.120975, 31.708866>,  <42.384239, 36.307449, 31.857378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356457, 36.120975, 31.708866>,  <42.310150, 35.810184, 31.461348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356457, 36.120975, 31.708866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939488, -0.287878, 0.185710,
		0.322430, 0.559854, -0.763284,
		0.115762, 0.776975, 0.618797,
		42.391186, 36.354069, 31.894505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836098, 36.140469, 31.160908>,  <42.310150, 35.810184, 31.461348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836098, 36.140469, 31.160908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824001, 36.143867, 31.560711>,  <42.816742, 36.145905, 31.800592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824001, 36.143867, 31.560711>,  <42.836098, 36.140469, 31.160908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824001, 36.143867, 31.560711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972275, -0.231723, 0.031390,
		0.231876, 0.972745, -0.001250,
		-0.030245, 0.008494, 0.999506,
		42.814926, 36.146416, 31.860563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540821, 36.497818, 31.462250>,  <42.836098, 36.140469, 31.160908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540821, 36.497818, 31.462250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332554, 36.237331, 31.683092>,  <43.207592, 36.081039, 31.815598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332554, 36.237331, 31.683092>,  <43.540821, 36.497818, 31.462250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332554, 36.237331, 31.683092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808500, -0.583848, 0.073813,
		0.274277, 0.484810, 0.830500,
		-0.520672, -0.651214, 0.552105,
		43.176353, 36.041965, 31.848724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771729, 36.346764, 32.159702>,  <43.540821, 36.497818, 31.462250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771729, 36.346764, 32.159702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584953, 36.021393, 32.020962>,  <43.472889, 35.826168, 31.937717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584953, 36.021393, 32.020962>,  <43.771729, 36.346764, 32.159702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584953, 36.021393, 32.020962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879786, -0.466873, -0.089478,
		-0.089150, -0.346934, 0.933643,
		-0.466935, -0.813429, -0.346849,
		43.444874, 35.777363, 31.916906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292637, 35.950253, 32.087349>,  <43.771729, 36.346764, 32.159702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292637, 35.950253, 32.087349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012939, 35.700279, 31.948488>,  <43.845119, 35.550297, 31.865171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012939, 35.700279, 31.948488>,  <44.292637, 35.950253, 32.087349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012939, 35.700279, 31.948488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714762, -0.619954, -0.323685,
		-0.012939, -0.474469, 0.880177,
		-0.699248, -0.624929, -0.347154,
		43.803165, 35.512802, 31.844341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536442, 36.002636, 31.389887>,  <44.292637, 35.950253, 32.087349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536442, 36.002636, 31.389887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893196, 36.071243, 31.222498>,  <45.107250, 36.112408, 31.122065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893196, 36.071243, 31.222498>,  <44.536442, 36.002636, 31.389887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893196, 36.071243, 31.222498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440525, -0.120090, 0.889672,
		0.102337, -0.977835, -0.182663,
		0.891888, 0.171514, -0.418471,
		45.160763, 36.122696, 31.096956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978809, 35.506924, 31.710596>,  <44.536442, 36.002636, 31.389887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978809, 35.506924, 31.710596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164604, 35.837383, 31.583012>,  <45.276081, 36.035660, 31.506462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164604, 35.837383, 31.583012>,  <44.978809, 35.506924, 31.710596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164604, 35.837383, 31.583012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480352, 0.067547, 0.874471,
		0.743985, -0.559394, -0.365466,
		0.464487, 0.826145, -0.318960,
		45.303951, 36.085228, 31.487324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669472, 35.443821, 31.995499>,  <44.978809, 35.506924, 31.710596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669472, 35.443821, 31.995499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613331, 35.835312, 31.935629>,  <45.579647, 36.070206, 31.899706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613331, 35.835312, 31.935629>,  <45.669472, 35.443821, 31.995499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613331, 35.835312, 31.935629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502408, 0.200664, 0.841023,
		0.853163, 0.042841, -0.519882,
		-0.140351, 0.978723, -0.149676,
		45.571224, 36.128929, 31.890726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259186, 35.813183, 32.115700>,  <45.669472, 35.443821, 31.995499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259186, 35.813183, 32.115700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965893, 36.070801, 32.202950>,  <45.789917, 36.225372, 32.255299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.965893, 36.070801, 32.202950>,  <46.259186, 35.813183, 32.115700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.965893, 36.070801, 32.202950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442101, 0.207804, 0.872562,
		0.516641, 0.736223, -0.437101,
		-0.733232, 0.644044, 0.218125,
		45.745922, 36.264015, 32.268387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690464, 35.204746, 31.903759>,  <46.259186, 35.813183, 32.115700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690464, 35.204746, 31.903759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813446, 34.891750, 31.687172>,  <46.887234, 34.703953, 31.557220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.813446, 34.891750, 31.687172>,  <46.690464, 35.204746, 31.903759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813446, 34.891750, 31.687172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331628, -0.445243, 0.831734,
		-0.891905, -0.435286, 0.122602,
		0.307454, -0.782486, -0.541467,
		46.905682, 34.657005, 31.524733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593586, 34.579525, 32.171993>,  <46.690464, 35.204746, 31.903759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593586, 34.579525, 32.171993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925148, 34.546021, 31.950760>,  <47.124084, 34.525917, 31.818020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925148, 34.546021, 31.950760>,  <46.593586, 34.579525, 32.171993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925148, 34.546021, 31.950760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452137, -0.481854, 0.750592,
		-0.329378, -0.872239, -0.361537,
		0.828904, -0.083764, -0.553084,
		47.173820, 34.520889, 31.784834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683193, 33.898106, 32.245937>,  <46.593586, 34.579525, 32.171993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683193, 33.898106, 32.245937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034847, 34.067905, 32.159283>,  <47.245838, 34.169785, 32.107288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034847, 34.067905, 32.159283>,  <46.683193, 33.898106, 32.245937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034847, 34.067905, 32.159283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399337, -0.408042, 0.820994,
		0.260114, -0.808272, -0.528240,
		0.879130, 0.424498, -0.216636,
		47.298588, 34.195255, 32.094292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.329403, 33.396431, 32.327724>,  <46.683193, 33.898106, 32.245937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.329403, 33.396431, 32.327724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432022, 33.779202, 32.382103>,  <47.493591, 34.008862, 32.414730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432022, 33.779202, 32.382103>,  <47.329403, 33.396431, 32.327724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432022, 33.779202, 32.382103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404645, -0.234068, 0.884011,
		0.877751, -0.171779, -0.447263,
		0.256544, 0.956924, 0.135944,
		47.508984, 34.066280, 32.422886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.820412, 33.397545, 32.865158>,  <47.329403, 33.396431, 32.327724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.820412, 33.397545, 32.865158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573364, 33.446831, 32.554451>,  <46.425137, 33.476402, 32.368027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573364, 33.446831, 32.554451>,  <46.820412, 33.397545, 32.865158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573364, 33.446831, 32.554451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662144, -0.451495, -0.598095,
		-0.424396, -0.883726, 0.197271,
		-0.617619, 0.123207, -0.776767,
		46.388081, 33.483795, 32.321423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945217, 33.348282, 33.674858>,  <46.820412, 33.397545, 32.865158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945217, 33.348282, 33.674858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805347, 33.673557, 33.860954>,  <46.721424, 33.868725, 33.972610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805347, 33.673557, 33.860954>,  <46.945217, 33.348282, 33.674858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805347, 33.673557, 33.860954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523116, -0.242499, 0.817034,
		0.777224, 0.529071, -0.340598,
		-0.349674, 0.813190, 0.465241,
		46.700447, 33.917515, 34.000526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423424, 33.935715, 33.804008>,  <46.945217, 33.348282, 33.674858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423424, 33.935715, 33.804008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142132, 33.894459, 34.085384>,  <46.973358, 33.869705, 34.254211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142132, 33.894459, 34.085384>,  <47.423424, 33.935715, 33.804008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142132, 33.894459, 34.085384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699221, -0.279429, 0.658034,
		0.128690, 0.954610, 0.268622,
		-0.703227, -0.103144, 0.703444,
		46.931164, 33.863514, 34.296417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.841209, 33.683411, 34.382744>,  <47.423424, 33.935715, 33.804008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.841209, 33.683411, 34.382744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479061, 33.719223, 34.548775>,  <47.261772, 33.740711, 34.648392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479061, 33.719223, 34.548775>,  <47.841209, 33.683411, 34.382744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479061, 33.719223, 34.548775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391449, -0.202781, 0.897579,
		0.164534, 0.975122, 0.148543,
		-0.905370, 0.089535, 0.415075,
		47.207451, 33.746082, 34.673298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854984, 34.195030, 34.917767>,  <47.841209, 33.683411, 34.382744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854984, 34.195030, 34.917767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575714, 33.915833, 34.981449>,  <47.408150, 33.748314, 35.019661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575714, 33.915833, 34.981449>,  <47.854984, 34.195030, 34.917767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575714, 33.915833, 34.981449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456048, -0.262182, 0.850459,
		-0.551876, 0.666379, 0.501370,
		-0.698178, -0.697997, 0.159209,
		47.366261, 33.706432, 35.029213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904289, 34.984772, 34.985458>,  <47.854984, 34.195030, 34.917767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904289, 34.984772, 34.985458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509029, 35.006763, 34.928146>,  <47.271873, 35.019958, 34.893761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509029, 35.006763, 34.928146>,  <47.904289, 34.984772, 34.985458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509029, 35.006763, 34.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018879, 0.882981, 0.469028,
		0.152301, 0.466177, -0.871483,
		-0.988154, 0.054981, -0.143280,
		47.212582, 35.023258, 34.885162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.235237, 31.040962, 24.321964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841053, 31.106668, 24.304630>,  <37.604542, 31.146093, 24.294230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841053, 31.106668, 24.304630>,  <38.235237, 31.040962, 24.321964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841053, 31.106668, 24.304630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007302, 0.213895, 0.976829,
		0.169730, 0.962946, -0.209586,
		-0.985464, 0.164267, -0.043336,
		37.545414, 31.155949, 24.291630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110661, 31.711264, 24.609003>,  <38.235237, 31.040962, 24.321964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110661, 31.711264, 24.609003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763309, 31.515057, 24.638178>,  <37.554901, 31.397333, 24.655684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.763309, 31.515057, 24.638178>,  <38.110661, 31.711264, 24.609003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763309, 31.515057, 24.638178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100727, 0.318475, 0.942564,
		-0.485573, 0.811151, -0.325963,
		-0.868374, -0.490517, 0.072938,
		37.502796, 31.367901, 24.660059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732674, 32.143482, 24.883678>,  <38.110661, 31.711264, 24.609003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732674, 32.143482, 24.883678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516533, 31.816778, 24.964590>,  <37.386848, 31.620754, 25.013136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.516533, 31.816778, 24.964590>,  <37.732674, 32.143482, 24.883678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516533, 31.816778, 24.964590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386271, 0.454349, 0.802722,
		-0.747539, 0.355618, -0.561001,
		-0.540352, -0.816764, 0.202278,
		37.354427, 31.571749, 25.025274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976166, 32.375267, 24.999584>,  <37.732674, 32.143482, 24.883678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976166, 32.375267, 24.999584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007034, 32.023060, 25.186657>,  <37.025555, 31.811735, 25.298901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007034, 32.023060, 25.186657>,  <36.976166, 32.375267, 24.999584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007034, 32.023060, 25.186657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252335, 0.436558, 0.863565,
		-0.964558, -0.184656, -0.188496,
		0.077173, -0.880522, 0.467680,
		37.030186, 31.758904, 25.326962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355701, 32.407799, 25.451859>,  <36.976166, 32.375267, 24.999584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355701, 32.407799, 25.451859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585869, 32.115078, 25.597929>,  <36.723969, 31.939445, 25.685572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585869, 32.115078, 25.597929>,  <36.355701, 32.407799, 25.451859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585869, 32.115078, 25.597929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168529, 0.330826, 0.928521,
		-0.800306, -0.595832, 0.067034,
		0.575420, -0.731804, 0.365177,
		36.758495, 31.895536, 25.707481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981796, 32.087288, 25.981216>,  <36.355701, 32.407799, 25.451859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981796, 32.087288, 25.981216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371906, 32.026196, 26.045097>,  <36.605972, 31.989540, 26.083426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371906, 32.026196, 26.045097>,  <35.981796, 32.087288, 25.981216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371906, 32.026196, 26.045097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114553, 0.268584, 0.956420,
		-0.188970, -0.951070, 0.244448,
		0.975279, -0.152733, 0.159702,
		36.664490, 31.980375, 26.093008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985481, 31.669540, 26.639839>,  <35.981796, 32.087288, 25.981216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985481, 31.669540, 26.639839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363857, 31.797022, 26.615742>,  <36.590881, 31.873510, 26.601284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363857, 31.797022, 26.615742>,  <35.985481, 31.669540, 26.639839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363857, 31.797022, 26.615742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024796, 0.114131, 0.993156,
		0.323399, -0.940958, 0.100059,
		0.945938, 0.318704, -0.060242,
		36.647640, 31.892633, 26.597670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235687, 31.531784, 27.270605>,  <35.985481, 31.669540, 26.639839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235687, 31.531784, 27.270605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512711, 31.775881, 27.116741>,  <36.678925, 31.922338, 27.024422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512711, 31.775881, 27.116741>,  <36.235687, 31.531784, 27.270605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512711, 31.775881, 27.116741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134828, 0.414340, 0.900080,
		0.708649, -0.675221, 0.204677,
		0.692559, 0.610245, -0.384661,
		36.720478, 31.958954, 27.001343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785187, 31.485388, 27.787474>,  <36.235687, 31.531784, 27.270605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785187, 31.485388, 27.787474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864311, 31.818335, 27.580385>,  <36.911785, 32.018105, 27.456133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864311, 31.818335, 27.580385>,  <36.785187, 31.485388, 27.787474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864311, 31.818335, 27.580385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181773, 0.487847, 0.853794,
		0.963238, -0.263000, -0.054799,
		0.197815, 0.832368, -0.517719,
		36.923656, 32.068047, 27.425070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455631, 31.745995, 28.003254>,  <36.785187, 31.485388, 27.787474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455631, 31.745995, 28.003254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246037, 32.061398, 27.874447>,  <37.120281, 32.250637, 27.797163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246037, 32.061398, 27.874447>,  <37.455631, 31.745995, 28.003254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246037, 32.061398, 27.874447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322220, 0.533497, 0.782020,
		0.788423, 0.306008, -0.533618,
		-0.523987, 0.788505, -0.322019,
		37.088840, 32.297951, 27.777842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903957, 32.463654, 28.024178>,  <37.455631, 31.745995, 28.003254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903957, 32.463654, 28.024178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526276, 32.595348, 28.027857>,  <37.299667, 32.674366, 28.030064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526276, 32.595348, 28.027857>,  <37.903957, 32.463654, 28.024178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526276, 32.595348, 28.027857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267466, 0.750169, 0.604739,
		0.192201, 0.573457, -0.796371,
		-0.944204, 0.329234, 0.009197,
		37.243015, 32.694118, 28.030617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966949, 33.198547, 28.107164>,  <37.903957, 32.463654, 28.024178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966949, 33.198547, 28.107164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579636, 33.152092, 28.195642>,  <37.347248, 33.124218, 28.248730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579636, 33.152092, 28.195642>,  <37.966949, 33.198547, 28.107164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579636, 33.152092, 28.195642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141559, 0.474478, 0.868810,
		-0.205858, 0.872572, -0.442991,
		-0.968289, -0.116142, 0.221195,
		37.289150, 33.117249, 28.262001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840839, 33.783947, 28.419889>,  <37.966949, 33.198547, 28.107164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840839, 33.783947, 28.419889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535210, 33.559151, 28.546610>,  <37.351833, 33.424274, 28.622643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535210, 33.559151, 28.546610>,  <37.840839, 33.783947, 28.419889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535210, 33.559151, 28.546610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107090, 0.373767, 0.921319,
		-0.636180, 0.737881, -0.225402,
		-0.764072, -0.561987, 0.316803,
		37.305988, 33.390556, 28.641651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395779, 34.195358, 28.845398>,  <37.840839, 33.783947, 28.419889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395779, 34.195358, 28.845398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327354, 33.814194, 28.945564>,  <37.286301, 33.585495, 29.005665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327354, 33.814194, 28.945564>,  <37.395779, 34.195358, 28.845398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327354, 33.814194, 28.945564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075625, 0.240713, 0.967646,
		-0.982354, 0.184462, 0.030888,
		-0.171059, -0.952907, 0.250415,
		37.276035, 33.528320, 29.020689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963123, 34.324909, 29.385414>,  <37.395779, 34.195358, 28.845398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963123, 34.324909, 29.385414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098728, 33.949265, 29.407812>,  <37.180092, 33.723877, 29.421251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098728, 33.949265, 29.407812>,  <36.963123, 34.324909, 29.385414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098728, 33.949265, 29.407812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093481, 0.092851, 0.991282,
		-0.936127, -0.330820, 0.119267,
		0.339010, -0.939115, 0.055995,
		37.200432, 33.667530, 29.424610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621227, 34.035690, 30.012117>,  <36.963123, 34.324909, 29.385414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621227, 34.035690, 30.012117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920719, 33.773731, 29.971115>,  <37.100414, 33.616554, 29.946514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920719, 33.773731, 29.971115>,  <36.621227, 34.035690, 30.012117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920719, 33.773731, 29.971115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194278, 0.068954, 0.978520,
		-0.633765, -0.752563, 0.178861,
		0.748731, -0.654900, -0.102506,
		37.145340, 33.577263, 29.940363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489220, 33.463318, 30.510017>,  <36.621227, 34.035690, 30.012117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489220, 33.463318, 30.510017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878098, 33.439671, 30.419374>,  <37.111423, 33.425480, 30.364988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878098, 33.439671, 30.419374>,  <36.489220, 33.463318, 30.510017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878098, 33.439671, 30.419374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226415, -0.010000, 0.973980,
		-0.059853, -0.998200, 0.003665,
		0.972191, -0.059125, -0.226606,
		37.169754, 33.421932, 30.351393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846066, 32.906586, 30.937450>,  <36.489220, 33.463318, 30.510017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846066, 32.906586, 30.937450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142002, 33.163414, 30.857069>,  <37.319565, 33.317509, 30.808840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142002, 33.163414, 30.857069>,  <36.846066, 32.906586, 30.937450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142002, 33.163414, 30.857069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122761, 0.164841, 0.978651,
		0.661485, -0.748717, 0.043136,
		0.739843, 0.642067, -0.200953,
		37.363956, 33.356033, 30.796783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334282, 32.796616, 31.451742>,  <36.846066, 32.906586, 30.937450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334282, 32.796616, 31.451742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449265, 33.147141, 31.297106>,  <37.518253, 33.357456, 31.204323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449265, 33.147141, 31.297106>,  <37.334282, 32.796616, 31.451742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449265, 33.147141, 31.297106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246384, 0.322390, 0.913980,
		0.925561, -0.357979, -0.123235,
		0.287456, 0.876308, -0.386592,
		37.535500, 33.410034, 31.181128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078140, 32.780190, 31.652313>,  <37.334282, 32.796616, 31.451742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078140, 32.780190, 31.652313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972294, 33.160370, 31.587044>,  <37.908787, 33.388477, 31.547882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972294, 33.160370, 31.587044>,  <38.078140, 32.780190, 31.652313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972294, 33.160370, 31.587044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394457, 0.261080, 0.881045,
		0.879990, 0.168774, -0.443997,
		-0.264616, 0.950449, -0.163174,
		37.892910, 33.445503, 31.538092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756012, 33.212288, 31.847942>,  <38.078140, 32.780190, 31.652313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756012, 33.212288, 31.847942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430958, 33.445271, 31.855556>,  <38.235924, 33.585060, 31.860125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430958, 33.445271, 31.855556>,  <38.756012, 33.212288, 31.847942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430958, 33.445271, 31.855556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208059, 0.259462, 0.943075,
		0.544361, 0.770340, -0.332035,
		-0.812639, 0.582456, 0.019035,
		38.187164, 33.620007, 31.861267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003513, 33.771507, 32.129078>,  <38.756012, 33.212288, 31.847942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003513, 33.771507, 32.129078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610847, 33.762505, 32.204796>,  <38.375248, 33.757103, 32.250225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610847, 33.762505, 32.204796>,  <39.003513, 33.771507, 32.129078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610847, 33.762505, 32.204796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177195, 0.258372, 0.949656,
		-0.070281, 0.965783, -0.249646,
		-0.981663, -0.022507, 0.189291,
		38.316349, 33.755753, 32.261581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718002, 34.403557, 31.844656>,  <39.003513, 33.771507, 32.129078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718002, 34.403557, 31.844656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100842, 34.378136, 31.957735>,  <39.330547, 34.362885, 32.025581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100842, 34.378136, 31.957735>,  <38.718002, 34.403557, 31.844656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100842, 34.378136, 31.957735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278459, -0.068010, -0.958037,
		0.080108, 0.995659, -0.047397,
		0.957102, -0.063548, 0.282698,
		39.387974, 34.359070, 32.042545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969612, 34.509670, 31.137735>,  <38.718002, 34.403557, 31.844656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969612, 34.509670, 31.137735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297951, 34.424362, 31.349667>,  <39.494953, 34.373177, 31.476826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297951, 34.424362, 31.349667>,  <38.969612, 34.509670, 31.137735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297951, 34.424362, 31.349667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534557, -0.039799, -0.844195,
		0.201129, 0.976182, 0.081337,
		0.820851, -0.213271, 0.529830,
		39.544205, 34.360382, 31.508615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538624, 34.962860, 30.944534>,  <38.969612, 34.509670, 31.137735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538624, 34.962860, 30.944534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723206, 34.653744, 31.118818>,  <39.833954, 34.468273, 31.223389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.723206, 34.653744, 31.118818>,  <39.538624, 34.962860, 30.944534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723206, 34.653744, 31.118818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494937, -0.183342, -0.849366,
		0.736269, 0.607598, 0.297880,
		0.461459, -0.772794, 0.435712,
		39.861645, 34.421906, 31.249533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310768, 34.985756, 30.786085>,  <39.538624, 34.962860, 30.944534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310768, 34.985756, 30.786085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.260685, 34.601398, 30.884890>,  <40.230637, 34.370785, 30.944172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.260685, 34.601398, 30.884890>,  <40.310768, 34.985756, 30.786085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260685, 34.601398, 30.884890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448978, -0.276894, -0.849558,
		0.884727, 0.004531, 0.466088,
		-0.125208, -0.960890, 0.247010,
		40.223122, 34.313133, 30.958992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999210, 34.716011, 30.713766>,  <40.310768, 34.985756, 30.786085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999210, 34.716011, 30.713766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.714748, 34.436268, 30.685055>,  <40.544071, 34.268421, 30.667828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.714748, 34.436268, 30.685055>,  <40.999210, 34.716011, 30.713766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714748, 34.436268, 30.685055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406297, -0.325525, -0.853789,
		0.573739, -0.636343, 0.515647,
		-0.711159, -0.699358, -0.071777,
		40.501400, 34.226460, 30.663521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361950, 34.117485, 30.486570>,  <40.999210, 34.716011, 30.713766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361950, 34.117485, 30.486570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.969505, 34.060760, 30.433939>,  <40.734039, 34.026726, 30.402361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.969505, 34.060760, 30.433939>,  <41.361950, 34.117485, 30.486570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969505, 34.060760, 30.433939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157650, -0.191923, -0.968665,
		0.112115, -0.971110, 0.210655,
		-0.981110, -0.141811, -0.131578,
		40.675171, 34.018219, 30.394466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275955, 33.472363, 30.067539>,  <41.361950, 34.117485, 30.486570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275955, 33.472363, 30.067539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.914986, 33.635998, 30.013472>,  <40.698402, 33.734180, 29.981031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.914986, 33.635998, 30.013472>,  <41.275955, 33.472363, 30.067539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914986, 33.635998, 30.013472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044992, -0.222531, -0.973887,
		-0.428486, -0.884944, 0.182412,
		-0.902428, 0.409089, -0.135167,
		40.644257, 33.758724, 29.972921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871056, 33.080547, 29.533800>,  <41.275955, 33.472363, 30.067539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871056, 33.080547, 29.533800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722450, 33.451862, 29.540243>,  <40.633286, 33.674652, 29.544109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.722450, 33.451862, 29.540243>,  <40.871056, 33.080547, 29.533800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722450, 33.451862, 29.540243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047867, 0.036477, -0.998187,
		-0.927191, -0.370073, -0.057986,
		-0.371517, 0.928287, 0.016107,
		40.610996, 33.730347, 29.545074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332176, 32.971943, 29.077894>,  <40.871056, 33.080547, 29.533800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332176, 32.971943, 29.077894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.356007, 33.371231, 29.078207>,  <40.370304, 33.610806, 29.078394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.356007, 33.371231, 29.078207>,  <40.332176, 32.971943, 29.077894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356007, 33.371231, 29.078207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278968, 0.017401, -0.960143,
		-0.958450, 0.056985, 0.279509,
		0.059577, 0.998223, 0.000781,
		40.373878, 33.670696, 29.078442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693104, 33.231426, 28.706892>,  <40.332176, 32.971943, 29.077894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693104, 33.231426, 28.706892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.958630, 33.530426, 28.697054>,  <40.117943, 33.709824, 28.691151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.958630, 33.530426, 28.697054>,  <39.693104, 33.231426, 28.706892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958630, 33.530426, 28.697054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157009, 0.107127, -0.981770,
		-0.731233, 0.655573, 0.188475,
		0.663812, 0.747495, -0.024596,
		40.157772, 33.754673, 28.689674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401123, 33.762829, 28.233192>,  <39.693104, 33.231426, 28.706892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401123, 33.762829, 28.233192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794308, 33.833641, 28.252974>,  <40.030220, 33.876129, 28.264841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794308, 33.833641, 28.252974>,  <39.401123, 33.762829, 28.233192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794308, 33.833641, 28.252974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031152, 0.104697, -0.994016,
		-0.181148, 0.978621, 0.097398,
		0.982962, 0.177029, 0.049452,
		40.089195, 33.886749, 28.267809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545486, 34.444836, 27.818947>,  <39.401123, 33.762829, 28.233192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545486, 34.444836, 27.818947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884789, 34.234310, 27.842474>,  <40.088371, 34.107994, 27.856590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884789, 34.234310, 27.842474>,  <39.545486, 34.444836, 27.818947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884789, 34.234310, 27.842474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082329, 0.021343, -0.996377,
		0.523150, 0.850023, 0.061435,
		0.848255, -0.526313, 0.058816,
		40.139263, 34.076416, 27.860119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950748, 34.817318, 27.300989>,  <39.545486, 34.444836, 27.818947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950748, 34.817318, 27.300989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.101032, 34.451122, 27.358572>,  <40.191204, 34.231407, 27.393122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.101032, 34.451122, 27.358572>,  <39.950748, 34.817318, 27.300989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101032, 34.451122, 27.358572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094635, -0.116627, -0.988657,
		0.921891, 0.385076, 0.042818,
		0.375714, -0.915486, 0.143959,
		40.213745, 34.176476, 27.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440308, 34.768375, 26.813736>,  <39.950748, 34.817318, 27.300989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440308, 34.768375, 26.813736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.406898, 34.389694, 26.938173>,  <40.386852, 34.162487, 27.012836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.406898, 34.389694, 26.938173>,  <40.440308, 34.768375, 26.813736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406898, 34.389694, 26.938173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175883, -0.293277, -0.939709,
		0.980861, -0.133205, -0.142013,
		-0.083525, -0.946702, 0.311093,
		40.381840, 34.105682, 27.031502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867325, 34.464657, 26.369738>,  <40.440308, 34.768375, 26.813736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867325, 34.464657, 26.369738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.649761, 34.153015, 26.494421>,  <40.519222, 33.966030, 26.569231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.649761, 34.153015, 26.494421>,  <40.867325, 34.464657, 26.369738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649761, 34.153015, 26.494421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154634, -0.272042, -0.949780,
		0.824773, -0.564795, 0.027490,
		-0.543909, -0.779102, 0.311709,
		40.486588, 33.919285, 26.587934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175591, 33.750332, 26.101336>,  <40.867325, 34.464657, 26.369738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175591, 33.750332, 26.101336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783291, 33.719532, 26.173119>,  <40.547913, 33.701054, 26.216188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783291, 33.719532, 26.173119>,  <41.175591, 33.750332, 26.101336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783291, 33.719532, 26.173119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145538, -0.324525, -0.934613,
		0.130201, -0.942738, 0.307072,
		-0.980748, -0.076997, 0.179458,
		40.489067, 33.696434, 26.226955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971165, 33.114262, 25.772573>,  <41.175591, 33.750332, 26.101336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971165, 33.114262, 25.772573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.621738, 33.304287, 25.814920>,  <40.412083, 33.418301, 25.840328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.621738, 33.304287, 25.814920>,  <40.971165, 33.114262, 25.772573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621738, 33.304287, 25.814920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265460, -0.282731, -0.921734,
		-0.407948, -0.833295, 0.373092,
		-0.873562, 0.475061, 0.105867,
		40.359669, 33.446804, 25.846682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469269, 32.557430, 25.728693>,  <40.971165, 33.114262, 25.772573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469269, 32.557430, 25.728693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.309227, 32.912727, 25.638407>,  <40.213203, 33.125904, 25.584234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.309227, 32.912727, 25.638407>,  <40.469269, 32.557430, 25.728693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309227, 32.912727, 25.638407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267840, -0.348867, -0.898083,
		-0.876457, -0.298872, 0.377490,
		-0.400106, 0.888238, -0.225718,
		40.189194, 33.179199, 25.570692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.691261, 32.369549, 25.442633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800552, 32.740139, 25.339100>,  <39.866127, 32.962494, 25.276979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800552, 32.740139, 25.339100>,  <39.691261, 32.369549, 25.442633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800552, 32.740139, 25.339100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348067, -0.155623, -0.924462,
		-0.896770, 0.342679, 0.279954,
		0.273227, 0.926473, -0.258833,
		39.882519, 33.018082, 25.261450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068924, 32.665218, 25.134424>,  <39.691261, 32.369549, 25.442633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068924, 32.665218, 25.134424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386578, 32.856865, 24.984863>,  <39.577168, 32.971851, 24.895126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.386578, 32.856865, 24.984863>,  <39.068924, 32.665218, 25.134424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386578, 32.856865, 24.984863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401421, -0.048414, -0.914613,
		-0.456306, 0.876417, 0.153879,
		0.794132, 0.479114, -0.373904,
		39.624817, 33.000599, 24.872692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779877, 32.919559, 24.594511>,  <39.068924, 32.665218, 25.134424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779877, 32.919559, 24.594511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163742, 33.010166, 24.527901>,  <39.394062, 33.064529, 24.487934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163742, 33.010166, 24.527901>,  <38.779877, 32.919559, 24.594511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163742, 33.010166, 24.527901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135578, -0.146030, -0.979946,
		-0.246296, 0.962997, -0.109429,
		0.959665, 0.226521, -0.166528,
		39.451641, 33.078121, 24.477942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765167, 33.139801, 23.932623>,  <38.779877, 32.919559, 24.594511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765167, 33.139801, 23.932623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149071, 33.032703, 23.966501>,  <39.379414, 32.968445, 23.986828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149071, 33.032703, 23.966501>,  <38.765167, 33.139801, 23.932623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149071, 33.032703, 23.966501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011682, -0.339396, -0.940571,
		0.280581, 0.901732, -0.328867,
		0.959759, -0.267748, 0.084694,
		39.437000, 32.952377, 23.991909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177776, 33.421772, 23.403612>,  <38.765167, 33.139801, 23.932623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177776, 33.421772, 23.403612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392616, 33.106701, 23.524338>,  <39.521519, 32.917660, 23.596773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392616, 33.106701, 23.524338>,  <39.177776, 33.421772, 23.403612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392616, 33.106701, 23.524338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075615, -0.311401, -0.947266,
		0.840124, 0.531596, -0.107692,
		0.537098, -0.787677, 0.301812,
		39.553745, 32.870399, 23.614882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492989, 33.261284, 22.833664>,  <39.177776, 33.421772, 23.403612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492989, 33.261284, 22.833664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595573, 32.950535, 23.063688>,  <39.657124, 32.764084, 23.201702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595573, 32.950535, 23.063688>,  <39.492989, 33.261284, 22.833664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595573, 32.950535, 23.063688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186424, -0.544030, -0.818094,
		0.948407, 0.317012, 0.005308,
		0.256458, -0.776875, 0.575060,
		39.672512, 32.717472, 23.236206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169441, 33.029949, 22.701635>,  <39.492989, 33.261284, 22.833664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169441, 33.029949, 22.701635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.948418, 32.723717, 22.833433>,  <39.815804, 32.539978, 22.912512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.948418, 32.723717, 22.833433>,  <40.169441, 33.029949, 22.701635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948418, 32.723717, 22.833433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142739, -0.476405, -0.867562,
		0.821160, -0.432348, 0.372520,
		-0.552559, -0.765580, 0.329492,
		39.782650, 32.494041, 22.932281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541416, 32.437366, 22.586203>,  <40.169441, 33.029949, 22.701635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541416, 32.437366, 22.586203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165676, 32.304367, 22.619810>,  <39.940231, 32.224567, 22.639975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165676, 32.304367, 22.619810>,  <40.541416, 32.437366, 22.586203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165676, 32.304367, 22.619810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061801, -0.405095, -0.912183,
		0.337334, -0.851671, 0.401077,
		-0.939354, -0.332497, 0.084018,
		39.883869, 32.204617, 22.645016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581505, 31.715141, 22.474905>,  <40.541416, 32.437366, 22.586203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581505, 31.715141, 22.474905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205368, 31.822477, 22.391241>,  <39.979687, 31.886879, 22.341043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205368, 31.822477, 22.391241>,  <40.581505, 31.715141, 22.474905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205368, 31.822477, 22.391241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106709, -0.351128, -0.930227,
		-0.323055, -0.897053, 0.301548,
		-0.940345, 0.268337, -0.209158,
		39.923264, 31.902981, 22.328493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495029, 31.405313, 21.909084>,  <40.581505, 31.715141, 22.474905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495029, 31.405313, 21.909084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.168190, 31.635893, 21.906099>,  <39.972084, 31.774240, 21.904308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.168190, 31.635893, 21.906099>,  <40.495029, 31.405313, 21.909084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168190, 31.635893, 21.906099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073955, -0.117649, -0.990298,
		-0.571732, -0.808621, 0.138762,
		-0.817100, 0.576447, -0.007462,
		39.923061, 31.808826, 21.903860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948830, 31.079681, 21.467752>,  <40.495029, 31.405313, 21.909084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948830, 31.079681, 21.467752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889034, 31.475153, 21.462517>,  <39.853157, 31.712435, 21.459375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889034, 31.475153, 21.462517>,  <39.948830, 31.079681, 21.467752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889034, 31.475153, 21.462517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245772, -0.049977, -0.968039,
		-0.957732, -0.141491, 0.250460,
		-0.149486, 0.988677, -0.013090,
		39.844189, 31.771755, 21.458590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330860, 31.200815, 21.095629>,  <39.948830, 31.079681, 21.467752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330860, 31.200815, 21.095629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531261, 31.546816, 21.106684>,  <39.651505, 31.754416, 21.113317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.531261, 31.546816, 21.106684>,  <39.330860, 31.200815, 21.095629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531261, 31.546816, 21.106684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265299, 0.183900, -0.946466,
		-0.823777, 0.466854, 0.321620,
		0.501007, 0.865002, 0.027637,
		39.681564, 31.806316, 21.114975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885010, 31.647423, 20.763029>,  <39.330860, 31.200815, 21.095629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885010, 31.647423, 20.763029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248154, 31.815054, 20.768021>,  <39.466042, 31.915632, 20.771015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.248154, 31.815054, 20.768021>,  <38.885010, 31.647423, 20.763029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248154, 31.815054, 20.768021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079915, 0.202189, -0.976081,
		-0.411578, 0.885151, 0.217051,
		0.907864, 0.419079, 0.012480,
		39.520512, 31.940777, 20.771765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786968, 32.316135, 20.485573>,  <38.885010, 31.647423, 20.763029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786968, 32.316135, 20.485573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175362, 32.237465, 20.431156>,  <39.408398, 32.190262, 20.398506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175362, 32.237465, 20.431156>,  <38.786968, 32.316135, 20.485573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175362, 32.237465, 20.431156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036139, 0.441667, -0.896451,
		0.236392, 0.875357, 0.421745,
		0.970985, -0.196672, -0.136041,
		39.466656, 32.178463, 20.390345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130974, 33.024467, 20.229929>,  <38.786968, 32.316135, 20.485573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130974, 33.024467, 20.229929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.376133, 32.723522, 20.133343>,  <39.523228, 32.542953, 20.075392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.376133, 32.723522, 20.133343>,  <39.130974, 33.024467, 20.229929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376133, 32.723522, 20.133343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190078, 0.436996, -0.879150,
		0.766963, 0.492928, 0.410841,
		0.612893, -0.752367, -0.241465,
		39.560001, 32.497810, 20.060904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622360, 33.282211, 19.877094>,  <39.130974, 33.024467, 20.229929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622360, 33.282211, 19.877094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656162, 32.901608, 19.758776>,  <39.676445, 32.673244, 19.687784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656162, 32.901608, 19.758776>,  <39.622360, 33.282211, 19.877094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656162, 32.901608, 19.758776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083048, 0.302550, -0.949509,
		0.992956, 0.055677, 0.104589,
		0.084510, -0.951506, -0.295795,
		39.681515, 32.616158, 19.670038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070198, 33.381783, 19.244781>,  <39.622360, 33.282211, 19.877094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070198, 33.381783, 19.244781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921875, 33.011486, 19.215090>,  <39.832882, 32.789310, 19.197275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921875, 33.011486, 19.215090>,  <40.070198, 33.381783, 19.244781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921875, 33.011486, 19.215090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045452, 0.061741, -0.997057,
		0.927595, -0.373094, 0.019182,
		-0.370812, -0.925737, -0.074228,
		39.810631, 32.733765, 19.192822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524509, 32.989468, 18.707712>,  <40.070198, 33.381783, 19.244781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524509, 32.989468, 18.707712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182945, 32.783703, 18.739258>,  <39.978008, 32.660244, 18.758186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182945, 32.783703, 18.739258>,  <40.524509, 32.989468, 18.707712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182945, 32.783703, 18.739258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041842, -0.083190, -0.995655,
		0.518737, -0.853499, 0.049512,
		-0.853910, -0.514411, 0.078865,
		39.926773, 32.629379, 18.762917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630394, 32.537201, 18.153662>,  <40.524509, 32.989468, 18.707712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630394, 32.537201, 18.153662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.238232, 32.543255, 18.232225>,  <40.002934, 32.546886, 18.279364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.238232, 32.543255, 18.232225>,  <40.630394, 32.537201, 18.153662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238232, 32.543255, 18.232225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196833, -0.035131, -0.979807,
		-0.007911, -0.999268, 0.037418,
		-0.980405, 0.015117, 0.196411,
		39.944111, 32.547794, 18.291149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323761, 32.052437, 17.697664>,  <40.630394, 32.537201, 18.153662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323761, 32.052437, 17.697664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039665, 32.313374, 17.803509>,  <39.869209, 32.469936, 17.867016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039665, 32.313374, 17.803509>,  <40.323761, 32.052437, 17.697664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039665, 32.313374, 17.803509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174601, 0.200902, -0.963926,
		-0.681968, -0.730815, -0.028788,
		-0.710235, 0.652340, 0.264610,
		39.826595, 32.509075, 17.882893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866108, 31.949482, 17.183275>,  <40.323761, 32.052437, 17.697664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866108, 31.949482, 17.183275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723820, 32.294064, 17.328251>,  <39.638447, 32.500813, 17.415237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723820, 32.294064, 17.328251>,  <39.866108, 31.949482, 17.183275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723820, 32.294064, 17.328251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261147, 0.280742, -0.923572,
		-0.897366, -0.423183, 0.125100,
		-0.355719, 0.861452, 0.362441,
		39.617104, 32.552498, 17.436983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295170, 32.065430, 16.786518>,  <39.866108, 31.949482, 17.183275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295170, 32.065430, 16.786518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344730, 32.428783, 16.946260>,  <39.374466, 32.646797, 17.042107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344730, 32.428783, 16.946260>,  <39.295170, 32.065430, 16.786518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344730, 32.428783, 16.946260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370293, 0.415710, -0.830703,
		-0.920615, -0.044956, 0.387875,
		0.123899, 0.908385, 0.399356,
		39.381901, 32.701298, 17.066067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144386, 32.530716, 16.109119>,  <39.295170, 32.065430, 16.786518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144386, 32.530716, 16.109119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123665, 32.764465, 16.433050>,  <39.111233, 32.904716, 16.627409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123665, 32.764465, 16.433050>,  <39.144386, 32.530716, 16.109119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123665, 32.764465, 16.433050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420828, 0.722628, -0.548373,
		-0.905660, -0.369207, 0.208486,
		-0.051805, 0.584376, 0.809828,
		39.108124, 32.939777, 16.675999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783283, 31.950230, 16.125834>,  <39.144386, 32.530716, 16.109119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783283, 31.950230, 16.125834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405872, 32.048286, 16.036699>,  <38.179424, 32.107121, 15.983219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405872, 32.048286, 16.036699>,  <38.783283, 31.950230, 16.125834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405872, 32.048286, 16.036699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236926, -0.029181, 0.971089,
		0.231552, 0.969048, 0.085614,
		-0.943530, 0.245142, -0.222836,
		38.122814, 32.121830, 15.969849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588963, 32.483421, 16.608648>,  <38.783283, 31.950230, 16.125834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588963, 32.483421, 16.608648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251366, 32.309364, 16.483213>,  <38.048809, 32.204929, 16.407953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251366, 32.309364, 16.483213>,  <38.588963, 32.483421, 16.608648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251366, 32.309364, 16.483213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359196, 0.024357, 0.932944,
		-0.398324, 0.900033, -0.176858,
		-0.843988, -0.435141, -0.313587,
		37.998169, 32.178822, 16.389137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031616, 32.939270, 16.853218>,  <38.588963, 32.483421, 16.608648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031616, 32.939270, 16.853218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931126, 32.554192, 16.813023>,  <37.870831, 32.323143, 16.788906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931126, 32.554192, 16.813023>,  <38.031616, 32.939270, 16.853218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931126, 32.554192, 16.813023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322334, -0.014683, 0.946512,
		-0.912681, 0.270178, -0.306622,
		-0.251225, -0.962698, -0.100488,
		37.855759, 32.265381, 16.782877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381901, 32.929226, 16.972626>,  <38.031616, 32.939270, 16.853218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381901, 32.929226, 16.972626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477608, 32.543819, 17.020596>,  <37.535034, 32.312576, 17.049377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477608, 32.543819, 17.020596>,  <37.381901, 32.929226, 16.972626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477608, 32.543819, 17.020596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402878, 0.013858, 0.915149,
		-0.883424, -0.267285, -0.384864,
		0.239272, -0.963518, 0.119926,
		37.549389, 32.254765, 17.056574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756496, 32.752392, 17.307606>,  <37.381901, 32.929226, 16.972626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756496, 32.752392, 17.307606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990211, 32.437836, 17.387796>,  <37.130440, 32.249100, 17.435911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990211, 32.437836, 17.387796>,  <36.756496, 32.752392, 17.307606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990211, 32.437836, 17.387796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379696, -0.046569, 0.923938,
		-0.717244, -0.615967, -0.325801,
		0.584288, -0.786394, 0.200479,
		37.165497, 32.201916, 17.447941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332527, 32.166267, 17.634703>,  <36.756496, 32.752392, 17.307606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332527, 32.166267, 17.634703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714836, 32.093811, 17.727381>,  <36.944221, 32.050339, 17.782988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714836, 32.093811, 17.727381>,  <36.332527, 32.166267, 17.634703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714836, 32.093811, 17.727381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242145, -0.037575, 0.969512,
		-0.166910, -0.982740, -0.079775,
		0.955776, -0.181138, 0.231694,
		37.001568, 32.039471, 17.796888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263393, 31.682102, 18.218939>,  <36.332527, 32.166267, 17.634703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263393, 31.682102, 18.218939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638554, 31.820007, 18.234299>,  <36.863651, 31.902750, 18.243515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638554, 31.820007, 18.234299>,  <36.263393, 31.682102, 18.218939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638554, 31.820007, 18.234299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009488, -0.085162, 0.996322,
		0.346764, -0.934819, -0.076603,
		0.937905, 0.344762, 0.038400,
		36.919926, 31.923435, 18.245819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577972, 31.086885, 18.466700>,  <36.263393, 31.682102, 18.218939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577972, 31.086885, 18.466700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800068, 31.415241, 18.520144>,  <36.933327, 31.612255, 18.552210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800068, 31.415241, 18.520144>,  <36.577972, 31.086885, 18.466700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800068, 31.415241, 18.520144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033471, -0.182575, 0.982622,
		0.831018, -0.541116, -0.128849,
		0.555237, 0.820889, 0.133611,
		36.966640, 31.661509, 18.560226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168346, 30.907433, 18.873674>,  <36.577972, 31.086885, 18.466700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168346, 30.907433, 18.873674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121815, 31.299322, 18.938929>,  <37.093895, 31.534456, 18.978081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121815, 31.299322, 18.938929>,  <37.168346, 30.907433, 18.873674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121815, 31.299322, 18.938929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057833, -0.157290, 0.985858,
		0.991526, 0.124115, -0.038363,
		-0.116326, 0.979722, 0.163135,
		37.086918, 31.593239, 18.987869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523869, 30.983305, 19.539984>,  <37.168346, 30.907433, 18.873674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523869, 30.983305, 19.539984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311165, 31.317957, 19.487400>,  <37.183544, 31.518747, 19.455851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311165, 31.317957, 19.487400>,  <37.523869, 30.983305, 19.539984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311165, 31.317957, 19.487400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020195, 0.142653, 0.989567,
		0.846655, 0.528866, -0.058961,
		-0.531760, 0.836631, -0.131458,
		37.151638, 31.568947, 19.447962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870354, 31.593651, 19.685925>,  <37.523869, 30.983305, 19.539984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870354, 31.593651, 19.685925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493465, 31.714605, 19.743576>,  <37.267330, 31.787178, 19.778168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493465, 31.714605, 19.743576>,  <37.870354, 31.593651, 19.685925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493465, 31.714605, 19.743576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178161, 0.088011, 0.980057,
		0.283672, 0.949113, -0.136800,
		-0.942225, 0.302387, 0.144129,
		37.210796, 31.805321, 19.786816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890083, 32.117870, 20.169495>,  <37.870354, 31.593651, 19.685925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890083, 32.117870, 20.169495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509148, 31.998701, 20.195684>,  <37.280586, 31.927198, 20.211399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509148, 31.998701, 20.195684>,  <37.890083, 32.117870, 20.169495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509148, 31.998701, 20.195684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035142, 0.106065, 0.993738,
		-0.303006, 0.948678, -0.090540,
		-0.952340, -0.297927, 0.065477,
		37.223446, 31.909323, 20.215328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558735, 32.603455, 20.636513>,  <37.890083, 32.117870, 20.169495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558735, 32.603455, 20.636513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351021, 32.261616, 20.637035>,  <37.226391, 32.056511, 20.637348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351021, 32.261616, 20.637035>,  <37.558735, 32.603455, 20.636513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351021, 32.261616, 20.637035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060388, 0.038219, 0.997443,
		-0.852463, 0.517881, -0.071454,
		-0.519288, -0.854598, 0.001307,
		37.195236, 32.005238, 20.637428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196117, 32.724701, 21.137335>,  <37.558735, 32.603455, 20.636513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196117, 32.724701, 21.137335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135342, 32.330246, 21.110674>,  <37.098877, 32.093571, 21.094677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135342, 32.330246, 21.110674>,  <37.196117, 32.724701, 21.137335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135342, 32.330246, 21.110674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075802, -0.055610, 0.995571,
		-0.985479, 0.156316, -0.066303,
		-0.151937, -0.986140, -0.066652,
		37.089760, 32.034405, 21.090679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879536, 32.562687, 21.727417>,  <37.196117, 32.724701, 21.137335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879536, 32.562687, 21.727417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017849, 32.208637, 21.602842>,  <37.100838, 31.996208, 21.528097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017849, 32.208637, 21.602842>,  <36.879536, 32.562687, 21.727417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017849, 32.208637, 21.602842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034272, -0.343605, 0.938489,
		-0.937689, -0.313839, -0.149147,
		0.345782, -0.885122, -0.311439,
		37.121582, 31.943100, 21.509411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273983, 32.098572, 21.891092>,  <36.879536, 32.562687, 21.727417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273983, 32.098572, 21.891092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616463, 31.892756, 21.872408>,  <36.821949, 31.769266, 21.861197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616463, 31.892756, 21.872408>,  <36.273983, 32.098572, 21.891092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616463, 31.892756, 21.872408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190996, -0.399229, 0.896737,
		-0.480054, -0.758859, -0.440092,
		0.856194, -0.514538, -0.046712,
		36.873322, 31.738394, 21.858395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123390, 31.454268, 22.326103>,  <36.273983, 32.098572, 21.891092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123390, 31.454268, 22.326103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523148, 31.455444, 22.312178>,  <36.763000, 31.456150, 22.303823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523148, 31.455444, 22.312178>,  <36.123390, 31.454268, 22.326103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523148, 31.455444, 22.312178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034305, -0.271176, 0.961918,
		-0.006611, -0.962525, -0.271111,
		0.999390, 0.002942, -0.034812,
		36.822964, 31.456327, 22.301733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281494, 30.809856, 22.516897>,  <36.123390, 31.454268, 22.326103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281494, 30.809856, 22.516897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585346, 31.062517, 22.578836>,  <36.767658, 31.214113, 22.616001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585346, 31.062517, 22.578836>,  <36.281494, 30.809856, 22.516897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585346, 31.062517, 22.578836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120305, -0.370467, 0.921022,
		0.639133, -0.681006, -0.357408,
		0.759629, 0.631653, 0.154849,
		36.813236, 31.252012, 22.625292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657547, 30.464231, 23.120977>,  <36.281494, 30.809856, 22.516897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657547, 30.464231, 23.120977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859486, 30.809277, 23.108139>,  <36.980648, 31.016304, 23.100435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859486, 30.809277, 23.108139>,  <36.657547, 30.464231, 23.120977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859486, 30.809277, 23.108139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323104, -0.154355, 0.933691,
		0.800458, -0.481743, -0.356639,
		0.504848, 0.862611, -0.032098,
		37.010941, 31.068060, 23.098509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252041, 30.336033, 23.519108>,  <36.657547, 30.464231, 23.120977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252041, 30.336033, 23.519108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196598, 30.732168, 23.520685>,  <37.163334, 30.969851, 23.521631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196598, 30.732168, 23.520685>,  <37.252041, 30.336033, 23.519108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196598, 30.732168, 23.520685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314110, 0.040188, 0.948536,
		0.939214, 0.132711, -0.316646,
		-0.138607, 0.990340, 0.003941,
		37.155018, 31.029270, 23.521868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839073, 30.572330, 23.858299>,  <37.252041, 30.336033, 23.519108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839073, 30.572330, 23.858299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547485, 30.844429, 23.888950>,  <37.372532, 31.007689, 23.907341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547485, 30.844429, 23.888950>,  <37.839073, 30.572330, 23.858299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547485, 30.844429, 23.888950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206976, 0.112319, 0.971877,
		0.652508, 0.724328, -0.222671,
		-0.728968, 0.680245, 0.076630,
		37.328796, 31.048502, 23.911940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.232540, 33.418812, 27.984476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.910954, 33.653065, 27.943151>,  <40.718002, 33.793617, 27.918358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.910954, 33.653065, 27.943151>,  <41.232540, 33.418812, 27.984476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910954, 33.653065, 27.943151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081336, 0.280383, 0.956436,
		0.589085, 0.760540, -0.273052,
		-0.803967, 0.585631, -0.103310,
		40.669762, 33.828754, 27.912159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389095, 34.067463, 28.290667>,  <41.232540, 33.418812, 27.984476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389095, 34.067463, 28.290667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991756, 34.021603, 28.286386>,  <40.753353, 33.994087, 28.283819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991756, 34.021603, 28.286386>,  <41.389095, 34.067463, 28.290667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991756, 34.021603, 28.286386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050168, 0.347253, 0.936429,
		-0.103648, 0.930736, -0.350695,
		-0.993348, -0.114653, -0.010701,
		40.693752, 33.987206, 28.283176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092133, 34.602089, 28.641596>,  <41.389095, 34.067463, 28.290667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092133, 34.602089, 28.641596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795040, 34.336834, 28.678699>,  <40.616783, 34.177681, 28.700962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795040, 34.336834, 28.678699>,  <41.092133, 34.602089, 28.641596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795040, 34.336834, 28.678699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118862, 0.266904, 0.956365,
		-0.658955, 0.699297, -0.277060,
		-0.742732, -0.663133, 0.092758,
		40.572220, 34.137894, 28.706528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563637, 34.955479, 29.111660>,  <41.092133, 34.602089, 28.641596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563637, 34.955479, 29.111660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540783, 34.556171, 29.106054>,  <40.527069, 34.316586, 29.102690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.540783, 34.556171, 29.106054>,  <40.563637, 34.955479, 29.111660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540783, 34.556171, 29.106054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091412, -0.008748, 0.995775,
		-0.994173, 0.058178, -0.090754,
		-0.057138, -0.998268, -0.014015,
		40.523643, 34.256691, 29.101851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995922, 34.873547, 29.538656>,  <40.563637, 34.955479, 29.111660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995922, 34.873547, 29.538656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172260, 34.514530, 29.542034>,  <40.278065, 34.299118, 29.544060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.172260, 34.514530, 29.542034>,  <39.995922, 34.873547, 29.538656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172260, 34.514530, 29.542034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164052, -0.071321, 0.983870,
		-0.882463, -0.435121, -0.178685,
		0.440847, -0.897543, 0.008444,
		40.304516, 34.245266, 29.544567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512451, 34.474979, 29.789679>,  <39.995922, 34.873547, 29.538656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512451, 34.474979, 29.789679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866489, 34.304581, 29.864655>,  <40.078911, 34.202343, 29.909641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866489, 34.304581, 29.864655>,  <39.512451, 34.474979, 29.789679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866489, 34.304581, 29.864655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246007, -0.086340, 0.965415,
		-0.395076, -0.900597, -0.181217,
		0.885096, -0.425993, 0.187442,
		40.132019, 34.176785, 29.920887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414589, 33.818314, 30.144833>,  <39.512451, 34.474979, 29.789679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414589, 33.818314, 30.144833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795006, 33.918613, 30.217102>,  <40.023254, 33.978794, 30.260464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795006, 33.918613, 30.217102>,  <39.414589, 33.818314, 30.144833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795006, 33.918613, 30.217102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139337, -0.173934, 0.974850,
		0.275873, -0.952297, -0.130480,
		0.951041, 0.250754, 0.180674,
		40.080318, 33.993839, 30.271305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493809, 33.396160, 30.636076>,  <39.414589, 33.818314, 30.144833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493809, 33.396160, 30.636076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827652, 33.616226, 30.647049>,  <40.027958, 33.748268, 30.653633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827652, 33.616226, 30.647049>,  <39.493809, 33.396160, 30.636076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827652, 33.616226, 30.647049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015324, -0.026593, 0.999529,
		0.550637, -0.834631, -0.013764,
		0.834604, 0.550167, 0.027433,
		40.078033, 33.781277, 30.655279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918388, 33.094391, 31.162489>,  <39.493809, 33.396160, 30.636076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918388, 33.094391, 31.162489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.020805, 33.477444, 31.109741>,  <40.082256, 33.707275, 31.078093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.020805, 33.477444, 31.109741>,  <39.918388, 33.094391, 31.162489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020805, 33.477444, 31.109741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106838, 0.163613, 0.980722,
		0.960744, -0.237016, 0.144203,
		0.256040, 0.957629, -0.131868,
		40.097618, 33.764732, 31.070181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349289, 33.328899, 31.689701>,  <39.918388, 33.094391, 31.162489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349289, 33.328899, 31.689701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173439, 33.667339, 31.569138>,  <40.067928, 33.870403, 31.496799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173439, 33.667339, 31.569138>,  <40.349289, 33.328899, 31.689701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173439, 33.667339, 31.569138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080742, 0.296988, 0.951461,
		0.894546, 0.442621, -0.062247,
		-0.439623, 0.846100, -0.301407,
		40.041553, 33.921169, 31.478716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604153, 33.842701, 32.125881>,  <40.349289, 33.328899, 31.689701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604153, 33.842701, 32.125881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.298019, 34.036865, 31.956816>,  <40.114338, 34.153362, 31.855377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.298019, 34.036865, 31.956816>,  <40.604153, 33.842701, 32.125881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298019, 34.036865, 31.956816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174877, 0.475153, 0.862350,
		0.619420, 0.733900, -0.278765,
		-0.765335, 0.485408, -0.422661,
		40.068420, 34.182487, 31.830017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591064, 34.610508, 32.306416>,  <40.604153, 33.842701, 32.125881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591064, 34.610508, 32.306416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.225826, 34.470314, 32.223061>,  <40.006683, 34.386200, 32.173046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.225826, 34.470314, 32.223061>,  <40.591064, 34.610508, 32.306416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225826, 34.470314, 32.223061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383015, 0.561917, 0.733177,
		-0.139870, 0.749273, -0.647322,
		-0.913092, -0.350483, -0.208387,
		39.951900, 34.365170, 32.160545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799721, 34.824242, 33.006439>,  <40.591064, 34.610508, 32.306416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799721, 34.824242, 33.006439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968712, 35.186764, 33.010910>,  <41.070107, 35.404278, 33.013592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.968712, 35.186764, 33.010910>,  <40.799721, 34.824242, 33.006439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968712, 35.186764, 33.010910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255724, 0.131017, -0.957831,
		-0.869549, 0.401808, 0.287116,
		0.422481, 0.906303, 0.011174,
		41.095455, 35.458656, 33.014263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354507, 35.316448, 32.765034>,  <40.799721, 34.824242, 33.006439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354507, 35.316448, 32.765034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730343, 35.441830, 32.710026>,  <40.955845, 35.517059, 32.677021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730343, 35.441830, 32.710026>,  <40.354507, 35.316448, 32.765034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730343, 35.441830, 32.710026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153427, 0.026530, -0.987804,
		-0.305983, 0.949232, 0.073019,
		0.939593, 0.313455, -0.137520,
		41.012222, 35.535866, 32.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049194, 35.951126, 32.447903>,  <40.354507, 35.316448, 32.765034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049194, 35.951126, 32.447903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967358, 36.342579, 32.439697>,  <39.918255, 36.577450, 32.434772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967358, 36.342579, 32.439697>,  <40.049194, 35.951126, 32.447903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967358, 36.342579, 32.439697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586202, -0.139278, -0.798103,
		-0.783907, -0.151256, 0.602172,
		-0.204588, 0.978633, -0.020514,
		39.905983, 36.636169, 32.433544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369488, 35.983223, 32.307827>,  <40.049194, 35.951126, 32.447903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369488, 35.983223, 32.307827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458763, 36.364407, 32.225800>,  <39.512329, 36.593117, 32.176582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458763, 36.364407, 32.225800>,  <39.369488, 35.983223, 32.307827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458763, 36.364407, 32.225800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704381, 0.012249, -0.709717,
		-0.673820, 0.302845, 0.673981,
		0.223189, 0.952961, -0.205064,
		39.525719, 36.650295, 32.164280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745960, 36.435898, 32.346333>,  <39.369488, 35.983223, 32.307827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745960, 36.435898, 32.346333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007839, 36.608883, 32.098351>,  <39.164967, 36.712673, 31.949560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007839, 36.608883, 32.098351>,  <38.745960, 36.435898, 32.346333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007839, 36.608883, 32.098351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731305, 0.154915, -0.664224,
		-0.191210, 0.888245, 0.417683,
		0.654699, 0.432460, -0.619957,
		39.204250, 36.738621, 31.912363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382816, 36.975483, 32.052818>,  <38.745960, 36.435898, 32.346333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382816, 36.975483, 32.052818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676411, 36.920910, 31.786692>,  <38.852566, 36.888168, 31.627014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.676411, 36.920910, 31.786692>,  <38.382816, 36.975483, 32.052818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676411, 36.920910, 31.786692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650050, 0.142623, -0.746387,
		0.196719, 0.980329, 0.015997,
		0.733987, -0.136430, -0.665320,
		38.896606, 36.879982, 31.587095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194096, 37.340126, 31.468517>,  <38.382816, 36.975483, 32.052818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194096, 37.340126, 31.468517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470509, 37.098804, 31.309269>,  <38.636356, 36.954010, 31.213720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.470509, 37.098804, 31.309269>,  <38.194096, 37.340126, 31.468517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470509, 37.098804, 31.309269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444164, 0.080115, -0.892357,
		0.570257, 0.793478, -0.212603,
		0.691033, -0.603303, -0.398120,
		38.677818, 36.917812, 31.189833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233860, 37.601540, 30.895226>,  <38.194096, 37.340126, 31.468517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233860, 37.601540, 30.895226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409924, 37.246223, 30.842758>,  <38.515560, 37.033035, 30.811277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409924, 37.246223, 30.842758>,  <38.233860, 37.601540, 30.895226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409924, 37.246223, 30.842758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493809, -0.117463, -0.861600,
		0.749942, 0.444012, -0.490347,
		0.440158, -0.888288, -0.131167,
		38.541969, 36.979736, 30.803408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550846, 37.602119, 30.207561>,  <38.233860, 37.601540, 30.895226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550846, 37.602119, 30.207561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514053, 37.213432, 30.294565>,  <38.491978, 36.980221, 30.346767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514053, 37.213432, 30.294565>,  <38.550846, 37.602119, 30.207561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514053, 37.213432, 30.294565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151931, -0.202184, -0.967491,
		0.984102, -0.122040, -0.129036,
		-0.091983, -0.971714, 0.217511,
		38.486458, 36.921917, 30.359818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872902, 37.243912, 29.586077>,  <38.550846, 37.602119, 30.207561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872902, 37.243912, 29.586077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626236, 36.983627, 29.763300>,  <38.478237, 36.827457, 29.869633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626236, 36.983627, 29.763300>,  <38.872902, 37.243912, 29.586077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626236, 36.983627, 29.763300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223161, -0.395225, -0.891065,
		0.754932, -0.648362, 0.098508,
		-0.616665, -0.650710, 0.443057,
		38.441235, 36.788414, 29.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159481, 36.596172, 29.600328>,  <38.872902, 37.243912, 29.586077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159481, 36.596172, 29.600328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770126, 36.514915, 29.642756>,  <38.536514, 36.466160, 29.668211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770126, 36.514915, 29.642756>,  <39.159481, 36.596172, 29.600328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770126, 36.514915, 29.642756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007957, -0.432604, -0.901549,
		0.229029, -0.878400, 0.419475,
		-0.973387, -0.203143, 0.106068,
		38.478111, 36.453972, 29.674576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063641, 35.984119, 29.313448>,  <39.159481, 36.596172, 29.600328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063641, 35.984119, 29.313448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680008, 36.095337, 29.334789>,  <38.449829, 36.162067, 29.347595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680008, 36.095337, 29.334789>,  <39.063641, 35.984119, 29.313448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680008, 36.095337, 29.334789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147533, -0.329980, -0.932388,
		-0.241637, -0.902112, 0.357500,
		-0.959086, 0.278042, 0.053356,
		38.392281, 36.178749, 29.350796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634922, 35.406525, 28.954447>,  <39.063641, 35.984119, 29.313448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634922, 35.406525, 28.954447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.392555, 35.724731, 28.956427>,  <38.247135, 35.915653, 28.957615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.392555, 35.724731, 28.956427>,  <38.634922, 35.406525, 28.954447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392555, 35.724731, 28.956427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289304, -0.214551, -0.932883,
		-0.741060, -0.566680, 0.360145,
		-0.605916, 0.795513, 0.004947,
		38.210781, 35.963387, 28.957911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995823, 35.224934, 28.734148>,  <38.634922, 35.406525, 28.954447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995823, 35.224934, 28.734148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034622, 35.616188, 28.660566>,  <38.057903, 35.850941, 28.616417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034622, 35.616188, 28.660566>,  <37.995823, 35.224934, 28.734148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034622, 35.616188, 28.660566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046678, -0.180152, -0.982531,
		-0.994189, 0.103895, 0.028182,
		0.097003, 0.978136, -0.183955,
		38.063725, 35.909630, 28.605379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465054, 35.383522, 28.271082>,  <37.995823, 35.224934, 28.734148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465054, 35.383522, 28.271082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733604, 35.675453, 28.219540>,  <37.894737, 35.850613, 28.188614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733604, 35.675453, 28.219540>,  <37.465054, 35.383522, 28.271082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733604, 35.675453, 28.219540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036995, -0.206655, -0.977714,
		-0.740188, 0.651653, -0.165744,
		0.671382, 0.729824, -0.128855,
		37.935020, 35.894402, 28.180883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268887, 35.651356, 27.684340>,  <37.465054, 35.383522, 28.271082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268887, 35.651356, 27.684340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.650894, 35.766350, 27.713427>,  <37.880100, 35.835346, 27.730879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.650894, 35.766350, 27.713427>,  <37.268887, 35.651356, 27.684340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650894, 35.766350, 27.713427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067247, 0.028874, -0.997318,
		-0.288813, 0.957350, 0.008243,
		0.955021, 0.287484, 0.072718,
		37.937401, 35.852596, 27.735241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783836, 36.277962, 27.462418>,  <37.268887, 35.651356, 27.684340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783836, 36.277962, 27.462418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.399899, 36.340195, 27.369041>,  <36.169537, 36.377533, 27.313017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.399899, 36.340195, 27.369041>,  <36.783836, 36.277962, 27.462418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399899, 36.340195, 27.369041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176265, 0.312888, 0.933291,
		0.218242, 0.936961, -0.272901,
		-0.959844, 0.155580, -0.233438,
		36.111946, 36.386868, 27.299009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568378, 37.075821, 27.696892>,  <36.783836, 36.277962, 27.462418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568378, 37.075821, 27.696892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253155, 36.829845, 27.685492>,  <36.064018, 36.682262, 27.678652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.253155, 36.829845, 27.685492>,  <36.568378, 37.075821, 27.696892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253155, 36.829845, 27.685492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230173, 0.251406, 0.940114,
		-0.570945, 0.747428, -0.339665,
		-0.788062, -0.614936, -0.028499,
		36.016735, 36.645363, 27.676941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972023, 37.474758, 28.035917>,  <36.568378, 37.075821, 27.696892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972023, 37.474758, 28.035917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865913, 37.089207, 28.045469>,  <35.802246, 36.857876, 28.051201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.865913, 37.089207, 28.045469>,  <35.972023, 37.474758, 28.035917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865913, 37.089207, 28.045469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193153, 0.077390, 0.978112,
		-0.944627, 0.254859, -0.206705,
		-0.265277, -0.963876, 0.023878,
		35.786331, 36.800045, 28.052633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348949, 37.493359, 28.399250>,  <35.972023, 37.474758, 28.035917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348949, 37.493359, 28.399250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464390, 37.110382, 28.397434>,  <35.533653, 36.880596, 28.396345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.464390, 37.110382, 28.397434>,  <35.348949, 37.493359, 28.399250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464390, 37.110382, 28.397434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265268, -0.084515, 0.960464,
		-0.919969, -0.275987, -0.278369,
		0.288602, -0.957438, -0.004541,
		35.550972, 36.823151, 28.396072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787136, 37.222614, 28.777122>,  <35.348949, 37.493359, 28.399250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787136, 37.222614, 28.777122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.101406, 36.975163, 28.775824>,  <35.289970, 36.826691, 28.775045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.101406, 36.975163, 28.775824>,  <34.787136, 37.222614, 28.777122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101406, 36.975163, 28.775824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084279, -0.112232, 0.990101,
		-0.612868, -0.777627, -0.140316,
		0.785678, -0.618627, -0.003246,
		35.337109, 36.789574, 28.774849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516582, 36.698109, 29.172667>,  <34.787136, 37.222614, 28.777122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516582, 36.698109, 29.172667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.915936, 36.695946, 29.195316>,  <35.155548, 36.694649, 29.208906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.915936, 36.695946, 29.195316>,  <34.516582, 36.698109, 29.172667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915936, 36.695946, 29.195316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056734, -0.022917, 0.998126,
		-0.004092, -0.999723, -0.023186,
		0.998381, -0.005400, 0.056624,
		35.215450, 36.694324, 29.212303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603142, 36.111908, 29.622110>,  <34.516582, 36.698109, 29.172667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603142, 36.111908, 29.622110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.909706, 36.368477, 29.608339>,  <35.093647, 36.522419, 29.600077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.909706, 36.368477, 29.608339>,  <34.603142, 36.111908, 29.622110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909706, 36.368477, 29.608339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081640, -0.044108, 0.995685,
		0.637137, -0.765918, -0.086171,
		0.766415, 0.641423, -0.034427,
		35.139629, 36.560905, 29.598011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011013, 35.852459, 30.127823>,  <34.603142, 36.111908, 29.622110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011013, 35.852459, 30.127823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.176163, 36.213730, 30.080818>,  <35.275253, 36.430492, 30.052616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.176163, 36.213730, 30.080818>,  <35.011013, 35.852459, 30.127823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176163, 36.213730, 30.080818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020271, 0.138102, 0.990210,
		0.910561, -0.406454, 0.075328,
		0.412878, 0.903174, -0.117511,
		35.300026, 36.484680, 30.045565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542789, 35.845081, 30.645525>,  <35.011013, 35.852459, 30.127823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542789, 35.845081, 30.645525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.458771, 36.226067, 30.557259>,  <35.408360, 36.454659, 30.504299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.458771, 36.226067, 30.557259>,  <35.542789, 35.845081, 30.645525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458771, 36.226067, 30.557259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069431, 0.210600, 0.975103,
		0.975224, 0.220134, 0.021896,
		-0.210042, 0.952464, -0.220666,
		35.395760, 36.511806, 30.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926361, 36.246399, 31.155085>,  <35.542789, 35.845081, 30.645525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926361, 36.246399, 31.155085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.654034, 36.495991, 31.001650>,  <35.490639, 36.645744, 30.909588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.654034, 36.495991, 31.001650>,  <35.926361, 36.246399, 31.155085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654034, 36.495991, 31.001650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154425, 0.389650, 0.907924,
		0.715991, 0.677364, -0.168922,
		-0.680815, 0.623980, -0.383588,
		35.449791, 36.683186, 30.886574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233681, 36.869522, 31.364002>,  <35.926361, 36.246399, 31.155085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233681, 36.869522, 31.364002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.841236, 36.897373, 31.291803>,  <35.605770, 36.914085, 31.248484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.841236, 36.897373, 31.291803>,  <36.233681, 36.869522, 31.364002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841236, 36.897373, 31.291803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126435, 0.475395, 0.870640,
		0.146427, 0.877013, -0.457611,
		-0.981108, 0.069627, -0.180496,
		35.546906, 36.918262, 31.237654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024956, 37.487316, 31.567213>,  <36.233681, 36.869522, 31.364002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024956, 37.487316, 31.567213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700874, 37.252956, 31.560400>,  <35.506424, 37.112339, 31.556313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700874, 37.252956, 31.560400>,  <36.024956, 37.487316, 31.567213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700874, 37.252956, 31.560400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181964, 0.223788, 0.957501,
		-0.557188, 0.778870, -0.287927,
		-0.810204, -0.585901, -0.017034,
		35.457813, 37.077187, 31.555290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.060421, 36.702404, 23.813437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740963, 36.465286, 23.771957>,  <36.549286, 36.323013, 23.747070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740963, 36.465286, 23.771957>,  <37.060421, 36.702404, 23.813437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740963, 36.465286, 23.771957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325731, 0.280923, 0.902763,
		-0.506025, 0.754767, -0.417451,
		-0.798647, -0.592798, -0.103697,
		36.501369, 36.287445, 23.740849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469643, 37.082985, 24.127865>,  <37.060421, 36.702404, 23.813437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469643, 37.082985, 24.127865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395916, 36.689899, 24.134691>,  <36.351681, 36.454048, 24.138786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395916, 36.689899, 24.134691>,  <36.469643, 37.082985, 24.127865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395916, 36.689899, 24.134691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302522, 0.073244, 0.950324,
		-0.935151, 0.170001, -0.310794,
		-0.184320, -0.982718, 0.017065,
		36.340622, 36.395084, 24.139811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823563, 36.998653, 24.436621>,  <36.469643, 37.082985, 24.127865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823563, 36.998653, 24.436621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947800, 36.619537, 24.465513>,  <36.022343, 36.392067, 24.482849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947800, 36.619537, 24.465513>,  <35.823563, 36.998653, 24.436621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947800, 36.619537, 24.465513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325142, -0.034526, 0.945035,
		-0.893205, -0.317006, -0.318892,
		0.310592, -0.947795, 0.072234,
		36.040977, 36.335197, 24.487183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321568, 36.658264, 24.611906>,  <35.823563, 36.998653, 24.436621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321568, 36.658264, 24.611906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637993, 36.439087, 24.720701>,  <35.827847, 36.307579, 24.785978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637993, 36.439087, 24.720701>,  <35.321568, 36.658264, 24.611906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637993, 36.439087, 24.720701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414118, -0.152421, 0.897371,
		-0.450255, -0.822510, -0.347489,
		0.791061, -0.547947, 0.271988,
		35.875313, 36.274704, 24.802298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083641, 36.071892, 24.927616>,  <35.321568, 36.658264, 24.611906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083641, 36.071892, 24.927616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454880, 36.142609, 25.058689>,  <35.677624, 36.185040, 25.137333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454880, 36.142609, 25.058689>,  <35.083641, 36.071892, 24.927616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454880, 36.142609, 25.058689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327987, -0.028335, 0.944257,
		0.176224, -0.983840, 0.031688,
		0.928100, 0.176794, 0.327680,
		35.733311, 36.195648, 25.156994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036793, 35.698009, 25.518280>,  <35.083641, 36.071892, 24.927616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036793, 35.698009, 25.518280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369484, 35.918941, 25.540794>,  <35.569099, 36.051502, 25.554302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369484, 35.918941, 25.540794>,  <35.036793, 35.698009, 25.518280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369484, 35.918941, 25.540794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114098, 0.070833, 0.990941,
		0.543340, -0.830611, 0.121933,
		0.831723, 0.552331, 0.056284,
		35.618999, 36.084641, 25.557680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441490, 35.341774, 26.087004>,  <35.036793, 35.698009, 25.518280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441490, 35.341774, 26.087004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583717, 35.715393, 26.073559>,  <35.669052, 35.939564, 26.065493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583717, 35.715393, 26.073559>,  <35.441490, 35.341774, 26.087004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583717, 35.715393, 26.073559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024580, 0.045293, 0.998671,
		0.934329, -0.354264, 0.039063,
		0.355563, 0.934048, -0.033611,
		35.690388, 35.995605, 26.063475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983246, 35.360596, 26.548084>,  <35.441490, 35.341774, 26.087004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983246, 35.360596, 26.548084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922977, 35.753841, 26.506546>,  <35.886814, 35.989788, 26.481623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922977, 35.753841, 26.506546>,  <35.983246, 35.360596, 26.548084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922977, 35.753841, 26.506546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169121, 0.129130, 0.977100,
		0.974010, 0.129662, -0.185721,
		-0.150675, 0.983114, -0.103845,
		35.877773, 36.048775, 26.475393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580437, 35.713802, 26.945593>,  <35.983246, 35.360596, 26.548084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580437, 35.713802, 26.945593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280609, 35.977299, 26.919636>,  <36.100712, 36.135395, 26.904062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280609, 35.977299, 26.919636>,  <36.580437, 35.713802, 26.945593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280609, 35.977299, 26.919636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140398, 0.254025, 0.956953,
		0.646870, 0.708188, -0.282894,
		-0.749565, 0.658742, -0.064893,
		36.055740, 36.174923, 26.900167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338333, 35.912525, 27.027443>,  <36.580437, 35.713802, 26.945593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338333, 35.912525, 27.027443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715878, 35.947495, 27.154873>,  <37.942402, 35.968475, 27.231331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715878, 35.947495, 27.154873>,  <37.338333, 35.912525, 27.027443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715878, 35.947495, 27.154873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321410, -0.020133, -0.946726,
		-0.076354, 0.995968, -0.047102,
		0.943857, 0.087425, 0.318576,
		37.999035, 35.973721, 27.250446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778511, 36.621719, 26.713879>,  <37.338333, 35.912525, 27.027443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778511, 36.621719, 26.713879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036190, 36.330036, 26.806196>,  <38.190796, 36.155025, 26.861588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036190, 36.330036, 26.806196>,  <37.778511, 36.621719, 26.713879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036190, 36.330036, 26.806196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287248, -0.049004, -0.956602,
		0.708870, 0.682537, 0.177895,
		0.644198, -0.729207, 0.230795,
		38.229450, 36.111275, 26.875435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357624, 36.774250, 26.411442>,  <37.778511, 36.621719, 26.713879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357624, 36.774250, 26.411442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386898, 36.383507, 26.491827>,  <38.404461, 36.149059, 26.540058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386898, 36.383507, 26.491827>,  <38.357624, 36.774250, 26.411442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386898, 36.383507, 26.491827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413345, -0.153674, -0.897513,
		0.907629, 0.148750, 0.392534,
		0.073183, -0.976861, 0.200964,
		38.408852, 36.090450, 26.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089214, 36.569366, 26.178883>,  <38.357624, 36.774250, 26.411442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089214, 36.569366, 26.178883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864765, 36.238274, 26.179108>,  <38.730095, 36.039619, 26.179243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864765, 36.238274, 26.179108>,  <39.089214, 36.569366, 26.178883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864765, 36.238274, 26.179108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476073, -0.323288, -0.817826,
		0.677124, -0.458632, 0.575466,
		-0.561122, -0.827733, 0.000563,
		38.696430, 35.989952, 26.179277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557213, 36.120239, 26.055735>,  <39.089214, 36.569366, 26.178883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557213, 36.120239, 26.055735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204525, 35.960327, 25.955540>,  <38.992912, 35.864380, 25.895422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204525, 35.960327, 25.955540>,  <39.557213, 36.120239, 26.055735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204525, 35.960327, 25.955540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385857, -0.305615, -0.870468,
		0.271441, -0.864163, 0.423724,
		-0.881722, -0.399777, -0.250487,
		38.940010, 35.840393, 25.880394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740383, 35.634151, 25.631571>,  <39.557213, 36.120239, 26.055735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740383, 35.634151, 25.631571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347759, 35.627224, 25.555418>,  <39.112186, 35.623066, 25.509726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347759, 35.627224, 25.555418>,  <39.740383, 35.634151, 25.631571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347759, 35.627224, 25.555418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184760, -0.341621, -0.921498,
		-0.049080, -0.939678, 0.338520,
		-0.981557, -0.017318, -0.190381,
		39.053291, 35.622028, 25.498304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699287, 35.017479, 25.224142>,  <39.740383, 35.634151, 25.631571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699287, 35.017479, 25.224142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386860, 35.258606, 25.158978>,  <39.199402, 35.403282, 25.119879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386860, 35.258606, 25.158978>,  <39.699287, 35.017479, 25.224142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386860, 35.258606, 25.158978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075148, -0.168251, -0.982876,
		-0.619903, -0.779939, 0.086116,
		-0.781072, 0.602816, -0.162911,
		39.152538, 35.439449, 25.110104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378956, 34.771568, 24.577505>,  <39.699287, 35.017479, 25.224142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378956, 34.771568, 24.577505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245750, 35.144493, 24.633926>,  <39.165829, 35.368248, 24.667780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245750, 35.144493, 24.633926>,  <39.378956, 34.771568, 24.577505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245750, 35.144493, 24.633926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198845, 0.215664, -0.956007,
		-0.921719, -0.290312, -0.257204,
		-0.333010, 0.932313, 0.141055,
		39.145847, 35.424187, 24.676243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884220, 34.886555, 24.075979>,  <39.378956, 34.771568, 24.577505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884220, 34.886555, 24.075979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989216, 35.253197, 24.196598>,  <39.052212, 35.473183, 24.268970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989216, 35.253197, 24.196598>,  <38.884220, 34.886555, 24.075979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989216, 35.253197, 24.196598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158414, 0.267331, -0.950494,
		-0.951842, 0.297265, -0.075031,
		0.262490, 0.916607, 0.301548,
		39.067963, 35.528179, 24.287062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423500, 35.361061, 23.660366>,  <38.884220, 34.886555, 24.075979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423500, 35.361061, 23.660366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748959, 35.540977, 23.807695>,  <38.944233, 35.648926, 23.896093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748959, 35.540977, 23.807695>,  <38.423500, 35.361061, 23.660366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748959, 35.540977, 23.807695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137022, 0.467339, -0.873395,
		-0.564978, 0.761106, 0.318619,
		0.813649, 0.449791, 0.368325,
		38.993053, 35.675915, 23.918192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416115, 36.109192, 23.478930>,  <38.423500, 35.361061, 23.660366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416115, 36.109192, 23.478930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800362, 36.020809, 23.546322>,  <39.030910, 35.967781, 23.586758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800362, 36.020809, 23.546322>,  <38.416115, 36.109192, 23.478930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800362, 36.020809, 23.546322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251431, 0.433114, -0.865560,
		0.118278, 0.873837, 0.471614,
		0.960621, -0.220955, 0.168482,
		39.088547, 35.954521, 23.596867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810261, 36.749096, 23.319904>,  <38.416115, 36.109192, 23.478930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810261, 36.749096, 23.319904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069225, 36.444492, 23.307533>,  <39.224606, 36.261730, 23.300110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069225, 36.444492, 23.307533>,  <38.810261, 36.749096, 23.319904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069225, 36.444492, 23.307533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277992, 0.273739, -0.920754,
		0.709630, 0.587511, 0.388916,
		0.647414, -0.761510, -0.030930,
		39.263451, 36.216038, 23.298254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303902, 37.099178, 22.953331>,  <38.810261, 36.749096, 23.319904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303902, 37.099178, 22.953331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398911, 36.710880, 22.939278>,  <39.455914, 36.477901, 22.930845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398911, 36.710880, 22.939278>,  <39.303902, 37.099178, 22.953331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398911, 36.710880, 22.939278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255814, 0.097401, -0.961807,
		0.937093, 0.219462, 0.271465,
		0.237520, -0.970747, -0.035132,
		39.470165, 36.419655, 22.928738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775688, 37.127617, 22.484320>,  <39.303902, 37.099178, 22.953331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775688, 37.127617, 22.484320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681717, 36.738884, 22.491808>,  <39.625332, 36.505646, 22.496302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681717, 36.738884, 22.491808>,  <39.775688, 37.127617, 22.484320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681717, 36.738884, 22.491808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062684, -0.034367, -0.997441,
		0.969988, -0.233158, 0.068993,
		-0.234932, -0.971831, 0.018721,
		39.611237, 36.447334, 22.497423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.667637, 31.268595, 22.018724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668190, 31.668587, 22.016405>,  <34.668522, 31.908583, 22.015015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668190, 31.668587, 22.016405>,  <34.667637, 31.268595, 22.018724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668190, 31.668587, 22.016405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002268, 0.005800, 0.999981,
		0.999996, -0.001369, 0.002276,
		0.001382, 0.999982, -0.005797,
		34.668606, 31.968582, 22.014666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141167, 31.521805, 22.614040>,  <34.667637, 31.268595, 22.018724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141167, 31.521805, 22.614040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909176, 31.834051, 22.520859>,  <34.769981, 32.021400, 22.464951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909176, 31.834051, 22.520859>,  <35.141167, 31.521805, 22.614040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909176, 31.834051, 22.520859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147271, 0.180778, 0.972435,
		0.801211, 0.598296, 0.010115,
		-0.579976, 0.780616, -0.232953,
		34.735184, 32.068237, 22.450974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450317, 32.119499, 22.954830>,  <35.141167, 31.521805, 22.614040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450317, 32.119499, 22.954830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084927, 32.260143, 22.872923>,  <34.865692, 32.344528, 22.823778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084927, 32.260143, 22.872923>,  <35.450317, 32.119499, 22.954830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084927, 32.260143, 22.872923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052038, 0.398168, 0.915835,
		0.403548, 0.847251, -0.345420,
		-0.913477, 0.351608, -0.204769,
		34.810883, 32.365627, 22.811493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489212, 32.752327, 23.150259>,  <35.450317, 32.119499, 22.954830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489212, 32.752327, 23.150259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095028, 32.684452, 23.153841>,  <34.858517, 32.643726, 23.155991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.095028, 32.684452, 23.153841>,  <35.489212, 32.752327, 23.150259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095028, 32.684452, 23.153841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077377, 0.495018, 0.865430,
		-0.151287, 0.852152, -0.500949,
		-0.985457, -0.169690, 0.008953,
		34.799393, 32.633545, 23.156527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148499, 33.422859, 23.149509>,  <35.489212, 32.752327, 23.150259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148499, 33.422859, 23.149509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914658, 33.131149, 23.291723>,  <34.774353, 32.956123, 23.377050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914658, 33.131149, 23.291723>,  <35.148499, 33.422859, 23.149509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914658, 33.131149, 23.291723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121185, 0.511788, 0.850522,
		-0.802221, 0.454129, -0.387568,
		-0.584599, -0.729274, 0.355533,
		34.739277, 32.912369, 23.398384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607174, 33.801563, 23.613787>,  <35.148499, 33.422859, 23.149509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607174, 33.801563, 23.613787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.583202, 33.420361, 23.732574>,  <34.568821, 33.191639, 23.803846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.583202, 33.420361, 23.732574>,  <34.607174, 33.801563, 23.613787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583202, 33.420361, 23.732574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198953, 0.302939, 0.932011,
		-0.978175, -0.003228, -0.207759,
		-0.059930, -0.953004, 0.296970,
		34.565224, 33.134460, 23.821665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169182, 33.798126, 24.205894>,  <34.607174, 33.801563, 23.613787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169182, 33.798126, 24.205894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.313183, 33.427177, 24.246660>,  <34.399582, 33.204609, 24.271120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.313183, 33.427177, 24.246660>,  <34.169182, 33.798126, 24.205894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313183, 33.427177, 24.246660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179155, 0.038486, 0.983068,
		-0.915588, -0.372166, -0.152288,
		0.360003, -0.927368, 0.101913,
		34.421185, 33.148968, 24.277233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747036, 33.485485, 24.640713>,  <34.169182, 33.798126, 24.205894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747036, 33.485485, 24.640713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091808, 33.283318, 24.656883>,  <34.298672, 33.162018, 24.666586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091808, 33.283318, 24.656883>,  <33.747036, 33.485485, 24.640713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091808, 33.283318, 24.656883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018759, 0.111467, 0.993591,
		-0.506683, -0.855646, 0.105558,
		0.861928, -0.505416, 0.040428,
		34.350388, 33.131691, 24.669012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792053, 33.145088, 25.243088>,  <33.747036, 33.485485, 24.640713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792053, 33.145088, 25.243088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181221, 33.169678, 25.153959>,  <34.414722, 33.184429, 25.100481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181221, 33.169678, 25.153959>,  <33.792053, 33.145088, 25.243088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181221, 33.169678, 25.153959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217960, 0.076953, 0.972919,
		0.076954, -0.995138, 0.061471,
		-0.972919, -0.061471, 0.222822,
		34.473095, 33.188118, 25.087112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034084, 32.652691, 25.642525>,  <33.792053, 33.145088, 25.243088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034084, 32.652691, 25.642525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.338642, 32.900211, 25.565210>,  <34.521378, 33.048725, 25.518822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.338642, 32.900211, 25.565210>,  <34.034084, 32.652691, 25.642525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338642, 32.900211, 25.565210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208931, 0.048016, 0.976751,
		0.613695, -0.784079, -0.092727,
		0.761397, 0.618801, -0.193286,
		34.567062, 33.085850, 25.507225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570717, 32.298752, 25.835041>,  <34.034084, 32.652691, 25.642525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570717, 32.298752, 25.835041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665054, 32.687416, 25.841320>,  <34.721657, 32.920616, 25.845087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665054, 32.687416, 25.841320>,  <34.570717, 32.298752, 25.835041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665054, 32.687416, 25.841320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317401, -0.092288, 0.943790,
		0.918496, -0.217605, -0.330173,
		0.235844, 0.971664, 0.015698,
		34.735809, 32.978916, 25.846029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118717, 32.362709, 26.244438>,  <34.570717, 32.298752, 25.835041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118717, 32.362709, 26.244438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.994911, 32.742832, 26.257761>,  <34.920628, 32.970905, 26.265755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.994911, 32.742832, 26.257761>,  <35.118717, 32.362709, 26.244438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994911, 32.742832, 26.257761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026905, -0.043765, 0.998679,
		0.950515, 0.308208, 0.039114,
		-0.309512, 0.950312, 0.033307,
		34.902058, 33.027927, 26.267754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350033, 32.599537, 26.841688>,  <35.118717, 32.362709, 26.244438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350033, 32.599537, 26.841688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075855, 32.883129, 26.775345>,  <34.911346, 33.053284, 26.735538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075855, 32.883129, 26.775345>,  <35.350033, 32.599537, 26.841688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075855, 32.883129, 26.775345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033892, 0.196475, 0.979923,
		0.727332, 0.677308, -0.110645,
		-0.685448, 0.708980, -0.165858,
		34.870220, 33.095821, 26.725588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611599, 33.149517, 27.136850>,  <35.350033, 32.599537, 26.841688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611599, 33.149517, 27.136850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.216049, 33.205952, 27.117964>,  <34.978722, 33.239811, 27.106632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.216049, 33.205952, 27.117964>,  <35.611599, 33.149517, 27.136850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216049, 33.205952, 27.117964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021591, 0.177924, 0.983807,
		0.147200, 0.973878, -0.172898,
		-0.988871, 0.141084, -0.047217,
		34.919388, 33.248276, 27.103798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390114, 33.196121, 27.217459>,  <35.611599, 33.149517, 27.136850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390114, 33.196121, 27.217459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.607147, 32.917835, 27.405752>,  <36.737366, 32.750866, 27.518728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.607147, 32.917835, 27.405752>,  <36.390114, 33.196121, 27.217459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607147, 32.917835, 27.405752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185380, -0.447405, -0.874907,
		0.819291, 0.561975, -0.113784,
		0.542583, -0.695710, 0.470734,
		36.769920, 32.709122, 27.546972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903336, 33.179661, 26.822948>,  <36.390114, 33.196121, 27.217459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903336, 33.179661, 26.822948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909920, 32.836540, 27.028435>,  <36.913872, 32.630669, 27.151726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.909920, 32.836540, 27.028435>,  <36.903336, 33.179661, 26.822948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909920, 32.836540, 27.028435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045117, -0.512622, -0.857428,
		0.998846, 0.037295, 0.030262,
		0.016465, -0.857804, 0.513713,
		36.914860, 32.579201, 27.182549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534691, 32.831516, 26.515814>,  <36.903336, 33.179661, 26.822948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534691, 32.831516, 26.515814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269890, 32.572685, 26.667097>,  <37.111012, 32.417385, 26.757868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269890, 32.572685, 26.667097>,  <37.534691, 32.831516, 26.515814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269890, 32.572685, 26.667097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032702, -0.529068, -0.847949,
		0.748791, -0.548973, 0.371404,
		-0.661999, -0.647082, 0.378209,
		37.071289, 32.378559, 26.780560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894283, 32.188801, 26.542490>,  <37.534691, 32.831516, 26.515814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894283, 32.188801, 26.542490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504738, 32.099743, 26.560421>,  <37.271011, 32.046307, 26.571178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504738, 32.099743, 26.560421>,  <37.894283, 32.188801, 26.542490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504738, 32.099743, 26.560421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108446, -0.629286, -0.769571,
		0.199551, -0.744599, 0.636986,
		-0.973868, -0.222647, 0.044826,
		37.212578, 32.032948, 26.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837921, 31.472170, 26.381868>,  <37.894283, 32.188801, 26.542490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837921, 31.472170, 26.381868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470634, 31.616257, 26.316002>,  <37.250263, 31.702709, 26.276482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470634, 31.616257, 26.316002>,  <37.837921, 31.472170, 26.381868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470634, 31.616257, 26.316002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056763, -0.531140, -0.845380,
		-0.391979, -0.766899, 0.508151,
		-0.918221, 0.360216, -0.164664,
		37.195168, 31.724321, 26.266602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500927, 30.951330, 26.276524>,  <37.837921, 31.472170, 26.381868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500927, 30.951330, 26.276524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298088, 31.249546, 26.103537>,  <37.176384, 31.428476, 25.999744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298088, 31.249546, 26.103537>,  <37.500927, 30.951330, 26.276524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298088, 31.249546, 26.103537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059046, -0.470535, -0.880403,
		-0.859865, -0.471983, 0.194585,
		-0.507095, 0.745539, -0.432466,
		37.145958, 31.473207, 25.973797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087223, 30.595562, 25.882109>,  <37.500927, 30.951330, 26.276524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087223, 30.595562, 25.882109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057240, 30.958424, 25.716482>,  <37.039249, 31.176142, 25.617105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.057240, 30.958424, 25.716482>,  <37.087223, 30.595562, 25.882109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057240, 30.958424, 25.716482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071486, -0.419054, -0.905143,
		-0.994621, -0.038249, 0.096260,
		-0.074959, 0.907155, -0.414066,
		37.034752, 31.230570, 25.592262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703423, 30.532112, 25.308464>,  <37.087223, 30.595562, 25.882109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703423, 30.532112, 25.308464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865108, 30.884212, 25.209055>,  <36.962120, 31.095474, 25.149408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865108, 30.884212, 25.209055>,  <36.703423, 30.532112, 25.308464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865108, 30.884212, 25.209055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095722, -0.310929, -0.945600,
		-0.909641, 0.358437, -0.209942,
		0.404215, 0.880253, -0.248524,
		36.986374, 31.148289, 25.134499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304508, 30.873291, 24.720673>,  <36.703423, 30.532112, 25.308464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304508, 30.873291, 24.720673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666267, 31.043884, 24.715273>,  <36.883324, 31.146240, 24.712032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666267, 31.043884, 24.715273>,  <36.304508, 30.873291, 24.720673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666267, 31.043884, 24.715273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032073, -0.099491, -0.994521,
		-0.425491, 0.899006, -0.103658,
		0.904394, 0.426485, -0.013499,
		36.937584, 31.171829, 24.711224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246395, 31.438101, 24.351536>,  <36.304508, 30.873291, 24.720673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246395, 31.438101, 24.351536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633709, 31.339758, 24.333710>,  <36.866096, 31.280752, 24.323013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633709, 31.339758, 24.333710>,  <36.246395, 31.438101, 24.351536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633709, 31.339758, 24.333710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048318, -0.009246, -0.998789,
		0.245149, 0.969261, -0.020832,
		0.968281, -0.245859, -0.044566,
		36.924194, 31.266001, 24.320339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452061, 31.979174, 23.934797>,  <36.246395, 31.438101, 24.351536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452061, 31.979174, 23.934797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710136, 31.674612, 23.909510>,  <36.864983, 31.491875, 23.894337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710136, 31.674612, 23.909510>,  <36.452061, 31.979174, 23.934797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710136, 31.674612, 23.909510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054625, 0.128502, -0.990204,
		0.762069, 0.635414, 0.124500,
		0.645188, -0.761404, -0.063217,
		36.903694, 31.446190, 23.890545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878365, 32.276421, 23.492771>,  <36.452061, 31.979174, 23.934797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878365, 32.276421, 23.492771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989189, 31.892099, 23.496639>,  <37.055683, 31.661507, 23.498960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989189, 31.892099, 23.496639>,  <36.878365, 32.276421, 23.492771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989189, 31.892099, 23.496639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127991, 0.026931, -0.991410,
		0.952291, 0.275915, 0.130436,
		0.277058, -0.960805, 0.009668,
		37.072308, 31.603857, 23.499540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426315, 32.267643, 23.114981>,  <36.878365, 32.276421, 23.492771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426315, 32.267643, 23.114981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318481, 31.882553, 23.123825>,  <37.253780, 31.651499, 23.129131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318481, 31.882553, 23.123825>,  <37.426315, 32.267643, 23.114981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318481, 31.882553, 23.123825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069549, -0.042368, -0.996678,
		0.960462, -0.267153, 0.078378,
		-0.269586, -0.962722, 0.022113,
		37.237606, 31.593737, 23.130459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056381, 31.806665, 22.859587>,  <37.426315, 32.267643, 23.114981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056381, 31.806665, 22.859587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694386, 31.653522, 22.785385>,  <37.477188, 31.561638, 22.740864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694386, 31.653522, 22.785385>,  <38.056381, 31.806665, 22.859587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694386, 31.653522, 22.785385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202678, -0.004620, -0.979234,
		0.374049, -0.923796, 0.081777,
		-0.904991, -0.382856, -0.185505,
		37.422890, 31.538666, 22.729734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782417, 31.604404, 22.779263>,  <38.056381, 31.806665, 22.859587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782417, 31.604404, 22.779263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138924, 31.780561, 22.735991>,  <39.352825, 31.886255, 22.710028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138924, 31.780561, 22.735991>,  <38.782417, 31.604404, 22.779263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138924, 31.780561, 22.735991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086752, 0.068568, 0.993868,
		0.445110, -0.895183, 0.022907,
		0.891264, 0.440393, -0.108179,
		39.406303, 31.912680, 22.703537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193645, 31.392054, 23.306984>,  <38.782417, 31.604404, 22.779263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193645, 31.392054, 23.306984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.359715, 31.739864, 23.199986>,  <39.459354, 31.948551, 23.135786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.359715, 31.739864, 23.199986>,  <39.193645, 31.392054, 23.306984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359715, 31.739864, 23.199986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062446, 0.266103, 0.961920,
		0.907598, -0.416066, 0.056180,
		0.415171, 0.869528, -0.267496,
		39.484264, 32.000721, 23.119738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644485, 31.493479, 23.812372>,  <39.193645, 31.392054, 23.306984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644485, 31.493479, 23.812372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630249, 31.852476, 23.636538>,  <39.621708, 32.067875, 23.531036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630249, 31.852476, 23.636538>,  <39.644485, 31.493479, 23.812372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630249, 31.852476, 23.636538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182396, 0.438311, 0.880122,
		0.982581, -0.048856, -0.179299,
		-0.035589, 0.897495, -0.439587,
		39.619572, 32.121723, 23.504662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240490, 31.843632, 24.087578>,  <39.644485, 31.493479, 23.812372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240490, 31.843632, 24.087578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015484, 32.143158, 23.947378>,  <39.880478, 32.322872, 23.863258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015484, 32.143158, 23.947378>,  <40.240490, 31.843632, 24.087578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015484, 32.143158, 23.947378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238075, 0.552678, 0.798666,
		0.791765, 0.365820, -0.489166,
		-0.562519, 0.748815, -0.350498,
		39.846729, 32.367802, 23.842228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655342, 32.503666, 24.143909>,  <40.240490, 31.843632, 24.087578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655342, 32.503666, 24.143909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288799, 32.657417, 24.099104>,  <40.068874, 32.749668, 24.072222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288799, 32.657417, 24.099104>,  <40.655342, 32.503666, 24.143909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288799, 32.657417, 24.099104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177664, 0.641120, 0.746593,
		0.358785, 0.664244, -0.655784,
		-0.916356, 0.384376, -0.112012,
		40.013893, 32.772732, 24.065500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695961, 33.189102, 24.192915>,  <40.655342, 32.503666, 24.143909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695961, 33.189102, 24.192915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314926, 33.132278, 24.300541>,  <40.086304, 33.098183, 24.365116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.314926, 33.132278, 24.300541>,  <40.695961, 33.189102, 24.192915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314926, 33.132278, 24.300541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115430, 0.649473, 0.751572,
		-0.281516, 0.746997, -0.602283,
		-0.952588, -0.142058, 0.269063,
		40.029148, 33.089661, 24.381260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543613, 33.769161, 24.597309>,  <40.695961, 33.189102, 24.192915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543613, 33.769161, 24.597309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213329, 33.561985, 24.686705>,  <40.015160, 33.437679, 24.740343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213329, 33.561985, 24.686705>,  <40.543613, 33.769161, 24.597309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213329, 33.561985, 24.686705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066153, 0.304549, 0.950197,
		-0.560205, 0.799370, -0.217205,
		-0.825708, -0.517936, 0.223491,
		39.965618, 33.406605, 24.753752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012394, 34.273598, 24.897434>,  <40.543613, 33.769161, 24.597309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012394, 34.273598, 24.897434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982357, 33.892483, 25.015118>,  <39.964336, 33.663815, 25.085728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.982357, 33.892483, 25.015118>,  <40.012394, 34.273598, 24.897434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982357, 33.892483, 25.015118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203030, 0.274254, 0.939981,
		-0.976289, 0.130320, 0.172850,
		-0.075093, -0.952786, 0.294210,
		39.959827, 33.606647, 25.103380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515705, 34.269958, 25.409578>,  <40.012394, 34.273598, 24.897434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515705, 34.269958, 25.409578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709965, 33.922607, 25.449701>,  <39.826519, 33.714195, 25.473776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709965, 33.922607, 25.449701>,  <39.515705, 34.269958, 25.409578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709965, 33.922607, 25.449701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068266, 0.152072, 0.986009,
		-0.871486, -0.472004, 0.133134,
		0.485646, -0.868381, 0.100307,
		39.855659, 33.662094, 25.479794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206478, 33.938652, 26.008898>,  <39.515705, 34.269958, 25.409578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206478, 33.938652, 26.008898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561981, 33.761551, 25.961439>,  <39.775284, 33.655293, 25.932964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561981, 33.761551, 25.961439>,  <39.206478, 33.938652, 26.008898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561981, 33.761551, 25.961439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227232, 0.200777, 0.952919,
		-0.398082, -0.873878, 0.279049,
		0.888761, -0.442749, -0.118647,
		39.828609, 33.628727, 25.925844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205990, 33.440708, 26.454910>,  <39.206478, 33.938652, 26.008898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205990, 33.440708, 26.454910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590919, 33.528679, 26.390953>,  <39.821877, 33.581459, 26.352579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590919, 33.528679, 26.390953>,  <39.205990, 33.440708, 26.454910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590919, 33.528679, 26.390953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193878, -0.142701, 0.970591,
		0.190641, -0.965023, -0.179964,
		0.962324, 0.219926, -0.159892,
		39.879616, 33.594658, 26.342985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692337, 32.964916, 26.812384>,  <39.205990, 33.440708, 26.454910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692337, 32.964916, 26.812384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.937836, 33.276398, 26.760345>,  <40.085136, 33.463287, 26.729122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.937836, 33.276398, 26.760345>,  <39.692337, 32.964916, 26.812384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937836, 33.276398, 26.760345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099055, 0.087530, 0.991225,
		0.783261, -0.621252, -0.023414,
		0.613751, 0.778707, -0.130097,
		40.121960, 33.510010, 26.721317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121189, 32.858498, 27.358763>,  <39.692337, 32.964916, 26.812384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121189, 32.858498, 27.358763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209114, 33.231934, 27.245565>,  <40.261871, 33.455997, 27.177647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209114, 33.231934, 27.245565>,  <40.121189, 32.858498, 27.358763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209114, 33.231934, 27.245565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333428, 0.200718, 0.921161,
		0.916791, -0.296843, -0.267165,
		0.219816, 0.933593, -0.282993,
		40.275059, 33.512012, 27.160667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808167, 33.039719, 27.557625>,  <40.121189, 32.858498, 27.358763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808167, 33.039719, 27.557625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630371, 33.396538, 27.524929>,  <40.523693, 33.610630, 27.505312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630371, 33.396538, 27.524929>,  <40.808167, 33.039719, 27.557625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630371, 33.396538, 27.524929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185841, 0.181096, 0.965747,
		0.876294, 0.414074, -0.246275,
		-0.444490, 0.892047, -0.081742,
		40.497025, 33.664150, 27.500406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.455910, 36.498974, 22.291607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096676, 36.338043, 22.220537>,  <39.881134, 36.241486, 22.177895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.096676, 36.338043, 22.220537>,  <40.455910, 36.498974, 22.291607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096676, 36.338043, 22.220537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270657, -0.187143, -0.944311,
		0.346673, -0.896163, 0.276964,
		-0.898088, -0.402330, -0.177675,
		39.827248, 36.217346, 22.167234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572979, 35.964832, 21.812294>,  <40.455910, 36.498974, 22.291607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572979, 35.964832, 21.812294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179550, 36.024529, 21.771664>,  <39.943493, 36.060345, 21.747286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.179550, 36.024529, 21.771664>,  <40.572979, 35.964832, 21.812294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179550, 36.024529, 21.771664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080102, -0.143446, -0.986411,
		-0.161799, -0.978338, 0.129133,
		-0.983567, 0.149257, -0.101576,
		39.884480, 36.069302, 21.741192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306522, 35.330544, 21.529131>,  <40.572979, 35.964832, 21.812294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306522, 35.330544, 21.529131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.044018, 35.624279, 21.459784>,  <39.886513, 35.800522, 21.418175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.044018, 35.624279, 21.459784>,  <40.306522, 35.330544, 21.529131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044018, 35.624279, 21.459784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060211, -0.178067, -0.982175,
		-0.752124, -0.655006, 0.072644,
		-0.656266, 0.734343, -0.173367,
		39.847137, 35.844582, 21.407774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699177, 35.079487, 21.249601>,  <40.306522, 35.330544, 21.529131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699177, 35.079487, 21.249601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717224, 35.454777, 21.112370>,  <39.728054, 35.679951, 21.030029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717224, 35.454777, 21.112370>,  <39.699177, 35.079487, 21.249601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717224, 35.454777, 21.112370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129690, -0.346026, -0.929218,
		-0.990527, -0.002571, -0.137290,
		0.045117, 0.938221, -0.343081,
		39.730759, 35.736244, 21.009445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372017, 35.081867, 20.642078>,  <39.699177, 35.079487, 21.249601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372017, 35.081867, 20.642078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561127, 35.432804, 20.609198>,  <39.674591, 35.643368, 20.589470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.561127, 35.432804, 20.609198>,  <39.372017, 35.081867, 20.642078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561127, 35.432804, 20.609198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090958, -0.044198, -0.994873,
		-0.876477, 0.477827, 0.058905,
		0.472774, 0.877341, -0.082201,
		39.702957, 35.696007, 20.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978558, 35.544426, 20.114815>,  <39.372017, 35.081867, 20.642078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978558, 35.544426, 20.114815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.366486, 35.641216, 20.126768>,  <39.599243, 35.699291, 20.133940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.366486, 35.641216, 20.126768>,  <38.978558, 35.544426, 20.114815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366486, 35.641216, 20.126768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048390, -0.070904, -0.996309,
		-0.238968, 0.967687, -0.080473,
		0.969821, 0.241980, 0.029883,
		39.657433, 35.713810, 20.135733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022610, 35.909767, 19.495926>,  <38.978558, 35.544426, 20.114815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022610, 35.909767, 19.495926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411655, 35.868572, 19.579279>,  <39.645081, 35.843853, 19.629290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411655, 35.868572, 19.579279>,  <39.022610, 35.909767, 19.495926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411655, 35.868572, 19.579279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200902, -0.078432, -0.976466,
		0.116912, 0.991585, -0.055593,
		0.972610, -0.102992, 0.208381,
		39.703438, 35.837673, 19.641794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420860, 36.313732, 19.073524>,  <39.022610, 35.909767, 19.495926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420860, 36.313732, 19.073524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.642384, 36.000874, 19.187744>,  <39.775299, 35.813156, 19.256275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.642384, 36.000874, 19.187744>,  <39.420860, 36.313732, 19.073524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642384, 36.000874, 19.187744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201971, -0.206510, -0.957372,
		0.807776, 0.587874, 0.043604,
		0.553809, -0.782149, 0.285547,
		39.808525, 35.766228, 19.273409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984859, 36.365337, 18.618309>,  <39.420860, 36.313732, 19.073524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984859, 36.365337, 18.618309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.038620, 35.998055, 18.767347>,  <40.070877, 35.777683, 18.856770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.038620, 35.998055, 18.767347>,  <39.984859, 36.365337, 18.618309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038620, 35.998055, 18.767347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269211, -0.328032, -0.905495,
		0.953657, 0.222006, 0.203104,
		0.134401, -0.918209, 0.372596,
		40.078941, 35.722591, 18.879126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684383, 36.101662, 18.448725>,  <39.984859, 36.365337, 18.618309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684383, 36.101662, 18.448725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477600, 35.767040, 18.521318>,  <40.353531, 35.566269, 18.564875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477600, 35.767040, 18.521318>,  <40.684383, 36.101662, 18.448725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477600, 35.767040, 18.521318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335848, -0.393221, -0.855911,
		0.787378, -0.381516, 0.484232,
		-0.516954, -0.836554, 0.181483,
		40.322514, 35.516075, 18.575764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097057, 35.628197, 18.293200>,  <40.684383, 36.101662, 18.448725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097057, 35.628197, 18.293200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.740414, 35.447540, 18.280226>,  <40.526428, 35.339146, 18.272442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.740414, 35.447540, 18.280226>,  <41.097057, 35.628197, 18.293200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740414, 35.447540, 18.280226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287525, -0.509369, -0.811093,
		0.349806, -0.732502, 0.584017,
		-0.891608, -0.451645, -0.032432,
		40.472931, 35.312046, 18.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220383, 34.878506, 18.193371>,  <41.097057, 35.628197, 18.293200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220383, 34.878506, 18.193371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.840828, 34.929367, 18.077824>,  <40.613094, 34.959885, 18.008495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.840828, 34.929367, 18.077824>,  <41.220383, 34.878506, 18.193371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840828, 34.929367, 18.077824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206767, -0.441055, -0.873337,
		-0.238453, -0.888428, 0.392220,
		-0.948888, 0.127152, -0.288868,
		40.556160, 34.967514, 17.991163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153904, 34.333412, 17.726082>,  <41.220383, 34.878506, 18.193371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153904, 34.333412, 17.726082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836430, 34.565281, 17.652290>,  <40.645943, 34.704403, 17.608015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836430, 34.565281, 17.652290>,  <41.153904, 34.333412, 17.726082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836430, 34.565281, 17.652290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059898, -0.227316, -0.971977,
		-0.605366, -0.782499, 0.145698,
		-0.793690, 0.579675, -0.184479,
		40.598324, 34.739182, 17.596947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582932, 33.966476, 17.307804>,  <41.153904, 34.333412, 17.726082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582932, 33.966476, 17.307804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610634, 34.360706, 17.246044>,  <40.627254, 34.597244, 17.208988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610634, 34.360706, 17.246044>,  <40.582932, 33.966476, 17.307804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610634, 34.360706, 17.246044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073250, -0.159379, -0.984496,
		-0.994906, 0.056871, -0.083231,
		0.069255, 0.985578, -0.154401,
		40.631409, 34.656380, 17.199724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764919, 33.834667, 17.465857>,  <40.582932, 33.966476, 17.307804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764919, 33.834667, 17.465857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635509, 33.474884, 17.348341>,  <39.557865, 33.259014, 17.277832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.635509, 33.474884, 17.348341>,  <39.764919, 33.834667, 17.465857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635509, 33.474884, 17.348341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069694, -0.332295, 0.940597,
		-0.943649, 0.283831, 0.170193,
		-0.323525, -0.899455, -0.293788,
		39.538452, 33.205048, 17.260204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294491, 33.689220, 17.922895>,  <39.764919, 33.834667, 17.465857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294491, 33.689220, 17.922895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397018, 33.335983, 17.765701>,  <39.458534, 33.124039, 17.671385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397018, 33.335983, 17.765701>,  <39.294491, 33.689220, 17.922895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397018, 33.335983, 17.765701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054738, -0.392655, 0.918056,
		-0.965040, -0.256830, -0.052307,
		0.256323, -0.883097, -0.392986,
		39.473915, 33.071053, 17.647806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809258, 33.227924, 18.282415>,  <39.294491, 33.689220, 17.922895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809258, 33.227924, 18.282415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122383, 33.017776, 18.149035>,  <39.310257, 32.891689, 18.069006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122383, 33.017776, 18.149035>,  <38.809258, 33.227924, 18.282415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122383, 33.017776, 18.149035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171555, -0.332894, 0.927227,
		-0.598139, -0.783053, -0.170465,
		0.782815, -0.525366, -0.333453,
		39.357227, 32.860168, 18.048998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745316, 32.639069, 18.668938>,  <38.809258, 33.227924, 18.282415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745316, 32.639069, 18.668938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113308, 32.601334, 18.516764>,  <39.334103, 32.578693, 18.425459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.113308, 32.601334, 18.516764>,  <38.745316, 32.639069, 18.668938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113308, 32.601334, 18.516764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274521, -0.537698, 0.797194,
		-0.279764, -0.837843, -0.468776,
		0.919984, -0.094337, -0.380434,
		39.389301, 32.573032, 18.402634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785156, 31.979010, 18.681190>,  <38.745316, 32.639069, 18.668938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785156, 31.979010, 18.681190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133850, 32.173950, 18.701485>,  <39.343067, 32.290913, 18.713661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133850, 32.173950, 18.701485>,  <38.785156, 31.979010, 18.681190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133850, 32.173950, 18.701485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193062, -0.436800, 0.878597,
		0.450346, -0.756106, -0.474861,
		0.871732, 0.487350, 0.050736,
		39.395370, 32.320156, 18.716705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299671, 31.500605, 18.939447>,  <38.785156, 31.979010, 18.681190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299671, 31.500605, 18.939447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455368, 31.861755, 19.012447>,  <39.548786, 32.078445, 19.056248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455368, 31.861755, 19.012447>,  <39.299671, 31.500605, 18.939447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455368, 31.861755, 19.012447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458109, -0.361631, 0.812009,
		0.799140, -0.232464, -0.554378,
		0.389243, 0.902875, 0.182500,
		39.572140, 32.132618, 19.067198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869740, 31.391954, 19.267889>,  <39.299671, 31.500605, 18.939447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869740, 31.391954, 19.267889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814732, 31.771399, 19.381889>,  <39.781727, 31.999065, 19.450289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814732, 31.771399, 19.381889>,  <39.869740, 31.391954, 19.267889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814732, 31.771399, 19.381889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274227, -0.240023, 0.931230,
		0.951781, 0.206219, -0.227126,
		-0.137521, 0.948611, 0.285000,
		39.773476, 32.055981, 19.467390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387070, 31.472021, 19.716143>,  <39.869740, 31.391954, 19.267889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387070, 31.472021, 19.716143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150833, 31.774323, 19.829309>,  <40.009090, 31.955704, 19.897209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150833, 31.774323, 19.829309>,  <40.387070, 31.472021, 19.716143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150833, 31.774323, 19.829309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194367, -0.207050, 0.958828,
		0.783217, 0.621261, -0.024613,
		-0.590587, 0.755754, 0.282917,
		39.973656, 32.001049, 19.914185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706715, 31.783110, 20.222532>,  <40.387070, 31.472021, 19.716143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706715, 31.783110, 20.222532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.334713, 31.915247, 20.286985>,  <40.111511, 31.994530, 20.325657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.334713, 31.915247, 20.286985>,  <40.706715, 31.783110, 20.222532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334713, 31.915247, 20.286985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168958, -0.005097, 0.985610,
		0.326409, 0.943848, -0.051074,
		-0.930006, 0.330341, 0.161134,
		40.055710, 32.014351, 20.335325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692223, 32.484966, 20.725014>,  <40.706715, 31.783110, 20.222532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692223, 32.484966, 20.725014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332432, 32.311131, 20.743223>,  <40.116558, 32.206829, 20.754148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.332432, 32.311131, 20.743223>,  <40.692223, 32.484966, 20.725014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332432, 32.311131, 20.743223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015063, 0.134964, 0.990736,
		-0.436704, 0.890461, -0.127943,
		-0.899479, -0.434585, 0.045526,
		40.062588, 32.180756, 20.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203262, 32.951714, 21.202505>,  <40.692223, 32.484966, 20.725014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203262, 32.951714, 21.202505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031273, 32.591270, 21.180140>,  <39.928082, 32.375004, 21.166721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.031273, 32.591270, 21.180140>,  <40.203262, 32.951714, 21.202505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031273, 32.591270, 21.180140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215329, 0.042209, 0.975629,
		-0.876789, 0.431530, -0.212183,
		-0.429970, -0.901110, -0.055913,
		39.902283, 32.320938, 21.163366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519943, 33.047699, 21.519346>,  <40.203262, 32.951714, 21.202505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519943, 33.047699, 21.519346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602612, 32.656742, 21.501471>,  <39.652214, 32.422169, 21.490746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602612, 32.656742, 21.501471>,  <39.519943, 33.047699, 21.519346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602612, 32.656742, 21.501471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218770, -0.090681, 0.971553,
		-0.953639, -0.191014, -0.232565,
		0.206670, -0.977389, -0.044689,
		39.664612, 32.363525, 21.488064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976765, 32.585964, 21.732895>,  <39.519943, 33.047699, 21.519346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976765, 32.585964, 21.732895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306076, 32.372181, 21.809391>,  <39.503662, 32.243912, 21.855289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306076, 32.372181, 21.809391>,  <38.976765, 32.585964, 21.732895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306076, 32.372181, 21.809391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235575, -0.015169, 0.971738,
		-0.516452, -0.845059, -0.138393,
		0.823275, -0.534458, 0.191241,
		39.553059, 32.211845, 21.866764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704895, 31.938845, 22.079071>,  <38.976765, 32.585964, 21.732895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704895, 31.938845, 22.079071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.089634, 32.001976, 22.168467>,  <39.320477, 32.039856, 22.222103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.089634, 32.001976, 22.168467>,  <38.704895, 31.938845, 22.079071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089634, 32.001976, 22.168467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225666, -0.004223, 0.974196,
		0.154702, -0.987457, 0.031555,
		0.961843, 0.157830, 0.223489,
		39.378185, 32.049324, 22.235514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072273, 31.545212, 22.197090>,  <38.704895, 31.938845, 22.079071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072273, 31.545212, 22.197090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676357, 31.507603, 22.239937>,  <37.438808, 31.485037, 22.265646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.676357, 31.507603, 22.239937>,  <38.072273, 31.545212, 22.197090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676357, 31.507603, 22.239937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114541, 0.077451, -0.990395,
		0.084874, -0.992548, -0.087435,
		-0.989786, -0.094074, 0.107114,
		37.379421, 31.479397, 22.272072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915028, 31.007793, 21.792135>,  <38.072273, 31.545212, 22.197090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915028, 31.007793, 21.792135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591465, 31.242184, 21.811312>,  <37.397327, 31.382818, 21.822817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591465, 31.242184, 21.811312>,  <37.915028, 31.007793, 21.792135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591465, 31.242184, 21.811312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102308, -0.059998, -0.992942,
		-0.578963, -0.808105, 0.108483,
		-0.808910, 0.585975, 0.047939,
		37.348793, 31.417976, 21.825693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635555, 30.834187, 21.107475>,  <37.915028, 31.007793, 21.792135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635555, 30.834187, 21.107475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455166, 31.167572, 21.235199>,  <37.346931, 31.367603, 21.311834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.455166, 31.167572, 21.235199>,  <37.635555, 30.834187, 21.107475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455166, 31.167572, 21.235199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338581, 0.171264, -0.925220,
		-0.825825, -0.525360, 0.204961,
		-0.450971, 0.833466, 0.319311,
		37.319874, 31.417612, 21.330992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990871, 30.700891, 20.869528>,  <37.635555, 30.834187, 21.107475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990871, 30.700891, 20.869528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.022827, 31.095957, 20.923397>,  <37.042000, 31.332996, 20.955719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.022827, 31.095957, 20.923397>,  <36.990871, 30.700891, 20.869528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022827, 31.095957, 20.923397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156494, 0.145859, -0.976849,
		-0.984443, 0.056965, 0.166217,
		0.079891, 0.987664, 0.134675,
		37.046795, 31.392256, 20.963800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503071, 30.903761, 20.427021>,  <36.990871, 30.700891, 20.869528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503071, 30.903761, 20.427021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720894, 31.229893, 20.505709>,  <36.851589, 31.425571, 20.552921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720894, 31.229893, 20.505709>,  <36.503071, 30.903761, 20.427021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720894, 31.229893, 20.505709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191610, 0.349278, -0.917219,
		-0.816544, 0.461785, 0.346427,
		0.544557, 0.815328, 0.196718,
		36.884262, 31.474491, 20.564724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062916, 31.437136, 20.150820>,  <36.503071, 30.903761, 20.427021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062916, 31.437136, 20.150820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419979, 31.611746, 20.195721>,  <36.634216, 31.716513, 20.222662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419979, 31.611746, 20.195721>,  <36.062916, 31.437136, 20.150820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419979, 31.611746, 20.195721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091968, 0.420209, -0.902755,
		-0.441245, 0.795531, 0.415250,
		0.892662, 0.436526, 0.112252,
		36.687778, 31.742704, 20.229397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979980, 32.150906, 19.991274>,  <36.062916, 31.437136, 20.150820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979980, 32.150906, 19.991274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360210, 32.047134, 19.923023>,  <36.588348, 31.984873, 19.882072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360210, 32.047134, 19.923023>,  <35.979980, 32.150906, 19.991274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360210, 32.047134, 19.923023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156965, 0.072661, -0.984928,
		0.267912, 0.963026, 0.028349,
		0.950571, -0.259424, -0.170628,
		36.645382, 31.969307, 19.871836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646545, 32.831982, 19.606421>,  <35.979980, 32.150906, 19.991274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646545, 32.831982, 19.606421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276138, 32.776028, 19.466183>,  <35.053894, 32.742455, 19.382040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276138, 32.776028, 19.466183>,  <35.646545, 32.831982, 19.606421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276138, 32.776028, 19.466183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330316, -0.149232, 0.931999,
		-0.182691, 0.978858, 0.091986,
		-0.926021, -0.139884, -0.350596,
		34.998333, 32.734062, 19.361004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102768, 33.373451, 20.017677>,  <35.646545, 32.831982, 19.606421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102768, 33.373451, 20.017677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914528, 33.054745, 19.866047>,  <34.801582, 32.863522, 19.775068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914528, 33.054745, 19.866047>,  <35.102768, 33.373451, 20.017677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914528, 33.054745, 19.866047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448419, -0.154039, 0.880450,
		-0.759905, 0.584327, -0.284793,
		-0.470601, -0.796765, -0.379078,
		34.773346, 32.815716, 19.752323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382725, 33.544003, 20.220619>,  <35.102768, 33.373451, 20.017677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382725, 33.544003, 20.220619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437840, 33.164036, 20.108419>,  <34.470909, 32.936058, 20.041100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437840, 33.164036, 20.108419>,  <34.382725, 33.544003, 20.220619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437840, 33.164036, 20.108419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210621, -0.304823, 0.928828,
		-0.967808, -0.068904, -0.242073,
		0.137789, -0.949913, -0.280498,
		34.479176, 32.879063, 20.024269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816792, 33.131630, 20.455221>,  <34.382725, 33.544003, 20.220619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816792, 33.131630, 20.455221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110592, 32.868828, 20.387287>,  <34.286873, 32.711147, 20.346527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110592, 32.868828, 20.387287>,  <33.816792, 33.131630, 20.455221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110592, 32.868828, 20.387287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099933, -0.352267, 0.930549,
		-0.671208, -0.666518, -0.324398,
		0.734502, -0.657010, -0.169837,
		34.330944, 32.671726, 20.336336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612404, 32.582859, 20.925718>,  <33.816792, 33.131630, 20.455221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612404, 32.582859, 20.925718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990730, 32.493950, 20.831038>,  <34.217728, 32.440605, 20.774229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990730, 32.493950, 20.831038>,  <33.612404, 32.582859, 20.925718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990730, 32.493950, 20.831038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171972, -0.275427, 0.945815,
		-0.275427, -0.935271, -0.222278,
		-0.945815, 0.222278, 0.236701,
		34.274475, 32.427265, 20.760027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705368, 31.993891, 21.195724>,  <33.612404, 32.582859, 20.925718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705368, 31.993891, 21.195724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088211, 32.104481, 21.161083>,  <34.317917, 32.170834, 21.140299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088211, 32.104481, 21.161083>,  <33.705368, 31.993891, 21.195724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088211, 32.104481, 21.161083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151929, -0.224440, 0.962572,
		0.246691, -0.934445, -0.256819,
		0.957111, 0.276477, -0.086602,
		34.375343, 32.187424, 21.135103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243546, 31.380758, 21.424997>,  <33.705368, 31.993891, 21.195724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243546, 31.380758, 21.424997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.429916, 31.730776, 21.477465>,  <34.541740, 31.940786, 21.508945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.429916, 31.730776, 21.477465>,  <34.243546, 31.380758, 21.424997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429916, 31.730776, 21.477465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095923, -0.097419, 0.990610,
		0.879607, -0.474137, 0.038547,
		0.465929, 0.875045, 0.131171,
		34.569695, 31.993290, 21.516815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.316990, 34.768955, 16.738483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.597519, 34.777786, 17.023483>,  <37.765839, 34.783085, 17.194483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.597519, 34.777786, 17.023483>,  <37.316990, 34.768955, 16.738483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597519, 34.777786, 17.023483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702016, 0.194908, 0.684970,
		-0.123750, -0.980573, 0.152192,
		0.701327, 0.022076, 0.712498,
		37.807919, 34.784409, 17.237232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058849, 34.499172, 17.383011>,  <37.316990, 34.768955, 16.738483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058849, 34.499172, 17.383011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380486, 34.711586, 17.489920>,  <37.573467, 34.839035, 17.554064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.380486, 34.711586, 17.489920>,  <37.058849, 34.499172, 17.383011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380486, 34.711586, 17.489920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332384, 0.028833, 0.942703,
		0.492904, -0.846858, 0.199693,
		0.804094, 0.531037, 0.267270,
		37.621716, 34.870895, 17.570101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435581, 34.126904, 17.930084>,  <37.058849, 34.499172, 17.383011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435581, 34.126904, 17.930084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531948, 34.513145, 17.969217>,  <37.589767, 34.744892, 17.992697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531948, 34.513145, 17.969217>,  <37.435581, 34.126904, 17.930084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531948, 34.513145, 17.969217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226275, -0.042143, 0.973151,
		0.943801, -0.256582, 0.208339,
		0.240913, 0.965603, 0.097832,
		37.604221, 34.802826, 17.998568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751144, 34.138371, 18.531284>,  <37.435581, 34.126904, 17.930084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751144, 34.138371, 18.531284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636951, 34.516666, 18.469219>,  <37.568436, 34.743645, 18.431980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636951, 34.516666, 18.469219>,  <37.751144, 34.138371, 18.531284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636951, 34.516666, 18.469219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267362, 0.076884, 0.960524,
		0.920336, 0.315695, 0.230907,
		-0.285479, 0.945741, -0.155164,
		37.551308, 34.800388, 18.422670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938286, 34.586842, 19.152998>,  <37.751144, 34.138371, 18.531284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938286, 34.586842, 19.152998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.659573, 34.807114, 18.969152>,  <37.492344, 34.939278, 18.858845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.659573, 34.807114, 18.969152>,  <37.938286, 34.586842, 19.152998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659573, 34.807114, 18.969152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376167, 0.265044, 0.887835,
		0.610728, 0.791522, 0.022468,
		-0.696786, 0.550677, -0.459614,
		37.450539, 34.972317, 18.831268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846947, 35.076115, 19.584162>,  <37.938286, 34.586842, 19.152998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846947, 35.076115, 19.584162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.514839, 35.145782, 19.372381>,  <37.315575, 35.187584, 19.245312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.514839, 35.145782, 19.372381>,  <37.846947, 35.076115, 19.584162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514839, 35.145782, 19.372381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391051, 0.494849, 0.776018,
		0.397161, 0.851345, -0.342746,
		-0.830267, 0.174172, -0.529454,
		37.265759, 35.198032, 19.213545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696918, 35.824921, 19.626305>,  <37.846947, 35.076115, 19.584162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696918, 35.824921, 19.626305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.350033, 35.643234, 19.544697>,  <37.141903, 35.534222, 19.495731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.350033, 35.643234, 19.544697>,  <37.696918, 35.824921, 19.626305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350033, 35.643234, 19.544697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417347, 0.439570, 0.795361,
		-0.271585, 0.774897, -0.570768,
		-0.867216, -0.454217, -0.204020,
		37.089867, 35.506969, 19.483490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146397, 36.314751, 19.539843>,  <37.696918, 35.824921, 19.626305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146397, 36.314751, 19.539843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.985870, 35.961723, 19.637838>,  <36.889557, 35.749908, 19.696636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.985870, 35.961723, 19.637838>,  <37.146397, 36.314751, 19.539843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985870, 35.961723, 19.637838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322137, 0.386385, 0.864254,
		-0.857424, 0.267917, -0.439369,
		-0.401314, -0.882569, 0.244990,
		36.865475, 35.696953, 19.711336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591572, 36.439743, 19.821754>,  <37.146397, 36.314751, 19.539843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591572, 36.439743, 19.821754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625698, 36.064796, 19.956844>,  <36.646175, 35.839828, 20.037899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625698, 36.064796, 19.956844>,  <36.591572, 36.439743, 19.821754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625698, 36.064796, 19.956844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404318, 0.277224, 0.871593,
		-0.910630, -0.210911, -0.355343,
		0.085319, -0.937370, 0.337724,
		36.651295, 35.783585, 20.058161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998791, 36.342793, 20.314396>,  <36.591572, 36.439743, 19.821754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998791, 36.342793, 20.314396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.258438, 36.063324, 20.434731>,  <36.414227, 35.895641, 20.506931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.258438, 36.063324, 20.434731>,  <35.998791, 36.342793, 20.314396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258438, 36.063324, 20.434731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356971, 0.069450, 0.931530,
		-0.671731, -0.712060, -0.204326,
		0.649115, -0.698676, 0.300836,
		36.453171, 35.853722, 20.524981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708763, 35.944286, 20.907892>,  <35.998791, 36.342793, 20.314396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708763, 35.944286, 20.907892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078903, 35.799980, 20.954510>,  <36.300987, 35.713398, 20.982481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078903, 35.799980, 20.954510>,  <35.708763, 35.944286, 20.907892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078903, 35.799980, 20.954510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128685, -0.009726, 0.991638,
		-0.356613, -0.932607, -0.055424,
		0.925347, -0.360763, 0.116544,
		36.356506, 35.691750, 20.989473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690060, 35.482792, 21.356071>,  <35.708763, 35.944286, 20.907892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690060, 35.482792, 21.356071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.072071, 35.596153, 21.390951>,  <36.301277, 35.664169, 21.411879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.072071, 35.596153, 21.390951>,  <35.690060, 35.482792, 21.356071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072071, 35.596153, 21.390951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062521, -0.095003, 0.993512,
		0.289852, -0.954283, -0.073011,
		0.955027, 0.283406, 0.087200,
		36.358578, 35.681175, 21.417110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251698, 34.860607, 21.565701>,  <35.690060, 35.482792, 21.356071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251698, 34.860607, 21.565701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.890003, 35.027191, 21.527925>,  <34.672985, 35.127140, 21.505260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.890003, 35.027191, 21.527925>,  <35.251698, 34.860607, 21.565701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890003, 35.027191, 21.527925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138319, 0.076412, -0.987436,
		-0.404013, -0.905936, -0.126699,
		-0.904235, 0.416462, -0.094436,
		34.618732, 35.152130, 21.499594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999481, 34.409447, 21.069551>,  <35.251698, 34.860607, 21.565701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999481, 34.409447, 21.069551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.795349, 34.753250, 21.058189>,  <34.672871, 34.959534, 21.051373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.795349, 34.753250, 21.058189>,  <34.999481, 34.409447, 21.069551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795349, 34.753250, 21.058189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032223, -0.013898, -0.999384,
		-0.859375, -0.510930, -0.020604,
		-0.510329, 0.859510, -0.028407,
		34.642250, 35.011105, 21.049667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432129, 34.320053, 20.573902>,  <34.999481, 34.409447, 21.069551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432129, 34.320053, 20.573902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.480156, 34.716381, 20.598757>,  <34.508972, 34.954178, 20.613668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.480156, 34.716381, 20.598757>,  <34.432129, 34.320053, 20.573902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480156, 34.716381, 20.598757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103517, 0.074741, -0.991816,
		-0.987354, 0.112651, 0.111541,
		0.120065, 0.990820, 0.062134,
		34.516174, 35.013626, 20.617397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133507, 34.500004, 19.999729>,  <34.432129, 34.320053, 20.573902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133507, 34.500004, 19.999729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308891, 34.846203, 20.096621>,  <34.414120, 35.053921, 20.154757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308891, 34.846203, 20.096621>,  <34.133507, 34.500004, 19.999729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308891, 34.846203, 20.096621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005186, 0.267077, -0.963661,
		-0.898737, 0.423781, 0.112613,
		0.438457, 0.865494, 0.242230,
		34.440430, 35.105850, 20.169289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695446, 35.053284, 19.607594>,  <34.133507, 34.500004, 19.999729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695446, 35.053284, 19.607594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.039078, 35.233685, 19.704399>,  <34.245258, 35.341927, 19.762482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.039078, 35.233685, 19.704399>,  <33.695446, 35.053284, 19.607594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039078, 35.233685, 19.704399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083361, 0.589808, -0.803230,
		-0.505002, 0.669867, 0.544290,
		0.859083, 0.451005, 0.242013,
		34.296803, 35.368984, 19.777002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613777, 35.799168, 19.532354>,  <33.695446, 35.053284, 19.607594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613777, 35.799168, 19.532354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.005245, 35.727345, 19.492420>,  <34.240128, 35.684250, 19.468460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.005245, 35.727345, 19.492420>,  <33.613777, 35.799168, 19.532354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005245, 35.727345, 19.492420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032245, 0.345672, -0.937801,
		0.202898, 0.921016, 0.332509,
		0.978669, -0.179556, -0.099834,
		34.298847, 35.673477, 19.462469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791698, 36.296646, 19.156147>,  <33.613777, 35.799168, 19.532354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791698, 36.296646, 19.156147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141541, 36.102798, 19.150410>,  <34.351448, 35.986488, 19.146967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141541, 36.102798, 19.150410>,  <33.791698, 36.296646, 19.156147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141541, 36.102798, 19.150410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195125, 0.378926, -0.904622,
		0.443833, 0.788390, 0.425973,
		0.874607, -0.484620, -0.014345,
		34.403923, 35.957413, 19.146107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262367, 36.711098, 18.885031>,  <33.791698, 36.296646, 19.156147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262367, 36.711098, 18.885031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.446175, 36.362778, 18.815123>,  <34.556461, 36.153786, 18.773178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.446175, 36.362778, 18.815123>,  <34.262367, 36.711098, 18.885031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446175, 36.362778, 18.815123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170588, 0.279649, -0.944826,
		0.871630, 0.404355, 0.277053,
		0.459523, -0.870800, -0.174772,
		34.584030, 36.101536, 18.762691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890667, 36.907291, 18.538216>,  <34.262367, 36.711098, 18.885031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890667, 36.907291, 18.538216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.773239, 36.537685, 18.440228>,  <34.702782, 36.315922, 18.381435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.773239, 36.537685, 18.440228>,  <34.890667, 36.907291, 18.538216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773239, 36.537685, 18.440228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242346, 0.175951, -0.954101,
		0.924707, -0.339466, 0.172277,
		-0.293573, -0.924015, -0.244971,
		34.685169, 36.260479, 18.366735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402760, 36.742443, 18.026047>,  <34.890667, 36.907291, 18.538216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402760, 36.742443, 18.026047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.095310, 36.496754, 17.954548>,  <34.910843, 36.349339, 17.911648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.095310, 36.496754, 17.954548>,  <35.402760, 36.742443, 18.026047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095310, 36.496754, 17.954548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161811, 0.083661, -0.983269,
		0.618903, -0.784683, 0.035085,
		-0.768619, -0.614226, -0.178749,
		34.864723, 36.312485, 17.900923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607750, 36.410534, 17.370132>,  <35.402760, 36.742443, 18.026047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607750, 36.410534, 17.370132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.217030, 36.331856, 17.403982>,  <34.982597, 36.284649, 17.424292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.217030, 36.331856, 17.403982>,  <35.607750, 36.410534, 17.370132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217030, 36.331856, 17.403982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041832, -0.212285, -0.976312,
		0.210004, -0.957206, 0.199133,
		-0.976805, -0.196699, 0.084623,
		34.923988, 36.272846, 17.429369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533543, 35.801174, 16.974169>,  <35.607750, 36.410534, 17.370132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533543, 35.801174, 16.974169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.161533, 35.945404, 17.002584>,  <34.938328, 36.031940, 17.019634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.161533, 35.945404, 17.002584>,  <35.533543, 35.801174, 16.974169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161533, 35.945404, 17.002584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073115, 0.007901, -0.997292,
		-0.360157, -0.932698, 0.019015,
		-0.930022, 0.360572, 0.071040,
		34.882526, 36.053577, 17.023897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116116, 35.440445, 16.616821>,  <35.533543, 35.801174, 16.974169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116116, 35.440445, 16.616821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.894619, 35.772724, 16.639830>,  <34.761723, 35.972092, 16.653635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.894619, 35.772724, 16.639830>,  <35.116116, 35.440445, 16.616821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894619, 35.772724, 16.639830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114758, -0.007711, -0.993363,
		-0.824746, -0.556664, 0.099599,
		-0.553737, 0.830702, 0.057522,
		34.728497, 36.021935, 16.657085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256676, 34.998898, 17.203659>,  <35.116116, 35.440445, 16.616821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256676, 34.998898, 17.203659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236534, 34.689636, 16.950771>,  <35.224449, 34.504078, 16.799040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236534, 34.689636, 16.950771>,  <35.256676, 34.998898, 17.203659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236534, 34.689636, 16.950771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370390, -0.573422, 0.730752,
		-0.927510, 0.270964, -0.257493,
		-0.050355, -0.773153, -0.632218,
		35.221428, 34.457691, 16.761106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634838, 34.633968, 17.320782>,  <35.256676, 34.998898, 17.203659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634838, 34.633968, 17.320782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840233, 34.356071, 17.119322>,  <34.963470, 34.189331, 16.998446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.840233, 34.356071, 17.119322>,  <34.634838, 34.633968, 17.320782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840233, 34.356071, 17.119322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305433, -0.696475, 0.649332,
		-0.801902, -0.179589, -0.569826,
		0.513483, -0.694744, -0.503652,
		34.994278, 34.147648, 16.968227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281517, 34.003792, 17.371826>,  <34.634838, 34.633968, 17.320782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281517, 34.003792, 17.371826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648148, 33.879841, 17.270739>,  <34.868126, 33.805470, 17.210087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648148, 33.879841, 17.270739>,  <34.281517, 34.003792, 17.371826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648148, 33.879841, 17.270739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044275, -0.706772, 0.706055,
		-0.397406, -0.635962, -0.661529,
		0.916574, -0.309880, -0.252719,
		34.923119, 33.786877, 17.194923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196903, 33.239849, 17.306946>,  <34.281517, 34.003792, 17.371826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196903, 33.239849, 17.306946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582764, 33.328304, 17.364281>,  <34.814281, 33.381378, 17.398682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582764, 33.328304, 17.364281>,  <34.196903, 33.239849, 17.306946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582764, 33.328304, 17.364281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069051, -0.737008, 0.672347,
		0.254326, -0.638682, -0.726226,
		0.964650, 0.221142, 0.143339,
		34.872158, 33.394646, 17.407282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515923, 32.576126, 17.340347>,  <34.196903, 33.239849, 17.306946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515923, 32.576126, 17.340347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.765404, 32.834717, 17.516102>,  <34.915092, 32.989872, 17.621555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.765404, 32.834717, 17.516102>,  <34.515923, 32.576126, 17.340347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765404, 32.834717, 17.516102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033198, -0.583520, 0.811420,
		0.780959, -0.491495, -0.385404,
		0.623700, 0.646480, 0.439388,
		34.952515, 33.028660, 17.647919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129700, 32.204865, 17.670259>,  <34.515923, 32.576126, 17.340347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129700, 32.204865, 17.670259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.059105, 32.548527, 17.862389>,  <35.016747, 32.754723, 17.977667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.059105, 32.548527, 17.862389>,  <35.129700, 32.204865, 17.670259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059105, 32.548527, 17.862389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163899, -0.455520, 0.875008,
		0.970561, 0.233152, -0.060421,
		-0.176488, 0.859152, 0.480323,
		35.006157, 32.806271, 18.006485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666271, 32.429401, 18.185318>,  <35.129700, 32.204865, 17.670259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666271, 32.429401, 18.185318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.319592, 32.589302, 18.304668>,  <35.111584, 32.685242, 18.376278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.319592, 32.589302, 18.304668>,  <35.666271, 32.429401, 18.185318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319592, 32.589302, 18.304668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131993, -0.393047, 0.909996,
		0.481052, 0.828075, 0.287888,
		-0.866699, 0.399756, 0.298376,
		35.059582, 32.709229, 18.394180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800770, 32.410728, 18.913923>,  <35.666271, 32.429401, 18.185318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800770, 32.410728, 18.913923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.438896, 32.580681, 18.926664>,  <35.221771, 32.682652, 18.934309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.438896, 32.580681, 18.926664>,  <35.800770, 32.410728, 18.913923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438896, 32.580681, 18.926664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098193, -0.280659, 0.954772,
		0.414607, 0.860642, 0.295629,
		-0.904687, 0.424884, 0.031854,
		35.167488, 32.708145, 18.936220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380264, 32.639854, 19.429720>,  <35.800770, 32.410728, 18.913923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380264, 32.639854, 19.429720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.633053, 32.330166, 19.443560>,  <36.784725, 32.144352, 19.451864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.633053, 32.330166, 19.443560>,  <36.380264, 32.639854, 19.429720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633053, 32.330166, 19.443560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159797, 0.086490, -0.983354,
		0.758340, 0.626978, 0.178377,
		0.631969, -0.774221, 0.034601,
		36.822643, 32.097900, 19.453939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019970, 32.868027, 19.190063>,  <36.380264, 32.639854, 19.429720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019970, 32.868027, 19.190063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.015533, 32.473309, 19.125429>,  <37.012871, 32.236477, 19.086649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.015533, 32.473309, 19.125429>,  <37.019970, 32.868027, 19.190063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015533, 32.473309, 19.125429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248015, 0.153834, -0.956464,
		0.968693, -0.050681, 0.243034,
		-0.011088, -0.986796, -0.161587,
		37.012207, 32.177269, 19.076954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695362, 32.766937, 18.899967>,  <37.019970, 32.868027, 19.190063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695362, 32.766937, 18.899967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.456367, 32.466732, 18.787014>,  <37.312969, 32.286610, 18.719242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.456367, 32.466732, 18.787014>,  <37.695362, 32.766937, 18.899967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456367, 32.466732, 18.787014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330448, 0.090410, -0.939484,
		0.730626, -0.654641, 0.193987,
		-0.597487, -0.750514, -0.282381,
		37.277122, 32.241577, 18.702299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026108, 32.576859, 18.393566>,  <37.695362, 32.766937, 18.899967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026108, 32.576859, 18.393566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691597, 32.361652, 18.351278>,  <37.490891, 32.232529, 18.325905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691597, 32.361652, 18.351278>,  <38.026108, 32.576859, 18.393566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691597, 32.361652, 18.351278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208111, -0.133071, -0.969011,
		0.507277, -0.832363, 0.223252,
		-0.836277, -0.538018, -0.105720,
		37.440712, 32.200249, 18.319563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262432, 31.914942, 18.087969>,  <38.026108, 32.576859, 18.393566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262432, 31.914942, 18.087969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.876648, 31.956854, 17.990946>,  <37.645176, 31.982000, 17.932732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.876648, 31.956854, 17.990946>,  <38.262432, 31.914942, 18.087969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876648, 31.956854, 17.990946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216085, -0.215497, -0.952296,
		-0.152048, -0.970867, 0.185198,
		-0.964463, 0.104776, -0.242556,
		37.587311, 31.988287, 17.918179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071312, 31.355536, 17.806398>,  <38.262432, 31.914942, 18.087969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071312, 31.355536, 17.806398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.814758, 31.636580, 17.683136>,  <37.660824, 31.805206, 17.609179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.814758, 31.636580, 17.683136>,  <38.071312, 31.355536, 17.806398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814758, 31.636580, 17.683136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163690, -0.267084, -0.949669,
		-0.749551, -0.659549, 0.056294,
		-0.641388, 0.702611, -0.308155,
		37.622341, 31.847363, 17.590689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770699, 31.043371, 17.306517>,  <38.071312, 31.355536, 17.806398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770699, 31.043371, 17.306517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.701027, 31.428944, 17.226019>,  <37.659222, 31.660286, 17.177719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.701027, 31.428944, 17.226019>,  <37.770699, 31.043371, 17.306517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701027, 31.428944, 17.226019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076418, -0.190522, -0.978704,
		-0.981744, -0.185852, -0.040476,
		-0.174183, 0.963930, -0.201246,
		37.648773, 31.718122, 17.165646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302814, 31.088667, 16.658728>,  <37.770699, 31.043371, 17.306517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302814, 31.088667, 16.658728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.496780, 31.436716, 16.693933>,  <37.613159, 31.645546, 16.715057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.496780, 31.436716, 16.693933>,  <37.302814, 31.088667, 16.658728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496780, 31.436716, 16.693933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092183, 0.049228, -0.994524,
		-0.869690, 0.490372, -0.056339,
		0.484913, 0.870122, 0.088017,
		37.642254, 31.697752, 16.720339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912453, 31.583334, 16.277027>,  <37.302814, 31.088667, 16.658728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912453, 31.583334, 16.277027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289616, 31.715643, 16.292627>,  <37.515911, 31.795029, 16.301987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289616, 31.715643, 16.292627>,  <36.912453, 31.583334, 16.277027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289616, 31.715643, 16.292627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003093, 0.108392, -0.994103,
		-0.333049, 0.937465, 0.101180,
		0.942904, 0.330772, 0.039000,
		37.572487, 31.814875, 16.304327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.968693, 33.902863, 32.420105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362022, 33.872776, 32.353878>,  <37.598022, 33.854725, 32.314140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362022, 33.872776, 32.353878>,  <36.968693, 33.902863, 32.420105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362022, 33.872776, 32.353878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171693, -0.083961, -0.981566,
		0.059928, 0.993626, -0.095475,
		0.983326, -0.075215, -0.165567,
		37.657021, 33.850212, 32.304207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135586, 34.330154, 31.791857>,  <36.968693, 33.902863, 32.420105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135586, 34.330154, 31.791857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463833, 34.103687, 31.822937>,  <37.660782, 33.967808, 31.841585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463833, 34.103687, 31.822937>,  <37.135586, 34.330154, 31.791857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463833, 34.103687, 31.822937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073754, -0.029906, -0.996828,
		0.566697, 0.823747, 0.017215,
		0.820619, -0.566169, 0.077702,
		37.710018, 33.933838, 31.846247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520985, 34.680508, 31.447754>,  <37.135586, 34.330154, 31.791857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520985, 34.680508, 31.447754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633827, 34.296814, 31.454557>,  <37.701530, 34.066597, 31.458639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633827, 34.296814, 31.454557>,  <37.520985, 34.680508, 31.447754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633827, 34.296814, 31.454557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023868, -0.024739, -0.999409,
		0.959087, 0.281532, -0.029874,
		0.282105, -0.959233, 0.017007,
		37.718460, 34.009045, 31.459660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870274, 34.578510, 30.888025>,  <37.520985, 34.680508, 31.447754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870274, 34.578510, 30.888025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812004, 34.193531, 30.979649>,  <37.777042, 33.962543, 31.034622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812004, 34.193531, 30.979649>,  <37.870274, 34.578510, 30.888025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812004, 34.193531, 30.979649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027892, -0.235430, -0.971491,
		0.988940, -0.135131, 0.061140,
		-0.145673, -0.962451, 0.229057,
		37.768303, 33.904797, 31.048367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314865, 34.189629, 30.522545>,  <37.870274, 34.578510, 30.888025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314865, 34.189629, 30.522545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015598, 33.936558, 30.602510>,  <37.836037, 33.784718, 30.650490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015598, 33.936558, 30.602510>,  <38.314865, 34.189629, 30.522545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015598, 33.936558, 30.602510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103145, -0.186736, -0.976980,
		0.655441, -0.751567, 0.074453,
		-0.748169, -0.632674, 0.199915,
		37.791149, 33.746758, 30.662485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471802, 33.486118, 30.163261>,  <38.314865, 34.189629, 30.522545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471802, 33.486118, 30.163261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074661, 33.461304, 30.204063>,  <37.836376, 33.446415, 30.228544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074661, 33.461304, 30.204063>,  <38.471802, 33.486118, 30.163261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074661, 33.461304, 30.204063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079265, -0.296409, -0.951766,
		0.089280, -0.953044, 0.289372,
		-0.992848, -0.062037, 0.102007,
		37.776806, 33.442692, 30.234665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201004, 32.840599, 29.818609>,  <38.471802, 33.486118, 30.163261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201004, 32.840599, 29.818609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874905, 33.070740, 29.844954>,  <37.679245, 33.208824, 29.860760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874905, 33.070740, 29.844954>,  <38.201004, 32.840599, 29.818609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874905, 33.070740, 29.844954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252329, -0.250550, -0.934642,
		-0.521245, -0.778586, 0.349439,
		-0.815251, 0.575351, 0.065862,
		37.630329, 33.243343, 29.864712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617641, 32.431759, 29.705086>,  <38.201004, 32.840599, 29.818609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617641, 32.431759, 29.705086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488194, 32.799343, 29.614939>,  <37.410526, 33.019894, 29.560850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488194, 32.799343, 29.614939>,  <37.617641, 32.431759, 29.705086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488194, 32.799343, 29.614939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112546, -0.273878, -0.955157,
		-0.939471, -0.283739, 0.192056,
		-0.323615, 0.918958, -0.225366,
		37.391109, 33.075031, 29.547329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161995, 32.255917, 29.235994>,  <37.617641, 32.431759, 29.705086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161995, 32.255917, 29.235994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.153286, 32.653145, 29.189808>,  <37.148060, 32.891483, 29.162096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.153286, 32.653145, 29.189808>,  <37.161995, 32.255917, 29.235994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153286, 32.653145, 29.189808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353424, -0.115679, -0.928283,
		-0.935210, 0.020602, 0.353494,
		-0.021768, 0.993073, -0.115465,
		37.146755, 32.951065, 29.155169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519722, 32.413986, 29.074312>,  <37.161995, 32.255917, 29.235994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519722, 32.413986, 29.074312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727486, 32.727978, 28.939241>,  <36.852142, 32.916374, 28.858200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727486, 32.727978, 28.939241>,  <36.519722, 32.413986, 29.074312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727486, 32.727978, 28.939241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300715, -0.201976, -0.932082,
		-0.799867, 0.585673, 0.131148,
		0.519406, 0.784980, -0.337675,
		36.883308, 32.963470, 28.837938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053047, 32.823891, 28.633455>,  <36.519722, 32.413986, 29.074312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053047, 32.823891, 28.633455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429478, 32.903629, 28.524181>,  <36.655338, 32.951473, 28.458616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429478, 32.903629, 28.524181>,  <36.053047, 32.823891, 28.633455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429478, 32.903629, 28.524181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163356, -0.439353, -0.883337,
		-0.296116, 0.875916, -0.380902,
		0.941079, 0.199348, -0.273186,
		36.711800, 32.963432, 28.442226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032642, 33.126728, 27.866219>,  <36.053047, 32.823891, 28.633455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032642, 33.126728, 27.866219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398991, 32.978065, 27.926952>,  <36.618797, 32.888866, 27.963392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398991, 32.978065, 27.926952>,  <36.032642, 33.126728, 27.866219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398991, 32.978065, 27.926952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024503, -0.429228, -0.902864,
		0.400729, 0.823184, -0.402224,
		0.915869, -0.371659, 0.151834,
		36.673752, 32.866570, 27.972502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402958, 33.574959, 27.686728>,  <36.032642, 33.126728, 27.866219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402958, 33.574959, 27.686728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031834, 33.473179, 27.577604>,  <34.809158, 33.412113, 27.512131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031834, 33.473179, 27.577604>,  <35.402958, 33.574959, 27.686728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031834, 33.473179, 27.577604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323074, 0.182416, 0.928627,
		-0.186521, 0.949727, -0.251452,
		-0.927811, -0.254446, -0.272807,
		34.753490, 33.396847, 27.495762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933407, 34.044437, 28.060629>,  <35.402958, 33.574959, 27.686728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933407, 34.044437, 28.060629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697910, 33.744579, 27.939692>,  <34.556614, 33.564663, 27.867128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697910, 33.744579, 27.939692>,  <34.933407, 34.044437, 28.060629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697910, 33.744579, 27.939692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416804, -0.038934, 0.908162,
		-0.692573, 0.660691, -0.289534,
		-0.588742, -0.749647, -0.302343,
		34.521286, 33.519684, 27.848989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410042, 34.223793, 28.319050>,  <34.933407, 34.044437, 28.060629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410042, 34.223793, 28.319050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300228, 33.852310, 28.219349>,  <34.234341, 33.629421, 28.159529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300228, 33.852310, 28.219349>,  <34.410042, 34.223793, 28.319050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300228, 33.852310, 28.219349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386978, -0.130584, 0.912796,
		-0.880270, 0.347052, -0.323540,
		-0.274539, -0.928710, -0.249251,
		34.217865, 33.573696, 28.144573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768967, 34.201363, 28.589684>,  <34.410042, 34.223793, 28.319050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768967, 34.201363, 28.589684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912094, 33.829510, 28.554489>,  <33.997971, 33.606396, 28.533373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912094, 33.829510, 28.554489>,  <33.768967, 34.201363, 28.589684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912094, 33.829510, 28.554489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331307, -0.214486, 0.918821,
		-0.873040, -0.299623, -0.384742,
		0.357822, -0.929635, -0.087988,
		34.019440, 33.550621, 28.528093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157486, 33.633038, 28.631573>,  <33.768967, 34.201363, 28.589684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157486, 33.633038, 28.631573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508423, 33.490723, 28.760370>,  <33.718987, 33.405334, 28.837648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508423, 33.490723, 28.760370>,  <33.157486, 33.633038, 28.631573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508423, 33.490723, 28.760370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379010, -0.102240, 0.919727,
		-0.294309, -0.928956, -0.224548,
		0.877344, -0.355790, 0.321994,
		33.771626, 33.383987, 28.856968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075928, 32.992882, 29.033537>,  <33.157486, 33.633038, 28.631573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075928, 32.992882, 29.033537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435455, 33.093307, 29.177252>,  <33.651173, 33.153564, 29.263481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435455, 33.093307, 29.177252>,  <33.075928, 32.992882, 29.033537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435455, 33.093307, 29.177252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388242, 0.075559, 0.918454,
		0.203450, -0.965015, 0.165390,
		0.898819, 0.251071, 0.359287,
		33.705101, 33.168629, 29.285038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192028, 32.596943, 29.569811>,  <33.075928, 32.992882, 29.033537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192028, 32.596943, 29.569811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466213, 32.884300, 29.617229>,  <33.630726, 33.056713, 29.645681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466213, 32.884300, 29.617229>,  <33.192028, 32.596943, 29.569811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466213, 32.884300, 29.617229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217270, 0.046416, 0.975007,
		0.694935, -0.694089, 0.187901,
		0.685463, 0.718392, 0.118548,
		33.671852, 33.099819, 29.652794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560230, 32.327953, 30.077921>,  <33.192028, 32.596943, 29.569811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560230, 32.327953, 30.077921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634018, 32.721066, 30.082104>,  <33.678291, 32.956932, 30.084614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634018, 32.721066, 30.082104>,  <33.560230, 32.327953, 30.077921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634018, 32.721066, 30.082104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258159, 0.038188, 0.965348,
		0.948327, -0.180780, 0.260759,
		0.184474, 0.982782, 0.010456,
		33.689362, 33.015900, 30.085241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814041, 32.419270, 30.745106>,  <33.560230, 32.327953, 30.077921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814041, 32.419270, 30.745106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705990, 32.779675, 30.609335>,  <33.641159, 32.995918, 30.527872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705990, 32.779675, 30.609335>,  <33.814041, 32.419270, 30.745106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705990, 32.779675, 30.609335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205014, 0.290624, 0.934616,
		0.940743, 0.322058, 0.106213,
		-0.270132, 0.901009, -0.339429,
		33.624950, 33.049976, 30.507505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100288, 32.860962, 31.210842>,  <33.814041, 32.419270, 30.745106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100288, 32.860962, 31.210842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809971, 33.074493, 31.037292>,  <33.635780, 33.202614, 30.933163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809971, 33.074493, 31.037292>,  <34.100288, 32.860962, 31.210842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809971, 33.074493, 31.037292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233084, 0.402569, 0.885218,
		0.647218, 0.743618, -0.167756,
		-0.725797, 0.533827, -0.433875,
		33.592232, 33.234642, 30.907129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279610, 33.582664, 31.282091>,  <34.100288, 32.860962, 31.210842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279610, 33.582664, 31.282091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886799, 33.544796, 31.216770>,  <33.651112, 33.522076, 31.177578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886799, 33.544796, 31.216770>,  <34.279610, 33.582664, 31.282091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886799, 33.544796, 31.216770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186545, 0.618904, 0.762993,
		0.028831, 0.779740, -0.625439,
		-0.982023, -0.094675, -0.163300,
		33.592194, 33.516392, 31.167780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962624, 34.348999, 31.349190>,  <34.279610, 33.582664, 31.282091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962624, 34.348999, 31.349190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632938, 34.122734, 31.359749>,  <33.435127, 33.986973, 31.366085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632938, 34.122734, 31.359749>,  <33.962624, 34.348999, 31.349190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632938, 34.122734, 31.359749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314546, 0.496082, 0.809298,
		-0.470889, 0.658729, -0.586805,
		-0.824211, -0.565667, 0.026399,
		33.385674, 33.953033, 31.367668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401714, 34.801884, 31.383320>,  <33.962624, 34.348999, 31.349190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401714, 34.801884, 31.383320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237095, 34.467739, 31.529087>,  <33.138321, 34.267254, 31.616549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237095, 34.467739, 31.529087>,  <33.401714, 34.801884, 31.383320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237095, 34.467739, 31.529087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491129, 0.540105, 0.683432,
		-0.767735, 0.102290, -0.632550,
		-0.411552, -0.835358, 0.364420,
		33.113628, 34.217133, 31.638412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710194, 34.984837, 31.518618>,  <33.401714, 34.801884, 31.383320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710194, 34.984837, 31.518618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750546, 34.653473, 31.739006>,  <32.774757, 34.454655, 31.871239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750546, 34.653473, 31.739006>,  <32.710194, 34.984837, 31.518618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750546, 34.653473, 31.739006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495637, 0.438335, 0.749804,
		-0.862651, -0.348722, -0.366368,
		0.100881, -0.828405, 0.550970,
		32.780811, 34.404953, 31.904297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175304, 35.052357, 32.014587>,  <32.710194, 34.984837, 31.518618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175304, 35.052357, 32.014587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415379, 34.763920, 32.153034>,  <32.559425, 34.590858, 32.236103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415379, 34.763920, 32.153034>,  <32.175304, 35.052357, 32.014587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415379, 34.763920, 32.153034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405183, 0.098999, 0.908860,
		-0.689638, -0.685729, -0.232756,
		0.600189, -0.721094, 0.346119,
		32.595436, 34.547592, 32.256870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294636, 35.587570, 31.421354>,  <32.175304, 35.052357, 32.014587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294636, 35.587570, 31.421354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598625, 35.822834, 31.531992>,  <32.781017, 35.963993, 31.598373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598625, 35.822834, 31.531992>,  <32.294636, 35.587570, 31.421354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598625, 35.822834, 31.531992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023707, 0.450360, -0.892532,
		-0.649520, 0.671745, 0.356206,
		0.759974, 0.588163, 0.276593,
		32.826618, 35.999283, 31.614969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155628, 36.333179, 31.324245>,  <32.294636, 35.587570, 31.421354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155628, 36.333179, 31.324245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541733, 36.245468, 31.267403>,  <32.773396, 36.192841, 31.233297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541733, 36.245468, 31.267403>,  <32.155628, 36.333179, 31.324245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541733, 36.245468, 31.267403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036435, 0.425583, -0.904186,
		0.258743, 0.877951, 0.402808,
		0.965259, -0.219275, -0.142105,
		32.831310, 36.179688, 31.224771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540627, 36.997223, 31.145750>,  <32.155628, 36.333179, 31.324245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540627, 36.997223, 31.145750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755741, 36.687759, 31.011747>,  <32.884811, 36.502079, 30.931347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755741, 36.687759, 31.011747>,  <32.540627, 36.997223, 31.145750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755741, 36.687759, 31.011747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026292, 0.381775, -0.923881,
		0.842669, 0.505662, 0.184974,
		0.537790, -0.773663, -0.335004,
		32.917080, 36.455662, 30.911245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038208, 37.273903, 30.773529>,  <32.540627, 36.997223, 31.145750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038208, 37.273903, 30.773529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014641, 36.901241, 30.630116>,  <33.000500, 36.677643, 30.544067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014641, 36.901241, 30.630116>,  <33.038208, 37.273903, 30.773529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014641, 36.901241, 30.630116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081911, 0.353435, -0.931866,
		0.994896, -0.084274, 0.055488,
		-0.058921, -0.931655, -0.358535,
		32.996964, 36.621746, 30.522554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599907, 37.295677, 30.269699>,  <33.038208, 37.273903, 30.773529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599907, 37.295677, 30.269699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371819, 36.974716, 30.199278>,  <33.234966, 36.782139, 30.157024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.371819, 36.974716, 30.199278>,  <33.599907, 37.295677, 30.269699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371819, 36.974716, 30.199278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036183, 0.189570, -0.981200,
		0.820694, -0.565872, -0.079064,
		-0.570222, -0.802404, -0.176054,
		33.200752, 36.733994, 30.146461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876457, 36.845707, 29.889641>,  <33.599907, 37.295677, 30.269699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876457, 36.845707, 29.889641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504173, 36.713406, 29.827169>,  <33.280804, 36.634026, 29.789686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504173, 36.713406, 29.827169>,  <33.876457, 36.845707, 29.889641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504173, 36.713406, 29.827169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118322, 0.131781, -0.984192,
		0.346103, -0.934472, -0.083514,
		-0.930705, -0.330750, -0.156178,
		33.224960, 36.614182, 29.780315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901642, 36.174423, 29.457598>,  <33.876457, 36.845707, 29.889641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901642, 36.174423, 29.457598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559292, 36.372879, 29.399185>,  <33.353882, 36.491955, 29.364138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559292, 36.372879, 29.399185>,  <33.901642, 36.174423, 29.457598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559292, 36.372879, 29.399185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123284, -0.078506, -0.989261,
		-0.502280, -0.864684, 0.006025,
		-0.855872, 0.496143, -0.146033,
		33.302528, 36.521721, 29.355375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711128, 35.847515, 28.921305>,  <33.901642, 36.174423, 29.457598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711128, 35.847515, 28.921305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443359, 36.144642, 28.917181>,  <33.282700, 36.322918, 28.914707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443359, 36.144642, 28.917181>,  <33.711128, 35.847515, 28.921305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443359, 36.144642, 28.917181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005649, -0.018967, -0.999804,
		-0.742864, -0.669229, 0.016893,
		-0.669418, 0.742814, -0.010310,
		33.242535, 36.367485, 28.914087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180008, 35.576748, 28.504177>,  <33.711128, 35.847515, 28.921305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180008, 35.576748, 28.504177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121887, 35.972446, 28.510763>,  <33.087017, 36.209866, 28.514715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121887, 35.972446, 28.510763>,  <33.180008, 35.576748, 28.504177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121887, 35.972446, 28.510763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235433, -0.018408, -0.971716,
		-0.960968, -0.145064, 0.235577,
		-0.145298, 0.989251, 0.016463,
		33.078297, 36.269222, 28.515701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407406, 35.763489, 28.265497>,  <33.180008, 35.576748, 28.504177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407406, 35.763489, 28.265497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666931, 36.055969, 28.181223>,  <32.822647, 36.231457, 28.130659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666931, 36.055969, 28.181223>,  <32.407406, 35.763489, 28.265497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666931, 36.055969, 28.181223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309456, 0.000597, -0.950914,
		-0.695180, 0.682165, 0.226661,
		0.648815, 0.731198, -0.210685,
		32.861576, 36.275330, 28.118017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122684, 35.932434, 27.707172>,  <32.407406, 35.763489, 28.265497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122684, 35.932434, 27.707172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435547, 36.181458, 27.696922>,  <32.623264, 36.330872, 27.690771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435547, 36.181458, 27.696922>,  <32.122684, 35.932434, 27.707172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435547, 36.181458, 27.696922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037046, -0.087519, -0.995474,
		-0.621982, 0.777665, -0.091517,
		0.782154, 0.622558, -0.025626,
		32.670193, 36.368225, 27.689234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926537, 36.440338, 27.284393>,  <32.122684, 35.932434, 27.707172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926537, 36.440338, 27.284393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325268, 36.446220, 27.315678>,  <32.564507, 36.449749, 27.334448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325268, 36.446220, 27.315678>,  <31.926537, 36.440338, 27.284393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325268, 36.446220, 27.315678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079283, -0.098707, -0.991953,
		-0.006870, 0.995008, -0.099560,
		0.996829, 0.014708, 0.078209,
		32.624317, 36.450634, 27.339140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184620, 36.948109, 26.860666>,  <31.926537, 36.440338, 27.284393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184620, 36.948109, 26.860666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501446, 36.710567, 26.917192>,  <32.691544, 36.568043, 26.951109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501446, 36.710567, 26.917192>,  <32.184620, 36.948109, 26.860666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501446, 36.710567, 26.917192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099309, -0.103058, -0.989706,
		0.602302, 0.797947, -0.022654,
		0.792067, -0.593852, 0.141315,
		32.739067, 36.532413, 26.959587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657078, 37.112869, 26.353374>,  <32.184620, 36.948109, 26.860666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657078, 37.112869, 26.353374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775585, 36.752922, 26.481411>,  <32.846691, 36.536953, 26.558233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775585, 36.752922, 26.481411>,  <32.657078, 37.112869, 26.353374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775585, 36.752922, 26.481411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273530, -0.241161, -0.931140,
		0.915099, 0.363423, 0.174693,
		0.296269, -0.899870, 0.320093,
		32.864468, 36.482960, 26.577438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297226, 37.009384, 26.017788>,  <32.657078, 37.112869, 26.353374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297226, 37.009384, 26.017788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173733, 36.641502, 26.114805>,  <33.099636, 36.420773, 26.173016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173733, 36.641502, 26.114805>,  <33.297226, 37.009384, 26.017788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173733, 36.641502, 26.114805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394346, -0.355819, -0.847280,
		0.865549, -0.165940, 0.472535,
		-0.308734, -0.919705, 0.242541,
		33.081112, 36.365589, 26.187567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872005, 36.633572, 25.862276>,  <33.297226, 37.009384, 26.017788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872005, 36.633572, 25.862276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565346, 36.377396, 25.880526>,  <33.381348, 36.223690, 25.891476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565346, 36.377396, 25.880526>,  <33.872005, 36.633572, 25.862276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565346, 36.377396, 25.880526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453927, -0.590895, -0.666929,
		0.454087, -0.490592, 0.743724,
		-0.766652, -0.640440, 0.045625,
		33.335350, 36.185265, 25.894213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201324, 35.992237, 25.926693>,  <33.872005, 36.633572, 25.862276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201324, 35.992237, 25.926693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843666, 35.918583, 25.763428>,  <33.629070, 35.874390, 25.665468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843666, 35.918583, 25.763428>,  <34.201324, 35.992237, 25.926693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843666, 35.918583, 25.763428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437088, -0.556864, -0.706298,
		-0.097237, -0.809937, 0.578401,
		-0.894147, -0.184134, -0.408161,
		33.575420, 35.863342, 25.640980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249443, 35.319435, 25.678196>,  <34.201324, 35.992237, 25.926693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249443, 35.319435, 25.678196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937885, 35.487072, 25.491568>,  <33.750950, 35.587654, 25.379591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937885, 35.487072, 25.491568>,  <34.249443, 35.319435, 25.678196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937885, 35.487072, 25.491568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335042, -0.350828, -0.874452,
		-0.530166, -0.837423, 0.132841,
		-0.778891, 0.419098, -0.466569,
		33.704216, 35.612801, 25.351597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044483, 34.850006, 25.248962>,  <34.249443, 35.319435, 25.678196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044483, 34.850006, 25.248962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856297, 35.166309, 25.092314>,  <33.743385, 35.356091, 24.998325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856297, 35.166309, 25.092314>,  <34.044483, 34.850006, 25.248962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856297, 35.166309, 25.092314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236513, -0.314566, -0.919299,
		-0.850132, -0.525121, -0.039032,
		-0.470465, 0.790757, -0.391621,
		33.715157, 35.403538, 24.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636608, 34.599159, 24.753036>,  <34.044483, 34.850006, 25.248962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636608, 34.599159, 24.753036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671101, 34.989742, 24.673954>,  <33.691795, 35.224094, 24.626505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.671101, 34.989742, 24.673954>,  <33.636608, 34.599159, 24.753036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671101, 34.989742, 24.673954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124686, -0.207464, -0.970264,
		-0.988442, 0.059016, -0.139641,
		0.086232, 0.976461, -0.197707,
		33.696972, 35.282681, 24.614641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071754, 34.788040, 24.318548>,  <33.636608, 34.599159, 24.753036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071754, 34.788040, 24.318548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360500, 35.061234, 24.273922>,  <33.533749, 35.225151, 24.247147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360500, 35.061234, 24.273922>,  <33.071754, 34.788040, 24.318548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360500, 35.061234, 24.273922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040872, -0.118856, -0.992070,
		-0.690830, 0.720696, -0.057882,
		0.721861, 0.682986, -0.111566,
		33.577057, 35.266129, 24.240452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884514, 35.232796, 23.725594>,  <33.071754, 34.788040, 24.318548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884514, 35.232796, 23.725594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273632, 35.313866, 23.770473>,  <33.507103, 35.362507, 23.797401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273632, 35.313866, 23.770473>,  <32.884514, 35.232796, 23.725594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273632, 35.313866, 23.770473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112206, 0.011489, -0.993618,
		-0.202670, 0.979179, -0.011565,
		0.972797, 0.202674, 0.112199,
		33.565472, 35.374668, 23.804132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111362, 35.797230, 23.354141>,  <32.884514, 35.232796, 23.725594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111362, 35.797230, 23.354141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454506, 35.595291, 23.392525>,  <33.660393, 35.474129, 23.415556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454506, 35.595291, 23.392525>,  <33.111362, 35.797230, 23.354141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454506, 35.595291, 23.392525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228889, 0.208191, -0.950929,
		0.460093, 0.837729, 0.294152,
		0.857860, -0.504844, 0.095960,
		33.711864, 35.443836, 23.421312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667686, 36.204926, 23.013083>,  <33.111362, 35.797230, 23.354141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667686, 36.204926, 23.013083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825508, 35.838955, 23.047092>,  <33.920200, 35.619370, 23.067497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825508, 35.838955, 23.047092>,  <33.667686, 36.204926, 23.013083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825508, 35.838955, 23.047092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429418, 0.101791, -0.897351,
		0.812360, 0.390563, 0.433050,
		0.394552, -0.914931, 0.085024,
		33.943874, 35.564476, 23.072599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254036, 36.254082, 22.630175>,  <33.667686, 36.204926, 23.013083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254036, 36.254082, 22.630175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220745, 35.856148, 22.653412>,  <34.200771, 35.617386, 22.667355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220745, 35.856148, 22.653412>,  <34.254036, 36.254082, 22.630175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220745, 35.856148, 22.653412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326380, -0.082290, -0.941650,
		0.941568, -0.059410, 0.331544,
		-0.083226, -0.994836, 0.058092,
		34.195778, 35.557697, 22.670839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858742, 35.964405, 22.357601>,  <34.254036, 36.254082, 22.630175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858742, 35.964405, 22.357601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601410, 35.659687, 22.327127>,  <34.447010, 35.476856, 22.308844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601410, 35.659687, 22.327127>,  <34.858742, 35.964405, 22.357601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601410, 35.659687, 22.327127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289313, -0.149769, -0.945445,
		0.708822, -0.630272, 0.316747,
		-0.643326, -0.761792, -0.076186,
		34.408413, 35.431149, 22.304272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199760, 35.489197, 22.005119>,  <34.858742, 35.964405, 22.357601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199760, 35.489197, 22.005119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820286, 35.381023, 21.939568>,  <34.592602, 35.316120, 21.900236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820286, 35.381023, 21.939568>,  <35.199760, 35.489197, 22.005119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820286, 35.381023, 21.939568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199810, -0.110992, -0.973528,
		0.245084, -0.956320, 0.159332,
		-0.948689, -0.270432, -0.163880,
		34.535679, 35.299892, 21.890404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887333, 35.066654, 21.902098>,  <35.199760, 35.489197, 22.005119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887333, 35.066654, 21.902098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186451, 35.330990, 21.876501>,  <36.365921, 35.489590, 21.861143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186451, 35.330990, 21.876501>,  <35.887333, 35.066654, 21.902098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186451, 35.330990, 21.876501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030017, 0.062634, 0.997585,
		0.663251, -0.747910, 0.027002,
		0.747795, 0.660839, -0.063992,
		36.410789, 35.529240, 21.857304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285564, 34.831078, 22.404902>,  <35.887333, 35.066654, 21.902098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285564, 34.831078, 22.404902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363747, 35.220715, 22.359402>,  <36.410656, 35.454498, 22.332102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.363747, 35.220715, 22.359402>,  <36.285564, 34.831078, 22.404902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363747, 35.220715, 22.359402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107768, 0.093953, 0.989727,
		0.974774, -0.205706, -0.086612,
		0.195455, 0.974093, -0.113751,
		36.422382, 35.512943, 22.325277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862679, 34.963264, 22.801075>,  <36.285564, 34.831078, 22.404902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862679, 34.963264, 22.801075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705849, 35.324333, 22.730131>,  <36.611752, 35.540974, 22.687565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705849, 35.324333, 22.730131>,  <36.862679, 34.963264, 22.801075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705849, 35.324333, 22.730131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119825, 0.241266, 0.963033,
		0.912097, 0.356328, -0.202757,
		-0.392074, 0.902674, -0.177361,
		36.588226, 35.595135, 22.676924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336559, 35.427624, 23.252363>,  <36.862679, 34.963264, 22.801075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336559, 35.427624, 23.252363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993187, 35.601360, 23.143229>,  <36.787163, 35.705605, 23.077747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993187, 35.601360, 23.143229>,  <37.336559, 35.427624, 23.252363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993187, 35.601360, 23.143229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120385, 0.346453, 0.930310,
		0.498599, 0.831454, -0.245119,
		-0.858432, 0.434344, -0.272836,
		36.735657, 35.731663, 23.061378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371929, 36.081097, 23.564394>,  <37.336559, 35.427624, 23.252363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371929, 36.081097, 23.564394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982250, 36.030529, 23.489599>,  <36.748444, 36.000187, 23.444723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982250, 36.030529, 23.489599>,  <37.371929, 36.081097, 23.564394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982250, 36.030529, 23.489599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222666, 0.402692, 0.887839,
		-0.036942, 0.906563, -0.420450,
		-0.974194, -0.126418, -0.186985,
		36.689991, 35.992603, 23.433504>
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
