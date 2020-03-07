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
	<3.917422, 4.931523, 5.746554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780251, 4.835049, 5.383406>,  <3.697948, 4.777164, 5.165517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.780251, 4.835049, 5.383406>,  <3.917422, 4.931523, 5.746554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.780251, 4.835049, 5.383406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901504, -0.356113, -0.245917,
		-0.263993, -0.902780, 0.339552,
		-0.342927, -0.241187, -0.907871,
		3.677372, 4.762692, 5.111044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.894811, 4.217141, 5.556999>,  <3.917422, 4.931523, 5.746554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.894811, 4.217141, 5.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.995262, 4.429184, 5.233043>,  <4.055533, 4.556410, 5.038669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.995262, 4.429184, 5.233043>,  <3.894811, 4.217141, 5.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.995262, 4.429184, 5.233043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836891, -0.539323, -0.093509,
		-0.486362, -0.654307, -0.579081,
		0.251127, 0.530107, -0.809890,
		4.070601, 4.588216, 4.990076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.062315, 3.728460, 5.052814>,  <3.894811, 4.217141, 5.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.062315, 3.728460, 5.052814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.232666, 4.072945, 4.941860>,  <4.334877, 4.279635, 4.875288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.232666, 4.072945, 4.941860>,  <4.062315, 3.728460, 5.052814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232666, 4.072945, 4.941860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874518, -0.470439, -0.117923,
		-0.232049, -0.192357, -0.953494,
		0.425878, 0.861212, -0.277385,
		4.360429, 4.331308, 4.858645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412550, 3.456052, 4.390121>,  <4.062315, 3.728460, 5.052814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412550, 3.456052, 4.390121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.590614, 3.752708, 4.590840>,  <4.697453, 3.930702, 4.711272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.590614, 3.752708, 4.590840>,  <4.412550, 3.456052, 4.390121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.590614, 3.752708, 4.590840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888059, -0.437509, -0.141201,
		0.114821, 0.508484, -0.853382,
		0.445160, 0.741640, 0.501799,
		4.724163, 3.975201, 4.741380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.983893, 3.644362, 4.018501>,  <4.412550, 3.456052, 4.390121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.983893, 3.644362, 4.018501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.084167, 3.760235, 4.387985>,  <5.144332, 3.829759, 4.609676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.084167, 3.760235, 4.387985>,  <4.983893, 3.644362, 4.018501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084167, 3.760235, 4.387985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933214, -0.326047, -0.151015,
		0.257427, 0.899876, -0.352071,
		0.250687, 0.289682, 0.923710,
		5.159373, 3.847140, 4.665098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.500194, 4.136754, 3.929697>,  <4.983893, 3.644362, 4.018501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.500194, 4.136754, 3.929697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.517578, 3.976116, 4.295611>,  <5.528009, 3.879734, 4.515160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.517578, 3.976116, 4.295611>,  <5.500194, 4.136754, 3.929697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.517578, 3.976116, 4.295611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916063, -0.349370, -0.196896,
		0.398671, 0.846559, 0.352702,
		0.043461, -0.401594, 0.914786,
		5.530616, 3.855638, 4.570047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.225040, 4.135079, 4.141236>,  <5.500194, 4.136754, 3.929697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.225040, 4.135079, 4.141236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.107750, 3.899532, 4.442501>,  <6.037375, 3.758204, 4.623260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.107750, 3.899532, 4.442501>,  <6.225040, 4.135079, 4.141236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.107750, 3.899532, 4.442501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895309, -0.445446, 0.000292,
		0.335321, 0.674398, 0.657835,
		-0.293227, -0.588868, 0.753162,
		6.019782, 3.722872, 4.668450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.736201, 4.144764, 4.673710>,  <6.225040, 4.135079, 4.141236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.736201, 4.144764, 4.673710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.527954, 3.809689, 4.739722>,  <6.403006, 3.608643, 4.779330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.527954, 3.809689, 4.739722>,  <6.736201, 4.144764, 4.673710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.527954, 3.809689, 4.739722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848653, -0.486556, 0.207488,
		-0.093514, 0.248076, 0.964217,
		-0.520618, -0.837688, 0.165031,
		6.371769, 3.558382, 4.789231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.978176, 2.024641, -0.475155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.768341, 2.262878, -0.231819>,  <1.642440, 2.405821, -0.085818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.768341, 2.262878, -0.231819>,  <1.978176, 2.024641, -0.475155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.768341, 2.262878, -0.231819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592987, 0.257101, -0.763063,
		-0.610880, -0.761030, 0.218308,
		-0.524587, 0.595594, 0.608339,
		1.610965, 2.441557, -0.049318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.248900, 1.807025, -0.562007>,  <1.978176, 2.024641, -0.475155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.248900, 1.807025, -0.562007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.258759, 2.182983, -0.425777>,  <1.264674, 2.408558, -0.344040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.258759, 2.182983, -0.425777>,  <1.248900, 1.807025, -0.562007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.258759, 2.182983, -0.425777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715312, 0.254571, -0.650787,
		-0.698371, -0.227576, 0.678592,
		0.024646, 0.939895, 0.340573,
		1.266153, 2.464952, -0.323606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.019095, 2.500767, -0.743105>,  <1.248900, 1.807025, -0.562007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.019095, 2.500767, -0.743105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224022, 2.717712, -0.476761>,  <1.346978, 2.847880, -0.316954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224022, 2.717712, -0.476761>,  <1.019095, 2.500767, -0.743105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.224022, 2.717712, -0.476761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844804, 0.457666, 0.277214,
		-0.154391, -0.704544, 0.692662,
		0.512318, 0.542364, 0.665861,
		1.377717, 2.880422, -0.277002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.573797, 2.445436, -0.206290>,  <1.019095, 2.500767, -0.743105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.573797, 2.445436, -0.206290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813606, 2.765236, -0.191471>,  <0.957492, 2.957116, -0.182580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.813606, 2.765236, -0.191471>,  <0.573797, 2.445436, -0.206290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.813606, 2.765236, -0.191471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773014, 0.566424, 0.285678,
		0.207415, -0.199908, 0.957609,
		0.599523, 0.799500, 0.037047,
		0.993463, 3.005086, -0.180357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.349368, 2.853960, 0.311484>,  <0.573797, 2.445436, -0.206290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.349368, 2.853960, 0.311484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.577461, 3.122200, 0.121693>,  <0.714317, 3.283144, 0.007818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.577461, 3.122200, 0.121693>,  <0.349368, 2.853960, 0.311484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.577461, 3.122200, 0.121693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591258, 0.736023, 0.329673,
		0.570306, 0.092548, 0.816203,
		0.570233, 0.670601, -0.474478,
		0.748531, 3.323380, -0.020651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.517129, 3.332731, 0.801828>,  <0.349368, 2.853960, 0.311484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.517129, 3.332731, 0.801828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.520844, 3.473373, 0.427387>,  <0.523072, 3.557759, 0.202723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.520844, 3.473373, 0.427387>,  <0.517129, 3.332731, 0.801828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.520844, 3.473373, 0.427387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726078, 0.646043, 0.235455,
		0.687550, 0.677497, 0.261292,
		0.009286, 0.351605, -0.936102,
		0.523629, 3.578855, 0.146557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.485883, 4.070189, 0.896026>,  <0.517129, 3.332731, 0.801828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.485883, 4.070189, 0.896026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.374298, 3.989624, 0.520449>,  <0.307347, 3.941285, 0.295103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.374298, 3.989624, 0.520449>,  <0.485883, 4.070189, 0.896026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.374298, 3.989624, 0.520449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760286, 0.643624, 0.087821,
		0.586638, 0.738364, -0.332678,
		-0.278964, -0.201412, -0.938942,
		0.290609, 3.929201, 0.238766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.360499, 4.664910, 0.620534>,  <0.485883, 4.070189, 0.896026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.360499, 4.664910, 0.620534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.167282, 4.437378, 0.354271>,  <0.051352, 4.300858, 0.194513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.167282, 4.437378, 0.354271>,  <0.360499, 4.664910, 0.620534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.167282, 4.437378, 0.354271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789438, 0.611784, 0.050073,
		0.378756, 0.549683, -0.744575,
		-0.483043, -0.568830, -0.665658,
		0.022369, 4.266729, 0.154573>
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
