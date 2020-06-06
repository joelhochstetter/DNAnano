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
	<24.229225, 34.567707, 35.266758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273113, 34.923889, 35.090099>,  <24.299446, 35.137600, 34.984104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273113, 34.923889, 35.090099>,  <24.229225, 34.567707, 35.266758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273113, 34.923889, 35.090099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106498, -0.452304, -0.885482,
		-0.988241, 0.050121, -0.144459,
		0.109720, 0.890454, -0.441648,
		24.306028, 35.191025, 34.957603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845366, 34.624290, 34.732597>,  <24.229225, 34.567707, 35.266758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845366, 34.624290, 34.732597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795593, 34.899181, 35.018879>,  <24.765730, 35.064114, 35.190647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795593, 34.899181, 35.018879>,  <24.845366, 34.624290, 34.732597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795593, 34.899181, 35.018879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962499, 0.091644, -0.255335,
		-0.241063, -0.720641, 0.650050,
		-0.124432, 0.687225, 0.715708,
		24.758265, 35.105350, 35.233593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299833, 35.034931, 34.473396>,  <24.845366, 34.624290, 34.732597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299833, 35.034931, 34.473396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547743, 34.880970, 34.746960>,  <25.696487, 34.788593, 34.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547743, 34.880970, 34.746960>,  <25.299833, 35.034931, 34.473396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547743, 34.880970, 34.746960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199416, -0.765621, -0.611603,
		0.759023, 0.515437, -0.397755,
		0.619773, -0.384901, 0.683910,
		25.733675, 34.765499, 34.952133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977388, 34.949505, 34.217197>,  <25.299833, 35.034931, 34.473396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977388, 34.949505, 34.217197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859955, 34.687813, 34.495991>,  <25.789495, 34.530796, 34.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859955, 34.687813, 34.495991>,  <25.977388, 34.949505, 34.217197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859955, 34.687813, 34.495991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141967, -0.750869, -0.645012,
		0.945333, -0.090416, 0.313322,
		-0.293583, -0.654233, 0.696985,
		25.771879, 34.491543, 34.705086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418772, 34.305508, 34.212597>,  <25.977388, 34.949505, 34.217197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418772, 34.305508, 34.212597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066126, 34.196415, 34.366673>,  <25.854538, 34.130959, 34.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066126, 34.196415, 34.366673>,  <26.418772, 34.305508, 34.212597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066126, 34.196415, 34.366673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013451, -0.801283, -0.598134,
		0.471782, -0.532503, 0.702753,
		-0.881612, -0.272736, 0.385194,
		25.801641, 34.114594, 34.482231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381611, 33.603168, 34.466328>,  <26.418772, 34.305508, 34.212597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381611, 33.603168, 34.466328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014296, 33.696972, 34.338730>,  <25.793907, 33.753254, 34.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014296, 33.696972, 34.338730>,  <26.381611, 33.603168, 34.466328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014296, 33.696972, 34.338730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044160, -0.740014, -0.671140,
		-0.393445, -0.630386, 0.669189,
		-0.918287, 0.234506, -0.318993,
		25.738810, 33.767323, 34.243031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871347, 33.110065, 34.557247>,  <26.381611, 33.603168, 34.466328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871347, 33.110065, 34.557247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711414, 33.302212, 34.244995>,  <25.615456, 33.417500, 34.057644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711414, 33.302212, 34.244995>,  <25.871347, 33.110065, 34.557247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711414, 33.302212, 34.244995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123761, -0.815574, -0.565263,
		-0.908195, -0.322621, 0.266641,
		-0.399831, 0.480370, -0.780628,
		25.591465, 33.446323, 34.010807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187809, 32.795807, 34.248497>,  <25.871347, 33.110065, 34.557247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187809, 32.795807, 34.248497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438889, 32.951954, 33.979095>,  <25.589537, 33.045643, 33.817455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438889, 32.951954, 33.979095>,  <25.187809, 32.795807, 34.248497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438889, 32.951954, 33.979095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096431, -0.897506, -0.430330,
		-0.772461, 0.205170, -0.601006,
		0.627698, 0.390369, -0.673504,
		25.627197, 33.069065, 33.777042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095255, 32.429226, 33.731567>,  <25.187809, 32.795807, 34.248497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095255, 32.429226, 33.731567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437857, 32.608120, 33.628510>,  <25.643417, 32.715458, 33.566677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437857, 32.608120, 33.628510>,  <25.095255, 32.429226, 33.731567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437857, 32.608120, 33.628510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246552, -0.793058, -0.557020,
		-0.453445, 0.413568, -0.789525,
		0.856504, 0.447237, -0.257642,
		25.694807, 32.742290, 33.551216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219051, 32.380211, 33.081497>,  <25.095255, 32.429226, 33.731567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219051, 32.380211, 33.081497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602888, 32.464359, 33.156250>,  <25.833191, 32.514847, 33.201103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602888, 32.464359, 33.156250>,  <25.219051, 32.380211, 33.081497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602888, 32.464359, 33.156250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280191, -0.653097, -0.703532,
		-0.025949, 0.727467, -0.685651,
		0.959593, 0.210369, 0.186883,
		25.890766, 32.527470, 33.212315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560764, 32.126686, 32.432934>,  <25.219051, 32.380211, 33.081497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560764, 32.126686, 32.432934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835390, 32.150799, 32.722759>,  <26.000166, 32.165268, 32.896656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835390, 32.150799, 32.722759>,  <25.560764, 32.126686, 32.432934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835390, 32.150799, 32.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444345, -0.823580, -0.352524,
		0.575487, 0.563988, -0.592227,
		0.686565, 0.060280, 0.724565,
		26.041359, 32.168884, 32.940128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205807, 32.129356, 32.091099>,  <25.560764, 32.126686, 32.432934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205807, 32.129356, 32.091099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208828, 31.982168, 32.463020>,  <26.210642, 31.893854, 32.686172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208828, 31.982168, 32.463020>,  <26.205807, 32.129356, 32.091099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208828, 31.982168, 32.463020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667590, -0.690414, -0.278659,
		0.744490, 0.622834, 0.240440,
		0.007555, -0.367975, 0.929805,
		26.211094, 31.871777, 32.741962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883104, 32.124161, 32.420040>,  <26.205807, 32.129356, 32.091099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883104, 32.124161, 32.420040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669130, 31.834406, 32.593983>,  <26.540745, 31.660553, 32.698349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669130, 31.834406, 32.593983>,  <26.883104, 32.124161, 32.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669130, 31.834406, 32.593983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740091, -0.650030, -0.172412,
		0.407564, 0.229605, 0.883840,
		-0.534936, -0.724391, 0.434858,
		26.508650, 31.617088, 32.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245796, 31.663647, 32.959938>,  <26.883104, 32.124161, 32.420040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245796, 31.663647, 32.959938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003590, 31.476522, 32.702412>,  <26.858265, 31.364248, 32.547894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003590, 31.476522, 32.702412>,  <27.245796, 31.663647, 32.959938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003590, 31.476522, 32.702412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706144, -0.688921, -0.163552,
		-0.367030, -0.553663, 0.747493,
		-0.605516, -0.467809, -0.643821,
		26.821936, 31.336180, 32.509266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681425, 31.179171, 33.134815>,  <27.245796, 31.663647, 32.959938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681425, 31.179171, 33.134815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402777, 31.438309, 33.258114>,  <26.235588, 31.593792, 33.332092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402777, 31.438309, 33.258114>,  <26.681425, 31.179171, 33.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402777, 31.438309, 33.258114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597679, -0.286383, -0.748842,
		-0.396861, -0.705889, 0.586705,
		-0.696622, 0.647847, 0.308241,
		26.193790, 31.632662, 33.350586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550863, 31.562653, 33.818546>,  <26.681425, 31.179171, 33.134815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550863, 31.562653, 33.818546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633228, 31.731554, 33.465435>,  <26.682648, 31.832895, 33.253567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633228, 31.731554, 33.465435>,  <26.550863, 31.562653, 33.818546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633228, 31.731554, 33.465435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027775, 0.904271, 0.426056,
		0.978176, -0.063211, 0.197928,
		0.205912, 0.422255, -0.882780,
		26.695002, 31.858231, 33.200600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075520, 32.141251, 33.902805>,  <26.550863, 31.562653, 33.818546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075520, 32.141251, 33.902805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820786, 32.166965, 33.595478>,  <26.667946, 32.182396, 33.411083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820786, 32.166965, 33.595478>,  <27.075520, 32.141251, 33.902805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820786, 32.166965, 33.595478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257276, 0.921681, 0.290367,
		0.726809, 0.382585, -0.570419,
		-0.636834, 0.064286, -0.768316,
		26.629736, 32.186253, 33.364983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999857, 32.855255, 33.829868>,  <27.075520, 32.141251, 33.902805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999857, 32.855255, 33.829868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666122, 32.722759, 33.653614>,  <26.465881, 32.643261, 33.547859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666122, 32.722759, 33.653614>,  <26.999857, 32.855255, 33.829868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666122, 32.722759, 33.653614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411204, 0.906338, 0.097274,
		0.367147, 0.262352, -0.892399,
		-0.834335, -0.331244, -0.440639,
		26.415821, 32.623386, 33.521423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882860, 33.275192, 33.340729>,  <26.999857, 32.855255, 33.829868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882860, 33.275192, 33.340729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522808, 33.112473, 33.403057>,  <26.306778, 33.014839, 33.440456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522808, 33.112473, 33.403057>,  <26.882860, 33.275192, 33.340729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522808, 33.112473, 33.403057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403162, 0.913429, 0.055749,
		-0.165014, -0.012642, -0.986210,
		-0.900128, -0.406802, 0.155826,
		26.252769, 32.990433, 33.449806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395042, 33.570522, 32.876858>,  <26.882860, 33.275192, 33.340729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395042, 33.570522, 32.876858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175615, 33.429729, 33.180222>,  <26.043959, 33.345253, 33.362240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175615, 33.429729, 33.180222>,  <26.395042, 33.570522, 32.876858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175615, 33.429729, 33.180222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456741, 0.885923, 0.080795,
		-0.700330, -0.302075, -0.646752,
		-0.548567, -0.351981, 0.758409,
		26.011045, 33.324135, 33.407745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741844, 33.869812, 32.797825>,  <26.395042, 33.570522, 32.876858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741844, 33.869812, 32.797825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769072, 33.752731, 33.179337>,  <25.785408, 33.682484, 33.408241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769072, 33.752731, 33.179337>,  <25.741844, 33.869812, 32.797825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769072, 33.752731, 33.179337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522073, 0.804207, 0.284061,
		-0.850180, -0.517276, -0.098074,
		0.068067, -0.292705, 0.953777,
		25.789492, 33.664921, 33.465469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056726, 33.697323, 33.114571>,  <25.741844, 33.869812, 32.797825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056726, 33.697323, 33.114571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360655, 33.843204, 33.329849>,  <25.543013, 33.930733, 33.459019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360655, 33.843204, 33.329849>,  <25.056726, 33.697323, 33.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360655, 33.843204, 33.329849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617217, 0.664727, 0.420929,
		-0.204240, -0.652017, 0.730178,
		0.759822, 0.364707, 0.538200,
		25.588602, 33.952618, 33.491310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946653, 33.731735, 33.803577>,  <25.056726, 33.697323, 33.114571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946653, 33.731735, 33.803577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204624, 34.032642, 33.749668>,  <25.359407, 34.213184, 33.717323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204624, 34.032642, 33.749668>,  <24.946653, 33.731735, 33.803577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204624, 34.032642, 33.749668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591448, 0.602971, 0.535363,
		0.483998, -0.265562, 0.833800,
		0.644930, 0.752265, -0.134771,
		25.398104, 34.258324, 33.709236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582125, 33.961773, 34.402969>,  <24.946653, 33.731735, 33.803577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582125, 33.961773, 34.402969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947990, 33.801399, 34.423504>,  <25.167511, 33.705173, 34.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.947990, 33.801399, 34.423504>,  <24.582125, 33.961773, 34.402969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.947990, 33.801399, 34.423504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228036, 0.616695, 0.753450,
		-0.333747, -0.677447, 0.655498,
		0.914665, -0.400939, 0.051338,
		25.222389, 33.681118, 34.438904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674170, 33.811352, 35.057610>,  <24.582125, 33.961773, 34.402969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674170, 33.811352, 35.057610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018967, 33.901226, 34.875847>,  <25.225845, 33.955151, 34.766788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018967, 33.901226, 34.875847>,  <24.674170, 33.811352, 35.057610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018967, 33.901226, 34.875847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264371, 0.565586, 0.781167,
		0.432524, -0.793491, 0.428129,
		0.861992, 0.224689, -0.454405,
		25.277565, 33.968632, 34.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221409, 33.560768, 35.511002>,  <24.674170, 33.811352, 35.057610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221409, 33.560768, 35.511002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329815, 33.865246, 35.275330>,  <25.394857, 34.047932, 35.133926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329815, 33.865246, 35.275330>,  <25.221409, 33.560768, 35.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329815, 33.865246, 35.275330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311112, 0.509964, 0.801964,
		0.910912, -0.400643, -0.098611,
		0.271013, 0.761198, -0.589177,
		25.411119, 34.093605, 35.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721745, 33.856720, 35.877205>,  <25.221409, 33.560768, 35.511002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721745, 33.856720, 35.877205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665064, 34.162727, 35.625916>,  <25.631056, 34.346333, 35.475143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665064, 34.162727, 35.625916>,  <25.721745, 33.856720, 35.877205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665064, 34.162727, 35.625916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220964, 0.643057, 0.733248,
		0.964933, -0.034910, -0.260165,
		-0.141703, 0.765022, -0.628220,
		25.622553, 34.392235, 35.437450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285040, 34.237263, 36.000221>,  <25.721745, 33.856720, 35.877205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285040, 34.237263, 36.000221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979725, 34.468079, 35.884003>,  <25.796535, 34.606567, 35.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979725, 34.468079, 35.884003>,  <26.285040, 34.237263, 36.000221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979725, 34.468079, 35.884003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141735, 0.588336, 0.796098,
		0.630320, 0.566470, -0.530856,
		-0.763288, 0.577037, -0.290551,
		25.750738, 34.641190, 35.796837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475487, 34.952084, 35.983822>,  <26.285040, 34.237263, 36.000221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475487, 34.952084, 35.983822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079224, 34.963604, 36.037140>,  <25.841465, 34.970516, 36.069130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079224, 34.963604, 36.037140>,  <26.475487, 34.952084, 35.983822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079224, 34.963604, 36.037140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094396, 0.850282, 0.517793,
		-0.098427, 0.525538, -0.845057,
		-0.990657, 0.028805, 0.133299,
		25.782026, 34.972244, 36.077129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900270, 35.044540, 36.648846>,  <26.475487, 34.952084, 35.983822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900270, 35.044540, 36.648846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166492, 34.794704, 36.812271>,  <27.326225, 34.644802, 36.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166492, 34.794704, 36.812271>,  <26.900270, 35.044540, 36.648846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166492, 34.794704, 36.812271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040605, 0.576907, 0.815800,
		-0.745244, -0.526369, 0.409325,
		0.665555, -0.624590, 0.408563,
		27.366159, 34.607327, 36.934841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683180, 34.781479, 37.412224>,  <26.900270, 35.044540, 36.648846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683180, 34.781479, 37.412224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080063, 34.789433, 37.363029>,  <27.318193, 34.794205, 37.333515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080063, 34.789433, 37.363029>,  <26.683180, 34.781479, 37.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080063, 34.789433, 37.363029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076590, 0.681234, 0.728048,
		0.098255, -0.731796, 0.674404,
		0.992210, 0.019882, -0.122983,
		27.377726, 34.795399, 37.326134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012829, 34.776093, 38.096855>,  <26.683180, 34.781479, 37.412224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012829, 34.776093, 38.096855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307747, 34.912079, 37.863335>,  <27.484697, 34.993671, 37.723225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307747, 34.912079, 37.863335>,  <27.012829, 34.776093, 38.096855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307747, 34.912079, 37.863335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254770, 0.660430, 0.706346,
		0.625686, -0.669522, 0.400322,
		0.737299, 0.339961, -0.583796,
		27.528936, 35.014069, 37.688194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690805, 34.690750, 38.466015>,  <27.012829, 34.776093, 38.096855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690805, 34.690750, 38.466015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733599, 34.987591, 38.201336>,  <27.759275, 35.165695, 38.042530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733599, 34.987591, 38.201336>,  <27.690805, 34.690750, 38.466015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733599, 34.987591, 38.201336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100724, 0.654002, 0.749758,
		0.989146, -0.146861, -0.004779,
		0.106985, 0.742101, -0.661695,
		27.765694, 35.210220, 38.002827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135445, 35.073040, 38.793175>,  <27.690805, 34.690750, 38.466015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135445, 35.073040, 38.793175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013132, 35.331238, 38.513222>,  <27.939745, 35.486156, 38.345249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013132, 35.331238, 38.513222>,  <28.135445, 35.073040, 38.793175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013132, 35.331238, 38.513222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001836, 0.735493, 0.677530,
		0.952100, 0.205891, -0.226085,
		-0.305782, 0.645491, -0.699885,
		27.921398, 35.524883, 38.303257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601315, 35.595207, 38.791702>,  <28.135445, 35.073040, 38.793175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601315, 35.595207, 38.791702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242296, 35.707108, 38.655380>,  <28.026884, 35.774246, 38.573586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242296, 35.707108, 38.655380>,  <28.601315, 35.595207, 38.791702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242296, 35.707108, 38.655380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123238, 0.582979, 0.803087,
		0.423346, 0.762809, -0.488775,
		-0.897547, 0.279748, -0.340809,
		27.973032, 35.791031, 38.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891981, 36.237968, 38.855812>,  <28.601315, 35.595207, 38.791702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891981, 36.237968, 38.855812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228247, 36.441235, 38.780914>,  <29.430006, 36.563194, 38.735977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228247, 36.441235, 38.780914>,  <28.891981, 36.237968, 38.855812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228247, 36.441235, 38.780914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504680, -0.860506, -0.069480,
		-0.196430, -0.036088, -0.979854,
		0.840662, 0.508161, -0.187242,
		29.480446, 36.593681, 38.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902710, 35.966240, 38.202759>,  <28.891981, 36.237968, 38.855812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902710, 35.966240, 38.202759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526415, 36.101891, 38.201996>,  <28.300638, 36.183281, 38.201538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526415, 36.101891, 38.201996>,  <28.902710, 35.966240, 38.202759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526415, 36.101891, 38.201996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230882, 0.644564, 0.728856,
		0.248408, 0.685221, -0.684665,
		-0.940737, 0.339130, -0.001910,
		28.244194, 36.203629, 38.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864115, 36.701767, 38.149639>,  <28.902710, 35.966240, 38.202759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864115, 36.701767, 38.149639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517124, 36.602989, 38.322384>,  <28.308929, 36.543724, 38.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517124, 36.602989, 38.322384>,  <28.864115, 36.701767, 38.149639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517124, 36.602989, 38.322384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197194, 0.626305, 0.754226,
		-0.456730, 0.739432, -0.494608,
		-0.867474, -0.246944, 0.431864,
		28.256882, 36.528908, 38.451942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661972, 37.337074, 38.451061>,  <28.864115, 36.701767, 38.149639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661972, 37.337074, 38.451061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427118, 37.061581, 38.621201>,  <28.286207, 36.896286, 38.723286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427118, 37.061581, 38.621201>,  <28.661972, 37.337074, 38.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427118, 37.061581, 38.621201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001073, 0.526119, 0.850410,
		-0.809490, 0.498848, -0.309641,
		-0.587133, -0.688730, 0.425353,
		28.250978, 36.854961, 38.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425474, 37.274250, 38.814556>,  <28.661972, 37.337074, 38.451061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425474, 37.274250, 38.814556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575451, 37.615528, 38.669518>,  <29.665438, 37.820293, 38.582493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575451, 37.615528, 38.669518>,  <29.425474, 37.274250, 38.814556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575451, 37.615528, 38.669518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738327, 0.511356, 0.439759,
		0.560616, 0.102830, 0.821666,
		0.374944, 0.853195, -0.362597,
		29.687935, 37.871487, 38.560738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199793, 36.878258, 39.576321>,  <29.425474, 37.274250, 38.814556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199793, 36.878258, 39.576321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876371, 36.881294, 39.811668>,  <28.682318, 36.883114, 39.952877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876371, 36.881294, 39.811668>,  <29.199793, 36.878258, 39.576321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876371, 36.881294, 39.811668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517508, -0.485061, -0.704913,
		0.280048, -0.874448, 0.396125,
		-0.808554, 0.007589, 0.588374,
		28.633806, 36.883572, 39.988182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857197, 36.187683, 39.665977>,  <29.199793, 36.878258, 39.576321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857197, 36.187683, 39.665977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581598, 36.475384, 39.701668>,  <28.416239, 36.648003, 39.723080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581598, 36.475384, 39.701668>,  <28.857197, 36.187683, 39.665977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581598, 36.475384, 39.701668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531549, -0.417787, -0.736823,
		-0.492687, -0.555093, 0.670172,
		-0.688995, 0.719253, 0.089221,
		28.374899, 36.691158, 39.728436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147469, 35.866333, 39.713154>,  <28.857197, 36.187683, 39.665977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147469, 35.866333, 39.713154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106369, 36.235619, 39.565037>,  <28.081709, 36.457191, 39.476166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106369, 36.235619, 39.565037>,  <28.147469, 35.866333, 39.713154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106369, 36.235619, 39.565037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475196, -0.372590, -0.797098,
		-0.873860, 0.094060, 0.476992,
		-0.102747, 0.923217, -0.370288,
		28.075544, 36.512585, 39.453949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530300, 35.947254, 39.403522>,  <28.147469, 35.866333, 39.713154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530300, 35.947254, 39.403522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735796, 36.224186, 39.200840>,  <27.859093, 36.390347, 39.079231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735796, 36.224186, 39.200840>,  <27.530300, 35.947254, 39.403522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735796, 36.224186, 39.200840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316529, -0.395985, -0.861977,
		-0.797422, 0.603217, 0.015711,
		0.513738, 0.692333, -0.506703,
		27.889917, 36.431885, 39.048828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076897, 36.171852, 38.842194>,  <27.530300, 35.947254, 39.403522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076897, 36.171852, 38.842194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442789, 36.287670, 38.729458>,  <27.662325, 36.357162, 38.661816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442789, 36.287670, 38.729458>,  <27.076897, 36.171852, 38.842194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442789, 36.287670, 38.729458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123602, -0.463561, -0.877402,
		-0.384694, 0.837422, -0.388246,
		0.914731, 0.289544, -0.281836,
		27.717209, 36.374535, 38.644905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071590, 36.470669, 38.227757>,  <27.076897, 36.171852, 38.842194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071590, 36.470669, 38.227757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438076, 36.316551, 38.271759>,  <27.657967, 36.224079, 38.298161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438076, 36.316551, 38.271759>,  <27.071590, 36.470669, 38.227757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438076, 36.316551, 38.271759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109026, -0.503909, -0.856848,
		0.385572, 0.773062, -0.503695,
		0.916213, -0.385293, 0.110010,
		27.712940, 36.200962, 38.304764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419313, 36.451599, 37.623528>,  <27.071590, 36.470669, 38.227757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419313, 36.451599, 37.623528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618498, 36.159107, 37.810005>,  <27.738008, 35.983612, 37.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618498, 36.159107, 37.810005>,  <27.419313, 36.451599, 37.623528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618498, 36.159107, 37.810005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010189, -0.542487, -0.840003,
		0.867140, 0.413537, -0.277587,
		0.497960, -0.731228, 0.466199,
		27.767885, 35.939739, 37.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022606, 36.256187, 37.247398>,  <27.419313, 36.451599, 37.623528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022606, 36.256187, 37.247398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932079, 35.935692, 37.468960>,  <27.877764, 35.743397, 37.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932079, 35.935692, 37.468960>,  <28.022606, 36.256187, 37.247398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932079, 35.935692, 37.468960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149162, -0.590455, -0.793167,
		0.962566, -0.096884, 0.253143,
		-0.226315, -0.801234, 0.553900,
		27.864185, 35.695320, 37.635128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360039, 35.662163, 36.907326>,  <28.022606, 36.256187, 37.247398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360039, 35.662163, 36.907326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120216, 35.446838, 37.144222>,  <27.976322, 35.317642, 37.286358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120216, 35.446838, 37.144222>,  <28.360039, 35.662163, 36.907326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120216, 35.446838, 37.144222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045999, -0.715592, -0.697003,
		0.799009, -0.445135, 0.404277,
		-0.599557, -0.538315, 0.592240,
		27.940350, 35.285343, 37.321896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613543, 34.890747, 37.076771>,  <28.360039, 35.662163, 36.907326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613543, 34.890747, 37.076771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215967, 34.920948, 37.044796>,  <27.977423, 34.939068, 37.025612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215967, 34.920948, 37.044796>,  <28.613543, 34.890747, 37.076771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215967, 34.920948, 37.044796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003017, -0.707967, -0.706239,
		-0.109916, -0.702197, 0.703447,
		-0.993936, 0.075505, -0.079935,
		27.917786, 34.943600, 37.020817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068684, 34.889332, 36.482044>,  <28.613543, 34.890747, 37.076771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068684, 34.889332, 36.482044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213034, 35.033272, 36.137886>,  <29.299644, 35.119637, 35.931393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213034, 35.033272, 36.137886>,  <29.068684, 34.889332, 36.482044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213034, 35.033272, 36.137886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147207, -0.889018, -0.433563,
		-0.920923, 0.283118, -0.267852,
		0.360875, 0.359849, -0.860394,
		29.321297, 35.141228, 35.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637482, 34.696747, 35.922470>,  <29.068684, 34.889332, 36.482044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637482, 34.696747, 35.922470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999401, 34.770828, 35.769089>,  <29.216553, 34.815277, 35.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999401, 34.770828, 35.769089>,  <28.637482, 34.696747, 35.922470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999401, 34.770828, 35.769089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055193, -0.841870, -0.536850,
		-0.422244, 0.506906, -0.751502,
		0.904800, 0.185205, -0.383453,
		29.270842, 34.826389, 35.654053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824226, 34.007378, 36.069324>,  <28.637482, 34.696747, 35.922470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824226, 34.007378, 36.069324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543932, 34.266960, 36.187862>,  <28.375755, 34.422710, 36.258987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543932, 34.266960, 36.187862>,  <28.824226, 34.007378, 36.069324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543932, 34.266960, 36.187862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689532, -0.509486, -0.514753,
		-0.183068, -0.565047, 0.804493,
		-0.700737, 0.648958, 0.296347,
		28.333712, 34.461647, 36.276768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161951, 34.063854, 36.640472>,  <28.824226, 34.007378, 36.069324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161951, 34.063854, 36.640472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234566, 33.684711, 36.745251>,  <29.278135, 33.457226, 36.808117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234566, 33.684711, 36.745251>,  <29.161951, 34.063854, 36.640472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234566, 33.684711, 36.745251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250023, 0.213131, 0.944491,
		-0.951069, -0.236952, -0.198295,
		0.181537, -0.947855, 0.261946,
		29.289026, 33.400356, 36.823833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560146, 33.777477, 37.016418>,  <29.161951, 34.063854, 36.640472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560146, 33.777477, 37.016418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888559, 33.592251, 37.149975>,  <29.085608, 33.481117, 37.230106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888559, 33.592251, 37.149975>,  <28.560146, 33.777477, 37.016418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888559, 33.592251, 37.149975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342471, 0.068426, 0.937033,
		-0.456752, -0.883680, -0.102406,
		0.821030, -0.463063, 0.333889,
		29.134869, 33.453331, 37.250141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341763, 33.292130, 37.442421>,  <28.560146, 33.777477, 37.016418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341763, 33.292130, 37.442421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722427, 33.311806, 37.563694>,  <28.950827, 33.323612, 37.636459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722427, 33.311806, 37.563694>,  <28.341763, 33.292130, 37.442421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722427, 33.311806, 37.563694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305313, 0.043748, 0.951247,
		0.033536, -0.997831, 0.056654,
		0.951661, 0.049198, 0.303184,
		29.007925, 33.326561, 37.654648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500246, 32.668377, 37.838963>,  <28.341763, 33.292130, 37.442421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500246, 32.668377, 37.838963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740147, 32.969807, 37.946606>,  <28.884087, 33.150665, 38.011192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740147, 32.969807, 37.946606>,  <28.500246, 32.668377, 37.838963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740147, 32.969807, 37.946606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431919, 0.021771, 0.901650,
		0.673604, -0.656999, 0.338541,
		0.599753, 0.753577, 0.269105,
		28.920073, 33.195881, 38.027336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892097, 32.616322, 38.528755>,  <28.500246, 32.668377, 37.838963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892097, 32.616322, 38.528755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784201, 32.988285, 38.428753>,  <28.719461, 33.211464, 38.368752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784201, 32.988285, 38.428753>,  <28.892097, 32.616322, 38.528755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784201, 32.988285, 38.428753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428505, 0.116589, 0.895986,
		0.862335, 0.348817, 0.367022,
		-0.269744, 0.929911, -0.250008,
		28.703278, 33.267258, 38.353752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231508, 33.007954, 39.092937>,  <28.892097, 32.616322, 38.528755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231508, 33.007954, 39.092937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895344, 33.148842, 38.928185>,  <28.693645, 33.233376, 38.829330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895344, 33.148842, 38.928185>,  <29.231508, 33.007954, 39.092937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895344, 33.148842, 38.928185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427776, 0.035497, 0.903187,
		0.332745, 0.935242, 0.120841,
		-0.840409, 0.352224, -0.411886,
		28.643221, 33.254509, 38.804619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240049, 32.960918, 39.886417>,  <29.231508, 33.007954, 39.092937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240049, 32.960918, 39.886417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342337, 33.340721, 39.813705>,  <29.403709, 33.568604, 39.770077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342337, 33.340721, 39.813705>,  <29.240049, 32.960918, 39.886417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342337, 33.340721, 39.813705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486867, -0.035964, -0.872735,
		-0.835205, 0.311680, 0.453087,
		0.255719, 0.949506, -0.181784,
		29.419052, 33.625572, 39.759171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688589, 33.341629, 39.587124>,  <29.240049, 32.960918, 39.886417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688589, 33.341629, 39.587124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018625, 33.529720, 39.461834>,  <29.216646, 33.642574, 39.386662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018625, 33.529720, 39.461834>,  <28.688589, 33.341629, 39.587124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018625, 33.529720, 39.461834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364074, 0.018558, -0.931185,
		-0.432060, 0.882348, 0.186511,
		0.825090, 0.470232, -0.313221,
		29.266151, 33.670792, 39.367867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548185, 34.035076, 39.217670>,  <28.688589, 33.341629, 39.587124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548185, 34.035076, 39.217670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879913, 33.846092, 39.098335>,  <29.078951, 33.732700, 39.026733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879913, 33.846092, 39.098335>,  <28.548185, 34.035076, 39.217670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879913, 33.846092, 39.098335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196174, 0.253747, -0.947169,
		0.523206, 0.844032, 0.117752,
		0.829320, -0.472464, -0.298339,
		29.128710, 33.704353, 39.008835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945587, 34.358627, 38.607082>,  <28.548185, 34.035076, 39.217670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945587, 34.358627, 38.607082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047518, 33.971985, 38.596207>,  <29.108675, 33.739998, 38.589680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047518, 33.971985, 38.596207>,  <28.945587, 34.358627, 38.607082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047518, 33.971985, 38.596207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186391, 0.076688, -0.979478,
		0.948853, 0.244528, 0.199708,
		0.254825, -0.966605, -0.027188,
		29.123964, 33.682003, 38.588051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700024, 34.159454, 38.359585>,  <28.945587, 34.358627, 38.607082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700024, 34.159454, 38.359585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458921, 33.855034, 38.263683>,  <29.314260, 33.672382, 38.206142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458921, 33.855034, 38.263683>,  <29.700024, 34.159454, 38.359585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458921, 33.855034, 38.263683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508106, -0.134408, -0.850742,
		0.615237, -0.634610, 0.467712,
		-0.602753, -0.761055, -0.239757,
		29.278095, 33.626717, 38.191757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111826, 33.669258, 38.095787>,  <29.700024, 34.159454, 38.359585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111826, 33.669258, 38.095787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760897, 33.578224, 37.926788>,  <29.550339, 33.523602, 37.825390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760897, 33.578224, 37.926788>,  <30.111826, 33.669258, 38.095787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760897, 33.578224, 37.926788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437872, -0.019344, -0.898829,
		0.196391, -0.973565, 0.116626,
		-0.877325, -0.227589, -0.422498,
		29.497700, 33.509949, 37.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210333, 32.984592, 37.693180>,  <30.111826, 33.669258, 38.095787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210333, 32.984592, 37.693180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864790, 33.122055, 37.545856>,  <29.657465, 33.204533, 37.457462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864790, 33.122055, 37.545856>,  <30.210333, 32.984592, 37.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864790, 33.122055, 37.545856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327116, -0.173318, -0.928954,
		-0.383078, -0.922962, 0.037306,
		-0.863855, 0.343658, -0.368310,
		29.605633, 33.225151, 37.435364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958941, 32.515820, 37.064518>,  <30.210333, 32.984592, 37.693180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958941, 32.515820, 37.064518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821079, 32.889484, 37.027523>,  <29.738361, 33.113682, 37.005325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821079, 32.889484, 37.027523>,  <29.958941, 32.515820, 37.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821079, 32.889484, 37.027523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348065, 0.035671, -0.936791,
		-0.871817, -0.355060, -0.337444,
		-0.344654, 0.934163, -0.092485,
		29.717684, 33.169735, 36.999779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645386, 32.531330, 36.359127>,  <29.958941, 32.515820, 37.064518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645386, 32.531330, 36.359127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762754, 32.895664, 36.475254>,  <29.833176, 33.114265, 36.544930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762754, 32.895664, 36.475254>,  <29.645386, 32.531330, 36.359127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762754, 32.895664, 36.475254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253667, 0.218622, -0.942262,
		-0.921715, 0.350124, -0.166900,
		0.293420, 0.910834, 0.290322,
		29.850780, 33.168915, 36.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308798, 33.193645, 35.849163>,  <29.645386, 32.531330, 36.359127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308798, 33.193645, 35.849163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650728, 33.293453, 36.031158>,  <29.855886, 33.353336, 36.140358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650728, 33.293453, 36.031158>,  <29.308798, 33.193645, 35.849163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650728, 33.293453, 36.031158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389178, 0.271709, -0.880179,
		-0.343244, 0.929471, 0.135157,
		0.854824, 0.249515, 0.454992,
		29.907175, 33.368309, 36.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492950, 33.908955, 35.702465>,  <29.308798, 33.193645, 35.849163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492950, 33.908955, 35.702465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833920, 33.715237, 35.781292>,  <30.038502, 33.599007, 35.828587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833920, 33.715237, 35.781292>,  <29.492950, 33.908955, 35.702465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833920, 33.715237, 35.781292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366391, 0.284404, -0.885930,
		0.373001, 0.827392, 0.419873,
		0.852425, -0.484290, 0.197066,
		30.089647, 33.569950, 35.840412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023825, 34.360775, 35.420937>,  <29.492950, 33.908955, 35.702465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023825, 34.360775, 35.420937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208519, 34.009235, 35.468975>,  <30.319336, 33.798313, 35.497799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208519, 34.009235, 35.468975>,  <30.023825, 34.360775, 35.420937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208519, 34.009235, 35.468975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392717, 0.081141, -0.916073,
		0.795345, 0.470149, 0.382605,
		0.461736, -0.878849, 0.120100,
		30.347040, 33.745579, 35.505005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739552, 34.475113, 35.156307>,  <30.023825, 34.360775, 35.420937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739552, 34.475113, 35.156307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660376, 34.083973, 35.183502>,  <30.612869, 33.849289, 35.199818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660376, 34.083973, 35.183502>,  <30.739552, 34.475113, 35.156307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660376, 34.083973, 35.183502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280889, -0.123036, -0.951821,
		0.939107, -0.169306, 0.299022,
		-0.197940, -0.977854, 0.067988,
		30.600994, 33.790615, 35.203899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281199, 34.213520, 34.912376>,  <30.739552, 34.475113, 35.156307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281199, 34.213520, 34.912376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006578, 33.927124, 34.861771>,  <30.841806, 33.755287, 34.831406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006578, 33.927124, 34.861771>,  <31.281199, 34.213520, 34.912376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006578, 33.927124, 34.861771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281376, -0.101189, -0.954248,
		0.670429, -0.690739, 0.270933,
		-0.686551, -0.715989, -0.126517,
		30.800613, 33.712326, 34.823814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580761, 33.694233, 34.504082>,  <31.281199, 34.213520, 34.912376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580761, 33.694233, 34.504082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192205, 33.620876, 34.443726>,  <30.959072, 33.576862, 34.407513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192205, 33.620876, 34.443726>,  <31.580761, 33.694233, 34.504082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192205, 33.620876, 34.443726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163209, -0.053952, -0.985115,
		0.172521, -0.981558, 0.082339,
		-0.971390, -0.183391, -0.150891,
		30.900787, 33.565861, 34.398457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586462, 33.164558, 34.015457>,  <31.580761, 33.694233, 34.504082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586462, 33.164558, 34.015457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214098, 33.306614, 33.981323>,  <30.990679, 33.391846, 33.960842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214098, 33.306614, 33.981323>,  <31.586462, 33.164558, 34.015457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214098, 33.306614, 33.981323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035925, -0.143476, -0.989002,
		-0.363473, -0.923739, 0.120805,
		-0.930912, 0.355136, -0.085335,
		30.934824, 33.413155, 33.955723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211288, 32.719570, 33.521091>,  <31.586462, 33.164558, 34.015457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211288, 32.719570, 33.521091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966127, 33.035629, 33.522831>,  <30.819031, 33.225266, 33.523876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966127, 33.035629, 33.522831>,  <31.211288, 32.719570, 33.521091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966127, 33.035629, 33.522831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149942, -0.110901, -0.982455,
		-0.775800, -0.602803, 0.186447,
		-0.612904, 0.790145, 0.004348,
		30.782257, 33.272675, 33.524136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677664, 32.524845, 33.217392>,  <31.211288, 32.719570, 33.521091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677664, 32.524845, 33.217392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659773, 32.921333, 33.167614>,  <30.649038, 33.159225, 33.137749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659773, 32.921333, 33.167614>,  <30.677664, 32.524845, 33.217392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659773, 32.921333, 33.167614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305534, -0.132172, -0.942963,
		-0.951130, -0.004155, 0.308762,
		-0.044728, 0.991218, -0.124444,
		30.646355, 33.218700, 33.130280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083723, 32.702927, 32.802120>,  <30.677664, 32.524845, 33.217392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083723, 32.702927, 32.802120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308947, 33.029713, 32.752266>,  <30.444080, 33.225784, 32.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308947, 33.029713, 32.752266>,  <30.083723, 32.702927, 32.802120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308947, 33.029713, 32.752266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108790, -0.076233, -0.991137,
		-0.819225, 0.571629, 0.045954,
		0.563059, 0.816964, -0.124639,
		30.477865, 33.274803, 32.714874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827152, 33.033321, 32.356606>,  <30.083723, 32.702927, 32.802120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827152, 33.033321, 32.356606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187593, 33.206333, 32.344379>,  <30.403858, 33.310139, 32.337044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187593, 33.206333, 32.344379>,  <29.827152, 33.033321, 32.356606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187593, 33.206333, 32.344379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027939, -0.012430, -0.999532,
		-0.432703, 0.901536, 0.000884,
		0.901103, 0.432526, -0.030567,
		30.457924, 33.336090, 32.335209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791939, 33.724567, 31.819281>,  <29.827152, 33.033321, 32.356606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791939, 33.724567, 31.819281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179688, 33.632950, 31.854740>,  <30.412336, 33.577980, 31.876017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179688, 33.632950, 31.854740>,  <29.791939, 33.724567, 31.819281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179688, 33.632950, 31.854740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106470, 0.066633, -0.992081,
		0.221322, 0.971133, 0.088979,
		0.969371, -0.229043, 0.088650,
		30.470499, 33.564236, 31.881334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151619, 34.131325, 31.493048>,  <29.791939, 33.724567, 31.819281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151619, 34.131325, 31.493048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435442, 33.849468, 31.494507>,  <30.605736, 33.680355, 31.495382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435442, 33.849468, 31.494507>,  <30.151619, 34.131325, 31.493048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435442, 33.849468, 31.494507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207914, 0.204410, -0.956550,
		0.673277, 0.679485, 0.291545,
		0.709556, -0.704639, 0.003650,
		30.648310, 33.638077, 31.495602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925085, 34.377373, 31.379507>,  <30.151619, 34.131325, 31.493048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925085, 34.377373, 31.379507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877941, 34.001202, 31.251940>,  <30.849655, 33.775497, 31.175400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877941, 34.001202, 31.251940>,  <30.925085, 34.377373, 31.379507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877941, 34.001202, 31.251940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087699, 0.310043, -0.946669,
		0.989150, -0.139542, 0.045933,
		-0.117859, -0.940426, -0.318916,
		30.842583, 33.719074, 31.156265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407221, 34.328514, 30.896614>,  <30.925085, 34.377373, 31.379507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407221, 34.328514, 30.896614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177677, 34.011833, 30.812801>,  <31.039951, 33.821827, 30.762514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177677, 34.011833, 30.812801>,  <31.407221, 34.328514, 30.896614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177677, 34.011833, 30.812801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079121, 0.201058, -0.976379,
		0.815125, -0.576880, -0.052738,
		-0.573856, -0.791698, -0.209530,
		31.005520, 33.774323, 30.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799829, 33.914768, 30.483187>,  <31.407221, 34.328514, 30.896614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799829, 33.914768, 30.483187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417116, 33.820160, 30.415510>,  <31.187489, 33.763397, 30.374905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417116, 33.820160, 30.415510>,  <31.799829, 33.914768, 30.483187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417116, 33.820160, 30.415510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087670, 0.320136, -0.943307,
		0.277265, -0.917375, -0.285566,
		-0.956785, -0.236511, -0.169189,
		31.130081, 33.749207, 30.364754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877186, 33.613213, 29.950993>,  <31.799829, 33.914768, 30.483187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877186, 33.613213, 29.950993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488226, 33.706497, 29.953882>,  <31.254850, 33.762470, 29.955616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488226, 33.706497, 29.953882>,  <31.877186, 33.613213, 29.950993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488226, 33.706497, 29.953882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016506, 0.099649, -0.994886,
		-0.232742, -0.967306, -0.100748,
		-0.972398, 0.233215, 0.007226,
		31.196507, 33.776463, 29.956051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636723, 33.156654, 29.476837>,  <31.877186, 33.613213, 29.950993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636723, 33.156654, 29.476837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350906, 33.436241, 29.488726>,  <31.179417, 33.603992, 29.495859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350906, 33.436241, 29.488726>,  <31.636723, 33.156654, 29.476837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350906, 33.436241, 29.488726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109975, 0.154177, -0.981904,
		-0.690896, -0.698342, -0.187034,
		-0.714541, 0.698962, 0.029720,
		31.136543, 33.645931, 29.497643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111311, 33.038166, 28.860151>,  <31.636723, 33.156654, 29.476837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111311, 33.038166, 28.860151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067709, 33.422523, 28.961969>,  <31.041548, 33.653137, 29.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067709, 33.422523, 28.961969>,  <31.111311, 33.038166, 28.860151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067709, 33.422523, 28.961969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057051, 0.261695, -0.963463,
		-0.992403, -0.090499, -0.083346,
		-0.109004, 0.960899, 0.254544,
		31.035007, 33.710793, 29.038332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651611, 33.307556, 28.317009>,  <31.111311, 33.038166, 28.860151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651611, 33.307556, 28.317009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819338, 33.616501, 28.507854>,  <30.919973, 33.801868, 28.622362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819338, 33.616501, 28.507854>,  <30.651611, 33.307556, 28.317009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819338, 33.616501, 28.507854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037167, 0.539711, -0.841029,
		-0.907079, 0.334925, 0.255016,
		0.419317, 0.772358, 0.477112,
		30.945133, 33.848209, 28.650988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180592, 33.902920, 28.058155>,  <30.651611, 33.307556, 28.317009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180592, 33.902920, 28.058155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530836, 34.046013, 28.187977>,  <30.740982, 34.131870, 28.265869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530836, 34.046013, 28.187977>,  <30.180592, 33.902920, 28.058155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530836, 34.046013, 28.187977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062816, 0.581886, -0.810841,
		-0.478918, 0.730367, 0.487033,
		0.875609, 0.357733, 0.324555,
		30.793518, 34.153332, 28.285343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147018, 34.706161, 28.160372>,  <30.180592, 33.902920, 28.058155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147018, 34.706161, 28.160372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532097, 34.604866, 28.122238>,  <30.763144, 34.544086, 28.099358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532097, 34.604866, 28.122238>,  <30.147018, 34.706161, 28.160372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532097, 34.604866, 28.122238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108446, 0.683862, -0.721506,
		0.247910, 0.684251, 0.685814,
		0.962694, -0.253243, -0.095332,
		30.820906, 34.528893, 28.093639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444157, 35.327267, 28.239349>,  <30.147018, 34.706161, 28.160372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444157, 35.327267, 28.239349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712427, 35.086388, 28.066122>,  <30.873390, 34.941860, 27.962185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712427, 35.086388, 28.066122>,  <30.444157, 35.327267, 28.239349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712427, 35.086388, 28.066122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085272, 0.642573, -0.761464,
		0.736830, 0.473769, 0.482311,
		0.670678, -0.602198, -0.433068,
		30.913631, 34.905727, 27.936201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959404, 35.717430, 27.909271>,  <30.444157, 35.327267, 28.239349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959404, 35.717430, 27.909271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974113, 35.361080, 27.728170>,  <30.982939, 35.147270, 27.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974113, 35.361080, 27.728170>,  <30.959404, 35.717430, 27.909271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974113, 35.361080, 27.728170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084858, 0.454205, -0.886847,
		0.995714, -0.005805, 0.092302,
		0.036776, -0.890878, -0.452751,
		30.985146, 35.093815, 27.592344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551180, 35.775463, 27.486317>,  <30.959404, 35.717430, 27.909271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551180, 35.775463, 27.486317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374180, 35.451000, 27.333361>,  <31.267981, 35.256325, 27.241587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374180, 35.451000, 27.333361>,  <31.551180, 35.775463, 27.486317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374180, 35.451000, 27.333361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039738, 0.408256, -0.912002,
		0.895888, -0.418756, -0.148420,
		-0.442500, -0.811154, -0.382392,
		31.241430, 35.207653, 27.218643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929636, 35.477566, 26.870554>,  <31.551180, 35.775463, 27.486317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929636, 35.477566, 26.870554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557341, 35.339294, 26.822836>,  <31.333963, 35.256332, 26.794205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557341, 35.339294, 26.822836>,  <31.929636, 35.477566, 26.870554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557341, 35.339294, 26.822836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045505, 0.214209, -0.975727,
		0.362844, -0.913575, -0.183642,
		-0.930738, -0.345680, -0.119296,
		31.278118, 35.235592, 26.787046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001556, 34.947914, 26.334143>,  <31.929636, 35.477566, 26.870554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001556, 34.947914, 26.334143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614935, 35.049866, 26.322794>,  <31.382961, 35.111038, 26.315985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614935, 35.049866, 26.322794>,  <32.001556, 34.947914, 26.334143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614935, 35.049866, 26.322794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086954, 0.221638, -0.971244,
		-0.241266, -0.941229, -0.236388,
		-0.966556, 0.254883, -0.028370,
		31.324968, 35.126331, 26.314283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647942, 34.607311, 25.734827>,  <32.001556, 34.947914, 26.334143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647942, 34.607311, 25.734827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452274, 34.939301, 25.842056>,  <31.334873, 35.138493, 25.906393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452274, 34.939301, 25.842056>,  <31.647942, 34.607311, 25.734827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452274, 34.939301, 25.842056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193690, 0.196306, -0.961222,
		-0.850411, -0.522122, 0.064730,
		-0.489168, 0.829972, 0.268071,
		31.305525, 35.188293, 25.922478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054705, 34.643776, 25.341227>,  <31.647942, 34.607311, 25.734827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054705, 34.643776, 25.341227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122519, 35.023285, 25.447876>,  <31.163208, 35.250992, 25.511866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122519, 35.023285, 25.447876>,  <31.054705, 34.643776, 25.341227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122519, 35.023285, 25.447876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004752, 0.271322, -0.962477,
		-0.985512, 0.161908, 0.050507,
		0.169536, 0.948773, 0.266622,
		31.173380, 35.307919, 25.527863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627562, 35.188248, 24.845490>,  <31.054705, 34.643776, 25.341227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627562, 35.188248, 24.845490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935875, 35.395618, 24.993612>,  <31.120863, 35.520042, 25.082485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935875, 35.395618, 24.993612>,  <30.627562, 35.188248, 24.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935875, 35.395618, 24.993612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141637, 0.427256, -0.892968,
		-0.621154, 0.740734, 0.255893,
		0.770783, 0.518427, 0.370307,
		31.167110, 35.551147, 25.104704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520666, 35.728348, 24.441681>,  <30.627562, 35.188248, 24.845490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520666, 35.728348, 24.441681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888281, 35.730946, 24.599329>,  <31.108849, 35.732506, 24.693918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888281, 35.730946, 24.599329>,  <30.520666, 35.728348, 24.441681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888281, 35.730946, 24.599329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370153, 0.329493, -0.868574,
		-0.135501, 0.944136, 0.300412,
		0.919035, 0.006495, 0.394121,
		31.163992, 35.732895, 24.717566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766125, 36.332893, 24.237671>,  <30.520666, 35.728348, 24.441681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766125, 36.332893, 24.237671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057623, 36.074467, 24.328474>,  <31.232521, 35.919411, 24.382956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057623, 36.074467, 24.328474>,  <30.766125, 36.332893, 24.237671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057623, 36.074467, 24.328474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485816, 0.254137, -0.836300,
		0.482611, 0.719733, 0.499069,
		0.728745, -0.646064, 0.227008,
		31.276247, 35.880646, 24.396576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294901, 36.718643, 24.107199>,  <30.766125, 36.332893, 24.237671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294901, 36.718643, 24.107199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442825, 36.347004, 24.105627>,  <31.531580, 36.124020, 24.104685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442825, 36.347004, 24.105627>,  <31.294901, 36.718643, 24.107199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442825, 36.347004, 24.105627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482635, 0.195715, -0.853674,
		0.793916, 0.313802, 0.520793,
		0.369812, -0.929098, -0.003930,
		31.553768, 36.068275, 24.104448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945799, 36.830513, 23.868452>,  <31.294901, 36.718643, 24.107199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945799, 36.830513, 23.868452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876205, 36.442177, 23.802486>,  <31.834450, 36.209175, 23.762907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876205, 36.442177, 23.802486>,  <31.945799, 36.830513, 23.868452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876205, 36.442177, 23.802486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323673, 0.101784, -0.940678,
		0.930035, -0.217041, 0.296526,
		-0.173984, -0.970841, -0.164913,
		31.824011, 36.150925, 23.753012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563503, 36.449406, 23.871775>,  <31.945799, 36.830513, 23.868452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563503, 36.449406, 23.871775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263668, 36.295753, 23.656158>,  <32.083767, 36.203564, 23.526789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263668, 36.295753, 23.656158>,  <32.563503, 36.449406, 23.871775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263668, 36.295753, 23.656158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414338, 0.362776, -0.834696,
		0.516182, -0.849022, -0.112773,
		-0.749587, -0.384129, -0.539040,
		32.038792, 36.180515, 23.494446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852417, 36.352386, 23.214590>,  <32.563503, 36.449406, 23.871775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852417, 36.352386, 23.214590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469139, 36.286762, 23.120832>,  <32.239170, 36.247387, 23.064577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469139, 36.286762, 23.120832>,  <32.852417, 36.352386, 23.214590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469139, 36.286762, 23.120832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140235, 0.444775, -0.884596,
		0.249380, -0.880488, -0.403175,
		-0.958198, -0.164061, -0.234393,
		32.181679, 36.237545, 23.050514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828197, 36.027702, 22.602661>,  <32.852417, 36.352386, 23.214590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828197, 36.027702, 22.602661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471466, 36.208038, 22.587744>,  <32.257427, 36.316242, 22.578793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471466, 36.208038, 22.587744>,  <32.828197, 36.027702, 22.602661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471466, 36.208038, 22.587744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236459, 0.394283, -0.888047,
		-0.385664, -0.800801, -0.458237,
		-0.891824, 0.450842, -0.037296,
		32.203918, 36.343292, 22.576555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688511, 36.115482, 21.982550>,  <32.828197, 36.027702, 22.602661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688511, 36.115482, 21.982550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426785, 36.378300, 22.132303>,  <32.269749, 36.535988, 22.222157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426785, 36.378300, 22.132303>,  <32.688511, 36.115482, 21.982550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426785, 36.378300, 22.132303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122365, 0.580542, -0.804983,
		-0.746253, -0.480904, -0.460259,
		-0.654319, 0.657041, 0.374386,
		32.230488, 36.575413, 22.244619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109600, 36.211601, 21.403355>,  <32.688511, 36.115482, 21.982550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109600, 36.211601, 21.403355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117817, 36.524590, 21.652294>,  <32.122749, 36.712383, 21.801657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117817, 36.524590, 21.652294>,  <32.109600, 36.211601, 21.403355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117817, 36.524590, 21.652294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114224, 0.616565, -0.778974,
		-0.993243, 0.087091, -0.076711,
		0.020544, 0.782472, 0.622347,
		32.123981, 36.759331, 21.838999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447531, 36.684025, 21.283123>,  <32.109600, 36.211601, 21.403355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447531, 36.684025, 21.283123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636564, 36.958584, 21.504221>,  <31.749985, 37.123318, 21.636879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636564, 36.958584, 21.504221>,  <31.447531, 36.684025, 21.283123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636564, 36.958584, 21.504221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085327, 0.659892, -0.746500,
		-0.877145, 0.305620, 0.370423,
		0.472584, 0.686396, 0.552743,
		31.778339, 37.164501, 21.670044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962492, 37.317886, 21.444117>,  <31.447531, 36.684025, 21.283123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962492, 37.317886, 21.444117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350847, 37.413704, 21.444271>,  <31.583860, 37.471195, 21.444363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350847, 37.413704, 21.444271>,  <30.962492, 37.317886, 21.444117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350847, 37.413704, 21.444271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172605, 0.700701, -0.692261,
		-0.166094, 0.672041, 0.721647,
		0.970886, 0.239540, 0.000385,
		31.642113, 37.485565, 21.444386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022655, 38.094326, 21.502628>,  <30.962492, 37.317886, 21.444117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022655, 38.094326, 21.502628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358700, 37.941494, 21.348629>,  <31.560326, 37.849792, 21.256229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358700, 37.941494, 21.348629>,  <31.022655, 38.094326, 21.502628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358700, 37.941494, 21.348629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041644, 0.662260, -0.748116,
		0.540814, 0.644533, 0.540460,
		0.840111, -0.382085, -0.385000,
		31.610733, 37.826870, 21.233130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167667, 38.746243, 21.947168>,  <31.022655, 38.094326, 21.502628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167667, 38.746243, 21.947168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223846, 39.137012, 22.011543>,  <31.257553, 39.371475, 22.050169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223846, 39.137012, 22.011543>,  <31.167667, 38.746243, 21.947168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223846, 39.137012, 22.011543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372583, 0.202751, -0.905579,
		-0.917309, 0.067224, 0.392460,
		0.140448, 0.976920, 0.160939,
		31.265982, 39.430088, 22.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518190, 39.100315, 21.792727>,  <31.167667, 38.746243, 21.947168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518190, 39.100315, 21.792727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760292, 39.418640, 21.785196>,  <30.905552, 39.609634, 21.780678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760292, 39.418640, 21.785196>,  <30.518190, 39.100315, 21.792727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760292, 39.418640, 21.785196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346995, 0.242477, -0.905980,
		-0.716424, 0.554879, 0.422902,
		0.605253, 0.795811, -0.018824,
		30.941868, 39.657383, 21.779549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127708, 39.749107, 21.601170>,  <30.518190, 39.100315, 21.792727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127708, 39.749107, 21.601170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504025, 39.817852, 21.484293>,  <30.729815, 39.859100, 21.414167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504025, 39.817852, 21.484293>,  <30.127708, 39.749107, 21.601170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504025, 39.817852, 21.484293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296772, 0.001000, -0.954948,
		-0.163826, 0.985121, 0.051944,
		0.940791, 0.171861, -0.292192,
		30.786263, 39.869411, 21.396635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038071, 39.731880, 20.877296>,  <30.127708, 39.749107, 21.601170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038071, 39.731880, 20.877296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355885, 39.967693, 20.935499>,  <30.546574, 40.109180, 20.970421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355885, 39.967693, 20.935499>,  <30.038071, 39.731880, 20.877296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355885, 39.967693, 20.935499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311441, -0.189933, -0.931091,
		-0.521268, 0.785100, -0.334512,
		0.794534, 0.589528, 0.145507,
		30.594244, 40.144550, 20.979151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215429, 40.281143, 20.255009>,  <30.038071, 39.731880, 20.877296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215429, 40.281143, 20.255009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513472, 40.080639, 20.430990>,  <30.692297, 39.960339, 20.536579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513472, 40.080639, 20.430990>,  <30.215429, 40.281143, 20.255009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513472, 40.080639, 20.430990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153482, -0.513078, -0.844508,
		0.649045, 0.696773, -0.305364,
		0.745106, -0.501256, 0.439953,
		30.737003, 39.930264, 20.562977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881969, 40.187874, 19.801157>,  <30.215429, 40.281143, 20.255009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881969, 40.187874, 19.801157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838726, 39.898178, 20.073565>,  <30.812780, 39.724361, 20.237009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838726, 39.898178, 20.073565>,  <30.881969, 40.187874, 19.801157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838726, 39.898178, 20.073565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086687, -0.689294, -0.719277,
		0.990353, -0.018724, 0.137300,
		-0.108107, -0.724240, 0.681021,
		30.806293, 39.680904, 20.277870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411263, 39.651527, 19.772270>,  <30.881969, 40.187874, 19.801157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411263, 39.651527, 19.772270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063669, 39.494537, 19.892822>,  <30.855112, 39.400345, 19.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063669, 39.494537, 19.892822>,  <31.411263, 39.651527, 19.772270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063669, 39.494537, 19.892822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114555, -0.752056, -0.649068,
		0.481397, -0.529505, 0.698485,
		-0.868984, -0.392475, 0.301380,
		30.802975, 39.376797, 19.983236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650152, 39.732719, 20.474573>,  <31.411263, 39.651527, 19.772270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650152, 39.732719, 20.474573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403049, 39.951679, 20.700399>,  <31.254787, 40.083054, 20.835896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403049, 39.951679, 20.700399>,  <31.650152, 39.732719, 20.474573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403049, 39.951679, 20.700399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457075, -0.334255, 0.824231,
		0.639891, 0.767221, -0.043715,
		-0.617756, 0.547399, 0.564564,
		31.217722, 40.115898, 20.869768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029537, 40.113773, 21.094534>,  <31.650152, 39.732719, 20.474573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029537, 40.113773, 21.094534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647444, 40.069214, 21.204165>,  <31.418188, 40.042477, 21.269943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647444, 40.069214, 21.204165>,  <32.029537, 40.113773, 21.094534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647444, 40.069214, 21.204165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288424, -0.144362, 0.946558,
		-0.065882, 0.983234, 0.170031,
		-0.955234, -0.111402, 0.274077,
		31.360874, 40.035793, 21.286388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863020, 40.619995, 21.683283>,  <32.029537, 40.113773, 21.094534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863020, 40.619995, 21.683283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591682, 40.328030, 21.716940>,  <31.428881, 40.152851, 21.737135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591682, 40.328030, 21.716940>,  <31.863020, 40.619995, 21.683283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591682, 40.328030, 21.716940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269012, -0.140160, 0.952884,
		-0.683727, 0.669018, 0.291431,
		-0.678344, -0.729911, 0.084143,
		31.388180, 40.109055, 21.742184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344484, 40.690762, 22.356878>,  <31.863020, 40.619995, 21.683283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344484, 40.690762, 22.356878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305784, 40.306286, 22.253527>,  <31.282564, 40.075600, 22.191515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305784, 40.306286, 22.253527>,  <31.344484, 40.690762, 22.356878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305784, 40.306286, 22.253527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171353, -0.271807, 0.946974,
		-0.980447, 0.047348, 0.191000,
		-0.096753, -0.961186, -0.258379,
		31.276758, 40.017929, 22.176012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749496, 40.445282, 22.699265>,  <31.344484, 40.690762, 22.356878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749496, 40.445282, 22.699265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998726, 40.145058, 22.611227>,  <31.148264, 39.964924, 22.558405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998726, 40.145058, 22.611227>,  <30.749496, 40.445282, 22.699265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998726, 40.145058, 22.611227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180650, -0.135693, 0.974142,
		-0.761018, -0.646720, 0.051042,
		0.623071, -0.750560, -0.220095,
		31.185648, 39.919891, 22.545198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420580, 39.842808, 22.941427>,  <30.749496, 40.445282, 22.699265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420580, 39.842808, 22.941427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810858, 39.758255, 22.918324>,  <31.045025, 39.707523, 22.904461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810858, 39.758255, 22.918324>,  <30.420580, 39.842808, 22.941427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810858, 39.758255, 22.918324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003816, -0.247161, 0.968967,
		-0.219092, -0.945638, -0.240348,
		0.975697, -0.211375, -0.057760,
		31.103567, 39.694839, 22.900995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497116, 39.198696, 23.141184>,  <30.420580, 39.842808, 22.941427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497116, 39.198696, 23.141184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859201, 39.359192, 23.197178>,  <31.076452, 39.455490, 23.230774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859201, 39.359192, 23.197178>,  <30.497116, 39.198696, 23.141184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859201, 39.359192, 23.197178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083480, -0.490893, 0.867211,
		0.416673, -0.773327, -0.477859,
		0.905216, 0.401235, 0.139984,
		31.130766, 39.479561, 23.239174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845240, 38.706741, 23.457016>,  <30.497116, 39.198696, 23.141184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845240, 38.706741, 23.457016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088438, 39.013515, 23.539129>,  <31.234358, 39.197582, 23.588398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088438, 39.013515, 23.539129>,  <30.845240, 38.706741, 23.457016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088438, 39.013515, 23.539129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197661, -0.396645, 0.896439,
		0.768940, -0.504456, -0.392754,
		0.607998, 0.766940, 0.205285,
		31.270838, 39.243599, 23.600716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408545, 38.420719, 23.704180>,  <30.845240, 38.706741, 23.457016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408545, 38.420719, 23.704180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451960, 38.802616, 23.814945>,  <31.478008, 39.031754, 23.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451960, 38.802616, 23.814945>,  <31.408545, 38.420719, 23.704180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451960, 38.802616, 23.814945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274432, -0.296510, 0.914751,
		0.955462, -0.023291, -0.294195,
		0.108537, 0.954746, 0.276912,
		31.484520, 39.089039, 23.898020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051254, 38.450359, 23.985754>,  <31.408545, 38.420719, 23.704180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051254, 38.450359, 23.985754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842783, 38.749027, 24.151094>,  <31.717701, 38.928226, 24.250298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842783, 38.749027, 24.151094>,  <32.051254, 38.450359, 23.985754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842783, 38.749027, 24.151094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424931, -0.192999, 0.884412,
		0.740141, 0.636580, -0.216697,
		-0.521177, 0.746671, 0.413349,
		31.686430, 38.973030, 24.275099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477821, 38.801716, 24.423136>,  <32.051254, 38.450359, 23.985754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477821, 38.801716, 24.423136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116528, 38.911201, 24.555346>,  <31.899752, 38.976894, 24.634672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116528, 38.911201, 24.555346>,  <32.477821, 38.801716, 24.423136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116528, 38.911201, 24.555346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363845, 0.080031, 0.928015,
		0.227560, 0.958475, -0.171877,
		-0.903235, 0.273716, 0.330524,
		31.845556, 38.993317, 24.654503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689495, 39.051121, 25.034515>,  <32.477821, 38.801716, 24.423136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689495, 39.051121, 25.034515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294266, 39.015503, 25.084768>,  <32.057129, 38.994133, 25.114920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294266, 39.015503, 25.084768>,  <32.689495, 39.051121, 25.034515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294266, 39.015503, 25.084768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144468, -0.253609, 0.956458,
		-0.053305, 0.963200, 0.263448,
		-0.988073, -0.089043, 0.125633,
		31.997845, 38.988789, 25.122458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615131, 39.496864, 25.541225>,  <32.689495, 39.051121, 25.034515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615131, 39.496864, 25.541225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297215, 39.254120, 25.543428>,  <32.106464, 39.108475, 25.544750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297215, 39.254120, 25.543428>,  <32.615131, 39.496864, 25.541225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297215, 39.254120, 25.543428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122073, -0.150977, 0.980971,
		-0.594479, 0.780339, 0.194076,
		-0.794791, -0.606858, 0.005505,
		32.058777, 39.072063, 25.545080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207352, 39.636372, 26.140076>,  <32.615131, 39.496864, 25.541225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207352, 39.636372, 26.140076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098778, 39.261200, 26.053711>,  <32.033634, 39.036098, 26.001892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098778, 39.261200, 26.053711>,  <32.207352, 39.636372, 26.140076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098778, 39.261200, 26.053711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108046, -0.252611, 0.961517,
		-0.956374, 0.237659, 0.169906,
		-0.271433, -0.937927, -0.215912,
		32.017349, 38.979820, 25.988937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873329, 39.481712, 26.693909>,  <32.207352, 39.636372, 26.140076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873329, 39.481712, 26.693909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940775, 39.116886, 26.544399>,  <31.981243, 38.897991, 26.454693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940775, 39.116886, 26.544399>,  <31.873329, 39.481712, 26.693909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940775, 39.116886, 26.544399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022109, -0.382609, 0.923646,
		-0.985434, -0.147478, -0.084679,
		0.168616, -0.912064, -0.373775,
		31.991360, 38.843266, 26.432266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507616, 39.108624, 27.101078>,  <31.873329, 39.481712, 26.693909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507616, 39.108624, 27.101078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750648, 38.847881, 26.919558>,  <31.896467, 38.691437, 26.810646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750648, 38.847881, 26.919558>,  <31.507616, 39.108624, 27.101078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750648, 38.847881, 26.919558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021344, -0.557743, 0.829739,
		-0.793973, -0.513817, -0.324960,
		0.607578, -0.651854, -0.453800,
		31.932922, 38.652325, 26.783417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350224, 38.362083, 27.309542>,  <31.507616, 39.108624, 27.101078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350224, 38.362083, 27.309542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735237, 38.335144, 27.204477>,  <31.966246, 38.318981, 27.141439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735237, 38.335144, 27.204477>,  <31.350224, 38.362083, 27.309542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735237, 38.335144, 27.204477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242634, -0.218540, 0.945182,
		-0.121059, -0.973501, -0.194011,
		0.962535, -0.067349, -0.262661,
		32.023998, 38.314938, 27.125679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512346, 37.773502, 27.665512>,  <31.350224, 38.362083, 27.309542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512346, 37.773502, 27.665512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852282, 37.957226, 27.562124>,  <32.056244, 38.067459, 27.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852282, 37.957226, 27.562124>,  <31.512346, 37.773502, 27.665512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852282, 37.957226, 27.562124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362580, -0.153593, 0.919209,
		0.382503, -0.874896, -0.297066,
		0.849840, 0.459310, -0.258470,
		32.107235, 38.095020, 27.484583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089897, 37.311752, 27.863743>,  <31.512346, 37.773502, 27.665512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089897, 37.311752, 27.863743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233940, 37.684761, 27.852959>,  <32.320366, 37.908566, 27.846487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233940, 37.684761, 27.852959>,  <32.089897, 37.311752, 27.863743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233940, 37.684761, 27.852959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335000, -0.102284, 0.936650,
		0.870689, -0.346325, -0.349228,
		0.360105, 0.932522, -0.026961,
		32.341972, 37.964520, 27.844870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793373, 37.333298, 28.139471>,  <32.089897, 37.311752, 27.863743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793373, 37.333298, 28.139471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658844, 37.709324, 28.161983>,  <32.578125, 37.934940, 28.175491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658844, 37.709324, 28.161983>,  <32.793373, 37.333298, 28.139471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658844, 37.709324, 28.161983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334466, 0.063365, 0.940275,
		0.880351, 0.335062, -0.335731,
		-0.336324, 0.940063, 0.056283,
		32.557945, 37.991344, 28.178869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127602, 37.626965, 28.715054>,  <32.793373, 37.333298, 28.139471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127602, 37.626965, 28.715054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839222, 37.902649, 28.686146>,  <32.666195, 38.068058, 28.668800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839222, 37.902649, 28.686146>,  <33.127602, 37.626965, 28.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839222, 37.902649, 28.686146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053801, 0.159640, 0.985708,
		0.690895, 0.706758, -0.152173,
		-0.720950, 0.689208, -0.072270,
		32.622936, 38.109413, 28.664465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407356, 38.197239, 28.985874>,  <33.127602, 37.626965, 28.715054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407356, 38.197239, 28.985874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007980, 38.187870, 29.006187>,  <32.768356, 38.182247, 29.018375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007980, 38.187870, 29.006187>,  <33.407356, 38.197239, 28.985874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007980, 38.187870, 29.006187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047357, 0.128835, 0.990535,
		-0.029745, 0.991389, -0.127524,
		-0.998435, -0.023425, 0.050781,
		32.708450, 38.180843, 29.021421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274899, 38.669640, 29.497417>,  <33.407356, 38.197239, 28.985874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274899, 38.669640, 29.497417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945709, 38.443302, 29.477264>,  <32.748196, 38.307499, 29.465172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945709, 38.443302, 29.477264>,  <33.274899, 38.669640, 29.497417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945709, 38.443302, 29.477264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022118, -0.120542, 0.992462,
		-0.567652, 0.815653, 0.111718,
		-0.822972, -0.565844, -0.050385,
		32.698818, 38.273548, 29.462149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988361, 38.776165, 30.056534>,  <33.274899, 38.669640, 29.497417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988361, 38.776165, 30.056534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709122, 38.507690, 29.956800>,  <32.541576, 38.346607, 29.896959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709122, 38.507690, 29.956800>,  <32.988361, 38.776165, 30.056534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709122, 38.507690, 29.956800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097947, -0.255440, 0.961851,
		-0.709268, 0.695891, 0.112582,
		-0.698101, -0.671183, -0.249336,
		32.499691, 38.306335, 29.882000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398247, 38.935780, 30.499491>,  <32.988361, 38.776165, 30.056534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398247, 38.935780, 30.499491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358253, 38.557068, 30.377102>,  <32.334255, 38.329842, 30.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358253, 38.557068, 30.377102>,  <32.398247, 38.935780, 30.499491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358253, 38.557068, 30.377102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180367, -0.285170, 0.941353,
		-0.978504, 0.149311, -0.142253,
		-0.099988, -0.946776, -0.305971,
		32.328259, 38.273037, 30.285311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741804, 38.778481, 30.634266>,  <32.398247, 38.935780, 30.499491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741804, 38.778481, 30.634266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969677, 38.450863, 30.607063>,  <32.106400, 38.254292, 30.590742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969677, 38.450863, 30.607063>,  <31.741804, 38.778481, 30.634266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969677, 38.450863, 30.607063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319580, -0.296998, 0.899812,
		-0.757185, -0.490875, -0.430945,
		0.569684, -0.819045, -0.068008,
		32.140583, 38.205151, 30.586660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293205, 38.166393, 30.811893>,  <31.741804, 38.778481, 30.634266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293205, 38.166393, 30.811893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660196, 38.026131, 30.887022>,  <31.880390, 37.941975, 30.932100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660196, 38.026131, 30.887022>,  <31.293205, 38.166393, 30.811893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660196, 38.026131, 30.887022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327708, -0.398630, 0.856564,
		-0.225483, -0.847430, -0.480645,
		0.917478, -0.350652, 0.187825,
		31.935440, 37.920933, 30.943369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200932, 37.464828, 31.052603>,  <31.293205, 38.166393, 30.811893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200932, 37.464828, 31.052603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581635, 37.531544, 31.155628>,  <31.810057, 37.571571, 31.217443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581635, 37.531544, 31.155628>,  <31.200932, 37.464828, 31.052603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581635, 37.531544, 31.155628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146159, -0.491637, 0.858446,
		0.269803, -0.854679, -0.443543,
		0.951758, 0.166784, 0.257565,
		31.867163, 37.581577, 31.232897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642271, 36.786659, 31.136871>,  <31.200932, 37.464828, 31.052603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642271, 36.786659, 31.136871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803469, 37.082283, 31.352791>,  <31.900187, 37.259659, 31.482344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803469, 37.082283, 31.352791>,  <31.642271, 36.786659, 31.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803469, 37.082283, 31.352791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113058, -0.545096, 0.830715,
		0.908193, -0.395802, -0.136114,
		0.402994, 0.739061, 0.539801,
		31.924366, 37.304001, 31.514730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963184, 36.438911, 31.761414>,  <31.642271, 36.786659, 31.136871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963184, 36.438911, 31.761414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987867, 36.825043, 31.862875>,  <32.002678, 37.056721, 31.923752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987867, 36.825043, 31.862875>,  <31.963184, 36.438911, 31.761414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987867, 36.825043, 31.862875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000940, -0.254080, 0.967183,
		0.998094, -0.059923, -0.014771,
		0.061710, 0.965325, 0.253652,
		32.006382, 37.114639, 31.938971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460590, 36.562080, 32.228500>,  <31.963184, 36.438911, 31.761414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460590, 36.562080, 32.228500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218811, 36.874878, 32.289333>,  <32.073746, 37.062557, 32.325832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218811, 36.874878, 32.289333>,  <32.460590, 36.562080, 32.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218811, 36.874878, 32.289333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022420, -0.207531, 0.977972,
		0.796331, 0.587721, 0.142974,
		-0.604445, 0.781995, 0.152086,
		32.037476, 37.109478, 32.334961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781837, 36.950443, 32.760849>,  <32.460590, 36.562080, 32.228500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781837, 36.950443, 32.760849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396507, 37.057671, 32.756001>,  <32.165310, 37.122005, 32.753090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396507, 37.057671, 32.756001>,  <32.781837, 36.950443, 32.760849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396507, 37.057671, 32.756001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072509, -0.216541, 0.973577,
		0.258360, 0.938749, 0.228036,
		-0.963324, 0.268068, -0.012122,
		32.107510, 37.138092, 32.752365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631561, 37.420673, 33.404617>,  <32.781837, 36.950443, 32.760849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631561, 37.420673, 33.404617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279228, 37.286182, 33.271297>,  <32.067829, 37.205486, 33.191303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279228, 37.286182, 33.271297>,  <32.631561, 37.420673, 33.404617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279228, 37.286182, 33.271297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296117, -0.158039, 0.941987,
		-0.369401, 0.928425, 0.039641,
		-0.880828, -0.336232, -0.333302,
		32.014980, 37.185314, 33.171307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159317, 37.631874, 34.007484>,  <32.631561, 37.420673, 33.404617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159317, 37.631874, 34.007484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953789, 37.371029, 33.784512>,  <31.830473, 37.214520, 33.650726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953789, 37.371029, 33.784512>,  <32.159317, 37.631874, 34.007484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953789, 37.371029, 33.784512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348769, -0.434870, 0.830210,
		-0.783805, 0.620995, -0.003992,
		-0.513820, -0.652115, -0.557437,
		31.799643, 37.175396, 33.617279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493326, 37.583855, 34.254028>,  <32.159317, 37.631874, 34.007484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493326, 37.583855, 34.254028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470278, 37.239876, 34.051182>,  <31.456448, 37.033489, 33.929474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470278, 37.239876, 34.051182>,  <31.493326, 37.583855, 34.254028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470278, 37.239876, 34.051182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449655, -0.431164, 0.782246,
		-0.891342, 0.273103, -0.361836,
		-0.057623, -0.859949, -0.507116,
		31.452991, 36.981892, 33.899048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851313, 37.330585, 34.192604>,  <31.493326, 37.583855, 34.254028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851313, 37.330585, 34.192604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090439, 37.010075, 34.183071>,  <31.233913, 36.817768, 34.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090439, 37.010075, 34.183071>,  <30.851313, 37.330585, 34.192604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090439, 37.010075, 34.183071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506730, -0.400756, 0.763295,
		-0.621163, -0.444234, -0.645611,
		0.597814, -0.801281, -0.023828,
		31.269783, 36.769691, 34.175922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448160, 36.854393, 34.576118>,  <30.851313, 37.330585, 34.192604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448160, 36.854393, 34.576118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805708, 36.676048, 34.557335>,  <31.020237, 36.569042, 34.546066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805708, 36.676048, 34.557335>,  <30.448160, 36.854393, 34.576118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805708, 36.676048, 34.557335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123124, -0.344845, 0.930550,
		-0.431091, -0.826007, -0.363142,
		0.893869, -0.445864, -0.046958,
		31.073868, 36.542290, 34.543247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278412, 36.157841, 34.834091>,  <30.448160, 36.854393, 34.576118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278412, 36.157841, 34.834091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674601, 36.205471, 34.861752>,  <30.912313, 36.234051, 34.878349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674601, 36.205471, 34.861752>,  <30.278412, 36.157841, 34.834091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674601, 36.205471, 34.861752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038499, -0.242696, 0.969338,
		0.132211, -0.962766, -0.235799,
		0.990474, 0.119079, 0.069153,
		30.971743, 36.241196, 34.882496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547426, 35.543629, 35.166664>,  <30.278412, 36.157841, 34.834091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547426, 35.543629, 35.166664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802330, 35.848301, 35.213554>,  <30.955273, 36.031105, 35.241688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802330, 35.848301, 35.213554>,  <30.547426, 35.543629, 35.166664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802330, 35.848301, 35.213554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039108, -0.183878, 0.982171,
		0.769658, -0.621312, -0.146966,
		0.637258, 0.761683, 0.117225,
		30.993507, 36.076805, 35.248722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166069, 35.233913, 35.417843>,  <30.547426, 35.543629, 35.166664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166069, 35.233913, 35.417843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192423, 35.626972, 35.487190>,  <31.208235, 35.862808, 35.528797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192423, 35.626972, 35.487190>,  <31.166069, 35.233913, 35.417843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192423, 35.626972, 35.487190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343939, -0.185461, 0.920495,
		0.936678, -0.001019, -0.350191,
		0.065885, 0.982651, 0.173367,
		31.212189, 35.921768, 35.539200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785212, 35.391884, 35.760933>,  <31.166069, 35.233913, 35.417843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785212, 35.391884, 35.760933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573551, 35.721302, 35.842686>,  <31.446554, 35.918953, 35.891739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573551, 35.721302, 35.842686>,  <31.785212, 35.391884, 35.760933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573551, 35.721302, 35.842686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310691, -0.036092, 0.949826,
		0.789600, 0.566103, -0.236769,
		-0.529153, 0.823544, 0.204381,
		31.414804, 35.968365, 35.903999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461411, 35.708828, 35.441814>,  <31.785212, 35.391884, 35.760933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461411, 35.708828, 35.441814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762482, 35.688519, 35.704384>,  <32.943123, 35.676334, 35.861927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762482, 35.688519, 35.704384>,  <32.461411, 35.708828, 35.441814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762482, 35.688519, 35.704384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619486, 0.392250, -0.679983,
		-0.222961, 0.918456, 0.326690,
		0.752679, -0.050770, 0.656428,
		32.988285, 35.673286, 35.901314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700935, 36.370953, 35.569412>,  <32.461411, 35.708828, 35.441814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700935, 36.370953, 35.569412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998528, 36.128090, 35.681026>,  <33.177082, 35.982372, 35.747993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998528, 36.128090, 35.681026>,  <32.700935, 36.370953, 35.569412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998528, 36.128090, 35.681026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625634, 0.486269, -0.610021,
		0.234691, 0.628415, 0.741630,
		0.743978, -0.607155, 0.279035,
		33.221722, 35.945942, 35.764736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214977, 36.789341, 35.647022>,  <32.700935, 36.370953, 35.569412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214977, 36.789341, 35.647022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361706, 36.425808, 35.567554>,  <33.449741, 36.207687, 35.519875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361706, 36.425808, 35.567554>,  <33.214977, 36.789341, 35.647022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361706, 36.425808, 35.567554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519749, 0.377329, -0.766475,
		0.771559, 0.177903, 0.610776,
		0.366821, -0.908831, -0.198667,
		33.471752, 36.153160, 35.507954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825539, 36.894672, 35.627651>,  <33.214977, 36.789341, 35.647022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825539, 36.894672, 35.627651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815151, 36.554325, 35.417759>,  <33.808918, 36.350117, 35.291824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815151, 36.554325, 35.417759>,  <33.825539, 36.894672, 35.627651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815151, 36.554325, 35.417759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489722, 0.446778, -0.748706,
		0.871492, -0.276417, 0.405088,
		-0.025971, -0.850872, -0.524731,
		33.807362, 36.299065, 35.260338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520702, 36.665100, 35.240532>,  <33.825539, 36.894672, 35.627651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520702, 36.665100, 35.240532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277924, 36.445194, 35.010967>,  <34.132256, 36.313251, 34.873230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277924, 36.445194, 35.010967>,  <34.520702, 36.665100, 35.240532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277924, 36.445194, 35.010967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631324, 0.105114, -0.768363,
		0.482742, -0.828682, 0.283278,
		-0.606952, -0.549761, -0.573910,
		34.095837, 36.280266, 34.838795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953976, 36.459084, 34.838436>,  <34.520702, 36.665100, 35.240532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953976, 36.459084, 34.838436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613575, 36.355808, 34.655514>,  <34.409336, 36.293842, 34.545761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613575, 36.355808, 34.655514>,  <34.953976, 36.459084, 34.838436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613575, 36.355808, 34.655514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460678, 0.051059, -0.886098,
		0.252131, -0.964744, 0.075491,
		-0.851003, -0.258189, -0.457309,
		34.358273, 36.278351, 34.518322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157658, 36.001915, 34.352413>,  <34.953976, 36.459084, 34.838436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157658, 36.001915, 34.352413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789799, 36.091221, 34.223167>,  <34.569084, 36.144806, 34.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789799, 36.091221, 34.223167>,  <35.157658, 36.001915, 34.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789799, 36.091221, 34.223167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328611, -0.013148, -0.944374,
		-0.215099, -0.974668, -0.061277,
		-0.919645, 0.223270, -0.323114,
		34.513905, 36.158203, 34.126232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028976, 35.590118, 33.769497>,  <35.157658, 36.001915, 34.352413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028976, 35.590118, 33.769497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766777, 35.885403, 33.705784>,  <34.609459, 36.062572, 33.667557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766777, 35.885403, 33.705784>,  <35.028976, 35.590118, 33.769497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766777, 35.885403, 33.705784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264208, 0.026581, -0.964100,
		-0.707472, -0.674049, -0.212464,
		-0.655498, 0.738208, -0.159284,
		34.570129, 36.106865, 33.657997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679546, 35.388077, 33.164604>,  <35.028976, 35.590118, 33.769497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679546, 35.388077, 33.164604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652294, 35.782875, 33.222836>,  <34.635944, 36.019756, 33.257774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652294, 35.782875, 33.222836>,  <34.679546, 35.388077, 33.164604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652294, 35.782875, 33.222836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054777, 0.149402, -0.987258,
		-0.996172, -0.059283, -0.064243,
		-0.068126, 0.986998, 0.145583,
		34.631855, 36.078976, 33.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116676, 35.566261, 32.728466>,  <34.679546, 35.388077, 33.164604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116676, 35.566261, 32.728466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331264, 35.896545, 32.798214>,  <34.460018, 36.094715, 32.840061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331264, 35.896545, 32.798214>,  <34.116676, 35.566261, 32.728466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331264, 35.896545, 32.798214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156872, 0.105448, -0.981973,
		-0.829208, 0.554158, -0.072960,
		0.536475, 0.825705, 0.174370,
		34.492207, 36.144257, 32.850525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882923, 35.977013, 32.190804>,  <34.116676, 35.566261, 32.728466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882923, 35.977013, 32.190804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219231, 36.168987, 32.291012>,  <34.421017, 36.284172, 32.351135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219231, 36.168987, 32.291012>,  <33.882923, 35.977013, 32.190804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219231, 36.168987, 32.291012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125337, 0.277614, -0.952482,
		-0.526681, 0.832219, 0.173256,
		0.840772, 0.479939, 0.250522,
		34.471462, 36.312969, 32.366169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857021, 36.689083, 31.968424>,  <33.882923, 35.977013, 32.190804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857021, 36.689083, 31.968424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246437, 36.622547, 32.031090>,  <34.480087, 36.582626, 32.068687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246437, 36.622547, 32.031090>,  <33.857021, 36.689083, 31.968424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246437, 36.622547, 32.031090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220831, 0.508756, -0.832106,
		0.058709, 0.844688, 0.532030,
		0.973544, -0.166341, 0.156665,
		34.538502, 36.572643, 32.078091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254951, 37.287540, 31.691273>,  <33.857021, 36.689083, 31.968424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254951, 37.287540, 31.691273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574394, 37.049541, 31.727531>,  <34.766060, 36.906742, 31.749287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574394, 37.049541, 31.727531>,  <34.254951, 37.287540, 31.691273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574394, 37.049541, 31.727531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443369, 0.479739, -0.757148,
		0.407010, 0.644852, 0.646923,
		0.798603, -0.594993, 0.090649,
		34.813976, 36.871044, 31.754726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926678, 37.730610, 31.747355>,  <34.254951, 37.287540, 31.691273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926678, 37.730610, 31.747355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008801, 37.383297, 31.566715>,  <35.058075, 37.174908, 31.458332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008801, 37.383297, 31.566715>,  <34.926678, 37.730610, 31.747355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008801, 37.383297, 31.566715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517334, 0.487970, -0.703029,
		0.830792, -0.089292, 0.549373,
		0.205303, -0.868281, -0.451596,
		35.070393, 37.122814, 31.431236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559757, 37.835327, 31.508131>,  <34.926678, 37.730610, 31.747355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559757, 37.835327, 31.508131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388149, 37.525646, 31.321991>,  <35.285183, 37.339836, 31.210306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388149, 37.525646, 31.321991>,  <35.559757, 37.835327, 31.508131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388149, 37.525646, 31.321991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311203, 0.356950, -0.880761,
		0.847993, -0.522685, 0.087794,
		-0.429022, -0.774201, -0.465352,
		35.259441, 37.293385, 31.182384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954548, 37.817745, 30.922192>,  <35.559757, 37.835327, 31.508131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954548, 37.817745, 30.922192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676125, 37.551472, 30.814587>,  <35.509071, 37.391708, 30.750025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676125, 37.551472, 30.814587>,  <35.954548, 37.817745, 30.922192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676125, 37.551472, 30.814587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236545, 0.141141, -0.961315,
		0.677901, -0.732764, 0.059222,
		-0.696058, -0.665684, -0.269011,
		35.467308, 37.351765, 30.733883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164310, 37.414337, 30.291189>,  <35.954548, 37.817745, 30.922192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164310, 37.414337, 30.291189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764847, 37.393879, 30.288033>,  <35.525169, 37.381603, 30.286139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764847, 37.393879, 30.288033>,  <36.164310, 37.414337, 30.291189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764847, 37.393879, 30.288033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006636, 0.277776, -0.960623,
		0.051318, -0.959284, -0.277744,
		-0.998660, -0.051141, -0.007890,
		35.465248, 37.378536, 30.285666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034813, 37.040230, 29.695257>,  <36.164310, 37.414337, 30.291189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034813, 37.040230, 29.695257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683147, 37.215405, 29.770388>,  <35.472149, 37.320507, 29.815466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683147, 37.215405, 29.770388>,  <36.034813, 37.040230, 29.695257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683147, 37.215405, 29.770388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103897, 0.208516, -0.972485,
		-0.465048, -0.874492, -0.137820,
		-0.879168, 0.437933, 0.187827,
		35.419395, 37.346783, 29.826736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598125, 36.660343, 29.339428>,  <36.034813, 37.040230, 29.695257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598125, 36.660343, 29.339428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395344, 37.002338, 29.383240>,  <35.273674, 37.207535, 29.409527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395344, 37.002338, 29.383240>,  <35.598125, 36.660343, 29.339428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395344, 37.002338, 29.383240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175930, 0.021760, -0.984162,
		-0.843828, -0.518195, 0.139386,
		-0.506955, 0.854986, 0.109528,
		35.243256, 37.258835, 29.416098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995911, 36.646263, 28.841242>,  <35.598125, 36.660343, 29.339428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995911, 36.646263, 28.841242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011391, 37.035095, 28.933807>,  <35.020679, 37.268394, 28.989347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011391, 37.035095, 28.933807>,  <34.995911, 36.646263, 28.841242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011391, 37.035095, 28.933807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360162, 0.229592, -0.904196,
		-0.932087, -0.048355, 0.358993,
		0.038699, 0.972085, 0.231415,
		35.022999, 37.326721, 29.003233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387939, 36.982853, 28.502342>,  <34.995911, 36.646263, 28.841242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387939, 36.982853, 28.502342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637012, 37.287296, 28.574980>,  <34.786457, 37.469963, 28.618563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637012, 37.287296, 28.574980>,  <34.387939, 36.982853, 28.502342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637012, 37.287296, 28.574980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062788, 0.279929, -0.957965,
		-0.779950, 0.585108, 0.222096,
		0.622684, 0.761110, 0.181593,
		34.823818, 37.515629, 28.629457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075001, 37.606350, 28.335854>,  <34.387939, 36.982853, 28.502342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075001, 37.606350, 28.335854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467606, 37.680767, 28.317852>,  <34.703167, 37.725418, 28.307051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467606, 37.680767, 28.317852>,  <34.075001, 37.606350, 28.335854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467606, 37.680767, 28.317852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098900, 0.291627, -0.951406,
		-0.163874, 0.938266, 0.304635,
		0.981511, 0.186039, -0.045005,
		34.762058, 37.736580, 28.304350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143265, 38.272034, 28.189743>,  <34.075001, 37.606350, 28.335854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143265, 38.272034, 28.189743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483795, 38.096230, 28.075151>,  <34.688114, 37.990746, 28.006395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483795, 38.096230, 28.075151>,  <34.143265, 38.272034, 28.189743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483795, 38.096230, 28.075151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128796, 0.354261, -0.926235,
		0.508579, 0.825427, 0.244985,
		0.851328, -0.439511, -0.286481,
		34.739193, 37.964375, 27.989206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430386, 38.793900, 27.761696>,  <34.143265, 38.272034, 28.189743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430386, 38.793900, 27.761696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605381, 38.442284, 27.685917>,  <34.710377, 38.231312, 27.640450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605381, 38.442284, 27.685917>,  <34.430386, 38.793900, 27.761696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605381, 38.442284, 27.685917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058632, 0.182344, -0.981485,
		0.897311, 0.440495, 0.028233,
		0.437487, -0.879042, -0.189446,
		34.736626, 38.178570, 27.629084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912338, 38.903667, 27.155876>,  <34.430386, 38.793900, 27.761696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912338, 38.903667, 27.155876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864773, 38.506508, 27.157513>,  <34.836231, 38.268211, 27.158495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864773, 38.506508, 27.157513>,  <34.912338, 38.903667, 27.155876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864773, 38.506508, 27.157513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002572, -0.004431, -0.999987,
		0.992901, -0.118906, 0.003080,
		-0.118918, -0.992896, 0.004093,
		34.829098, 38.208641, 27.158741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471138, 38.612247, 26.624109>,  <34.912338, 38.903667, 27.155876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471138, 38.612247, 26.624109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162426, 38.365822, 26.687120>,  <34.977200, 38.217968, 26.724928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162426, 38.365822, 26.687120>,  <35.471138, 38.612247, 26.624109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162426, 38.365822, 26.687120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119244, -0.103121, -0.987495,
		0.624604, -0.780918, 0.006125,
		-0.771784, -0.616063, 0.157529,
		34.930889, 38.181004, 26.734379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489857, 38.175289, 26.123373>,  <35.471138, 38.612247, 26.624109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489857, 38.175289, 26.123373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106823, 38.110737, 26.218855>,  <34.877003, 38.072006, 26.276144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106823, 38.110737, 26.218855>,  <35.489857, 38.175289, 26.123373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106823, 38.110737, 26.218855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222282, -0.113404, -0.968365,
		0.183343, -0.980355, 0.072723,
		-0.957589, -0.161378, 0.238707,
		34.819546, 38.062325, 26.290466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319080, 37.526062, 25.766848>,  <35.489857, 38.175289, 26.123373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319080, 37.526062, 25.766848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953854, 37.657291, 25.863741>,  <34.734718, 37.736027, 25.921877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953854, 37.657291, 25.863741>,  <35.319080, 37.526062, 25.766848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953854, 37.657291, 25.863741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254246, 0.006477, -0.967118,
		-0.318851, -0.944631, 0.077496,
		-0.913068, 0.328070, 0.242234,
		34.679932, 37.755711, 25.936411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783634, 36.944073, 25.614683>,  <35.319080, 37.526062, 25.766848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783634, 36.944073, 25.614683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600895, 37.299889, 25.614084>,  <34.491253, 37.513378, 25.613726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600895, 37.299889, 25.614084>,  <34.783634, 36.944073, 25.614683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600895, 37.299889, 25.614084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442397, -0.228662, -0.867179,
		-0.771735, -0.395507, 0.497995,
		-0.456847, 0.889544, -0.001495,
		34.463840, 37.566753, 25.613636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130711, 36.847454, 25.322416>,  <34.783634, 36.944073, 25.614683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130711, 36.847454, 25.322416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228157, 37.233147, 25.280636>,  <34.286625, 37.464561, 25.255568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228157, 37.233147, 25.280636>,  <34.130711, 36.847454, 25.322416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228157, 37.233147, 25.280636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265476, -0.037287, -0.963396,
		-0.932831, 0.262430, 0.246896,
		0.243618, 0.964231, -0.104451,
		34.301243, 37.522415, 25.249300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731632, 37.099808, 24.787010>,  <34.130711, 36.847454, 25.322416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731632, 37.099808, 24.787010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010738, 37.383572, 24.826727>,  <34.178204, 37.553829, 24.850557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010738, 37.383572, 24.826727>,  <33.731632, 37.099808, 24.787010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010738, 37.383572, 24.826727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017004, 0.154978, -0.987771,
		-0.716120, 0.687549, 0.120202,
		0.697770, 0.709407, 0.099292,
		34.220070, 37.596394, 24.856514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434292, 37.628761, 24.437578>,  <33.731632, 37.099808, 24.787010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434292, 37.628761, 24.437578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830170, 37.677601, 24.467485>,  <34.067696, 37.706905, 24.485430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830170, 37.677601, 24.467485>,  <33.434292, 37.628761, 24.437578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830170, 37.677601, 24.467485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059154, 0.126829, -0.990159,
		-0.130385, 0.984381, 0.118300,
		0.989697, 0.122104, 0.074766,
		34.127079, 37.714233, 24.489916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481960, 38.071339, 23.942392>,  <33.434292, 37.628761, 24.437578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481960, 38.071339, 23.942392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857597, 37.947361, 24.001772>,  <34.082981, 37.872974, 24.037399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857597, 37.947361, 24.001772>,  <33.481960, 38.071339, 23.942392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857597, 37.947361, 24.001772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146847, -0.028637, -0.988744,
		0.310707, 0.950323, 0.018622,
		0.939094, -0.309944, 0.148450,
		34.139324, 37.854378, 24.046307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967300, 38.605576, 23.601660>,  <33.481960, 38.071339, 23.942392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967300, 38.605576, 23.601660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162197, 38.258678, 23.642622>,  <34.279137, 38.050541, 23.667200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162197, 38.258678, 23.642622>,  <33.967300, 38.605576, 23.601660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162197, 38.258678, 23.642622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202632, -0.001787, -0.979253,
		0.849433, 0.497883, 0.174861,
		0.487241, -0.867243, 0.102405,
		34.308369, 37.998505, 23.673344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479107, 38.649544, 23.121700>,  <33.967300, 38.605576, 23.601660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479107, 38.649544, 23.121700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501854, 38.253529, 23.173216>,  <34.515503, 38.015919, 23.204124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501854, 38.253529, 23.173216>,  <34.479107, 38.649544, 23.121700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501854, 38.253529, 23.173216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074638, -0.124421, -0.989418,
		0.995588, 0.065882, 0.066818,
		0.056871, -0.990040, 0.128790,
		34.518917, 37.956516, 23.211853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071106, 38.473404, 22.732199>,  <34.479107, 38.649544, 23.121700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071106, 38.473404, 22.732199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844151, 38.147366, 22.778992>,  <34.707977, 37.951744, 22.807068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844151, 38.147366, 22.778992>,  <35.071106, 38.473404, 22.732199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844151, 38.147366, 22.778992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123637, -0.224783, -0.966533,
		0.814115, -0.533937, 0.228316,
		-0.567390, -0.815097, 0.116985,
		34.673935, 37.902836, 22.814087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270386, 38.037693, 22.159296>,  <35.071106, 38.473404, 22.732199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270386, 38.037693, 22.159296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950912, 37.828026, 22.277517>,  <34.759228, 37.702225, 22.348450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950912, 37.828026, 22.277517>,  <35.270386, 38.037693, 22.159296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950912, 37.828026, 22.277517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143725, -0.310776, -0.939554,
		0.584338, -0.792883, 0.172875,
		-0.798682, -0.524170, 0.295555,
		34.711308, 37.670776, 22.366184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343674, 37.290924, 21.844709>,  <35.270386, 38.037693, 22.159296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343674, 37.290924, 21.844709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965492, 37.406136, 21.905577>,  <34.738583, 37.475262, 21.942097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965492, 37.406136, 21.905577>,  <35.343674, 37.290924, 21.844709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965492, 37.406136, 21.905577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197121, -0.133974, -0.971182,
		-0.259345, -0.948203, 0.183443,
		-0.945454, 0.288031, 0.152166,
		34.681854, 37.492546, 21.951227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944229, 36.746487, 21.522942>,  <35.343674, 37.290924, 21.844709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944229, 36.746487, 21.522942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697384, 37.059357, 21.557281>,  <34.549278, 37.247078, 21.577885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697384, 37.059357, 21.557281>,  <34.944229, 36.746487, 21.522942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697384, 37.059357, 21.557281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096666, 0.032915, -0.994773,
		-0.780914, -0.622187, 0.055298,
		-0.617114, 0.782177, 0.085848,
		34.512249, 37.294010, 21.583036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269562, 36.517475, 21.221645>,  <34.944229, 36.746487, 21.522942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269562, 36.517475, 21.221645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458721, 36.176258, 21.133385>,  <34.572216, 35.971527, 21.080429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458721, 36.176258, 21.133385>,  <34.269562, 36.517475, 21.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458721, 36.176258, 21.133385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240133, -0.116170, 0.963764,
		-0.847765, -0.508745, 0.149908,
		0.472895, -0.853044, -0.220651,
		34.600590, 35.920345, 21.067190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995659, 36.010956, 21.682846>,  <34.269562, 36.517475, 21.221645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995659, 36.010956, 21.682846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327003, 35.829147, 21.551863>,  <34.525810, 35.720062, 21.473272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327003, 35.829147, 21.551863>,  <33.995659, 36.010956, 21.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327003, 35.829147, 21.551863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115618, -0.433241, 0.893832,
		-0.548135, -0.778275, -0.306328,
		0.828360, -0.454523, -0.327457,
		34.575512, 35.692791, 21.453625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068172, 35.394554, 22.187193>,  <33.995659, 36.010956, 21.682846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068172, 35.394554, 22.187193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428589, 35.416336, 22.015072>,  <34.644840, 35.429405, 21.911800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428589, 35.416336, 22.015072>,  <34.068172, 35.394554, 22.187193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428589, 35.416336, 22.015072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409588, -0.433222, 0.802843,
		-0.142694, -0.899641, -0.412656,
		0.901042, 0.054458, -0.430301,
		34.698902, 35.432674, 21.885983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274044, 34.779289, 22.171259>,  <34.068172, 35.394554, 22.187193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274044, 34.779289, 22.171259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592693, 35.020641, 22.185781>,  <34.783882, 35.165455, 22.194494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592693, 35.020641, 22.185781>,  <34.274044, 34.779289, 22.171259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592693, 35.020641, 22.185781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242681, -0.374255, 0.895008,
		0.553621, -0.704174, -0.444571,
		0.796624, 0.603384, 0.036305,
		34.831680, 35.201656, 22.196672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748775, 34.363682, 22.334238>,  <34.274044, 34.779289, 22.171259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748775, 34.363682, 22.334238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907665, 34.713612, 22.445154>,  <35.002998, 34.923569, 22.511703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907665, 34.713612, 22.445154>,  <34.748775, 34.363682, 22.334238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907665, 34.713612, 22.445154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417501, -0.441335, 0.794302,
		0.817256, -0.199747, -0.540550,
		0.397223, 0.874828, 0.277289,
		35.026833, 34.976059, 22.528341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413494, 34.246979, 22.572012>,  <34.748775, 34.363682, 22.334238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413494, 34.246979, 22.572012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348663, 34.603977, 22.740381>,  <35.309765, 34.818176, 22.841402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348663, 34.603977, 22.740381>,  <35.413494, 34.246979, 22.572012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348663, 34.603977, 22.740381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462592, -0.308065, 0.831327,
		0.871630, 0.329455, -0.362933,
		-0.162078, 0.892500, 0.420922,
		35.300041, 34.871727, 22.866657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941307, 34.289066, 23.022123>,  <35.413494, 34.246979, 22.572012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941307, 34.289066, 23.022123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694439, 34.576923, 23.149376>,  <35.546318, 34.749638, 23.225727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694439, 34.576923, 23.149376>,  <35.941307, 34.289066, 23.022123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694439, 34.576923, 23.149376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293008, -0.165034, 0.941759,
		0.730234, 0.674444, -0.109007,
		-0.617174, 0.719645, 0.318132,
		35.509285, 34.792816, 23.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304798, 34.514282, 23.629246>,  <35.941307, 34.289066, 23.022123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304798, 34.514282, 23.629246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922443, 34.617157, 23.686001>,  <35.693031, 34.678883, 23.720053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922443, 34.617157, 23.686001>,  <36.304798, 34.514282, 23.629246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922443, 34.617157, 23.686001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156499, 0.037161, 0.986979,
		0.248569, 0.965646, -0.075772,
		-0.955888, 0.257190, 0.141885,
		35.635677, 34.694313, 23.728567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325775, 35.023830, 24.240921>,  <36.304798, 34.514282, 23.629246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325775, 35.023830, 24.240921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940521, 34.916222, 24.241514>,  <35.709370, 34.851658, 24.241871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940521, 34.916222, 24.241514>,  <36.325775, 35.023830, 24.240921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940521, 34.916222, 24.241514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092651, -0.326510, 0.940642,
		-0.252568, 0.906101, 0.339398,
		-0.963133, -0.269021, 0.001485,
		35.651581, 34.835514, 24.241961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973740, 35.352142, 24.892284>,  <36.325775, 35.023830, 24.240921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973740, 35.352142, 24.892284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760468, 35.037754, 24.767078>,  <35.632504, 34.849121, 24.691956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760468, 35.037754, 24.767078>,  <35.973740, 35.352142, 24.892284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760468, 35.037754, 24.767078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210317, -0.235233, 0.948911,
		-0.819444, 0.571771, -0.039881,
		-0.533178, -0.785967, -0.313013,
		35.600513, 34.801964, 24.673174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466702, 35.414410, 25.323313>,  <35.973740, 35.352142, 24.892284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466702, 35.414410, 25.323313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499710, 35.035351, 25.199919>,  <35.519516, 34.807915, 25.125881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499710, 35.035351, 25.199919>,  <35.466702, 35.414410, 25.323313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499710, 35.035351, 25.199919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332434, -0.317987, 0.887903,
		-0.939509, 0.029281, -0.341269,
		0.082521, -0.947643, -0.308486,
		35.524467, 34.751057, 25.107372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879166, 35.165546, 25.456242>,  <35.466702, 35.414410, 25.323313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879166, 35.165546, 25.456242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138313, 34.860847, 25.456650>,  <35.293800, 34.678028, 25.456894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138313, 34.860847, 25.456650>,  <34.879166, 35.165546, 25.456242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138313, 34.860847, 25.456650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288366, -0.244016, 0.925906,
		-0.705061, -0.600159, -0.377753,
		0.647869, -0.761751, 0.001020,
		35.332672, 34.632320, 25.456955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589565, 34.688915, 25.935951>,  <34.879166, 35.165546, 25.456242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589565, 34.688915, 25.935951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965046, 34.563026, 25.879667>,  <35.190334, 34.487495, 25.845898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965046, 34.563026, 25.879667>,  <34.589565, 34.688915, 25.935951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965046, 34.563026, 25.879667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065355, -0.238298, 0.968991,
		-0.338490, -0.918785, -0.203121,
		0.938698, -0.314718, -0.140709,
		35.246655, 34.468613, 25.837454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700649, 33.953960, 26.086819>,  <34.589565, 34.688915, 25.935951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700649, 33.953960, 26.086819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059937, 34.119675, 26.145565>,  <35.275509, 34.219105, 26.180813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059937, 34.119675, 26.145565>,  <34.700649, 33.953960, 26.086819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059937, 34.119675, 26.145565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072838, -0.189220, 0.979230,
		0.433469, -0.890261, -0.139785,
		0.898220, 0.414284, 0.146866,
		35.329403, 34.243961, 26.189625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013577, 33.481689, 26.572954>,  <34.700649, 33.953960, 26.086819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013577, 33.481689, 26.572954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252155, 33.802525, 26.585033>,  <35.395302, 33.995026, 26.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252155, 33.802525, 26.585033>,  <35.013577, 33.481689, 26.572954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252155, 33.802525, 26.585033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196369, -0.182294, 0.963436,
		0.778263, -0.568706, -0.266232,
		0.596444, 0.802086, 0.030196,
		35.431087, 34.043152, 26.594091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648502, 33.199593, 26.945402>,  <35.013577, 33.481689, 26.572954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648502, 33.199593, 26.945402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651257, 33.599419, 26.933950>,  <35.652908, 33.839314, 26.927078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651257, 33.599419, 26.933950>,  <35.648502, 33.199593, 26.945402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651257, 33.599419, 26.933950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458495, 0.022288, 0.888418,
		0.888671, -0.019246, -0.458142,
		0.006888, 0.999566, -0.028631,
		35.653324, 33.899288, 26.925362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283104, 33.368736, 27.256678>,  <35.648502, 33.199593, 26.945402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283104, 33.368736, 27.256678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081871, 33.711643, 27.300482>,  <35.961132, 33.917389, 27.326765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081871, 33.711643, 27.300482>,  <36.283104, 33.368736, 27.256678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081871, 33.711643, 27.300482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087345, -0.075631, 0.993303,
		0.859811, 0.509282, -0.036829,
		-0.503086, 0.857270, 0.109511,
		35.930946, 33.968822, 27.333336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599442, 33.703793, 27.829592>,  <36.283104, 33.368736, 27.256678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599442, 33.703793, 27.829592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241951, 33.882172, 27.810074>,  <36.027454, 33.989197, 27.798363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241951, 33.882172, 27.810074>,  <36.599442, 33.703793, 27.829592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241951, 33.882172, 27.810074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030868, 0.169645, 0.985022,
		0.447542, 0.878837, -0.165382,
		-0.893730, 0.445943, -0.048795,
		35.973831, 34.015953, 27.795435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555946, 34.325272, 28.305393>,  <36.599442, 33.703793, 27.829592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555946, 34.325272, 28.305393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166012, 34.270744, 28.234831>,  <35.932053, 34.238029, 28.192493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166012, 34.270744, 28.234831>,  <36.555946, 34.325272, 28.305393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166012, 34.270744, 28.234831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207503, 0.265522, 0.941510,
		-0.081503, 0.954419, -0.287125,
		-0.974833, -0.136315, -0.176404,
		35.873562, 34.229851, 28.181910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276482, 34.857170, 28.636457>,  <36.555946, 34.325272, 28.305393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276482, 34.857170, 28.636457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004658, 34.567017, 28.592607>,  <35.841564, 34.392925, 28.566298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004658, 34.567017, 28.592607>,  <36.276482, 34.857170, 28.636457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004658, 34.567017, 28.592607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323536, 0.162215, 0.932207,
		-0.658429, 0.668954, -0.344924,
		-0.679555, -0.725388, -0.109624,
		35.800793, 34.349400, 28.559721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728809, 35.209137, 28.924616>,  <36.276482, 34.857170, 28.636457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728809, 35.209137, 28.924616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644108, 34.818211, 28.922806>,  <35.593288, 34.583656, 28.921721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644108, 34.818211, 28.922806>,  <35.728809, 35.209137, 28.924616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644108, 34.818211, 28.922806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368823, 0.075622, 0.926418,
		-0.905058, 0.197842, -0.376469,
		-0.211754, -0.977313, -0.004526,
		35.580582, 34.525017, 28.921448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079002, 35.261723, 29.155245>,  <35.728809, 35.209137, 28.924616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079002, 35.261723, 29.155245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249798, 34.903255, 29.203526>,  <35.352276, 34.688175, 29.232494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249798, 34.903255, 29.203526>,  <35.079002, 35.261723, 29.155245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249798, 34.903255, 29.203526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234599, 0.019124, 0.971904,
		-0.873296, -0.443306, -0.202074,
		0.426987, -0.896166, 0.120700,
		35.377895, 34.634407, 29.239735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669819, 35.006374, 29.704903>,  <35.079002, 35.261723, 29.155245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669819, 35.006374, 29.704903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999043, 34.780083, 29.684809>,  <35.196575, 34.644306, 29.672752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999043, 34.780083, 29.684809>,  <34.669819, 35.006374, 29.704903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999043, 34.780083, 29.684809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036691, -0.141231, 0.989296,
		-0.566770, -0.812406, -0.136999,
		0.823059, -0.565730, -0.050237,
		35.245960, 34.610363, 29.669737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542194, 34.341465, 30.026514>,  <34.669819, 35.006374, 29.704903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542194, 34.341465, 30.026514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940655, 34.376545, 30.026855>,  <35.179729, 34.397591, 30.027061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940655, 34.376545, 30.026855>,  <34.542194, 34.341465, 30.026514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940655, 34.376545, 30.026855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013331, -0.161057, 0.986855,
		0.086682, -0.983041, -0.161605,
		0.996147, 0.087697, 0.000855,
		35.239498, 34.402855, 30.027113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693523, 33.785667, 30.356800>,  <34.542194, 34.341465, 30.026514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693523, 33.785667, 30.356800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003815, 34.037510, 30.373934>,  <35.189991, 34.188614, 30.384214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003815, 34.037510, 30.373934>,  <34.693523, 33.785667, 30.356800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003815, 34.037510, 30.373934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145365, -0.244331, 0.958734,
		0.614092, -0.737494, -0.281058,
		0.775732, 0.629607, 0.042836,
		35.236534, 34.226391, 30.386784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202553, 33.408508, 30.814619>,  <34.693523, 33.785667, 30.356800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202553, 33.408508, 30.814619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325924, 33.788971, 30.809189>,  <35.399944, 34.017246, 30.805931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325924, 33.788971, 30.809189>,  <35.202553, 33.408508, 30.814619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325924, 33.788971, 30.809189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418624, -0.122904, 0.899805,
		0.854183, -0.283203, -0.436082,
		0.308424, 0.951152, -0.013573,
		35.418449, 34.074318, 30.805117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839199, 33.336517, 31.070580>,  <35.202553, 33.408508, 30.814619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839199, 33.336517, 31.070580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736317, 33.718994, 31.126503>,  <35.674587, 33.948479, 31.160057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736317, 33.718994, 31.126503>,  <35.839199, 33.336517, 31.070580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736317, 33.718994, 31.126503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506176, 0.010068, 0.862371,
		0.823183, 0.292575, -0.486590,
		-0.257207, 0.956190, 0.139807,
		35.659153, 34.005852, 31.168446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435780, 33.642567, 31.366215>,  <35.839199, 33.336517, 31.070580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435780, 33.642567, 31.366215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138275, 33.893337, 31.458975>,  <35.959770, 34.043800, 31.514631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138275, 33.893337, 31.458975>,  <36.435780, 33.642567, 31.366215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138275, 33.893337, 31.458975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337418, 0.052636, 0.939882,
		0.577032, 0.777297, -0.250685,
		-0.743763, 0.626928, 0.231901,
		35.915146, 34.081417, 31.528545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785545, 34.292892, 31.577711>,  <36.435780, 33.642567, 31.366215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785545, 34.292892, 31.577711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418785, 34.247818, 31.730864>,  <36.198730, 34.220772, 31.822756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418785, 34.247818, 31.730864>,  <36.785545, 34.292892, 31.577711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418785, 34.247818, 31.730864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380978, 0.038844, 0.923768,
		-0.118967, 0.992871, 0.007314,
		-0.916898, -0.112685, 0.382883,
		36.143715, 34.214012, 31.845728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738983, 34.664448, 32.189610>,  <36.785545, 34.292892, 31.577711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738983, 34.664448, 32.189610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429874, 34.420383, 32.259502>,  <36.244411, 34.273945, 32.301437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429874, 34.420383, 32.259502>,  <36.738983, 34.664448, 32.189610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429874, 34.420383, 32.259502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397147, -0.250114, 0.883016,
		-0.495077, 0.751763, 0.435604,
		-0.772770, -0.610159, 0.174735,
		36.198044, 34.237335, 32.311924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646080, 34.710770, 32.921810>,  <36.738983, 34.664448, 32.189610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646080, 34.710770, 32.921810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430771, 34.386101, 32.831081>,  <36.301586, 34.191299, 32.776646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430771, 34.386101, 32.831081>,  <36.646080, 34.710770, 32.921810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430771, 34.386101, 32.831081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396371, -0.481332, 0.781799,
		-0.743741, 0.330917, 0.580812,
		-0.538274, -0.811673, -0.226821,
		36.269287, 34.142597, 32.763035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475868, 34.495617, 33.598530>,  <36.646080, 34.710770, 32.921810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475868, 34.495617, 33.598530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420834, 34.179821, 33.359272>,  <36.387814, 33.990345, 33.215717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420834, 34.179821, 33.359272>,  <36.475868, 34.495617, 33.598530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420834, 34.179821, 33.359272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311698, -0.607722, 0.730423,
		-0.940167, -0.085943, 0.329698,
		-0.137590, -0.789486, -0.598148,
		36.379555, 33.942974, 33.179829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038017, 33.948509, 33.966442>,  <36.475868, 34.495617, 33.598530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038017, 33.948509, 33.966442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232353, 33.759823, 33.672112>,  <36.348953, 33.646610, 33.495514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232353, 33.759823, 33.672112>,  <36.038017, 33.948509, 33.966442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232353, 33.759823, 33.672112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431124, -0.602998, 0.671212,
		-0.760325, -0.643334, -0.089592,
		0.485838, -0.471714, -0.735831,
		36.378105, 33.618309, 33.451363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922043, 33.256077, 34.151814>,  <36.038017, 33.948509, 33.966442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922043, 33.256077, 34.151814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214603, 33.229427, 33.880341>,  <36.390141, 33.213436, 33.717457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214603, 33.229427, 33.880341>,  <35.922043, 33.256077, 34.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214603, 33.229427, 33.880341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416739, -0.744096, 0.522159,
		-0.539794, -0.664743, -0.516469,
		0.731404, -0.066626, -0.678682,
		36.434025, 33.209438, 33.676735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897919, 32.601444, 33.917633>,  <35.922043, 33.256077, 34.151814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897919, 32.601444, 33.917633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271187, 32.733009, 33.859653>,  <36.495148, 32.811947, 33.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271187, 32.733009, 33.859653>,  <35.897919, 32.601444, 33.917633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271187, 32.733009, 33.859653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359391, -0.859953, 0.362378,
		-0.005460, -0.390255, -0.920691,
		0.933171, 0.328909, -0.144949,
		36.551140, 32.831680, 33.816170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226818, 32.079174, 33.677464>,  <35.897919, 32.601444, 33.917633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226818, 32.079174, 33.677464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515327, 32.317093, 33.819447>,  <36.688431, 32.459843, 33.904636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515327, 32.317093, 33.819447>,  <36.226818, 32.079174, 33.677464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515327, 32.317093, 33.819447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409529, -0.779486, 0.474012,
		0.558621, -0.196526, -0.805804,
		0.721269, 0.594793, 0.354954,
		36.731709, 32.495529, 33.925934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746094, 31.619616, 33.596447>,  <36.226818, 32.079174, 33.677464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746094, 31.619616, 33.596447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869221, 31.900421, 33.853329>,  <36.943096, 32.068905, 34.007458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869221, 31.900421, 33.853329>,  <36.746094, 31.619616, 33.596447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869221, 31.900421, 33.853329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522460, -0.688822, 0.502553,
		0.795164, 0.180833, -0.578804,
		0.307814, 0.702014, 0.642204,
		36.961563, 32.111027, 34.045990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461765, 31.572506, 33.657555>,  <36.746094, 31.619616, 33.596447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461765, 31.572506, 33.657555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378468, 31.781094, 33.988541>,  <37.328491, 31.906246, 34.187134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378468, 31.781094, 33.988541>,  <37.461765, 31.572506, 33.657555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378468, 31.781094, 33.988541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383003, -0.734978, 0.559567,
		0.899969, 0.433447, -0.046672,
		-0.208240, 0.521469, 0.827470,
		37.315994, 31.937534, 34.236782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061184, 31.502815, 34.191322>,  <37.461765, 31.572506, 33.657555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061184, 31.502815, 34.191322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745724, 31.631681, 34.400791>,  <37.556446, 31.709002, 34.526474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745724, 31.631681, 34.400791>,  <38.061184, 31.502815, 34.191322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745724, 31.631681, 34.400791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198670, -0.672508, 0.712926,
		0.581854, 0.666290, 0.466372,
		-0.788654, 0.322165, 0.523674,
		37.509129, 31.728331, 34.557892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287128, 31.399370, 34.826199>,  <38.061184, 31.502815, 34.191322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287128, 31.399370, 34.826199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894547, 31.442265, 34.889748>,  <37.658997, 31.468000, 34.927876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894547, 31.442265, 34.889748>,  <38.287128, 31.399370, 34.826199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894547, 31.442265, 34.889748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064350, -0.596395, 0.800107,
		0.180549, 0.795495, 0.578436,
		-0.981459, 0.107236, 0.158869,
		37.600109, 31.474436, 34.937408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431824, 30.739498, 35.106541>,  <38.287128, 31.399370, 34.826199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431824, 30.739498, 35.106541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598492, 30.437517, 35.309097>,  <38.698494, 30.256329, 35.430630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598492, 30.437517, 35.309097>,  <38.431824, 30.739498, 35.106541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598492, 30.437517, 35.309097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284217, -0.637314, -0.716276,
		0.863485, 0.154526, -0.480121,
		0.416671, -0.754952, 0.506392,
		38.723492, 30.211031, 35.461014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722321, 30.315773, 34.594891>,  <38.431824, 30.739498, 35.106541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722321, 30.315773, 34.594891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729019, 30.083038, 34.920143>,  <38.733036, 29.943398, 35.115295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729019, 30.083038, 34.920143>,  <38.722321, 30.315773, 34.594891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729019, 30.083038, 34.920143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299867, -0.778733, -0.551049,
		0.953834, -0.234605, -0.187513,
		0.016744, -0.581838, 0.813132,
		38.734043, 29.908487, 35.164082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254101, 29.800240, 34.464729>,  <38.722321, 30.315773, 34.594891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254101, 29.800240, 34.464729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954712, 29.689581, 34.705811>,  <38.775078, 29.623186, 34.850460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954712, 29.689581, 34.705811>,  <39.254101, 29.800240, 34.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954712, 29.689581, 34.705811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201996, -0.770542, -0.604535,
		0.631654, -0.574222, 0.520848,
		-0.748472, -0.276648, 0.602707,
		38.730171, 29.606586, 34.886623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234791, 29.129601, 34.313042>,  <39.254101, 29.800240, 34.464729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234791, 29.129601, 34.313042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905788, 29.161514, 34.538296>,  <38.708385, 29.180662, 34.673447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905788, 29.161514, 34.538296>,  <39.234791, 29.129601, 34.313042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905788, 29.161514, 34.538296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442916, -0.710991, -0.546184,
		0.356806, -0.698660, 0.620132,
		-0.822505, 0.079785, 0.563133,
		38.659039, 29.185450, 34.707237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058842, 28.448141, 34.338867>,  <39.234791, 29.129601, 34.313042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058842, 28.448141, 34.338867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726505, 28.653881, 34.423862>,  <38.527103, 28.777325, 34.474861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726505, 28.653881, 34.423862>,  <39.058842, 28.448141, 34.338867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726505, 28.653881, 34.423862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466650, -0.435848, -0.769593,
		-0.303226, -0.738567, 0.602141,
		-0.830838, 0.514350, 0.212492,
		38.477253, 28.808186, 34.487610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566841, 28.035877, 34.287884>,  <39.058842, 28.448141, 34.338867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566841, 28.035877, 34.287884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344326, 28.364500, 34.237930>,  <38.210819, 28.561674, 34.207958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344326, 28.364500, 34.237930>,  <38.566841, 28.035877, 34.287884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344326, 28.364500, 34.237930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484271, -0.442622, -0.754697,
		-0.675299, -0.359351, 0.644079,
		-0.556285, 0.821554, -0.124879,
		38.177441, 28.610966, 34.200466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946236, 27.803524, 34.291031>,  <38.566841, 28.035877, 34.287884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946236, 27.803524, 34.291031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947502, 28.158484, 34.106632>,  <37.948261, 28.371458, 33.995995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947502, 28.158484, 34.106632>,  <37.946236, 27.803524, 34.291031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947502, 28.158484, 34.106632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532521, -0.388700, -0.751887,
		-0.846411, 0.247868, 0.471328,
		0.003164, 0.887397, -0.460994,
		37.948452, 28.424704, 33.968334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297497, 27.996878, 34.205696>,  <37.946236, 27.803524, 34.291031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297497, 27.996878, 34.205696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491524, 28.202850, 33.922977>,  <37.607941, 28.326435, 33.753345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491524, 28.202850, 33.922977>,  <37.297497, 27.996878, 34.205696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491524, 28.202850, 33.922977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580720, -0.414616, -0.700612,
		-0.653816, 0.750292, 0.097915,
		0.485066, 0.514933, -0.706792,
		37.637043, 28.357330, 33.710941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768982, 28.066801, 33.709755>,  <37.297497, 27.996878, 34.205696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768982, 28.066801, 33.709755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117538, 28.119732, 33.520790>,  <37.326672, 28.151491, 33.407413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117538, 28.119732, 33.520790>,  <36.768982, 28.066801, 33.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117538, 28.119732, 33.520790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355905, -0.492241, -0.794374,
		-0.337657, 0.860342, -0.381838,
		0.871389, 0.132328, -0.472409,
		37.378956, 28.159430, 33.379066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507771, 28.162262, 33.076359>,  <36.768982, 28.066801, 33.709755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507771, 28.162262, 33.076359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891254, 28.049507, 33.061268>,  <37.121346, 27.981853, 33.052216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891254, 28.049507, 33.061268>,  <36.507771, 28.162262, 33.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891254, 28.049507, 33.061268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205744, -0.595845, -0.776297,
		0.196351, 0.752002, -0.629237,
		0.958705, -0.281889, -0.037725,
		37.178867, 27.964941, 33.049950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523167, 28.085533, 32.307564>,  <36.507771, 28.162262, 33.076359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523167, 28.085533, 32.307564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858162, 27.924789, 32.455681>,  <37.059158, 27.828342, 32.544552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858162, 27.924789, 32.455681>,  <36.523167, 28.085533, 32.307564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858162, 27.924789, 32.455681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038747, -0.632255, -0.773791,
		0.545074, 0.662391, -0.513938,
		0.837492, -0.401860, 0.370292,
		37.109409, 27.804232, 32.566769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983051, 28.068766, 31.844585>,  <36.523167, 28.085533, 32.307564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983051, 28.068766, 31.844585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068901, 27.771605, 32.098209>,  <37.120411, 27.593307, 32.250385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068901, 27.771605, 32.098209>,  <36.983051, 28.068766, 31.844585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068901, 27.771605, 32.098209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079390, -0.633769, -0.769437,
		0.973466, 0.215475, -0.077040,
		0.214620, -0.742905, 0.634059,
		37.133286, 27.548733, 32.288425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445705, 27.642353, 31.461710>,  <36.983051, 28.068766, 31.844585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445705, 27.642353, 31.461710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315784, 27.409353, 31.759756>,  <37.237831, 27.269554, 31.938583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315784, 27.409353, 31.759756>,  <37.445705, 27.642353, 31.461710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315784, 27.409353, 31.759756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130700, -0.752629, -0.645343,
		0.936708, -0.306995, 0.168323,
		-0.324802, -0.582498, 0.745117,
		37.218346, 27.234604, 31.983292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843681, 27.053688, 31.564411>,  <37.445705, 27.642353, 31.461710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843681, 27.053688, 31.564411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464962, 26.984974, 31.673271>,  <37.237732, 26.943745, 31.738586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464962, 26.984974, 31.673271>,  <37.843681, 27.053688, 31.564411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464962, 26.984974, 31.673271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104636, -0.635374, -0.765082,
		0.304348, -0.752854, 0.583595,
		-0.946796, -0.171786, 0.272150,
		37.180923, 26.933437, 31.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746410, 26.331017, 31.697348>,  <37.843681, 27.053688, 31.564411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746410, 26.331017, 31.697348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358341, 26.414547, 31.648102>,  <37.125500, 26.464664, 31.618555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358341, 26.414547, 31.648102>,  <37.746410, 26.331017, 31.697348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358341, 26.414547, 31.648102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098720, -0.804189, -0.586118,
		-0.221402, -0.556482, 0.800818,
		-0.970173, 0.208824, -0.123113,
		37.067287, 26.477194, 31.611168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293736, 25.700890, 31.900068>,  <37.746410, 26.331017, 31.697348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293736, 25.700890, 31.900068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052242, 25.907635, 31.657299>,  <36.907345, 26.031681, 31.511637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052242, 25.907635, 31.657299>,  <37.293736, 25.700890, 31.900068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052242, 25.907635, 31.657299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026001, -0.773696, -0.633023,
		-0.796763, -0.366396, 0.480544,
		-0.603733, 0.516864, -0.606925,
		36.871120, 26.062693, 31.475222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836056, 25.221882, 31.682827>,  <37.293736, 25.700890, 31.900068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836056, 25.221882, 31.682827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812500, 25.530199, 31.429083>,  <36.798367, 25.715189, 31.276836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812500, 25.530199, 31.429083>,  <36.836056, 25.221882, 31.682827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812500, 25.530199, 31.429083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119498, -0.636336, -0.762100,
		-0.991086, 0.030923, 0.129583,
		-0.058892, 0.770792, -0.634358,
		36.794834, 25.761436, 31.238775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267365, 25.183884, 31.279665>,  <36.836056, 25.221882, 31.682827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267365, 25.183884, 31.279665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498867, 25.409521, 31.044094>,  <36.637768, 25.544903, 30.902752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498867, 25.409521, 31.044094>,  <36.267365, 25.183884, 31.279665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498867, 25.409521, 31.044094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027792, -0.708107, -0.705558,
		-0.815026, 0.424715, -0.394145,
		0.578758, 0.564094, -0.588929,
		36.672493, 25.578749, 30.867414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938042, 25.232351, 30.682281>,  <36.267365, 25.183884, 31.279665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938042, 25.232351, 30.682281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327148, 25.302431, 30.621571>,  <36.560612, 25.344479, 30.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327148, 25.302431, 30.621571>,  <35.938042, 25.232351, 30.682281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327148, 25.302431, 30.621571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003550, -0.665966, -0.745974,
		-0.231772, 0.725118, -0.648449,
		0.972764, 0.175198, -0.151777,
		36.618977, 25.354990, 30.576036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949951, 25.453806, 29.978952>,  <35.938042, 25.232351, 30.682281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949951, 25.453806, 29.978952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265697, 25.266598, 30.137877>,  <36.455147, 25.154272, 30.233231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265697, 25.266598, 30.137877>,  <35.949951, 25.453806, 29.978952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265697, 25.266598, 30.137877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034798, -0.680235, -0.732167,
		0.612935, 0.564123, -0.553241,
		0.789366, -0.468023, 0.397310,
		36.502506, 25.126190, 30.257069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519291, 25.345778, 29.483707>,  <35.949951, 25.453806, 29.978952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519291, 25.345778, 29.483707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501663, 25.057896, 29.760860>,  <36.491089, 24.885166, 29.927153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501663, 25.057896, 29.760860>,  <36.519291, 25.345778, 29.483707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501663, 25.057896, 29.760860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061587, -0.694193, -0.717150,
		0.997128, 0.011071, 0.074914,
		-0.044065, -0.719704, 0.692881,
		36.488445, 24.841984, 29.968725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114517, 24.802704, 29.408848>,  <36.519291, 25.345778, 29.483707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114517, 24.802704, 29.408848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742908, 24.710386, 29.524544>,  <36.519943, 24.654995, 29.593962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742908, 24.710386, 29.524544>,  <37.114517, 24.802704, 29.408848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742908, 24.710386, 29.524544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062800, -0.671981, -0.737901,
		0.364668, -0.703687, 0.609788,
		-0.929017, -0.230794, 0.289242,
		36.464203, 24.641148, 29.611317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880920, 24.017809, 29.484108>,  <37.114517, 24.802704, 29.408848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880920, 24.017809, 29.484108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577877, 24.257959, 29.381674>,  <36.396049, 24.402050, 29.320213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577877, 24.257959, 29.381674>,  <36.880920, 24.017809, 29.484108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577877, 24.257959, 29.381674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142909, -0.535400, -0.832420,
		-0.636873, -0.594051, 0.491422,
		-0.757608, 0.600375, -0.256087,
		36.350594, 24.438072, 29.304848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594498, 24.233225, 30.164043>,  <36.880920, 24.017809, 29.484108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594498, 24.233225, 30.164043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927048, 24.337475, 29.967722>,  <37.126579, 24.400024, 29.849930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927048, 24.337475, 29.967722>,  <36.594498, 24.233225, 30.164043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927048, 24.337475, 29.967722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004981, 0.886661, 0.462394,
		0.555688, -0.381979, 0.738447,
		0.831376, 0.260625, -0.490804,
		37.176460, 24.415663, 29.820480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184593, 24.474562, 30.642193>,  <36.594498, 24.233225, 30.164043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184593, 24.474562, 30.642193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186813, 24.653530, 30.284470>,  <37.188145, 24.760912, 30.069836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186813, 24.653530, 30.284470>,  <37.184593, 24.474562, 30.642193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186813, 24.653530, 30.284470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037357, 0.893602, 0.447301,
		0.999286, -0.035892, -0.011753,
		0.005552, 0.447421, -0.894306,
		37.188480, 24.787756, 30.016178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770287, 25.029289, 30.551426>,  <37.184593, 24.474562, 30.642193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770287, 25.029289, 30.551426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453045, 25.119274, 30.325016>,  <37.262699, 25.173265, 30.189171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453045, 25.119274, 30.325016>,  <37.770287, 25.029289, 30.551426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453045, 25.119274, 30.325016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087061, 0.877883, 0.470894,
		0.602836, 0.422746, -0.676664,
		-0.793101, 0.224961, -0.566025,
		37.215115, 25.186762, 30.155209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802177, 25.739639, 30.206018>,  <37.770287, 25.029289, 30.551426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802177, 25.739639, 30.206018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439121, 25.610910, 30.313814>,  <37.221287, 25.533672, 30.378490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439121, 25.610910, 30.313814>,  <37.802177, 25.739639, 30.206018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439121, 25.610910, 30.313814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101646, 0.791418, 0.602765,
		-0.407260, 0.519701, -0.751033,
		-0.907638, -0.321822, 0.269487,
		37.166828, 25.514364, 30.394661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514824, 26.317097, 30.270945>,  <37.802177, 25.739639, 30.206018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514824, 26.317097, 30.270945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244617, 26.090395, 30.459608>,  <37.082493, 25.954374, 30.572805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244617, 26.090395, 30.459608>,  <37.514824, 26.317097, 30.270945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244617, 26.090395, 30.459608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197250, 0.755263, 0.625036,
		-0.710469, 0.329189, -0.621988,
		-0.675519, -0.566756, 0.471658,
		37.041962, 25.920368, 30.601105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947773, 26.742344, 30.413258>,  <37.514824, 26.317097, 30.270945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947773, 26.742344, 30.413258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854584, 26.448160, 30.667761>,  <36.798668, 26.271650, 30.820463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854584, 26.448160, 30.667761>,  <36.947773, 26.742344, 30.413258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854584, 26.448160, 30.667761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105512, 0.669515, 0.735266,
		-0.966742, 0.104167, -0.233581,
		-0.232976, -0.735458, 0.636257,
		36.784691, 26.227522, 30.858639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272877, 26.920395, 30.725979>,  <36.947773, 26.742344, 30.413258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272877, 26.920395, 30.725979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500954, 26.672405, 30.941576>,  <36.637798, 26.523611, 31.070934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500954, 26.672405, 30.941576>,  <36.272877, 26.920395, 30.725979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500954, 26.672405, 30.941576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055065, 0.625778, 0.778055,
		-0.819665, -0.473319, 0.322673,
		0.570190, -0.619976, 0.538992,
		36.672012, 26.486412, 31.103273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929440, 27.004314, 31.421402>,  <36.272877, 26.920395, 30.725979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929440, 27.004314, 31.421402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277969, 26.815464, 31.474911>,  <36.487087, 26.702154, 31.507015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277969, 26.815464, 31.474911>,  <35.929440, 27.004314, 31.421402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277969, 26.815464, 31.474911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077339, 0.401324, 0.912665,
		-0.484581, -0.784878, 0.386196,
		0.871321, -0.472128, 0.133772,
		36.539364, 26.673826, 31.515041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943665, 26.695694, 32.095329>,  <35.929440, 27.004314, 31.421402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943665, 26.695694, 32.095329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322319, 26.789173, 32.006546>,  <36.549511, 26.845261, 31.953276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322319, 26.789173, 32.006546>,  <35.943665, 26.695694, 32.095329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322319, 26.789173, 32.006546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137229, 0.330883, 0.933641,
		0.291628, -0.914278, 0.281156,
		0.946637, 0.233694, -0.221960,
		36.606308, 26.859282, 31.939959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594051, 26.433561, 32.537342>,  <35.943665, 26.695694, 32.095329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594051, 26.433561, 32.537342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599880, 26.804541, 32.387875>,  <36.603378, 27.027128, 32.298195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599880, 26.804541, 32.387875>,  <36.594051, 26.433561, 32.537342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599880, 26.804541, 32.387875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132493, 0.368625, 0.920088,
		0.991077, -0.062914, -0.117509,
		0.014570, 0.927447, -0.373671,
		36.604252, 27.082775, 32.275772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151901, 26.541729, 32.903000>,  <36.594051, 26.433561, 32.537342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151901, 26.541729, 32.903000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954445, 26.861015, 32.764915>,  <36.835972, 27.052588, 32.682064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954445, 26.861015, 32.764915>,  <37.151901, 26.541729, 32.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954445, 26.861015, 32.764915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053460, 0.424049, 0.904060,
		0.868022, 0.427825, -0.252000,
		-0.493640, 0.798215, -0.345213,
		36.806355, 27.100479, 32.661350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874882, 26.813213, 32.941292>,  <37.151901, 26.541729, 32.903000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874882, 26.813213, 32.941292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759529, 27.113768, 32.703888>,  <37.690319, 27.294100, 32.561443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759529, 27.113768, 32.703888>,  <37.874882, 26.813213, 32.941292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759529, 27.113768, 32.703888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239947, 0.656775, 0.714893,
		0.926965, 0.063748, -0.369692,
		-0.288378, 0.751387, -0.593512,
		37.673016, 27.339184, 32.525833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340809, 27.412859, 32.808891>,  <37.874882, 26.813213, 32.941292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340809, 27.412859, 32.808891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967163, 27.544010, 32.752438>,  <37.742973, 27.622702, 32.718567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967163, 27.544010, 32.752438>,  <38.340809, 27.412859, 32.808891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967163, 27.544010, 32.752438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125156, 0.671097, 0.730729,
		0.334301, 0.664924, -0.667921,
		-0.934119, 0.327878, -0.141130,
		37.686928, 27.642374, 32.710098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430573, 28.088266, 32.661003>,  <38.340809, 27.412859, 32.808891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430573, 28.088266, 32.661003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046253, 28.050442, 32.765251>,  <37.815662, 28.027746, 32.827801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046253, 28.050442, 32.765251>,  <38.430573, 28.088266, 32.661003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046253, 28.050442, 32.765251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133789, 0.665204, 0.734578,
		-0.242831, 0.740649, -0.626475,
		-0.960798, -0.094563, 0.260623,
		37.758015, 28.022074, 32.843437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461197, 28.563492, 33.128124>,  <38.430573, 28.088266, 32.661003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461197, 28.563492, 33.128124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065529, 28.505318, 33.120132>,  <37.828129, 28.470413, 33.115337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065529, 28.505318, 33.120132>,  <38.461197, 28.563492, 33.128124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065529, 28.505318, 33.120132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119917, 0.722000, 0.681422,
		-0.084676, 0.676435, -0.731618,
		-0.989166, -0.145434, -0.019980,
		37.768780, 28.461687, 33.114140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123993, 29.147104, 32.931805>,  <38.461197, 28.563492, 33.128124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123993, 29.147104, 32.931805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903854, 28.922682, 33.179134>,  <37.771770, 28.788029, 33.327534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903854, 28.922682, 33.179134>,  <38.123993, 29.147104, 32.931805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903854, 28.922682, 33.179134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165288, 0.652703, 0.739363,
		-0.818410, 0.509111, -0.266480,
		-0.550350, -0.561056, 0.618329,
		37.738750, 28.754364, 33.364632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668697, 29.594812, 33.268322>,  <38.123993, 29.147104, 32.931805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668697, 29.594812, 33.268322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755104, 29.270782, 33.486355>,  <37.806950, 29.076365, 33.617172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755104, 29.270782, 33.486355>,  <37.668697, 29.594812, 33.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755104, 29.270782, 33.486355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245277, 0.585380, 0.772767,
		-0.945079, -0.033239, 0.325148,
		0.216021, -0.810077, 0.545078,
		37.819912, 29.027760, 33.649879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544022, 29.670143, 34.005959>,  <37.668697, 29.594812, 33.268322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544022, 29.670143, 34.005959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740433, 29.326725, 34.065014>,  <37.858280, 29.120674, 34.100445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740433, 29.326725, 34.065014>,  <37.544022, 29.670143, 34.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740433, 29.326725, 34.065014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386236, 0.366461, 0.846480,
		-0.780844, -0.358620, 0.511541,
		0.491025, -0.858544, 0.147637,
		37.887741, 29.069162, 34.109306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423668, 29.496229, 34.695107>,  <37.544022, 29.670143, 34.005959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423668, 29.496229, 34.695107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755451, 29.289610, 34.610088>,  <37.954521, 29.165638, 34.559078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755451, 29.289610, 34.610088>,  <37.423668, 29.496229, 34.695107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755451, 29.289610, 34.610088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427804, 0.342833, 0.836331,
		-0.359137, -0.784630, 0.505347,
		0.829460, -0.516547, -0.212544,
		38.004288, 29.134645, 34.546326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516453, 29.050650, 35.269257>,  <37.423668, 29.496229, 34.695107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516453, 29.050650, 35.269257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868965, 29.124477, 35.095234>,  <38.080471, 29.168774, 34.990818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868965, 29.124477, 35.095234>,  <37.516453, 29.050650, 35.269257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868965, 29.124477, 35.095234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357018, 0.343166, 0.868778,
		0.309647, -0.920962, 0.236532,
		0.881281, 0.184569, -0.435061,
		38.133350, 29.179848, 34.964714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982952, 29.199566, 35.846203>,  <37.516453, 29.050650, 35.269257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982952, 29.199566, 35.846203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237759, 29.294821, 35.552944>,  <38.390640, 29.351974, 35.376987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237759, 29.294821, 35.552944>,  <37.982952, 29.199566, 35.846203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237759, 29.294821, 35.552944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596428, 0.450270, 0.664478,
		0.488354, -0.860549, 0.144793,
		0.637012, 0.238142, -0.733147,
		38.428864, 29.366262, 35.333000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709244, 29.002228, 36.072517>,  <37.982952, 29.199566, 35.846203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709244, 29.002228, 36.072517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709564, 29.298311, 35.803566>,  <38.709755, 29.475962, 35.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709564, 29.298311, 35.803566>,  <38.709244, 29.002228, 36.072517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709564, 29.298311, 35.803566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574530, 0.549992, 0.606155,
		0.818483, -0.386785, -0.424833,
		0.000797, 0.740207, -0.672378,
		38.709805, 29.520372, 35.601852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316109, 29.254429, 36.139076>,  <38.709244, 29.002228, 36.072517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316109, 29.254429, 36.139076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085098, 29.543331, 35.986858>,  <38.946491, 29.716673, 35.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085098, 29.543331, 35.986858>,  <39.316109, 29.254429, 36.139076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085098, 29.543331, 35.986858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353885, 0.641553, 0.680569,
		0.735685, 0.258374, -0.626107,
		-0.577522, 0.722255, -0.380547,
		38.911842, 29.760008, 35.872696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542660, 29.816702, 35.817348>,  <39.316109, 29.254429, 36.139076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542660, 29.816702, 35.817348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216961, 29.959896, 36.000145>,  <39.021542, 30.045813, 36.109825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216961, 29.959896, 36.000145>,  <39.542660, 29.816702, 35.817348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216961, 29.959896, 36.000145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577707, 0.577032, 0.577312,
		-0.057032, 0.734085, -0.676658,
		-0.814249, 0.357985, 0.456995,
		38.972687, 30.067291, 36.137245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972038, 30.356768, 35.955967>,  <39.542660, 29.816702, 35.817348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972038, 30.356768, 35.955967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156498, 30.575954, 36.235130>,  <40.267174, 30.707466, 36.402626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156498, 30.575954, 36.235130>,  <39.972038, 30.356768, 35.955967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156498, 30.575954, 36.235130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598386, 0.388718, -0.700594,
		-0.655192, 0.740695, -0.148641,
		0.461147, 0.547969, 0.697906,
		40.294842, 30.740345, 36.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947647, 31.042093, 35.783340>,  <39.972038, 30.356768, 35.955967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947647, 31.042093, 35.783340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256088, 30.958021, 36.023746>,  <40.441154, 30.907578, 36.167992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256088, 30.958021, 36.023746>,  <39.947647, 31.042093, 35.783340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256088, 30.958021, 36.023746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632494, 0.361297, -0.685139,
		-0.073144, 0.908454, 0.411535,
		0.771104, -0.210179, 0.601018,
		40.487419, 30.894968, 36.204052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391174, 31.675385, 36.029995>,  <39.947647, 31.042093, 35.783340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391174, 31.675385, 36.029995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610210, 31.345795, 35.971729>,  <40.741631, 31.148041, 35.936771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610210, 31.345795, 35.971729>,  <40.391174, 31.675385, 36.029995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610210, 31.345795, 35.971729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606931, 0.510960, -0.608732,
		0.576006, 0.244928, 0.779890,
		0.547587, -0.823973, -0.145662,
		40.774487, 31.098602, 35.928032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958916, 31.724464, 36.374424>,  <40.391174, 31.675385, 36.029995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958916, 31.724464, 36.374424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012112, 31.492510, 36.052917>,  <41.044029, 31.353336, 35.860012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012112, 31.492510, 36.052917>,  <40.958916, 31.724464, 36.374424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012112, 31.492510, 36.052917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594971, 0.695304, -0.403188,
		0.792667, -0.424598, 0.437487,
		0.132994, -0.579886, -0.803769,
		41.052010, 31.318544, 35.811787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684616, 31.457712, 36.375168>,  <40.958916, 31.724464, 36.374424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684616, 31.457712, 36.375168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508553, 31.527979, 36.022942>,  <41.402916, 31.570139, 35.811604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508553, 31.527979, 36.022942>,  <41.684616, 31.457712, 36.375168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508553, 31.527979, 36.022942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740890, 0.625095, -0.245639,
		0.507289, -0.760525, -0.405291,
		-0.440159, 0.175666, -0.880569,
		41.376503, 31.580679, 35.758770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194756, 31.557068, 35.723915>,  <41.684616, 31.457712, 36.375168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194756, 31.557068, 35.723915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874207, 31.754414, 35.588631>,  <41.681877, 31.872820, 35.507458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874207, 31.754414, 35.588631>,  <42.194756, 31.557068, 35.723915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874207, 31.754414, 35.588631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592651, 0.578322, -0.560632,
		-0.080999, -0.649720, -0.755846,
		-0.801376, 0.493364, -0.338214,
		41.633793, 31.902422, 35.487167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661507, 31.526068, 35.133751>,  <42.194756, 31.557068, 35.723915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661507, 31.526068, 35.133751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831593, 31.169317, 35.195389>,  <42.933643, 30.955267, 35.232372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831593, 31.169317, 35.195389>,  <42.661507, 31.526068, 35.133751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831593, 31.169317, 35.195389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869243, -0.354974, 0.344107,
		-0.252199, -0.280271, -0.926198,
		0.425220, -0.891875, 0.154100,
		42.959160, 30.901754, 35.241619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412636, 31.391363, 35.069988>,  <42.661507, 31.526068, 35.133751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412636, 31.391363, 35.069988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478828, 31.159950, 34.750507>,  <43.518543, 31.021103, 34.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478828, 31.159950, 34.750507>,  <43.412636, 31.391363, 35.069988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478828, 31.159950, 34.750507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398509, 0.701576, -0.590747,
		0.902113, 0.416044, -0.114455,
		0.165477, -0.578532, -0.798698,
		43.528473, 30.986391, 34.510899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574677, 31.775082, 34.557983>,  <43.412636, 31.391363, 35.069988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574677, 31.775082, 34.557983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448414, 31.461695, 34.343864>,  <43.372658, 31.273663, 34.215393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448414, 31.461695, 34.343864>,  <43.574677, 31.775082, 34.557983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448414, 31.461695, 34.343864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412325, 0.621347, -0.666270,
		0.854606, 0.010406, -0.519173,
		-0.315654, -0.783466, -0.535298,
		43.353718, 31.226654, 34.183273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831497, 31.809542, 33.776005>,  <43.574677, 31.775082, 34.557983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831497, 31.809542, 33.776005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466228, 31.673296, 33.865540>,  <43.247066, 31.591549, 33.919262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466228, 31.673296, 33.865540>,  <43.831497, 31.809542, 33.776005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466228, 31.673296, 33.865540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407173, 0.737874, -0.538286,
		0.018184, -0.582687, -0.812493,
		-0.913170, -0.340614, 0.223837,
		43.192276, 31.571112, 33.932690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259686, 32.081436, 34.344772>,  <43.831497, 31.809542, 33.776005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259686, 32.081436, 34.344772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367325, 32.456554, 34.257019>,  <44.431908, 32.681625, 34.204369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367325, 32.456554, 34.257019>,  <44.259686, 32.081436, 34.344772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367325, 32.456554, 34.257019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910776, -0.321852, -0.258649,
		-0.313168, -0.130209, -0.940729,
		0.269097, 0.937794, -0.219385,
		44.448055, 32.737892, 34.191204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416618, 32.214767, 33.622356>,  <44.259686, 32.081436, 34.344772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416618, 32.214767, 33.622356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627792, 32.448704, 33.868690>,  <44.754498, 32.589066, 34.016491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627792, 32.448704, 33.868690>,  <44.416618, 32.214767, 33.622356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627792, 32.448704, 33.868690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845807, -0.296495, -0.443510,
		-0.076792, 0.755018, -0.651192,
		0.527933, 0.584841, 0.615831,
		44.786171, 32.624157, 34.053440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000103, 32.525295, 33.243248>,  <44.416618, 32.214767, 33.622356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000103, 32.525295, 33.243248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080540, 32.591438, 33.629456>,  <45.128799, 32.631123, 33.861179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080540, 32.591438, 33.629456>,  <45.000103, 32.525295, 33.243248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080540, 32.591438, 33.629456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886227, -0.450629, -0.107399,
		0.417331, 0.877263, -0.237158,
		0.201088, 0.165355, 0.965516,
		45.140865, 32.641045, 33.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631462, 32.808746, 33.215328>,  <45.000103, 32.525295, 33.243248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631462, 32.808746, 33.215328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552357, 32.628521, 33.563553>,  <45.504894, 32.520386, 33.772488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.552357, 32.628521, 33.563553>,  <45.631462, 32.808746, 33.215328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552357, 32.628521, 33.563553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772902, -0.617916, -0.144233,
		0.602921, 0.644336, 0.470444,
		-0.197761, -0.450568, 0.870563,
		45.493027, 32.493351, 33.824722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528969, 33.018524, 33.964928>,  <45.631462, 32.808746, 33.215328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528969, 33.018524, 33.964928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868145, 33.035404, 34.176289>,  <46.071651, 33.045532, 34.303104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868145, 33.035404, 34.176289>,  <45.528969, 33.018524, 33.964928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868145, 33.035404, 34.176289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437693, 0.506584, -0.742831,
		-0.299025, 0.861157, 0.411086,
		0.847944, 0.042196, 0.528404,
		46.122528, 33.048061, 34.334808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794525, 33.696709, 34.044392>,  <45.528969, 33.018524, 33.964928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794525, 33.696709, 34.044392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107964, 33.448200, 34.044037>,  <46.296024, 33.299095, 34.043823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107964, 33.448200, 34.044037>,  <45.794525, 33.696709, 34.044392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107964, 33.448200, 34.044037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352890, 0.446270, -0.822382,
		0.511321, 0.644099, 0.568935,
		0.783594, -0.621273, -0.000891,
		46.343040, 33.261818, 34.043770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336536, 34.083405, 34.007992>,  <45.794525, 33.696709, 34.044392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336536, 34.083405, 34.007992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488789, 33.755875, 33.836105>,  <46.580139, 33.559357, 33.732975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488789, 33.755875, 33.836105>,  <46.336536, 34.083405, 34.007992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488789, 33.755875, 33.836105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231200, 0.534200, -0.813127,
		0.895360, 0.210149, 0.392643,
		0.380628, -0.818821, -0.429715,
		46.602978, 33.510227, 33.707191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529385, 34.406311, 34.685833>,  <46.336536, 34.083405, 34.007992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529385, 34.406311, 34.685833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905819, 34.388023, 34.819859>,  <47.131680, 34.377052, 34.900272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905819, 34.388023, 34.819859>,  <46.529385, 34.406311, 34.685833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905819, 34.388023, 34.819859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336884, 0.040572, -0.940672,
		0.029413, 0.998130, 0.053584,
		0.941087, -0.045720, 0.335060,
		47.188145, 34.374306, 34.920376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.070320, 34.772778, 34.346924>,  <46.529385, 34.406311, 34.685833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.070320, 34.772778, 34.346924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258442, 34.462219, 34.514748>,  <47.371315, 34.275887, 34.615440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258442, 34.462219, 34.514748>,  <47.070320, 34.772778, 34.346924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.258442, 34.462219, 34.514748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425671, -0.216889, -0.878501,
		0.773061, 0.591753, 0.228485,
		0.470300, -0.776394, 0.419560,
		47.399532, 34.229301, 34.640617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.437832, 35.344967, 34.762775>,  <47.070320, 34.772778, 34.346924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.437832, 35.344967, 34.762775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813007, 35.368660, 34.899456>,  <48.038113, 35.382877, 34.981464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813007, 35.368660, 34.899456>,  <47.437832, 35.344967, 34.762775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813007, 35.368660, 34.899456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194426, 0.905713, 0.376672,
		-0.287168, -0.419731, 0.861023,
		0.937941, 0.059237, 0.341699,
		48.094391, 35.386433, 35.001965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.031315, 31.239162, 26.987120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.745695, 31.518879, 27.000565>,  <31.574324, 31.686708, 27.008631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.745695, 31.518879, 27.000565>,  <32.031315, 31.239162, 26.987120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745695, 31.518879, 27.000565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151451, -0.201163, 0.967779,
		0.683522, 0.685948, 0.249548,
		-0.714045, 0.699292, 0.033612,
		31.531481, 31.728666, 27.010649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139153, 31.598759, 27.543961>,  <32.031315, 31.239162, 26.987120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139153, 31.598759, 27.543961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.750496, 31.643446, 27.460602>,  <31.517302, 31.670258, 27.410587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.750496, 31.643446, 27.460602>,  <32.139153, 31.598759, 27.543961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750496, 31.643446, 27.460602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213491, -0.035639, 0.976295,
		0.101643, 0.993100, 0.058479,
		-0.971643, 0.111718, -0.208396,
		31.459003, 31.676962, 27.398083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916887, 32.182499, 27.995884>,  <32.139153, 31.598759, 27.543961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916887, 32.182499, 27.995884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.586166, 31.983658, 27.890593>,  <31.387733, 31.864353, 27.827419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.586166, 31.983658, 27.890593>,  <31.916887, 32.182499, 27.995884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586166, 31.983658, 27.890593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136449, -0.276737, 0.951209,
		-0.545694, 0.822378, 0.160977,
		-0.826801, -0.497104, -0.263226,
		31.338125, 31.834526, 27.811625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442032, 32.416019, 28.438568>,  <31.916887, 32.182499, 27.995884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442032, 32.416019, 28.438568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.302181, 32.062252, 28.314919>,  <31.218271, 31.849991, 28.240728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.302181, 32.062252, 28.314919>,  <31.442032, 32.416019, 28.438568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302181, 32.062252, 28.314919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227855, -0.239774, 0.943711,
		-0.908760, 0.400380, -0.117689,
		-0.349625, -0.884423, -0.309125,
		31.197294, 31.796925, 28.222181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737659, 32.366325, 28.747929>,  <31.442032, 32.416019, 28.438568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737659, 32.366325, 28.747929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.866205, 31.997223, 28.662836>,  <30.943333, 31.775763, 28.611780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.866205, 31.997223, 28.662836>,  <30.737659, 32.366325, 28.747929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866205, 31.997223, 28.662836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211584, -0.288936, 0.933674,
		-0.923015, -0.255040, -0.288094,
		0.321365, -0.922752, -0.212730,
		30.962614, 31.720398, 28.599016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276722, 31.948488, 29.016666>,  <30.737659, 32.366325, 28.747929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276722, 31.948488, 29.016666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.598606, 31.712635, 28.989027>,  <30.791737, 31.571123, 28.972445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.598606, 31.712635, 28.989027>,  <30.276722, 31.948488, 29.016666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598606, 31.712635, 28.989027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029562, -0.156044, 0.987308,
		-0.592933, -0.792453, -0.143001,
		0.804709, -0.589635, -0.069097,
		30.840019, 31.535746, 28.968298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283155, 31.477468, 29.602951>,  <30.276722, 31.948488, 29.016666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283155, 31.477468, 29.602951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657610, 31.396128, 29.488199>,  <30.882282, 31.347322, 29.419348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657610, 31.396128, 29.488199>,  <30.283155, 31.477468, 29.602951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657610, 31.396128, 29.488199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268634, -0.112874, 0.956606,
		-0.226909, -0.972578, -0.051038,
		0.936134, -0.203352, -0.286880,
		30.938450, 31.335123, 29.402136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463169, 30.797319, 29.893768>,  <30.283155, 31.477468, 29.602951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463169, 30.797319, 29.893768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.804251, 31.001419, 29.848976>,  <31.008900, 31.123878, 29.822100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.804251, 31.001419, 29.848976>,  <30.463169, 30.797319, 29.893768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804251, 31.001419, 29.848976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309148, -0.320099, 0.895524,
		0.421095, -0.798237, -0.430693,
		0.852705, 0.510249, -0.111981,
		31.060062, 31.154493, 29.815382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918150, 30.425051, 30.300591>,  <30.463169, 30.797319, 29.893768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918150, 30.425051, 30.300591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.113735, 30.769361, 30.244055>,  <31.231087, 30.975948, 30.210133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.113735, 30.769361, 30.244055>,  <30.918150, 30.425051, 30.300591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113735, 30.769361, 30.244055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426247, -0.094403, 0.899667,
		0.761072, -0.500147, -0.413064,
		0.488961, 0.860779, -0.141339,
		31.260424, 31.027596, 30.201653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483995, 30.218185, 30.604382>,  <30.918150, 30.425051, 30.300591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483995, 30.218185, 30.604382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.503237, 30.616798, 30.577211>,  <31.514782, 30.855967, 30.560909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.503237, 30.616798, 30.577211>,  <31.483995, 30.218185, 30.604382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503237, 30.616798, 30.577211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425193, 0.041104, 0.904169,
		0.903823, -0.072375, -0.421741,
		0.048104, 0.996530, -0.067924,
		31.517668, 30.915758, 30.556835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225338, 30.385038, 30.602175>,  <31.483995, 30.218185, 30.604382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225338, 30.385038, 30.602175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.004040, 30.698877, 30.714125>,  <31.871262, 30.887180, 30.781296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.004040, 30.698877, 30.714125>,  <32.225338, 30.385038, 30.602175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004040, 30.698877, 30.714125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584084, 0.125813, 0.801884,
		0.593942, 0.607108, -0.527875,
		-0.553244, 0.784596, 0.279876,
		31.838066, 30.934256, 30.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782913, 30.924423, 30.840704>,  <32.225338, 30.385038, 30.602175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782913, 30.924423, 30.840704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413986, 30.975332, 30.986652>,  <32.192631, 31.005878, 31.074223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413986, 30.975332, 30.986652>,  <32.782913, 30.924423, 30.840704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413986, 30.975332, 30.986652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373221, 0.048592, 0.926469,
		0.100185, 0.990677, -0.092318,
		-0.922317, 0.127274, 0.364873,
		32.137291, 31.013514, 31.096115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868614, 31.458540, 31.379147>,  <32.782913, 30.924423, 30.840704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868614, 31.458540, 31.379147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.527168, 31.260019, 31.442421>,  <32.322300, 31.140907, 31.480385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.527168, 31.260019, 31.442421>,  <32.868614, 31.458540, 31.379147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527168, 31.260019, 31.442421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245955, -0.116326, 0.962276,
		-0.459177, 0.860322, 0.221366,
		-0.853617, -0.496301, 0.158186,
		32.271084, 31.111130, 31.489878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697617, 31.721838, 32.029568>,  <32.868614, 31.458540, 31.379147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697617, 31.721838, 32.029568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450802, 31.407516, 32.012707>,  <32.302711, 31.218924, 32.002590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450802, 31.407516, 32.012707>,  <32.697617, 31.721838, 32.029568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450802, 31.407516, 32.012707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015982, -0.041035, 0.999030,
		-0.786769, 0.617115, 0.012762,
		-0.617040, -0.785802, -0.042148,
		32.265690, 31.171776, 32.000061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178555, 31.857929, 32.575447>,  <32.697617, 31.721838, 32.029568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178555, 31.857929, 32.575447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.199112, 31.468750, 32.485355>,  <32.211445, 31.235243, 32.431301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.199112, 31.468750, 32.485355>,  <32.178555, 31.857929, 32.575447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199112, 31.468750, 32.485355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173652, -0.213383, 0.961412,
		-0.983465, -0.088518, 0.157989,
		0.051390, -0.972950, -0.225226,
		32.214527, 31.176865, 32.417789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917801, 31.500477, 33.222839>,  <32.178555, 31.857929, 32.575447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917801, 31.500477, 33.222839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.107754, 31.214323, 33.017815>,  <32.221725, 31.042631, 32.894802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.107754, 31.214323, 33.017815>,  <31.917801, 31.500477, 33.222839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107754, 31.214323, 33.017815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385263, -0.354652, 0.851936,
		-0.791241, -0.602036, 0.107194,
		0.474880, -0.715384, -0.512557,
		32.250217, 30.999708, 32.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647188, 30.817499, 33.447052>,  <31.917801, 31.500477, 33.222839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647188, 30.817499, 33.447052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011665, 30.765490, 33.290684>,  <32.230350, 30.734283, 33.196861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.011665, 30.765490, 33.290684>,  <31.647188, 30.817499, 33.447052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011665, 30.765490, 33.290684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294511, -0.457935, 0.838784,
		-0.288077, -0.879426, -0.378975,
		0.911194, -0.130022, -0.390921,
		32.285023, 30.726482, 33.173409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824932, 30.191025, 33.642258>,  <31.647188, 30.817499, 33.447052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824932, 30.191025, 33.642258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.183090, 30.323269, 33.522949>,  <32.397984, 30.402615, 33.451363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.183090, 30.323269, 33.522949>,  <31.824932, 30.191025, 33.642258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183090, 30.323269, 33.522949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443320, -0.599202, 0.666652,
		0.041677, -0.729146, -0.683088,
		0.895394, 0.330610, -0.298273,
		32.451710, 30.422453, 33.433468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248959, 29.546858, 33.603935>,  <31.824932, 30.191025, 33.642258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248959, 29.546858, 33.603935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493771, 29.860031, 33.648540>,  <32.640656, 30.047935, 33.675304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493771, 29.860031, 33.648540>,  <32.248959, 29.546858, 33.603935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493771, 29.860031, 33.648540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482895, -0.481646, 0.731320,
		0.626286, -0.393738, -0.672856,
		0.612028, 0.782935, 0.111514,
		32.677380, 30.094912, 33.681995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889755, 29.229078, 33.753033>,  <32.248959, 29.546858, 33.603935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889755, 29.229078, 33.753033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.948051, 29.608799, 33.864449>,  <32.983028, 29.836632, 33.931297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.948051, 29.608799, 33.864449>,  <32.889755, 29.229078, 33.753033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948051, 29.608799, 33.864449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591229, -0.309313, 0.744832,
		0.793227, 0.056132, -0.606334,
		0.145738, 0.949302, 0.278542,
		32.991772, 29.893589, 33.948009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564457, 29.257875, 33.931862>,  <32.889755, 29.229078, 33.753033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564457, 29.257875, 33.931862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.388744, 29.556482, 34.131756>,  <33.283318, 29.735647, 34.251694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.388744, 29.556482, 34.131756>,  <33.564457, 29.257875, 33.931862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388744, 29.556482, 34.131756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422467, -0.319268, 0.848286,
		0.792812, 0.583762, -0.175130,
		-0.439284, 0.746518, 0.499740,
		33.256958, 29.780437, 34.281677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015511, 29.478807, 34.300129>,  <33.564457, 29.257875, 33.931862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015511, 29.478807, 34.300129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690472, 29.614120, 34.489971>,  <33.495449, 29.695309, 34.603874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.690472, 29.614120, 34.489971>,  <34.015511, 29.478807, 34.300129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690472, 29.614120, 34.489971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347100, -0.373264, 0.860346,
		0.468191, 0.863851, 0.185897,
		-0.812600, 0.338282, 0.474602,
		33.446693, 29.715605, 34.632351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640614, 29.713608, 34.756813>,  <34.015511, 29.478807, 34.300129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640614, 29.713608, 34.756813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031818, 29.652603, 34.699909>,  <35.266541, 29.616001, 34.665768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031818, 29.652603, 34.699909>,  <34.640614, 29.713608, 34.756813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031818, 29.652603, 34.699909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143072, 0.005702, -0.989696,
		0.151750, 0.988286, -0.016243,
		0.978009, -0.152510, -0.142261,
		35.325222, 29.606850, 34.657230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809036, 30.162411, 34.247959>,  <34.640614, 29.713608, 34.756813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809036, 30.162411, 34.247959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094162, 29.881868, 34.248295>,  <35.265236, 29.713543, 34.248497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094162, 29.881868, 34.248295>,  <34.809036, 30.162411, 34.247959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094162, 29.881868, 34.248295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047024, 0.046592, -0.997807,
		0.699777, 0.711288, 0.066192,
		0.712812, -0.701355, 0.000843,
		35.308006, 29.671461, 34.248547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423622, 30.436028, 33.789062>,  <34.809036, 30.162411, 34.247959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423622, 30.436028, 33.789062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441219, 30.039249, 33.836575>,  <35.451778, 29.801182, 33.865082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441219, 30.039249, 33.836575>,  <35.423622, 30.436028, 33.789062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441219, 30.039249, 33.836575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036977, -0.117199, -0.992420,
		0.998347, 0.048051, 0.031524,
		0.043992, -0.991945, 0.118782,
		35.454418, 29.741665, 33.872208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857307, 30.419846, 33.228256>,  <35.423622, 30.436028, 33.789062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857307, 30.419846, 33.228256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729893, 30.054588, 33.330006>,  <35.653446, 29.835434, 33.391056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729893, 30.054588, 33.330006>,  <35.857307, 30.419846, 33.228256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729893, 30.054588, 33.330006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131398, -0.223231, -0.965869,
		0.938760, -0.341087, -0.048878,
		-0.318534, -0.913141, 0.254378,
		35.634331, 29.780645, 33.406319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265728, 29.870832, 32.904205>,  <35.857307, 30.419846, 33.228256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265728, 29.870832, 32.904205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920513, 29.690863, 32.996059>,  <35.713383, 29.582880, 33.051170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920513, 29.690863, 32.996059>,  <36.265728, 29.870832, 32.904205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920513, 29.690863, 32.996059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141689, -0.220727, -0.964989,
		0.484860, -0.865359, 0.126747,
		-0.863038, -0.449926, 0.229634,
		35.661602, 29.555885, 33.064949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296787, 29.291174, 32.507275>,  <36.265728, 29.870832, 32.904205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296787, 29.291174, 32.507275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910313, 29.330490, 32.602619>,  <35.678429, 29.354080, 32.659824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910313, 29.330490, 32.602619>,  <36.296787, 29.291174, 32.507275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910313, 29.330490, 32.602619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252396, -0.171740, -0.952262,
		-0.052658, -0.980227, 0.190740,
		-0.966190, 0.098286, 0.238362,
		35.620457, 29.359976, 32.674129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045109, 28.837551, 31.922951>,  <36.296787, 29.291174, 32.507275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045109, 28.837551, 31.922951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743847, 29.027786, 32.104752>,  <35.563091, 29.141928, 32.213833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743847, 29.027786, 32.104752>,  <36.045109, 28.837551, 31.922951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743847, 29.027786, 32.104752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569755, -0.126224, -0.812063,
		-0.328839, -0.870565, 0.366035,
		-0.753156, 0.475588, 0.454501,
		35.517899, 29.170464, 32.241100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408813, 28.520853, 31.757875>,  <36.045109, 28.837551, 31.922951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408813, 28.520853, 31.757875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271683, 28.884386, 31.852953>,  <35.189404, 29.102505, 31.910000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271683, 28.884386, 31.852953>,  <35.408813, 28.520853, 31.757875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271683, 28.884386, 31.852953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502123, 0.036566, -0.864023,
		-0.793942, -0.415560, 0.443809,
		-0.342825, 0.908831, 0.237693,
		35.168835, 29.157036, 31.924261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662910, 28.532366, 31.564814>,  <35.408813, 28.520853, 31.757875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662910, 28.532366, 31.564814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756817, 28.920982, 31.577427>,  <34.813160, 29.154152, 31.584995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756817, 28.920982, 31.577427>,  <34.662910, 28.532366, 31.564814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756817, 28.920982, 31.577427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472224, 0.142344, -0.869910,
		-0.849640, 0.189339, 0.492202,
		0.234770, 0.971539, 0.031531,
		34.827248, 29.212444, 31.586885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057594, 28.865402, 31.419765>,  <34.662910, 28.532366, 31.564814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057594, 28.865402, 31.419765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351524, 29.125273, 31.341845>,  <34.527882, 29.281195, 31.295092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351524, 29.125273, 31.341845>,  <34.057594, 28.865402, 31.419765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351524, 29.125273, 31.341845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434973, 0.231027, -0.870302,
		-0.520411, 0.724255, 0.452357,
		0.734828, 0.649677, -0.194802,
		34.571972, 29.320175, 31.283403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663597, 29.532551, 31.112736>,  <34.057594, 28.865402, 31.419765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663597, 29.532551, 31.112736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.037838, 29.634405, 31.014919>,  <34.262383, 29.695518, 30.956230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.037838, 29.634405, 31.014919>,  <33.663597, 29.532551, 31.112736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037838, 29.634405, 31.014919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352632, 0.640576, -0.682138,
		-0.017053, 0.724445, 0.689121,
		0.935607, 0.254638, -0.244539,
		34.318520, 29.710796, 30.941557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551487, 30.180000, 30.769342>,  <33.663597, 29.532551, 31.112736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551487, 30.180000, 30.769342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916119, 30.059130, 30.657833>,  <34.134899, 29.986607, 30.590927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916119, 30.059130, 30.657833>,  <33.551487, 30.180000, 30.769342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916119, 30.059130, 30.657833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015116, 0.702249, -0.711771,
		0.410849, 0.644621, 0.644722,
		0.911578, -0.302176, -0.278775,
		34.189590, 29.968477, 30.574202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170174, 30.767744, 30.782503>,  <33.551487, 30.180000, 30.769342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170174, 30.767744, 30.782503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249531, 30.486330, 30.509541>,  <34.297146, 30.317482, 30.345762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.249531, 30.486330, 30.509541>,  <34.170174, 30.767744, 30.782503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249531, 30.486330, 30.509541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134488, 0.709202, -0.692059,
		0.970852, 0.045525, 0.235319,
		0.198395, -0.703534, -0.682407,
		34.309048, 30.275270, 30.304819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696297, 30.993864, 30.517723>,  <34.170174, 30.767744, 30.782503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696297, 30.993864, 30.517723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502899, 30.753672, 30.262957>,  <34.386860, 30.609556, 30.110098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502899, 30.753672, 30.262957>,  <34.696297, 30.993864, 30.517723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502899, 30.753672, 30.262957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075381, 0.696347, -0.713736,
		0.872098, -0.393096, -0.291413,
		-0.483491, -0.600480, -0.636914,
		34.357853, 30.573528, 30.071882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102848, 31.070850, 29.885273>,  <34.696297, 30.993864, 30.517723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102848, 31.070850, 29.885273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771973, 30.876774, 29.771889>,  <34.573448, 30.760328, 29.703857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.771973, 30.876774, 29.771889>,  <35.102848, 31.070850, 29.885273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771973, 30.876774, 29.771889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033714, 0.460685, -0.886923,
		0.560914, -0.743208, -0.364715,
		-0.827187, -0.485191, -0.283461,
		34.523815, 30.731216, 29.686850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256363, 30.946884, 29.164885>,  <35.102848, 31.070850, 29.885273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256363, 30.946884, 29.164885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861855, 30.906271, 29.216972>,  <34.625149, 30.881903, 29.248224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861855, 30.906271, 29.216972>,  <35.256363, 30.946884, 29.164885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861855, 30.906271, 29.216972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163682, 0.497105, -0.852112,
		0.021786, -0.861729, -0.506900,
		-0.986272, -0.101535, 0.130220,
		34.565971, 30.875811, 29.256039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991318, 30.505478, 28.559044>,  <35.256363, 30.946884, 29.164885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991318, 30.505478, 28.559044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683441, 30.712805, 28.708134>,  <34.498714, 30.837200, 28.797586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683441, 30.712805, 28.708134>,  <34.991318, 30.505478, 28.559044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683441, 30.712805, 28.708134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189667, 0.371813, -0.908725,
		-0.609591, -0.770132, -0.187874,
		-0.769692, 0.518317, 0.372723,
		34.452534, 30.868299, 28.819950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368641, 30.362925, 28.208286>,  <34.991318, 30.505478, 28.559044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368641, 30.362925, 28.208286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298218, 30.721474, 28.371023>,  <34.255966, 30.936604, 28.468666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298218, 30.721474, 28.371023>,  <34.368641, 30.362925, 28.208286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298218, 30.721474, 28.371023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291290, 0.347351, -0.891346,
		-0.940295, -0.275436, 0.199951,
		-0.176056, 0.896372, 0.406844,
		34.245399, 30.990385, 28.493076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.852943, 30.665794, 27.824030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987968, 31.002487, 27.992569>,  <34.068985, 31.204504, 28.093693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987968, 31.002487, 27.992569>,  <33.852943, 30.665794, 27.824030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987968, 31.002487, 27.992569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276608, 0.516562, -0.810340,
		-0.899743, 0.156994, 0.407204,
		0.337565, 0.841734, 0.421348,
		34.089237, 31.255007, 28.118973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298328, 31.105280, 27.773533>,  <33.852943, 30.665794, 27.824030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298328, 31.105280, 27.773533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619671, 31.340940, 27.808205>,  <33.812477, 31.482336, 27.829008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.619671, 31.340940, 27.808205>,  <33.298328, 31.105280, 27.773533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619671, 31.340940, 27.808205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251387, 0.467482, -0.847505,
		-0.539830, 0.659061, 0.523661,
		0.803360, 0.589150, 0.086682,
		33.860680, 31.517685, 27.834209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081768, 31.771177, 27.598358>,  <33.298328, 31.105280, 27.773533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081768, 31.771177, 27.598358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477795, 31.782610, 27.543283>,  <33.715408, 31.789471, 27.510239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.477795, 31.782610, 27.543283>,  <33.081768, 31.771177, 27.598358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477795, 31.782610, 27.543283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139174, 0.339339, -0.930312,
		0.020131, 0.940230, 0.339945,
		0.990063, 0.028584, -0.137686,
		33.774815, 31.791185, 27.501978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194145, 32.281075, 27.106407>,  <33.081768, 31.771177, 27.598358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194145, 32.281075, 27.106407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531719, 32.070889, 27.063229>,  <33.734264, 31.944777, 27.037321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531719, 32.070889, 27.063229>,  <33.194145, 32.281075, 27.106407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531719, 32.070889, 27.063229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064675, 0.299428, -0.951925,
		0.532530, 0.796382, 0.286683,
		0.843936, -0.525470, -0.107948,
		33.784901, 31.913248, 27.030844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703384, 32.747211, 26.997221>,  <33.194145, 32.281075, 27.106407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703384, 32.747211, 26.997221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831860, 32.396851, 26.853207>,  <33.908943, 32.186634, 26.766798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831860, 32.396851, 26.853207>,  <33.703384, 32.747211, 26.997221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831860, 32.396851, 26.853207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141398, 0.420272, -0.896314,
		0.936400, 0.236978, 0.258838,
		0.321189, -0.875907, -0.360034,
		33.928215, 32.134079, 26.745197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161350, 32.980469, 26.417116>,  <33.703384, 32.747211, 26.997221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161350, 32.980469, 26.417116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154263, 32.584549, 26.360575>,  <34.150009, 32.346996, 26.326651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.154263, 32.584549, 26.360575>,  <34.161350, 32.980469, 26.417116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154263, 32.584549, 26.360575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190978, 0.135421, -0.972208,
		0.981434, -0.044221, 0.186631,
		-0.017719, -0.989801, -0.141352,
		34.148949, 32.287609, 26.318169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776012, 32.630146, 26.173643>,  <34.161350, 32.980469, 26.417116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776012, 32.630146, 26.173643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497417, 32.376778, 26.038774>,  <34.330261, 32.224758, 25.957853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497417, 32.376778, 26.038774>,  <34.776012, 32.630146, 26.173643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497417, 32.376778, 26.038774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233311, 0.244451, -0.941175,
		0.678579, -0.734184, -0.022474,
		-0.696489, -0.633418, -0.337172,
		34.288471, 32.186752, 25.937622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915062, 32.411144, 25.468979>,  <34.776012, 32.630146, 26.173643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915062, 32.411144, 25.468979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532074, 32.297092, 25.486647>,  <34.302280, 32.228661, 25.497248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532074, 32.297092, 25.486647>,  <34.915062, 32.411144, 25.468979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532074, 32.297092, 25.486647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080593, 0.117291, -0.989822,
		0.277047, -0.951285, -0.135282,
		-0.957470, -0.285130, 0.044172,
		34.244831, 32.211552, 25.499899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818874, 31.787125, 25.022026>,  <34.915062, 32.411144, 25.468979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818874, 31.787125, 25.022026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472710, 31.985281, 25.052086>,  <34.265011, 32.104176, 25.070122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472710, 31.985281, 25.052086>,  <34.818874, 31.787125, 25.022026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472710, 31.985281, 25.052086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154956, -0.121977, -0.980362,
		-0.476495, -0.860064, 0.182325,
		-0.865414, 0.495390, 0.075151,
		34.213085, 32.133900, 25.074631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329899, 31.364782, 24.756355>,  <34.818874, 31.787125, 25.022026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329899, 31.364782, 24.756355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.145313, 31.719585, 24.762871>,  <34.034561, 31.932468, 24.766781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.145313, 31.719585, 24.762871>,  <34.329899, 31.364782, 24.756355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145313, 31.719585, 24.762871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255676, -0.115387, -0.959852,
		-0.849517, -0.447103, 0.280034,
		-0.461465, 0.887009, 0.016290,
		34.006874, 31.985687, 24.767757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709343, 31.180937, 24.471991>,  <34.329899, 31.364782, 24.756355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709343, 31.180937, 24.471991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749287, 31.574966, 24.415913>,  <33.773254, 31.811384, 24.382267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.749287, 31.574966, 24.415913>,  <33.709343, 31.180937, 24.471991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749287, 31.574966, 24.415913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165676, -0.122468, -0.978547,
		-0.981111, 0.120948, 0.150973,
		0.099864, 0.985075, -0.140193,
		33.779247, 31.870489, 24.373856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104435, 31.385204, 24.069130>,  <33.709343, 31.180937, 24.471991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104435, 31.385204, 24.069130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361507, 31.690783, 24.045977>,  <33.515751, 31.874130, 24.032085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361507, 31.690783, 24.045977>,  <33.104435, 31.385204, 24.069130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361507, 31.690783, 24.045977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176042, 0.073721, -0.981619,
		-0.745638, 0.641054, 0.181866,
		0.642677, 0.763947, -0.057883,
		33.554310, 31.919968, 24.028612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823193, 31.994892, 23.581362>,  <33.104435, 31.385204, 24.069130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823193, 31.994892, 23.581362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.218357, 32.046158, 23.616232>,  <33.455456, 32.076916, 23.637154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.218357, 32.046158, 23.616232>,  <32.823193, 31.994892, 23.581362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218357, 32.046158, 23.616232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053574, 0.245420, -0.967935,
		-0.145449, 0.960907, 0.235588,
		0.987914, 0.128164, 0.087176,
		33.514732, 32.084606, 23.642385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001202, 32.657482, 23.335457>,  <32.823193, 31.994892, 23.581362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001202, 32.657482, 23.335457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351593, 32.466461, 23.308306>,  <33.561829, 32.351849, 23.292015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351593, 32.466461, 23.308306>,  <33.001202, 32.657482, 23.335457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351593, 32.466461, 23.308306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034008, 0.201515, -0.978895,
		0.481149, 0.855183, 0.192764,
		0.875979, -0.477549, -0.067876,
		33.614388, 32.323196, 23.287943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561153, 33.157574, 23.052372>,  <33.001202, 32.657482, 23.335457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561153, 33.157574, 23.052372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669712, 32.782848, 22.964077>,  <33.734848, 32.558014, 22.911100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.669712, 32.782848, 22.964077>,  <33.561153, 33.157574, 23.052372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669712, 32.782848, 22.964077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071672, 0.248379, -0.966008,
		0.959796, 0.246348, 0.134552,
		0.271394, -0.936814, -0.220737,
		33.751129, 32.501804, 22.897856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995327, 33.324871, 22.585426>,  <33.561153, 33.157574, 23.052372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995327, 33.324871, 22.585426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906586, 32.937874, 22.536867>,  <33.853340, 32.705677, 22.507730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906586, 32.937874, 22.536867>,  <33.995327, 33.324871, 22.585426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906586, 32.937874, 22.536867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029390, 0.117810, -0.992601,
		0.974637, -0.223780, 0.002298,
		-0.221853, -0.967493, -0.121399,
		33.840031, 32.647625, 22.500448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528538, 33.124104, 22.161367>,  <33.995327, 33.324871, 22.585426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528538, 33.124104, 22.161367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249020, 32.841255, 22.118156>,  <34.081310, 32.671547, 22.092230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249020, 32.841255, 22.118156>,  <34.528538, 33.124104, 22.161367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249020, 32.841255, 22.118156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043027, 0.109197, -0.993088,
		0.714027, -0.698613, -0.045881,
		-0.698795, -0.707118, -0.108029,
		34.039383, 32.629120, 22.085749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715996, 32.922180, 21.581802>,  <34.528538, 33.124104, 22.161367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715996, 32.922180, 21.581802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341736, 32.784115, 21.611265>,  <34.117180, 32.701275, 21.628942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.341736, 32.784115, 21.611265>,  <34.715996, 32.922180, 21.581802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341736, 32.784115, 21.611265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123314, 0.124165, -0.984569,
		0.330692, -0.930293, -0.158739,
		-0.935647, -0.345163, 0.073658,
		34.061043, 32.680565, 21.633362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650864, 32.507996, 20.958294>,  <34.715996, 32.922180, 21.581802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650864, 32.507996, 20.958294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274776, 32.599751, 21.058985>,  <34.049122, 32.654804, 21.119398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.274776, 32.599751, 21.058985>,  <34.650864, 32.507996, 20.958294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274776, 32.599751, 21.058985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140465, 0.412143, -0.900227,
		-0.310251, -0.881770, -0.355284,
		-0.940220, 0.229391, 0.251725,
		33.992710, 32.668568, 21.134502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263012, 32.481731, 20.255964>,  <34.650864, 32.507996, 20.958294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263012, 32.481731, 20.255964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992847, 32.668537, 20.484253>,  <33.830750, 32.780621, 20.621225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992847, 32.668537, 20.484253>,  <34.263012, 32.481731, 20.255964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992847, 32.668537, 20.484253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384419, 0.437480, -0.812916,
		-0.629319, -0.768448, -0.115950,
		-0.675410, 0.467011, 0.570721,
		33.790226, 32.808640, 20.655470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615265, 32.286961, 20.029356>,  <34.263012, 32.481731, 20.255964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615265, 32.286961, 20.029356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607140, 32.649597, 20.197962>,  <33.602264, 32.867180, 20.299126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607140, 32.649597, 20.197962>,  <33.615265, 32.286961, 20.029356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607140, 32.649597, 20.197962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411654, 0.376624, -0.829877,
		-0.911114, -0.190374, 0.365553,
		-0.020311, 0.906594, 0.421516,
		33.601048, 32.921574, 20.324417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965263, 32.498055, 19.957067>,  <33.615265, 32.286961, 20.029356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965263, 32.498055, 19.957067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135387, 32.857033, 20.003881>,  <33.237461, 33.072422, 20.031969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135387, 32.857033, 20.003881>,  <32.965263, 32.498055, 19.957067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135387, 32.857033, 20.003881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506096, 0.343036, -0.791323,
		-0.750320, 0.277325, 0.600092,
		0.425307, 0.897450, 0.117034,
		33.262981, 33.126266, 20.038992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482632, 32.989285, 20.124878>,  <32.965263, 32.498055, 19.957067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482632, 32.989285, 20.124878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771202, 33.201477, 19.946833>,  <32.944344, 33.328793, 19.840006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771202, 33.201477, 19.946833>,  <32.482632, 32.989285, 20.124878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771202, 33.201477, 19.946833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679381, 0.417724, -0.603281,
		-0.134097, 0.737626, 0.661760,
		0.721429, 0.530485, -0.445113,
		32.987629, 33.360622, 19.813299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166565, 33.601868, 19.903374>,  <32.482632, 32.989285, 20.124878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166565, 33.601868, 19.903374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503586, 33.568054, 19.690596>,  <32.705799, 33.547764, 19.562929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.503586, 33.568054, 19.690596>,  <32.166565, 33.601868, 19.903374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503586, 33.568054, 19.690596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432432, 0.482624, -0.761628,
		0.321116, 0.871738, 0.370077,
		0.842548, -0.084538, -0.531945,
		32.756351, 33.542694, 19.531012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244141, 34.099453, 19.325554>,  <32.166565, 33.601868, 19.903374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244141, 34.099453, 19.325554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886347, 34.228817, 19.449038>,  <31.671671, 34.306435, 19.523129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886347, 34.228817, 19.449038>,  <32.244141, 34.099453, 19.325554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886347, 34.228817, 19.449038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367966, 0.140306, 0.919192,
		0.253965, 0.935798, -0.244507,
		-0.894484, 0.323413, 0.308710,
		31.618002, 34.325840, 19.541651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439331, 34.493835, 19.887148>,  <32.244141, 34.099453, 19.325554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439331, 34.493835, 19.887148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044350, 34.475613, 19.947628>,  <31.807362, 34.464680, 19.983915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044350, 34.475613, 19.947628>,  <32.439331, 34.493835, 19.887148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044350, 34.475613, 19.947628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148179, 0.063645, 0.986911,
		-0.054584, 0.996932, -0.056096,
		-0.987453, -0.045557, 0.151198,
		31.748114, 34.461945, 19.992987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232018, 35.037086, 20.321737>,  <32.439331, 34.493835, 19.887148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232018, 35.037086, 20.321737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950153, 34.756931, 20.367195>,  <31.781034, 34.588837, 20.394470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950153, 34.756931, 20.367195>,  <32.232018, 35.037086, 20.321737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950153, 34.756931, 20.367195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153728, 0.005665, 0.988097,
		-0.692693, 0.713741, 0.103677,
		-0.704659, -0.700386, 0.113646,
		31.738756, 34.546814, 20.401289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716610, 35.323917, 20.882877>,  <32.232018, 35.037086, 20.321737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716610, 35.323917, 20.882877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640265, 34.932304, 20.854383>,  <31.594458, 34.697338, 20.837288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640265, 34.932304, 20.854383>,  <31.716610, 35.323917, 20.882877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640265, 34.932304, 20.854383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030619, -0.078470, 0.996446,
		-0.981139, 0.188003, 0.044954,
		-0.190863, -0.979029, -0.071233,
		31.583006, 34.638596, 20.833014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149750, 35.136456, 21.346058>,  <31.716610, 35.323917, 20.882877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149750, 35.136456, 21.346058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344416, 34.795155, 21.271093>,  <31.461216, 34.590374, 21.226114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.344416, 34.795155, 21.271093>,  <31.149750, 35.136456, 21.346058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344416, 34.795155, 21.271093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110027, -0.272691, 0.955790,
		-0.866633, -0.444528, -0.226589,
		0.486664, -0.853249, -0.187413,
		31.490416, 34.539181, 21.214869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646677, 34.582592, 21.561222>,  <31.149750, 35.136456, 21.346058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646677, 34.582592, 21.561222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004049, 34.403061, 21.553911>,  <31.218473, 34.295341, 21.549524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.004049, 34.403061, 21.553911>,  <30.646677, 34.582592, 21.561222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004049, 34.403061, 21.553911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121961, -0.281532, 0.951769,
		-0.432325, -0.848112, -0.306269,
		0.893432, -0.448827, -0.018277,
		31.272079, 34.268414, 21.548428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584703, 33.979191, 22.026764>,  <30.646677, 34.582592, 21.561222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584703, 33.979191, 22.026764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978310, 34.045185, 21.999962>,  <31.214474, 34.084782, 21.983881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978310, 34.045185, 21.999962>,  <30.584703, 33.979191, 22.026764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978310, 34.045185, 21.999962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086708, -0.115271, 0.989542,
		0.155541, -0.979536, -0.127734,
		0.984016, 0.164990, -0.067004,
		31.273514, 34.094681, 21.979860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878307, 33.501877, 22.404408>,  <30.584703, 33.979191, 22.026764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878307, 33.501877, 22.404408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160082, 33.784752, 22.380226>,  <31.329145, 33.954479, 22.365717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.160082, 33.784752, 22.380226>,  <30.878307, 33.501877, 22.404408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160082, 33.784752, 22.380226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084988, 0.000516, 0.996382,
		0.704663, -0.707023, -0.059739,
		0.704434, 0.707190, -0.060452,
		31.371412, 33.996910, 22.362091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514523, 33.235298, 22.748363>,  <30.878307, 33.501877, 22.404408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514523, 33.235298, 22.748363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536182, 33.634624, 22.756653>,  <31.549179, 33.874222, 22.761625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536182, 33.634624, 22.756653>,  <31.514523, 33.235298, 22.748363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536182, 33.634624, 22.756653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124371, -0.027333, 0.991859,
		0.990757, -0.051134, -0.125642,
		0.054152, 0.998318, 0.020721,
		31.552427, 33.934120, 22.762869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159805, 33.428024, 22.969671>,  <31.514523, 33.235298, 22.748363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159805, 33.428024, 22.969671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904297, 33.719120, 23.069571>,  <31.750992, 33.893776, 23.129511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904297, 33.719120, 23.069571>,  <32.159805, 33.428024, 22.969671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904297, 33.719120, 23.069571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180109, -0.174149, 0.968108,
		0.748020, 0.663379, -0.019831,
		-0.638769, 0.727736, 0.249748,
		31.712666, 33.937439, 23.144495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579693, 33.927383, 23.341019>,  <32.159805, 33.428024, 22.969671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579693, 33.927383, 23.341019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190323, 33.921173, 23.432407>,  <31.956701, 33.917446, 23.487240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190323, 33.921173, 23.432407>,  <32.579693, 33.927383, 23.341019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190323, 33.921173, 23.432407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228924, -0.091378, 0.969146,
		0.005826, 0.995695, 0.092505,
		-0.973427, -0.015530, 0.228471,
		31.898294, 33.916515, 23.500948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630524, 34.152054, 23.976408>,  <32.579693, 33.927383, 23.341019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630524, 34.152054, 23.976408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276474, 33.966019, 23.970058>,  <32.064045, 33.854397, 23.966248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276474, 33.966019, 23.970058>,  <32.630524, 34.152054, 23.976408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276474, 33.966019, 23.970058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162762, -0.341351, 0.925737,
		-0.435972, 0.816804, 0.377836,
		-0.885120, -0.465092, -0.015875,
		32.010937, 33.826492, 23.965296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384640, 34.255840, 24.638403>,  <32.630524, 34.152054, 23.976408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384640, 34.255840, 24.638403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172985, 33.953072, 24.485001>,  <32.045990, 33.771408, 24.392960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.172985, 33.953072, 24.485001>,  <32.384640, 34.255840, 24.638403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172985, 33.953072, 24.485001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047792, -0.477829, 0.877152,
		-0.847188, 0.445807, 0.289013,
		-0.529139, -0.756925, -0.383505,
		32.014244, 33.725994, 24.369949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111877, 34.057999, 25.218472>,  <32.384640, 34.255840, 24.638403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111877, 34.057999, 25.218472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996029, 33.759518, 24.978706>,  <31.926521, 33.580429, 24.834846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996029, 33.759518, 24.978706>,  <32.111877, 34.057999, 25.218472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996029, 33.759518, 24.978706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081070, -0.604880, 0.792179,
		-0.953703, 0.278025, 0.114689,
		-0.289619, -0.746205, -0.599415,
		31.909143, 33.535656, 24.798882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465755, 33.846462, 25.499365>,  <32.111877, 34.057999, 25.218472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465755, 33.846462, 25.499365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613901, 33.544941, 25.282249>,  <31.702787, 33.364029, 25.151981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.613901, 33.544941, 25.282249>,  <31.465755, 33.846462, 25.499365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613901, 33.544941, 25.282249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314834, -0.651622, 0.690122,
		-0.873906, -0.084707, -0.478658,
		0.370362, -0.753799, -0.542787,
		31.725010, 33.318802, 25.119413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968121, 33.381897, 25.514933>,  <31.465755, 33.846462, 25.499365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968121, 33.381897, 25.514933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278566, 33.157524, 25.399691>,  <31.464834, 33.022900, 25.330545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278566, 33.157524, 25.399691>,  <30.968121, 33.381897, 25.514933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278566, 33.157524, 25.399691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270248, -0.708666, 0.651734,
		-0.569744, -0.427963, -0.701598,
		0.776117, -0.560928, -0.288102,
		31.511402, 32.989246, 25.313259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652176, 32.662918, 25.325684>,  <30.968121, 33.381897, 25.514933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652176, 32.662918, 25.325684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037525, 32.631336, 25.428192>,  <31.268736, 32.612389, 25.489698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037525, 32.631336, 25.428192>,  <30.652176, 32.662918, 25.325684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037525, 32.631336, 25.428192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254776, -0.567644, 0.782860,
		0.083660, -0.819479, -0.566970,
		0.963374, -0.078956, 0.256273,
		31.326538, 32.607651, 25.505074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730749, 31.916843, 25.494867>,  <30.652176, 32.662918, 25.325684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730749, 31.916843, 25.494867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.040672, 32.107708, 25.660753>,  <31.226625, 32.222229, 25.760284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.040672, 32.107708, 25.660753>,  <30.730749, 31.916843, 25.494867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040672, 32.107708, 25.660753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073747, -0.583295, 0.808906,
		0.627882, -0.657329, -0.416752,
		0.774807, 0.477164, 0.414716,
		31.273115, 32.250858, 25.785168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114943, 31.352442, 25.896585>,  <30.730749, 31.916843, 25.494867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114943, 31.352442, 25.896585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285603, 31.686504, 26.035427>,  <31.387999, 31.886942, 26.118732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285603, 31.686504, 26.035427>,  <31.114943, 31.352442, 25.896585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285603, 31.686504, 26.035427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153801, -0.445197, 0.882125,
		0.891244, -0.322973, -0.318391,
		0.426650, 0.835157, 0.347105,
		31.413597, 31.937052, 26.139559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690292, 31.114656, 26.377062>,  <31.114943, 31.352442, 25.896585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690292, 31.114656, 26.377062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615915, 31.495865, 26.472706>,  <31.571289, 31.724590, 26.530092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.615915, 31.495865, 26.472706>,  <31.690292, 31.114656, 26.377062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615915, 31.495865, 26.472706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185541, -0.273032, 0.943943,
		0.964884, 0.131153, 0.227592,
		-0.185941, 0.953023, 0.239109,
		31.560133, 31.781773, 26.544439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.187759, 29.524559, 29.944540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.902588, 29.689871, 30.171144>,  <34.731483, 29.789059, 30.307106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.902588, 29.689871, 30.171144>,  <35.187759, 29.524559, 29.944540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902588, 29.689871, 30.171144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437163, -0.369725, 0.819873,
		0.548290, 0.832167, 0.082916,
		-0.712928, 0.413280, 0.566510,
		34.688709, 29.813854, 30.341097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541370, 29.749111, 30.564531>,  <35.187759, 29.524559, 29.944540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541370, 29.749111, 30.564531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.158020, 29.746225, 30.678692>,  <34.928009, 29.744493, 30.747189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.158020, 29.746225, 30.678692>,  <35.541370, 29.749111, 30.564531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158020, 29.746225, 30.678692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284134, -0.121571, 0.951046,
		0.027836, 0.992556, 0.118561,
		-0.958381, -0.007214, 0.285403,
		34.870506, 29.744061, 30.764313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441753, 30.291967, 31.034006>,  <35.541370, 29.749111, 30.564531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441753, 30.291967, 31.034006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.192200, 29.983425, 31.084255>,  <35.042469, 29.798300, 31.114405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.192200, 29.983425, 31.084255>,  <35.441753, 30.291967, 31.034006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192200, 29.983425, 31.084255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303640, -0.091126, 0.948419,
		-0.720122, 0.629845, 0.291067,
		-0.623881, -0.771357, 0.125624,
		35.005035, 29.752018, 31.121943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046970, 30.483271, 31.582264>,  <35.441753, 30.291967, 31.034006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046970, 30.483271, 31.582264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027103, 30.083765, 31.582678>,  <35.015182, 29.844061, 31.582926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027103, 30.083765, 31.582678>,  <35.046970, 30.483271, 31.582264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027103, 30.083765, 31.582678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277313, -0.012793, 0.960694,
		-0.959495, 0.048001, 0.277606,
		-0.049666, -0.998765, 0.001037,
		35.012203, 29.784136, 31.582989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803555, 30.337469, 32.190212>,  <35.046970, 30.483271, 31.582264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803555, 30.337469, 32.190212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.953293, 29.980690, 32.088787>,  <35.043137, 29.766623, 32.027931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.953293, 29.980690, 32.088787>,  <34.803555, 30.337469, 32.190212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953293, 29.980690, 32.088787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139299, -0.216250, 0.966350,
		-0.916765, -0.397073, 0.043294,
		0.374349, -0.891947, -0.253563,
		35.065598, 29.713106, 32.012718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417290, 29.837931, 32.506817>,  <34.803555, 30.337469, 32.190212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417290, 29.837931, 32.506817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.777412, 29.671898, 32.454430>,  <34.993488, 29.572279, 32.422997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.777412, 29.671898, 32.454430>,  <34.417290, 29.837931, 32.506817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777412, 29.671898, 32.454430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074487, -0.149530, 0.985947,
		-0.428832, -0.897412, -0.103705,
		0.900308, -0.415081, -0.130969,
		35.047504, 29.547373, 32.415138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373009, 29.259014, 33.005730>,  <34.417290, 29.837931, 32.506817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373009, 29.259014, 33.005730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757278, 29.310776, 32.907452>,  <34.987839, 29.341833, 32.848484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757278, 29.310776, 32.907452>,  <34.373009, 29.259014, 33.005730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757278, 29.310776, 32.907452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273059, -0.279339, 0.920548,
		0.050489, -0.951433, -0.303688,
		0.960671, 0.129402, -0.245693,
		35.045479, 29.349596, 32.833744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645393, 28.850943, 33.462582>,  <34.373009, 29.259014, 33.005730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645393, 28.850943, 33.462582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.947754, 29.074354, 33.325958>,  <35.129169, 29.208401, 33.243984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.947754, 29.074354, 33.325958>,  <34.645393, 28.850943, 33.462582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947754, 29.074354, 33.325958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450963, -0.065998, 0.890099,
		0.474604, -0.826856, -0.301764,
		0.755899, 0.558528, -0.341559,
		35.174522, 29.241913, 33.223492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124226, 28.506344, 33.731823>,  <34.645393, 28.850943, 33.462582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124226, 28.506344, 33.731823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.273212, 28.864994, 33.636047>,  <35.362606, 29.080185, 33.578583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.273212, 28.864994, 33.636047>,  <35.124226, 28.506344, 33.731823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273212, 28.864994, 33.636047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397478, 0.079017, 0.914203,
		0.838617, -0.435682, -0.326958,
		0.372467, 0.896625, -0.239440,
		35.384953, 29.133982, 33.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706364, 28.454985, 33.996628>,  <35.124226, 28.506344, 33.731823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706364, 28.454985, 33.996628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648281, 28.848494, 33.954472>,  <35.613430, 29.084599, 33.929180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.648281, 28.848494, 33.954472>,  <35.706364, 28.454985, 33.996628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648281, 28.848494, 33.954472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402870, 0.156076, 0.901851,
		0.903665, 0.088500, -0.418996,
		-0.145209, 0.983772, -0.105386,
		35.604717, 29.143625, 33.922855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364052, 28.824261, 34.228027>,  <35.706364, 28.454985, 33.996628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364052, 28.824261, 34.228027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.066868, 29.091772, 34.238937>,  <35.888557, 29.252279, 34.245483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.066868, 29.091772, 34.238937>,  <36.364052, 28.824261, 34.228027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066868, 29.091772, 34.238937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162082, 0.140226, 0.976763,
		0.649412, 0.730119, -0.212579,
		-0.742962, 0.668777, 0.027275,
		35.843979, 29.292406, 34.247120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657097, 29.352797, 34.505875>,  <36.364052, 28.824261, 34.228027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657097, 29.352797, 34.505875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265568, 29.426882, 34.540737>,  <36.030651, 29.471333, 34.561657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265568, 29.426882, 34.540737>,  <36.657097, 29.352797, 34.505875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265568, 29.426882, 34.540737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130313, 0.235450, 0.963111,
		0.157860, 0.954075, -0.254600,
		-0.978825, 0.185215, 0.087160,
		35.971920, 29.482447, 34.566887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553738, 29.965322, 34.858204>,  <36.657097, 29.352797, 34.505875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553738, 29.965322, 34.858204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.221672, 29.761286, 34.948208>,  <36.022430, 29.638863, 35.002209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.221672, 29.761286, 34.948208>,  <36.553738, 29.965322, 34.858204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221672, 29.761286, 34.948208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242642, 0.032796, 0.969561,
		-0.501946, 0.859494, 0.096544,
		-0.830166, -0.510093, 0.225011,
		35.972622, 29.608257, 35.015713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726242, 30.780451, 34.706249>,  <36.553738, 29.965322, 34.858204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726242, 30.780451, 34.706249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931885, 30.958244, 34.999676>,  <37.055271, 31.064920, 35.175732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931885, 30.958244, 34.999676>,  <36.726242, 30.780451, 34.706249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931885, 30.958244, 34.999676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131838, 0.886039, -0.444471,
		-0.847531, 0.131794, 0.514122,
		0.514110, 0.444484, 0.733570,
		37.086117, 31.091589, 35.219746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353836, 31.367416, 35.147087>,  <36.726242, 30.780451, 34.706249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353836, 31.367416, 35.147087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.743046, 31.422636, 35.073151>,  <36.976570, 31.455769, 35.028790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.743046, 31.422636, 35.073151>,  <36.353836, 31.367416, 35.147087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743046, 31.422636, 35.073151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211324, 0.854776, -0.474026,
		0.092562, 0.500301, 0.860890,
		0.973024, 0.138050, -0.184846,
		37.034954, 31.464050, 35.017696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545952, 32.069939, 35.324924>,  <36.353836, 31.367416, 35.147087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545952, 32.069939, 35.324924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.828312, 31.937267, 35.074581>,  <36.997726, 31.857664, 34.924377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.828312, 31.937267, 35.074581>,  <36.545952, 32.069939, 35.324924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828312, 31.937267, 35.074581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090058, 0.834387, -0.543772,
		0.702565, 0.440210, 0.559122,
		0.705898, -0.331682, -0.625856,
		37.040081, 31.837763, 34.886826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946335, 32.658279, 35.209213>,  <36.545952, 32.069939, 35.324924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946335, 32.658279, 35.209213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.026516, 32.413548, 34.903145>,  <37.074623, 32.266708, 34.719505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.026516, 32.413548, 34.903145>,  <36.946335, 32.658279, 35.209213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026516, 32.413548, 34.903145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054196, 0.772898, -0.632211,
		0.978203, 0.168197, 0.121770,
		0.200452, -0.611831, -0.765168,
		37.086651, 32.230000, 34.673595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298965, 33.082584, 34.806293>,  <36.946335, 32.658279, 35.209213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298965, 33.082584, 34.806293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.225693, 32.782196, 34.552525>,  <37.181728, 32.601963, 34.400265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.225693, 32.782196, 34.552525>,  <37.298965, 33.082584, 34.806293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225693, 32.782196, 34.552525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012031, 0.647007, -0.762389,
		0.983006, -0.132020, -0.127552,
		-0.183178, -0.750968, -0.634423,
		37.170738, 32.556904, 34.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816700, 33.141369, 34.161034>,  <37.298965, 33.082584, 34.806293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816700, 33.141369, 34.161034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471203, 32.948013, 34.104057>,  <37.263905, 32.832001, 34.069874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.471203, 32.948013, 34.104057>,  <37.816700, 33.141369, 34.161034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471203, 32.948013, 34.104057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189318, 0.573201, -0.797245,
		0.467023, -0.661647, -0.586611,
		-0.863741, -0.483387, -0.142436,
		37.212082, 32.802998, 34.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748348, 33.227924, 33.521870>,  <37.816700, 33.141369, 34.161034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748348, 33.227924, 33.521870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385521, 33.103306, 33.635120>,  <37.167824, 33.028534, 33.703072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385521, 33.103306, 33.635120>,  <37.748348, 33.227924, 33.521870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385521, 33.103306, 33.635120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403094, 0.448829, -0.797538,
		0.121399, -0.837549, -0.532704,
		-0.907071, -0.311551, 0.283124,
		37.113400, 33.009842, 33.720058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446434, 33.057121, 32.909668>,  <37.748348, 33.227924, 33.521870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446434, 33.057121, 32.909668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139561, 33.128067, 33.156235>,  <36.955437, 33.170635, 33.304173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139561, 33.128067, 33.156235>,  <37.446434, 33.057121, 32.909668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139561, 33.128067, 33.156235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431718, 0.567963, -0.700741,
		-0.474387, -0.803716, -0.359162,
		-0.767188, 0.177366, 0.616413,
		36.909405, 33.181278, 33.341160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001873, 33.209316, 32.361641>,  <37.446434, 33.057121, 32.909668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001873, 33.209316, 32.361641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807648, 33.285660, 32.702885>,  <36.691113, 33.331467, 32.907631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.807648, 33.285660, 32.702885>,  <37.001873, 33.209316, 32.361641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807648, 33.285660, 32.702885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755546, 0.399274, -0.519355,
		-0.439749, -0.896746, -0.049670,
		-0.485562, 0.190859, 0.853114,
		36.661980, 33.342918, 32.958820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301785, 32.936386, 32.327328>,  <37.001873, 33.209316, 32.361641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301785, 32.936386, 32.327328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.312111, 33.248356, 32.577465>,  <36.318306, 33.435535, 32.727547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.312111, 33.248356, 32.577465>,  <36.301785, 32.936386, 32.327328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312111, 33.248356, 32.577465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711450, 0.453786, -0.536579,
		-0.702262, -0.431049, 0.566590,
		0.025818, 0.779920, 0.625347,
		36.319855, 33.482330, 32.765068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600376, 33.085052, 32.380920>,  <36.301785, 32.936386, 32.327328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600376, 33.085052, 32.380920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785538, 33.412338, 32.517296>,  <35.896637, 33.608711, 32.599121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.785538, 33.412338, 32.517296>,  <35.600376, 33.085052, 32.380920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785538, 33.412338, 32.517296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508434, 0.560159, -0.654000,
		-0.726094, 0.129396, 0.675311,
		0.462907, 0.818216, 0.340938,
		35.924408, 33.657803, 32.619576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104942, 33.551727, 32.451687>,  <35.600376, 33.085052, 32.380920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104942, 33.551727, 32.451687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445213, 33.757034, 32.406242>,  <35.649376, 33.880219, 32.378975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445213, 33.757034, 32.406242>,  <35.104942, 33.551727, 32.451687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445213, 33.757034, 32.406242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392114, 0.475579, -0.787446,
		-0.350145, 0.714406, 0.605823,
		0.850673, 0.513272, -0.113607,
		35.700417, 33.911015, 32.372162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859837, 34.192074, 32.270897>,  <35.104942, 33.551727, 32.451687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859837, 34.192074, 32.270897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.239998, 34.182396, 32.146870>,  <35.468094, 34.176590, 32.072453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.239998, 34.182396, 32.146870>,  <34.859837, 34.192074, 32.270897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239998, 34.182396, 32.146870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252461, 0.522217, -0.814587,
		0.181627, 0.852469, 0.490212,
		0.950408, -0.024192, -0.310064,
		35.525120, 34.175137, 32.053852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005928, 34.908512, 31.988552>,  <34.859837, 34.192074, 32.270897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005928, 34.908512, 31.988552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.274994, 34.656254, 31.833733>,  <35.436432, 34.504898, 31.740841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.274994, 34.656254, 31.833733>,  <35.005928, 34.908512, 31.988552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274994, 34.656254, 31.833733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201657, 0.347034, -0.915916,
		0.711939, 0.694155, 0.106262,
		0.672664, -0.630648, -0.387049,
		35.476791, 34.467060, 31.717617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378986, 35.247734, 31.412840>,  <35.005928, 34.908512, 31.988552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378986, 35.247734, 31.412840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.437519, 34.857365, 31.348143>,  <35.472637, 34.623142, 31.309324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.437519, 34.857365, 31.348143>,  <35.378986, 35.247734, 31.412840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437519, 34.857365, 31.348143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221405, 0.127047, -0.966871,
		0.964141, 0.177294, -0.197484,
		0.146330, -0.975923, -0.161745,
		35.481419, 34.564587, 31.299620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604282, 35.887878, 31.685471>,  <35.378986, 35.247734, 31.412840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604282, 35.887878, 31.685471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401646, 36.232494, 31.698774>,  <35.280064, 36.439266, 31.706757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401646, 36.232494, 31.698774>,  <35.604282, 35.887878, 31.685471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401646, 36.232494, 31.698774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178378, -0.142475, 0.973593,
		0.843531, 0.487282, 0.225857,
		-0.506593, 0.861544, 0.033262,
		35.249668, 36.490959, 31.708754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820534, 36.440121, 32.238796>,  <35.604282, 35.887878, 31.685471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820534, 36.440121, 32.238796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.427605, 36.490974, 32.183838>,  <35.191849, 36.521488, 32.150864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.427605, 36.490974, 32.183838>,  <35.820534, 36.440121, 32.238796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427605, 36.490974, 32.183838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147782, -0.076199, 0.986080,
		0.114895, 0.988954, 0.093640,
		-0.982324, 0.127134, -0.137395,
		35.132908, 36.529114, 32.142620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660294, 36.817043, 32.861240>,  <35.820534, 36.440121, 32.238796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660294, 36.817043, 32.861240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.319530, 36.682915, 32.700336>,  <35.115074, 36.602440, 32.603794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.319530, 36.682915, 32.700336>,  <35.660294, 36.817043, 32.861240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319530, 36.682915, 32.700336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473614, 0.165526, 0.865038,
		-0.223480, 0.927449, -0.299825,
		-0.851908, -0.335320, -0.402261,
		35.063957, 36.582317, 32.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137745, 37.312550, 32.923546>,  <35.660294, 36.817043, 32.861240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137745, 37.312550, 32.923546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.944878, 36.962349, 32.910862>,  <34.829159, 36.752228, 32.903252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.944878, 36.962349, 32.910862>,  <35.137745, 37.312550, 32.923546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944878, 36.962349, 32.910862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327106, 0.146338, 0.933588,
		-0.812721, 0.460518, -0.356942,
		-0.482168, -0.875505, -0.031706,
		34.800228, 36.699696, 32.901352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516830, 37.371796, 33.337555>,  <35.137745, 37.312550, 32.923546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516830, 37.371796, 33.337555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.515545, 36.972866, 33.308365>,  <34.514774, 36.733509, 33.290852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.515545, 36.972866, 33.308365>,  <34.516830, 37.371796, 33.337555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515545, 36.972866, 33.308365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590695, -0.056993, 0.804880,
		-0.806888, 0.045697, -0.588934,
		-0.003216, -0.997328, -0.072980,
		34.514580, 36.673668, 33.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836269, 37.152859, 33.528748>,  <34.516830, 37.371796, 33.337555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836269, 37.152859, 33.528748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.071259, 36.832642, 33.576077>,  <34.212254, 36.640511, 33.604473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.071259, 36.832642, 33.576077>,  <33.836269, 37.152859, 33.528748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071259, 36.832642, 33.576077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507083, -0.250219, 0.824777,
		-0.630666, -0.544533, -0.552941,
		0.587475, -0.800546, 0.118319,
		34.247501, 36.592480, 33.611572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361988, 36.678864, 33.795456>,  <33.836269, 37.152859, 33.528748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361988, 36.678864, 33.795456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.730484, 36.541004, 33.867603>,  <33.951580, 36.458286, 33.910892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.730484, 36.541004, 33.867603>,  <33.361988, 36.678864, 33.795456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730484, 36.541004, 33.867603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306394, -0.357235, 0.882330,
		-0.239663, -0.868100, -0.434699,
		0.921241, -0.344651, 0.180365,
		34.006855, 36.437611, 33.921711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293964, 36.022331, 33.863270>,  <33.361988, 36.678864, 33.795456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293964, 36.022331, 33.863270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.622826, 36.093487, 34.079575>,  <33.820141, 36.136181, 34.209358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.622826, 36.093487, 34.079575>,  <33.293964, 36.022331, 33.863270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622826, 36.093487, 34.079575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417487, -0.457362, 0.785191,
		0.386997, -0.871307, -0.301757,
		0.822154, 0.177887, 0.540757,
		33.869473, 36.146854, 34.241802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214901, 35.498714, 34.368958>,  <33.293964, 36.022331, 33.863270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214901, 35.498714, 34.368958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.504906, 35.738201, 34.505135>,  <33.678909, 35.881893, 34.586842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.504906, 35.738201, 34.505135>,  <33.214901, 35.498714, 34.368958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504906, 35.738201, 34.505135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138462, -0.357507, 0.923589,
		0.674680, -0.716747, -0.176296,
		0.725007, 0.598717, 0.340445,
		33.722408, 35.917816, 34.607269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725502, 35.152519, 34.668221>,  <33.214901, 35.498714, 34.368958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725502, 35.152519, 34.668221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.717976, 35.510208, 34.847111>,  <33.713459, 35.724823, 34.954445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.717976, 35.510208, 34.847111>,  <33.725502, 35.152519, 34.668221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717976, 35.510208, 34.847111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097432, -0.446814, 0.889306,
		0.995064, -0.026840, 0.095533,
		-0.018816, 0.894224, 0.447223,
		33.712330, 35.778477, 34.981277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089745, 35.063663, 35.263710>,  <33.725502, 35.152519, 34.668221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089745, 35.063663, 35.263710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.855362, 35.380966, 35.329918>,  <33.714733, 35.571350, 35.369640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.855362, 35.380966, 35.329918>,  <34.089745, 35.063663, 35.263710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855362, 35.380966, 35.329918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239361, -0.364573, 0.899885,
		0.774186, 0.487673, 0.403499,
		-0.585955, 0.793260, 0.165517,
		33.679577, 35.618942, 35.379574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195980, 35.139816, 36.046562>,  <34.089745, 35.063663, 35.263710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195980, 35.139816, 36.046562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.894962, 35.386307, 35.953667>,  <33.714352, 35.534203, 35.897930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.894962, 35.386307, 35.953667>,  <34.195980, 35.139816, 36.046562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894962, 35.386307, 35.953667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518988, -0.337885, 0.785166,
		0.405371, 0.711404, 0.574089,
		-0.752546, 0.616229, -0.232242,
		33.669197, 35.571175, 35.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.119656, 37.887287, 28.201464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723225, 37.842575, 28.230495>,  <35.485367, 37.815746, 28.247915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723225, 37.842575, 28.230495>,  <36.119656, 37.887287, 28.201464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723225, 37.842575, 28.230495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059455, 0.116585, 0.991400,
		-0.119279, 0.986871, -0.108899,
		-0.991079, -0.111779, 0.072581,
		35.425900, 37.809040, 28.252270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880192, 38.366867, 28.692701>,  <36.119656, 37.887287, 28.201464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880192, 38.366867, 28.692701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576298, 38.106831, 28.698088>,  <35.393959, 37.950809, 28.701319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576298, 38.106831, 28.698088>,  <35.880192, 38.366867, 28.692701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576298, 38.106831, 28.698088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064661, 0.096139, 0.993265,
		-0.647005, 0.753752, -0.115076,
		-0.759739, -0.650089, 0.013464,
		35.348377, 37.911804, 28.702127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228973, 38.629791, 29.099405>,  <35.880192, 38.366867, 28.692701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228973, 38.629791, 29.099405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235859, 38.229954, 29.090321>,  <35.239990, 37.990051, 29.084869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235859, 38.229954, 29.090321>,  <35.228973, 38.629791, 29.099405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235859, 38.229954, 29.090321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036588, -0.023330, 0.999058,
		-0.999182, -0.016365, -0.036974,
		0.017212, -0.999594, -0.022712,
		35.241024, 37.930077, 29.083508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654961, 38.374367, 29.535587>,  <35.228973, 38.629791, 29.099405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654961, 38.374367, 29.535587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825893, 38.015018, 29.494946>,  <34.928452, 37.799412, 29.470560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825893, 38.015018, 29.494946>,  <34.654961, 38.374367, 29.535587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825893, 38.015018, 29.494946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284365, -0.240235, 0.928129,
		-0.858211, -0.367724, -0.358124,
		0.427329, -0.898369, -0.101605,
		34.954094, 37.745506, 29.464464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246017, 37.937954, 30.054523>,  <34.654961, 38.374367, 29.535587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246017, 37.937954, 30.054523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599705, 37.763206, 29.988426>,  <34.811916, 37.658356, 29.948769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599705, 37.763206, 29.988426>,  <34.246017, 37.937954, 30.054523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599705, 37.763206, 29.988426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080701, -0.491355, 0.867213,
		-0.460044, -0.753472, -0.469722,
		0.884221, -0.436864, -0.165239,
		34.864971, 37.632145, 29.938854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157887, 37.254505, 30.322123>,  <34.246017, 37.937954, 30.054523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157887, 37.254505, 30.322123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555294, 37.299919, 30.319990>,  <34.793739, 37.327168, 30.318710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555294, 37.299919, 30.319990>,  <34.157887, 37.254505, 30.322123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555294, 37.299919, 30.319990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055843, -0.446727, 0.892926,
		0.098996, -0.887437, -0.450172,
		0.993520, 0.113535, -0.005333,
		34.853352, 37.333981, 30.318390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408157, 36.640903, 30.425085>,  <34.157887, 37.254505, 30.322123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408157, 36.640903, 30.425085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743851, 36.844032, 30.502865>,  <34.945267, 36.965908, 30.549532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743851, 36.844032, 30.502865>,  <34.408157, 36.640903, 30.425085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743851, 36.844032, 30.502865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084229, -0.474672, 0.876123,
		0.537214, -0.718890, -0.441132,
		0.839230, 0.507822, 0.194449,
		34.995621, 36.996380, 30.561199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870068, 36.185162, 30.576714>,  <34.408157, 36.640903, 30.425085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870068, 36.185162, 30.576714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981518, 36.531296, 30.743359>,  <35.048389, 36.738976, 30.843346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981518, 36.531296, 30.743359>,  <34.870068, 36.185162, 30.576714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981518, 36.531296, 30.743359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062523, -0.449213, 0.891234,
		0.958362, -0.222273, -0.179266,
		0.278626, 0.865334, 0.416612,
		35.065105, 36.790897, 30.868341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438969, 35.939106, 30.974277>,  <34.870068, 36.185162, 30.576714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438969, 35.939106, 30.974277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338055, 36.297455, 31.120571>,  <35.277508, 36.512466, 31.208347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338055, 36.297455, 31.120571>,  <35.438969, 35.939106, 30.974277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338055, 36.297455, 31.120571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007561, -0.376125, 0.926538,
		0.967624, 0.236514, 0.088116,
		-0.252282, 0.895874, 0.365736,
		35.262371, 36.566216, 31.230291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802898, 35.316860, 30.768923>,  <35.438969, 35.939106, 30.974277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802898, 35.316860, 30.768923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667309, 34.940662, 30.778492>,  <35.585957, 34.714943, 30.784233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667309, 34.940662, 30.778492>,  <35.802898, 35.316860, 30.768923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667309, 34.940662, 30.778492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051693, -0.044010, -0.997693,
		0.939376, -0.336953, 0.063534,
		-0.338971, -0.940493, 0.023924,
		35.565617, 34.658516, 30.785669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382233, 34.986603, 30.451550>,  <35.802898, 35.316860, 30.768923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382233, 34.986603, 30.451550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045788, 34.771313, 30.430214>,  <35.843922, 34.642139, 30.417414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045788, 34.771313, 30.430214>,  <36.382233, 34.986603, 30.451550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045788, 34.771313, 30.430214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230520, -0.267529, -0.935569,
		0.489281, -0.799211, 0.349093,
		-0.841110, -0.538229, -0.053337,
		35.793453, 34.609844, 30.414213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526989, 34.438690, 30.070467>,  <36.382233, 34.986603, 30.451550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526989, 34.438690, 30.070467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128548, 34.417030, 30.042597>,  <35.889484, 34.404034, 30.025875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128548, 34.417030, 30.042597>,  <36.526989, 34.438690, 30.070467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128548, 34.417030, 30.042597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082047, -0.277669, -0.957167,
		0.032487, -0.959150, 0.281029,
		-0.996099, -0.054153, -0.069675,
		35.829720, 34.400784, 30.021694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319561, 33.862648, 29.623686>,  <36.526989, 34.438690, 30.070467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319561, 33.862648, 29.623686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981312, 34.076092, 29.629129>,  <35.778362, 34.204159, 29.632395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981312, 34.076092, 29.629129>,  <36.319561, 33.862648, 29.623686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981312, 34.076092, 29.629129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080412, -0.102148, -0.991514,
		-0.527687, -0.839542, 0.129288,
		-0.845624, 0.533605, 0.013607,
		35.727623, 34.236172, 29.633211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861835, 33.445427, 29.259865>,  <36.319561, 33.862648, 29.623686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861835, 33.445427, 29.259865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694721, 33.808842, 29.258827>,  <35.594452, 34.026890, 29.258204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694721, 33.808842, 29.258827>,  <35.861835, 33.445427, 29.259865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694721, 33.808842, 29.258827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098640, -0.048198, -0.993955,
		-0.903174, -0.415006, 0.109755,
		-0.417788, 0.908541, -0.002595,
		35.569386, 34.081406, 29.258049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259449, 33.247040, 28.941748>,  <35.861835, 33.445427, 29.259865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259449, 33.247040, 28.941748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363937, 33.633091, 28.934845>,  <35.426628, 33.864719, 28.930702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363937, 33.633091, 28.934845>,  <35.259449, 33.247040, 28.941748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363937, 33.633091, 28.934845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005438, -0.016408, -0.999851,
		-0.965264, 0.261274, 0.000962,
		0.261219, 0.965125, -0.017259,
		35.442303, 33.922630, 28.929667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951767, 33.441013, 28.392508>,  <35.259449, 33.247040, 28.941748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951767, 33.441013, 28.392508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197281, 33.749477, 28.460121>,  <35.344589, 33.934555, 28.500689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197281, 33.749477, 28.460121>,  <34.951767, 33.441013, 28.392508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197281, 33.749477, 28.460121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152135, 0.094559, -0.983826,
		-0.774675, 0.629574, -0.059282,
		0.613786, 0.771164, 0.169033,
		35.381416, 33.980827, 28.510832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595825, 34.005302, 28.033831>,  <34.951767, 33.441013, 28.392508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595825, 34.005302, 28.033831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985909, 34.082600, 28.076950>,  <35.219959, 34.128979, 28.102821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985909, 34.082600, 28.076950>,  <34.595825, 34.005302, 28.033831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985909, 34.082600, 28.076950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062045, 0.228825, -0.971488,
		-0.212401, 0.954095, 0.211163,
		0.975211, 0.193243, 0.107799,
		35.278473, 34.140572, 28.109289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759113, 34.508213, 27.531219>,  <34.595825, 34.005302, 28.033831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759113, 34.508213, 27.531219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123989, 34.381142, 27.634745>,  <35.342915, 34.304897, 27.696859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123989, 34.381142, 27.634745>,  <34.759113, 34.508213, 27.531219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123989, 34.381142, 27.634745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365830, 0.346859, -0.863630,
		0.184585, 0.882479, 0.432619,
		0.912193, -0.317678, 0.258812,
		35.397648, 34.285839, 27.712389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184624, 35.064819, 27.368380>,  <34.759113, 34.508213, 27.531219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184624, 35.064819, 27.368380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396610, 34.725933, 27.353645>,  <35.523804, 34.522602, 27.344805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396610, 34.725933, 27.353645>,  <35.184624, 35.064819, 27.368380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396610, 34.725933, 27.353645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354725, 0.260931, -0.897822,
		0.770262, 0.462750, 0.438815,
		0.529968, -0.847217, -0.036836,
		35.555599, 34.471767, 27.342594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789536, 35.231754, 27.107130>,  <35.184624, 35.064819, 27.368380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789536, 35.231754, 27.107130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780682, 34.836510, 27.046272>,  <35.775368, 34.599361, 27.009758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780682, 34.836510, 27.046272>,  <35.789536, 35.231754, 27.107130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780682, 34.836510, 27.046272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174249, 0.146039, -0.973812,
		0.984453, -0.048065, 0.168945,
		-0.022134, -0.988110, -0.152144,
		35.774040, 34.540077, 27.000629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268219, 35.070827, 26.626839>,  <35.789536, 35.231754, 27.107130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268219, 35.070827, 26.626839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046265, 34.738358, 26.612722>,  <35.913094, 34.538876, 26.604252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046265, 34.738358, 26.612722>,  <36.268219, 35.070827, 26.626839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046265, 34.738358, 26.612722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101139, 0.109505, -0.988827,
		0.825756, -0.545116, -0.144827,
		-0.554885, -0.831178, -0.035292,
		35.879799, 34.489006, 26.602135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540272, 34.548069, 26.172741>,  <36.268219, 35.070827, 26.626839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540272, 34.548069, 26.172741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150467, 34.458351, 26.170700>,  <35.916584, 34.404522, 26.169476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150467, 34.458351, 26.170700>,  <36.540272, 34.548069, 26.172741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150467, 34.458351, 26.170700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007739, -0.010870, -0.999911,
		0.224218, -0.974461, 0.012329,
		-0.974509, -0.224293, -0.005105,
		35.858116, 34.391064, 26.169168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494236, 34.129921, 25.553179>,  <36.540272, 34.548069, 26.172741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494236, 34.129921, 25.553179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111645, 34.196213, 25.649242>,  <35.882088, 34.235989, 25.706881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111645, 34.196213, 25.649242>,  <36.494236, 34.129921, 25.553179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111645, 34.196213, 25.649242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174030, 0.336645, -0.925410,
		-0.234215, -0.926933, -0.293153,
		-0.956481, 0.165728, 0.240161,
		35.824699, 34.245930, 25.721291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.083097, 35.565357, 26.390644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.462141, 35.440922, 26.361643>,  <30.689568, 35.366261, 26.344242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.462141, 35.440922, 26.361643>,  <30.083097, 35.565357, 26.390644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462141, 35.440922, 26.361643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052215, -0.374781, 0.925642,
		-0.315127, -0.873363, -0.371391,
		0.947612, -0.311087, -0.072501,
		30.746424, 35.347595, 26.339891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055042, 34.863365, 26.593479>,  <30.083097, 35.565357, 26.390644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055042, 34.863365, 26.593479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.442461, 34.941193, 26.655521>,  <30.674913, 34.987888, 26.692747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.442461, 34.941193, 26.655521>,  <30.055042, 34.863365, 26.593479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442461, 34.941193, 26.655521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009778, -0.593108, 0.805063,
		0.248635, -0.781259, -0.572551,
		0.968548, 0.194568, 0.155107,
		30.733025, 34.999561, 26.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407814, 34.293217, 26.744442>,  <30.055042, 34.863365, 26.593479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407814, 34.293217, 26.744442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.653494, 34.572124, 26.892267>,  <30.800901, 34.739468, 26.980963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.653494, 34.572124, 26.892267>,  <30.407814, 34.293217, 26.744442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653494, 34.572124, 26.892267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159316, -0.568220, 0.807307,
		0.772901, -0.436972, -0.460087,
		0.614201, 0.697267, 0.369561,
		30.837753, 34.781303, 27.003136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010700, 33.914795, 27.006174>,  <30.407814, 34.293217, 26.744442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010700, 33.914795, 27.006174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.027935, 34.272579, 27.184200>,  <31.038277, 34.487251, 27.291016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.027935, 34.272579, 27.184200>,  <31.010700, 33.914795, 27.006174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027935, 34.272579, 27.184200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279595, -0.438475, 0.854146,
		0.959151, 0.087635, -0.268980,
		0.043087, 0.894461, 0.445066,
		31.040861, 34.540916, 27.317720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727390, 34.006786, 27.362862>,  <31.010700, 33.914795, 27.006174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727390, 34.006786, 27.362862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.505404, 34.289024, 27.539110>,  <31.372211, 34.458366, 27.644859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.505404, 34.289024, 27.539110>,  <31.727390, 34.006786, 27.362862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505404, 34.289024, 27.539110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106669, -0.464942, 0.878892,
		0.825006, 0.534755, 0.182761,
		-0.554965, 0.705597, 0.440622,
		31.338915, 34.500702, 27.671297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102314, 34.178299, 28.037167>,  <31.727390, 34.006786, 27.362862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102314, 34.178299, 28.037167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.724466, 34.306042, 28.067379>,  <31.497757, 34.382687, 28.085506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.724466, 34.306042, 28.067379>,  <32.102314, 34.178299, 28.037167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724466, 34.306042, 28.067379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044838, -0.353603, 0.934320,
		0.325086, 0.879192, 0.348340,
		-0.944621, 0.319354, 0.075530,
		31.441080, 34.401848, 28.090038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932219, 34.582172, 28.719278>,  <32.102314, 34.178299, 28.037167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932219, 34.582172, 28.719278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.578276, 34.444004, 28.594240>,  <31.365910, 34.361103, 28.519218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.578276, 34.444004, 28.594240>,  <31.932219, 34.582172, 28.719278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578276, 34.444004, 28.594240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207169, -0.309239, 0.928144,
		-0.417265, 0.886034, 0.202072,
		-0.884856, -0.345419, -0.312594,
		31.312819, 34.340378, 28.500462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461468, 34.911491, 29.190424>,  <31.932219, 34.582172, 28.719278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461468, 34.911491, 29.190424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.304211, 34.585133, 29.020832>,  <31.209856, 34.389317, 28.919077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.304211, 34.585133, 29.020832>,  <31.461468, 34.911491, 29.190424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304211, 34.585133, 29.020832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215593, -0.366457, 0.905112,
		-0.893844, 0.447246, -0.031831,
		-0.393143, -0.815892, -0.423979,
		31.186268, 34.340366, 28.893639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751730, 34.891590, 29.453186>,  <31.461468, 34.911491, 29.190424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751730, 34.891590, 29.453186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850828, 34.526840, 29.322273>,  <30.910288, 34.307991, 29.243727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850828, 34.526840, 29.322273>,  <30.751730, 34.891590, 29.453186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850828, 34.526840, 29.322273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315471, -0.395331, 0.862665,
		-0.916024, -0.110476, -0.385611,
		0.247747, -0.911871, -0.327281,
		30.925152, 34.253281, 29.224089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215799, 34.517353, 29.534941>,  <30.751730, 34.891590, 29.453186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215799, 34.517353, 29.534941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.513155, 34.249813, 29.533180>,  <30.691568, 34.089291, 29.532124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.513155, 34.249813, 29.533180>,  <30.215799, 34.517353, 29.534941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513155, 34.249813, 29.533180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405912, -0.456361, 0.791815,
		-0.531615, -0.586835, -0.610745,
		0.743385, -0.668849, -0.004405,
		30.736172, 34.049160, 29.531860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931387, 33.884338, 29.751127>,  <30.215799, 34.517353, 29.534941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931387, 33.884338, 29.751127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.323250, 33.835133, 29.814548>,  <30.558367, 33.805611, 29.852602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.323250, 33.835133, 29.814548>,  <29.931387, 33.884338, 29.751127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323250, 33.835133, 29.814548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192176, -0.347529, 0.917765,
		-0.057794, -0.929565, -0.364100,
		0.979657, -0.123013, 0.158555,
		30.617147, 33.798229, 29.862116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967640, 33.284615, 30.084330>,  <29.931387, 33.884338, 29.751127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967640, 33.284615, 30.084330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.321035, 33.448029, 30.176023>,  <30.533072, 33.546078, 30.231039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.321035, 33.448029, 30.176023>,  <29.967640, 33.284615, 30.084330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321035, 33.448029, 30.176023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110699, -0.293407, 0.949557,
		0.455190, -0.864296, -0.213996,
		0.883486, 0.408539, 0.229233,
		30.586081, 33.570591, 30.244793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094788, 32.836819, 30.560169>,  <29.967640, 33.284615, 30.084330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094788, 32.836819, 30.560169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.382563, 33.111908, 30.599056>,  <30.555227, 33.276962, 30.622389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.382563, 33.111908, 30.599056>,  <30.094788, 32.836819, 30.560169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382563, 33.111908, 30.599056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166473, -0.306628, 0.937158,
		0.674310, -0.658044, -0.335087,
		0.719439, 0.687719, 0.097216,
		30.598394, 33.318222, 30.628222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752127, 32.471565, 30.820181>,  <30.094788, 32.836819, 30.560169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752127, 32.471565, 30.820181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.774359, 32.860813, 30.909582>,  <30.787699, 33.094360, 30.963223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.774359, 32.860813, 30.909582>,  <30.752127, 32.471565, 30.820181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774359, 32.860813, 30.909582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254243, -0.230264, 0.939329,
		0.965542, 0.004615, -0.260207,
		0.055581, 0.973117, 0.223503,
		30.791033, 33.152748, 30.976633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455170, 32.208092, 30.499847>,  <30.752127, 32.471565, 30.820181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455170, 32.208092, 30.499847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.465788, 31.808626, 30.517624>,  <31.472158, 31.568949, 30.528290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.465788, 31.808626, 30.517624>,  <31.455170, 32.208092, 30.499847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465788, 31.808626, 30.517624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121091, -0.040917, -0.991798,
		0.992286, 0.031709, 0.119843,
		0.026545, -0.998659, 0.044441,
		31.473751, 31.509027, 30.530956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018887, 32.036674, 30.158298>,  <31.455170, 32.208092, 30.499847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018887, 32.036674, 30.158298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.782013, 31.715582, 30.130169>,  <31.639889, 31.522926, 30.113291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.782013, 31.715582, 30.130169>,  <32.018887, 32.036674, 30.158298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782013, 31.715582, 30.130169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106311, 0.008678, -0.994295,
		0.798761, -0.596279, 0.080201,
		-0.592181, -0.802731, -0.070323,
		31.604359, 31.474762, 30.109072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220280, 31.706102, 29.617743>,  <32.018887, 32.036674, 30.158298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220280, 31.706102, 29.617743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.872713, 31.516872, 29.675951>,  <31.664171, 31.403334, 29.710876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.872713, 31.516872, 29.675951>,  <32.220280, 31.706102, 29.617743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872713, 31.516872, 29.675951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206540, 0.079378, -0.975213,
		0.449797, -0.877439, -0.166682,
		-0.868921, -0.473075, 0.145522,
		31.612038, 31.374950, 29.719608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180019, 31.299112, 29.059444>,  <32.220280, 31.706102, 29.617743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180019, 31.299112, 29.059444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795761, 31.288563, 29.170055>,  <31.565207, 31.282232, 29.236422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795761, 31.288563, 29.170055>,  <32.180019, 31.299112, 29.059444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795761, 31.288563, 29.170055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277311, 0.032928, -0.960216,
		0.016199, -0.999110, -0.038940,
		-0.960644, -0.026353, 0.276531,
		31.507568, 31.280649, 29.253014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819414, 30.759520, 28.706331>,  <32.180019, 31.299112, 29.059444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819414, 30.759520, 28.706331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.517279, 30.998331, 28.814423>,  <31.335999, 31.141619, 28.879278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.517279, 30.998331, 28.814423>,  <31.819414, 30.759520, 28.706331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517279, 30.998331, 28.814423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287158, 0.069127, -0.955386,
		-0.589073, -0.799236, 0.119228,
		-0.755337, 0.597029, 0.270228,
		31.290678, 31.177439, 28.895491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312910, 30.477871, 28.404837>,  <31.819414, 30.759520, 28.706331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312910, 30.477871, 28.404837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220329, 30.863407, 28.457657>,  <31.164780, 31.094728, 28.489349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220329, 30.863407, 28.457657>,  <31.312910, 30.477871, 28.404837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220329, 30.863407, 28.457657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265777, 0.067927, -0.961638,
		-0.935837, -0.257671, 0.240445,
		-0.231453, 0.963842, 0.132051,
		31.150894, 31.152559, 28.497272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705000, 30.655827, 27.843019>,  <31.312910, 30.477871, 28.404837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705000, 30.655827, 27.843019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.869078, 31.005760, 27.946095>,  <30.967524, 31.215721, 28.007938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.869078, 31.005760, 27.946095>,  <30.705000, 30.655827, 27.843019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869078, 31.005760, 27.946095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089024, 0.319611, -0.943358,
		-0.907642, 0.364020, 0.208984,
		0.410195, 0.874836, 0.257686,
		30.992136, 31.268211, 28.023401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341949, 31.121534, 27.434494>,  <30.705000, 30.655827, 27.843019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341949, 31.121534, 27.434494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658678, 31.337662, 27.548388>,  <30.848715, 31.467339, 27.616724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658678, 31.337662, 27.548388>,  <30.341949, 31.121534, 27.434494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658678, 31.337662, 27.548388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060820, 0.394123, -0.917043,
		-0.607716, 0.743452, 0.279213,
		0.791822, 0.540320, 0.284732,
		30.896225, 31.499758, 27.633808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214760, 31.753744, 27.113632>,  <30.341949, 31.121534, 27.434494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214760, 31.753744, 27.113632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.599747, 31.757814, 27.222116>,  <30.830738, 31.760256, 27.287207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.599747, 31.757814, 27.222116>,  <30.214760, 31.753744, 27.113632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599747, 31.757814, 27.222116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223157, 0.539087, -0.812149,
		-0.154470, 0.842189, 0.516582,
		0.962466, 0.010174, 0.271213,
		30.888487, 31.760866, 27.303480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516636, 32.449131, 27.093826>,  <30.214760, 31.753744, 27.113632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516636, 32.449131, 27.093826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.855270, 32.239956, 27.054157>,  <31.058451, 32.114452, 27.030355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.855270, 32.239956, 27.054157>,  <30.516636, 32.449131, 27.093826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855270, 32.239956, 27.054157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249542, 0.554537, -0.793863,
		0.470132, 0.647324, 0.599956,
		0.846584, -0.522934, -0.099171,
		31.109245, 32.083076, 27.024406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085011, 32.958775, 26.984043>,  <30.516636, 32.449131, 27.093826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085011, 32.958775, 26.984043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.202705, 32.605717, 26.837420>,  <31.273321, 32.393883, 26.749445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.202705, 32.605717, 26.837420>,  <31.085011, 32.958775, 26.984043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202705, 32.605717, 26.837420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404004, 0.462449, -0.789254,
		0.866145, 0.084136, 0.492661,
		0.294235, -0.882645, -0.366557,
		31.290976, 32.340923, 26.727453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833685, 32.964046, 26.770802>,  <31.085011, 32.958775, 26.984043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833685, 32.964046, 26.770802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.718357, 32.638020, 26.569788>,  <31.649160, 32.442406, 26.449179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.718357, 32.638020, 26.569788>,  <31.833685, 32.964046, 26.770802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718357, 32.638020, 26.569788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401078, 0.373766, -0.836322,
		0.869488, -0.442683, 0.219141,
		-0.288319, -0.815065, -0.502535,
		31.631861, 32.393501, 26.419027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279530, 32.862362, 26.342789>,  <31.833685, 32.964046, 26.770802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279530, 32.862362, 26.342789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.990068, 32.648693, 26.167978>,  <31.816391, 32.520493, 26.063093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.990068, 32.648693, 26.167978>,  <32.279530, 32.862362, 26.342789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990068, 32.648693, 26.167978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278766, 0.353039, -0.893114,
		0.631360, -0.768132, -0.106570,
		-0.723653, -0.534169, -0.437024,
		31.772972, 32.488441, 26.036871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551796, 32.465462, 25.873785>,  <32.279530, 32.862362, 26.342789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551796, 32.465462, 25.873785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174122, 32.529224, 25.758474>,  <31.947517, 32.567482, 25.689289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174122, 32.529224, 25.758474>,  <32.551796, 32.465462, 25.873785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174122, 32.529224, 25.758474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328972, 0.410989, -0.850215,
		-0.017055, -0.897595, -0.440492,
		-0.944186, 0.159410, -0.288274,
		31.890865, 32.577049, 25.671991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996403, 31.958656, 25.678644>,  <32.551796, 32.465462, 25.873785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996403, 31.958656, 25.678644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.381710, 32.044483, 25.614042>,  <33.612892, 32.095978, 25.575281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.381710, 32.044483, 25.614042>,  <32.996403, 31.958656, 25.678644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381710, 32.044483, 25.614042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214089, -0.250453, 0.944161,
		0.162136, -0.944052, -0.287188,
		0.963264, 0.214567, -0.161503,
		33.670689, 32.108852, 25.565592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304039, 31.308884, 25.908676>,  <32.996403, 31.958656, 25.678644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304039, 31.308884, 25.908676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.602306, 31.574696, 25.889194>,  <33.781269, 31.734182, 25.877506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.602306, 31.574696, 25.889194>,  <33.304039, 31.308884, 25.908676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602306, 31.574696, 25.889194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276270, -0.241831, 0.930157,
		0.606340, -0.707048, -0.363916,
		0.745672, 0.664531, -0.048704,
		33.826008, 31.774055, 25.874582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979446, 31.017977, 26.182072>,  <33.304039, 31.308884, 25.908676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979446, 31.017977, 26.182072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017456, 31.414183, 26.221777>,  <34.040264, 31.651905, 26.245600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017456, 31.414183, 26.221777>,  <33.979446, 31.017977, 26.182072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017456, 31.414183, 26.221777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302881, -0.123756, 0.944959,
		0.948279, -0.059730, -0.311767,
		0.095026, 0.990514, 0.099264,
		34.045963, 31.711336, 26.251556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657822, 31.204365, 26.378801>,  <33.979446, 31.017977, 26.182072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657822, 31.204365, 26.378801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.406307, 31.487377, 26.507812>,  <34.255398, 31.657185, 26.585220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.406307, 31.487377, 26.507812>,  <34.657822, 31.204365, 26.378801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406307, 31.487377, 26.507812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289403, -0.172044, 0.941619,
		0.721713, 0.685422, -0.096582,
		-0.628790, 0.707530, 0.322529,
		34.217670, 31.699636, 26.604570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047421, 31.551870, 26.877243>,  <34.657822, 31.204365, 26.378801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047421, 31.551870, 26.877243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661823, 31.635923, 26.942434>,  <34.430466, 31.686356, 26.981550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.661823, 31.635923, 26.942434>,  <35.047421, 31.551870, 26.877243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661823, 31.635923, 26.942434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159959, -0.031413, 0.986624,
		0.212440, 0.977168, -0.003331,
		-0.963993, 0.210131, 0.162980,
		34.372627, 31.698963, 26.991329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032257, 31.711407, 27.538839>,  <35.047421, 31.551870, 26.877243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032257, 31.711407, 27.538839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.636883, 31.749495, 27.491634>,  <34.399658, 31.772346, 27.463310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.636883, 31.749495, 27.491634>,  <35.032257, 31.711407, 27.538839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636883, 31.749495, 27.491634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117446, 0.011563, 0.993012,
		0.095917, 0.995389, -0.000246,
		-0.988436, 0.095218, -0.118014,
		34.340351, 31.778059, 27.456230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927372, 32.100300, 28.162786>,  <35.032257, 31.711407, 27.538839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927372, 32.100300, 28.162786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.580593, 31.931343, 28.056971>,  <34.372524, 31.829969, 27.993481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.580593, 31.931343, 28.056971>,  <34.927372, 32.100300, 28.162786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580593, 31.931343, 28.056971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174590, -0.239766, 0.955003,
		-0.466812, 0.874127, 0.134121,
		-0.866952, -0.422390, -0.264539,
		34.320507, 31.804626, 27.977610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495773, 32.334000, 28.656017>,  <34.927372, 32.100300, 28.162786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495773, 32.334000, 28.656017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.323978, 32.005325, 28.506153>,  <34.220901, 31.808121, 28.416235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.323978, 32.005325, 28.506153>,  <34.495773, 32.334000, 28.656017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323978, 32.005325, 28.506153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003321, -0.413434, 0.910528,
		-0.903065, 0.392308, 0.174837,
		-0.429491, -0.821686, -0.374661,
		34.195129, 31.758820, 28.393755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875141, 32.057617, 29.133249>,  <34.495773, 32.334000, 28.656017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875141, 32.057617, 29.133249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002842, 31.739220, 28.927538>,  <34.079460, 31.548182, 28.804111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002842, 31.739220, 28.927538>,  <33.875141, 32.057617, 29.133249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002842, 31.739220, 28.927538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015423, -0.546967, 0.837012,
		-0.947546, -0.259283, -0.186894,
		0.319248, -0.795990, -0.514277,
		34.098618, 31.500423, 28.773254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351559, 31.481239, 29.268847>,  <33.875141, 32.057617, 29.133249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351559, 31.481239, 29.268847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682758, 31.303072, 29.132601>,  <33.881477, 31.196171, 29.050854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682758, 31.303072, 29.132601>,  <33.351559, 31.481239, 29.268847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682758, 31.303072, 29.132601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093224, -0.708347, 0.699681,
		-0.552925, -0.547582, -0.628035,
		0.827999, -0.445419, -0.340615,
		33.931156, 31.169447, 29.030416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251934, 30.754488, 29.173164>,  <33.351559, 31.481239, 29.268847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251934, 30.754488, 29.173164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646748, 30.785221, 29.229540>,  <33.883636, 30.803661, 29.263365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646748, 30.785221, 29.229540>,  <33.251934, 30.754488, 29.173164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646748, 30.785221, 29.229540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051213, -0.681399, 0.730118,
		0.152134, -0.727868, -0.668628,
		0.987032, 0.076833, 0.140940,
		33.942856, 30.808271, 29.271822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461044, 30.151520, 29.206270>,  <33.251934, 30.754488, 29.173164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461044, 30.151520, 29.206270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799629, 30.323685, 29.331648>,  <34.002781, 30.426985, 29.406874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799629, 30.323685, 29.331648>,  <33.461044, 30.151520, 29.206270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799629, 30.323685, 29.331648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101570, -0.708399, 0.698466,
		0.522672, -0.559388, -0.643350,
		0.846462, 0.430414, 0.313443,
		34.053566, 30.452808, 29.425680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901405, 29.639479, 29.297792>,  <33.461044, 30.151520, 29.206270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901405, 29.639479, 29.297792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081623, 29.923832, 29.513811>,  <34.189754, 30.094444, 29.643423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081623, 29.923832, 29.513811>,  <33.901405, 29.639479, 29.297792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081623, 29.923832, 29.513811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170277, -0.662247, 0.729681,
		0.876363, -0.236799, -0.419421,
		0.450548, 0.710884, 0.540047,
		34.216789, 30.137096, 29.675825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627033, 29.361076, 29.489740>,  <33.901405, 29.639479, 29.297792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627033, 29.361076, 29.489740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526546, 29.645771, 29.752134>,  <34.466255, 29.816587, 29.909571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526546, 29.645771, 29.752134>,  <34.627033, 29.361076, 29.489740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526546, 29.645771, 29.752134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232255, -0.613597, 0.754690,
		0.939652, 0.341948, -0.011158,
		-0.251219, 0.711738, 0.655987,
		34.451180, 29.859293, 29.948931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.159664, 33.685589, 25.121040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.897266, 33.965420, 25.234364>,  <35.739826, 34.133320, 25.302357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.897266, 33.965420, 25.234364>,  <36.159664, 33.685589, 25.121040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897266, 33.965420, 25.234364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319608, 0.082572, -0.943945,
		-0.683757, -0.709769, 0.169424,
		-0.655994, 0.699578, 0.283307,
		35.700470, 34.175293, 25.319355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483974, 33.529629, 24.729971>,  <36.159664, 33.685589, 25.121040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483974, 33.529629, 24.729971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489193, 33.914951, 24.837200>,  <35.492325, 34.146145, 24.901537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489193, 33.914951, 24.837200>,  <35.483974, 33.529629, 24.729971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489193, 33.914951, 24.837200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174081, 0.266189, -0.948071,
		-0.984645, -0.034295, 0.171168,
		0.013049, 0.963311, 0.268072,
		35.493107, 34.203945, 24.917622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876450, 33.822838, 24.334944>,  <35.483974, 33.529629, 24.729971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876450, 33.822838, 24.334944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101559, 34.134930, 24.444143>,  <35.236626, 34.322186, 24.509663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.101559, 34.134930, 24.444143>,  <34.876450, 33.822838, 24.334944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101559, 34.134930, 24.444143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190524, 0.443807, -0.875635,
		-0.804355, 0.440771, 0.398415,
		0.562773, 0.780229, 0.273000,
		35.270390, 34.368999, 24.526043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521816, 34.340111, 24.130598>,  <34.876450, 33.822838, 24.334944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521816, 34.340111, 24.130598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891449, 34.489902, 24.161142>,  <35.113228, 34.579777, 24.179468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891449, 34.489902, 24.161142>,  <34.521816, 34.340111, 24.130598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891449, 34.489902, 24.161142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170372, 0.582483, -0.794788,
		-0.342111, 0.721442, 0.602064,
		0.924085, 0.374480, 0.076360,
		35.168674, 34.602245, 24.184050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482960, 35.042336, 24.024290>,  <34.521816, 34.340111, 24.130598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482960, 35.042336, 24.024290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857613, 34.953575, 23.915855>,  <35.082405, 34.900318, 23.850794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.857613, 34.953575, 23.915855>,  <34.482960, 35.042336, 24.024290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857613, 34.953575, 23.915855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100019, 0.572230, -0.813972,
		0.335745, 0.789502, 0.513772,
		0.936628, -0.221900, -0.271089,
		35.138599, 34.887005, 23.834528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669876, 35.661404, 23.741211>,  <34.482960, 35.042336, 24.024290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669876, 35.661404, 23.741211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938705, 35.402496, 23.597345>,  <35.100002, 35.247150, 23.511026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938705, 35.402496, 23.597345>,  <34.669876, 35.661404, 23.741211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938705, 35.402496, 23.597345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005420, 0.490000, -0.871706,
		0.740466, 0.583900, 0.332824,
		0.672072, -0.647272, -0.359663,
		35.140327, 35.208313, 23.489447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175121, 36.075420, 23.344389>,  <34.669876, 35.661404, 23.741211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175121, 36.075420, 23.344389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170853, 35.700527, 23.204967>,  <35.168293, 35.475594, 23.121315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170853, 35.700527, 23.204967>,  <35.175121, 36.075420, 23.344389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170853, 35.700527, 23.204967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038284, 0.347933, -0.936737,
		0.999210, -0.023340, 0.032168,
		-0.010671, -0.937229, -0.348552,
		35.167652, 35.419357, 23.100403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700935, 36.030293, 22.869141>,  <35.175121, 36.075420, 23.344389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700935, 36.030293, 22.869141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473759, 35.718399, 22.763723>,  <35.337452, 35.531261, 22.700474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473759, 35.718399, 22.763723>,  <35.700935, 36.030293, 22.869141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473759, 35.718399, 22.763723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017189, 0.308889, -0.950943,
		0.822889, -0.544611, -0.162029,
		-0.567943, -0.779735, -0.263542,
		35.303375, 35.484478, 22.684660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857487, 35.974091, 22.205763>,  <35.700935, 36.030293, 22.869141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857487, 35.974091, 22.205763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540901, 35.730335, 22.224634>,  <35.350948, 35.584080, 22.235956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540901, 35.730335, 22.224634>,  <35.857487, 35.974091, 22.205763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540901, 35.730335, 22.224634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195897, 0.179794, -0.964001,
		0.578974, -0.772213, -0.261678,
		-0.791463, -0.609393, 0.047178,
		35.303463, 35.547516, 22.238787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875633, 35.698963, 21.477333>,  <35.857487, 35.974091, 22.205763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875633, 35.698963, 21.477333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511421, 35.587139, 21.599178>,  <35.292896, 35.520046, 21.672285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511421, 35.587139, 21.599178>,  <35.875633, 35.698963, 21.477333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511421, 35.587139, 21.599178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354885, 0.150437, -0.922727,
		0.212133, -0.948269, -0.236189,
		-0.910525, -0.279560, 0.304614,
		35.238262, 35.503273, 21.690563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674427, 35.087029, 21.130997>,  <35.875633, 35.698963, 21.477333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674427, 35.087029, 21.130997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341831, 35.285419, 21.231100>,  <35.142273, 35.404453, 21.291162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341831, 35.285419, 21.231100>,  <35.674427, 35.087029, 21.130997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341831, 35.285419, 21.231100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293634, -0.009964, -0.955866,
		-0.471598, -0.868276, 0.153922,
		-0.831488, 0.495982, 0.250256,
		35.092384, 35.434216, 21.306177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149544, 34.792122, 20.772455>,  <35.674427, 35.087029, 21.130997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149544, 34.792122, 20.772455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973866, 35.139111, 20.865923>,  <34.868458, 35.347301, 20.922005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973866, 35.139111, 20.865923>,  <35.149544, 34.792122, 20.772455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973866, 35.139111, 20.865923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544407, -0.050082, -0.837325,
		-0.714651, -0.494964, 0.494252,
		-0.439198, 0.867469, 0.233671,
		34.842106, 35.399353, 20.936024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463127, 34.741760, 20.620630>,  <35.149544, 34.792122, 20.772455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463127, 34.741760, 20.620630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476074, 35.139534, 20.580511>,  <34.483841, 35.378197, 20.556440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476074, 35.139534, 20.580511>,  <34.463127, 34.741760, 20.620630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476074, 35.139534, 20.580511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536289, -0.067403, -0.841339,
		-0.843414, 0.081017, 0.531121,
		0.032364, 0.994431, -0.100297,
		34.485783, 35.437862, 20.550423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802460, 34.927299, 20.670959>,  <34.463127, 34.741760, 20.620630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802460, 34.927299, 20.670959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.033882, 35.151230, 20.433687>,  <34.172737, 35.285587, 20.291323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.033882, 35.151230, 20.433687>,  <33.802460, 34.927299, 20.670959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033882, 35.151230, 20.433687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709717, -0.012872, -0.704369,
		-0.401958, 0.828512, 0.389869,
		0.578560, 0.559823, -0.593183,
		34.207451, 35.319176, 20.255732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904011, 34.241798, 20.358244>,  <33.802460, 34.927299, 20.670959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904011, 34.241798, 20.358244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682476, 33.913582, 20.301716>,  <33.549553, 33.716652, 20.267799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682476, 33.913582, 20.301716>,  <33.904011, 34.241798, 20.358244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682476, 33.913582, 20.301716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283002, -0.345139, 0.894868,
		-0.783051, 0.455621, 0.423368,
		-0.553841, -0.820541, -0.141320,
		33.516323, 33.667419, 20.259319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600361, 34.022202, 20.980194>,  <33.904011, 34.241798, 20.358244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600361, 34.022202, 20.980194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.579369, 33.687248, 20.762560>,  <33.566772, 33.486275, 20.631979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.579369, 33.687248, 20.762560>,  <33.600361, 34.022202, 20.980194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579369, 33.687248, 20.762560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054928, -0.546433, 0.835700,
		-0.997110, 0.013973, 0.074674,
		-0.052481, -0.837386, -0.544087,
		33.563625, 33.436031, 20.599335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034172, 33.552029, 21.376389>,  <33.600361, 34.022202, 20.980194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034172, 33.552029, 21.376389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275974, 33.325150, 21.152651>,  <33.421055, 33.189022, 21.018408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275974, 33.325150, 21.152651>,  <33.034172, 33.552029, 21.376389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275974, 33.325150, 21.152651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201055, -0.570794, 0.796097,
		-0.770813, -0.593702, -0.231009,
		0.604503, -0.567197, -0.559343,
		33.457325, 33.154991, 20.984848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729721, 32.922215, 21.435789>,  <33.034172, 33.552029, 21.376389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729721, 32.922215, 21.435789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113697, 32.852146, 21.348310>,  <33.344082, 32.810104, 21.295824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113697, 32.852146, 21.348310>,  <32.729721, 32.922215, 21.435789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113697, 32.852146, 21.348310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104238, -0.501224, 0.859016,
		-0.260089, -0.847402, -0.462886,
		0.959942, -0.175171, -0.218694,
		33.401680, 32.799595, 21.282701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864872, 32.252689, 21.717085>,  <32.729721, 32.922215, 21.435789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864872, 32.252689, 21.717085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.235596, 32.394344, 21.667118>,  <33.458031, 32.479340, 21.637138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.235596, 32.394344, 21.667118>,  <32.864872, 32.252689, 21.717085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235596, 32.394344, 21.667118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262022, -0.371563, 0.890665,
		0.269008, -0.858210, -0.437162,
		0.926811, 0.354142, -0.124917,
		33.513638, 32.500587, 21.629642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265514, 31.641094, 21.836819>,  <32.864872, 32.252689, 21.717085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265514, 31.641094, 21.836819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486111, 31.958929, 21.938402>,  <33.618469, 32.149628, 21.999353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486111, 31.958929, 21.938402>,  <33.265514, 31.641094, 21.836819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486111, 31.958929, 21.938402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012987, -0.312584, 0.949801,
		0.834082, -0.520505, -0.182705,
		0.551487, 0.794585, 0.253961,
		33.651558, 32.197304, 22.014591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735790, 31.332411, 22.262352>,  <33.265514, 31.641094, 21.836819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735790, 31.332411, 22.262352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777088, 31.722841, 22.338890>,  <33.801868, 31.957100, 22.384813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777088, 31.722841, 22.338890>,  <33.735790, 31.332411, 22.262352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777088, 31.722841, 22.338890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131438, -0.204074, 0.970092,
		0.985934, -0.075006, -0.149363,
		0.103244, 0.976078, 0.191345,
		33.808060, 32.015663, 22.396294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258579, 31.338652, 22.754950>,  <33.735790, 31.332411, 22.262352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258579, 31.338652, 22.754950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.118958, 31.710140, 22.804979>,  <34.035187, 31.933033, 22.834997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.118958, 31.710140, 22.804979>,  <34.258579, 31.338652, 22.754950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118958, 31.710140, 22.804979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002716, -0.134471, 0.990914,
		0.937100, 0.345539, 0.049459,
		-0.349050, 0.928720, 0.125074,
		34.014244, 31.988756, 22.842501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679676, 31.607508, 23.279036>,  <34.258579, 31.338652, 22.754950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679676, 31.607508, 23.279036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346096, 31.828245, 23.279430>,  <34.145950, 31.960688, 23.279667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346096, 31.828245, 23.279430>,  <34.679676, 31.607508, 23.279036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346096, 31.828245, 23.279430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061466, -0.094665, 0.993610,
		0.548409, 0.828559, 0.112865,
		-0.833948, 0.551842, 0.000987,
		34.095913, 31.993797, 23.279726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791794, 32.216339, 23.646017>,  <34.679676, 31.607508, 23.279036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791794, 32.216339, 23.646017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395565, 32.161686, 23.649801>,  <34.157825, 32.128895, 23.652073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395565, 32.161686, 23.649801>,  <34.791794, 32.216339, 23.646017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395565, 32.161686, 23.649801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001334, 0.078704, 0.996897,
		-0.136957, 0.987490, -0.078145,
		-0.990576, -0.136636, 0.009462,
		34.098392, 32.120697, 23.652639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552757, 32.783203, 23.943245>,  <34.791794, 32.216339, 23.646017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552757, 32.783203, 23.943245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259640, 32.511940, 23.965561>,  <34.083767, 32.349182, 23.978951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259640, 32.511940, 23.965561>,  <34.552757, 32.783203, 23.943245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259640, 32.511940, 23.965561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034299, 0.118703, 0.992337,
		-0.679581, 0.725269, -0.110245,
		-0.732798, -0.678155, 0.055792,
		34.039799, 32.308495, 23.982298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990326, 33.130749, 24.242537>,  <34.552757, 32.783203, 23.943245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990326, 33.130749, 24.242537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920444, 32.739246, 24.285458>,  <33.878517, 32.504345, 24.311211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920444, 32.739246, 24.285458>,  <33.990326, 33.130749, 24.242537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920444, 32.739246, 24.285458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239285, 0.147915, 0.959616,
		-0.955102, 0.141974, -0.260044,
		-0.174705, -0.978757, 0.107302,
		33.868034, 32.445618, 24.317648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355560, 33.115181, 24.596205>,  <33.990326, 33.130749, 24.242537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355560, 33.115181, 24.596205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556442, 32.775356, 24.660748>,  <33.676971, 32.571461, 24.699472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556442, 32.775356, 24.660748>,  <33.355560, 33.115181, 24.596205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556442, 32.775356, 24.660748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209559, 0.061466, 0.975862,
		-0.838974, -0.523893, -0.147165,
		0.502202, -0.849563, 0.161355,
		33.707104, 32.520489, 24.709154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058487, 32.704445, 25.218803>,  <33.355560, 33.115181, 24.596205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058487, 32.704445, 25.218803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417969, 32.535686, 25.170900>,  <33.633656, 32.434433, 25.142159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417969, 32.535686, 25.170900>,  <33.058487, 32.704445, 25.218803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417969, 32.535686, 25.170900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051293, -0.170084, 0.984094,
		-0.435553, -0.890548, -0.131214,
		0.898700, -0.421895, -0.119760,
		33.687580, 32.409119, 25.134972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468620, 32.177639, 25.215830>,  <33.058487, 32.704445, 25.218803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468620, 32.177639, 25.215830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172665, 32.445316, 25.243382>,  <31.995090, 32.605923, 25.259912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.172665, 32.445316, 25.243382>,  <32.468620, 32.177639, 25.215830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172665, 32.445316, 25.243382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163919, 0.278637, -0.946304,
		-0.652448, -0.688874, -0.315855,
		-0.739893, 0.669189, 0.068877,
		31.950697, 32.646072, 25.264044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158234, 32.256374, 24.560812>,  <32.468620, 32.177639, 25.215830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158234, 32.256374, 24.560812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035789, 32.604256, 24.715691>,  <31.962324, 32.812984, 24.808619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035789, 32.604256, 24.715691>,  <32.158234, 32.256374, 24.560812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035789, 32.604256, 24.715691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037418, 0.417397, -0.907954,
		-0.951261, -0.263443, -0.160310,
		-0.306107, 0.869700, 0.387196,
		31.943956, 32.865166, 24.831850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820026, 32.477226, 24.029339>,  <32.158234, 32.256374, 24.560812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820026, 32.477226, 24.029339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808826, 32.792923, 24.274719>,  <31.802107, 32.982342, 24.421947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808826, 32.792923, 24.274719>,  <31.820026, 32.477226, 24.029339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808826, 32.792923, 24.274719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225798, 0.592834, -0.773022,
		-0.973772, -0.160160, 0.161610,
		-0.027999, 0.789238, 0.613449,
		31.800426, 33.029694, 24.458754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179329, 32.749264, 24.000460>,  <31.820026, 32.477226, 24.029339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179329, 32.749264, 24.000460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423304, 33.048344, 24.105471>,  <31.569689, 33.227791, 24.168478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423304, 33.048344, 24.105471>,  <31.179329, 32.749264, 24.000460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423304, 33.048344, 24.105471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318271, 0.534527, -0.782933,
		-0.725729, 0.393983, 0.563998,
		0.609935, 0.747702, 0.262529,
		31.606283, 33.272655, 24.184229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814455, 33.254444, 23.905128>,  <31.179329, 32.749264, 24.000460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814455, 33.254444, 23.905128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175411, 33.426395, 23.917065>,  <31.391985, 33.529568, 23.924227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.175411, 33.426395, 23.917065>,  <30.814455, 33.254444, 23.905128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175411, 33.426395, 23.917065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268577, 0.615237, -0.741182,
		-0.336980, 0.660822, 0.670641,
		0.902392, 0.429882, 0.029841,
		31.446129, 33.555359, 23.926018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674324, 33.993889, 23.919596>,  <30.814455, 33.254444, 23.905128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674324, 33.993889, 23.919596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049471, 33.959187, 23.785206>,  <31.274559, 33.938366, 23.704573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049471, 33.959187, 23.785206>,  <30.674324, 33.993889, 23.919596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049471, 33.959187, 23.785206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192636, 0.675145, -0.712089,
		0.288611, 0.732565, 0.616483,
		0.937867, -0.086760, -0.335972,
		31.330832, 33.933159, 23.684414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695221, 34.682232, 23.593493>,  <30.674324, 33.993889, 23.919596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695221, 34.682232, 23.593493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.983137, 34.444473, 23.450052>,  <31.155888, 34.301819, 23.363987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.983137, 34.444473, 23.450052>,  <30.695221, 34.682232, 23.593493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983137, 34.444473, 23.450052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070167, 0.451634, -0.889440,
		0.690635, 0.665373, 0.283375,
		0.719791, -0.594395, -0.358601,
		31.199074, 34.266155, 23.342472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476250, 34.875950, 23.554808>,  <30.695221, 34.682232, 23.593493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476250, 34.875950, 23.554808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601603, 35.253017, 23.600712>,  <31.676813, 35.479259, 23.628254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601603, 35.253017, 23.600712>,  <31.476250, 34.875950, 23.554808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601603, 35.253017, 23.600712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074805, -0.095967, 0.992570,
		0.946677, -0.319636, 0.040442,
		0.313380, 0.942668, 0.114760,
		31.695616, 35.535816, 23.635139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992466, 34.880344, 24.093710>,  <31.476250, 34.875950, 23.554808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992466, 34.880344, 24.093710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879856, 35.264126, 24.088215>,  <31.812290, 35.494396, 24.084917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879856, 35.264126, 24.088215>,  <31.992466, 34.880344, 24.093710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879856, 35.264126, 24.088215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159262, -0.032604, 0.986698,
		0.946245, 0.279969, 0.161984,
		-0.281526, 0.959455, -0.013737,
		31.795399, 35.551964, 24.084093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349857, 35.172359, 24.669889>,  <31.992466, 34.880344, 24.093710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349857, 35.172359, 24.669889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041870, 35.407455, 24.570522>,  <31.857079, 35.548512, 24.510902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.041870, 35.407455, 24.570522>,  <32.349857, 35.172359, 24.669889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041870, 35.407455, 24.570522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338804, -0.046668, 0.939699,
		0.540705, 0.807703, 0.235061,
		-0.769968, 0.587739, -0.248420,
		31.810881, 35.583778, 24.495996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396847, 35.792454, 25.132128>,  <32.349857, 35.172359, 24.669889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396847, 35.792454, 25.132128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020699, 35.783012, 24.996395>,  <31.795010, 35.777348, 24.914955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020699, 35.783012, 24.996395>,  <32.396847, 35.792454, 25.132128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020699, 35.783012, 24.996395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340041, 0.090659, 0.936030,
		0.008669, 0.995602, -0.093279,
		-0.940371, -0.023605, -0.339331,
		31.738586, 35.775932, 24.894596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076675, 36.307438, 25.548273>,  <32.396847, 35.792454, 25.132128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076675, 36.307438, 25.548273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780540, 36.077286, 25.409224>,  <31.602859, 35.939194, 25.325794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780540, 36.077286, 25.409224>,  <32.076675, 36.307438, 25.548273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780540, 36.077286, 25.409224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342394, -0.122262, 0.931568,
		-0.578507, 0.808696, -0.106492,
		-0.740335, -0.575381, -0.347622,
		31.558439, 35.904671, 25.304937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365427, 36.626286, 25.794819>,  <32.076675, 36.307438, 25.548273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365427, 36.626286, 25.794819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.326530, 36.234314, 25.725204>,  <31.303192, 35.999130, 25.683435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.326530, 36.234314, 25.725204>,  <31.365427, 36.626286, 25.794819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326530, 36.234314, 25.725204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354620, -0.129274, 0.926031,
		-0.929940, 0.151767, -0.334930,
		-0.097243, -0.979926, -0.174037,
		31.297358, 35.940334, 25.672993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699684, 36.338589, 26.150167>,  <31.365427, 36.626286, 25.794819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699684, 36.338589, 26.150167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915470, 36.008305, 26.084223>,  <31.044943, 35.810135, 26.044655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915470, 36.008305, 26.084223>,  <30.699684, 36.338589, 26.150167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915470, 36.008305, 26.084223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018720, -0.207510, 0.978054,
		-0.841799, -0.524541, -0.127402,
		0.539466, -0.825710, -0.164863,
		31.077311, 35.760593, 26.034763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.951607, 38.435196, 21.872665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102356, 38.079365, 21.769415>,  <34.192806, 37.865868, 21.707464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.102356, 38.079365, 21.769415>,  <33.951607, 38.435196, 21.872665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102356, 38.079365, 21.769415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056214, -0.256192, 0.964990,
		-0.924559, -0.378186, -0.046545,
		0.376870, -0.889574, -0.258124,
		34.215416, 37.812492, 21.691978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440117, 37.772614, 22.099232>,  <33.951607, 38.435196, 21.872665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440117, 37.772614, 22.099232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.830948, 37.691177, 22.074360>,  <34.065449, 37.642315, 22.059437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.830948, 37.691177, 22.074360>,  <33.440117, 37.772614, 22.099232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830948, 37.691177, 22.074360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008667, -0.253817, 0.967214,
		-0.212691, -0.945585, -0.246235,
		0.977081, -0.203583, -0.062180,
		34.124073, 37.630100, 22.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493263, 37.278038, 22.542837>,  <33.440117, 37.772614, 22.099232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493263, 37.278038, 22.542837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.870350, 37.399475, 22.487537>,  <34.096603, 37.472336, 22.454357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.870350, 37.399475, 22.487537>,  <33.493263, 37.278038, 22.542837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870350, 37.399475, 22.487537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129315, 0.049448, 0.990370,
		0.307507, -0.951517, 0.007356,
		0.942718, 0.303594, -0.138251,
		34.153164, 37.490555, 22.446062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931629, 36.745762, 22.909193>,  <33.493263, 37.278038, 22.542837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931629, 36.745762, 22.909193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.137947, 37.086704, 22.874670>,  <34.261738, 37.291267, 22.853956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.137947, 37.086704, 22.874670>,  <33.931629, 36.745762, 22.909193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137947, 37.086704, 22.874670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254817, -0.056455, 0.965340,
		0.817939, -0.519910, -0.246314,
		0.515795, 0.852354, -0.086305,
		34.292686, 37.342411, 22.848778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404293, 36.692928, 23.438189>,  <33.931629, 36.745762, 22.909193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404293, 36.692928, 23.438189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.429291, 37.082867, 23.352615>,  <34.444290, 37.316830, 23.301271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.429291, 37.082867, 23.352615>,  <34.404293, 36.692928, 23.438189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429291, 37.082867, 23.352615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176822, 0.200147, 0.963678,
		0.982257, -0.098049, -0.159868,
		0.062491, 0.974847, -0.213933,
		34.448036, 37.375320, 23.288435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072315, 36.956711, 23.777666>,  <34.404293, 36.692928, 23.438189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072315, 36.956711, 23.777666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815102, 37.259109, 23.728706>,  <34.660774, 37.440548, 23.699331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815102, 37.259109, 23.728706>,  <35.072315, 36.956711, 23.777666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815102, 37.259109, 23.728706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154734, 0.284778, 0.946023,
		0.750043, 0.589386, -0.300099,
		-0.643034, 0.755993, -0.122398,
		34.622192, 37.485909, 23.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380589, 37.523876, 24.214531>,  <35.072315, 36.956711, 23.777666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380589, 37.523876, 24.214531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.997810, 37.627773, 24.162697>,  <34.768143, 37.690113, 24.131596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.997810, 37.627773, 24.162697>,  <35.380589, 37.523876, 24.214531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997810, 37.627773, 24.162697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046331, 0.304028, 0.951536,
		0.286554, 0.916570, -0.278903,
		-0.956943, 0.259745, -0.129586,
		34.710728, 37.705696, 24.123821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324986, 38.097343, 24.474167>,  <35.380589, 37.523876, 24.214531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324986, 38.097343, 24.474167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948624, 37.962784, 24.489799>,  <34.722805, 37.882050, 24.499180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948624, 37.962784, 24.489799>,  <35.324986, 38.097343, 24.474167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948624, 37.962784, 24.489799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059280, 0.277217, 0.958977,
		-0.333430, 0.899993, -0.280778,
		-0.940909, -0.336396, 0.039081,
		34.666351, 37.861866, 24.501524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082981, 38.552311, 24.887634>,  <35.324986, 38.097343, 24.474167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082981, 38.552311, 24.887634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.808289, 38.262188, 24.868294>,  <34.643475, 38.088116, 24.856689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.808289, 38.262188, 24.868294>,  <35.082981, 38.552311, 24.887634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808289, 38.262188, 24.868294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230568, 0.154256, 0.960751,
		-0.689377, 0.670925, -0.273164,
		-0.686729, -0.725303, -0.048353,
		34.602268, 38.044598, 24.853788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375587, 38.852562, 25.055325>,  <35.082981, 38.552311, 24.887634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375587, 38.852562, 25.055325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.343464, 38.459251, 25.120703>,  <34.324192, 38.223263, 25.159929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.343464, 38.459251, 25.120703>,  <34.375587, 38.852562, 25.055325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343464, 38.459251, 25.120703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190893, 0.176113, 0.965683,
		-0.978321, 0.046348, -0.201843,
		-0.080305, -0.983278, 0.163447,
		34.319374, 38.164268, 25.169737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884441, 38.739647, 25.595491>,  <34.375587, 38.852562, 25.055325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884441, 38.739647, 25.595491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092056, 38.397778, 25.600136>,  <34.216625, 38.192657, 25.602922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092056, 38.397778, 25.600136>,  <33.884441, 38.739647, 25.595491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092056, 38.397778, 25.600136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070963, -0.029550, 0.997041,
		-0.851800, -0.518326, -0.075987,
		0.519038, -0.854672, 0.011611,
		34.247768, 38.141376, 25.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492538, 38.237568, 26.032391>,  <33.884441, 38.739647, 25.595491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492538, 38.237568, 26.032391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882267, 38.148056, 26.022400>,  <34.116104, 38.094349, 26.016405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882267, 38.148056, 26.022400>,  <33.492538, 38.237568, 26.032391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882267, 38.148056, 26.022400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021953, -0.204808, 0.978556,
		-0.224102, -0.952877, -0.204461,
		0.974318, -0.223785, -0.024980,
		34.174564, 38.080925, 26.014906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877010, 37.916271, 26.219130>,  <33.492538, 38.237568, 26.032391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877010, 37.916271, 26.219130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.564384, 38.104477, 26.382973>,  <32.376808, 38.217400, 26.481279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.564384, 38.104477, 26.382973>,  <32.877010, 37.916271, 26.219130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564384, 38.104477, 26.382973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313403, 0.271580, -0.909957,
		-0.539391, -0.839559, -0.064795,
		-0.781560, 0.470516, 0.409608,
		32.329918, 38.245632, 26.505856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231544, 37.681976, 25.846096>,  <32.877010, 37.916271, 26.219130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231544, 37.681976, 25.846096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152962, 38.029976, 26.026983>,  <32.105812, 38.238777, 26.135515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152962, 38.029976, 26.026983>,  <32.231544, 37.681976, 25.846096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152962, 38.029976, 26.026983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394101, 0.352248, -0.848885,
		-0.897825, -0.344987, 0.273668,
		-0.196455, 0.870003, 0.452217,
		32.094025, 38.290977, 26.162649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568628, 37.832661, 25.659798>,  <32.231544, 37.681976, 25.846096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568628, 37.832661, 25.659798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720661, 38.182655, 25.779760>,  <31.811880, 38.392651, 25.851738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720661, 38.182655, 25.779760>,  <31.568628, 37.832661, 25.659798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720661, 38.182655, 25.779760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416257, 0.451355, -0.789309,
		-0.825996, 0.175163, 0.535769,
		0.380080, 0.874983, 0.299905,
		31.834684, 38.445152, 25.869732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070063, 38.277885, 25.600183>,  <31.568628, 37.832661, 25.659798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070063, 38.277885, 25.600183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392277, 38.512592, 25.567158>,  <31.585606, 38.653416, 25.547342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392277, 38.512592, 25.567158>,  <31.070063, 38.277885, 25.600183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392277, 38.512592, 25.567158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369625, 0.388680, -0.843982,
		-0.463127, 0.710377, 0.529979,
		0.805537, 0.586764, -0.082565,
		31.633938, 38.688622, 25.542389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729473, 38.872578, 25.357517>,  <31.070063, 38.277885, 25.600183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729473, 38.872578, 25.357517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122000, 38.881134, 25.281033>,  <31.357515, 38.886269, 25.235142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122000, 38.881134, 25.281033>,  <30.729473, 38.872578, 25.357517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122000, 38.881134, 25.281033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192015, 0.172210, -0.966165,
		0.012259, 0.984828, 0.173100,
		0.981315, 0.021393, -0.191213,
		31.416395, 38.887550, 25.223669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669268, 39.471897, 25.027971>,  <30.729473, 38.872578, 25.357517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669268, 39.471897, 25.027971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029022, 39.321804, 24.938261>,  <31.244875, 39.231747, 24.884434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.029022, 39.321804, 24.938261>,  <30.669268, 39.471897, 25.027971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029022, 39.321804, 24.938261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069152, 0.384461, -0.920548,
		0.431648, 0.843438, 0.319831,
		0.899387, -0.375236, -0.224277,
		31.298838, 39.209232, 24.870977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030630, 40.027794, 24.684986>,  <30.669268, 39.471897, 25.027971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030630, 40.027794, 24.684986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222265, 39.697891, 24.564819>,  <31.337246, 39.499950, 24.492720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222265, 39.697891, 24.564819>,  <31.030630, 40.027794, 24.684986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222265, 39.697891, 24.564819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079856, 0.381785, -0.920795,
		0.874126, 0.417153, 0.248771,
		0.479090, -0.824757, -0.300416,
		31.365992, 39.450462, 24.474695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518011, 40.301937, 24.253922>,  <31.030630, 40.027794, 24.684986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518011, 40.301937, 24.253922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.509363, 39.917118, 24.145107>,  <31.504175, 39.686226, 24.079819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.509363, 39.917118, 24.145107>,  <31.518011, 40.301937, 24.253922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509363, 39.917118, 24.145107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072732, 0.269863, -0.960148,
		0.997117, -0.040542, 0.064137,
		-0.021618, -0.962045, -0.272034,
		31.502878, 39.628506, 24.063498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122742, 40.227192, 23.824886>,  <31.518011, 40.301937, 24.253922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122742, 40.227192, 23.824886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.859118, 39.936417, 23.747740>,  <31.700943, 39.761951, 23.701452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.859118, 39.936417, 23.747740>,  <32.122742, 40.227192, 23.824886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859118, 39.936417, 23.747740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118892, 0.152516, -0.981124,
		0.742633, -0.669550, -0.014090,
		-0.659060, -0.726940, -0.192867,
		31.661400, 39.718334, 23.689880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363556, 39.806698, 23.302929>,  <32.122742, 40.227192, 23.824886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363556, 39.806698, 23.302929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.973413, 39.721542, 23.279776>,  <31.739326, 39.670448, 23.265884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.973413, 39.721542, 23.279776>,  <32.363556, 39.806698, 23.302929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973413, 39.721542, 23.279776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026236, 0.148567, -0.988554,
		0.219057, -0.965714, -0.139321,
		-0.975359, -0.212895, -0.057881,
		31.680805, 39.657673, 23.262411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394726, 39.364635, 22.777258>,  <32.363556, 39.806698, 23.302929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394726, 39.364635, 22.777258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010445, 39.471001, 22.809093>,  <31.779875, 39.534821, 22.828196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010445, 39.471001, 22.809093>,  <32.394726, 39.364635, 22.777258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010445, 39.471001, 22.809093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033613, 0.173170, -0.984318,
		-0.275524, -0.948316, -0.157428,
		-0.960706, 0.265912, 0.079588,
		31.722233, 39.550774, 22.832970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975847, 38.937115, 22.223644>,  <32.394726, 39.364635, 22.777258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975847, 38.937115, 22.223644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753895, 39.250774, 22.334793>,  <31.620724, 39.438972, 22.401482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.753895, 39.250774, 22.334793>,  <31.975847, 38.937115, 22.223644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753895, 39.250774, 22.334793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282718, 0.136390, -0.949457,
		-0.782417, -0.605396, 0.146013,
		-0.554882, 0.784152, 0.277870,
		31.587429, 39.486019, 22.418154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760685, 38.549286, 22.248610>,  <31.975847, 38.937115, 22.223644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760685, 38.549286, 22.248610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.699581, 38.925091, 22.125978>,  <32.662918, 39.150574, 22.052399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.699581, 38.925091, 22.125978>,  <32.760685, 38.549286, 22.248610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699581, 38.925091, 22.125978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193777, 0.332673, 0.922919,
		0.969080, 0.081575, -0.232873,
		-0.152757, 0.939508, -0.306579,
		32.653755, 39.206944, 22.034004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253212, 38.226070, 21.845854>,  <32.760685, 38.549286, 22.248610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253212, 38.226070, 21.845854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343609, 38.615349, 21.862907>,  <32.397846, 38.848915, 21.873138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.343609, 38.615349, 21.862907>,  <32.253212, 38.226070, 21.845854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343609, 38.615349, 21.862907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973672, 0.227008, -0.020724,
		-0.029846, -0.036826, 0.998876,
		0.225990, 0.973196, 0.042632,
		32.411407, 38.907307, 21.875696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841038, 37.817074, 21.621605>,  <32.253212, 38.226070, 21.845854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841038, 37.817074, 21.621605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445221, 37.763313, 21.600674>,  <32.207729, 37.731056, 21.588114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.445221, 37.763313, 21.600674>,  <32.841038, 37.817074, 21.621605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445221, 37.763313, 21.600674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048229, -0.650298, 0.758147,
		-0.135923, 0.747697, 0.649980,
		-0.989545, -0.134397, -0.052330,
		32.148357, 37.722996, 21.584974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619213, 37.868950, 22.377726>,  <32.841038, 37.817074, 21.621605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619213, 37.868950, 22.377726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.368950, 37.653061, 22.152426>,  <32.218792, 37.523529, 22.017246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.368950, 37.653061, 22.152426>,  <32.619213, 37.868950, 22.377726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368950, 37.653061, 22.152426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122849, -0.644852, 0.754370,
		-0.770361, 0.541175, 0.337156,
		-0.625661, -0.539718, -0.563252,
		32.181252, 37.491146, 21.983450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005718, 37.802544, 22.761694>,  <32.619213, 37.868950, 22.377726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005718, 37.802544, 22.761694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025539, 37.497719, 22.503454>,  <32.037430, 37.314823, 22.348511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025539, 37.497719, 22.503454>,  <32.005718, 37.802544, 22.761694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025539, 37.497719, 22.503454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269704, -0.632590, 0.726010,
		-0.961668, 0.138147, -0.236877,
		0.049550, -0.762066, -0.645600,
		32.040405, 37.269100, 22.309774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414080, 37.419411, 22.772226>,  <32.005718, 37.802544, 22.761694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414080, 37.419411, 22.772226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.644178, 37.141495, 22.599548>,  <31.782238, 36.974747, 22.495941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.644178, 37.141495, 22.599548>,  <31.414080, 37.419411, 22.772226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644178, 37.141495, 22.599548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258484, -0.655114, 0.709938,
		-0.776066, -0.296803, -0.556444,
		0.575246, -0.694791, -0.431693,
		31.816751, 36.933056, 22.470041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001907, 36.824306, 22.681448>,  <31.414080, 37.419411, 22.772226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001907, 36.824306, 22.681448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.387449, 36.717735, 22.682047>,  <31.618774, 36.653793, 22.682405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.387449, 36.717735, 22.682047>,  <31.001907, 36.824306, 22.681448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387449, 36.717735, 22.682047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201128, -0.723915, 0.659920,
		-0.174738, -0.636367, -0.751335,
		0.963854, -0.266427, 0.001496,
		31.676605, 36.637806, 22.682495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985325, 36.110737, 22.601351>,  <31.001907, 36.824306, 22.681448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985325, 36.110737, 22.601351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.356838, 36.146431, 22.745239>,  <31.579746, 36.167847, 22.831572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.356838, 36.146431, 22.745239>,  <30.985325, 36.110737, 22.601351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356838, 36.146431, 22.745239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273252, -0.490839, 0.827291,
		0.250393, -0.866668, -0.431498,
		0.928783, 0.089240, 0.359721,
		31.635473, 36.173203, 22.853155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105907, 35.447086, 22.864008>,  <30.985325, 36.110737, 22.601351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105907, 35.447086, 22.864008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392056, 35.662693, 23.041866>,  <31.563745, 35.792057, 23.148581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392056, 35.662693, 23.041866>,  <31.105907, 35.447086, 22.864008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392056, 35.662693, 23.041866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201069, -0.450635, 0.869769,
		0.669190, -0.711612, -0.213992,
		0.715371, 0.539014, 0.444644,
		31.606667, 35.824398, 23.175259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808928, 35.196205, 22.763119>,  <31.105907, 35.447086, 22.864008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808928, 35.196205, 22.763119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.716047, 34.807198, 22.756269>,  <31.660318, 34.573795, 22.752159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.716047, 34.807198, 22.756269>,  <31.808928, 35.196205, 22.763119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716047, 34.807198, 22.756269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253331, -0.043470, -0.966402,
		0.939098, -0.228739, 0.256463,
		-0.232202, -0.972517, -0.017124,
		31.646387, 34.515442, 22.751133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323048, 34.855377, 22.275002>,  <31.808928, 35.196205, 22.763119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323048, 34.855377, 22.275002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062050, 34.553951, 22.307011>,  <31.905453, 34.373096, 22.326216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062050, 34.553951, 22.307011>,  <32.323048, 34.855377, 22.275002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062050, 34.553951, 22.307011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092338, -0.183873, -0.978603,
		0.752151, -0.631140, 0.189558,
		-0.652490, -0.753560, 0.080022,
		31.866302, 34.327885, 22.331017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565948, 34.289654, 21.897997>,  <32.323048, 34.855377, 22.275002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565948, 34.289654, 21.897997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.172802, 34.219879, 21.921793>,  <31.936913, 34.178013, 21.936071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.172802, 34.219879, 21.921793>,  <32.565948, 34.289654, 21.897997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172802, 34.219879, 21.921793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032749, -0.152350, -0.987784,
		0.181373, -0.972810, 0.144027,
		-0.982869, -0.174441, 0.059491,
		31.877941, 34.167545, 21.939640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326839, 33.611656, 21.561914>,  <32.565948, 34.289654, 21.897997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326839, 33.611656, 21.561914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002930, 33.846214, 21.553848>,  <31.808582, 33.986950, 21.549009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.002930, 33.846214, 21.553848>,  <32.326839, 33.611656, 21.561914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002930, 33.846214, 21.553848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059510, -0.116274, -0.991433,
		-0.583713, -0.801639, 0.129052,
		-0.809777, 0.586392, -0.020165,
		31.759996, 34.022133, 21.547798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953049, 33.277645, 21.034794>,  <32.326839, 33.611656, 21.561914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953049, 33.277645, 21.034794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803919, 33.644543, 21.090883>,  <31.714441, 33.864681, 21.124537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.803919, 33.644543, 21.090883>,  <31.953049, 33.277645, 21.034794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803919, 33.644543, 21.090883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237523, 0.051746, -0.970003,
		-0.896986, -0.394948, 0.198575,
		-0.372825, 0.917245, 0.140225,
		31.692072, 33.919716, 21.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262299, 33.388657, 20.645071>,  <31.953049, 33.277645, 21.034794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262299, 33.388657, 20.645071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360502, 33.772240, 20.701817>,  <31.419424, 34.002388, 20.735865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.360502, 33.772240, 20.701817>,  <31.262299, 33.388657, 20.645071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360502, 33.772240, 20.701817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130974, 0.177815, -0.975309,
		-0.960505, 0.220868, 0.169254,
		0.245510, 0.958958, 0.141864,
		31.434155, 34.059925, 20.744375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718321, 33.704445, 20.301746>,  <31.262299, 33.388657, 20.645071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718321, 33.704445, 20.301746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020721, 33.962933, 20.343439>,  <31.202162, 34.118027, 20.368454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020721, 33.962933, 20.343439>,  <30.718321, 33.704445, 20.301746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020721, 33.962933, 20.343439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120607, 0.294030, -0.948156,
		-0.643364, 0.704235, 0.300225,
		0.756000, 0.646219, 0.104232,
		31.247522, 34.156799, 20.374708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412058, 34.363853, 20.095375>,  <30.718321, 33.704445, 20.301746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412058, 34.363853, 20.095375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809681, 34.379448, 20.054728>,  <31.048256, 34.388805, 20.030340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809681, 34.379448, 20.054728>,  <30.412058, 34.363853, 20.095375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809681, 34.379448, 20.054728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108520, 0.283486, -0.952816,
		-0.008344, 0.958183, 0.286033,
		0.994059, 0.038990, -0.101617,
		31.107899, 34.391144, 20.024242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457827, 34.966579, 19.842577>,  <30.412058, 34.363853, 20.095375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457827, 34.966579, 19.842577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.800303, 34.773323, 19.769350>,  <31.005787, 34.657368, 19.725414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.800303, 34.773323, 19.769350>,  <30.457827, 34.966579, 19.842577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800303, 34.773323, 19.769350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045522, 0.423488, -0.904757,
		0.514656, 0.766308, 0.384579,
		0.856187, -0.483146, -0.183067,
		31.057159, 34.628380, 19.714430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.382542, 30.126534, 35.232643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719769, 30.021536, 35.044884>,  <32.922104, 29.958538, 34.932228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719769, 30.021536, 35.044884>,  <32.382542, 30.126534, 35.232643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719769, 30.021536, 35.044884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282764, 0.526082, -0.802049,
		0.457477, 0.808909, 0.369297,
		0.843065, -0.262495, -0.469401,
		32.972687, 29.942787, 34.904064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699821, 30.741343, 34.862793>,  <32.382542, 30.126534, 35.232643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699821, 30.741343, 34.862793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870491, 30.422945, 34.691051>,  <32.972893, 30.231907, 34.588005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870491, 30.422945, 34.691051>,  <32.699821, 30.741343, 34.862793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870491, 30.422945, 34.691051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156334, 0.402678, -0.901892,
		0.890791, 0.451938, 0.047373,
		0.426675, -0.795992, -0.429355,
		32.998493, 30.184147, 34.562244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219009, 30.993063, 34.542862>,  <32.699821, 30.741343, 34.862793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219009, 30.993063, 34.542862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136524, 30.657478, 34.341419>,  <33.087032, 30.456127, 34.220554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136524, 30.657478, 34.341419>,  <33.219009, 30.993063, 34.542862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136524, 30.657478, 34.341419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122775, 0.488422, -0.863927,
		0.970775, -0.239980, 0.002287,
		-0.206208, -0.838960, -0.503611,
		33.074661, 30.405790, 34.190334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476124, 31.096220, 33.823742>,  <33.219009, 30.993063, 34.542862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476124, 31.096220, 33.823742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233276, 30.781200, 33.781460>,  <33.087566, 30.592190, 33.756088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233276, 30.781200, 33.781460>,  <33.476124, 31.096220, 33.823742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233276, 30.781200, 33.781460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316506, 0.361700, -0.876925,
		0.728855, -0.498941, -0.468859,
		-0.607120, -0.787547, -0.105709,
		33.051140, 30.544937, 33.749748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583183, 30.917063, 33.221130>,  <33.476124, 31.096220, 33.823742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583183, 30.917063, 33.221130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237038, 30.724354, 33.276321>,  <33.029350, 30.608728, 33.309437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237038, 30.724354, 33.276321>,  <33.583183, 30.917063, 33.221130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237038, 30.724354, 33.276321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302070, 0.281769, -0.910692,
		0.399873, -0.829758, -0.389363,
		-0.865364, -0.481776, 0.137973,
		32.977428, 30.579823, 33.317715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444248, 30.484043, 32.628479>,  <33.583183, 30.917063, 33.221130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444248, 30.484043, 32.628479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084911, 30.537472, 32.795879>,  <32.869308, 30.569529, 32.896320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084911, 30.537472, 32.795879>,  <33.444248, 30.484043, 32.628479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084911, 30.537472, 32.795879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397280, 0.159569, -0.903718,
		-0.187490, -0.978109, -0.090282,
		-0.898341, 0.133571, 0.418500,
		32.815411, 30.577543, 32.921429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984730, 30.075779, 32.257858>,  <33.444248, 30.484043, 32.628479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984730, 30.075779, 32.257858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742161, 30.337858, 32.438068>,  <32.596619, 30.495106, 32.546192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742161, 30.337858, 32.438068>,  <32.984730, 30.075779, 32.257858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742161, 30.337858, 32.438068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456595, 0.176929, -0.871904,
		-0.650981, -0.734446, 0.191867,
		-0.606420, 0.655199, 0.450522,
		32.560234, 30.534418, 32.573223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335625, 29.981741, 31.949755>,  <32.984730, 30.075779, 32.257858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335625, 29.981741, 31.949755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277081, 30.342804, 32.111637>,  <32.241955, 30.559443, 32.208767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277081, 30.342804, 32.111637>,  <32.335625, 29.981741, 31.949755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277081, 30.342804, 32.111637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508549, 0.282254, -0.813456,
		-0.848502, -0.324872, 0.417734,
		-0.146362, 0.902658, 0.404707,
		32.233173, 30.613602, 32.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559484, 30.109198, 32.120564>,  <32.335625, 29.981741, 31.949755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559484, 30.109198, 32.120564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.770294, 30.444159, 32.062599>,  <31.896780, 30.645136, 32.027821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.770294, 30.444159, 32.062599>,  <31.559484, 30.109198, 32.120564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770294, 30.444159, 32.062599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529551, 0.190226, -0.826674,
		-0.664695, 0.512415, 0.543702,
		0.527026, 0.837404, -0.144908,
		31.928402, 30.695379, 32.019127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130894, 30.659523, 31.870905>,  <31.559484, 30.109198, 32.120564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130894, 30.659523, 31.870905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476944, 30.820255, 31.750847>,  <31.684574, 30.916695, 31.678812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.476944, 30.820255, 31.750847>,  <31.130894, 30.659523, 31.870905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476944, 30.820255, 31.750847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417485, 0.245294, -0.874950,
		-0.277957, 0.882249, 0.379968,
		0.865128, 0.401830, -0.300145,
		31.736483, 30.940804, 31.660803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967922, 31.354954, 31.566133>,  <31.130894, 30.659523, 31.870905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967922, 31.354954, 31.566133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317223, 31.249907, 31.401955>,  <31.526802, 31.186878, 31.303448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317223, 31.249907, 31.401955>,  <30.967922, 31.354954, 31.566133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317223, 31.249907, 31.401955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293463, 0.388992, -0.873250,
		0.388992, 0.883016, 0.262618,
		0.873250, -0.262618, -0.410447,
		31.579197, 31.171122, 31.278820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132755, 31.948423, 31.207067>,  <30.967922, 31.354954, 31.566133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132755, 31.948423, 31.207067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368347, 31.651667, 31.078882>,  <31.509703, 31.473612, 31.001970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368347, 31.651667, 31.078882>,  <31.132755, 31.948423, 31.207067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368347, 31.651667, 31.078882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111834, 0.317903, -0.941505,
		0.800373, 0.590366, 0.104269,
		0.588980, -0.741894, -0.320464,
		31.545040, 31.429098, 30.982742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430836, 32.616917, 31.537964>,  <31.132755, 31.948423, 31.207067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430836, 32.616917, 31.537964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211416, 32.950710, 31.517038>,  <31.079763, 33.150986, 31.504482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211416, 32.950710, 31.517038>,  <31.430836, 32.616917, 31.537964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211416, 32.950710, 31.517038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065136, 0.105026, 0.992334,
		0.833577, 0.540937, -0.111967,
		-0.548550, 0.834480, -0.052313,
		31.046852, 33.201054, 31.501345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644171, 33.055157, 32.043072>,  <31.430836, 32.616917, 31.537964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644171, 33.055157, 32.043072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.288599, 33.229092, 31.985489>,  <31.075256, 33.333450, 31.950937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.288599, 33.229092, 31.985489>,  <31.644171, 33.055157, 32.043072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288599, 33.229092, 31.985489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057625, 0.205631, 0.976931,
		0.454407, 0.876718, -0.157734,
		-0.888928, 0.434835, -0.143961,
		31.021921, 33.359543, 31.942301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698187, 33.725933, 32.331032>,  <31.644171, 33.055157, 32.043072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698187, 33.725933, 32.331032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311539, 33.624092, 32.319553>,  <31.079550, 33.562988, 32.312664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311539, 33.624092, 32.319553>,  <31.698187, 33.725933, 32.331032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311539, 33.624092, 32.319553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083762, 0.208157, 0.974502,
		-0.242140, 0.944376, -0.222534,
		-0.966619, -0.254606, -0.028699,
		31.021553, 33.547710, 32.310944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286865, 34.272137, 32.657764>,  <31.698187, 33.725933, 32.331032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286865, 34.272137, 32.657764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020288, 33.973934, 32.661163>,  <30.860342, 33.795013, 32.663204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020288, 33.973934, 32.661163>,  <31.286865, 34.272137, 32.657764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020288, 33.973934, 32.661163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171402, 0.164301, 0.971404,
		-0.725585, 0.645930, -0.237279,
		-0.666444, -0.745507, 0.008500,
		30.820354, 33.750282, 32.663715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708513, 34.498077, 33.024998>,  <31.286865, 34.272137, 32.657764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708513, 34.498077, 33.024998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680040, 34.099285, 33.037350>,  <30.662956, 33.860008, 33.044762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680040, 34.099285, 33.037350>,  <30.708513, 34.498077, 33.024998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680040, 34.099285, 33.037350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247111, 0.047618, 0.967817,
		-0.966369, 0.061262, -0.249755,
		-0.071183, -0.996985, 0.030878,
		30.658686, 33.800190, 33.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155199, 34.420597, 33.430805>,  <30.708513, 34.498077, 33.024998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155199, 34.420597, 33.430805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330042, 34.061954, 33.459183>,  <30.434948, 33.846767, 33.476208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330042, 34.061954, 33.459183>,  <30.155199, 34.420597, 33.430805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330042, 34.061954, 33.459183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250231, -0.045468, 0.967118,
		-0.863900, -0.440484, -0.244234,
		0.437105, -0.896608, 0.070943,
		30.461174, 33.792973, 33.480465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764473, 34.008961, 33.894646>,  <30.155199, 34.420597, 33.430805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764473, 34.008961, 33.894646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.116440, 33.819065, 33.902359>,  <30.327620, 33.705128, 33.906986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.116440, 33.819065, 33.902359>,  <29.764473, 34.008961, 33.894646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116440, 33.819065, 33.902359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140004, -0.220284, 0.965336,
		-0.454037, -0.852113, -0.260297,
		0.879915, -0.474741, 0.019282,
		30.380415, 33.676643, 33.908142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705070, 33.263134, 34.153053>,  <29.764473, 34.008961, 33.894646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705070, 33.263134, 34.153053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079222, 33.377724, 34.236000>,  <30.303713, 33.446476, 34.285767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079222, 33.377724, 34.236000>,  <29.705070, 33.263134, 34.153053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079222, 33.377724, 34.236000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154010, -0.197864, 0.968055,
		0.318354, -0.937434, -0.140958,
		0.935378, 0.286475, 0.207364,
		30.359835, 33.463665, 34.298210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957005, 32.750954, 34.692299>,  <29.705070, 33.263134, 34.153053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957005, 32.750954, 34.692299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206057, 33.061123, 34.734344>,  <30.355488, 33.247223, 34.759571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206057, 33.061123, 34.734344>,  <29.957005, 32.750954, 34.692299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206057, 33.061123, 34.734344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136486, -0.024657, 0.990335,
		0.770521, -0.630960, 0.090482,
		0.622630, 0.775423, 0.105116,
		30.392845, 33.293751, 34.765881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493416, 32.517384, 35.277885>,  <29.957005, 32.750954, 34.692299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493416, 32.517384, 35.277885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531223, 32.914234, 35.245007>,  <30.553907, 33.152344, 35.225281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.531223, 32.914234, 35.245007>,  <30.493416, 32.517384, 35.277885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531223, 32.914234, 35.245007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026954, 0.079986, 0.996432,
		0.995158, -0.096396, -0.019181,
		0.094518, 0.992124, -0.082197,
		30.559578, 33.211872, 35.220348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031677, 32.701267, 35.635700>,  <30.493416, 32.517384, 35.277885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031677, 32.701267, 35.635700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.804718, 33.030151, 35.617664>,  <30.668541, 33.227482, 35.606842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.804718, 33.030151, 35.617664>,  <31.031677, 32.701267, 35.635700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804718, 33.030151, 35.617664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028822, 0.034897, 0.998975,
		0.822937, 0.568119, 0.003897,
		-0.567401, 0.822206, -0.045093,
		30.634499, 33.276814, 35.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302565, 33.078941, 36.062611>,  <31.031677, 32.701267, 35.635700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302565, 33.078941, 36.062611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.934490, 33.227398, 36.012794>,  <30.713646, 33.316471, 35.982906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.934490, 33.227398, 36.012794>,  <31.302565, 33.078941, 36.062611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934490, 33.227398, 36.012794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114223, 0.049747, 0.992209,
		0.374446, 0.927242, -0.003383,
		-0.920187, 0.371142, -0.124540,
		30.658434, 33.338741, 35.975433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113066, 33.654346, 36.627567>,  <31.302565, 33.078941, 36.062611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113066, 33.654346, 36.627567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745625, 33.564621, 36.497429>,  <30.525160, 33.510784, 36.419346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745625, 33.564621, 36.497429>,  <31.113066, 33.654346, 36.627567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745625, 33.564621, 36.497429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331479, -0.010839, 0.943400,
		-0.215148, 0.974456, -0.064400,
		-0.918604, -0.224318, -0.325343,
		30.470043, 33.497326, 36.399826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664547, 34.220684, 36.712292>,  <31.113066, 33.654346, 36.627567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664547, 34.220684, 36.712292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466434, 33.874172, 36.738388>,  <30.347567, 33.666264, 36.754044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.466434, 33.874172, 36.738388>,  <30.664547, 34.220684, 36.712292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466434, 33.874172, 36.738388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404932, 0.296644, 0.864889,
		-0.768588, 0.401947, -0.497707,
		-0.495281, -0.866280, 0.065236,
		30.317850, 33.614288, 36.757957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360037, 34.834957, 36.364471>,  <30.664547, 34.220684, 36.712292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360037, 34.834957, 36.364471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429348, 34.564980, 36.077576>,  <30.470934, 34.402992, 35.905437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429348, 34.564980, 36.077576>,  <30.360037, 34.834957, 36.364471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429348, 34.564980, 36.077576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131413, 0.705896, -0.696018,
		0.976067, 0.214858, 0.033619,
		0.173276, -0.674942, -0.717237,
		30.481331, 34.362495, 35.862404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366213, 35.557281, 36.403591>,  <30.360037, 34.834957, 36.364471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366213, 35.557281, 36.403591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.697588, 35.765034, 36.487431>,  <30.896414, 35.889687, 36.537735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.697588, 35.765034, 36.487431>,  <30.366213, 35.557281, 36.403591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697588, 35.765034, 36.487431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144792, 0.162905, -0.975960,
		-0.541042, 0.838870, 0.059755,
		0.828438, 0.519383, 0.209600,
		30.946119, 35.920849, 36.550312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430614, 36.243088, 36.200089>,  <30.366213, 35.557281, 36.403591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430614, 36.243088, 36.200089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823107, 36.196228, 36.261360>,  <31.058601, 36.168114, 36.298122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823107, 36.196228, 36.261360>,  <30.430614, 36.243088, 36.200089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823107, 36.196228, 36.261360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192195, 0.529077, -0.826522,
		0.015780, 0.840448, 0.541661,
		0.981230, -0.117147, 0.153181,
		31.117476, 36.161083, 36.307316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676250, 36.999382, 36.160507>,  <30.430614, 36.243088, 36.200089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676250, 36.999382, 36.160507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.923826, 36.692142, 36.094864>,  <31.072372, 36.507797, 36.055477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.923826, 36.692142, 36.094864>,  <30.676250, 36.999382, 36.160507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923826, 36.692142, 36.094864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199971, 0.356155, -0.912779,
		0.759555, 0.532139, 0.374037,
		0.618941, -0.768103, -0.164107,
		31.109509, 36.461712, 36.045631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327501, 37.230095, 35.736610>,  <30.676250, 36.999382, 36.160507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327501, 37.230095, 35.736610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295509, 36.833820, 35.692547>,  <31.276314, 36.596054, 35.666107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.295509, 36.833820, 35.692547>,  <31.327501, 37.230095, 35.736610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295509, 36.833820, 35.692547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121222, 0.100028, -0.987573,
		0.989398, -0.092338, 0.112094,
		-0.079978, -0.990691, -0.110161,
		31.271517, 36.536613, 35.659500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891577, 37.039574, 35.341084>,  <31.327501, 37.230095, 35.736610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891577, 37.039574, 35.341084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636368, 36.733871, 35.303471>,  <31.483242, 36.550449, 35.280903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636368, 36.733871, 35.303471>,  <31.891577, 37.039574, 35.341084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636368, 36.733871, 35.303471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119625, 0.022262, -0.992569,
		0.760669, -0.644531, 0.077221,
		-0.638022, -0.764254, -0.094036,
		31.444962, 36.504597, 35.275261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224155, 36.622116, 34.903404>,  <31.891577, 37.039574, 35.341084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224155, 36.622116, 34.903404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844494, 36.496269, 34.907875>,  <31.616697, 36.420761, 34.910557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.844494, 36.496269, 34.907875>,  <32.224155, 36.622116, 34.903404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844494, 36.496269, 34.907875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016501, 0.014270, -0.999762,
		0.314380, -0.949112, -0.018736,
		-0.949154, -0.314614, 0.011176,
		31.559748, 36.401886, 34.911228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263416, 36.007191, 34.597794>,  <32.224155, 36.622116, 34.903404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263416, 36.007191, 34.597794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.906723, 36.185997, 34.569565>,  <31.692705, 36.293282, 34.552628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.906723, 36.185997, 34.569565>,  <32.263416, 36.007191, 34.597794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906723, 36.185997, 34.569565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065974, -0.025877, -0.997486,
		-0.447719, -0.894151, -0.006415,
		-0.891737, 0.447016, -0.070576,
		31.639202, 36.320103, 34.548393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940336, 35.706703, 34.012295>,  <32.263416, 36.007191, 34.597794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940336, 35.706703, 34.012295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745527, 36.049549, 34.079426>,  <31.628643, 36.255257, 34.119705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745527, 36.049549, 34.079426>,  <31.940336, 35.706703, 34.012295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745527, 36.049549, 34.079426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105303, 0.248377, -0.962923,
		-0.867019, -0.451292, -0.211221,
		-0.487021, 0.857114, 0.167825,
		31.599421, 36.306683, 34.129772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467890, 35.867229, 33.323578>,  <31.940336, 35.706703, 34.012295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467890, 35.867229, 33.323578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490595, 36.218353, 33.513832>,  <31.504217, 36.429028, 33.627983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490595, 36.218353, 33.513832>,  <31.467890, 35.867229, 33.323578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490595, 36.218353, 33.513832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110264, 0.467978, -0.876834,
		-0.992280, 0.102217, -0.070227,
		0.056763, 0.877809, 0.475636,
		31.507624, 36.481697, 33.656525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092785, 36.276802, 32.887024>,  <31.467890, 35.867229, 33.323578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092785, 36.276802, 32.887024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.284229, 36.546909, 33.111504>,  <31.399096, 36.708973, 33.246193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.284229, 36.546909, 33.111504>,  <31.092785, 36.276802, 32.887024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284229, 36.546909, 33.111504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045563, 0.619196, -0.783913,
		-0.876845, 0.400758, 0.265586,
		0.478610, 0.675269, 0.561199,
		31.427813, 36.749489, 33.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735611, 37.002739, 32.956589>,  <31.092785, 36.276802, 32.887024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735611, 37.002739, 32.956589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132895, 37.028141, 32.995571>,  <31.371265, 37.043385, 33.018963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.132895, 37.028141, 32.995571>,  <30.735611, 37.002739, 32.956589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132895, 37.028141, 32.995571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024938, 0.702088, -0.711653,
		-0.113620, 0.709252, 0.695738,
		0.993211, 0.063508, 0.097459,
		31.430859, 37.047192, 33.024807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873335, 37.553055, 32.547058>,  <30.735611, 37.002739, 32.956589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873335, 37.553055, 32.547058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243357, 37.422207, 32.624275>,  <31.465370, 37.343697, 32.670605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243357, 37.422207, 32.624275>,  <30.873335, 37.553055, 32.547058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243357, 37.422207, 32.624275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340008, 0.486590, -0.804752,
		0.169316, 0.810076, 0.561345,
		0.925055, -0.327119, 0.193045,
		31.520874, 37.324070, 32.682190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399784, 38.135094, 32.619854>,  <30.873335, 37.553055, 32.547058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399784, 38.135094, 32.619854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567570, 37.794277, 32.494591>,  <31.668242, 37.589787, 32.419434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567570, 37.794277, 32.494591>,  <31.399784, 38.135094, 32.619854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567570, 37.794277, 32.494591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431112, 0.490569, -0.757288,
		0.798869, 0.182650, 0.573103,
		0.419465, -0.852046, -0.313158,
		31.693409, 37.538662, 32.400642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013535, 38.377308, 32.287281>,  <31.399784, 38.135094, 32.619854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013535, 38.377308, 32.287281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034492, 37.989044, 32.193401>,  <32.047070, 37.756088, 32.137074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.034492, 37.989044, 32.193401>,  <32.013535, 38.377308, 32.287281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034492, 37.989044, 32.193401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497327, 0.229166, -0.836749,
		0.865980, -0.072876, 0.494741,
		0.052399, -0.970655, -0.234697,
		32.050213, 37.697849, 32.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674740, 38.123871, 32.147850>,  <32.013535, 38.377308, 32.287281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674740, 38.123871, 32.147850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433376, 37.879807, 31.942484>,  <32.288559, 37.733368, 31.819263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433376, 37.879807, 31.942484>,  <32.674740, 38.123871, 32.147850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433376, 37.879807, 31.942484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469304, 0.248811, -0.847259,
		0.644709, -0.752194, 0.136216,
		-0.603411, -0.610162, -0.513418,
		32.252354, 37.696758, 31.788458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081871, 37.968525, 31.602310>,  <32.674740, 38.123871, 32.147850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081871, 37.968525, 31.602310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721416, 37.848831, 31.476822>,  <32.505146, 37.777016, 31.401529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721416, 37.848831, 31.476822>,  <33.081871, 37.968525, 31.602310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721416, 37.848831, 31.476822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255284, 0.218637, -0.941821,
		0.350416, -0.928793, -0.120631,
		-0.901131, -0.299234, -0.313720,
		32.451077, 37.759060, 31.382706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140553, 37.468159, 31.062374>,  <33.081871, 37.968525, 31.602310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140553, 37.468159, 31.062374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770874, 37.610744, 31.007528>,  <32.549068, 37.696297, 30.974621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.770874, 37.610744, 31.007528>,  <33.140553, 37.468159, 31.062374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770874, 37.610744, 31.007528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136361, -0.027367, -0.990281,
		-0.356749, -0.933909, -0.023315,
		-0.924195, 0.356461, -0.137112,
		32.493614, 37.717682, 30.966394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767963, 37.105042, 30.486404>,  <33.140553, 37.468159, 31.062374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767963, 37.105042, 30.486404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551647, 37.440815, 30.507914>,  <32.421856, 37.642281, 30.520819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551647, 37.440815, 30.507914>,  <32.767963, 37.105042, 30.486404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551647, 37.440815, 30.507914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021468, 0.050131, -0.998512,
		-0.840882, -0.541143, -0.009090,
		-0.540793, 0.839435, 0.053772,
		32.389408, 37.692646, 30.524046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274601, 37.034451, 29.917488>,  <32.767963, 37.105042, 30.486404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274601, 37.034451, 29.917488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290150, 37.417229, 30.032545>,  <32.299480, 37.646896, 30.101580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290150, 37.417229, 30.032545>,  <32.274601, 37.034451, 29.917488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290150, 37.417229, 30.032545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201237, 0.289462, -0.935797,
		-0.978771, -0.021505, 0.203826,
		0.038876, 0.956948, 0.287644,
		32.301811, 37.704311, 30.118839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778776, 37.276901, 29.526672>,  <32.274601, 37.034451, 29.917488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778776, 37.276901, 29.526672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.009975, 37.589996, 29.618963>,  <32.148693, 37.777855, 29.674337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.009975, 37.589996, 29.618963>,  <31.778776, 37.276901, 29.526672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009975, 37.589996, 29.618963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163717, 0.388222, -0.906907,
		-0.799448, 0.486415, 0.352539,
		0.577996, 0.782742, 0.230729,
		32.183372, 37.824818, 29.688181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483919, 37.833858, 29.221680>,  <31.778776, 37.276901, 29.526672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483919, 37.833858, 29.221680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851068, 37.967148, 29.307905>,  <32.071358, 38.047123, 29.359640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851068, 37.967148, 29.307905>,  <31.483919, 37.833858, 29.221680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851068, 37.967148, 29.307905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025763, 0.491991, -0.870219,
		-0.396034, 0.804305, 0.443001,
		0.917874, 0.333223, 0.215566,
		32.126431, 38.067116, 29.372576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449514, 38.516037, 28.965984>,  <31.483919, 37.833858, 29.221680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449514, 38.516037, 28.965984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835228, 38.422081, 29.014952>,  <32.066654, 38.365707, 29.044333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.835228, 38.422081, 29.014952>,  <31.449514, 38.516037, 28.965984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835228, 38.422081, 29.014952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219700, 0.451091, -0.865014,
		0.147962, 0.861013, 0.486584,
		0.964282, -0.234892, 0.122420,
		32.124512, 38.351612, 29.051678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707294, 39.037266, 28.554245>,  <31.449514, 38.516037, 28.965984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707294, 39.037266, 28.554245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000587, 38.769890, 28.604126>,  <32.176563, 38.609463, 28.634054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.000587, 38.769890, 28.604126>,  <31.707294, 39.037266, 28.554245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000587, 38.769890, 28.604126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172590, 0.005562, -0.984978,
		0.657709, 0.743742, 0.119445,
		0.733234, -0.668444, 0.124704,
		32.220558, 38.569355, 28.641537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433514, 39.260826, 28.328388>,  <31.707294, 39.037266, 28.554245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433514, 39.260826, 28.328388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431076, 38.864666, 28.273163>,  <32.429611, 38.626968, 28.240028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431076, 38.864666, 28.273163>,  <32.433514, 39.260826, 28.328388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431076, 38.864666, 28.273163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203655, 0.133942, -0.969837,
		0.979024, -0.034032, 0.200884,
		-0.006098, -0.990405, -0.138063,
		32.429245, 38.567543, 28.231745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993256, 39.052452, 27.954008>,  <32.433514, 39.260826, 28.328388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993256, 39.052452, 27.954008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759571, 38.733635, 27.892786>,  <32.619362, 38.542347, 27.856052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759571, 38.733635, 27.892786>,  <32.993256, 39.052452, 27.954008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759571, 38.733635, 27.892786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113429, 0.106552, -0.987816,
		0.803637, -0.594453, 0.028159,
		-0.584210, -0.797040, -0.153057,
		32.584309, 38.494522, 27.846869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291676, 38.680386, 27.418003>,  <32.993256, 39.052452, 27.954008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291676, 38.680386, 27.418003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923351, 38.525257, 27.434486>,  <32.702358, 38.432178, 27.444376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923351, 38.525257, 27.434486>,  <33.291676, 38.680386, 27.418003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923351, 38.525257, 27.434486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036939, -0.018460, -0.999147,
		0.388256, -0.921548, 0.002672,
		-0.920811, -0.387826, 0.041208,
		32.647106, 38.408909, 27.446848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236969, 38.237019, 26.806454>,  <33.291676, 38.680386, 27.418003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236969, 38.237019, 26.806454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848961, 38.267609, 26.898722>,  <32.616158, 38.285961, 26.954082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848961, 38.267609, 26.898722>,  <33.236969, 38.237019, 26.806454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848961, 38.267609, 26.898722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208636, 0.224658, -0.951840,
		-0.124616, -0.971432, -0.201967,
		-0.970021, 0.076477, 0.230672,
		32.557953, 38.290550, 26.967924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615658, 37.729870, 26.584101>,  <33.236969, 38.237019, 26.806454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615658, 37.729870, 26.584101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996151, 37.825397, 26.506004>,  <34.224445, 37.882713, 26.459146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996151, 37.825397, 26.506004>,  <33.615658, 37.729870, 26.584101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996151, 37.825397, 26.506004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218839, -0.076395, 0.972766,
		0.217404, -0.968053, -0.124933,
		0.951233, 0.238823, -0.195240,
		34.281521, 37.897045, 26.447432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070843, 37.229042, 27.066521>,  <33.615658, 37.729870, 26.584101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070843, 37.229042, 27.066521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300991, 37.529255, 26.936506>,  <34.439079, 37.709385, 26.858498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300991, 37.529255, 26.936506>,  <34.070843, 37.229042, 27.066521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300991, 37.529255, 26.936506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448633, 0.042675, 0.892696,
		0.683871, -0.659451, -0.312161,
		0.575368, 0.750535, -0.325036,
		34.473602, 37.754414, 26.838995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640659, 36.950985, 27.226980>,  <34.070843, 37.229042, 27.066521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640659, 36.950985, 27.226980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689220, 37.348007, 27.223015>,  <34.718357, 37.586220, 27.220634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689220, 37.348007, 27.223015>,  <34.640659, 36.950985, 27.226980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689220, 37.348007, 27.223015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527965, -0.056110, 0.847411,
		0.840545, -0.108110, -0.530845,
		0.121400, 0.992554, -0.009915,
		34.725639, 37.645775, 27.220039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321159, 37.060978, 27.279959>,  <34.640659, 36.950985, 27.226980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321159, 37.060978, 27.279959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177334, 37.415852, 27.395632>,  <35.091038, 37.628777, 27.465036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177334, 37.415852, 27.395632>,  <35.321159, 37.060978, 27.279959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177334, 37.415852, 27.395632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566850, -0.038503, 0.822921,
		0.741213, 0.459815, -0.489053,
		-0.359561, 0.887180, 0.289185,
		35.069466, 37.682007, 27.482388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865753, 37.455376, 27.562838>,  <35.321159, 37.060978, 27.279959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865753, 37.455376, 27.562838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532604, 37.617058, 27.714064>,  <35.332714, 37.714069, 27.804800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532604, 37.617058, 27.714064>,  <35.865753, 37.455376, 27.562838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532604, 37.617058, 27.714064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399270, -0.034241, 0.916194,
		0.383278, 0.914026, -0.132870,
		-0.832875, 0.404208, 0.378067,
		35.282742, 37.738319, 27.827484>
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
