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
	<24.014692, 35.038994, 34.793880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222725, 35.180511, 35.104839>,  <24.347544, 35.265423, 35.291416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222725, 35.180511, 35.104839>,  <24.014692, 35.038994, 34.793880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222725, 35.180511, 35.104839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819710, 0.048989, -0.570680,
		-0.239986, 0.934041, -0.264527,
		0.520080, 0.353791, 0.777399,
		24.378748, 35.286648, 35.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418005, 35.568386, 34.559933>,  <24.014692, 35.038994, 34.793880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418005, 35.568386, 34.559933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593452, 35.425671, 34.889858>,  <24.698721, 35.340042, 35.087814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.593452, 35.425671, 34.889858>,  <24.418005, 35.568386, 34.559933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593452, 35.425671, 34.889858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879361, -0.018855, -0.475782,
		0.185308, 0.933993, 0.305480,
		0.438618, -0.356793, 0.824811,
		24.725039, 35.318634, 35.137302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.697214, 35.811134, 35.252705>,  <24.418005, 35.568386, 34.559933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.697214, 35.811134, 35.252705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693493, 36.161942, 35.060558>,  <24.691259, 36.372425, 34.945271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693493, 36.161942, 35.060558>,  <24.697214, 35.811134, 35.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693493, 36.161942, 35.060558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635241, 0.376186, 0.674502,
		0.772258, -0.298874, -0.560617,
		-0.009305, 0.877016, -0.480370,
		24.690701, 36.425045, 34.916447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412485, 36.015484, 35.083122>,  <24.697214, 35.811134, 35.252705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412485, 36.015484, 35.083122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219124, 36.360218, 35.144524>,  <25.103107, 36.567059, 35.181362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.219124, 36.360218, 35.144524>,  <25.412485, 36.015484, 35.083122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.219124, 36.360218, 35.144524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655448, 0.240105, 0.716057,
		0.580267, 0.446755, -0.680955,
		-0.483403, 0.861835, 0.153500,
		25.074102, 36.618767, 35.190575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098547, 35.576439, 35.266636>,  <25.412485, 36.015484, 35.083122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098547, 35.576439, 35.266636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119301, 35.971531, 35.325562>,  <26.131752, 36.208588, 35.360916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119301, 35.971531, 35.325562>,  <26.098547, 35.576439, 35.266636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119301, 35.971531, 35.325562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238620, -0.130976, 0.962240,
		0.969726, -0.085076, 0.228896,
		0.051883, 0.987728, 0.147312,
		26.134867, 36.267849, 35.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523199, 35.039806, 35.065647>,  <26.098547, 35.576439, 35.266636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523199, 35.039806, 35.065647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888124, 35.044289, 35.229385>,  <27.107079, 35.046978, 35.327629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888124, 35.044289, 35.229385>,  <26.523199, 35.039806, 35.065647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888124, 35.044289, 35.229385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280603, -0.710936, 0.644851,
		0.298242, -0.703168, -0.645451,
		0.912313, 0.011206, 0.409341,
		27.161818, 35.047649, 35.352188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755276, 34.302998, 35.257507>,  <26.523199, 35.039806, 35.065647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755276, 34.302998, 35.257507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976736, 34.538074, 35.493504>,  <27.109612, 34.679119, 35.635101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976736, 34.538074, 35.493504>,  <26.755276, 34.302998, 35.257507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976736, 34.538074, 35.493504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076874, -0.669395, 0.738918,
		0.829194, -0.454457, -0.325432,
		0.553649, 0.587690, 0.589995,
		27.142830, 34.714382, 35.670502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312904, 33.808182, 35.543449>,  <26.755276, 34.302998, 35.257507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312904, 33.808182, 35.543449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303885, 34.136932, 35.771133>,  <27.298471, 34.334183, 35.907745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303885, 34.136932, 35.771133>,  <27.312904, 33.808182, 35.543449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303885, 34.136932, 35.771133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136395, -0.561506, 0.816154,
		0.990398, 0.096043, -0.099437,
		-0.022551, 0.821880, 0.569214,
		27.297119, 34.383495, 35.941898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790800, 33.670780, 36.167336>,  <27.312904, 33.808182, 35.543449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790800, 33.670780, 36.167336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604658, 34.006626, 36.279408>,  <27.492973, 34.208134, 36.346649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604658, 34.006626, 36.279408>,  <27.790800, 33.670780, 36.167336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604658, 34.006626, 36.279408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074595, -0.278213, 0.957618,
		0.881976, 0.466531, 0.066837,
		-0.465354, 0.839611, 0.280178,
		27.465052, 34.258511, 36.363461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218225, 34.115810, 36.643730>,  <27.790800, 33.670780, 36.167336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218225, 34.115810, 36.643730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833591, 34.195992, 36.718742>,  <27.602810, 34.244102, 36.763748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833591, 34.195992, 36.718742>,  <28.218225, 34.115810, 36.643730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833591, 34.195992, 36.718742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165778, -0.120420, 0.978783,
		0.218786, 0.972274, 0.082563,
		-0.961587, 0.200457, 0.187528,
		27.545115, 34.256130, 36.775002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155994, 34.721191, 37.086163>,  <28.218225, 34.115810, 36.643730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155994, 34.721191, 37.086163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805599, 34.535946, 37.140076>,  <27.595362, 34.424797, 37.172424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805599, 34.535946, 37.140076>,  <28.155994, 34.721191, 37.086163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805599, 34.535946, 37.140076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189024, -0.072533, 0.979290,
		-0.443750, 0.883324, 0.151078,
		-0.875988, -0.463117, 0.134783,
		27.542803, 34.397011, 37.180511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999453, 35.020805, 37.682186>,  <28.155994, 34.721191, 37.086163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999453, 35.020805, 37.682186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764103, 34.698185, 37.659260>,  <27.622892, 34.504612, 37.645504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764103, 34.698185, 37.659260>,  <27.999453, 35.020805, 37.682186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764103, 34.698185, 37.659260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143117, -0.173640, 0.974354,
		-0.795823, 0.565082, 0.217597,
		-0.588374, -0.806555, -0.057314,
		27.587591, 34.456219, 37.642067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633728, 35.021648, 38.331837>,  <27.999453, 35.020805, 37.682186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633728, 35.021648, 38.331837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611601, 34.645874, 38.196545>,  <27.598324, 34.420410, 38.115368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611601, 34.645874, 38.196545>,  <27.633728, 35.021648, 38.331837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611601, 34.645874, 38.196545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121951, -0.342572, 0.931543,
		-0.990993, 0.010285, 0.133516,
		-0.055320, -0.939435, -0.338233,
		27.595005, 34.364044, 38.095074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222141, 34.594727, 38.838451>,  <27.633728, 35.021648, 38.331837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222141, 34.594727, 38.838451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424906, 34.298374, 38.662209>,  <27.546564, 34.120564, 38.556461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424906, 34.298374, 38.662209>,  <27.222141, 34.594727, 38.838451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424906, 34.298374, 38.662209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225276, -0.379524, 0.897336,
		-0.832041, -0.554128, -0.025482,
		0.506910, -0.740881, -0.440611,
		27.576979, 34.076111, 38.530025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047245, 33.987110, 39.277386>,  <27.222141, 34.594727, 38.838451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047245, 33.987110, 39.277386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378204, 33.899723, 39.070431>,  <27.576780, 33.847290, 38.946259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378204, 33.899723, 39.070431>,  <27.047245, 33.987110, 39.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378204, 33.899723, 39.070431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358599, -0.503491, 0.786068,
		-0.432226, -0.835925, -0.338247,
		0.827398, -0.218464, -0.517383,
		27.626423, 33.834183, 38.915215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105394, 33.275898, 39.272079>,  <27.047245, 33.987110, 39.277386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105394, 33.275898, 39.272079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466406, 33.441620, 39.225105>,  <27.683012, 33.541054, 39.196922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466406, 33.441620, 39.225105>,  <27.105394, 33.275898, 39.272079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466406, 33.441620, 39.225105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384650, -0.652997, 0.652411,
		0.193613, -0.633992, -0.748711,
		0.902529, 0.414307, -0.117436,
		27.737165, 33.565910, 39.189873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574581, 32.658096, 39.242046>,  <27.105394, 33.275898, 39.272079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574581, 32.658096, 39.242046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818552, 32.972187, 39.284767>,  <27.964935, 33.160641, 39.310402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818552, 32.972187, 39.284767>,  <27.574581, 32.658096, 39.242046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818552, 32.972187, 39.284767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585822, -0.537538, 0.606520,
		0.533666, -0.307366, -0.787862,
		0.609929, 0.785226, 0.106804,
		28.001532, 33.207756, 39.316807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193960, 32.347351, 39.466324>,  <27.574581, 32.658096, 39.242046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193960, 32.347351, 39.466324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296221, 32.726246, 39.543671>,  <28.357576, 32.953583, 39.590080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296221, 32.726246, 39.543671>,  <28.193960, 32.347351, 39.466324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296221, 32.726246, 39.543671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694346, -0.319078, 0.645037,
		0.672701, -0.030637, -0.739279,
		0.255650, 0.947233, 0.193372,
		28.372915, 33.010414, 39.601681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925314, 32.339199, 39.429199>,  <28.193960, 32.347351, 39.466324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925314, 32.339199, 39.429199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768507, 32.624859, 39.661167>,  <28.674423, 32.796253, 39.800350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768507, 32.624859, 39.661167>,  <28.925314, 32.339199, 39.429199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768507, 32.624859, 39.661167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678081, -0.201710, 0.706767,
		0.621714, 0.670300, -0.405178,
		-0.392018, 0.714150, 0.579924,
		28.650902, 32.839104, 39.835144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456974, 32.675701, 39.703686>,  <28.925314, 32.339199, 39.429199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456974, 32.675701, 39.703686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168709, 32.793831, 39.954582>,  <28.995750, 32.864708, 40.105122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168709, 32.793831, 39.954582>,  <29.456974, 32.675701, 39.703686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168709, 32.793831, 39.954582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595887, -0.198570, 0.778131,
		0.354353, 0.934533, -0.032879,
		-0.720661, 0.295326, 0.627240,
		28.952511, 32.882427, 40.142754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705215, 33.032513, 40.299969>,  <29.456974, 32.675701, 39.703686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705215, 33.032513, 40.299969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341333, 32.979034, 40.457226>,  <29.123005, 32.946949, 40.551582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341333, 32.979034, 40.457226>,  <29.705215, 33.032513, 40.299969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341333, 32.979034, 40.457226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391994, 0.035946, 0.919265,
		-0.137033, 0.990371, 0.019707,
		-0.909705, -0.133694, 0.393145,
		29.068422, 32.938927, 40.575169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623356, 33.538578, 40.764439>,  <29.705215, 33.032513, 40.299969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623356, 33.538578, 40.764439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426495, 33.212044, 40.885353>,  <29.308378, 33.016121, 40.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426495, 33.212044, 40.885353>,  <29.623356, 33.538578, 40.764439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426495, 33.212044, 40.885353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635191, -0.099312, 0.765944,
		-0.595248, 0.568972, 0.567407,
		-0.492151, -0.816338, 0.302291,
		29.278849, 32.967144, 40.976040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860172, 33.484573, 41.423321>,  <29.623356, 33.538578, 40.764439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860172, 33.484573, 41.423321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690491, 33.124153, 41.387188>,  <29.588682, 32.907902, 41.365509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690491, 33.124153, 41.387188>,  <29.860172, 33.484573, 41.423321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690491, 33.124153, 41.387188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612459, -0.358945, 0.704310,
		-0.667041, 0.243448, 0.704123,
		-0.424204, -0.901050, -0.090329,
		29.563229, 32.853840, 41.360088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645201, 33.330147, 41.993038>,  <29.860172, 33.484573, 41.423321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645201, 33.330147, 41.993038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677715, 32.966358, 41.829941>,  <29.697224, 32.748085, 41.732082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677715, 32.966358, 41.829941>,  <29.645201, 33.330147, 41.993038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677715, 32.966358, 41.829941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550950, -0.299912, 0.778785,
		-0.830570, -0.287951, 0.476695,
		0.081285, -0.909471, -0.407744,
		29.702101, 32.693516, 41.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489990, 32.812641, 42.486347>,  <29.645201, 33.330147, 41.993038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489990, 32.812641, 42.486347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747461, 32.627522, 42.242546>,  <29.901943, 32.516449, 42.096264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747461, 32.627522, 42.242546>,  <29.489990, 32.812641, 42.486347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747461, 32.627522, 42.242546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477653, -0.379309, 0.792447,
		-0.597935, -0.801211, -0.023094,
		0.643677, -0.462801, -0.609504,
		29.940565, 32.488682, 42.059696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433580, 32.013824, 42.587368>,  <29.489990, 32.812641, 42.486347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433580, 32.013824, 42.587368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762016, 32.202827, 42.459278>,  <29.959078, 32.316231, 42.382423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762016, 32.202827, 42.459278>,  <29.433580, 32.013824, 42.587368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762016, 32.202827, 42.459278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469205, -0.239250, 0.850062,
		0.325046, -0.848231, -0.418149,
		0.821092, 0.472507, -0.320227,
		30.008345, 32.344578, 42.363209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014328, 31.563789, 42.741581>,  <29.433580, 32.013824, 42.587368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014328, 31.563789, 42.741581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125959, 31.947750, 42.752174>,  <30.192938, 32.178127, 42.758530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125959, 31.947750, 42.752174>,  <30.014328, 31.563789, 42.741581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125959, 31.947750, 42.752174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472988, -0.161409, 0.866158,
		0.835701, -0.229204, -0.499069,
		0.279081, 0.959903, 0.026479,
		30.209684, 32.235722, 42.760117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572447, 31.027588, 42.439293>,  <30.014328, 31.563789, 42.741581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572447, 31.027588, 42.439293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726704, 30.658695, 42.428169>,  <29.819258, 30.437361, 42.421494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726704, 30.658695, 42.428169>,  <29.572447, 31.027588, 42.439293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726704, 30.658695, 42.428169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664139, 0.298387, -0.685481,
		0.640468, 0.245881, 0.727559,
		0.385641, -0.922230, -0.027808,
		29.842396, 30.382027, 42.419827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256721, 31.172415, 42.178345>,  <29.572447, 31.027588, 42.439293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256721, 31.172415, 42.178345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229650, 30.773350, 42.182137>,  <30.213408, 30.533911, 42.184414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229650, 30.773350, 42.182137>,  <30.256721, 31.172415, 42.178345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229650, 30.773350, 42.182137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641256, -0.050778, -0.765645,
		0.764337, -0.045734, 0.643194,
		-0.067676, -0.997662, 0.009484,
		30.209347, 30.474051, 42.184982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925915, 30.891827, 42.152115>,  <30.256721, 31.172415, 42.178345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925915, 30.891827, 42.152115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689301, 30.602098, 42.010441>,  <30.547331, 30.428263, 41.925438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689301, 30.602098, 42.010441>,  <30.925915, 30.891827, 42.152115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689301, 30.602098, 42.010441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654264, -0.174499, -0.735859,
		0.471192, -0.667017, 0.577118,
		-0.591537, -0.724319, -0.354183,
		30.511839, 30.384804, 41.904186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295868, 30.219349, 42.196941>,  <30.925915, 30.891827, 42.152115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295868, 30.219349, 42.196941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022587, 30.269119, 41.909122>,  <30.858618, 30.298981, 41.736431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022587, 30.269119, 41.909122>,  <31.295868, 30.219349, 42.196941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022587, 30.269119, 41.909122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716535, -0.075692, -0.693432,
		-0.140745, -0.989338, -0.037443,
		-0.683204, 0.124426, -0.719548,
		30.817625, 30.306446, 41.693256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640427, 29.915293, 42.483105>,  <31.295868, 30.219349, 42.196941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640427, 29.915293, 42.483105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309313, 29.983181, 42.269203>,  <30.110643, 30.023914, 42.140862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309313, 29.983181, 42.269203>,  <30.640427, 29.915293, 42.483105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309313, 29.983181, 42.269203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532718, -0.061267, -0.844072,
		-0.176021, -0.983585, -0.039698,
		-0.827785, 0.169722, -0.534758,
		30.060978, 30.034098, 42.108776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449995, 29.406120, 41.978806>,  <30.640427, 29.915293, 42.483105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449995, 29.406120, 41.978806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303476, 29.752937, 41.843712>,  <30.215565, 29.961027, 41.762653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303476, 29.752937, 41.843712>,  <30.449995, 29.406120, 41.978806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303476, 29.752937, 41.843712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583603, -0.068627, -0.809134,
		-0.724730, -0.493489, -0.480870,
		-0.366298, 0.867040, -0.337738,
		30.193586, 30.013050, 41.742390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353479, 29.295219, 41.284561>,  <30.449995, 29.406120, 41.978806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353479, 29.295219, 41.284561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393660, 29.691780, 41.318108>,  <30.417768, 29.929716, 41.338234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393660, 29.691780, 41.318108>,  <30.353479, 29.295219, 41.284561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393660, 29.691780, 41.318108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506813, 0.021550, -0.861786,
		-0.856183, 0.129073, -0.500290,
		0.100452, 0.991401, 0.083867,
		30.423796, 29.989201, 41.343269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806730, 29.198420, 40.741508>,  <30.353479, 29.295219, 41.284561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806730, 29.198420, 40.741508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822865, 28.852432, 40.541428>,  <29.832544, 28.644840, 40.421379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822865, 28.852432, 40.541428>,  <29.806730, 29.198420, 40.741508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822865, 28.852432, 40.541428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143235, 0.500443, -0.853839,
		0.988866, -0.037207, 0.144079,
		0.040334, -0.864969, -0.500201,
		29.834965, 28.592941, 40.391369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425106, 29.073351, 40.258690>,  <29.806730, 29.198420, 40.741508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425106, 29.073351, 40.258690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111401, 28.860868, 40.130474>,  <29.923178, 28.733379, 40.053543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111401, 28.860868, 40.130474>,  <30.425106, 29.073351, 40.258690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111401, 28.860868, 40.130474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137292, 0.355247, -0.924635,
		0.605045, -0.769167, -0.205677,
		-0.784265, -0.531208, -0.320541,
		29.876122, 28.701506, 40.034313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716572, 28.479040, 39.758102>,  <30.425106, 29.073351, 40.258690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716572, 28.479040, 39.758102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349976, 28.637419, 39.735210>,  <30.130018, 28.732445, 39.721474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349976, 28.637419, 39.735210>,  <30.716572, 28.479040, 39.758102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349976, 28.637419, 39.735210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284058, 0.543315, -0.790013,
		-0.281708, -0.740295, -0.610414,
		-0.916489, 0.395945, -0.057231,
		30.075029, 28.756203, 39.718040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750130, 28.852047, 39.136978>,  <30.716572, 28.479040, 39.758102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750130, 28.852047, 39.136978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373583, 28.942085, 39.237503>,  <30.147655, 28.996107, 39.297817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373583, 28.942085, 39.237503>,  <30.750130, 28.852047, 39.136978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373583, 28.942085, 39.237503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030856, 0.799216, -0.600252,
		-0.335968, -0.557303, -0.759302,
		-0.941368, 0.225095, 0.251315,
		30.091173, 29.009613, 39.312897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408918, 28.874510, 38.494442>,  <30.750130, 28.852047, 39.136978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408918, 28.874510, 38.494442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181063, 29.077147, 38.753326>,  <30.044350, 29.198729, 38.908657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181063, 29.077147, 38.753326>,  <30.408918, 28.874510, 38.494442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181063, 29.077147, 38.753326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155206, 0.706988, -0.689985,
		-0.807108, -0.493492, -0.324101,
		-0.569638, 0.506590, 0.647208,
		30.010172, 29.229124, 38.947491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790264, 29.099380, 38.086231>,  <30.408918, 28.874510, 38.494442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790264, 29.099380, 38.086231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803015, 29.328196, 38.414074>,  <29.810665, 29.465485, 38.610779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803015, 29.328196, 38.414074>,  <29.790264, 29.099380, 38.086231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803015, 29.328196, 38.414074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324272, 0.781587, -0.532887,
		-0.945427, -0.248789, 0.210410,
		0.031877, 0.572036, 0.819609,
		29.812578, 29.499805, 38.659958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248444, 29.586737, 38.097801>,  <29.790264, 29.099380, 38.086231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248444, 29.586737, 38.097801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497374, 29.755594, 38.361469>,  <29.646732, 29.856909, 38.519669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497374, 29.755594, 38.361469>,  <29.248444, 29.586737, 38.097801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497374, 29.755594, 38.361469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056901, 0.815487, -0.575972,
		-0.780687, 0.395950, 0.483478,
		0.622326, 0.422143, 0.659171,
		29.684071, 29.882236, 38.559219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946329, 30.358980, 38.276306>,  <29.248444, 29.586737, 38.097801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946329, 30.358980, 38.276306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334105, 30.331263, 38.370445>,  <29.566771, 30.314632, 38.426929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334105, 30.331263, 38.370445>,  <28.946329, 30.358980, 38.276306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334105, 30.331263, 38.370445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158884, 0.908267, -0.387049,
		-0.186935, 0.412613, 0.891519,
		0.969438, -0.069295, 0.235345,
		29.624935, 30.310474, 38.441048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025906, 30.979166, 38.642162>,  <28.946329, 30.358980, 38.276306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025906, 30.979166, 38.642162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403561, 30.871689, 38.565842>,  <29.630154, 30.807203, 38.520050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403561, 30.871689, 38.565842>,  <29.025906, 30.979166, 38.642162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403561, 30.871689, 38.565842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268482, 0.962893, -0.027451,
		0.191099, -0.025310, 0.981244,
		0.944139, -0.268692, -0.190804,
		29.686802, 30.791080, 38.508602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542027, 31.417742, 39.058094>,  <29.025906, 30.979166, 38.642162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542027, 31.417742, 39.058094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732454, 31.281229, 38.733898>,  <29.846710, 31.199322, 38.539383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732454, 31.281229, 38.733898>,  <29.542027, 31.417742, 39.058094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732454, 31.281229, 38.733898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195520, 0.939635, -0.280817,
		0.857398, -0.024778, 0.514058,
		0.476069, -0.341281, -0.810485,
		29.875275, 31.178844, 38.490753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244690, 31.784689, 39.042500>,  <29.542027, 31.417742, 39.058094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244690, 31.784689, 39.042500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168909, 31.640039, 38.677349>,  <30.123440, 31.553249, 38.458260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168909, 31.640039, 38.677349>,  <30.244690, 31.784689, 39.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168909, 31.640039, 38.677349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248147, 0.881896, -0.400852,
		0.950016, -0.302469, -0.077343,
		-0.189454, -0.361623, -0.912872,
		30.112072, 31.531553, 38.403488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762711, 32.055817, 38.592194>,  <30.244690, 31.784689, 39.042500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762711, 32.055817, 38.592194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482834, 31.953278, 38.325443>,  <30.314907, 31.891754, 38.165394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482834, 31.953278, 38.325443>,  <30.762711, 32.055817, 38.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482834, 31.953278, 38.325443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133181, 0.870251, -0.474263,
		0.701922, -0.420653, -0.574767,
		-0.699692, -0.256348, -0.666871,
		30.272926, 31.876373, 38.125381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106333, 32.327374, 37.950554>,  <30.762711, 32.055817, 38.592194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106333, 32.327374, 37.950554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723200, 32.227707, 37.893322>,  <30.493320, 32.167908, 37.858982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723200, 32.227707, 37.893322>,  <31.106333, 32.327374, 37.950554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723200, 32.227707, 37.893322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170950, 0.894444, -0.413215,
		0.230940, -0.371330, -0.899322,
		-0.957833, -0.249167, -0.143084,
		30.435850, 32.152958, 37.850395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003117, 32.419067, 37.284939>,  <31.106333, 32.327374, 37.950554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003117, 32.419067, 37.284939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639612, 32.459736, 37.446835>,  <30.421509, 32.484138, 37.543972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639612, 32.459736, 37.446835>,  <31.003117, 32.419067, 37.284939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639612, 32.459736, 37.446835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063055, 0.925275, -0.374019,
		-0.412522, -0.365415, -0.834444,
		-0.908763, 0.101675, 0.404737,
		30.366983, 32.490238, 37.568256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563000, 32.590885, 36.744858>,  <31.003117, 32.419067, 37.284939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563000, 32.590885, 36.744858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394743, 32.721783, 37.083317>,  <30.293789, 32.800320, 37.286392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394743, 32.721783, 37.083317>,  <30.563000, 32.590885, 36.744858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394743, 32.721783, 37.083317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277111, 0.841760, -0.463302,
		-0.863869, -0.429362, -0.263396,
		-0.420641, 0.327242, 0.846152,
		30.268551, 32.819954, 37.337162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882507, 32.815403, 36.614990>,  <30.563000, 32.590885, 36.744858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882507, 32.815403, 36.614990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961838, 32.968647, 36.975853>,  <30.009436, 33.060593, 37.192371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961838, 32.968647, 36.975853>,  <29.882507, 32.815403, 36.614990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961838, 32.968647, 36.975853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544755, 0.808268, -0.223484,
		-0.814806, -0.447133, 0.369005,
		0.198328, 0.383113, 0.902159,
		30.021336, 33.083580, 37.246502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341331, 33.188377, 36.705490>,  <29.882507, 32.815403, 36.614990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341331, 33.188377, 36.705490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623487, 33.323719, 36.954628>,  <29.792782, 33.404922, 37.104111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623487, 33.323719, 36.954628>,  <29.341331, 33.188377, 36.705490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623487, 33.323719, 36.954628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420789, 0.907014, -0.016164,
		-0.570402, -0.250687, 0.782175,
		0.705391, 0.338351, 0.622849,
		29.835106, 33.425224, 37.141483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986107, 33.697845, 37.029873>,  <29.341331, 33.188377, 36.705490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986107, 33.697845, 37.029873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377131, 33.770432, 37.072670>,  <29.611744, 33.813984, 37.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377131, 33.770432, 37.072670>,  <28.986107, 33.697845, 37.029873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377131, 33.770432, 37.072670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163132, 0.973455, -0.160543,
		-0.133286, 0.139486, 0.981213,
		0.977560, 0.181465, 0.106993,
		29.670399, 33.824871, 37.104767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997950, 34.326477, 37.479610>,  <28.986107, 33.697845, 37.029873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997950, 34.326477, 37.479610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355453, 34.310116, 37.300941>,  <29.569956, 34.300297, 37.193741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355453, 34.310116, 37.300941>,  <28.997950, 34.326477, 37.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355453, 34.310116, 37.300941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012286, 0.993227, -0.115539,
		0.448375, 0.108752, 0.887205,
		0.893761, -0.040905, -0.446674,
		29.623581, 34.297844, 37.166939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392597, 34.931519, 37.690495>,  <28.997950, 34.326477, 37.479610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392597, 34.931519, 37.690495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622416, 34.799160, 37.391052>,  <29.760305, 34.719746, 37.211388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622416, 34.799160, 37.391052>,  <29.392597, 34.931519, 37.690495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622416, 34.799160, 37.391052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149385, 0.941664, -0.301584,
		0.804725, 0.061444, 0.590459,
		0.574545, -0.330898, -0.748602,
		29.794779, 34.699890, 37.166473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757347, 35.465420, 37.557346>,  <29.392597, 34.931519, 37.690495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757347, 35.465420, 37.557346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844038, 35.273643, 37.217190>,  <29.896053, 35.158577, 37.013096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844038, 35.273643, 37.217190>,  <29.757347, 35.465420, 37.557346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844038, 35.273643, 37.217190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153638, 0.876993, -0.455278,
		0.964067, -0.031982, 0.263729,
		0.216728, -0.479437, -0.850394,
		29.909056, 35.129814, 36.962070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457254, 35.606140, 37.314880>,  <29.757347, 35.465420, 37.557346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457254, 35.606140, 37.314880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226427, 35.521667, 36.999313>,  <30.087931, 35.470982, 36.809975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226427, 35.521667, 36.999313>,  <30.457254, 35.606140, 37.314880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226427, 35.521667, 36.999313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172509, 0.912673, -0.370499,
		0.798268, -0.349899, -0.490244,
		-0.577069, -0.211186, -0.788918,
		30.053307, 35.458313, 36.762638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820827, 35.829956, 36.777615>,  <30.457254, 35.606140, 37.314880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820827, 35.829956, 36.777615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459806, 35.823227, 36.605515>,  <30.243193, 35.819187, 36.502254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459806, 35.823227, 36.605515>,  <30.820827, 35.829956, 36.777615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459806, 35.823227, 36.605515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220741, 0.839853, -0.495903,
		0.369687, -0.542553, -0.754300,
		-0.902555, -0.016825, -0.430247,
		30.189039, 35.818180, 36.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833256, 35.840347, 36.008076>,  <30.820827, 35.829956, 36.777615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833256, 35.840347, 36.008076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519480, 36.014839, 36.184422>,  <30.331215, 36.119534, 36.290230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519480, 36.014839, 36.184422>,  <30.833256, 35.840347, 36.008076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519480, 36.014839, 36.184422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315201, 0.892598, -0.322362,
		-0.534139, -0.113912, -0.837687,
		-0.784439, 0.436226, 0.440866,
		30.284147, 36.145706, 36.316681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008181, 36.005314, 35.334175>,  <30.833256, 35.840347, 36.008076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008181, 36.005314, 35.334175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359932, 36.174152, 35.422291>,  <31.570984, 36.275455, 35.475159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359932, 36.174152, 35.422291>,  <31.008181, 36.005314, 35.334175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359932, 36.174152, 35.422291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467978, 0.851464, 0.236657,
		-0.087675, -0.311200, 0.946291,
		0.879380, 0.422094, 0.220287,
		31.623747, 36.300781, 35.488377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586666, 35.504330, 35.172226>,  <31.008181, 36.005314, 35.334175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586666, 35.504330, 35.172226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516632, 35.826080, 34.945133>,  <31.474611, 36.019131, 34.808880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516632, 35.826080, 34.945133>,  <31.586666, 35.504330, 35.172226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516632, 35.826080, 34.945133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973920, -0.056978, 0.219621,
		0.144310, 0.591375, 0.793379,
		-0.175083, 0.804381, -0.567729,
		31.464108, 36.067394, 34.774815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285786, 35.369858, 35.381935>,  <31.586666, 35.504330, 35.172226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285786, 35.369858, 35.381935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585148, 35.119743, 35.470390>,  <32.764767, 34.969673, 35.523464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585148, 35.119743, 35.470390>,  <32.285786, 35.369858, 35.381935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585148, 35.119743, 35.470390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649028, -0.759114, 0.050082,
		0.136552, -0.181006, -0.973956,
		0.748409, -0.625286, 0.221137,
		32.809669, 34.932156, 35.536732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250549, 34.826031, 34.982677>,  <32.285786, 35.369858, 35.381935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250549, 34.826031, 34.982677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430710, 34.690464, 35.313080>,  <32.538807, 34.609123, 35.511322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430710, 34.690464, 35.313080>,  <32.250549, 34.826031, 34.982677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430710, 34.690464, 35.313080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664471, -0.745170, 0.056570,
		0.596339, -0.574333, -0.560822,
		0.450398, -0.338915, 0.826002,
		32.565830, 34.588791, 35.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232880, 34.079597, 34.933899>,  <32.250549, 34.826031, 34.982677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232880, 34.079597, 34.933899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335312, 34.138447, 35.316055>,  <32.396770, 34.173756, 35.545349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335312, 34.138447, 35.316055>,  <32.232880, 34.079597, 34.933899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335312, 34.138447, 35.316055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351521, -0.906511, 0.233818,
		0.900475, -0.395717, -0.180422,
		0.256080, 0.147126, 0.955394,
		32.412136, 34.182583, 35.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759476, 33.577168, 35.341766>,  <32.232880, 34.079597, 34.933899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759476, 33.577168, 35.341766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479923, 33.701378, 35.599491>,  <32.312191, 33.775906, 35.754128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479923, 33.701378, 35.599491>,  <32.759476, 33.577168, 35.341766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479923, 33.701378, 35.599491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377094, -0.925436, 0.036990,
		0.607758, -0.217116, 0.763866,
		-0.698878, 0.310530, 0.644314,
		32.270260, 33.794537, 35.792786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729378, 33.427841, 34.568291>,  <32.759476, 33.577168, 35.341766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729378, 33.427841, 34.568291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063557, 33.228096, 34.660095>,  <33.264065, 33.108250, 34.715176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063557, 33.228096, 34.660095>,  <32.729378, 33.427841, 34.568291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063557, 33.228096, 34.660095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268186, -0.005924, 0.963349,
		-0.479701, -0.866373, -0.138871,
		0.835442, -0.499362, 0.229507,
		33.314190, 33.078289, 34.728947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576229, 32.804256, 34.937347>,  <32.729378, 33.427841, 34.568291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576229, 32.804256, 34.937347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950325, 32.914486, 35.026241>,  <33.174782, 32.980625, 35.079578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950325, 32.914486, 35.026241>,  <32.576229, 32.804256, 34.937347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950325, 32.914486, 35.026241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167040, -0.209970, 0.963333,
		0.312135, -0.938067, -0.150340,
		0.935238, 0.275577, 0.222234,
		33.230896, 32.997158, 35.092911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804447, 32.215298, 35.503948>,  <32.576229, 32.804256, 34.937347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804447, 32.215298, 35.503948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093044, 32.491650, 35.522408>,  <33.266201, 32.657463, 35.533485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093044, 32.491650, 35.522408>,  <32.804447, 32.215298, 35.503948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093044, 32.491650, 35.522408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197657, -0.269377, 0.942533,
		0.663613, -0.670907, -0.330911,
		0.721491, 0.690884, 0.046152,
		33.309490, 32.698914, 35.536255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294720, 31.918690, 35.809597>,  <32.804447, 32.215298, 35.503948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294720, 31.918690, 35.809597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366322, 32.306351, 35.877361>,  <33.409283, 32.538948, 35.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366322, 32.306351, 35.877361>,  <33.294720, 31.918690, 35.809597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366322, 32.306351, 35.877361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276985, -0.214870, 0.936541,
		0.944054, -0.120716, -0.306903,
		0.179000, 0.969153, 0.169412,
		33.420021, 32.597095, 35.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118607, 32.103546, 35.998474>,  <33.294720, 31.918690, 35.809597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118607, 32.103546, 35.998474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895725, 32.403210, 36.141739>,  <33.761997, 32.583008, 36.227699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895725, 32.403210, 36.141739>,  <34.118607, 32.103546, 35.998474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895725, 32.403210, 36.141739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383119, -0.150736, 0.911317,
		0.736712, 0.645008, -0.203028,
		-0.557203, 0.749162, 0.358163,
		33.728565, 32.627960, 36.249187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634632, 32.447788, 36.435799>,  <34.118607, 32.103546, 35.998474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634632, 32.447788, 36.435799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278347, 32.595894, 36.541279>,  <34.064575, 32.684757, 36.604568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278347, 32.595894, 36.541279>,  <34.634632, 32.447788, 36.435799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278347, 32.595894, 36.541279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245989, -0.095229, 0.964583,
		0.382267, 0.924031, -0.006261,
		-0.890708, 0.370268, 0.263704,
		34.011135, 32.706974, 36.620392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692829, 33.141331, 36.869247>,  <34.634632, 32.447788, 36.435799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692829, 33.141331, 36.869247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329288, 32.989487, 36.938389>,  <34.111164, 32.898380, 36.979874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329288, 32.989487, 36.938389>,  <34.692829, 33.141331, 36.869247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329288, 32.989487, 36.938389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090312, 0.225495, 0.970050,
		-0.407219, 0.897245, -0.170659,
		-0.908854, -0.379610, 0.172857,
		34.056633, 32.875603, 36.990246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418335, 33.668385, 37.231171>,  <34.692829, 33.141331, 36.869247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418335, 33.668385, 37.231171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230869, 33.327724, 37.325016>,  <34.118389, 33.123329, 37.381321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230869, 33.327724, 37.325016>,  <34.418335, 33.668385, 37.231171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230869, 33.327724, 37.325016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273974, 0.112356, 0.955151,
		-0.839818, 0.511919, 0.180674,
		-0.468661, -0.851654, 0.234612,
		34.090271, 33.072227, 37.395401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126839, 33.761269, 38.014359>,  <34.418335, 33.668385, 37.231171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126839, 33.761269, 38.014359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069328, 33.374638, 37.929455>,  <34.034821, 33.142658, 37.878513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069328, 33.374638, 37.929455>,  <34.126839, 33.761269, 38.014359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069328, 33.374638, 37.929455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062332, -0.222908, 0.972844,
		-0.987645, 0.126642, 0.092298,
		-0.143777, -0.966578, -0.212260,
		34.026196, 33.084663, 37.865776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702084, 33.517761, 38.591110>,  <34.126839, 33.761269, 38.014359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702084, 33.517761, 38.591110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878365, 33.201763, 38.420612>,  <33.984135, 33.012165, 38.318314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878365, 33.201763, 38.420612>,  <33.702084, 33.517761, 38.591110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878365, 33.201763, 38.420612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124506, -0.416464, 0.900587,
		-0.888975, -0.449964, -0.085179,
		0.440705, -0.789994, -0.426249,
		34.010578, 32.964764, 38.292736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372971, 32.897217, 38.923622>,  <33.702084, 33.517761, 38.591110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372971, 32.897217, 38.923622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711288, 32.762787, 38.757881>,  <33.914280, 32.682129, 38.658436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711288, 32.762787, 38.757881>,  <33.372971, 32.897217, 38.923622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711288, 32.762787, 38.757881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187295, -0.540182, 0.820441,
		-0.499553, -0.771530, -0.393938,
		0.845794, -0.336071, -0.414354,
		33.965027, 32.661964, 38.633575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324299, 32.134148, 39.075886>,  <33.372971, 32.897217, 38.923622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324299, 32.134148, 39.075886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687023, 32.276440, 38.985416>,  <33.904659, 32.361813, 38.931133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687023, 32.276440, 38.985416>,  <33.324299, 32.134148, 39.075886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687023, 32.276440, 38.985416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407198, -0.600433, 0.688237,
		0.109022, -0.716197, -0.689330,
		0.906809, 0.355727, -0.226174,
		33.959064, 32.383160, 38.917564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775414, 31.510019, 39.084763>,  <33.324299, 32.134148, 39.075886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775414, 31.510019, 39.084763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004745, 31.833260, 39.138817>,  <34.142345, 32.027203, 39.171249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004745, 31.833260, 39.138817>,  <33.775414, 31.510019, 39.084763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004745, 31.833260, 39.138817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289674, -0.354211, 0.889170,
		0.766406, -0.470646, -0.437167,
		0.573334, 0.808101, 0.135136,
		34.176746, 32.075691, 39.179356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390484, 31.184742, 39.185902>,  <33.775414, 31.510019, 39.084763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390484, 31.184742, 39.185902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411358, 31.542522, 39.363548>,  <34.423882, 31.757191, 39.470135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411358, 31.542522, 39.363548>,  <34.390484, 31.184742, 39.185902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411358, 31.542522, 39.363548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233229, -0.443338, 0.865480,
		0.971020, 0.058411, -0.231749,
		0.052190, 0.894449, 0.444113,
		34.427013, 31.810858, 39.496780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968967, 31.107735, 39.654736>,  <34.390484, 31.184742, 39.185902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968967, 31.107735, 39.654736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749355, 31.424961, 39.760269>,  <34.617588, 31.615297, 39.823589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749355, 31.424961, 39.760269>,  <34.968967, 31.107735, 39.654736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749355, 31.424961, 39.760269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025331, -0.299727, 0.953689,
		0.835417, 0.530290, 0.144471,
		-0.549033, 0.793068, 0.263830,
		34.584644, 31.662882, 39.839417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330666, 31.397568, 40.168510>,  <34.968967, 31.107735, 39.654736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330666, 31.397568, 40.168510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966068, 31.549305, 40.232105>,  <34.747311, 31.640347, 40.270264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966068, 31.549305, 40.232105>,  <35.330666, 31.397568, 40.168510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966068, 31.549305, 40.232105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064347, -0.250273, 0.966035,
		0.406250, 0.890765, 0.203713,
		-0.911493, 0.379344, 0.158991,
		34.692619, 31.663109, 40.279804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376293, 31.915037, 40.691929>,  <35.330666, 31.397568, 40.168510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376293, 31.915037, 40.691929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998425, 31.783827, 40.692596>,  <34.771706, 31.705101, 40.692997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998425, 31.783827, 40.692596>,  <35.376293, 31.915037, 40.691929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998425, 31.783827, 40.692596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027248, -0.073397, 0.996931,
		-0.326897, 0.941813, 0.078274,
		-0.944667, -0.328026, 0.001669,
		34.715023, 31.685419, 40.693096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115707, 32.168850, 41.295979>,  <35.376293, 31.915037, 40.691929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115707, 32.168850, 41.295979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838974, 31.898163, 41.195244>,  <34.672932, 31.735752, 41.134804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838974, 31.898163, 41.195244>,  <35.115707, 32.168850, 41.295979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838974, 31.898163, 41.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303306, -0.044146, 0.951870,
		-0.655262, 0.734921, -0.174709,
		-0.691837, -0.676714, -0.251833,
		34.631424, 31.695148, 41.119694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537273, 32.246651, 41.812073>,  <35.115707, 32.168850, 41.295979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537273, 32.246651, 41.812073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475010, 31.895840, 41.630260>,  <34.437653, 31.685354, 41.521175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475010, 31.895840, 41.630260>,  <34.537273, 32.246651, 41.812073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475010, 31.895840, 41.630260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311190, -0.393169, 0.865204,
		-0.937513, 0.276122, -0.211721,
		-0.155660, -0.877026, -0.454528,
		34.428310, 31.632732, 41.493900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845009, 32.063370, 41.968510>,  <34.537273, 32.246651, 41.812073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845009, 32.063370, 41.968510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063324, 31.734222, 41.905277>,  <34.194313, 31.536734, 41.867336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063324, 31.734222, 41.905277>,  <33.845009, 32.063370, 41.968510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063324, 31.734222, 41.905277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416998, -0.430381, 0.800552,
		-0.726790, -0.371014, -0.578035,
		0.545792, -0.822873, -0.158084,
		34.227062, 31.487360, 41.857853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351097, 31.610619, 42.219688>,  <33.845009, 32.063370, 41.968510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351097, 31.610619, 42.219688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704674, 31.423767, 42.211269>,  <33.916821, 31.311657, 42.206219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704674, 31.423767, 42.211269>,  <33.351097, 31.610619, 42.219688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704674, 31.423767, 42.211269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291490, -0.585665, 0.756326,
		-0.365628, -0.662411, -0.653856,
		0.883940, -0.467127, -0.021049,
		33.969856, 31.283628, 42.204956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229439, 30.979012, 42.389381>,  <33.351097, 31.610619, 42.219688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229439, 30.979012, 42.389381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624504, 30.968431, 42.451126>,  <33.861542, 30.962084, 42.488174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624504, 30.968431, 42.451126>,  <33.229439, 30.979012, 42.389381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624504, 30.968431, 42.451126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129407, -0.693000, 0.709228,
		0.088214, -0.720452, -0.687871,
		0.987660, -0.026451, 0.154364,
		33.920803, 30.960497, 42.497437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332104, 30.367306, 42.653603>,  <33.229439, 30.979012, 42.389381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332104, 30.367306, 42.653603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665058, 30.554331, 42.772614>,  <33.864830, 30.666546, 42.844021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665058, 30.554331, 42.772614>,  <33.332104, 30.367306, 42.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665058, 30.554331, 42.772614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015130, -0.555839, 0.831153,
		0.553994, -0.687335, -0.469745,
		0.832383, 0.467561, 0.297532,
		33.914772, 30.694599, 42.861874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888496, 29.855877, 42.899181>,  <33.332104, 30.367306, 42.653603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888496, 29.855877, 42.899181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946674, 30.211435, 43.072945>,  <33.981583, 30.424770, 43.177204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946674, 30.211435, 43.072945>,  <33.888496, 29.855877, 42.899181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946674, 30.211435, 43.072945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008680, -0.440211, 0.897853,
		0.989329, -0.126816, -0.071741,
		0.145443, 0.888894, 0.434413,
		33.990307, 30.478104, 43.203270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243389, 29.513514, 43.402725>,  <33.888496, 29.855877, 42.899181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243389, 29.513514, 43.402725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151932, 29.891142, 43.497765>,  <34.097057, 30.117718, 43.554790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151932, 29.891142, 43.497765>,  <34.243389, 29.513514, 43.402725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151932, 29.891142, 43.497765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010486, -0.246441, 0.969101,
		0.973453, 0.219091, 0.066247,
		-0.228648, 0.944069, 0.237602,
		34.083336, 30.174362, 43.569046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708206, 29.751875, 43.921406>,  <34.243389, 29.513514, 43.402725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708206, 29.751875, 43.921406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394497, 29.994066, 43.975521>,  <34.206272, 30.139381, 44.007992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394497, 29.994066, 43.975521>,  <34.708206, 29.751875, 43.921406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394497, 29.994066, 43.975521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016432, -0.238260, 0.971062,
		0.620193, 0.759359, 0.196811,
		-0.784277, 0.605480, 0.135290,
		34.159214, 30.175711, 44.016109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795937, 30.042841, 44.571762>,  <34.708206, 29.751875, 43.921406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795937, 30.042841, 44.571762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405590, 30.099321, 44.505138>,  <34.171383, 30.133209, 44.465164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405590, 30.099321, 44.505138>,  <34.795937, 30.042841, 44.571762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405590, 30.099321, 44.505138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207850, -0.366956, 0.906720,
		0.066912, 0.919459, 0.387450,
		-0.975869, 0.141202, -0.166556,
		34.112831, 30.141682, 44.455170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538746, 30.650763, 44.917854>,  <34.795937, 30.042841, 44.571762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538746, 30.650763, 44.917854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219883, 30.414049, 44.869976>,  <34.028564, 30.272022, 44.841248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219883, 30.414049, 44.869976>,  <34.538746, 30.650763, 44.917854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219883, 30.414049, 44.869976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040898, -0.144870, 0.988605,
		-0.602380, 0.792973, 0.091282,
		-0.797161, -0.591782, -0.119698,
		33.980736, 30.236515, 44.834068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277466, 30.592413, 45.499855>,  <34.538746, 30.650763, 44.917854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277466, 30.592413, 45.499855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046951, 30.314051, 45.328457>,  <33.908642, 30.147034, 45.225616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046951, 30.314051, 45.328457>,  <34.277466, 30.592413, 45.499855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046951, 30.314051, 45.328457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131986, -0.438180, 0.889145,
		-0.806519, 0.568958, 0.160668,
		-0.576288, -0.695906, -0.428495,
		33.874065, 30.105278, 45.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692318, 30.618471, 45.937077>,  <34.277466, 30.592413, 45.499855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692318, 30.618471, 45.937077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687859, 30.264606, 45.750633>,  <33.685184, 30.052288, 45.638767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687859, 30.264606, 45.750633>,  <33.692318, 30.618471, 45.937077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687859, 30.264606, 45.750633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242509, -0.449825, 0.859562,
		-0.970085, 0.122614, -0.209525,
		-0.011145, -0.884660, -0.466104,
		33.684517, 29.999208, 45.610802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040928, 30.306423, 46.035610>,  <33.692318, 30.618471, 45.937077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040928, 30.306423, 46.035610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315613, 30.021296, 45.978603>,  <33.480423, 29.850218, 45.944401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315613, 30.021296, 45.978603>,  <33.040928, 30.306423, 46.035610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315613, 30.021296, 45.978603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244784, -0.411354, 0.877991,
		-0.684473, -0.568044, -0.456970,
		0.686714, -0.712820, -0.142513,
		33.521626, 29.807449, 45.935848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671314, 29.712820, 46.059868>,  <33.040928, 30.306423, 46.035610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671314, 29.712820, 46.059868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052422, 29.621332, 46.139786>,  <33.281086, 29.566441, 46.187737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052422, 29.621332, 46.139786>,  <32.671314, 29.712820, 46.059868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052422, 29.621332, 46.139786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287255, -0.465202, 0.837300,
		-0.098560, -0.855146, -0.508931,
		0.952770, -0.228717, 0.199795,
		33.338253, 29.552717, 46.199722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527733, 29.154356, 46.473736>,  <32.671314, 29.712820, 46.059868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527733, 29.154356, 46.473736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914520, 29.229961, 46.542145>,  <33.146591, 29.275326, 46.583191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914520, 29.229961, 46.542145>,  <32.527733, 29.154356, 46.473736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914520, 29.229961, 46.542145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078168, -0.418735, 0.904738,
		0.242624, -0.888220, -0.390127,
		0.966966, 0.189015, 0.171025,
		33.204609, 29.286667, 46.593452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741787, 28.573801, 46.794159>,  <32.527733, 29.154356, 46.473736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741787, 28.573801, 46.794159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040985, 28.816969, 46.900700>,  <33.220505, 28.962870, 46.964622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040985, 28.816969, 46.900700>,  <32.741787, 28.573801, 46.794159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040985, 28.816969, 46.900700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150641, -0.546329, 0.823913,
		0.646387, -0.576157, -0.500227,
		0.747991, 0.607921, 0.266347,
		33.265381, 28.999346, 46.980602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283424, 28.176306, 46.903988>,  <32.741787, 28.573801, 46.794159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283424, 28.176306, 46.903988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379173, 28.505331, 47.110325>,  <33.436623, 28.702747, 47.234127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379173, 28.505331, 47.110325>,  <33.283424, 28.176306, 46.903988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379173, 28.505331, 47.110325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176506, -0.559297, 0.809958,
		0.954750, -0.102830, -0.279066,
		0.239369, 0.822564, 0.515839,
		33.450985, 28.752100, 47.265076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898609, 27.958527, 47.325542>,  <33.283424, 28.176306, 46.903988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898609, 27.958527, 47.325542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752682, 28.290771, 47.493824>,  <33.665127, 28.490118, 47.594795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752682, 28.290771, 47.493824>,  <33.898609, 27.958527, 47.325542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752682, 28.290771, 47.493824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066613, -0.427408, 0.901602,
		0.928693, 0.356945, 0.100596,
		-0.364818, 0.830610, 0.420708,
		33.643238, 28.539955, 47.620037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332199, 28.019712, 47.818802>,  <33.898609, 27.958527, 47.325542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332199, 28.019712, 47.818802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021362, 28.246223, 47.928684>,  <33.834862, 28.382130, 47.994614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021362, 28.246223, 47.928684>,  <34.332199, 28.019712, 47.818802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021362, 28.246223, 47.928684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134136, -0.277427, 0.951337,
		0.614931, 0.776121, 0.139627,
		-0.777089, 0.566278, 0.274704,
		33.788235, 28.416107, 48.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578869, 28.429420, 48.379910>,  <34.332199, 28.019712, 47.818802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578869, 28.429420, 48.379910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179810, 28.402807, 48.386532>,  <33.940372, 28.386839, 48.390503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179810, 28.402807, 48.386532>,  <34.578869, 28.429420, 48.379910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179810, 28.402807, 48.386532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038065, -0.336704, 0.940841,
		-0.057024, 0.939257, 0.338445,
		-0.997647, -0.066533, 0.016553,
		33.880516, 28.382847, 48.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506134, 28.652689, 48.970329>,  <34.578869, 28.429420, 48.379910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506134, 28.652689, 48.970329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172211, 28.442926, 48.903294>,  <33.971855, 28.317068, 48.863071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172211, 28.442926, 48.903294>,  <34.506134, 28.652689, 48.970329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172211, 28.442926, 48.903294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035857, -0.355556, 0.933967,
		-0.549366, 0.773678, 0.315626,
		-0.834812, -0.524407, -0.167589,
		33.921768, 28.285604, 48.853016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179153, 28.592932, 49.645775>,  <34.506134, 28.652689, 48.970329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179153, 28.592932, 49.645775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014824, 28.297916, 49.431389>,  <33.916225, 28.120907, 49.302757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014824, 28.297916, 49.431389>,  <34.179153, 28.592932, 49.645775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014824, 28.297916, 49.431389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163132, -0.518911, 0.839118,
		-0.897000, 0.432166, 0.092867,
		-0.410828, -0.737539, -0.535963,
		33.891575, 28.076654, 49.270599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419865, 28.530516, 49.766628>,  <34.179153, 28.592932, 49.645775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419865, 28.530516, 49.766628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561489, 28.175798, 49.647804>,  <33.646461, 27.962969, 49.576511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561489, 28.175798, 49.647804>,  <33.419865, 28.530516, 49.766628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561489, 28.175798, 49.647804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428652, -0.436180, 0.791205,
		-0.831204, -0.152799, -0.534558,
		0.354059, -0.886792, -0.297057,
		33.667706, 27.909761, 49.558689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964436, 27.986265, 49.654392>,  <33.419865, 28.530516, 49.766628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964436, 27.986265, 49.654392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282612, 27.760586, 49.742889>,  <33.473518, 27.625177, 49.795990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282612, 27.760586, 49.742889>,  <32.964436, 27.986265, 49.654392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282612, 27.760586, 49.742889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495394, -0.395063, 0.773635,
		-0.349076, -0.724988, -0.593750,
		0.795444, -0.564197, 0.221248,
		33.521244, 27.591326, 49.809261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794487, 27.236851, 49.664921>,  <32.964436, 27.986265, 49.654392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794487, 27.236851, 49.664921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096268, 27.314659, 49.915668>,  <33.277336, 27.361343, 50.066116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096268, 27.314659, 49.915668>,  <32.794487, 27.236851, 49.664921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096268, 27.314659, 49.915668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547065, -0.341353, 0.764328,
		0.362663, -0.919586, -0.151118,
		0.754451, 0.194522, 0.626870,
		33.322601, 27.373016, 50.103729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905155, 26.581400, 50.100113>,  <32.794487, 27.236851, 49.664921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905155, 26.581400, 50.100113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017952, 26.920111, 50.280537>,  <33.085629, 27.123337, 50.388790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017952, 26.920111, 50.280537>,  <32.905155, 26.581400, 50.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017952, 26.920111, 50.280537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534335, -0.251864, 0.806877,
		0.796849, -0.468548, 0.381438,
		0.281990, 0.846775, 0.451059,
		33.102551, 27.174143, 50.415855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165615, 26.271412, 49.561382>,  <32.905155, 26.581400, 50.100113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165615, 26.271412, 49.561382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347980, 26.252033, 49.916862>,  <33.457401, 26.240406, 50.130150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347980, 26.252033, 49.916862>,  <33.165615, 26.271412, 49.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347980, 26.252033, 49.916862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581962, -0.771710, 0.256486,
		0.673394, -0.634127, -0.380030,
		0.455917, -0.048447, 0.888703,
		33.484756, 26.237499, 50.183472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341312, 25.463102, 49.352222>,  <33.165615, 26.271412, 49.561382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341312, 25.463102, 49.352222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145535, 25.142176, 49.488884>,  <33.028069, 24.949619, 49.570881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145535, 25.142176, 49.488884>,  <33.341312, 25.463102, 49.352222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145535, 25.142176, 49.488884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394161, 0.145934, 0.907381,
		-0.777867, 0.578782, 0.244815,
		-0.489449, -0.802319, 0.341650,
		32.998699, 24.901480, 49.591377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389935, 25.715836, 50.153854>,  <33.341312, 25.463102, 49.352222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389935, 25.715836, 50.153854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773983, 25.645184, 50.240547>,  <34.004410, 25.602793, 50.292564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773983, 25.645184, 50.240547>,  <33.389935, 25.715836, 50.153854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773983, 25.645184, 50.240547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236798, 0.101548, -0.966237,
		0.148659, 0.979025, 0.139324,
		0.960118, -0.176632, 0.216735,
		34.062019, 25.592194, 50.305569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804089, 26.111156, 49.827103>,  <33.389935, 25.715836, 50.153854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804089, 26.111156, 49.827103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112087, 25.856373, 49.841976>,  <34.296886, 25.703503, 49.850899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112087, 25.856373, 49.841976>,  <33.804089, 26.111156, 49.827103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112087, 25.856373, 49.841976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089923, 0.050637, -0.994661,
		0.631676, 0.769232, 0.096268,
		0.770000, -0.636959, 0.037185,
		34.343086, 25.665285, 49.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474163, 26.324076, 49.577835>,  <33.804089, 26.111156, 49.827103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474163, 26.324076, 49.577835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495552, 25.925570, 49.550709>,  <34.508385, 25.686466, 49.534431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495552, 25.925570, 49.550709>,  <34.474163, 26.324076, 49.577835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495552, 25.925570, 49.550709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137559, 0.074616, -0.987679,
		0.989049, 0.043483, 0.141035,
		0.053471, -0.996264, -0.067817,
		34.511593, 25.626690, 49.530365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064312, 26.306778, 49.224228>,  <34.474163, 26.324076, 49.577835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064312, 26.306778, 49.224228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867687, 25.966532, 49.149582>,  <34.749714, 25.762384, 49.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867687, 25.966532, 49.149582>,  <35.064312, 26.306778, 49.224228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867687, 25.966532, 49.149582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015478, 0.205729, -0.978486,
		0.870708, -0.483870, -0.087962,
		-0.491557, -0.850614, -0.186620,
		34.720219, 25.711348, 49.093597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494118, 25.828688, 48.686909>,  <35.064312, 26.306778, 49.224228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494118, 25.828688, 48.686909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094582, 25.810215, 48.681507>,  <34.854858, 25.799131, 48.678265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094582, 25.810215, 48.681507>,  <35.494118, 25.828688, 48.686909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094582, 25.810215, 48.681507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003708, 0.205919, -0.978562,
		0.047972, -0.977479, -0.205510,
		-0.998842, -0.046181, -0.013503,
		34.794930, 25.796360, 48.677456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114399, 25.214087, 48.390568>,  <35.494118, 25.828688, 48.686909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114399, 25.214087, 48.390568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865742, 25.525030, 48.352055>,  <34.716545, 25.711596, 48.328945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865742, 25.525030, 48.352055>,  <35.114399, 25.214087, 48.390568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865742, 25.525030, 48.352055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278039, 0.104068, -0.954916,
		-0.732292, -0.620389, -0.280829,
		-0.621645, 0.777359, -0.096284,
		34.679249, 25.758238, 48.323170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624454, 25.201702, 47.822285>,  <35.114399, 25.214087, 48.390568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624454, 25.201702, 47.822285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636448, 25.597113, 47.881496>,  <34.643642, 25.834360, 47.917023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636448, 25.597113, 47.881496>,  <34.624454, 25.201702, 47.822285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636448, 25.597113, 47.881496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252583, 0.135798, -0.957998,
		-0.967111, 0.066114, -0.245613,
		0.029983, 0.988528, 0.148031,
		34.645443, 25.893671, 47.925907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234875, 25.516447, 47.294525>,  <34.624454, 25.201702, 47.822285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234875, 25.516447, 47.294525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483135, 25.799349, 47.429924>,  <34.632092, 25.969090, 47.511162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483135, 25.799349, 47.429924>,  <34.234875, 25.516447, 47.294525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483135, 25.799349, 47.429924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250263, 0.230436, -0.940355,
		-0.743072, 0.668348, -0.033979,
		0.620655, 0.707255, 0.338494,
		34.669331, 26.011526, 47.531471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113430, 25.994402, 46.863811>,  <34.234875, 25.516447, 47.294525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113430, 25.994402, 46.863811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456089, 26.129366, 47.019917>,  <34.661686, 26.210344, 47.113579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456089, 26.129366, 47.019917>,  <34.113430, 25.994402, 46.863811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456089, 26.129366, 47.019917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279620, 0.332059, -0.900860,
		-0.433551, 0.880847, 0.190112,
		0.856649, 0.337409, 0.390267,
		34.713085, 26.230589, 47.136997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206589, 26.729067, 46.665520>,  <34.113430, 25.994402, 46.863811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206589, 26.729067, 46.665520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576122, 26.609518, 46.761189>,  <34.797844, 26.537788, 46.818588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576122, 26.609518, 46.761189>,  <34.206589, 26.729067, 46.665520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576122, 26.609518, 46.761189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352345, 0.419764, -0.836451,
		0.149596, 0.857015, 0.493099,
		0.923836, -0.298871, 0.239170,
		34.853271, 26.519857, 46.832939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626175, 27.262783, 46.390053>,  <34.206589, 26.729067, 46.665520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626175, 27.262783, 46.390053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901367, 26.982576, 46.465904>,  <35.066483, 26.814453, 46.511414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901367, 26.982576, 46.465904>,  <34.626175, 27.262783, 46.390053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901367, 26.982576, 46.465904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565270, 0.353383, -0.745380,
		0.455140, 0.619997, 0.639102,
		0.687981, -0.700517, 0.189627,
		35.107761, 26.772421, 46.522793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218937, 27.606373, 46.309479>,  <34.626175, 27.262783, 46.390053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218937, 27.606373, 46.309479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324203, 27.221500, 46.281319>,  <35.387363, 26.990578, 46.264423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324203, 27.221500, 46.281319>,  <35.218937, 27.606373, 46.309479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324203, 27.221500, 46.281319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634728, 0.227635, -0.738446,
		0.726543, 0.149645, 0.670628,
		0.263163, -0.962179, -0.070403,
		35.403152, 26.932846, 46.260197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000534, 27.622620, 46.177429>,  <35.218937, 27.606373, 46.309479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000534, 27.622620, 46.177429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850754, 27.281097, 46.032764>,  <35.760883, 27.076183, 45.945965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850754, 27.281097, 46.032764>,  <36.000534, 27.622620, 46.177429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850754, 27.281097, 46.032764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368504, 0.220882, -0.903004,
		0.850875, -0.471406, 0.231922,
		-0.374454, -0.853808, -0.361658,
		35.738419, 27.024956, 45.924267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507378, 27.367401, 45.687248>,  <36.000534, 27.622620, 46.177429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507378, 27.367401, 45.687248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171707, 27.175823, 45.584175>,  <35.970306, 27.060877, 45.522331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171707, 27.175823, 45.584175>,  <36.507378, 27.367401, 45.687248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171707, 27.175823, 45.584175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229441, 0.117810, -0.966166,
		0.493097, -0.869905, 0.011026,
		-0.839173, -0.478944, -0.257684,
		35.919956, 27.032141, 45.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724392, 26.993599, 45.056099>,  <36.507378, 27.367401, 45.687248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724392, 26.993599, 45.056099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325584, 27.009146, 45.029449>,  <36.086300, 27.018475, 45.013458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325584, 27.009146, 45.029449>,  <36.724392, 26.993599, 45.056099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325584, 27.009146, 45.029449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071483, 0.141081, -0.987414,
		-0.028978, -0.989235, -0.143439,
		-0.997021, 0.038867, -0.066625,
		36.026478, 27.020805, 45.009460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526455, 26.628513, 44.420349>,  <36.724392, 26.993599, 45.056099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526455, 26.628513, 44.420349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213974, 26.866533, 44.495861>,  <36.026485, 27.009346, 44.541168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213974, 26.866533, 44.495861>,  <36.526455, 26.628513, 44.420349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213974, 26.866533, 44.495861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035736, 0.344524, -0.938097,
		-0.623254, -0.726097, -0.290408,
		-0.781202, 0.595051, 0.188778,
		35.979614, 27.045048, 44.552494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052799, 26.579062, 43.889526>,  <36.526455, 26.628513, 44.420349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052799, 26.579062, 43.889526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931183, 26.927126, 44.044640>,  <35.858212, 27.135965, 44.137707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931183, 26.927126, 44.044640>,  <36.052799, 26.579062, 43.889526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931183, 26.927126, 44.044640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038694, 0.418001, -0.907622,
		-0.951872, -0.260950, -0.160760,
		-0.304042, 0.870161, 0.387786,
		35.839970, 27.188175, 44.160976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376492, 26.857155, 43.491680>,  <36.052799, 26.579062, 43.889526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376492, 26.857155, 43.491680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551239, 27.161938, 43.682915>,  <35.656086, 27.344809, 43.797657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551239, 27.161938, 43.682915>,  <35.376492, 26.857155, 43.491680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551239, 27.161938, 43.682915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090422, 0.491599, -0.866114,
		-0.894971, 0.421605, 0.145864,
		0.436865, 0.761958, 0.478089,
		35.682297, 27.390526, 43.826340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117565, 27.484964, 43.141163>,  <35.376492, 26.857155, 43.491680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117565, 27.484964, 43.141163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425518, 27.611364, 43.362946>,  <35.610291, 27.687204, 43.496017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425518, 27.611364, 43.362946>,  <35.117565, 27.484964, 43.141163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425518, 27.611364, 43.362946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267650, 0.628831, -0.730024,
		-0.579352, 0.710432, 0.399547,
		0.769880, 0.316002, 0.554461,
		35.656483, 27.706165, 43.529285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045750, 28.180904, 43.059288>,  <35.117565, 27.484964, 43.141163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045750, 28.180904, 43.059288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426685, 28.110821, 43.159168>,  <35.655247, 28.068771, 43.219097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426685, 28.110821, 43.159168>,  <35.045750, 28.180904, 43.059288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426685, 28.110821, 43.159168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304908, 0.570862, -0.762331,
		-0.008981, 0.802134, 0.597076,
		0.952340, -0.175207, 0.249704,
		35.712387, 28.058258, 43.234077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390293, 28.785814, 43.208015>,  <35.045750, 28.180904, 43.059288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390293, 28.785814, 43.208015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681889, 28.539143, 43.089169>,  <35.856846, 28.391140, 43.017860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681889, 28.539143, 43.089169>,  <35.390293, 28.785814, 43.208015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681889, 28.539143, 43.089169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249114, 0.643293, -0.723959,
		0.637586, 0.453742, 0.622577,
		0.728990, -0.616679, -0.297121,
		35.900585, 28.354139, 43.000031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027737, 29.192102, 42.996590>,  <35.390293, 28.785814, 43.208015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027737, 29.192102, 42.996590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088219, 28.832514, 42.832157>,  <36.124508, 28.616760, 42.733498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088219, 28.832514, 42.832157>,  <36.027737, 29.192102, 42.996590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088219, 28.832514, 42.832157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277678, 0.437743, -0.855147,
		0.948700, 0.015153, 0.315813,
		0.151203, -0.898973, -0.411079,
		36.133579, 28.562822, 42.708832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713902, 29.297548, 42.717583>,  <36.027737, 29.192102, 42.996590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713902, 29.297548, 42.717583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551254, 28.988668, 42.522289>,  <36.453667, 28.803341, 42.405113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551254, 28.988668, 42.522289>,  <36.713902, 29.297548, 42.717583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551254, 28.988668, 42.522289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145023, 0.473071, -0.869006,
		0.902016, -0.424156, -0.080371,
		-0.406615, -0.772202, -0.488230,
		36.429268, 28.757008, 42.375820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263451, 29.114937, 42.241306>,  <36.713902, 29.297548, 42.717583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263451, 29.114937, 42.241306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902214, 28.979656, 42.135437>,  <36.685474, 28.898489, 42.071915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902214, 28.979656, 42.135437>,  <37.263451, 29.114937, 42.241306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902214, 28.979656, 42.135437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231745, 0.135081, -0.963352,
		0.361558, -0.931329, -0.043614,
		-0.903089, -0.338201, -0.264671,
		36.631287, 28.878197, 42.056034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488270, 28.675049, 41.706165>,  <37.263451, 29.114937, 42.241306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488270, 28.675049, 41.706165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110439, 28.805946, 41.695618>,  <36.883743, 28.884485, 41.689289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110439, 28.805946, 41.695618>,  <37.488270, 28.675049, 41.706165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110439, 28.805946, 41.695618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072114, 0.128448, -0.989091,
		-0.320285, -0.936170, -0.144927,
		-0.944573, 0.327242, -0.026371,
		36.827068, 28.904119, 41.687706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147827, 28.504320, 41.079269>,  <37.488270, 28.675049, 41.706165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147827, 28.504320, 41.079269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899845, 28.792410, 41.203808>,  <36.751057, 28.965263, 41.278530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899845, 28.792410, 41.203808>,  <37.147827, 28.504320, 41.079269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899845, 28.792410, 41.203808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276678, 0.170660, -0.945687,
		-0.734240, -0.672425, 0.093468,
		-0.619952, 0.720222, 0.311350,
		36.713860, 29.008476, 41.297215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555531, 28.414524, 40.668880>,  <37.147827, 28.504320, 41.079269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555531, 28.414524, 40.668880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551910, 28.790632, 40.805004>,  <36.549740, 29.016296, 40.886677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551910, 28.790632, 40.805004>,  <36.555531, 28.414524, 40.668880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551910, 28.790632, 40.805004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364584, 0.313796, -0.876704,
		-0.931126, -0.132003, 0.339969,
		-0.009047, 0.940270, 0.340310,
		36.549198, 29.072714, 40.907097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936600, 28.810257, 40.305195>,  <36.555531, 28.414524, 40.668880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936600, 28.810257, 40.305195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125477, 29.122219, 40.469528>,  <36.238804, 29.309397, 40.568127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125477, 29.122219, 40.469528>,  <35.936600, 28.810257, 40.305195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125477, 29.122219, 40.469528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320652, 0.586100, -0.744089,
		-0.821108, 0.219619, 0.526830,
		0.472191, 0.779906, 0.410830,
		36.267136, 29.356192, 40.592777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502541, 29.402376, 40.304462>,  <35.936600, 28.810257, 40.305195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502541, 29.402376, 40.304462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868149, 29.564615, 40.301197>,  <36.087513, 29.661959, 40.299236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868149, 29.564615, 40.301197>,  <35.502541, 29.402376, 40.304462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868149, 29.564615, 40.301197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224771, 0.489564, -0.842499,
		-0.337718, 0.771893, 0.538636,
		0.914016, 0.405597, -0.008165,
		36.142353, 29.686295, 40.298748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485920, 30.138161, 40.103619>,  <35.502541, 29.402376, 40.304462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485920, 30.138161, 40.103619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875504, 30.066814, 40.047623>,  <36.109253, 30.024008, 40.014027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875504, 30.066814, 40.047623>,  <35.485920, 30.138161, 40.103619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875504, 30.066814, 40.047623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001422, 0.622192, -0.782863,
		0.226735, 0.762275, 0.606241,
		0.973956, -0.178364, -0.139989,
		36.167690, 30.013306, 40.005627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796162, 30.858398, 40.040874>,  <35.485920, 30.138161, 40.103619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796162, 30.858398, 40.040874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048000, 30.584099, 39.894802>,  <36.199104, 30.419519, 39.807159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048000, 30.584099, 39.894802>,  <35.796162, 30.858398, 40.040874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048000, 30.584099, 39.894802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124214, 0.552837, -0.823980,
		0.766928, 0.473414, 0.433244,
		0.629597, -0.685748, -0.365181,
		36.236877, 30.378374, 39.785248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441414, 31.205246, 39.833359>,  <35.796162, 30.858398, 40.040874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441414, 31.205246, 39.833359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405739, 30.873083, 39.613369>,  <36.384335, 30.673786, 39.481377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405739, 30.873083, 39.613369>,  <36.441414, 31.205246, 39.833359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405739, 30.873083, 39.613369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113036, 0.540167, -0.833932,
		0.989580, -0.136545, 0.045689,
		-0.089190, -0.830406, -0.549973,
		36.378983, 30.623960, 39.448376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868015, 31.279833, 39.252560>,  <36.441414, 31.205246, 39.833359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868015, 31.279833, 39.252560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700741, 30.945108, 39.111214>,  <36.600376, 30.744274, 39.026405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700741, 30.945108, 39.111214>,  <36.868015, 31.279833, 39.252560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700741, 30.945108, 39.111214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185222, 0.302291, -0.935047,
		0.889277, -0.456476, 0.028582,
		-0.418187, -0.836809, -0.353370,
		36.575283, 30.694065, 39.005203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315899, 31.046757, 38.784561>,  <36.868015, 31.279833, 39.252560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315899, 31.046757, 38.784561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958416, 30.886707, 38.703384>,  <36.743927, 30.790678, 38.654678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958416, 30.886707, 38.703384>,  <37.315899, 31.046757, 38.784561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958416, 30.886707, 38.703384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032005, 0.394340, -0.918407,
		0.447508, -0.827282, -0.339618,
		-0.893707, -0.400125, -0.202947,
		36.690304, 30.766670, 38.642502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343628, 30.587143, 38.180222>,  <37.315899, 31.046757, 38.784561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343628, 30.587143, 38.180222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955677, 30.683363, 38.195595>,  <36.722908, 30.741095, 38.204819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955677, 30.683363, 38.195595>,  <37.343628, 30.587143, 38.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955677, 30.683363, 38.195595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015204, 0.217237, -0.976000,
		-0.243124, -0.946015, -0.214350,
		-0.969876, 0.240548, 0.038432,
		36.664715, 30.755527, 38.207123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093498, 30.421249, 37.522831>,  <37.343628, 30.587143, 38.180222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093498, 30.421249, 37.522831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811138, 30.652920, 37.685928>,  <36.641720, 30.791922, 37.783787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811138, 30.652920, 37.685928>,  <37.093498, 30.421249, 37.522831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811138, 30.652920, 37.685928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205571, 0.383364, -0.900429,
		-0.677821, -0.719437, -0.151557,
		-0.705903, 0.579174, 0.407748,
		36.599365, 30.826672, 37.808254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504608, 30.280840, 37.098145>,  <37.093498, 30.421249, 37.522831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504608, 30.280840, 37.098145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449276, 30.643755, 37.256985>,  <36.416077, 30.861504, 37.352291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449276, 30.643755, 37.256985>,  <36.504608, 30.280840, 37.098145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449276, 30.643755, 37.256985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357446, 0.328198, -0.874368,
		-0.923633, -0.262892, 0.278908,
		-0.138327, 0.907290, 0.397104,
		36.407780, 30.915941, 37.376118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973549, 30.491438, 36.658813>,  <36.504608, 30.280840, 37.098145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973549, 30.491438, 36.658813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089527, 30.825529, 36.845715>,  <36.159115, 31.025984, 36.957855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089527, 30.825529, 36.845715>,  <35.973549, 30.491438, 36.658813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089527, 30.825529, 36.845715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276075, 0.540464, -0.794783,
		-0.916360, 0.101445, 0.387291,
		0.289944, 0.835229, 0.467253,
		36.176510, 31.076097, 36.985889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371151, 31.087902, 36.627499>,  <35.973549, 30.491438, 36.658813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371151, 31.087902, 36.627499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735558, 31.247435, 36.669422>,  <35.954201, 31.343155, 36.694576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735558, 31.247435, 36.669422>,  <35.371151, 31.087902, 36.627499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735558, 31.247435, 36.669422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128607, 0.516276, -0.846711,
		-0.391809, 0.757886, 0.521627,
		0.911014, 0.398834, 0.104812,
		36.008862, 31.367085, 36.700867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270164, 31.765888, 36.436852>,  <35.371151, 31.087902, 36.627499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270164, 31.765888, 36.436852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667168, 31.724403, 36.411041>,  <35.905369, 31.699512, 36.395557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667168, 31.724403, 36.411041>,  <35.270164, 31.765888, 36.436852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667168, 31.724403, 36.411041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000012, 0.528329, -0.849040,
		0.122144, 0.842682, 0.524374,
		0.992512, -0.103711, -0.064522,
		35.964920, 31.693291, 36.391685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691689, 32.437496, 36.355507>,  <35.270164, 31.765888, 36.436852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691689, 32.437496, 36.355507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935841, 32.159016, 36.204388>,  <36.082333, 31.991926, 36.113716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935841, 32.159016, 36.204388>,  <35.691689, 32.437496, 36.355507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935841, 32.159016, 36.204388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095868, 0.538381, -0.837231,
		0.786282, 0.474814, 0.395363,
		0.610385, -0.696202, -0.377800,
		36.118958, 31.950155, 36.091049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110958, 32.867882, 36.049706>,  <35.691689, 32.437496, 36.355507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110958, 32.867882, 36.049706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219761, 32.521637, 35.881546>,  <36.285042, 32.313892, 35.780651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219761, 32.521637, 35.881546>,  <36.110958, 32.867882, 36.049706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219761, 32.521637, 35.881546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167901, 0.472859, -0.864993,
		0.947534, 0.164701, 0.273959,
		0.272009, -0.865609, -0.420396,
		36.301365, 32.261955, 35.755428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854767, 33.015400, 35.766685>,  <36.110958, 32.867882, 36.049706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854767, 33.015400, 35.766685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662598, 32.717403, 35.581570>,  <36.547295, 32.538605, 35.470501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662598, 32.717403, 35.581570>,  <36.854767, 33.015400, 35.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662598, 32.717403, 35.581570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365971, 0.309245, -0.877743,
		0.797029, -0.591058, 0.124078,
		-0.480427, -0.744996, -0.462787,
		36.518471, 32.493904, 35.442734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373039, 32.749260, 35.324429>,  <36.854767, 33.015400, 35.766685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373039, 32.749260, 35.324429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028599, 32.617508, 35.169498>,  <36.821934, 32.538456, 35.076542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028599, 32.617508, 35.169498>,  <37.373039, 32.749260, 35.324429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028599, 32.617508, 35.169498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272360, 0.344451, -0.898428,
		0.429336, -0.879127, -0.206897,
		-0.861098, -0.329377, -0.387325,
		36.770267, 32.518696, 35.053303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768826, 32.232018, 35.003422>,  <37.373039, 32.749260, 35.324429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768826, 32.232018, 35.003422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039200, 32.022530, 34.796028>,  <38.201424, 31.896837, 34.671593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039200, 32.022530, 34.796028>,  <37.768826, 32.232018, 35.003422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039200, 32.022530, 34.796028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329905, -0.414074, 0.848355,
		-0.658992, -0.744485, -0.107110,
		0.675939, -0.523722, -0.518481,
		38.241982, 31.865414, 34.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681656, 31.511141, 35.335011>,  <37.768826, 32.232018, 35.003422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681656, 31.511141, 35.335011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041821, 31.535234, 35.162666>,  <38.257919, 31.549690, 35.059261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041821, 31.535234, 35.162666>,  <37.681656, 31.511141, 35.335011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041821, 31.535234, 35.162666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398861, -0.509745, 0.762279,
		-0.173710, -0.858214, -0.483004,
		0.900408, 0.060236, -0.430856,
		38.311943, 31.553305, 35.033409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945011, 30.843643, 35.449032>,  <37.681656, 31.511141, 35.335011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945011, 30.843643, 35.449032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264664, 31.079281, 35.401096>,  <38.456455, 31.220663, 35.372334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264664, 31.079281, 35.401096>,  <37.945011, 30.843643, 35.449032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264664, 31.079281, 35.401096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493958, -0.529830, 0.689409,
		0.342633, -0.610122, -0.714391,
		0.799130, 0.589093, -0.119837,
		38.504402, 31.256008, 35.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611454, 30.395107, 35.494144>,  <37.945011, 30.843643, 35.449032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611454, 30.395107, 35.494144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730709, 30.765535, 35.586674>,  <38.802261, 30.987791, 35.642189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730709, 30.765535, 35.586674>,  <38.611454, 30.395107, 35.494144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730709, 30.765535, 35.586674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508819, -0.359229, 0.782341,
		0.807598, -0.115546, -0.578302,
		0.298140, 0.926069, 0.231321,
		38.820152, 31.043356, 35.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298771, 30.300735, 35.531055>,  <38.611454, 30.395107, 35.494144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298771, 30.300735, 35.531055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211773, 30.635954, 35.731205>,  <39.159573, 30.837086, 35.851295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211773, 30.635954, 35.731205>,  <39.298771, 30.300735, 35.531055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211773, 30.635954, 35.731205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473795, -0.357550, 0.804784,
		0.853354, 0.412115, -0.319295,
		-0.217499, 0.838045, 0.500374,
		39.146523, 30.887367, 35.881317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937447, 30.536057, 35.842728>,  <39.298771, 30.300735, 35.531055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937447, 30.536057, 35.842728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683868, 30.754007, 36.062260>,  <39.531719, 30.884777, 36.193981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683868, 30.754007, 36.062260>,  <39.937447, 30.536057, 35.842728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683868, 30.754007, 36.062260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397331, -0.379372, 0.835587,
		0.663503, 0.747788, 0.024007,
		-0.633950, 0.544876, 0.548834,
		39.493683, 30.917471, 36.226910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359047, 30.945496, 36.387825>,  <39.937447, 30.536057, 35.842728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359047, 30.945496, 36.387825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977406, 30.906834, 36.501198>,  <39.748421, 30.883636, 36.569221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977406, 30.906834, 36.501198>,  <40.359047, 30.945496, 36.387825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977406, 30.906834, 36.501198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297280, -0.419768, 0.857566,
		0.036087, 0.902470, 0.429239,
		-0.954108, -0.096657, 0.283435,
		39.691174, 30.877836, 36.586227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432205, 31.006269, 37.081825>,  <40.359047, 30.945496, 36.387825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432205, 31.006269, 37.081825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052181, 30.886065, 37.115471>,  <39.824165, 30.813942, 37.135658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052181, 30.886065, 37.115471>,  <40.432205, 31.006269, 37.081825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052181, 30.886065, 37.115471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133709, -0.148453, 0.979839,
		-0.281966, 0.942154, 0.181221,
		-0.950062, -0.300512, 0.084116,
		39.767162, 30.795912, 37.140705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168007, 31.223803, 37.780724>,  <40.432205, 31.006269, 37.081825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168007, 31.223803, 37.780724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936821, 30.938541, 37.622040>,  <39.798111, 30.767385, 37.526829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936821, 30.938541, 37.622040>,  <40.168007, 31.223803, 37.780724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936821, 30.938541, 37.622040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063330, -0.445459, 0.893060,
		-0.813604, 0.541277, 0.212294,
		-0.577961, -0.713152, -0.396706,
		39.763432, 30.724596, 37.503029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601265, 31.302515, 38.206764>,  <40.168007, 31.223803, 37.780724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601265, 31.302515, 38.206764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651150, 30.944035, 38.036461>,  <39.681080, 30.728947, 37.934280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651150, 30.944035, 38.036461>,  <39.601265, 31.302515, 38.206764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651150, 30.944035, 38.036461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050805, -0.434315, 0.899327,
		-0.990891, -0.090526, -0.099695,
		0.124712, -0.896201, -0.425760,
		39.688564, 30.675175, 37.908733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111027, 30.833679, 38.590622>,  <39.601265, 31.302515, 38.206764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111027, 30.833679, 38.590622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333469, 30.564762, 38.395168>,  <39.466934, 30.403412, 38.277897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333469, 30.564762, 38.395168>,  <39.111027, 30.833679, 38.590622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333469, 30.564762, 38.395168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084079, -0.630424, 0.771684,
		-0.826848, -0.388054, -0.407108,
		0.556106, -0.672295, -0.488638,
		39.500301, 30.363073, 38.248577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733040, 30.130564, 38.579128>,  <39.111027, 30.833679, 38.590622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733040, 30.130564, 38.579128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120075, 30.063435, 38.503643>,  <39.352295, 30.023157, 38.458351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120075, 30.063435, 38.503643>,  <38.733040, 30.130564, 38.579128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120075, 30.063435, 38.503643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037855, -0.642430, 0.765409,
		-0.249688, -0.747743, -0.615253,
		0.967586, -0.167823, -0.188713,
		39.410351, 30.013088, 38.447029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861038, 29.343819, 38.641685>,  <38.733040, 30.130564, 38.579128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861038, 29.343819, 38.641685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223804, 29.509277, 38.673679>,  <39.441463, 29.608553, 38.692875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223804, 29.509277, 38.673679>,  <38.861038, 29.343819, 38.641685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223804, 29.509277, 38.673679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160161, -0.514085, 0.842654,
		0.389679, -0.751407, -0.532482,
		0.906917, 0.413647, 0.079983,
		39.495880, 29.633371, 38.697674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295525, 28.819588, 38.781277>,  <38.861038, 29.343819, 38.641685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295525, 28.819588, 38.781277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463093, 29.152559, 38.926365>,  <39.563633, 29.352343, 39.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463093, 29.152559, 38.926365>,  <39.295525, 28.819588, 38.781277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463093, 29.152559, 38.926365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178101, -0.467031, 0.866119,
		0.890387, -0.298230, -0.343904,
		0.418917, 0.832431, 0.362723,
		39.588768, 29.402288, 39.035183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824509, 28.561426, 39.181385>,  <39.295525, 28.819588, 38.781277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824509, 28.561426, 39.181385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759178, 28.935022, 39.308498>,  <39.719982, 29.159180, 39.384766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759178, 28.935022, 39.308498>,  <39.824509, 28.561426, 39.181385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759178, 28.935022, 39.308498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057708, -0.312517, 0.948158,
		0.984883, 0.173194, -0.002858,
		-0.163322, 0.933990, 0.317787,
		39.710182, 29.215219, 39.403835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339901, 28.794724, 39.779305>,  <39.824509, 28.561426, 39.181385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339901, 28.794724, 39.779305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995884, 28.994705, 39.820030>,  <39.789474, 29.114695, 39.844467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995884, 28.994705, 39.820030>,  <40.339901, 28.794724, 39.779305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995884, 28.994705, 39.820030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077619, -0.069020, 0.994591,
		0.504277, 0.863297, 0.020555,
		-0.860047, 0.499954, 0.101813,
		39.737869, 29.144691, 39.850574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457035, 29.088861, 40.427784>,  <40.339901, 28.794724, 39.779305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457035, 29.088861, 40.427784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061928, 29.120775, 40.374203>,  <39.824863, 29.139923, 40.342052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061928, 29.120775, 40.374203>,  <40.457035, 29.088861, 40.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061928, 29.120775, 40.374203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141482, -0.097659, 0.985112,
		0.065515, 0.992017, 0.107752,
		-0.987770, 0.079785, -0.133954,
		39.765598, 29.144711, 40.334015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222038, 29.510944, 40.995464>,  <40.457035, 29.088861, 40.427784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222038, 29.510944, 40.995464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911026, 29.311499, 40.842190>,  <39.724419, 29.191832, 40.750225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911026, 29.311499, 40.842190>,  <40.222038, 29.510944, 40.995464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911026, 29.311499, 40.842190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346523, -0.168766, 0.922735,
		-0.524758, 0.850237, -0.041561,
		-0.777529, -0.498614, -0.383188,
		39.677769, 29.161915, 40.727234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691792, 29.828751, 41.265408>,  <40.222038, 29.510944, 40.995464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691792, 29.828751, 41.265408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564934, 29.461123, 41.171833>,  <39.488819, 29.240545, 41.115688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564934, 29.461123, 41.171833>,  <39.691792, 29.828751, 41.265408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564934, 29.461123, 41.171833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443304, -0.074399, 0.893278,
		-0.838390, 0.387006, -0.383833,
		-0.317148, -0.919071, -0.233937,
		39.469788, 29.185402, 41.101650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176792, 29.793139, 41.647381>,  <39.691792, 29.828751, 41.265408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176792, 29.793139, 41.647381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206612, 29.403477, 41.562084>,  <39.224503, 29.169680, 41.510906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206612, 29.403477, 41.562084>,  <39.176792, 29.793139, 41.647381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206612, 29.403477, 41.562084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346387, -0.225813, 0.910508,
		-0.935125, 0.005987, -0.354268,
		0.074547, -0.974152, -0.213237,
		39.228977, 29.111231, 41.498112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538628, 29.406702, 41.779507>,  <39.176792, 29.793139, 41.647381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538628, 29.406702, 41.779507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808296, 29.112162, 41.802425>,  <38.970097, 28.935436, 41.816177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808296, 29.112162, 41.802425>,  <38.538628, 29.406702, 41.779507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808296, 29.112162, 41.802425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361737, -0.261564, 0.894836,
		-0.643928, -0.623995, -0.442704,
		0.674168, -0.736352, 0.057294,
		39.010548, 28.891256, 41.819614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184071, 28.877296, 42.057590>,  <38.538628, 29.406702, 41.779507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184071, 28.877296, 42.057590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563942, 28.774754, 42.129578>,  <38.791866, 28.713228, 42.172768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563942, 28.774754, 42.129578>,  <38.184071, 28.877296, 42.057590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563942, 28.774754, 42.129578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274213, -0.402797, 0.873248,
		-0.151374, -0.878656, -0.452825,
		0.949680, -0.256358, 0.179966,
		38.848846, 28.697845, 42.183567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145451, 28.118181, 42.087837>,  <38.184071, 28.877296, 42.057590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145451, 28.118181, 42.087837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454758, 28.285034, 42.278862>,  <38.640343, 28.385145, 42.393475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454758, 28.285034, 42.278862>,  <38.145451, 28.118181, 42.087837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454758, 28.285034, 42.278862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269889, -0.465003, 0.843168,
		0.573779, -0.780880, -0.246990,
		0.773264, 0.417132, 0.477560,
		38.686737, 28.410173, 42.422131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394371, 27.541338, 42.564972>,  <38.145451, 28.118181, 42.087837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394371, 27.541338, 42.564972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564102, 27.875160, 42.705521>,  <38.665943, 28.075453, 42.789852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564102, 27.875160, 42.705521>,  <38.394371, 27.541338, 42.564972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564102, 27.875160, 42.705521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174424, -0.305443, 0.936099,
		0.888550, -0.458503, 0.015958,
		0.424330, 0.834553, 0.351375,
		38.691402, 28.125526, 42.810932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888290, 27.358082, 43.190926>,  <38.394371, 27.541338, 42.564972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888290, 27.358082, 43.190926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813721, 27.748728, 43.233753>,  <38.768978, 27.983116, 43.259449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813721, 27.748728, 43.233753>,  <38.888290, 27.358082, 43.190926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813721, 27.748728, 43.233753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360001, -0.169306, 0.917461,
		0.914136, 0.132495, 0.383146,
		-0.186428, 0.976617, 0.107070,
		38.757793, 28.041714, 43.265873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213322, 27.578003, 43.849678>,  <38.888290, 27.358082, 43.190926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213322, 27.578003, 43.849678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916473, 27.834059, 43.770206>,  <38.738365, 27.987692, 43.722523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916473, 27.834059, 43.770206>,  <39.213322, 27.578003, 43.849678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916473, 27.834059, 43.770206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354116, -0.122786, 0.927106,
		0.569083, 0.758382, 0.317806,
		-0.742123, 0.640140, -0.198680,
		38.693836, 28.026100, 43.710602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283108, 28.141115, 44.356461>,  <39.213322, 27.578003, 43.849678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283108, 28.141115, 44.356461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905235, 28.180143, 44.231201>,  <38.678513, 28.203560, 44.156048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905235, 28.180143, 44.231201>,  <39.283108, 28.141115, 44.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905235, 28.180143, 44.231201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318774, -0.048344, 0.946597,
		0.077221, 0.994054, 0.076772,
		-0.944680, 0.097570, -0.313145,
		38.621830, 28.209414, 44.137257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928787, 28.667017, 44.817478>,  <39.283108, 28.141115, 44.356461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928787, 28.667017, 44.817478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665722, 28.412872, 44.655594>,  <38.507881, 28.260386, 44.558464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665722, 28.412872, 44.655594>,  <38.928787, 28.667017, 44.817478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665722, 28.412872, 44.655594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422943, -0.133152, 0.896320,
		-0.623375, 0.760650, -0.181152,
		-0.657664, -0.635360, -0.404716,
		38.468422, 28.222263, 44.534180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378376, 28.906595, 45.098549>,  <38.928787, 28.667017, 44.817478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378376, 28.906595, 45.098549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303196, 28.530573, 44.984726>,  <38.258087, 28.304960, 44.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303196, 28.530573, 44.984726>,  <38.378376, 28.906595, 45.098549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303196, 28.530573, 44.984726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413554, -0.187038, 0.891061,
		-0.890869, 0.285153, -0.353610,
		-0.187950, -0.940055, -0.284553,
		38.246811, 28.248556, 44.899361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749477, 28.723499, 45.448177>,  <38.378376, 28.906595, 45.098549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749477, 28.723499, 45.448177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900776, 28.379423, 45.311356>,  <37.991554, 28.172977, 45.229263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900776, 28.379423, 45.311356>,  <37.749477, 28.723499, 45.448177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900776, 28.379423, 45.311356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245770, -0.449562, 0.858773,
		-0.892482, -0.240764, -0.381456,
		0.378249, -0.860190, -0.342053,
		38.014252, 28.121367, 45.208740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239506, 28.210510, 45.525948>,  <37.749477, 28.723499, 45.448177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239506, 28.210510, 45.525948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606815, 28.052164, 45.529007>,  <37.827202, 27.957157, 45.530842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606815, 28.052164, 45.529007>,  <37.239506, 28.210510, 45.525948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606815, 28.052164, 45.529007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148926, -0.327437, 0.933063,
		-0.366860, -0.857950, -0.359632,
		0.918278, -0.395862, 0.007648,
		37.882298, 27.933405, 45.531300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190781, 27.711546, 46.022949>,  <37.239506, 28.210510, 45.525948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190781, 27.711546, 46.022949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580517, 27.703978, 45.933235>,  <37.814358, 27.699436, 45.879406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580517, 27.703978, 45.933235>,  <37.190781, 27.711546, 46.022949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580517, 27.703978, 45.933235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212116, -0.256186, 0.943067,
		-0.075302, -0.966442, -0.245599,
		0.974339, -0.018919, -0.224289,
		37.872818, 27.698301, 45.865948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540615, 27.124262, 46.304932>,  <37.190781, 27.711546, 46.022949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540615, 27.124262, 46.304932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851723, 27.374683, 46.282520>,  <38.038387, 27.524937, 46.269073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851723, 27.374683, 46.282520>,  <37.540615, 27.124262, 46.304932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851723, 27.374683, 46.282520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352824, -0.361073, 0.863216,
		0.520189, -0.691147, -0.501716,
		0.777765, 0.626053, -0.056028,
		38.085052, 27.562500, 46.265713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111618, 26.805132, 46.613930>,  <37.540615, 27.124262, 46.304932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111618, 26.805132, 46.613930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232914, 27.185244, 46.642262>,  <38.305691, 27.413311, 46.659260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232914, 27.185244, 46.642262>,  <38.111618, 26.805132, 46.613930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232914, 27.185244, 46.642262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299108, -0.165493, 0.939759,
		0.904755, -0.263783, -0.334420,
		0.303237, 0.950279, 0.070831,
		38.323887, 27.470327, 46.663509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707260, 26.794439, 46.908772>,  <38.111618, 26.805132, 46.613930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707260, 26.794439, 46.908772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650997, 27.180798, 46.995731>,  <38.617237, 27.412613, 47.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650997, 27.180798, 46.995731>,  <38.707260, 26.794439, 46.908772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650997, 27.180798, 46.995731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415982, -0.141600, 0.898281,
		0.898428, 0.216784, -0.381878,
		-0.140659, 0.965895, 0.217396,
		38.608799, 27.470566, 47.060951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259430, 26.985445, 47.344337>,  <38.707260, 26.794439, 46.908772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259430, 26.985445, 47.344337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996822, 27.282166, 47.399059>,  <38.839260, 27.460197, 47.431892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996822, 27.282166, 47.399059>,  <39.259430, 26.985445, 47.344337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996822, 27.282166, 47.399059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089904, -0.103123, 0.990597,
		0.748937, 0.662641, 0.001011,
		-0.656515, 0.741804, 0.136807,
		38.799870, 27.504707, 47.440102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514816, 27.550428, 47.818970>,  <39.259430, 26.985445, 47.344337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514816, 27.550428, 47.818970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116585, 27.555042, 47.856247>,  <38.877644, 27.557810, 47.878613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116585, 27.555042, 47.856247>,  <39.514816, 27.550428, 47.818970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116585, 27.555042, 47.856247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091345, -0.111019, 0.989612,
		0.021761, 0.993751, 0.109474,
		-0.995582, 0.011535, 0.093190,
		38.817909, 27.558502, 47.884205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444817, 27.861929, 48.433998>,  <39.514816, 27.550428, 47.818970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444817, 27.861929, 48.433998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103584, 27.677652, 48.336010>,  <38.898846, 27.567085, 48.277218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103584, 27.677652, 48.336010>,  <39.444817, 27.861929, 48.433998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103584, 27.677652, 48.336010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160587, -0.214892, 0.963345,
		-0.496448, 0.861152, 0.109340,
		-0.853083, -0.460692, -0.244973,
		38.847660, 27.539444, 48.262520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042824, 27.934835, 48.961861>,  <39.444817, 27.861929, 48.433998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042824, 27.934835, 48.961861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821815, 27.645098, 48.796913>,  <38.689209, 27.471254, 48.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821815, 27.645098, 48.796913>,  <39.042824, 27.934835, 48.961861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821815, 27.645098, 48.796913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231613, -0.341829, 0.910773,
		-0.800672, 0.598731, 0.021101,
		-0.552521, -0.724344, -0.412367,
		38.656059, 27.427795, 48.673203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978123, 28.457472, 49.575157>,  <39.042824, 27.934835, 48.961861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978123, 28.457472, 49.575157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138691, 28.817890, 49.640854>,  <39.235031, 29.034142, 49.680271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138691, 28.817890, 49.640854>,  <38.978123, 28.457472, 49.575157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138691, 28.817890, 49.640854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402710, -0.012584, -0.915241,
		-0.822609, 0.433538, -0.367912,
		0.401421, 0.901048, 0.164238,
		39.259117, 29.088205, 49.690125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754147, 28.912201, 49.014015>,  <38.978123, 28.457472, 49.575157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754147, 28.912201, 49.014015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088966, 29.086756, 49.146030>,  <39.289856, 29.191488, 49.225239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088966, 29.086756, 49.146030>,  <38.754147, 28.912201, 49.014015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088966, 29.086756, 49.146030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312205, 0.114411, -0.943100,
		-0.449315, 0.892456, -0.040474,
		0.837045, 0.436385, 0.330036,
		39.340080, 29.217670, 49.245041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718967, 29.463324, 48.629025>,  <38.754147, 28.912201, 49.014015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718967, 29.463324, 48.629025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100189, 29.400862, 48.732796>,  <39.328922, 29.363384, 48.795059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100189, 29.400862, 48.732796>,  <38.718967, 29.463324, 48.629025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100189, 29.400862, 48.732796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278792, 0.118169, -0.953054,
		0.118169, 0.980638, 0.156156,
		0.953054, -0.156156, 0.259430,
		39.386105, 29.354015, 48.810623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055813, 29.956654, 48.248642>,  <38.718967, 29.463324, 48.629025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055813, 29.956654, 48.248642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345699, 29.717176, 48.385082>,  <39.519630, 29.573490, 48.466946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345699, 29.717176, 48.385082>,  <39.055813, 29.956654, 48.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345699, 29.717176, 48.385082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537116, 0.180759, -0.823913,
		0.431613, 0.780317, 0.452566,
		0.724719, -0.598692, 0.341103,
		39.563114, 29.537569, 48.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660488, 30.354490, 48.191700>,  <39.055813, 29.956654, 48.248642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660488, 30.354490, 48.191700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767605, 29.969112, 48.188465>,  <39.831875, 29.737886, 48.186523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767605, 29.969112, 48.188465>,  <39.660488, 30.354490, 48.191700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767605, 29.969112, 48.188465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451989, 0.133032, -0.882048,
		0.850878, 0.232553, 0.471090,
		0.267793, -0.963443, -0.008083,
		39.847942, 29.680080, 48.186039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259701, 30.405106, 47.923733>,  <39.660488, 30.354490, 48.191700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259701, 30.405106, 47.923733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162262, 30.020172, 47.875439>,  <40.103798, 29.789213, 47.846462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162262, 30.020172, 47.875439>,  <40.259701, 30.405106, 47.923733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162262, 30.020172, 47.875439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446819, -0.000861, -0.894624,
		0.860822, -0.271875, 0.430198,
		-0.243596, -0.962332, -0.120738,
		40.089184, 29.731472, 47.839218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876537, 30.045855, 47.668915>,  <40.259701, 30.405106, 47.923733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876537, 30.045855, 47.668915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567822, 29.810484, 47.572510>,  <40.382591, 29.669262, 47.514668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567822, 29.810484, 47.572510>,  <40.876537, 30.045855, 47.668915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567822, 29.810484, 47.572510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293272, 0.006908, -0.956004,
		0.564205, -0.808519, 0.167238,
		-0.771793, -0.588429, -0.241013,
		40.336285, 29.633955, 47.500206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117111, 29.568842, 47.238510>,  <40.876537, 30.045855, 47.668915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117111, 29.568842, 47.238510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723797, 29.555922, 47.166847>,  <40.487808, 29.548170, 47.123852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723797, 29.555922, 47.166847>,  <41.117111, 29.568842, 47.238510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723797, 29.555922, 47.166847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181015, -0.069088, -0.981050,
		0.019312, -0.997087, 0.073781,
		-0.983291, -0.032301, -0.179154,
		40.428810, 29.546232, 47.113102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030930, 29.064651, 46.734653>,  <41.117111, 29.568842, 47.238510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030930, 29.064651, 46.734653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708107, 29.299679, 46.711250>,  <40.514412, 29.440695, 46.697208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708107, 29.299679, 46.711250>,  <41.030930, 29.064651, 46.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708107, 29.299679, 46.711250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122653, 0.069897, -0.989985,
		-0.577595, -0.806150, -0.128478,
		-0.807057, 0.587569, -0.058504,
		40.465988, 29.475948, 46.693699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710537, 28.831137, 46.125416>,  <41.030930, 29.064651, 46.734653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710537, 28.831137, 46.125416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557480, 29.194593, 46.192299>,  <40.465645, 29.412666, 46.232430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557480, 29.194593, 46.192299>,  <40.710537, 28.831137, 46.125416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557480, 29.194593, 46.192299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054294, 0.202782, -0.977718,
		-0.922299, -0.365039, -0.126927,
		-0.382644, 0.908640, 0.167206,
		40.442688, 29.467186, 46.242462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086704, 28.950813, 45.702900>,  <40.710537, 28.831137, 46.125416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086704, 28.950813, 45.702900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195629, 29.324339, 45.795708>,  <40.260983, 29.548454, 45.851395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195629, 29.324339, 45.795708>,  <40.086704, 28.950813, 45.702900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195629, 29.324339, 45.795708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016700, 0.245687, -0.969205,
		-0.962064, 0.260051, 0.082498,
		0.272312, 0.933815, 0.232024,
		40.277321, 29.604483, 45.865314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644886, 29.395275, 45.282799>,  <40.086704, 28.950813, 45.702900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644886, 29.395275, 45.282799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918526, 29.666317, 45.390770>,  <40.082710, 29.828941, 45.455551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918526, 29.666317, 45.390770>,  <39.644886, 29.395275, 45.282799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918526, 29.666317, 45.390770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024469, 0.348547, -0.936972,
		-0.728979, 0.647586, 0.221861,
		0.684099, 0.677604, 0.269929,
		40.123756, 29.869598, 45.471748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470112, 29.905777, 45.000305>,  <39.644886, 29.395275, 45.282799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470112, 29.905777, 45.000305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847336, 30.020321, 45.068005>,  <40.073669, 30.089046, 45.108624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847336, 30.020321, 45.068005>,  <39.470112, 29.905777, 45.000305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847336, 30.020321, 45.068005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051695, 0.376450, -0.924994,
		-0.328592, 0.881070, 0.340210,
		0.943056, 0.286359, 0.169245,
		40.130253, 30.106228, 45.118778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522404, 30.646166, 44.840187>,  <39.470112, 29.905777, 45.000305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522404, 30.646166, 44.840187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892750, 30.499168, 44.805042>,  <40.114956, 30.410971, 44.783955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892750, 30.499168, 44.805042>,  <39.522404, 30.646166, 44.840187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892750, 30.499168, 44.805042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122360, 0.511611, -0.850460,
		0.357491, 0.776662, 0.518650,
		0.925866, -0.367493, -0.087864,
		40.170509, 30.388920, 44.778683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855572, 31.159233, 44.518112>,  <39.522404, 30.646166, 44.840187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855572, 31.159233, 44.518112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098209, 30.845123, 44.468494>,  <40.243793, 30.656658, 44.438725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098209, 30.845123, 44.468494>,  <39.855572, 31.159233, 44.518112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098209, 30.845123, 44.468494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172735, 0.282483, -0.943592,
		0.776017, 0.550954, 0.306997,
		0.606597, -0.785273, -0.124042,
		40.280190, 30.609541, 44.431282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359722, 31.431227, 44.207001>,  <39.855572, 31.159233, 44.518112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359722, 31.431227, 44.207001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460331, 31.057987, 44.104187>,  <40.520695, 30.834044, 44.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460331, 31.057987, 44.104187>,  <40.359722, 31.431227, 44.207001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460331, 31.057987, 44.104187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130040, 0.295746, -0.946374,
		0.959077, 0.204605, 0.195725,
		0.251517, -0.933098, -0.257036,
		40.535786, 30.778057, 44.027077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045952, 31.404261, 43.693127>,  <40.359722, 31.431227, 44.207001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045952, 31.404261, 43.693127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850754, 31.055902, 43.669777>,  <40.733635, 30.846888, 43.655766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850754, 31.055902, 43.669777>,  <41.045952, 31.404261, 43.693127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850754, 31.055902, 43.669777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227490, -0.062330, -0.971783,
		0.842682, -0.487501, 0.228537,
		-0.487990, -0.870895, -0.058377,
		40.704357, 30.794634, 43.652264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463501, 30.879641, 43.351204>,  <41.045952, 31.404261, 43.693127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463501, 30.879641, 43.351204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095688, 30.739899, 43.279182>,  <40.875000, 30.656054, 43.235970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095688, 30.739899, 43.279182>,  <41.463501, 30.879641, 43.351204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095688, 30.739899, 43.279182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176269, 0.042871, -0.983408,
		0.351278, -0.936009, 0.022159,
		-0.919529, -0.349356, -0.180049,
		40.819828, 30.635092, 43.225166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526173, 30.374392, 42.886776>,  <41.463501, 30.879641, 43.351204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526173, 30.374392, 42.886776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142765, 30.474089, 42.831459>,  <40.912720, 30.533907, 42.798267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142765, 30.474089, 42.831459>,  <41.526173, 30.374392, 42.886776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142765, 30.474089, 42.831459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129287, -0.052242, -0.990230,
		-0.254035, -0.967031, 0.017850,
		-0.958515, 0.249245, -0.138296,
		40.855209, 30.548862, 42.789970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549740, 30.148817, 42.228806>,  <41.526173, 30.374392, 42.886776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549740, 30.148817, 42.228806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211227, 30.360516, 42.253151>,  <41.008118, 30.487534, 42.267757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211227, 30.360516, 42.253151>,  <41.549740, 30.148817, 42.228806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211227, 30.360516, 42.253151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062595, 0.014678, -0.997931,
		-0.529043, -0.848342, 0.020706,
		-0.846283, 0.529245, 0.060867,
		40.957344, 30.519289, 42.271412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100395, 29.929750, 41.706390>,  <41.549740, 30.148817, 42.228806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100395, 29.929750, 41.706390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957668, 30.298157, 41.768887>,  <40.872032, 30.519201, 41.806385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957668, 30.298157, 41.768887>,  <41.100395, 29.929750, 41.706390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957668, 30.298157, 41.768887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136749, 0.113950, -0.984030,
		-0.924112, -0.372482, 0.085289,
		-0.356815, 0.921017, 0.156239,
		40.850624, 30.574461, 41.815758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615482, 30.081062, 41.156376>,  <41.100395, 29.929750, 41.706390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615482, 30.081062, 41.156376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683208, 30.450663, 41.293518>,  <40.723843, 30.672422, 41.375805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683208, 30.450663, 41.293518>,  <40.615482, 30.081062, 41.156376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683208, 30.450663, 41.293518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097870, 0.361923, -0.927056,
		-0.980690, 0.123410, 0.151712,
		0.169316, 0.924003, 0.342857,
		40.734005, 30.727863, 41.396374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024872, 30.516289, 40.897793>,  <40.615482, 30.081062, 41.156376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024872, 30.516289, 40.897793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344299, 30.746565, 40.968079>,  <40.535954, 30.884729, 41.010250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344299, 30.746565, 40.968079>,  <40.024872, 30.516289, 40.897793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344299, 30.746565, 40.968079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105272, 0.421014, -0.900924,
		-0.592631, 0.700949, 0.396811,
		0.798565, 0.575689, 0.175716,
		40.583870, 30.919271, 41.020794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860870, 31.218531, 40.687950>,  <40.024872, 30.516289, 40.897793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860870, 31.218531, 40.687950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259308, 31.252705, 40.679024>,  <40.498371, 31.273209, 40.673668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259308, 31.252705, 40.679024>,  <39.860870, 31.218531, 40.687950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259308, 31.252705, 40.679024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066720, 0.562695, -0.823968,
		-0.057841, 0.822238, 0.566197,
		0.996094, 0.085435, -0.022313,
		40.558136, 31.278336, 40.672329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084122, 31.936825, 40.573383>,  <39.860870, 31.218531, 40.687950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084122, 31.936825, 40.573383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395081, 31.712315, 40.459812>,  <40.581657, 31.577608, 40.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395081, 31.712315, 40.459812>,  <40.084122, 31.936825, 40.573383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395081, 31.712315, 40.459812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088126, 0.544128, -0.834361,
		0.622800, 0.623613, 0.472469,
		0.777402, -0.561277, -0.283927,
		40.628300, 31.543932, 40.374634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637505, 32.343529, 40.412315>,  <40.084122, 31.936825, 40.573383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637505, 32.343529, 40.412315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734104, 31.999796, 40.231995>,  <40.792065, 31.793556, 40.123802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734104, 31.999796, 40.231995>,  <40.637505, 32.343529, 40.412315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734104, 31.999796, 40.231995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132752, 0.489444, -0.861871,
		0.961278, 0.148294, 0.232277,
		0.241497, -0.859333, -0.450806,
		40.806553, 31.741997, 40.096752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272106, 32.484062, 40.146568>,  <40.637505, 32.343529, 40.412315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272106, 32.484062, 40.146568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111984, 32.178787, 39.943665>,  <41.015911, 31.995623, 39.821922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111984, 32.178787, 39.943665>,  <41.272106, 32.484062, 40.146568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111984, 32.178787, 39.943665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229857, 0.452226, -0.861776,
		0.887088, -0.461566, -0.005603,
		-0.400300, -0.763183, -0.507259,
		40.991894, 31.949833, 39.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783520, 32.274025, 39.522713>,  <41.272106, 32.484062, 40.146568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783520, 32.274025, 39.522713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411263, 32.150776, 39.443748>,  <41.187908, 32.076828, 39.396370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411263, 32.150776, 39.443748>,  <41.783520, 32.274025, 39.522713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411263, 32.150776, 39.443748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088983, 0.332722, -0.938818,
		0.354957, -0.891266, -0.282225,
		-0.930638, -0.308127, -0.197409,
		41.132069, 32.058342, 39.384525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734337, 31.899569, 38.786728>,  <41.783520, 32.274025, 39.522713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734337, 31.899569, 38.786728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358051, 31.997995, 38.880116>,  <41.132278, 32.057053, 38.936146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358051, 31.997995, 38.880116>,  <41.734337, 31.899569, 38.786728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358051, 31.997995, 38.880116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082987, 0.500409, -0.861803,
		-0.328889, -0.830086, -0.450322,
		-0.940715, 0.246066, 0.233465,
		41.075836, 32.071815, 38.950153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427944, 31.862736, 38.187775>,  <41.734337, 31.899569, 38.786728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427944, 31.862736, 38.187775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156181, 32.076447, 38.388954>,  <40.993122, 32.204674, 38.509663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156181, 32.076447, 38.388954>,  <41.427944, 31.862736, 38.187775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156181, 32.076447, 38.388954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111215, 0.602533, -0.790307,
		-0.725285, -0.592874, -0.349946,
		-0.679406, 0.534279, 0.502945,
		40.952358, 32.236729, 38.539837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848499, 31.832502, 37.744942>,  <41.427944, 31.862736, 38.187775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848499, 31.832502, 37.744942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809162, 32.148647, 37.986820>,  <40.785561, 32.338333, 38.131947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809162, 32.148647, 37.986820>,  <40.848499, 31.832502, 37.744942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809162, 32.148647, 37.986820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217551, 0.575867, -0.788067,
		-0.971082, -0.209052, 0.115312,
		-0.098343, 0.790363, 0.604693,
		40.779659, 32.385757, 38.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214500, 32.124134, 37.486847>,  <40.848499, 31.832502, 37.744942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214500, 32.124134, 37.486847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409027, 32.398941, 37.702812>,  <40.525745, 32.563824, 37.832390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409027, 32.398941, 37.702812>,  <40.214500, 32.124134, 37.486847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409027, 32.398941, 37.702812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153710, 0.675528, -0.721134,
		-0.860154, 0.267714, 0.434125,
		0.486321, 0.687016, 0.539908,
		40.554924, 32.605045, 37.864784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839329, 32.687206, 37.383789>,  <40.214500, 32.124134, 37.486847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839329, 32.687206, 37.383789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201836, 32.815575, 37.493839>,  <40.419338, 32.892597, 37.559868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201836, 32.815575, 37.493839>,  <39.839329, 32.687206, 37.383789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201836, 32.815575, 37.493839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020015, 0.682703, -0.730422,
		-0.422238, 0.656448, 0.625132,
		0.906264, 0.320924, 0.275125,
		40.473713, 32.911850, 37.576378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916931, 33.457527, 37.388180>,  <39.839329, 32.687206, 37.383789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916931, 33.457527, 37.388180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298557, 33.344406, 37.348614>,  <40.527534, 33.276535, 37.324875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298557, 33.344406, 37.348614>,  <39.916931, 33.457527, 37.388180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298557, 33.344406, 37.348614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103899, 0.621965, -0.776121,
		0.281007, 0.730194, 0.622778,
		0.954065, -0.282801, -0.098911,
		40.584778, 33.259567, 37.318939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317127, 34.047081, 37.351452>,  <39.916931, 33.457527, 37.388180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317127, 34.047081, 37.351452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533550, 33.765202, 37.167862>,  <40.663403, 33.596073, 37.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533550, 33.765202, 37.167862>,  <40.317127, 34.047081, 37.351452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533550, 33.765202, 37.167862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249317, 0.655633, -0.712731,
		0.803181, 0.271196, 0.530427,
		0.541056, -0.704697, -0.458978,
		40.695866, 33.553791, 37.030167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750492, 34.448723, 36.914200>,  <40.317127, 34.047081, 37.351452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750492, 34.448723, 36.914200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875755, 34.091148, 36.785946>,  <40.950912, 33.876602, 36.708992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875755, 34.091148, 36.785946>,  <40.750492, 34.448723, 36.914200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875755, 34.091148, 36.785946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186685, 0.388976, -0.902134,
		0.931172, 0.222651, 0.288696,
		0.313157, -0.893937, -0.320638,
		40.969704, 33.822968, 36.689754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404633, 34.532032, 36.626587>,  <40.750492, 34.448723, 36.914200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404633, 34.532032, 36.626587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207966, 34.228020, 36.456589>,  <41.089966, 34.045612, 36.354591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207966, 34.228020, 36.456589>,  <41.404633, 34.532032, 36.626587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207966, 34.228020, 36.456589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291107, 0.316514, -0.902815,
		0.820680, -0.567606, 0.065629,
		-0.491671, -0.760028, -0.424991,
		41.060463, 34.000011, 36.329090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975307, 34.241653, 36.295124>,  <41.404633, 34.532032, 36.626587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975307, 34.241653, 36.295124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646233, 34.102673, 36.115139>,  <41.448788, 34.019283, 36.007149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646233, 34.102673, 36.115139>,  <41.975307, 34.241653, 36.295124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646233, 34.102673, 36.115139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334916, 0.343348, -0.877464,
		0.459372, -0.872576, -0.166099,
		-0.822684, -0.347453, -0.449965,
		41.399426, 33.998436, 35.980148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212662, 34.080311, 35.769238>,  <41.975307, 34.241653, 36.295124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212662, 34.080311, 35.769238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826523, 34.086655, 35.665051>,  <41.594837, 34.090462, 35.602539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826523, 34.086655, 35.665051>,  <42.212662, 34.080311, 35.769238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826523, 34.086655, 35.665051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232039, 0.508834, -0.829003,
		0.119391, -0.860718, -0.494883,
		-0.965352, 0.015857, -0.260470,
		41.536919, 34.091412, 35.586910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053268, 33.841492, 35.102547>,  <42.212662, 34.080311, 35.769238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053268, 33.841492, 35.102547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795959, 34.120537, 35.228745>,  <41.641575, 34.287964, 35.304462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795959, 34.120537, 35.228745>,  <42.053268, 33.841492, 35.102547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795959, 34.120537, 35.228745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311267, 0.614764, -0.724692,
		-0.699510, -0.367971, -0.612604,
		-0.643272, 0.697612, 0.315496,
		41.602978, 34.329819, 35.323395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639782, 34.156940, 34.468571>,  <42.053268, 33.841492, 35.102547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639782, 34.156940, 34.468571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643864, 34.422398, 34.767761>,  <41.646313, 34.581673, 34.947277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643864, 34.422398, 34.767761>,  <41.639782, 34.156940, 34.468571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643864, 34.422398, 34.767761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282141, 0.715712, -0.638868,
		-0.959319, 0.217553, -0.179940,
		0.010202, 0.663647, 0.747977,
		41.646923, 34.621490, 34.992153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437519, 34.847488, 34.149548>,  <41.639782, 34.156940, 34.468571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437519, 34.847488, 34.149548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595955, 34.939445, 34.505135>,  <41.691017, 34.994617, 34.718487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595955, 34.939445, 34.505135>,  <41.437519, 34.847488, 34.149548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595955, 34.939445, 34.505135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321094, 0.872347, -0.368658,
		-0.860241, 0.431463, 0.271708,
		0.396086, 0.229891, 0.888969,
		41.714779, 35.008411, 34.771824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122444, 35.483772, 34.423992>,  <41.437519, 34.847488, 34.149548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122444, 35.483772, 34.423992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490017, 35.432259, 34.573112>,  <41.710560, 35.401348, 34.662582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490017, 35.432259, 34.573112>,  <41.122444, 35.483772, 34.423992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490017, 35.432259, 34.573112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226056, 0.946515, -0.230235,
		-0.323208, 0.295843, 0.898896,
		0.918932, -0.128787, 0.372798,
		41.765697, 35.393623, 34.684952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238487, 35.891533, 34.959599>,  <41.122444, 35.483772, 34.423992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238487, 35.891533, 34.959599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595963, 35.814754, 34.797371>,  <41.810448, 35.768688, 34.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595963, 35.814754, 34.797371>,  <41.238487, 35.891533, 34.959599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595963, 35.814754, 34.797371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242659, 0.967049, 0.077025,
		0.377420, -0.167251, 0.910814,
		0.893684, -0.191946, -0.405568,
		41.864067, 35.757172, 34.675701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858631, 35.895870, 35.458462>,  <41.238487, 35.891533, 34.959599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858631, 35.895870, 35.458462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911255, 36.059505, 35.097275>,  <41.942829, 36.157684, 34.880562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911255, 36.059505, 35.097275>,  <41.858631, 35.895870, 35.458462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911255, 36.059505, 35.097275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066179, 0.912472, 0.403750,
		0.989097, 0.006642, 0.147113,
		0.131555, 0.409084, -0.902964,
		41.950722, 36.182232, 34.826385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534306, 36.221188, 35.325089>,  <41.858631, 35.895870, 35.458462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534306, 36.221188, 35.325089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238400, 36.400707, 35.124561>,  <42.060856, 36.508419, 35.004246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238400, 36.400707, 35.124561>,  <42.534306, 36.221188, 35.325089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238400, 36.400707, 35.124561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024951, 0.762841, 0.646104,
		0.672401, 0.465458, -0.575523,
		-0.739767, 0.448801, -0.501321,
		42.016468, 36.535347, 34.974163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970123, 35.686211, 34.998512>,  <42.534306, 36.221188, 35.325089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970123, 35.686211, 34.998512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590401, 35.567574, 34.956867>,  <42.362568, 35.496391, 34.931881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590401, 35.567574, 34.956867>,  <42.970123, 35.686211, 34.998512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590401, 35.567574, 34.956867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091996, 0.054571, -0.994263,
		0.300578, -0.953442, -0.024518,
		-0.949310, -0.296597, -0.104116,
		42.305607, 35.478596, 34.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521320, 35.181103, 35.221390>,  <42.970123, 35.686211, 34.998512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521320, 35.181103, 35.221390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842079, 35.140583, 35.456913>,  <44.034534, 35.116272, 35.598228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842079, 35.140583, 35.456913>,  <43.521320, 35.181103, 35.221390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842079, 35.140583, 35.456913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439193, 0.568198, 0.695888,
		-0.405055, -0.816633, 0.411146,
		0.801898, -0.101301, 0.588811,
		44.082649, 35.110191, 35.633556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261242, 34.999798, 35.807968>,  <43.521320, 35.181103, 35.221390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261242, 34.999798, 35.807968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621918, 35.153355, 35.887550>,  <43.838322, 35.245487, 35.935299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621918, 35.153355, 35.887550>,  <43.261242, 34.999798, 35.807968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621918, 35.153355, 35.887550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407504, 0.600679, 0.687841,
		0.144550, -0.701294, 0.698063,
		0.901690, 0.383891, 0.198952,
		43.892426, 35.268520, 35.947235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263107, 35.076107, 36.508202>,  <43.261242, 34.999798, 35.807968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263107, 35.076107, 36.508202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559647, 35.322487, 36.401611>,  <43.737572, 35.470314, 36.337658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559647, 35.322487, 36.401611>,  <43.263107, 35.076107, 36.508202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559647, 35.322487, 36.401611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273651, 0.639988, 0.718004,
		0.612792, -0.459373, 0.643011,
		0.741350, 0.615948, -0.266472,
		43.782051, 35.507271, 36.321671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647602, 35.043941, 37.064407>,  <43.263107, 35.076107, 36.508202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647602, 35.043941, 37.064407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748722, 35.385872, 36.883141>,  <43.809395, 35.591030, 36.774380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748722, 35.385872, 36.883141>,  <43.647602, 35.043941, 37.064407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748722, 35.385872, 36.883141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333251, 0.516655, 0.788677,
		0.908315, -0.048357, 0.415482,
		0.252799, 0.854827, -0.453171,
		43.824562, 35.642319, 36.747189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097290, 35.403030, 37.559902>,  <43.647602, 35.043941, 37.064407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097290, 35.403030, 37.559902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950470, 35.676498, 37.307594>,  <43.862377, 35.840580, 37.156208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950470, 35.676498, 37.307594>,  <44.097290, 35.403030, 37.559902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950470, 35.676498, 37.307594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232622, 0.589093, 0.773858,
		0.900645, 0.430775, -0.057191,
		-0.367049, 0.683668, -0.630772,
		43.840355, 35.881599, 37.118362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266045, 36.114429, 37.701305>,  <44.097290, 35.403030, 37.559902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266045, 36.114429, 37.701305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935684, 36.163239, 37.481125>,  <43.737469, 36.192524, 37.349014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.935684, 36.163239, 37.481125>,  <44.266045, 36.114429, 37.701305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935684, 36.163239, 37.481125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383949, 0.593223, 0.707581,
		0.412884, 0.795736, -0.443091,
		-0.825899, 0.122025, -0.550454,
		43.687916, 36.199844, 37.315990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186329, 36.704212, 37.910954>,  <44.266045, 36.114429, 37.701305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186329, 36.704212, 37.910954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851566, 36.609127, 37.713737>,  <43.650711, 36.552078, 37.595409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851566, 36.609127, 37.713737>,  <44.186329, 36.704212, 37.910954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851566, 36.609127, 37.713737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462626, 0.788607, 0.405064,
		0.292528, 0.567092, -0.769957,
		-0.836902, -0.237710, -0.493041,
		43.600494, 36.537815, 37.565826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818966, 37.362289, 37.680195>,  <44.186329, 36.704212, 37.910954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818966, 37.362289, 37.680195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552078, 37.064381, 37.684673>,  <43.391945, 36.885635, 37.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552078, 37.064381, 37.684673>,  <43.818966, 37.362289, 37.680195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552078, 37.064381, 37.684673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688351, 0.622273, 0.372760,
		-0.284587, 0.241009, -0.927861,
		-0.667221, -0.744776, 0.011192,
		43.351913, 36.840946, 37.688030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127659, 37.704945, 37.573185>,  <43.818966, 37.362289, 37.680195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127659, 37.704945, 37.573185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049503, 37.346977, 37.733662>,  <43.002609, 37.132198, 37.829948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049503, 37.346977, 37.733662>,  <43.127659, 37.704945, 37.573185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049503, 37.346977, 37.733662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726469, 0.406879, 0.553798,
		-0.658837, -0.183245, -0.729627,
		-0.195389, -0.894914, 0.401188,
		42.990887, 37.078503, 37.854019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427727, 37.566029, 37.745632>,  <43.127659, 37.704945, 37.573185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427727, 37.566029, 37.745632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523540, 37.260582, 37.985470>,  <42.581028, 37.077312, 38.129372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523540, 37.260582, 37.985470>,  <42.427727, 37.566029, 37.745632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523540, 37.260582, 37.985470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626558, 0.350177, 0.696277,
		-0.741652, -0.542463, -0.394570,
		0.239535, -0.763616, 0.599594,
		42.595402, 37.031498, 38.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869957, 37.230469, 37.932949>,  <42.427727, 37.566029, 37.745632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869957, 37.230469, 37.932949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145844, 37.169567, 38.216106>,  <42.311375, 37.133026, 38.386002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145844, 37.169567, 38.216106>,  <41.869957, 37.230469, 37.932949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145844, 37.169567, 38.216106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634200, 0.344723, 0.692067,
		-0.349398, -0.926274, 0.141199,
		0.689718, -0.152258, 0.707889,
		42.352760, 37.123890, 38.428474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449272, 37.046581, 38.447811>,  <41.869957, 37.230469, 37.932949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449272, 37.046581, 38.447811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794838, 37.162846, 38.612335>,  <42.002178, 37.232605, 38.711048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794838, 37.162846, 38.612335>,  <41.449272, 37.046581, 38.447811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794838, 37.162846, 38.612335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486352, 0.269309, 0.831225,
		0.130835, -0.918145, 0.374022,
		0.863912, 0.290659, 0.411307,
		42.054012, 37.250042, 38.735725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309040, 37.054955, 39.136650>,  <41.449272, 37.046581, 38.447811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309040, 37.054955, 39.136650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640556, 37.275612, 39.099136>,  <41.839466, 37.408005, 39.076630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640556, 37.275612, 39.099136>,  <41.309040, 37.054955, 39.136650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640556, 37.275612, 39.099136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314988, 0.598474, 0.736621,
		0.462480, -0.580964, 0.669771,
		0.828791, 0.551643, -0.093785,
		41.889194, 37.441105, 39.070999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399364, 37.166275, 39.795185>,  <41.309040, 37.054955, 39.136650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399364, 37.166275, 39.795185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628647, 37.429806, 39.600296>,  <41.766216, 37.587925, 39.483364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628647, 37.429806, 39.600296>,  <41.399364, 37.166275, 39.795185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628647, 37.429806, 39.600296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240485, 0.703669, 0.668593,
		0.783330, -0.266070, 0.561784,
		0.573203, 0.658829, -0.487219,
		41.800610, 37.627453, 39.454132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831650, 37.544975, 40.270832>,  <41.399364, 37.166275, 39.795185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831650, 37.544975, 40.270832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852642, 37.797523, 39.961349>,  <41.865238, 37.949051, 39.775661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852642, 37.797523, 39.961349>,  <41.831650, 37.544975, 40.270832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852642, 37.797523, 39.961349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428139, 0.714183, 0.553751,
		0.902188, 0.302190, 0.307796,
		0.052484, 0.631366, -0.773706,
		41.868389, 37.986935, 39.729237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170033, 38.006516, 40.519569>,  <41.831650, 37.544975, 40.270832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170033, 38.006516, 40.519569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994926, 38.188828, 40.209568>,  <41.889862, 38.298214, 40.023567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994926, 38.188828, 40.209568>,  <42.170033, 38.006516, 40.519569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994926, 38.188828, 40.209568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333485, 0.718182, 0.610739,
		0.834953, 0.525813, -0.162401,
		-0.437768, 0.455781, -0.774999,
		41.863598, 38.325562, 39.977070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500065, 38.683220, 40.429501>,  <42.170033, 38.006516, 40.519569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500065, 38.683220, 40.429501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133671, 38.654907, 40.271530>,  <41.913834, 38.637920, 40.176746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133671, 38.654907, 40.271530>,  <42.500065, 38.683220, 40.429501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133671, 38.654907, 40.271530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341056, 0.655807, 0.673497,
		0.211328, 0.751603, -0.624847,
		-0.915981, -0.070779, -0.394929,
		41.858875, 38.633675, 40.153049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376854, 39.424149, 40.385502>,  <42.500065, 38.683220, 40.429501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376854, 39.424149, 40.385502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023605, 39.244133, 40.332489>,  <41.811657, 39.136124, 40.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023605, 39.244133, 40.332489>,  <42.376854, 39.424149, 40.385502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023605, 39.244133, 40.332489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420508, 0.634069, 0.648945,
		-0.208012, 0.628829, -0.749203,
		-0.883122, -0.450034, -0.132533,
		41.758667, 39.109123, 40.292728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953999, 39.910671, 40.279583>,  <42.376854, 39.424149, 40.385502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953999, 39.910671, 40.279583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683685, 39.628265, 40.364304>,  <41.521496, 39.458824, 40.415134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683685, 39.628265, 40.364304>,  <41.953999, 39.910671, 40.279583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683685, 39.628265, 40.364304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490035, 0.644976, 0.586406,
		-0.550616, 0.292496, -0.781837,
		-0.675787, -0.706011, 0.211801,
		41.480949, 39.416462, 40.427845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147503, 40.067436, 40.029991>,  <41.953999, 39.910671, 40.279583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147503, 40.067436, 40.029991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199123, 39.831558, 40.348892>,  <41.230095, 39.690033, 40.540234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199123, 39.831558, 40.348892>,  <41.147503, 40.067436, 40.029991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199123, 39.831558, 40.348892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335885, 0.730455, 0.594657,
		-0.933020, -0.344526, -0.103802,
		0.129052, -0.589692, 0.797250,
		41.237839, 39.654652, 40.588066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462940, 39.792309, 40.356155>,  <41.147503, 40.067436, 40.029991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462940, 39.792309, 40.356155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759953, 39.806393, 40.623711>,  <40.938160, 39.814842, 40.784245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759953, 39.806393, 40.623711>,  <40.462940, 39.792309, 40.356155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759953, 39.806393, 40.623711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566003, 0.566980, 0.598476,
		-0.358174, -0.822979, 0.440928,
		0.742531, 0.035208, 0.668886,
		40.982712, 39.816956, 40.824375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289635, 39.589226, 41.122246>,  <40.462940, 39.792309, 40.356155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289635, 39.589226, 41.122246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587337, 39.855000, 41.095085>,  <40.765961, 40.014462, 41.078789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587337, 39.855000, 41.095085>,  <40.289635, 39.589226, 41.122246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587337, 39.855000, 41.095085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484846, 0.607404, 0.629274,
		0.459351, -0.435423, 0.774212,
		0.744259, 0.664431, -0.067899,
		40.810616, 40.054329, 41.074715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546970, 39.793842, 41.831852>,  <40.289635, 39.589226, 41.122246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546970, 39.793842, 41.831852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612278, 40.075569, 41.555511>,  <40.651463, 40.244606, 41.389706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612278, 40.075569, 41.555511>,  <40.546970, 39.793842, 41.831852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612278, 40.075569, 41.555511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479323, 0.668679, 0.568434,
		0.862318, 0.238333, 0.446772,
		0.163271, 0.704319, -0.690852,
		40.661259, 40.286865, 41.348255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947598, 40.454861, 42.107517>,  <40.546970, 39.793842, 41.831852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947598, 40.454861, 42.107517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683651, 40.531769, 41.816971>,  <40.525284, 40.577915, 41.642643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683651, 40.531769, 41.816971>,  <40.947598, 40.454861, 42.107517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683651, 40.531769, 41.816971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550619, 0.534042, 0.641574,
		0.511265, 0.823305, -0.246530,
		-0.659869, 0.192271, -0.726364,
		40.485691, 40.589451, 41.599060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542179, 40.311447, 42.335423>,  <40.947598, 40.454861, 42.107517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542179, 40.311447, 42.335423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516514, 40.213585, 42.722416>,  <41.501114, 40.154869, 42.954613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516514, 40.213585, 42.722416>,  <41.542179, 40.311447, 42.335423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516514, 40.213585, 42.722416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957894, -0.286979, -0.009044,
		0.279861, 0.926168, 0.252765,
		-0.064162, -0.244654, 0.967485,
		41.497265, 40.140190, 43.012661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958012, 40.852112, 42.810406>,  <41.542179, 40.311447, 42.335423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958012, 40.852112, 42.810406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921478, 40.465755, 42.907326>,  <41.899559, 40.233940, 42.965477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921478, 40.465755, 42.907326>,  <41.958012, 40.852112, 42.810406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921478, 40.465755, 42.907326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995200, -0.097119, -0.012010,
		0.035132, 0.240040, 0.970127,
		-0.091335, -0.965893, 0.242300,
		41.894077, 40.175987, 42.980015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455284, 40.739880, 43.297653>,  <41.958012, 40.852112, 42.810406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455284, 40.739880, 43.297653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369606, 40.379635, 43.146385>,  <42.318199, 40.163486, 43.055626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369606, 40.379635, 43.146385>,  <42.455284, 40.739880, 43.297653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369606, 40.379635, 43.146385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976513, -0.206660, -0.060934,
		-0.023274, -0.382337, 0.923730,
		-0.214195, -0.900617, -0.378167,
		42.305347, 40.109451, 43.032936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991127, 40.378029, 43.597488>,  <42.455284, 40.739880, 43.297653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991127, 40.378029, 43.597488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017830, 40.305443, 43.205036>,  <43.033852, 40.261890, 42.969566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017830, 40.305443, 43.205036>,  <42.991127, 40.378029, 43.597488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017830, 40.305443, 43.205036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737641, 0.671132, -0.073941,
		0.671885, -0.718784, 0.178662,
		0.066758, -0.181468, -0.981128,
		43.037857, 40.251003, 42.910698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701286, 40.670120, 43.251572>,  <42.991127, 40.378029, 43.597488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701286, 40.670120, 43.251572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761154, 40.326134, 43.446739>,  <43.797073, 40.119743, 43.563839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761154, 40.326134, 43.446739>,  <43.701286, 40.670120, 43.251572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761154, 40.326134, 43.446739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365307, -0.410461, -0.835508,
		0.918777, 0.303287, 0.252719,
		0.149667, -0.859965, 0.487915,
		43.806053, 40.068146, 43.593113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104084, 40.338608, 42.836060>,  <43.701286, 40.670120, 43.251572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104084, 40.338608, 42.836060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986626, 40.029911, 43.061695>,  <43.916149, 39.844692, 43.197075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986626, 40.029911, 43.061695>,  <44.104084, 40.338608, 42.836060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986626, 40.029911, 43.061695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396997, -0.635260, -0.662449,
		0.869577, 0.029414, 0.492920,
		-0.293647, -0.771738, 0.564085,
		43.898533, 39.798389, 43.230919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628742, 39.854073, 42.906689>,  <44.104084, 40.338608, 42.836060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628742, 39.854073, 42.906689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282486, 39.661270, 42.960857>,  <44.074734, 39.545589, 42.993359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282486, 39.661270, 42.960857>,  <44.628742, 39.854073, 42.906689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282486, 39.661270, 42.960857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372411, -0.800671, -0.469292,
		0.334629, -0.355806, 0.872597,
		-0.865640, -0.482004, 0.135422,
		44.022793, 39.516670, 43.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648235, 39.148148, 43.118595>,  <44.628742, 39.854073, 42.906689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648235, 39.148148, 43.118595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308006, 39.157780, 42.908474>,  <44.103867, 39.163559, 42.782402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308006, 39.157780, 42.908474>,  <44.648235, 39.148148, 43.118595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308006, 39.157780, 42.908474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359160, -0.703047, -0.613782,
		-0.384089, -0.710735, 0.589348,
		-0.850576, 0.024077, -0.525301,
		44.052834, 39.165005, 42.750885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366261, 38.430176, 43.121601>,  <44.648235, 39.148148, 43.118595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366261, 38.430176, 43.121601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204060, 38.619999, 42.809097>,  <44.106739, 38.733894, 42.621597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204060, 38.619999, 42.809097>,  <44.366261, 38.430176, 43.121601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204060, 38.619999, 42.809097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188175, -0.793036, -0.579383,
		-0.894516, -0.381955, 0.232278,
		-0.405502, 0.474558, -0.781257,
		44.082409, 38.762367, 42.574718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964363, 37.901768, 42.726486>,  <44.366261, 38.430176, 43.121601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964363, 37.901768, 42.726486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017426, 38.185474, 42.449547>,  <44.049263, 38.355698, 42.283382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017426, 38.185474, 42.449547>,  <43.964363, 37.901768, 42.726486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017426, 38.185474, 42.449547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162292, -0.704637, -0.690759,
		-0.977785, -0.020728, -0.208584,
		0.132658, 0.709265, -0.692347,
		44.057224, 38.398254, 42.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509167, 37.683517, 42.201012>,  <43.964363, 37.901768, 42.726486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509167, 37.683517, 42.201012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813751, 37.911102, 42.076778>,  <43.996502, 38.047653, 42.002239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.813751, 37.911102, 42.076778>,  <43.509167, 37.683517, 42.201012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813751, 37.911102, 42.076778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252638, -0.701741, -0.666133,
		-0.596949, 0.428772, -0.678091,
		0.761463, 0.568959, -0.310579,
		44.042191, 38.081791, 41.983604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563248, 37.495872, 41.598400>,  <43.509167, 37.683517, 42.201012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563248, 37.495872, 41.598400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914703, 37.686745, 41.591503>,  <44.125576, 37.801270, 41.587364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914703, 37.686745, 41.591503>,  <43.563248, 37.495872, 41.598400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914703, 37.686745, 41.591503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295801, -0.572293, -0.764841,
		-0.374832, 0.666918, -0.643988,
		0.878637, 0.477180, -0.017239,
		44.178295, 37.829899, 41.586330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754005, 37.688801, 40.908924>,  <43.563248, 37.495872, 41.598400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754005, 37.688801, 40.908924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106510, 37.659683, 41.095722>,  <44.318012, 37.642212, 41.207802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106510, 37.659683, 41.095722>,  <43.754005, 37.688801, 40.908924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106510, 37.659683, 41.095722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345983, -0.573776, -0.742345,
		0.321991, 0.815770, -0.480458,
		0.881259, -0.072798, 0.466994,
		44.370888, 37.637844, 41.235821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214439, 37.899048, 40.324638>,  <43.754005, 37.688801, 40.908924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214439, 37.899048, 40.324638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438984, 37.719936, 40.603024>,  <44.573711, 37.612469, 40.770054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438984, 37.719936, 40.603024>,  <44.214439, 37.899048, 40.324638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438984, 37.719936, 40.603024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533895, -0.446609, -0.717981,
		0.632322, 0.774618, -0.011640,
		0.561360, -0.447781, 0.695965,
		44.607391, 37.585602, 40.811813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895863, 37.988182, 40.135918>,  <44.214439, 37.899048, 40.324638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895863, 37.988182, 40.135918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932320, 37.680759, 40.389221>,  <44.954193, 37.496307, 40.541203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932320, 37.680759, 40.389221>,  <44.895863, 37.988182, 40.135918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932320, 37.680759, 40.389221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482987, -0.521991, -0.703028,
		0.870871, 0.369934, 0.323625,
		0.091145, -0.768553, 0.633260,
		44.959663, 37.450195, 40.579201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630150, 37.790146, 40.137260>,  <44.895863, 37.988182, 40.135918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630150, 37.790146, 40.137260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462524, 37.472389, 40.313137>,  <45.361950, 37.281734, 40.418663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462524, 37.472389, 40.313137>,  <45.630150, 37.790146, 40.137260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462524, 37.472389, 40.313137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552519, -0.607395, -0.570783,
		0.720490, 0.003740, 0.693455,
		-0.419067, -0.794391, 0.439689,
		45.336803, 37.234074, 40.445045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085449, 37.410637, 40.570435>,  <45.630150, 37.790146, 40.137260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085449, 37.410637, 40.570435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800724, 37.167881, 40.429012>,  <45.629890, 37.022228, 40.344158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800724, 37.167881, 40.429012>,  <46.085449, 37.410637, 40.570435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800724, 37.167881, 40.429012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679071, -0.466082, -0.567125,
		0.179398, -0.643777, 0.743887,
		-0.711814, -0.606893, -0.353556,
		45.587181, 36.985813, 40.322945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454826, 36.754200, 40.402027>,  <46.085449, 37.410637, 40.570435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454826, 36.754200, 40.402027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107094, 36.698376, 40.212383>,  <45.898453, 36.664883, 40.098598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107094, 36.698376, 40.212383>,  <46.454826, 36.754200, 40.402027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107094, 36.698376, 40.212383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465457, -0.553695, -0.690486,
		-0.166147, -0.820941, 0.546306,
		-0.869336, -0.139560, -0.474108,
		45.846294, 36.656509, 40.070152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469284, 36.052296, 40.164856>,  <46.454826, 36.754200, 40.402027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469284, 36.052296, 40.164856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195549, 36.235695, 39.938065>,  <46.031307, 36.345734, 39.801991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195549, 36.235695, 39.938065>,  <46.469284, 36.052296, 40.164856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195549, 36.235695, 39.938065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287567, -0.544838, -0.787690,
		-0.670064, -0.702090, 0.241005,
		-0.684339, 0.458498, -0.566975,
		45.990246, 36.373245, 39.767971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167282, 35.573383, 39.737095>,  <46.469284, 36.052296, 40.164856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167282, 35.573383, 39.737095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101414, 35.910137, 39.531525>,  <46.061893, 36.112190, 39.408180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101414, 35.910137, 39.531525>,  <46.167282, 35.573383, 39.737095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101414, 35.910137, 39.531525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129608, -0.498055, -0.857405,
		-0.977797, -0.207795, -0.027101,
		-0.164666, 0.841881, -0.513928,
		46.052013, 36.162701, 39.377346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819984, 35.297329, 39.225876>,  <46.167282, 35.573383, 39.737095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819984, 35.297329, 39.225876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921814, 35.672928, 39.133377>,  <45.982910, 35.898289, 39.077877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921814, 35.672928, 39.133377>,  <45.819984, 35.297329, 39.225876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921814, 35.672928, 39.133377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219686, -0.289031, -0.931772,
		-0.941769, 0.186404, -0.279864,
		0.254575, 0.938997, -0.231250,
		45.998188, 35.954628, 39.064003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409328, 35.482800, 38.680393>,  <45.819984, 35.297329, 39.225876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409328, 35.482800, 38.680393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736931, 35.709938, 38.647457>,  <45.933491, 35.846222, 38.627697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736931, 35.709938, 38.647457>,  <45.409328, 35.482800, 38.680393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736931, 35.709938, 38.647457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106875, -0.291958, -0.950441,
		-0.563744, 0.769617, -0.299804,
		0.819006, 0.567846, -0.082337,
		45.982632, 35.880291, 38.622757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416721, 35.812092, 37.889149>,  <45.409328, 35.482800, 38.680393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416721, 35.812092, 37.889149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782932, 35.878666, 38.035637>,  <46.002659, 35.918610, 38.123528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782932, 35.878666, 38.035637>,  <45.416721, 35.812092, 37.889149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782932, 35.878666, 38.035637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396246, -0.216255, -0.892313,
		-0.069312, 0.962047, -0.263935,
		0.915524, 0.166431, 0.366218,
		46.057590, 35.928596, 38.145504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678806, 36.252102, 37.353653>,  <45.416721, 35.812092, 37.889149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678806, 36.252102, 37.353653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977840, 36.083118, 37.558651>,  <46.157261, 35.981728, 37.681648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977840, 36.083118, 37.558651>,  <45.678806, 36.252102, 37.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977840, 36.083118, 37.558651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498457, -0.153073, -0.853293,
		0.438931, 0.893362, 0.096143,
		0.747583, -0.422460, 0.512491,
		46.202114, 35.956379, 37.712399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239452, 36.567780, 37.129307>,  <45.678806, 36.252102, 37.353653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239452, 36.567780, 37.129307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355194, 36.208763, 37.262386>,  <46.424637, 35.993351, 37.342236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355194, 36.208763, 37.262386>,  <46.239452, 36.567780, 37.129307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355194, 36.208763, 37.262386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539223, -0.134341, -0.831379,
		0.790895, 0.419961, 0.445104,
		0.289351, -0.897544, 0.332702,
		46.442001, 35.939499, 37.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903194, 36.505718, 36.884876>,  <46.239452, 36.567780, 37.129307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903194, 36.505718, 36.884876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806961, 36.128857, 36.978230>,  <46.749222, 35.902740, 37.034241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806961, 36.128857, 36.978230>,  <46.903194, 36.505718, 36.884876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806961, 36.128857, 36.978230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571367, -0.331833, -0.750617,
		0.784641, -0.047238, 0.618148,
		-0.240580, -0.942155, 0.233380,
		46.734787, 35.846210, 37.048244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478947, 36.177746, 36.838188>,  <46.903194, 36.505718, 36.884876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478947, 36.177746, 36.838188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183418, 35.913372, 36.785580>,  <47.006100, 35.754745, 36.754013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183418, 35.913372, 36.785580>,  <47.478947, 36.177746, 36.838188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183418, 35.913372, 36.785580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446175, -0.333492, -0.830488,
		0.505040, -0.672267, 0.541287,
		-0.738825, -0.660939, -0.131521,
		46.961769, 35.715092, 36.746124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690418, 35.515579, 36.912807>,  <47.478947, 36.177746, 36.838188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690418, 35.515579, 36.912807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380535, 35.537617, 36.660843>,  <47.194603, 35.550838, 36.509663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380535, 35.537617, 36.660843>,  <47.690418, 35.515579, 36.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380535, 35.537617, 36.660843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591559, -0.288720, -0.752794,
		-0.223344, -0.955827, 0.191081,
		-0.774710, 0.055096, -0.629912,
		47.148121, 35.554146, 36.471870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770065, 34.880142, 36.555763>,  <47.690418, 35.515579, 36.912807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770065, 34.880142, 36.555763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583515, 35.151291, 36.328438>,  <47.471584, 35.313980, 36.192043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583515, 35.151291, 36.328438>,  <47.770065, 34.880142, 36.555763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583515, 35.151291, 36.328438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561170, -0.269907, -0.782456,
		-0.683799, -0.683838, -0.254525,
		-0.466376, 0.677875, -0.568312,
		47.443604, 35.354652, 36.157944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295834, 34.594311, 35.952290>,  <47.770065, 34.880142, 36.555763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295834, 34.594311, 35.952290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.448879, 34.952427, 35.861023>,  <47.540707, 35.167297, 35.806263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.448879, 34.952427, 35.861023>,  <47.295834, 34.594311, 35.952290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.448879, 34.952427, 35.861023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492635, -0.406614, -0.769400,
		-0.781614, 0.181979, -0.596627,
		0.382611, 0.895293, -0.228165,
		47.563663, 35.221016, 35.792572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101303, 34.770874, 35.351368>,  <47.295834, 34.594311, 35.952290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101303, 34.770874, 35.351368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466934, 34.913242, 35.429115>,  <47.686314, 34.998665, 35.475761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.466934, 34.913242, 35.429115>,  <47.101303, 34.770874, 35.351368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.466934, 34.913242, 35.429115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369133, -0.531776, -0.762204,
		-0.167926, 0.768462, -0.617468,
		0.914080, 0.355922, 0.194365,
		47.741158, 35.020020, 35.487427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.369823, 34.983192, 34.720795>,  <47.101303, 34.770874, 35.351368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.369823, 34.983192, 34.720795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682522, 34.900009, 34.955956>,  <47.870140, 34.850098, 35.097054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682522, 34.900009, 34.955956>,  <47.369823, 34.983192, 34.720795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682522, 34.900009, 34.955956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473438, -0.415682, -0.776573,
		0.405875, 0.885417, -0.226501,
		0.781743, -0.207957, 0.587904,
		47.917046, 34.837624, 35.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.225372, 33.853657, 44.208351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891598, 33.633213, 44.208309>,  <35.691334, 33.500946, 44.208282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891598, 33.633213, 44.208309>,  <36.225372, 33.853657, 44.208351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891598, 33.633213, 44.208309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033632, 0.051119, -0.998126,
		0.550083, -0.832865, -0.061191,
		-0.834432, -0.551111, -0.000109,
		35.641270, 33.467880, 44.208275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293629, 33.613934, 43.609241>,  <36.225372, 33.853657, 44.208351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293629, 33.613934, 43.609241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927105, 33.483780, 43.702614>,  <35.707191, 33.405685, 43.758636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.927105, 33.483780, 43.702614>,  <36.293629, 33.613934, 43.609241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927105, 33.483780, 43.702614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245036, -0.005487, -0.969499,
		0.316744, -0.945565, -0.074704,
		-0.916314, -0.325388, 0.233435,
		35.652210, 33.386162, 43.772644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218052, 33.137119, 43.137901>,  <36.293629, 33.613934, 43.609241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218052, 33.137119, 43.137901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857491, 33.260181, 43.259762>,  <35.641151, 33.334019, 43.332878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857491, 33.260181, 43.259762>,  <36.218052, 33.137119, 43.137901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857491, 33.260181, 43.259762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311007, 0.029462, -0.949951,
		-0.301230, -0.951043, 0.069125,
		-0.901408, 0.307651, 0.304656,
		35.587067, 33.352478, 43.351158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699173, 32.822491, 42.635899>,  <36.218052, 33.137119, 43.137901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699173, 32.822491, 42.635899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524864, 33.150692, 42.783886>,  <35.420280, 33.347614, 42.872677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524864, 33.150692, 42.783886>,  <35.699173, 32.822491, 42.635899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524864, 33.150692, 42.783886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260880, 0.278256, -0.924400,
		-0.861420, -0.499344, 0.092797,
		-0.435773, 0.820505, 0.369964,
		35.394131, 33.396843, 42.894875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969589, 32.792358, 42.440979>,  <35.699173, 32.822491, 42.635899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969589, 32.792358, 42.440979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096916, 33.166965, 42.499771>,  <35.173313, 33.391731, 42.535046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096916, 33.166965, 42.499771>,  <34.969589, 32.792358, 42.440979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096916, 33.166965, 42.499771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307913, 0.248781, -0.918312,
		-0.896585, 0.247056, 0.367558,
		0.318316, 0.936521, 0.146982,
		35.192410, 33.447922, 42.543865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557034, 33.183281, 42.005035>,  <34.969589, 32.792358, 42.440979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557034, 33.183281, 42.005035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860371, 33.436485, 42.067268>,  <35.042374, 33.588409, 42.104610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.860371, 33.436485, 42.067268>,  <34.557034, 33.183281, 42.005035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860371, 33.436485, 42.067268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146950, 0.398555, -0.905295,
		-0.635072, 0.663664, 0.395264,
		0.758346, 0.633012, 0.155585,
		35.087875, 33.626389, 42.113945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321377, 33.778282, 41.700348>,  <34.557034, 33.183281, 42.005035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321377, 33.778282, 41.700348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717957, 33.819218, 41.732742>,  <34.955902, 33.843777, 41.752178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717957, 33.819218, 41.732742>,  <34.321377, 33.778282, 41.700348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717957, 33.819218, 41.732742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033708, 0.398724, -0.916451,
		-0.126078, 0.911343, 0.391865,
		0.991447, 0.102335, 0.080990,
		35.015392, 33.849918, 41.757038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491802, 34.404808, 41.584080>,  <34.321377, 33.778282, 41.700348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491802, 34.404808, 41.584080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846523, 34.231625, 41.519424>,  <35.059357, 34.127716, 41.480633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846523, 34.231625, 41.519424>,  <34.491802, 34.404808, 41.584080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846523, 34.231625, 41.519424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009957, 0.331772, -0.943307,
		0.462037, 0.838139, 0.289906,
		0.886805, -0.432956, -0.161636,
		35.112564, 34.101738, 41.470932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837337, 34.943642, 41.211090>,  <34.491802, 34.404808, 41.584080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837337, 34.943642, 41.211090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055946, 34.615387, 41.144318>,  <35.187111, 34.418434, 41.104252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055946, 34.615387, 41.144318>,  <34.837337, 34.943642, 41.211090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055946, 34.615387, 41.144318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222211, 0.334299, -0.915896,
		0.807425, 0.463463, 0.365057,
		0.546523, -0.820637, -0.166935,
		35.219902, 34.369194, 41.094238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545441, 35.126652, 40.991302>,  <34.837337, 34.943642, 41.211090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545441, 35.126652, 40.991302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.476131, 34.762600, 40.840767>,  <35.434547, 34.544167, 40.750446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.476131, 34.762600, 40.840767>,  <35.545441, 35.126652, 40.991302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476131, 34.762600, 40.840767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405752, 0.282217, -0.869321,
		0.897408, -0.303332, 0.320387,
		-0.173274, -0.910134, -0.376341,
		35.424149, 34.489559, 40.727863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146168, 34.998608, 40.525444>,  <35.545441, 35.126652, 40.991302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146168, 34.998608, 40.525444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844646, 34.760120, 40.414959>,  <35.663734, 34.617027, 40.348667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844646, 34.760120, 40.414959>,  <36.146168, 34.998608, 40.525444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844646, 34.760120, 40.414959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272019, 0.099498, -0.957134,
		0.598147, -0.796630, 0.087181,
		-0.753807, -0.596222, -0.276214,
		35.618504, 34.581253, 40.332096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504864, 34.690796, 40.086761>,  <36.146168, 34.998608, 40.525444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504864, 34.690796, 40.086761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.137920, 34.572754, 39.979904>,  <35.917755, 34.501930, 39.915791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.137920, 34.572754, 39.979904>,  <36.504864, 34.690796, 40.086761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137920, 34.572754, 39.979904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299806, -0.070752, -0.951373,
		0.261856, -0.952841, 0.153380,
		-0.917359, -0.295107, -0.267140,
		35.862713, 34.484222, 39.899761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475754, 34.031742, 39.666103>,  <36.504864, 34.690796, 40.086761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475754, 34.031742, 39.666103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129513, 34.216534, 39.588840>,  <35.921768, 34.327408, 39.542480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129513, 34.216534, 39.588840>,  <36.475754, 34.031742, 39.666103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129513, 34.216534, 39.588840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219310, 0.002980, -0.975651,
		-0.450155, -0.886885, -0.103896,
		-0.865600, 0.461980, -0.193161,
		35.869831, 34.355129, 39.530891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269451, 33.701965, 39.083729>,  <36.475754, 34.031742, 39.666103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269451, 33.701965, 39.083729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081421, 34.053764, 39.113441>,  <35.968601, 34.264843, 39.131268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081421, 34.053764, 39.113441>,  <36.269451, 33.701965, 39.083729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081421, 34.053764, 39.113441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278593, 0.227703, -0.933026,
		-0.837505, -0.417899, -0.352059,
		-0.470075, 0.879495, 0.074279,
		35.940399, 34.317612, 39.135727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965549, 33.629425, 38.452999>,  <36.269451, 33.701965, 39.083729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965549, 33.629425, 38.452999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945805, 34.010525, 38.572887>,  <35.933960, 34.239185, 38.644821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945805, 34.010525, 38.572887>,  <35.965549, 33.629425, 38.452999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945805, 34.010525, 38.572887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301318, 0.300306, -0.904999,
		-0.952246, 0.045641, -0.301903,
		-0.049358, 0.952750, 0.299718,
		35.930996, 34.296349, 38.662804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651630, 33.886234, 37.861370>,  <35.965549, 33.629425, 38.452999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651630, 33.886234, 37.861370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801773, 34.191547, 38.071705>,  <35.891861, 34.374737, 38.197906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801773, 34.191547, 38.071705>,  <35.651630, 33.886234, 37.861370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801773, 34.191547, 38.071705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308552, 0.432058, -0.847421,
		-0.874014, 0.480335, -0.073336,
		0.375360, 0.763285, 0.525833,
		35.914383, 34.420532, 38.229454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555958, 34.547298, 37.503605>,  <35.651630, 33.886234, 37.861370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555958, 34.547298, 37.503605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854130, 34.624020, 37.758965>,  <36.033031, 34.670052, 37.912178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854130, 34.624020, 37.758965>,  <35.555958, 34.547298, 37.503605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854130, 34.624020, 37.758965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435593, 0.584781, -0.684317,
		-0.504578, 0.788189, 0.352361,
		0.745426, 0.191805, 0.638397,
		36.077759, 34.681561, 37.950485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680481, 35.209347, 37.422783>,  <35.555958, 34.547298, 37.503605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680481, 35.209347, 37.422783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018234, 35.092754, 37.602589>,  <36.220886, 35.022800, 37.710472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018234, 35.092754, 37.602589>,  <35.680481, 35.209347, 37.422783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018234, 35.092754, 37.602589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510510, 0.692228, -0.510097,
		-0.162482, 0.660197, 0.733308,
		0.844381, -0.291480, 0.449511,
		36.271549, 35.005310, 37.737442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977875, 35.799400, 37.559719>,  <35.680481, 35.209347, 37.422783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977875, 35.799400, 37.559719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280899, 35.539700, 37.586792>,  <36.462711, 35.383881, 37.603035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280899, 35.539700, 37.586792>,  <35.977875, 35.799400, 37.559719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280899, 35.539700, 37.586792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512366, 0.527168, -0.677919,
		0.404460, 0.548240, 0.732014,
		0.757557, -0.649251, 0.067681,
		36.508167, 35.344925, 37.607098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600853, 36.194233, 37.684544>,  <35.977875, 35.799400, 37.559719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600853, 36.194233, 37.684544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735130, 35.839401, 37.557800>,  <36.815697, 35.626503, 37.481754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735130, 35.839401, 37.557800>,  <36.600853, 36.194233, 37.684544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735130, 35.839401, 37.557800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622651, 0.461371, -0.632015,
		0.706837, 0.014871, 0.707220,
		0.335690, -0.887083, -0.316855,
		36.835838, 35.573277, 37.462746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319984, 36.320095, 37.382111>,  <36.600853, 36.194233, 37.684544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319984, 36.320095, 37.382111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238106, 35.967224, 37.212467>,  <37.188980, 35.755501, 37.110683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238106, 35.967224, 37.212467>,  <37.319984, 36.320095, 37.382111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238106, 35.967224, 37.212467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422212, 0.311323, -0.851360,
		0.883083, -0.353333, 0.308739,
		-0.204696, -0.882175, -0.424106,
		37.176697, 35.702572, 37.085236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912373, 36.038151, 37.209370>,  <37.319984, 36.320095, 37.382111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912373, 36.038151, 37.209370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660892, 35.867115, 36.949554>,  <37.510002, 35.764496, 36.793663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660892, 35.867115, 36.949554>,  <37.912373, 36.038151, 37.209370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660892, 35.867115, 36.949554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579700, 0.299057, -0.757967,
		0.518346, -0.853074, 0.059854,
		-0.628701, -0.427586, -0.649541,
		37.472282, 35.738838, 36.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320278, 35.624180, 36.797573>,  <37.912373, 36.038151, 37.209370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320278, 35.624180, 36.797573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713844, 35.644619, 36.866043>,  <38.949986, 35.656883, 36.907124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713844, 35.644619, 36.866043>,  <38.320278, 35.624180, 36.797573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713844, 35.644619, 36.866043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171548, 0.003004, 0.985171,
		0.049832, -0.998689, 0.011722,
		0.983915, 0.051104, 0.171173,
		39.009018, 35.659950, 36.917397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516373, 35.046490, 37.221321>,  <38.320278, 35.624180, 36.797573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516373, 35.046490, 37.221321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798077, 35.327568, 37.261787>,  <38.967098, 35.496216, 37.286068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798077, 35.327568, 37.261787>,  <38.516373, 35.046490, 37.221321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798077, 35.327568, 37.261787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043401, -0.184844, 0.981809,
		0.708610, -0.687062, -0.160676,
		0.704264, 0.702693, 0.101163,
		39.009357, 35.538376, 37.292137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110424, 34.726978, 37.506180>,  <38.516373, 35.046490, 37.221321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110424, 34.726978, 37.506180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134285, 35.113125, 37.607777>,  <39.148602, 35.344810, 37.668736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134285, 35.113125, 37.607777>,  <39.110424, 34.726978, 37.506180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134285, 35.113125, 37.607777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103301, -0.259053, 0.960323,
		0.992860, -0.031045, -0.115176,
		0.059650, 0.965364, 0.253997,
		39.152180, 35.402733, 37.683975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651852, 34.723038, 38.036221>,  <39.110424, 34.726978, 37.506180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651852, 34.723038, 38.036221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499912, 35.091007, 38.075104>,  <39.408749, 35.311790, 38.098434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499912, 35.091007, 38.075104>,  <39.651852, 34.723038, 38.036221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499912, 35.091007, 38.075104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366743, 0.053287, 0.928795,
		0.849243, 0.388454, -0.357618,
		-0.379850, 0.919926, 0.097209,
		39.385956, 35.366985, 38.104267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129005, 35.082508, 38.474361>,  <39.651852, 34.723038, 38.036221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129005, 35.082508, 38.474361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786663, 35.288048, 38.497910>,  <39.581257, 35.411373, 38.512039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786663, 35.288048, 38.497910>,  <40.129005, 35.082508, 38.474361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786663, 35.288048, 38.497910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123117, 0.091858, 0.988132,
		0.502346, 0.852947, -0.141881,
		-0.855856, 0.513852, 0.058868,
		39.529907, 35.442204, 38.515572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245728, 35.575630, 38.883148>,  <40.129005, 35.082508, 38.474361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245728, 35.575630, 38.883148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847237, 35.550098, 38.906685>,  <39.608143, 35.534779, 38.920807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847237, 35.550098, 38.906685>,  <40.245728, 35.575630, 38.883148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847237, 35.550098, 38.906685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059352, -0.006070, 0.998219,
		-0.063357, 0.997942, 0.009836,
		-0.996224, -0.063828, 0.058846,
		39.548370, 35.530949, 38.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036953, 36.089642, 39.457687>,  <40.245728, 35.575630, 38.883148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036953, 36.089642, 39.457687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711536, 35.858158, 39.434902>,  <39.516289, 35.719269, 39.421230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711536, 35.858158, 39.434902>,  <40.036953, 36.089642, 39.457687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711536, 35.858158, 39.434902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050150, -0.027775, 0.998356,
		-0.579343, 0.815058, -0.006426,
		-0.813539, -0.578713, -0.056966,
		39.467476, 35.684544, 39.417812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566013, 36.391098, 39.905727>,  <40.036953, 36.089642, 39.457687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566013, 36.391098, 39.905727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455246, 36.006847, 39.896645>,  <39.388786, 35.776299, 39.891193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455246, 36.006847, 39.896645>,  <39.566013, 36.391098, 39.905727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455246, 36.006847, 39.896645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044398, -0.010814, 0.998955,
		-0.959866, 0.277640, -0.039656,
		-0.276922, -0.960624, -0.022707,
		39.372169, 35.718658, 39.889832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267326, 36.289925, 40.549450>,  <39.566013, 36.391098, 39.905727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267326, 36.289925, 40.549450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257977, 35.911690, 40.419643>,  <39.252365, 35.684750, 40.341759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257977, 35.911690, 40.419643>,  <39.267326, 36.289925, 40.549450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257977, 35.911690, 40.419643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130659, -0.318933, 0.938728,
		-0.991152, 0.064343, -0.116095,
		-0.023374, -0.945591, -0.324518,
		39.250965, 35.628014, 40.322289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621696, 35.892323, 40.756645>,  <39.267326, 36.289925, 40.549450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621696, 35.892323, 40.756645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925678, 35.640083, 40.693638>,  <39.108067, 35.488739, 40.655834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925678, 35.640083, 40.693638>,  <38.621696, 35.892323, 40.756645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925678, 35.640083, 40.693638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139459, -0.394894, 0.908080,
		-0.634836, -0.668135, -0.388045,
		0.759957, -0.630598, -0.157516,
		39.153667, 35.450905, 40.646381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399597, 35.261784, 40.968487>,  <38.621696, 35.892323, 40.756645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399597, 35.261784, 40.968487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795559, 35.206245, 40.957027>,  <39.033134, 35.172924, 40.950150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795559, 35.206245, 40.957027>,  <38.399597, 35.261784, 40.968487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795559, 35.206245, 40.957027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073009, -0.672507, 0.736481,
		-0.121522, -0.726951, -0.675851,
		0.989900, -0.138842, -0.028650,
		39.092529, 35.164593, 40.948433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514744, 34.519119, 40.995712>,  <38.399597, 35.261784, 40.968487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514744, 34.519119, 40.995712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846397, 34.703995, 41.121517>,  <39.045387, 34.814922, 41.197002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846397, 34.703995, 41.121517>,  <38.514744, 34.519119, 40.995712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846397, 34.703995, 41.121517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040547, -0.610823, 0.790729,
		0.557581, -0.642865, -0.525193,
		0.829132, 0.462190, 0.314517,
		39.095139, 34.842651, 41.215874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013783, 34.006805, 41.169373>,  <38.514744, 34.519119, 40.995712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013783, 34.006805, 41.169373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083736, 34.343079, 41.374378>,  <39.125710, 34.544842, 41.497379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083736, 34.343079, 41.374378>,  <39.013783, 34.006805, 41.169373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083736, 34.343079, 41.374378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029014, -0.524707, 0.850789,
		0.984162, -0.133919, -0.116154,
		0.174884, 0.840684, 0.512510,
		39.136200, 34.595284, 41.528130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411358, 33.844017, 41.689663>,  <39.013783, 34.006805, 41.169373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411358, 33.844017, 41.689663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257561, 34.194839, 41.804863>,  <39.165283, 34.405331, 41.873981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.257561, 34.194839, 41.804863>,  <39.411358, 33.844017, 41.689663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257561, 34.194839, 41.804863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114410, -0.264305, 0.957629,
		0.916010, 0.401153, 0.001280,
		-0.384494, 0.877052, 0.288002,
		39.142212, 34.457954, 41.891262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759544, 33.945267, 42.290150>,  <39.411358, 33.844017, 41.689663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759544, 33.945267, 42.290150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441868, 34.188168, 42.299248>,  <39.251263, 34.333908, 42.304707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441868, 34.188168, 42.299248>,  <39.759544, 33.945267, 42.290150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441868, 34.188168, 42.299248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145959, -0.226965, 0.962903,
		0.589884, 0.761405, 0.268886,
		-0.794187, 0.607247, 0.022748,
		39.203613, 34.370342, 42.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627480, 34.099945, 43.061417>,  <39.759544, 33.945267, 42.290150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627480, 34.099945, 43.061417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.269695, 34.230053, 42.938683>,  <39.055027, 34.308117, 42.865044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.269695, 34.230053, 42.938683>,  <39.627480, 34.099945, 43.061417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269695, 34.230053, 42.938683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420197, -0.376776, 0.825514,
		0.152908, 0.867317, 0.473688,
		-0.894457, 0.325271, -0.306832,
		39.001358, 34.327633, 42.846634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483540, 34.438435, 43.585743>,  <39.627480, 34.099945, 43.061417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483540, 34.438435, 43.585743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143627, 34.366501, 43.387539>,  <38.939678, 34.323341, 43.268616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143627, 34.366501, 43.387539>,  <39.483540, 34.438435, 43.585743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143627, 34.366501, 43.387539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466046, -0.182939, 0.865641,
		-0.246317, 0.966537, 0.071649,
		-0.849782, -0.179831, -0.495511,
		38.888691, 34.312553, 43.238884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950050, 34.735222, 43.937359>,  <39.483540, 34.438435, 43.585743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950050, 34.735222, 43.937359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762234, 34.475361, 43.698200>,  <38.649544, 34.319443, 43.554707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762234, 34.475361, 43.698200>,  <38.950050, 34.735222, 43.937359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762234, 34.475361, 43.698200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455807, -0.401600, 0.794329,
		-0.756154, 0.645495, -0.107550,
		-0.469543, -0.649657, -0.597892,
		38.621372, 34.280464, 43.518833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.271931, 34.807568, 44.073761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297733, 34.444473, 43.907936>,  <38.313217, 34.226616, 43.808441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297733, 34.444473, 43.907936>,  <38.271931, 34.807568, 44.073761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297733, 34.444473, 43.907936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481107, -0.392249, 0.784014,
		-0.874285, 0.148872, -0.462020,
		0.064509, -0.907732, -0.414561,
		38.317085, 34.172153, 43.783569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651775, 34.562370, 44.182590>,  <38.271931, 34.807568, 44.073761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651775, 34.562370, 44.182590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893932, 34.257412, 44.091160>,  <38.039227, 34.074436, 44.036301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893932, 34.257412, 44.091160>,  <37.651775, 34.562370, 44.182590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893932, 34.257412, 44.091160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310607, -0.490717, 0.814076,
		-0.732815, -0.421841, -0.533884,
		0.605397, -0.762396, -0.228578,
		38.075550, 34.028694, 44.022587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242542, 33.865757, 44.095078>,  <37.651775, 34.562370, 44.182590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242542, 33.865757, 44.095078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624149, 33.762844, 44.156605>,  <37.853111, 33.701096, 44.193520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624149, 33.762844, 44.156605>,  <37.242542, 33.865757, 44.095078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624149, 33.762844, 44.156605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277593, -0.564631, 0.777261,
		-0.113128, -0.784217, -0.610087,
		0.954015, -0.257286, 0.153818,
		37.910355, 33.685658, 44.202751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244362, 33.154312, 44.186497>,  <37.242542, 33.865757, 44.095078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244362, 33.154312, 44.186497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570381, 33.300098, 44.366657>,  <37.765991, 33.387569, 44.474754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570381, 33.300098, 44.366657>,  <37.244362, 33.154312, 44.186497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570381, 33.300098, 44.366657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249470, -0.480866, 0.840555,
		0.522937, -0.797454, -0.301006,
		0.815048, 0.364465, 0.450403,
		37.814896, 33.409439, 44.501778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614685, 32.602940, 44.568409>,  <37.244362, 33.154312, 44.186497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614685, 32.602940, 44.568409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.739655, 32.940174, 44.743492>,  <37.814636, 33.142517, 44.848541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.739655, 32.940174, 44.743492>,  <37.614685, 32.602940, 44.568409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739655, 32.940174, 44.743492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016609, -0.455856, 0.889898,
		0.949797, -0.285296, -0.128417,
		0.312424, 0.843090, 0.437710,
		37.833382, 33.193100, 44.874805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015450, 32.312809, 45.056549>,  <37.614685, 32.602940, 44.568409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015450, 32.312809, 45.056549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970959, 32.689575, 45.183308>,  <37.944263, 32.915634, 45.259361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970959, 32.689575, 45.183308>,  <38.015450, 32.312809, 45.056549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970959, 32.689575, 45.183308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122541, -0.303440, 0.944938,
		0.986211, 0.143933, -0.081674,
		-0.111224, 0.941917, 0.316893,
		37.937592, 32.972149, 45.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620361, 32.480450, 45.544094>,  <38.015450, 32.312809, 45.056549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620361, 32.480450, 45.544094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343414, 32.757553, 45.624809>,  <38.177246, 32.923817, 45.673237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343414, 32.757553, 45.624809>,  <38.620361, 32.480450, 45.544094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343414, 32.757553, 45.624809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117789, -0.167391, 0.978829,
		0.711869, 0.701474, 0.034296,
		-0.692364, 0.692758, 0.201787,
		38.135704, 32.965382, 45.685345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810356, 32.923088, 46.116451>,  <38.620361, 32.480450, 45.544094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810356, 32.923088, 46.116451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411892, 32.952801, 46.097908>,  <38.172813, 32.970627, 46.086781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411892, 32.952801, 46.097908>,  <38.810356, 32.923088, 46.116451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411892, 32.952801, 46.097908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061538, -0.217233, 0.974178,
		0.062292, 0.973289, 0.220970,
		-0.996159, 0.074281, -0.046362,
		38.113045, 32.975086, 46.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614105, 33.427948, 46.658382>,  <38.810356, 32.923088, 46.116451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614105, 33.427948, 46.658382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284454, 33.213299, 46.585884>,  <38.086662, 33.084511, 46.542385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284454, 33.213299, 46.585884>,  <38.614105, 33.427948, 46.658382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284454, 33.213299, 46.585884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055162, -0.242431, 0.968599,
		-0.563711, 0.808247, 0.170193,
		-0.824128, -0.536622, -0.181246,
		38.037216, 33.052311, 46.531509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106792, 33.600922, 47.195530>,  <38.614105, 33.427948, 46.658382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106792, 33.600922, 47.195530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002560, 33.239296, 47.060024>,  <37.940022, 33.022320, 46.978722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002560, 33.239296, 47.060024>,  <38.106792, 33.600922, 47.195530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002560, 33.239296, 47.060024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255752, -0.273710, 0.927186,
		-0.930961, 0.328245, -0.159894,
		-0.260580, -0.904068, -0.338763,
		37.924385, 32.968075, 46.958397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569668, 33.448601, 47.670223>,  <38.106792, 33.600922, 47.195530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569668, 33.448601, 47.670223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652103, 33.114864, 47.465710>,  <37.701565, 32.914623, 47.343002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652103, 33.114864, 47.465710>,  <37.569668, 33.448601, 47.670223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652103, 33.114864, 47.465710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143795, -0.542646, 0.827562,
		-0.967911, -0.097028, -0.231805,
		0.206085, -0.834338, -0.511281,
		37.713928, 32.864563, 47.312325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983173, 32.951500, 47.829556>,  <37.569668, 33.448601, 47.670223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983173, 32.951500, 47.829556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307693, 32.736256, 47.738132>,  <37.502403, 32.607109, 47.683281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307693, 32.736256, 47.738132>,  <36.983173, 32.951500, 47.829556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307693, 32.736256, 47.738132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082019, -0.491830, 0.866820,
		-0.578855, -0.684501, -0.443154,
		0.811295, -0.538110, -0.228556,
		37.551083, 32.574821, 47.669567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891232, 32.228832, 47.869881>,  <36.983173, 32.951500, 47.829556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891232, 32.228832, 47.869881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288456, 32.184750, 47.886280>,  <37.526791, 32.158298, 47.896122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.288456, 32.184750, 47.886280>,  <36.891232, 32.228832, 47.869881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288456, 32.184750, 47.886280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094584, -0.541478, 0.835377,
		-0.069866, -0.833460, -0.548145,
		0.993062, -0.110210, 0.041001,
		37.586376, 32.151688, 47.898579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977139, 31.584059, 48.059124>,  <36.891232, 32.228832, 47.869881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977139, 31.584059, 48.059124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320564, 31.771421, 48.142521>,  <37.526619, 31.883839, 48.192558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320564, 31.771421, 48.142521>,  <36.977139, 31.584059, 48.059124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320564, 31.771421, 48.142521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126088, -0.587052, 0.799670,
		0.496967, -0.660276, -0.563080,
		0.858560, 0.468407, 0.208493,
		37.578133, 31.911943, 48.205070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462479, 31.027180, 48.220364>,  <36.977139, 31.584059, 48.059124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462479, 31.027180, 48.220364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623684, 31.352028, 48.389145>,  <37.720406, 31.546938, 48.490414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.623684, 31.352028, 48.389145>,  <37.462479, 31.027180, 48.220364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623684, 31.352028, 48.389145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084621, -0.492140, 0.866393,
		0.911275, -0.313459, -0.267059,
		0.403009, 0.812122, 0.421950,
		37.744587, 31.595665, 48.515732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123917, 30.784782, 48.593575>,  <37.462479, 31.027180, 48.220364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123917, 30.784782, 48.593575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033756, 31.137983, 48.758259>,  <37.979660, 31.349903, 48.857067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033756, 31.137983, 48.758259>,  <38.123917, 30.784782, 48.593575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033756, 31.137983, 48.758259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090781, -0.401709, 0.911257,
		0.970028, 0.242770, 0.010384,
		-0.225397, 0.883002, 0.411708,
		37.966137, 31.402884, 48.881771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614578, 30.897120, 49.280956>,  <38.123917, 30.784782, 48.593575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614578, 30.897120, 49.280956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311588, 31.153797, 49.329067>,  <38.129795, 31.307804, 49.357933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.311588, 31.153797, 49.329067>,  <38.614578, 30.897120, 49.280956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311588, 31.153797, 49.329067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012632, -0.198604, 0.979998,
		0.652745, 0.740802, 0.158543,
		-0.757472, 0.641692, 0.120280,
		38.084347, 31.346304, 49.365150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771450, 31.342922, 49.939968>,  <38.614578, 30.897120, 49.280956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771450, 31.342922, 49.939968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379475, 31.366293, 49.863754>,  <38.144291, 31.380316, 49.818024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379475, 31.366293, 49.863754>,  <38.771450, 31.342922, 49.939968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379475, 31.366293, 49.863754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189906, 0.016234, 0.981668,
		0.060449, 0.998160, -0.004813,
		-0.979940, 0.058427, -0.190538,
		38.085491, 31.383821, 49.806595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596077, 31.805197, 50.411354>,  <38.771450, 31.342922, 49.939968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596077, 31.805197, 50.411354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269455, 31.600193, 50.305092>,  <38.073483, 31.477190, 50.241333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269455, 31.600193, 50.305092>,  <38.596077, 31.805197, 50.411354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269455, 31.600193, 50.305092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196676, -0.185669, 0.962728,
		-0.542733, 0.838367, 0.050810,
		-0.816553, -0.512511, -0.265656,
		38.024490, 31.446440, 50.225395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044250, 32.020691, 50.779831>,  <38.596077, 31.805197, 50.411354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044250, 32.020691, 50.779831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909550, 31.665413, 50.654797>,  <37.828728, 31.452248, 50.579777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909550, 31.665413, 50.654797>,  <38.044250, 32.020691, 50.779831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909550, 31.665413, 50.654797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312860, -0.207573, 0.926840,
		-0.888097, 0.409913, -0.207979,
		-0.336753, -0.888192, -0.312590,
		37.808525, 31.398956, 50.561020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339428, 31.945255, 51.036835>,  <38.044250, 32.020691, 50.779831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339428, 31.945255, 51.036835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506565, 31.587873, 50.970928>,  <37.606846, 31.373444, 50.931385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506565, 31.587873, 50.970928>,  <37.339428, 31.945255, 51.036835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506565, 31.587873, 50.970928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197679, -0.266415, 0.943369,
		-0.886755, -0.361606, -0.287936,
		0.417839, -0.893456, -0.164762,
		37.631916, 31.319836, 50.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918495, 31.506950, 51.332153>,  <37.339428, 31.945255, 51.036835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918495, 31.506950, 51.332153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253361, 31.288647, 51.317688>,  <37.454281, 31.157665, 51.309010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253361, 31.288647, 51.317688>,  <36.918495, 31.506950, 51.332153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253361, 31.288647, 51.317688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191468, -0.354342, 0.915304,
		-0.512349, -0.759334, -0.401137,
		0.837161, -0.545760, -0.036159,
		37.504509, 31.124918, 51.306839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824718, 30.811069, 51.476254>,  <36.918495, 31.506950, 51.332153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824718, 30.811069, 51.476254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185268, 30.933847, 51.598442>,  <37.401596, 31.007515, 51.671757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185268, 30.933847, 51.598442>,  <36.824718, 30.811069, 51.476254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185268, 30.933847, 51.598442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200408, -0.329642, 0.922590,
		0.383882, -0.892816, -0.235615,
		0.901372, 0.306947, 0.305471,
		37.455681, 31.025932, 51.690083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026669, 30.989254, 51.561871>,  <36.824718, 30.811069, 51.476254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026669, 30.989254, 51.561871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668282, 30.818573, 51.611145>,  <35.453251, 30.716164, 51.640709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668282, 30.818573, 51.611145>,  <36.026669, 30.989254, 51.561871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668282, 30.818573, 51.611145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233256, 0.216070, -0.948106,
		0.377946, -0.878201, -0.293122,
		-0.895963, -0.426705, 0.123183,
		35.399494, 30.690561, 51.648102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004631, 30.450033, 51.090508>,  <36.026669, 30.989254, 51.561871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004631, 30.450033, 51.090508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640026, 30.579374, 51.192165>,  <35.421265, 30.656979, 51.253159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640026, 30.579374, 51.192165>,  <36.004631, 30.450033, 51.090508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640026, 30.579374, 51.192165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231147, 0.108334, -0.966869,
		-0.340172, -0.940057, -0.024005,
		-0.911512, 0.323353, 0.254144,
		35.366573, 30.676380, 51.268410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595333, 30.179565, 50.580132>,  <36.004631, 30.450033, 51.090508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595333, 30.179565, 50.580132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335163, 30.443235, 50.731094>,  <35.179062, 30.601437, 50.821671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335163, 30.443235, 50.731094>,  <35.595333, 30.179565, 50.580132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335163, 30.443235, 50.731094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404082, 0.120442, -0.906759,
		-0.643166, -0.742284, 0.188021,
		-0.650427, 0.659173, 0.377408,
		35.140034, 30.640987, 50.844318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975227, 29.919619, 50.405273>,  <35.595333, 30.179565, 50.580132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975227, 29.919619, 50.405273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889771, 30.304733, 50.471485>,  <34.838497, 30.535801, 50.511211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.889771, 30.304733, 50.471485>,  <34.975227, 29.919619, 50.405273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889771, 30.304733, 50.471485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568168, 0.015379, -0.822769,
		-0.794696, -0.269830, 0.543738,
		-0.213646, 0.962785, 0.165530,
		34.825676, 30.593569, 50.521145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288113, 29.972723, 50.360897>,  <34.975227, 29.919619, 50.405273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288113, 29.972723, 50.360897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445976, 30.334568, 50.296497>,  <34.540695, 30.551674, 50.257858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445976, 30.334568, 50.296497>,  <34.288113, 29.972723, 50.360897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445976, 30.334568, 50.296497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555620, 0.095403, -0.825945,
		-0.731799, 0.415424, 0.540271,
		0.394661, 0.904611, -0.161002,
		34.564373, 30.605951, 50.248196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795788, 30.344433, 50.027721>,  <34.288113, 29.972723, 50.360897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795788, 30.344433, 50.027721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118084, 30.567022, 49.946606>,  <34.311462, 30.700577, 49.897934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118084, 30.567022, 49.946606>,  <33.795788, 30.344433, 50.027721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118084, 30.567022, 49.946606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366438, 0.199380, -0.908830,
		-0.465309, 0.806587, 0.364562,
		0.805736, 0.556475, -0.202791,
		34.359806, 30.733965, 49.885769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516273, 30.852959, 49.597130>,  <33.795788, 30.344433, 50.027721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516273, 30.852959, 49.597130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909252, 30.832651, 49.525341>,  <34.145039, 30.820467, 49.482265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909252, 30.832651, 49.525341>,  <33.516273, 30.852959, 49.597130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909252, 30.832651, 49.525341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174148, 0.094924, -0.980134,
		0.066798, 0.994189, 0.084416,
		0.982451, -0.050770, -0.179476,
		34.203987, 30.817421, 49.471497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617188, 31.257151, 49.068546>,  <33.516273, 30.852959, 49.597130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617188, 31.257151, 49.068546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.969170, 31.067696, 49.083179>,  <34.180359, 30.954021, 49.091957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.969170, 31.067696, 49.083179>,  <33.617188, 31.257151, 49.068546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969170, 31.067696, 49.083179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228283, 0.354075, -0.906928,
		0.416604, 0.806410, 0.419695,
		0.879959, -0.473639, 0.036580,
		34.233158, 30.925604, 49.094154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206062, 31.747581, 48.967567>,  <33.617188, 31.257151, 49.068546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206062, 31.747581, 48.967567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364075, 31.402569, 48.841087>,  <34.458881, 31.195560, 48.765198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364075, 31.402569, 48.841087>,  <34.206062, 31.747581, 48.967567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364075, 31.402569, 48.841087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325584, 0.453306, -0.829764,
		0.859037, 0.224832, 0.459897,
		0.395032, -0.862534, -0.316205,
		34.482586, 31.143808, 48.746227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844460, 31.893108, 48.772579>,  <34.206062, 31.747581, 48.967567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844460, 31.893108, 48.772579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768368, 31.549643, 48.582207>,  <34.722713, 31.343563, 48.467983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768368, 31.549643, 48.582207>,  <34.844460, 31.893108, 48.772579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768368, 31.549643, 48.582207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470271, 0.345845, -0.811934,
		0.861776, -0.378272, 0.338013,
		-0.190232, -0.858663, -0.475931,
		34.711300, 31.292044, 48.439426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457314, 31.617651, 48.427326>,  <34.844460, 31.893108, 48.772579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457314, 31.617651, 48.427326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178276, 31.404596, 48.235638>,  <35.010853, 31.276764, 48.120625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178276, 31.404596, 48.235638>,  <35.457314, 31.617651, 48.427326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178276, 31.404596, 48.235638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377315, 0.295493, -0.877677,
		0.609092, -0.793083, -0.005162,
		-0.697596, -0.532638, -0.479225,
		34.968998, 31.244804, 48.091869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869316, 31.200771, 47.895058>,  <35.457314, 31.617651, 48.427326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869316, 31.200771, 47.895058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486027, 31.218351, 47.782009>,  <35.256054, 31.228899, 47.714180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486027, 31.218351, 47.782009>,  <35.869316, 31.200771, 47.895058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486027, 31.218351, 47.782009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282903, 0.291162, -0.913888,
		0.042123, -0.955663, -0.291432,
		-0.958223, 0.043951, -0.282625,
		35.198559, 31.231537, 47.697220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876167, 30.989275, 47.192268>,  <35.869316, 31.200771, 47.895058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876167, 30.989275, 47.192268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.528614, 31.186344, 47.211506>,  <35.320084, 31.304586, 47.223049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.528614, 31.186344, 47.211506>,  <35.876167, 30.989275, 47.192268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528614, 31.186344, 47.211506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273843, 0.559336, -0.782403,
		-0.412371, -0.666646, -0.620913,
		-0.868885, 0.492673, 0.048098,
		35.267948, 31.334146, 47.225937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668594, 31.077852, 46.545387>,  <35.876167, 30.989275, 47.192268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668594, 31.077852, 46.545387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453423, 31.370518, 46.712860>,  <35.324318, 31.546118, 46.813343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453423, 31.370518, 46.712860>,  <35.668594, 31.077852, 46.545387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453423, 31.370518, 46.712860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219377, 0.601055, -0.768509,
		-0.813942, -0.321558, -0.483838,
		-0.537934, 0.731665, 0.418681,
		35.292042, 31.590017, 46.838463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370895, 31.220726, 46.050041>,  <35.668594, 31.077852, 46.545387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370895, 31.220726, 46.050041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340618, 31.535328, 46.295212>,  <35.322453, 31.724089, 46.442314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340618, 31.535328, 46.295212>,  <35.370895, 31.220726, 46.050041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340618, 31.535328, 46.295212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278810, 0.606870, -0.744295,
		-0.957359, 0.114555, -0.265219,
		-0.075691, 0.786503, 0.612931,
		35.317909, 31.771278, 46.479092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901516, 31.613373, 45.646111>,  <35.370895, 31.220726, 46.050041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901516, 31.613373, 45.646111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088421, 31.864094, 45.895523>,  <35.200562, 32.014526, 46.045170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088421, 31.864094, 45.895523>,  <34.901516, 31.613373, 45.646111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088421, 31.864094, 45.895523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043103, 0.688266, -0.724177,
		-0.883069, 0.365254, 0.294582,
		0.467259, 0.626801, 0.623530,
		35.228600, 32.052135, 46.082581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569645, 32.234257, 45.708828>,  <34.901516, 31.613373, 45.646111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569645, 32.234257, 45.708828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933235, 32.358715, 45.819790>,  <35.151390, 32.433392, 45.886368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933235, 32.358715, 45.819790>,  <34.569645, 32.234257, 45.708828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933235, 32.358715, 45.819790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065764, 0.764175, -0.641647,
		-0.411631, 0.564998, 0.715078,
		0.908975, 0.311148, 0.277402,
		35.205929, 32.452061, 45.903011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559067, 32.901203, 45.691986>,  <34.569645, 32.234257, 45.708828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559067, 32.901203, 45.691986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948105, 32.822136, 45.643021>,  <35.181526, 32.774696, 45.613640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948105, 32.822136, 45.643021>,  <34.559067, 32.901203, 45.691986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948105, 32.822136, 45.643021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063453, 0.732182, -0.678147,
		0.223679, 0.651795, 0.724659,
		0.972595, -0.197669, -0.122416,
		35.239883, 32.762836, 45.606297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839390, 33.534603, 45.757141>,  <34.559067, 32.901203, 45.691986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839390, 33.534603, 45.757141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108856, 33.302189, 45.574459>,  <35.270535, 33.162743, 45.464851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108856, 33.302189, 45.574459>,  <34.839390, 33.534603, 45.757141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108856, 33.302189, 45.574459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130288, 0.701664, -0.700495,
		0.727461, 0.412397, 0.548388,
		0.673666, -0.581031, -0.456703,
		35.310955, 33.127880, 45.437447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149353, 33.991180, 45.373646>,  <34.839390, 33.534603, 45.757141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149353, 33.991180, 45.373646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265617, 33.636337, 45.230225>,  <35.335377, 33.423431, 45.144173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265617, 33.636337, 45.230225>,  <35.149353, 33.991180, 45.373646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265617, 33.636337, 45.230225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031410, 0.383378, -0.923057,
		0.956311, 0.257034, 0.139296,
		0.290660, -0.887105, -0.358556,
		35.352814, 33.370205, 45.122658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607464, 34.173714, 44.825653>,  <35.149353, 33.991180, 45.373646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607464, 34.173714, 44.825653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523537, 33.791737, 44.741699>,  <35.473179, 33.562550, 44.691326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523537, 33.791737, 44.741699>,  <35.607464, 34.173714, 44.825653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523537, 33.791737, 44.741699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059071, 0.226650, -0.972184,
		0.975954, -0.191588, -0.103966,
		-0.209822, -0.954947, -0.209882,
		35.460590, 33.505253, 44.678734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.304527, 39.107307, 42.138329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952381, 39.160488, 42.320442>,  <40.741093, 39.192394, 42.429710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952381, 39.160488, 42.320442>,  <41.304527, 39.107307, 42.138329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952381, 39.160488, 42.320442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195665, -0.976225, -0.093279,
		0.432055, -0.171202, 0.885448,
		-0.880366, 0.132949, 0.455281,
		40.688271, 39.200375, 42.457027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229984, 38.741425, 41.481358>,  <41.304527, 39.107307, 42.138329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229984, 38.741425, 41.481358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186069, 39.031166, 41.209103>,  <41.159721, 39.205009, 41.045750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.186069, 39.031166, 41.209103>,  <41.229984, 38.741425, 41.481358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186069, 39.031166, 41.209103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206522, -0.653206, -0.728471,
		-0.972263, -0.220542, -0.077881,
		-0.109786, 0.724350, -0.680635,
		41.153133, 39.248470, 41.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670570, 38.517487, 40.940754>,  <41.229984, 38.741425, 41.481358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670570, 38.517487, 40.940754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945614, 38.766518, 40.791306>,  <41.110638, 38.915936, 40.701637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945614, 38.766518, 40.791306>,  <40.670570, 38.517487, 40.940754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945614, 38.766518, 40.791306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193824, -0.653282, -0.731885,
		-0.699736, 0.430832, -0.569871,
		0.687606, 0.622581, -0.373619,
		41.151897, 38.953293, 40.679218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641693, 38.409008, 40.227161>,  <40.670570, 38.517487, 40.940754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641693, 38.409008, 40.227161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984642, 38.614723, 40.235428>,  <41.190411, 38.738152, 40.240387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984642, 38.614723, 40.235428>,  <40.641693, 38.409008, 40.227161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984642, 38.614723, 40.235428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344458, -0.543486, -0.765488,
		-0.382449, 0.663424, -0.643119,
		0.857369, 0.514287, 0.020666,
		41.241852, 38.769009, 40.241627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704548, 38.685749, 39.554638>,  <40.641693, 38.409008, 40.227161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704548, 38.685749, 39.554638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070118, 38.688969, 39.716957>,  <41.289459, 38.690899, 39.814350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070118, 38.688969, 39.716957>,  <40.704548, 38.685749, 39.554638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070118, 38.688969, 39.716957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349236, -0.525041, -0.776122,
		0.206818, 0.851039, -0.482659,
		0.913926, 0.008046, 0.405802,
		41.344296, 38.691383, 39.838699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133202, 38.608635, 38.967461>,  <40.704548, 38.685749, 39.554638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133202, 38.608635, 38.967461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.378613, 38.555580, 39.278843>,  <41.525860, 38.523746, 39.465672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.378613, 38.555580, 39.278843>,  <41.133202, 38.608635, 38.967461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378613, 38.555580, 39.278843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561569, -0.619779, -0.548191,
		0.555183, 0.773486, -0.305763,
		0.613524, -0.132639, 0.778457,
		41.562668, 38.515789, 39.512379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697216, 38.774158, 38.755375>,  <41.133202, 38.608635, 38.967461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697216, 38.774158, 38.755375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750343, 38.518219, 39.058147>,  <41.782219, 38.364655, 39.239811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.750343, 38.518219, 39.058147>,  <41.697216, 38.774158, 38.755375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750343, 38.518219, 39.058147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558527, -0.582578, -0.590466,
		0.818784, 0.501191, 0.279999,
		0.132815, -0.639851, 0.756935,
		41.790188, 38.326263, 39.285229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380653, 38.596783, 38.776154>,  <41.697216, 38.774158, 38.755375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380653, 38.596783, 38.776154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203793, 38.291801, 38.965118>,  <42.097675, 38.108814, 39.078495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203793, 38.291801, 38.965118>,  <42.380653, 38.596783, 38.776154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203793, 38.291801, 38.965118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498958, -0.646758, -0.576841,
		0.745346, -0.019340, 0.666396,
		-0.442153, -0.762450, 0.472409,
		42.071148, 38.063065, 39.106842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925652, 38.223259, 39.034916>,  <42.380653, 38.596783, 38.776154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925652, 38.223259, 39.034916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606098, 37.983074, 39.020912>,  <42.414364, 37.838963, 39.012508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606098, 37.983074, 39.020912>,  <42.925652, 38.223259, 39.034916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606098, 37.983074, 39.020912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525302, -0.668170, -0.526884,
		0.292982, -0.439310, 0.849216,
		-0.798886, -0.600463, -0.035009,
		42.366432, 37.802937, 39.010410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123856, 37.526337, 39.425037>,  <42.925652, 38.223259, 39.034916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123856, 37.526337, 39.425037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802719, 37.461887, 39.195435>,  <42.610039, 37.423218, 39.057674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.802719, 37.461887, 39.195435>,  <43.123856, 37.526337, 39.425037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802719, 37.461887, 39.195435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526814, -0.642480, -0.556494,
		-0.279125, -0.749172, 0.600691,
		-0.802842, -0.161121, -0.574007,
		42.561867, 37.413551, 39.023232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233273, 36.872379, 39.343391>,  <43.123856, 37.526337, 39.425037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233273, 36.872379, 39.343391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978947, 36.959751, 39.047276>,  <42.826351, 37.012173, 38.869606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.978947, 36.959751, 39.047276>,  <43.233273, 36.872379, 39.343391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978947, 36.959751, 39.047276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525241, -0.580344, -0.622353,
		-0.565556, -0.784534, 0.254271,
		-0.635821, 0.218422, -0.740286,
		42.788200, 37.025280, 38.825188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103466, 36.253235, 38.988735>,  <43.233273, 36.872379, 39.343391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103466, 36.253235, 38.988735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970726, 36.511932, 38.714046>,  <42.891083, 36.667152, 38.549232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.970726, 36.511932, 38.714046>,  <43.103466, 36.253235, 38.988735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970726, 36.511932, 38.714046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343650, -0.595072, -0.726494,
		-0.878510, -0.477081, -0.024780,
		-0.331851, 0.646748, -0.686726,
		42.871170, 36.705956, 38.508030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930981, 35.846329, 38.381207>,  <43.103466, 36.253235, 38.988735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930981, 35.846329, 38.381207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948135, 36.220169, 38.239967>,  <42.958427, 36.444473, 38.155224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.948135, 36.220169, 38.239967>,  <42.930981, 35.846329, 38.381207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948135, 36.220169, 38.239967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250356, -0.352203, -0.901818,
		-0.967204, -0.049726, -0.249087,
		0.042885, 0.934602, -0.353101,
		42.961002, 36.500549, 38.134037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456257, 35.847080, 37.802891>,  <42.930981, 35.846329, 38.381207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456257, 35.847080, 37.802891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714088, 36.149761, 37.759220>,  <42.868790, 36.331367, 37.733017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714088, 36.149761, 37.759220>,  <42.456257, 35.847080, 37.802891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714088, 36.149761, 37.759220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219156, -0.319688, -0.921830,
		-0.732452, 0.570267, -0.371900,
		0.644581, 0.756700, -0.109178,
		42.907463, 36.376770, 37.726467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359921, 36.122066, 37.174911>,  <42.456257, 35.847080, 37.802891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359921, 36.122066, 37.174911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721611, 36.259792, 37.275963>,  <42.938625, 36.342430, 37.336594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721611, 36.259792, 37.275963>,  <42.359921, 36.122066, 37.174911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721611, 36.259792, 37.275963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342296, -0.230625, -0.910849,
		-0.255359, 0.910087, -0.326396,
		0.904226, 0.344317, 0.252627,
		42.992878, 36.363087, 37.351749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674103, 36.459377, 36.511532>,  <42.359921, 36.122066, 37.174911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674103, 36.459377, 36.511532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977451, 36.393436, 36.763786>,  <43.159458, 36.353870, 36.915138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977451, 36.393436, 36.763786>,  <42.674103, 36.459377, 36.511532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977451, 36.393436, 36.763786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585902, -0.251585, -0.770340,
		0.285654, 0.953691, -0.094204,
		0.758367, -0.164857, 0.630636,
		43.204960, 36.343979, 36.952976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380264, 36.759567, 36.249905>,  <42.674103, 36.459377, 36.511532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380264, 36.759567, 36.249905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503284, 36.484184, 36.512638>,  <43.577099, 36.318954, 36.670277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503284, 36.484184, 36.512638>,  <43.380264, 36.759567, 36.249905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503284, 36.484184, 36.512638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692445, -0.311521, -0.650749,
		0.652633, 0.654963, 0.380911,
		0.307554, -0.688461, 0.656835,
		43.595551, 36.277645, 36.709690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074524, 36.753498, 36.194611>,  <43.380264, 36.759567, 36.249905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074524, 36.753498, 36.194611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961845, 36.389481, 36.316250>,  <43.894238, 36.171070, 36.389233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961845, 36.389481, 36.316250>,  <44.074524, 36.753498, 36.194611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961845, 36.389481, 36.316250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583737, -0.414076, -0.698421,
		0.761509, -0.019233, 0.647869,
		-0.281699, -0.910039, 0.304096,
		43.877335, 36.116470, 36.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667789, 36.406963, 35.921097>,  <44.074524, 36.753498, 36.194611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667789, 36.406963, 35.921097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410645, 36.129269, 36.050560>,  <44.256355, 35.962650, 36.128239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.410645, 36.129269, 36.050560>,  <44.667789, 36.406963, 35.921097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410645, 36.129269, 36.050560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530295, -0.708285, -0.465961,
		0.552731, -0.127916, 0.823484,
		-0.642865, -0.694241, 0.323657,
		44.217785, 35.920998, 36.147655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064110, 35.787052, 36.199032>,  <44.667789, 36.406963, 35.921097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064110, 35.787052, 36.199032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.697918, 35.650398, 36.114002>,  <44.478203, 35.568405, 36.062984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.697918, 35.650398, 36.114002>,  <45.064110, 35.787052, 36.199032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697918, 35.650398, 36.114002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402364, -0.774686, -0.487816,
		0.001980, -0.532115, 0.846670,
		-0.915478, -0.341635, -0.212570,
		44.423275, 35.547909, 36.050232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106503, 35.128059, 36.388382>,  <45.064110, 35.787052, 36.199032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106503, 35.128059, 36.388382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801643, 35.145142, 36.129986>,  <44.618729, 35.155392, 35.974949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801643, 35.145142, 36.129986>,  <45.106503, 35.128059, 36.388382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801643, 35.145142, 36.129986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320010, -0.842550, -0.433248,
		-0.562782, -0.536923, 0.628482,
		-0.762149, 0.042703, -0.645992,
		44.572998, 35.157951, 35.936188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772770, 35.252769, 36.242107>,  <45.106503, 35.128059, 36.388382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772770, 35.252769, 36.242107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168068, 35.205975, 36.281483>,  <46.405247, 35.177898, 36.305107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168068, 35.205975, 36.281483>,  <45.772770, 35.252769, 36.242107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168068, 35.205975, 36.281483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072084, 0.211266, 0.974767,
		-0.134835, -0.970402, 0.200349,
		0.988242, -0.116991, 0.098437,
		46.464542, 35.170879, 36.311012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015972, 34.762402, 36.825161>,  <45.772770, 35.252769, 36.242107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.015972, 34.762402, 36.825161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.330109, 35.006969, 36.786381>,  <46.518593, 35.153709, 36.763111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.330109, 35.006969, 36.786381>,  <46.015972, 34.762402, 36.825161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330109, 35.006969, 36.786381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001846, 0.154296, 0.988023,
		0.619055, -0.776119, 0.120048,
		0.785346, 0.611419, -0.096950,
		46.565712, 35.190395, 36.757298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.513653, 34.602680, 37.338161>,  <46.015972, 34.762402, 36.825161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.513653, 34.602680, 37.338161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562435, 34.990692, 37.254093>,  <46.591705, 35.223499, 37.203651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562435, 34.990692, 37.254093>,  <46.513653, 34.602680, 37.338161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562435, 34.990692, 37.254093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272988, 0.236370, 0.932527,
		0.954256, -0.056352, 0.293632,
		0.121956, 0.970028, -0.210174,
		46.599022, 35.281700, 37.191040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831409, 34.813038, 37.847336>,  <46.513653, 34.602680, 37.338161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831409, 34.813038, 37.847336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.723408, 35.157654, 37.675362>,  <46.658607, 35.364426, 37.572178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.723408, 35.157654, 37.675362>,  <46.831409, 34.813038, 37.847336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723408, 35.157654, 37.675362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242713, 0.371198, 0.896272,
		0.931766, 0.346347, 0.108883,
		-0.270004, 0.861543, -0.429933,
		46.642406, 35.416115, 37.546383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.131271, 35.305161, 38.308094>,  <46.831409, 34.813038, 37.847336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.131271, 35.305161, 38.308094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850025, 35.531700, 38.136101>,  <46.681278, 35.667622, 38.032906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850025, 35.531700, 38.136101>,  <47.131271, 35.305161, 38.308094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850025, 35.531700, 38.136101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143205, 0.479526, 0.865764,
		0.696509, 0.670305, -0.256057,
		-0.703112, 0.566344, -0.429985,
		46.639091, 35.701603, 38.007107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258862, 36.006264, 38.547729>,  <47.131271, 35.305161, 38.308094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258862, 36.006264, 38.547729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.883587, 35.988663, 38.410400>,  <46.658421, 35.978104, 38.328003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.883587, 35.988663, 38.410400>,  <47.258862, 36.006264, 38.547729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883587, 35.988663, 38.410400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322346, 0.472409, 0.820319,
		0.126095, 0.880281, -0.457390,
		-0.938186, -0.043999, -0.343323,
		46.602131, 35.975464, 38.307404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001049, 36.648312, 38.554329>,  <47.258862, 36.006264, 38.547729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001049, 36.648312, 38.554329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.670578, 36.425148, 38.585743>,  <46.472294, 36.291252, 38.604591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.670578, 36.425148, 38.585743>,  <47.001049, 36.648312, 38.554329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670578, 36.425148, 38.585743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273609, 0.519162, 0.809697,
		-0.492509, 0.647466, -0.581569,
		-0.826180, -0.557905, 0.078540,
		46.422726, 36.257778, 38.609306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368900, 37.094681, 38.605450>,  <47.001049, 36.648312, 38.554329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368900, 37.094681, 38.605450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.255436, 36.746387, 38.766129>,  <46.187355, 36.537411, 38.862534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.255436, 36.746387, 38.766129>,  <46.368900, 37.094681, 38.605450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255436, 36.746387, 38.766129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353482, 0.484350, 0.800285,
		-0.891395, 0.085021, -0.445182,
		-0.283665, -0.870733, 0.401694,
		46.170338, 36.485168, 38.886635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708046, 37.275112, 38.824261>,  <46.368900, 37.094681, 38.605450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708046, 37.275112, 38.824261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799950, 36.922047, 38.988270>,  <45.855091, 36.710209, 39.086674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799950, 36.922047, 38.988270>,  <45.708046, 37.275112, 38.824261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799950, 36.922047, 38.988270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399241, 0.298735, 0.866813,
		-0.887590, -0.362858, -0.283756,
		0.229762, -0.882662, 0.410022,
		45.868877, 36.657249, 39.111275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090744, 37.017452, 39.088711>,  <45.708046, 37.275112, 38.824261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090744, 37.017452, 39.088711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373749, 36.821781, 39.292725>,  <45.543552, 36.704380, 39.415131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373749, 36.821781, 39.292725>,  <45.090744, 37.017452, 39.088711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373749, 36.821781, 39.292725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413033, 0.299383, 0.860101,
		-0.573434, -0.819193, 0.009773,
		0.707515, -0.489175, 0.510030,
		45.586002, 36.675030, 39.445732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761749, 36.555996, 39.451656>,  <45.090744, 37.017452, 39.088711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761749, 36.555996, 39.451656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097912, 36.593647, 39.665146>,  <45.299610, 36.616238, 39.793240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097912, 36.593647, 39.665146>,  <44.761749, 36.555996, 39.451656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097912, 36.593647, 39.665146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541601, 0.110077, 0.833398,
		0.019692, -0.989456, 0.143486,
		0.840405, 0.094123, 0.533723,
		45.350033, 36.621883, 39.825264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630939, 36.165077, 40.111031>,  <44.761749, 36.555996, 39.451656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630939, 36.165077, 40.111031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922035, 36.437496, 40.143459>,  <45.096691, 36.600948, 40.162918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922035, 36.437496, 40.143459>,  <44.630939, 36.165077, 40.111031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922035, 36.437496, 40.143459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360773, 0.279584, 0.889762,
		0.583305, -0.676760, 0.449167,
		0.727735, 0.681050, 0.081074,
		45.140354, 36.641811, 40.167782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671669, 36.156281, 40.796234>,  <44.630939, 36.165077, 40.111031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671669, 36.156281, 40.796234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868649, 36.483082, 40.676231>,  <44.986835, 36.679161, 40.604229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868649, 36.483082, 40.676231>,  <44.671669, 36.156281, 40.796234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868649, 36.483082, 40.676231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306597, 0.485443, 0.818745,
		0.814552, -0.311208, 0.489546,
		0.492446, 0.817003, -0.300003,
		45.016384, 36.728184, 40.586231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074837, 36.383324, 41.334362>,  <44.671669, 36.156281, 40.796234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074837, 36.383324, 41.334362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014107, 36.698944, 41.096256>,  <44.977669, 36.888317, 40.953392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014107, 36.698944, 41.096256>,  <45.074837, 36.383324, 41.334362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014107, 36.698944, 41.096256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349361, 0.520534, 0.779096,
		0.924607, 0.326246, 0.196637,
		-0.151821, 0.789055, -0.595267,
		44.968559, 36.935661, 40.917675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305027, 36.965157, 41.722229>,  <45.074837, 36.383324, 41.334362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305027, 36.965157, 41.722229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105492, 37.155647, 41.432575>,  <44.985771, 37.269943, 41.258781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.105492, 37.155647, 41.432575>,  <45.305027, 36.965157, 41.722229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105492, 37.155647, 41.432575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357374, 0.648156, 0.672442,
		0.789587, 0.594224, -0.153132,
		-0.498834, 0.476226, -0.724136,
		44.955841, 37.298515, 41.215336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441406, 37.664806, 41.881821>,  <45.305027, 36.965157, 41.722229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441406, 37.664806, 41.881821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109100, 37.702549, 41.662395>,  <44.909718, 37.725193, 41.530743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109100, 37.702549, 41.662395>,  <45.441406, 37.664806, 41.881821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109100, 37.702549, 41.662395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250913, 0.816230, 0.520395,
		0.496856, 0.569969, -0.654423,
		-0.830769, 0.094358, -0.548561,
		44.859871, 37.730858, 41.497826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321068, 38.446133, 41.750626>,  <45.441406, 37.664806, 41.881821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321068, 38.446133, 41.750626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973125, 38.254646, 41.702999>,  <44.764359, 38.139755, 41.674423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973125, 38.254646, 41.702999>,  <45.321068, 38.446133, 41.750626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973125, 38.254646, 41.702999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477040, 0.754857, 0.450136,
		-0.125609, 0.448354, -0.884986,
		-0.869859, -0.478715, -0.119066,
		44.712166, 38.111031, 41.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898273, 38.925346, 41.419643>,  <45.321068, 38.446133, 41.750626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898273, 38.925346, 41.419643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660507, 38.659489, 41.600716>,  <44.517849, 38.499973, 41.709358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660507, 38.659489, 41.600716>,  <44.898273, 38.925346, 41.419643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660507, 38.659489, 41.600716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489136, 0.745646, 0.452502,
		-0.638292, 0.047553, -0.768324,
		-0.594416, -0.664643, 0.452680,
		44.482182, 38.460094, 41.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304539, 39.213108, 41.312176>,  <44.898273, 38.925346, 41.419643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304539, 39.213108, 41.312176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260437, 38.980015, 41.634235>,  <44.233978, 38.840160, 41.827473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.260437, 38.980015, 41.634235>,  <44.304539, 39.213108, 41.312176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260437, 38.980015, 41.634235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601903, 0.683794, 0.412478,
		-0.790922, -0.439147, -0.426137,
		-0.110251, -0.582731, 0.805152,
		44.227360, 38.805195, 41.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612938, 39.238499, 41.462120>,  <44.304539, 39.213108, 41.312176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612938, 39.238499, 41.462120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782082, 39.117901, 41.803947>,  <43.883568, 39.045544, 42.009045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782082, 39.117901, 41.803947>,  <43.612938, 39.238499, 41.462120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782082, 39.117901, 41.803947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547623, 0.666343, 0.506060,
		-0.722011, -0.681975, 0.116666,
		0.422859, -0.301491, 0.854572,
		43.908939, 39.027454, 42.060318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994560, 39.177525, 41.898014>,  <43.612938, 39.238499, 41.462120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994560, 39.177525, 41.898014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318249, 39.185268, 42.132885>,  <43.512463, 39.189915, 42.273808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318249, 39.185268, 42.132885>,  <42.994560, 39.177525, 41.898014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318249, 39.185268, 42.132885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365193, 0.799482, 0.476930,
		-0.460206, -0.600378, 0.654031,
		0.809225, 0.019361, 0.587180,
		43.561016, 39.191078, 42.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.152843, 35.407711, 41.632664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804993, 35.250801, 41.512745>,  <39.596283, 35.156654, 41.440796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804993, 35.250801, 41.512745>,  <40.152843, 35.407711, 41.632664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804993, 35.250801, 41.512745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261118, 0.149915, -0.953595,
		0.419012, -0.907550, -0.027941,
		-0.869624, -0.392272, -0.299794,
		39.544106, 35.133121, 41.422806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368237, 35.006931, 41.035519>,  <40.152843, 35.407711, 41.632664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368237, 35.006931, 41.035519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972157, 35.048271, 40.997932>,  <39.734509, 35.073074, 40.975380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972157, 35.048271, 40.997932>,  <40.368237, 35.006931, 41.035519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972157, 35.048271, 40.997932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105028, 0.107403, -0.988652,
		-0.092090, -0.988829, -0.117206,
		-0.990196, 0.103355, -0.093964,
		39.675098, 35.079277, 40.969742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097927, 34.664856, 40.424080>,  <40.368237, 35.006931, 41.035519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097927, 34.664856, 40.424080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773174, 34.887253, 40.495331>,  <39.578323, 35.020691, 40.538082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773174, 34.887253, 40.495331>,  <40.097927, 34.664856, 40.424080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773174, 34.887253, 40.495331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120892, 0.138386, -0.982972,
		-0.571170, -0.819589, -0.045139,
		-0.811880, 0.555988, 0.178124,
		39.529610, 35.054050, 40.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518326, 34.391926, 40.031700>,  <40.097927, 34.664856, 40.424080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518326, 34.391926, 40.031700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440880, 34.777061, 40.107018>,  <39.394413, 35.008144, 40.152206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440880, 34.777061, 40.107018>,  <39.518326, 34.391926, 40.031700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440880, 34.777061, 40.107018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208018, 0.147268, -0.966975,
		-0.958770, -0.226392, 0.171774,
		-0.193618, 0.962839, 0.188290,
		39.382793, 35.065914, 40.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011841, 34.492054, 39.563133>,  <39.518326, 34.391926, 40.031700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011841, 34.492054, 39.563133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101482, 34.868328, 39.665028>,  <39.155266, 35.094093, 39.726162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101482, 34.868328, 39.665028>,  <39.011841, 34.492054, 39.563133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101482, 34.868328, 39.665028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250094, 0.308139, -0.917880,
		-0.941929, 0.141993, 0.304315,
		0.224104, 0.940685, 0.254733,
		39.168713, 35.150532, 39.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461876, 34.880386, 39.289803>,  <39.011841, 34.492054, 39.563133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461876, 34.880386, 39.289803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775013, 35.125011, 39.335670>,  <38.962894, 35.271786, 39.363190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775013, 35.125011, 39.335670>,  <38.461876, 34.880386, 39.289803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775013, 35.125011, 39.335670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074173, 0.274698, -0.958665,
		-0.617780, 0.741981, 0.260407,
		0.782845, 0.611560, 0.114668,
		39.009865, 35.308479, 39.370071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294544, 35.444862, 38.979202>,  <38.461876, 34.880386, 39.289803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294544, 35.444862, 38.979202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692326, 35.486752, 38.975475>,  <38.930996, 35.511887, 38.973240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692326, 35.486752, 38.975475>,  <38.294544, 35.444862, 38.979202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692326, 35.486752, 38.975475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050160, 0.394716, -0.917433,
		-0.092398, 0.912816, 0.397781,
		0.994458, 0.104722, -0.009316,
		38.990662, 35.518169, 38.972679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459816, 36.155689, 38.711369>,  <38.294544, 35.444862, 38.979202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459816, 36.155689, 38.711369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791359, 35.945187, 38.635418>,  <38.990284, 35.818886, 38.589848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791359, 35.945187, 38.635418>,  <38.459816, 36.155689, 38.711369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791359, 35.945187, 38.635418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040219, 0.282459, -0.958436,
		0.558011, 0.802044, 0.212953,
		0.828858, -0.526254, -0.189872,
		39.040016, 35.787312, 38.578457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884258, 36.553753, 38.325703>,  <38.459816, 36.155689, 38.711369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884258, 36.553753, 38.325703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007210, 36.181690, 38.245373>,  <39.080982, 35.958454, 38.197174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007210, 36.181690, 38.245373>,  <38.884258, 36.553753, 38.325703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007210, 36.181690, 38.245373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114242, 0.173449, -0.978194,
		0.944705, 0.323620, -0.052948,
		0.307379, -0.930154, -0.200829,
		39.099422, 35.902645, 38.185123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338223, 36.703915, 37.834846>,  <38.884258, 36.553753, 38.325703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338223, 36.703915, 37.834846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272709, 36.311279, 37.795517>,  <39.233398, 36.075699, 37.771919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272709, 36.311279, 37.795517>,  <39.338223, 36.703915, 37.834846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272709, 36.311279, 37.795517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278054, 0.049693, -0.959279,
		0.946499, -0.184456, 0.264794,
		-0.163787, -0.981584, -0.098323,
		39.223572, 36.016804, 37.766022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972511, 36.309853, 37.585747>,  <39.338223, 36.703915, 37.834846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972511, 36.309853, 37.585747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649487, 36.096371, 37.485336>,  <39.455673, 35.968281, 37.425091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649487, 36.096371, 37.485336>,  <39.972511, 36.309853, 37.585747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649487, 36.096371, 37.485336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353388, -0.097102, -0.930424,
		0.472193, -0.840080, 0.267019,
		-0.807559, -0.533701, -0.251023,
		39.407219, 35.936260, 37.410030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304783, 35.814999, 37.070362>,  <39.972511, 36.309853, 37.585747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304783, 35.814999, 37.070362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906319, 35.810581, 37.035633>,  <39.667240, 35.807930, 37.014793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906319, 35.810581, 37.035633>,  <40.304783, 35.814999, 37.070362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906319, 35.810581, 37.035633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086873, -0.245638, -0.965461,
		-0.010661, -0.969299, 0.245656,
		-0.996162, -0.011048, -0.086824,
		39.607471, 35.807266, 37.009586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119781, 35.243469, 36.690285>,  <40.304783, 35.814999, 37.070362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119781, 35.243469, 36.690285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803879, 35.476677, 36.614002>,  <39.614338, 35.616604, 36.568233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803879, 35.476677, 36.614002>,  <40.119781, 35.243469, 36.690285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803879, 35.476677, 36.614002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173010, -0.086567, -0.981108,
		-0.588519, -0.807830, -0.032502,
		-0.789755, 0.583024, -0.190709,
		39.566952, 35.651585, 36.556789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464058, 34.888138, 36.211487>,  <40.119781, 35.243469, 36.690285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464058, 34.888138, 36.211487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390499, 35.252193, 36.062984>,  <40.346363, 35.470627, 35.973881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390499, 35.252193, 36.062984>,  <40.464058, 34.888138, 36.211487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390499, 35.252193, 36.062984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827174, -0.060752, -0.558653,
		-0.531006, -0.409828, -0.741670,
		-0.183894, 0.910137, -0.371259,
		40.335331, 35.525234, 35.951607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517059, 34.874371, 35.411602>,  <40.464058, 34.888138, 36.211487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517059, 34.874371, 35.411602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774540, 34.604210, 35.267673>,  <40.929028, 34.442112, 35.181316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774540, 34.604210, 35.267673>,  <40.517059, 34.874371, 35.411602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774540, 34.604210, 35.267673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289819, -0.650314, 0.702208,
		-0.708273, -0.347731, -0.614355,
		0.643704, -0.675407, -0.359821,
		40.967651, 34.401588, 35.159729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261955, 34.157417, 35.357536>,  <40.517059, 34.874371, 35.411602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261955, 34.157417, 35.357536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658154, 34.137463, 35.408810>,  <40.895874, 34.125492, 35.439575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658154, 34.137463, 35.408810>,  <40.261955, 34.157417, 35.357536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658154, 34.137463, 35.408810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121442, -0.754772, 0.644648,
		0.064595, -0.654088, -0.753655,
		0.990494, -0.049884, 0.128188,
		40.955303, 34.122498, 35.447266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325184, 33.511448, 35.390697>,  <40.261955, 34.157417, 35.357536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325184, 33.511448, 35.390697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648319, 33.658382, 35.575069>,  <40.842201, 33.746544, 35.685692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648319, 33.658382, 35.575069>,  <40.325184, 33.511448, 35.390697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648319, 33.658382, 35.575069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209336, -0.552226, 0.806985,
		0.550974, -0.748405, -0.369213,
		0.807841, 0.367339, 0.460930,
		40.890671, 33.768585, 35.713348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434475, 33.024307, 35.871201>,  <40.325184, 33.511448, 35.390697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434475, 33.024307, 35.871201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677719, 33.312954, 36.003548>,  <40.823666, 33.486141, 36.082958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677719, 33.312954, 36.003548>,  <40.434475, 33.024307, 35.871201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677719, 33.312954, 36.003548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102552, -0.484709, 0.868643,
		0.787201, -0.494299, -0.368759,
		0.608110, 0.721613, 0.330872,
		40.860153, 33.529438, 36.102810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116211, 32.664909, 36.140171>,  <40.434475, 33.024307, 35.871201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116211, 32.664909, 36.140171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083084, 33.025490, 36.310127>,  <41.063206, 33.241837, 36.412102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083084, 33.025490, 36.310127>,  <41.116211, 32.664909, 36.140171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083084, 33.025490, 36.310127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054659, -0.421602, 0.905132,
		0.995064, 0.098188, -0.014355,
		-0.082820, 0.901449, 0.424888,
		41.058239, 33.295925, 36.437595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600430, 32.679787, 36.659332>,  <41.116211, 32.664909, 36.140171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600430, 32.679787, 36.659332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330475, 32.953590, 36.769581>,  <41.168503, 33.117874, 36.835728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330475, 32.953590, 36.769581>,  <41.600430, 32.679787, 36.659332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330475, 32.953590, 36.769581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082803, -0.441398, 0.893483,
		0.733257, 0.580181, 0.354575,
		-0.674891, 0.684513, 0.275618,
		41.128006, 33.158943, 36.852264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867348, 32.956402, 37.235847>,  <41.600430, 32.679787, 36.659332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867348, 32.956402, 37.235847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475628, 33.035999, 37.250641>,  <41.240597, 33.083755, 37.259518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475628, 33.035999, 37.250641>,  <41.867348, 32.956402, 37.235847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475628, 33.035999, 37.250641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052407, -0.425816, 0.903291,
		0.195495, 0.882657, 0.427432,
		-0.979303, 0.198990, 0.036987,
		41.181835, 33.095695, 37.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655334, 33.257103, 37.956944>,  <41.867348, 32.956402, 37.235847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655334, 33.257103, 37.956944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281521, 33.182251, 37.835861>,  <41.057232, 33.137341, 37.763210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281521, 33.182251, 37.835861>,  <41.655334, 33.257103, 37.956944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281521, 33.182251, 37.835861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197402, -0.435169, 0.878442,
		-0.296113, 0.880687, 0.369740,
		-0.934532, -0.187131, -0.302708,
		41.001160, 33.126110, 37.745049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243435, 33.507378, 38.576958>,  <41.655334, 33.257103, 37.956944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243435, 33.507378, 38.576958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033863, 33.240608, 38.365028>,  <40.908119, 33.080547, 38.237869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033863, 33.240608, 38.365028>,  <41.243435, 33.507378, 38.576958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033863, 33.240608, 38.365028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058867, -0.592196, 0.803641,
		-0.849724, 0.452242, 0.271011,
		-0.523931, -0.666919, -0.529825,
		40.876682, 33.040531, 38.206081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605495, 33.347240, 38.996803>,  <41.243435, 33.507378, 38.576958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605495, 33.347240, 38.996803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673531, 33.046928, 38.741489>,  <40.714352, 32.866741, 38.588303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673531, 33.046928, 38.741489>,  <40.605495, 33.347240, 38.996803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673531, 33.046928, 38.741489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039622, -0.652409, 0.756831,
		-0.984632, -0.103438, -0.140714,
		0.170088, -0.750775, -0.638284,
		40.724556, 32.821697, 38.550003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095062, 32.944935, 39.152924>,  <40.605495, 33.347240, 38.996803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095062, 32.944935, 39.152924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372692, 32.720764, 38.972176>,  <40.539268, 32.586262, 38.863728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372692, 32.720764, 38.972176>,  <40.095062, 32.944935, 39.152924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372692, 32.720764, 38.972176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086122, -0.687814, 0.720760,
		-0.714738, -0.461341, -0.525655,
		0.694069, -0.560425, -0.451876,
		40.580914, 32.552639, 38.836613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822269, 32.237701, 39.242428>,  <40.095062, 32.944935, 39.152924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822269, 32.237701, 39.242428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210152, 32.190807, 39.156712>,  <40.442883, 32.162670, 39.105282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210152, 32.190807, 39.156712>,  <39.822269, 32.237701, 39.242428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210152, 32.190807, 39.156712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068948, -0.710259, 0.700555,
		-0.234333, -0.694109, -0.680661,
		0.969708, -0.117233, -0.214295,
		40.501064, 32.155636, 39.092422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956089, 31.474941, 39.146561>,  <39.822269, 32.237701, 39.242428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956089, 31.474941, 39.146561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295471, 31.670439, 39.227798>,  <40.499100, 31.787737, 39.276543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295471, 31.670439, 39.227798>,  <39.956089, 31.474941, 39.146561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295471, 31.670439, 39.227798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210169, -0.663315, 0.718222,
		0.485744, -0.566697, -0.665514,
		0.848459, 0.488742, 0.203099,
		40.550011, 31.817060, 39.288727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486828, 30.973217, 39.102600>,  <39.956089, 31.474941, 39.146561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486828, 30.973217, 39.102600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632927, 31.279684, 39.314102>,  <40.720585, 31.463564, 39.441002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632927, 31.279684, 39.314102>,  <40.486828, 30.973217, 39.102600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632927, 31.279684, 39.314102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047736, -0.582666, 0.811308,
		0.929686, -0.271086, -0.249391,
		0.365246, 0.766167, 0.528756,
		40.742500, 31.509535, 39.472729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610275, 30.233768, 38.924953>,  <40.486828, 30.973217, 39.102600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610275, 30.233768, 38.924953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278782, 30.020813, 38.855946>,  <40.079887, 29.893040, 38.814541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278782, 30.020813, 38.855946>,  <40.610275, 30.233768, 38.924953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278782, 30.020813, 38.855946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020612, 0.279020, -0.960064,
		0.559264, -0.799194, -0.220260,
		-0.828734, -0.532389, -0.172518,
		40.030163, 29.861097, 38.804192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703510, 29.878223, 38.293583>,  <40.610275, 30.233768, 38.924953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703510, 29.878223, 38.293583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314217, 29.943241, 38.358570>,  <40.080639, 29.982252, 38.397564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314217, 29.943241, 38.358570>,  <40.703510, 29.878223, 38.293583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314217, 29.943241, 38.358570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100726, 0.333743, -0.937267,
		-0.206573, -0.928544, -0.308437,
		-0.973233, 0.162546, 0.162471,
		40.022247, 29.992004, 38.407310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398251, 29.653154, 37.588001>,  <40.703510, 29.878223, 38.293583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398251, 29.653154, 37.588001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115150, 29.844925, 37.795555>,  <39.945290, 29.959988, 37.920086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115150, 29.844925, 37.795555>,  <40.398251, 29.653154, 37.588001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115150, 29.844925, 37.795555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326777, 0.429019, -0.842116,
		-0.626343, -0.765568, -0.146973,
		-0.707751, 0.479426, 0.518883,
		39.902824, 29.988752, 37.951221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637539, 29.501064, 37.349995>,  <40.398251, 29.653154, 37.588001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637539, 29.501064, 37.349995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665958, 29.862257, 37.519501>,  <39.683010, 30.078972, 37.621204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665958, 29.862257, 37.519501>,  <39.637539, 29.501064, 37.349995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665958, 29.862257, 37.519501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205542, 0.428973, -0.879622,
		-0.976066, -0.024606, 0.216078,
		0.071048, 0.902982, 0.423764,
		39.687271, 30.133152, 37.646629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045868, 29.713932, 37.089710>,  <39.637539, 29.501064, 37.349995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045868, 29.713932, 37.089710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257702, 30.022976, 37.229778>,  <39.384804, 30.208403, 37.313820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257702, 30.022976, 37.229778>,  <39.045868, 29.713932, 37.089710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257702, 30.022976, 37.229778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358360, 0.577939, -0.733188,
		-0.768843, 0.262799, 0.582939,
		0.529584, 0.772609, 0.350168,
		39.416576, 30.254759, 37.334827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622684, 30.219158, 36.997307>,  <39.045868, 29.713932, 37.089710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622684, 30.219158, 36.997307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983326, 30.385717, 37.044159>,  <39.199711, 30.485653, 37.072269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983326, 30.385717, 37.044159>,  <38.622684, 30.219158, 36.997307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983326, 30.385717, 37.044159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232589, 0.695000, -0.680351,
		-0.364704, 0.586164, 0.723466,
		0.901606, 0.416397, 0.117134,
		39.253807, 30.510637, 37.079300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526726, 30.922279, 37.171616>,  <38.622684, 30.219158, 36.997307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526726, 30.922279, 37.171616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879536, 30.908106, 36.983665>,  <39.091221, 30.899601, 36.870895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879536, 30.908106, 36.983665>,  <38.526726, 30.922279, 37.171616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879536, 30.908106, 36.983665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263503, 0.789589, -0.554180,
		0.390646, 0.612613, 0.687097,
		0.882022, -0.035436, -0.469875,
		39.144142, 30.897474, 36.842705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550884, 31.517328, 36.873646>,  <38.526726, 30.922279, 37.171616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550884, 31.517328, 36.873646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846394, 31.337465, 36.672840>,  <39.023701, 31.229548, 36.552357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846394, 31.337465, 36.672840>,  <38.550884, 31.517328, 36.873646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846394, 31.337465, 36.672840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219521, 0.543706, -0.810058,
		0.637196, 0.708655, 0.302969,
		0.738777, -0.449658, -0.502012,
		39.068027, 31.202568, 36.522236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980701, 32.003468, 36.422718>,  <38.550884, 31.517328, 36.873646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980701, 32.003468, 36.422718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012993, 31.642982, 36.252399>,  <39.032368, 31.426691, 36.150208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012993, 31.642982, 36.252399>,  <38.980701, 32.003468, 36.422718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012993, 31.642982, 36.252399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175636, 0.407643, -0.896091,
		0.981140, 0.147123, -0.125378,
		0.080726, -0.901211, -0.425795,
		39.037212, 31.372620, 36.124660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342419, 32.184597, 35.922169>,  <38.980701, 32.003468, 36.422718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342419, 32.184597, 35.922169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174221, 31.834080, 35.828114>,  <39.073303, 31.623768, 35.771679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174221, 31.834080, 35.828114>,  <39.342419, 32.184597, 35.922169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174221, 31.834080, 35.828114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267515, 0.367390, -0.890764,
		0.866960, -0.311658, -0.388907,
		-0.420494, -0.876296, -0.235140,
		39.048073, 31.571192, 35.757572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425369, 32.144775, 35.307842>,  <39.342419, 32.184597, 35.922169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425369, 32.144775, 35.307842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134022, 31.871243, 35.325085>,  <38.959213, 31.707123, 35.335430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134022, 31.871243, 35.325085>,  <39.425369, 32.144775, 35.307842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134022, 31.871243, 35.325085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298074, 0.259581, -0.918569,
		0.616958, -0.681902, -0.392902,
		-0.728364, -0.683833, 0.043107,
		38.915512, 31.666092, 35.338017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481457, 31.760628, 34.634140>,  <39.425369, 32.144775, 35.307842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481457, 31.760628, 34.634140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111877, 31.733801, 34.784779>,  <38.890129, 31.717705, 34.875164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111877, 31.733801, 34.784779>,  <39.481457, 31.760628, 34.634140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111877, 31.733801, 34.784779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376401, 0.334839, -0.863832,
		-0.068168, -0.939885, -0.334616,
		-0.923946, -0.067064, 0.376599,
		38.834694, 31.713682, 34.897758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.968315, 28.330755, 42.529156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.619453, 28.487396, 42.411858>,  <39.410137, 28.581381, 42.341480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.619453, 28.487396, 42.411858>,  <39.968315, 28.330755, 42.529156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619453, 28.487396, 42.411858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341704, 0.058634, -0.937977,
		-0.350121, -0.918264, -0.184950,
		-0.872155, 0.391603, -0.293246,
		39.357807, 28.604877, 42.323883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886684, 27.973536, 41.924828>,  <39.968315, 28.330755, 42.529156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886684, 27.973536, 41.924828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630737, 28.279245, 41.892712>,  <39.477169, 28.462671, 41.873440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630737, 28.279245, 41.892712>,  <39.886684, 27.973536, 41.924828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630737, 28.279245, 41.892712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191356, 0.057267, -0.979849,
		-0.744276, -0.642342, -0.182892,
		-0.639872, 0.764275, -0.080293,
		39.438774, 28.508528, 41.868622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463448, 27.842237, 41.274746>,  <39.886684, 27.973536, 41.924828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463448, 27.842237, 41.274746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415009, 28.234163, 41.338375>,  <39.385944, 28.469318, 41.376553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.415009, 28.234163, 41.338375>,  <39.463448, 27.842237, 41.274746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415009, 28.234163, 41.338375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116738, 0.173194, -0.977945,
		-0.985752, -0.099859, -0.135355,
		-0.121099, 0.979813, 0.159069,
		39.378677, 28.528107, 41.386097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046646, 28.005445, 40.680115>,  <39.463448, 27.842237, 41.274746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046646, 28.005445, 40.680115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156124, 28.365179, 40.816525>,  <39.221809, 28.581018, 40.898369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156124, 28.365179, 40.816525>,  <39.046646, 28.005445, 40.680115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156124, 28.365179, 40.816525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245051, 0.277657, -0.928901,
		-0.930076, 0.337801, -0.144390,
		0.273693, 0.899332, 0.341021,
		39.238232, 28.634979, 40.918831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621075, 28.580996, 40.250652>,  <39.046646, 28.005445, 40.680115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621075, 28.580996, 40.250652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940178, 28.759184, 40.413204>,  <39.131638, 28.866096, 40.510735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.940178, 28.759184, 40.413204>,  <38.621075, 28.580996, 40.250652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940178, 28.759184, 40.413204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188189, 0.456350, -0.869672,
		-0.572864, 0.770261, 0.280222,
		0.797754, 0.445469, 0.406382,
		39.179504, 28.892824, 40.535118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539112, 29.392389, 40.090595>,  <38.621075, 28.580996, 40.250652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539112, 29.392389, 40.090595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924114, 29.314533, 40.166180>,  <39.155113, 29.267820, 40.211529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.924114, 29.314533, 40.166180>,  <38.539112, 29.392389, 40.090595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924114, 29.314533, 40.166180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231159, 0.223938, -0.946793,
		0.141967, 0.954970, 0.260533,
		0.962502, -0.194638, 0.188958,
		39.212864, 29.256142, 40.222866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917686, 30.101616, 39.989033>,  <38.539112, 29.392389, 40.090595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917686, 30.101616, 39.989033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170303, 29.793028, 39.958076>,  <39.321873, 29.607876, 39.939503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170303, 29.793028, 39.958076>,  <38.917686, 30.101616, 39.989033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170303, 29.793028, 39.958076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303715, 0.337987, -0.890798,
		0.713381, 0.539072, 0.447760,
		0.631542, -0.771470, -0.077389,
		39.359764, 29.561586, 39.934860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526917, 30.428289, 39.871540>,  <38.917686, 30.101616, 39.989033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526917, 30.428289, 39.871540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580006, 30.058563, 39.728416>,  <39.611858, 29.836727, 39.642544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.580006, 30.058563, 39.728416>,  <39.526917, 30.428289, 39.871540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580006, 30.058563, 39.728416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402095, 0.380175, -0.832938,
		0.905927, -0.033324, 0.422120,
		0.132723, -0.924314, -0.357810,
		39.619823, 29.781269, 39.621075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179207, 30.463051, 39.483551>,  <39.526917, 30.428289, 39.871540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179207, 30.463051, 39.483551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983646, 30.141014, 39.349201>,  <39.866310, 29.947792, 39.268593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983646, 30.141014, 39.349201>,  <40.179207, 30.463051, 39.483551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983646, 30.141014, 39.349201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215312, 0.261745, -0.940814,
		0.845352, -0.532278, 0.045380,
		-0.488897, -0.805090, -0.335873,
		39.836979, 29.899487, 39.248440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963230, 30.564720, 39.548676>,  <40.179207, 30.463051, 39.483551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963230, 30.564720, 39.548676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954319, 30.929724, 39.712055>,  <40.948975, 31.148726, 39.810081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954319, 30.929724, 39.712055>,  <40.963230, 30.564720, 39.548676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954319, 30.929724, 39.712055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116434, -0.403400, 0.907586,
		0.992949, 0.067774, -0.097261,
		-0.022276, 0.912510, 0.408446,
		40.947636, 31.203476, 39.834591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592529, 30.789625, 39.995766>,  <40.963230, 30.564720, 39.548676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592529, 30.789625, 39.995766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288017, 31.018705, 40.117401>,  <41.105312, 31.156155, 40.190384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288017, 31.018705, 40.117401>,  <41.592529, 30.789625, 39.995766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288017, 31.018705, 40.117401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208127, -0.228340, 0.951075,
		0.614119, 0.787320, 0.054635,
		-0.761276, 0.572703, 0.304091,
		41.059635, 31.190516, 40.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860157, 31.259735, 40.558407>,  <41.592529, 30.789625, 39.995766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860157, 31.259735, 40.558407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.463539, 31.252491, 40.609806>,  <41.225567, 31.248144, 40.640648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.463539, 31.252491, 40.609806>,  <41.860157, 31.259735, 40.558407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463539, 31.252491, 40.609806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129477, -0.071408, 0.989008,
		-0.008733, 0.997283, 0.073149,
		-0.991544, -0.018108, 0.128502,
		41.166077, 31.247059, 40.648357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633305, 31.641111, 41.201477>,  <41.860157, 31.259735, 40.558407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633305, 31.641111, 41.201477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.314625, 31.405689, 41.146511>,  <41.123417, 31.264437, 41.113533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.314625, 31.405689, 41.146511>,  <41.633305, 31.641111, 41.201477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314625, 31.405689, 41.146511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146550, -0.032452, 0.988671,
		-0.586345, 0.807807, -0.060398,
		-0.796695, -0.588553, -0.137412,
		41.075615, 31.229124, 41.105286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143921, 31.955824, 41.672039>,  <41.633305, 31.641111, 41.201477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143921, 31.955824, 41.672039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.991402, 31.593557, 41.597870>,  <40.899891, 31.376198, 41.553368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.991402, 31.593557, 41.597870>,  <41.143921, 31.955824, 41.672039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991402, 31.593557, 41.597870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177217, -0.125249, 0.976169,
		-0.907307, 0.405073, -0.112742,
		-0.381299, -0.905665, -0.185425,
		40.877010, 31.321857, 41.542244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497982, 31.785288, 42.114868>,  <41.143921, 31.955824, 41.672039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497982, 31.785288, 42.114868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.609077, 31.412237, 42.022720>,  <40.675735, 31.188408, 41.967430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.609077, 31.412237, 42.022720>,  <40.497982, 31.785288, 42.114868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609077, 31.412237, 42.022720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282231, -0.308441, 0.908411,
		-0.918264, -0.187279, -0.348881,
		0.277735, -0.932626, -0.230374,
		40.692398, 31.132450, 41.953609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004440, 31.386433, 42.173237>,  <40.497982, 31.785288, 42.114868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004440, 31.386433, 42.173237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287758, 31.106005, 42.206280>,  <40.457748, 30.937748, 42.226105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287758, 31.106005, 42.206280>,  <40.004440, 31.386433, 42.173237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287758, 31.106005, 42.206280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376670, -0.276371, 0.884160,
		-0.597029, -0.657357, -0.459823,
		0.708290, -0.701071, 0.082605,
		40.500244, 30.895683, 42.231060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635944, 30.847782, 42.588100>,  <40.004440, 31.386433, 42.173237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635944, 30.847782, 42.588100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014965, 30.732464, 42.643284>,  <40.242378, 30.663273, 42.676395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014965, 30.732464, 42.643284>,  <39.635944, 30.847782, 42.588100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014965, 30.732464, 42.643284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223085, -0.287503, 0.931437,
		-0.228859, -0.913363, -0.336737,
		0.947553, -0.288289, 0.137960,
		40.299229, 30.645975, 42.684669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502747, 30.418596, 43.120148>,  <39.635944, 30.847782, 42.588100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502747, 30.418596, 43.120148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898666, 30.469715, 43.145340>,  <40.136219, 30.500387, 43.160454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898666, 30.469715, 43.145340>,  <39.502747, 30.418596, 43.120148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898666, 30.469715, 43.145340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014841, -0.347135, 0.937698,
		0.141698, -0.929067, -0.341697,
		0.989799, 0.127799, 0.062977,
		40.195606, 30.508055, 43.164234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942314, 29.774509, 43.357899>,  <39.502747, 30.418596, 43.120148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942314, 29.774509, 43.357899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.186768, 30.077114, 43.451027>,  <40.333439, 30.258677, 43.506905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.186768, 30.077114, 43.451027>,  <39.942314, 29.774509, 43.357899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186768, 30.077114, 43.451027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098042, -0.364227, 0.926135,
		0.785432, -0.543166, -0.296762,
		0.611134, 0.756511, 0.232823,
		40.370110, 30.304068, 43.520874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500767, 29.501379, 43.756664>,  <39.942314, 29.774509, 43.357899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500767, 29.501379, 43.756664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.523579, 29.894020, 43.829556>,  <40.537266, 30.129604, 43.873291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.523579, 29.894020, 43.829556>,  <40.500767, 29.501379, 43.756664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523579, 29.894020, 43.829556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199213, -0.190045, 0.961351,
		0.978295, -0.018526, -0.206387,
		0.057033, 0.981601, 0.182229,
		40.540688, 30.188499, 43.884224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084602, 29.680010, 44.068245>,  <40.500767, 29.501379, 43.756664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084602, 29.680010, 44.068245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810909, 29.947151, 44.185410>,  <40.646694, 30.107435, 44.255711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.810909, 29.947151, 44.185410>,  <41.084602, 29.680010, 44.068245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810909, 29.947151, 44.185410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160099, -0.254295, 0.953783,
		0.711472, 0.699506, 0.067074,
		-0.684233, 0.667852, 0.292914,
		40.605640, 30.147507, 44.273285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345299, 29.944996, 44.668789>,  <41.084602, 29.680010, 44.068245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345299, 29.944996, 44.668789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.971699, 30.082415, 44.708012>,  <40.747540, 30.164865, 44.731544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.971699, 30.082415, 44.708012>,  <41.345299, 29.944996, 44.668789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971699, 30.082415, 44.708012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124671, 0.056207, 0.990605,
		0.334806, 0.937453, -0.095328,
		-0.934003, 0.343545, 0.098055,
		40.691498, 30.185478, 44.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363087, 30.499994, 45.211887>,  <41.345299, 29.944996, 44.668789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363087, 30.499994, 45.211887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.991295, 30.354750, 45.185890>,  <40.768219, 30.267603, 45.170292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.991295, 30.354750, 45.185890>,  <41.363087, 30.499994, 45.211887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991295, 30.354750, 45.185890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046421, -0.059656, 0.997139,
		-0.365950, 0.929834, 0.038593,
		-0.929476, -0.363112, -0.064995,
		40.712452, 30.245815, 45.166393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.857300, 30.404949, 44.401485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251835, 30.339624, 44.410198>,  <33.488556, 30.300430, 44.415428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251835, 30.339624, 44.410198>,  <32.857300, 30.404949, 44.401485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251835, 30.339624, 44.410198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081896, 0.371237, -0.924919,
		0.142963, 0.914063, 0.379539,
		0.986334, -0.163312, 0.021785,
		33.547733, 30.290630, 44.416733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212727, 30.984634, 44.168827>,  <32.857300, 30.404949, 44.401485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212727, 30.984634, 44.168827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517349, 30.731733, 44.111847>,  <33.700123, 30.579992, 44.077660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517349, 30.731733, 44.111847>,  <33.212727, 30.984634, 44.168827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517349, 30.731733, 44.111847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216712, 0.455565, -0.863421,
		0.610793, 0.626673, 0.483955,
		0.761556, -0.632250, -0.142448,
		33.745815, 30.542059, 44.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818333, 31.392103, 44.018719>,  <33.212727, 30.984634, 44.168827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818333, 31.392103, 44.018719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900330, 31.029772, 43.870422>,  <33.949528, 30.812372, 43.781445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900330, 31.029772, 43.870422>,  <33.818333, 31.392103, 44.018719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900330, 31.029772, 43.870422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286245, 0.417708, -0.862313,
		0.935972, 0.070643, 0.344916,
		0.204990, -0.905831, -0.370742,
		33.961826, 30.758022, 43.759201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490868, 31.522757, 43.694328>,  <33.818333, 31.392103, 44.018719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490868, 31.522757, 43.694328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.320873, 31.193651, 43.543358>,  <34.218876, 30.996187, 43.452778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.320873, 31.193651, 43.543358>,  <34.490868, 31.522757, 43.694328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320873, 31.193651, 43.543358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385646, 0.212647, -0.897808,
		0.818940, -0.527108, 0.226923,
		-0.424988, -0.822763, -0.377422,
		34.193378, 30.946823, 43.430130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973850, 31.328548, 43.239796>,  <34.490868, 31.522757, 43.694328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973850, 31.328548, 43.239796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635548, 31.148006, 43.125973>,  <34.432564, 31.039682, 43.057678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635548, 31.148006, 43.125973>,  <34.973850, 31.328548, 43.239796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635548, 31.148006, 43.125973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225297, 0.181345, -0.957265,
		0.483668, -0.873724, -0.051685,
		-0.845758, -0.451353, -0.284558,
		34.381821, 31.012600, 43.040604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237434, 30.914700, 42.722359>,  <34.973850, 31.328548, 43.239796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237434, 30.914700, 42.722359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843662, 30.934958, 42.655037>,  <34.607399, 30.947113, 42.614643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.843662, 30.934958, 42.655037>,  <35.237434, 30.914700, 42.722359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843662, 30.934958, 42.655037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175024, 0.369883, -0.912444,
		0.016040, -0.927697, -0.372989,
		-0.984433, 0.050646, -0.168302,
		34.548332, 30.950151, 42.604546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090729, 30.561155, 42.094322>,  <35.237434, 30.914700, 42.722359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090729, 30.561155, 42.094322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775391, 30.801373, 42.147781>,  <34.586189, 30.945503, 42.179859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.775391, 30.801373, 42.147781>,  <35.090729, 30.561155, 42.094322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775391, 30.801373, 42.147781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078316, 0.313424, -0.946378,
		-0.610231, -0.735604, -0.294118,
		-0.788343, 0.600544, 0.133651,
		34.538887, 30.981535, 42.187878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920921, 30.457211, 41.498913>,  <35.090729, 30.561155, 42.094322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920921, 30.457211, 41.498913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694721, 30.770317, 41.602825>,  <34.559002, 30.958181, 41.665173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694721, 30.770317, 41.602825>,  <34.920921, 30.457211, 41.498913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694721, 30.770317, 41.602825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016244, 0.304351, -0.952421,
		-0.824589, -0.542813, -0.159395,
		-0.565498, 0.782768, 0.259782,
		34.525070, 31.005148, 41.680759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306831, 30.412930, 41.057774>,  <34.920921, 30.457211, 41.498913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306831, 30.412930, 41.057774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353397, 30.787941, 41.188919>,  <34.381336, 31.012947, 41.267605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353397, 30.787941, 41.188919>,  <34.306831, 30.412930, 41.057774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353397, 30.787941, 41.188919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071053, 0.321398, -0.944275,
		-0.990656, 0.133221, -0.029200,
		0.116412, 0.937526, 0.327860,
		34.388321, 31.069199, 41.287277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625134, 30.814484, 40.788933>,  <34.306831, 30.412930, 41.057774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625134, 30.814484, 40.788933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.937222, 31.048241, 40.878139>,  <34.124474, 31.188494, 40.931664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.937222, 31.048241, 40.878139>,  <33.625134, 30.814484, 40.788933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937222, 31.048241, 40.878139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175611, 0.546859, -0.818600,
		-0.600342, 0.599527, 0.529298,
		0.780225, 0.584390, 0.223019,
		34.171288, 31.223558, 40.945045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417294, 31.543379, 40.779991>,  <33.625134, 30.814484, 40.788933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417294, 31.543379, 40.779991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814003, 31.563021, 40.732708>,  <34.052029, 31.574806, 40.704338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814003, 31.563021, 40.732708>,  <33.417294, 31.543379, 40.779991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814003, 31.563021, 40.732708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114132, 0.757358, -0.642949,
		0.057954, 0.651151, 0.756732,
		0.991774, 0.049106, -0.118209,
		34.111534, 31.577753, 40.697247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513893, 32.174728, 40.475262>,  <33.417294, 31.543379, 40.779991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513893, 32.174728, 40.475262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.871273, 32.009361, 40.405018>,  <34.085701, 31.910141, 40.362869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.871273, 32.009361, 40.405018>,  <33.513893, 32.174728, 40.475262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871273, 32.009361, 40.405018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087188, 0.543160, -0.835090,
		0.440624, 0.730798, 0.521330,
		0.893448, -0.413414, -0.175613,
		34.139309, 31.885338, 40.352333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907703, 32.683002, 40.187721>,  <33.513893, 32.174728, 40.475262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907703, 32.683002, 40.187721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123577, 32.366329, 40.073193>,  <34.253101, 32.176327, 40.004475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123577, 32.366329, 40.073193>,  <33.907703, 32.683002, 40.187721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123577, 32.366329, 40.073193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278838, 0.489003, -0.826514,
		0.794352, 0.366214, 0.484657,
		0.539680, -0.791684, -0.286326,
		34.285480, 32.128822, 39.987293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627289, 32.969124, 40.057671>,  <33.907703, 32.683002, 40.187721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627289, 32.969124, 40.057671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536366, 32.629875, 39.866249>,  <34.481812, 32.426327, 39.751396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536366, 32.629875, 39.866249>,  <34.627289, 32.969124, 40.057671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536366, 32.629875, 39.866249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227780, 0.431479, -0.872893,
		0.946809, -0.307421, 0.095107,
		-0.227309, -0.848126, -0.478552,
		34.468174, 32.375439, 39.722683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268719, 33.248478, 40.316051>,  <34.627289, 32.969124, 40.057671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268719, 33.248478, 40.316051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.312214, 33.630135, 40.427616>,  <35.338310, 33.859127, 40.494553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.312214, 33.630135, 40.427616>,  <35.268719, 33.248478, 40.316051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312214, 33.630135, 40.427616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053043, -0.285743, 0.956837,
		0.992654, -0.089254, -0.081683,
		0.108741, 0.954141, 0.278910,
		35.344837, 33.916378, 40.511288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806782, 33.203323, 40.736103>,  <35.268719, 33.248478, 40.316051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806782, 33.203323, 40.736103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640762, 33.554371, 40.832035>,  <35.541149, 33.764999, 40.889595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640762, 33.554371, 40.832035>,  <35.806782, 33.203323, 40.736103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640762, 33.554371, 40.832035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104198, -0.216024, 0.970812,
		0.903811, 0.427928, -0.001785,
		-0.415052, 0.877617, 0.239834,
		35.516247, 33.817657, 40.903984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210609, 33.525417, 41.276031>,  <35.806782, 33.203323, 40.736103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210609, 33.525417, 41.276031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845837, 33.685181, 41.313675>,  <35.626972, 33.781040, 41.336262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845837, 33.685181, 41.313675>,  <36.210609, 33.525417, 41.276031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845837, 33.685181, 41.313675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057149, -0.103483, 0.992988,
		0.406351, 0.910912, 0.071543,
		-0.911928, 0.399413, 0.094108,
		35.572258, 33.805004, 41.341908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266003, 33.939888, 41.912853>,  <36.210609, 33.525417, 41.276031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266003, 33.939888, 41.912853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867905, 33.928364, 41.875641>,  <35.629044, 33.921448, 41.853313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867905, 33.928364, 41.875641>,  <36.266003, 33.939888, 41.912853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867905, 33.928364, 41.875641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094225, 0.043407, 0.994604,
		-0.024618, 0.998642, -0.045915,
		-0.995247, -0.028811, -0.093028,
		35.569332, 33.919720, 41.847733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972878, 34.521988, 42.266209>,  <36.266003, 33.939888, 41.912853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972878, 34.521988, 42.266209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704079, 34.226555, 42.244583>,  <35.542801, 34.049297, 42.231609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704079, 34.226555, 42.244583>,  <35.972878, 34.521988, 42.266209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704079, 34.226555, 42.244583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135238, 0.050613, 0.989520,
		-0.728102, 0.672265, -0.133895,
		-0.671996, -0.738579, -0.054064,
		35.502480, 34.004982, 42.228363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469517, 34.658726, 42.716850>,  <35.972878, 34.521988, 42.266209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469517, 34.658726, 42.716850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371597, 34.273281, 42.673920>,  <35.312847, 34.042015, 42.648163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371597, 34.273281, 42.673920>,  <35.469517, 34.658726, 42.716850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371597, 34.273281, 42.673920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001857, -0.111159, 0.993801,
		-0.969573, 0.243079, 0.029001,
		-0.244796, -0.963616, -0.107325,
		35.298157, 33.984196, 42.641724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979095, 34.525879, 43.273323>,  <35.469517, 34.658726, 42.716850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979095, 34.525879, 43.273323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.111237, 34.167992, 43.153091>,  <35.190521, 33.953259, 43.080952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.111237, 34.167992, 43.153091>,  <34.979095, 34.525879, 43.273323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111237, 34.167992, 43.153091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087512, -0.288050, 0.953608,
		-0.939792, -0.341331, -0.016860,
		0.330353, -0.894718, -0.300578,
		35.210342, 33.899578, 43.062920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577850, 34.059448, 43.704193>,  <34.979095, 34.525879, 43.273323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577850, 34.059448, 43.704193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873955, 33.814365, 43.593487>,  <35.051617, 33.667316, 43.527061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873955, 33.814365, 43.593487>,  <34.577850, 34.059448, 43.704193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873955, 33.814365, 43.593487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033746, -0.377276, 0.925486,
		-0.671471, -0.694443, -0.258606,
		0.740263, -0.612709, -0.276764,
		35.096035, 33.630554, 43.510456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334362, 33.341869, 43.883907>,  <34.577850, 34.059448, 43.704193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334362, 33.341869, 43.883907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733700, 33.336147, 43.861652>,  <34.973305, 33.332714, 43.848301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733700, 33.336147, 43.861652>,  <34.334362, 33.341869, 43.883907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733700, 33.336147, 43.861652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047406, -0.341763, 0.938590,
		-0.032443, -0.939677, -0.340520,
		0.998349, -0.014307, -0.055634,
		35.033203, 33.331856, 43.844963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591042, 32.699650, 44.254471>,  <34.334362, 33.341869, 43.883907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591042, 32.699650, 44.254471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917007, 32.927731, 44.212921>,  <35.112587, 33.064579, 44.187992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917007, 32.927731, 44.212921>,  <34.591042, 32.699650, 44.254471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917007, 32.927731, 44.212921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302466, -0.265515, 0.915432,
		0.494401, -0.777414, -0.388838,
		0.814913, 0.570201, -0.103870,
		35.161480, 33.098789, 44.181759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123158, 32.304855, 44.431355>,  <34.591042, 32.699650, 44.254471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123158, 32.304855, 44.431355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215652, 32.687115, 44.504311>,  <35.271149, 32.916470, 44.548084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.215652, 32.687115, 44.504311>,  <35.123158, 32.304855, 44.431355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215652, 32.687115, 44.504311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355150, -0.257445, 0.898661,
		0.905759, -0.143027, -0.398929,
		0.231235, 0.955649, 0.182387,
		35.285023, 32.973808, 44.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732002, 32.231796, 44.651855>,  <35.123158, 32.304855, 44.431355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732002, 32.231796, 44.651855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619293, 32.585175, 44.801590>,  <35.551666, 32.797199, 44.891430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619293, 32.585175, 44.801590>,  <35.732002, 32.231796, 44.651855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619293, 32.585175, 44.801590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270671, -0.301112, 0.914368,
		0.920510, 0.358971, -0.154276,
		-0.281777, 0.883443, 0.374340,
		35.534760, 32.850208, 44.913891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293777, 32.493599, 44.998264>,  <35.732002, 32.231796, 44.651855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293777, 32.493599, 44.998264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.974052, 32.682404, 45.147018>,  <35.782215, 32.795689, 45.236271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.974052, 32.682404, 45.147018>,  <36.293777, 32.493599, 44.998264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974052, 32.682404, 45.147018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207015, -0.364688, 0.907826,
		0.564129, 0.802624, 0.193787,
		-0.799315, 0.472014, 0.371886,
		35.734257, 32.824009, 45.258583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475304, 32.592625, 45.679398>,  <36.293777, 32.493599, 44.998264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475304, 32.592625, 45.679398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092350, 32.707306, 45.693329>,  <35.862579, 32.776115, 45.701687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092350, 32.707306, 45.693329>,  <36.475304, 32.592625, 45.679398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092350, 32.707306, 45.693329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074744, -0.362455, 0.928999,
		0.278975, 0.886807, 0.368439,
		-0.957385, 0.286706, 0.034833,
		35.805134, 32.793320, 45.703777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833298, 33.218334, 46.004414>,  <36.475304, 32.592625, 45.679398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833298, 33.218334, 46.004414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222374, 33.125942, 46.013470>,  <37.455822, 33.070507, 46.018902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222374, 33.125942, 46.013470>,  <36.833298, 33.218334, 46.004414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222374, 33.125942, 46.013470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153200, 0.565740, -0.810227,
		0.174340, 0.791572, 0.585679,
		0.972695, -0.230981, 0.022637,
		37.514183, 33.056648, 46.020260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124931, 33.831383, 45.961063>,  <36.833298, 33.218334, 46.004414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124931, 33.831383, 45.961063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.417587, 33.576942, 45.863022>,  <37.593182, 33.424278, 45.804195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.417587, 33.576942, 45.863022>,  <37.124931, 33.831383, 45.961063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417587, 33.576942, 45.863022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106888, 0.462159, -0.880332,
		0.673260, 0.617886, 0.406125,
		0.731639, -0.636103, -0.245108,
		37.637077, 33.386112, 45.789490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706413, 34.169678, 45.674927>,  <37.124931, 33.831383, 45.961063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706413, 34.169678, 45.674927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779915, 33.795815, 45.553169>,  <37.824017, 33.571499, 45.480114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779915, 33.795815, 45.553169>,  <37.706413, 34.169678, 45.674927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779915, 33.795815, 45.553169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158917, 0.333837, -0.929139,
		0.970041, 0.122363, 0.209877,
		0.183757, -0.934655, -0.304389,
		37.835041, 33.515419, 45.461853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428009, 34.279945, 45.379883>,  <37.706413, 34.169678, 45.674927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428009, 34.279945, 45.379883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240482, 33.953663, 45.244339>,  <38.127968, 33.757893, 45.163013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240482, 33.953663, 45.244339>,  <38.428009, 34.279945, 45.379883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240482, 33.953663, 45.244339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349005, 0.181355, -0.919405,
		0.811422, -0.549298, 0.199665,
		-0.468817, -0.815710, -0.338864,
		38.099838, 33.708950, 45.142681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959927, 33.819809, 45.002060>,  <38.428009, 34.279945, 45.379883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959927, 33.819809, 45.002060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604427, 33.708431, 44.856407>,  <38.391129, 33.641605, 44.769016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604427, 33.708431, 44.856407>,  <38.959927, 33.819809, 45.002060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604427, 33.708431, 44.856407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296331, 0.257071, -0.919838,
		0.349733, -0.925410, -0.145960,
		-0.888749, -0.278445, -0.364134,
		38.337803, 33.624897, 44.747166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074318, 33.312016, 44.437866>,  <38.959927, 33.819809, 45.002060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074318, 33.312016, 44.437866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703640, 33.448410, 44.374660>,  <38.481236, 33.530247, 44.336735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703640, 33.448410, 44.374660>,  <39.074318, 33.312016, 44.437866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703640, 33.448410, 44.374660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235061, 0.197815, -0.951639,
		-0.293238, -0.919020, -0.263466,
		-0.926692, 0.340988, -0.158018,
		38.425632, 33.550705, 44.327255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881870, 33.028484, 43.781662>,  <39.074318, 33.312016, 44.437866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881870, 33.028484, 43.781662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640419, 33.336109, 43.865738>,  <38.495548, 33.520683, 43.916183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640419, 33.336109, 43.865738>,  <38.881870, 33.028484, 43.781662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640419, 33.336109, 43.865738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126950, 0.352986, -0.926976,
		-0.787098, -0.532861, -0.310703,
		-0.603623, 0.769064, 0.210188,
		38.459332, 33.566830, 43.928795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446453, 33.012470, 43.242531>,  <38.881870, 33.028484, 43.781662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446453, 33.012470, 43.242531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.397614, 33.370468, 43.414146>,  <38.368309, 33.585266, 43.517117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.397614, 33.370468, 43.414146>,  <38.446453, 33.012470, 43.242531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397614, 33.370468, 43.414146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150122, 0.443953, -0.883385,
		-0.981099, -0.043449, -0.188563,
		-0.122095, 0.894996, 0.429039,
		38.360985, 33.638966, 43.542858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073387, 33.370991, 42.701042>,  <38.446453, 33.012470, 43.242531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073387, 33.370991, 42.701042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.227020, 33.649773, 42.943279>,  <38.319199, 33.817039, 43.088623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.227020, 33.649773, 42.943279>,  <38.073387, 33.370991, 42.701042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227020, 33.649773, 42.943279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323733, 0.512607, -0.795255,
		-0.864685, 0.501492, -0.028744,
		0.384080, 0.696950, 0.605593,
		38.342243, 33.858856, 43.124958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787308, 34.007401, 42.560112>,  <38.073387, 33.370991, 42.701042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787308, 34.007401, 42.560112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 34.100655, 42.751373>,  <38.329239, 34.156605, 42.866131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 34.100655, 42.751373>,  <37.787308, 34.007401, 42.560112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126015, 34.100655, 42.751373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293920, 0.544148, -0.785820,
		-0.443386, 0.805948, 0.392246,
		0.846770, 0.233132, 0.478152,
		38.380047, 34.170593, 42.894817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906769, 34.569050, 42.322056>,  <37.787308, 34.007401, 42.560112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906769, 34.569050, 42.322056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.266708, 34.487671, 42.476391>,  <38.482674, 34.438843, 42.568993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.266708, 34.487671, 42.476391>,  <37.906769, 34.569050, 42.322056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266708, 34.487671, 42.476391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435772, 0.458216, -0.774687,
		-0.019187, 0.865243, 0.500985,
		0.899852, -0.203451, 0.385841,
		38.536663, 34.426636, 42.592144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207626, 35.212505, 42.299877>,  <37.906769, 34.569050, 42.322056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207626, 35.212505, 42.299877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.508869, 34.949562, 42.310486>,  <38.689617, 34.791794, 42.316849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.508869, 34.949562, 42.310486>,  <38.207626, 35.212505, 42.299877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508869, 34.949562, 42.310486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373658, 0.394212, -0.839629,
		0.541484, 0.642242, 0.542513,
		0.753110, -0.657360, 0.026519,
		38.734802, 34.752354, 42.318443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864784, 35.703930, 42.149582>,  <38.207626, 35.212505, 42.299877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864784, 35.703930, 42.149582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944092, 35.316311, 42.090740>,  <38.991676, 35.083740, 42.055435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944092, 35.316311, 42.090740>,  <38.864784, 35.703930, 42.149582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944092, 35.316311, 42.090740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512044, 0.230380, -0.827488,
		0.835763, 0.088743, 0.541872,
		0.198270, -0.969046, -0.147103,
		39.003574, 35.025597, 42.046608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546860, 35.730927, 42.184162>,  <38.864784, 35.703930, 42.149582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546860, 35.730927, 42.184162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.426041, 35.403366, 41.988949>,  <39.353550, 35.206829, 41.871822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.426041, 35.403366, 41.988949>,  <39.546860, 35.730927, 42.184162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426041, 35.403366, 41.988949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483922, 0.309364, -0.818605,
		0.821332, -0.483428, 0.302839,
		-0.302049, -0.818897, -0.488032,
		39.335426, 35.157696, 41.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.534079, 31.740616, 41.302277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308153, 31.951361, 41.556332>,  <30.172598, 32.077808, 41.708767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308153, 31.951361, 41.556332>,  <30.534079, 31.740616, 41.302277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308153, 31.951361, 41.556332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691265, 0.118295, -0.712853,
		-0.450709, -0.841678, 0.297387,
		-0.564813, 0.526862, 0.635139,
		30.138710, 32.109421, 41.746872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801605, 31.546873, 41.106819>,  <30.534079, 31.740616, 41.302277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801605, 31.546873, 41.106819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758921, 31.892151, 41.304207>,  <29.733311, 32.099316, 41.422638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758921, 31.892151, 41.304207>,  <29.801605, 31.546873, 41.106819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758921, 31.892151, 41.304207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807594, 0.214266, -0.549438,
		-0.580005, -0.457152, 0.674245,
		-0.106709, 0.863193, 0.493468,
		29.726908, 32.151108, 41.452248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061270, 31.602732, 41.209541>,  <29.801605, 31.546873, 41.106819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061270, 31.602732, 41.209541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216047, 31.970646, 41.235672>,  <29.308914, 32.191395, 41.251350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.216047, 31.970646, 41.235672>,  <29.061270, 31.602732, 41.209541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216047, 31.970646, 41.235672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673597, 0.330332, -0.661171,
		-0.629716, 0.211831, 0.747386,
		0.386943, 0.919787, 0.065326,
		29.332130, 32.246582, 41.255268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487040, 31.990265, 40.917675>,  <29.061270, 31.602732, 41.209541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487040, 31.990265, 40.917675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715303, 32.311558, 40.985989>,  <28.852262, 32.504333, 41.026978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715303, 32.311558, 40.985989>,  <28.487040, 31.990265, 40.917675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715303, 32.311558, 40.985989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665399, 0.574167, -0.477050,
		-0.481239, 0.158595, 0.862124,
		0.570660, 0.803231, 0.170782,
		28.886501, 32.552528, 41.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059910, 32.552448, 41.168610>,  <28.487040, 31.990265, 40.917675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059910, 32.552448, 41.168610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384712, 32.657948, 40.960350>,  <28.579594, 32.721249, 40.835392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384712, 32.657948, 40.960350>,  <28.059910, 32.552448, 41.168610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384712, 32.657948, 40.960350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559750, 0.604570, -0.566723,
		0.165298, 0.751619, 0.638550,
		0.812008, 0.263750, -0.520653,
		28.628315, 32.737072, 40.804153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926668, 33.187160, 40.927616>,  <28.059910, 32.552448, 41.168610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926668, 33.187160, 40.927616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253468, 33.121094, 40.706623>,  <28.449547, 33.081455, 40.574028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253468, 33.121094, 40.706623>,  <27.926668, 33.187160, 40.927616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253468, 33.121094, 40.706623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355957, 0.609320, -0.708536,
		0.453664, 0.775532, 0.439021,
		0.816996, -0.165165, -0.552483,
		28.498566, 33.071545, 40.540878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115185, 33.804211, 40.594860>,  <27.926668, 33.187160, 40.927616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115185, 33.804211, 40.594860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298029, 33.530735, 40.367310>,  <28.407736, 33.366650, 40.230778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298029, 33.530735, 40.367310>,  <28.115185, 33.804211, 40.594860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298029, 33.530735, 40.367310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333173, 0.461417, -0.822247,
		0.824650, 0.565392, -0.016868,
		0.457109, -0.683686, -0.568881,
		28.435162, 33.325630, 40.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504480, 34.169647, 40.146812>,  <28.115185, 33.804211, 40.594860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504480, 34.169647, 40.146812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455786, 33.813175, 39.972004>,  <28.426569, 33.599293, 39.867119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455786, 33.813175, 39.972004>,  <28.504480, 34.169647, 40.146812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455786, 33.813175, 39.972004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257260, 0.453576, -0.853280,
		0.958644, 0.008552, -0.284481,
		-0.121737, -0.891177, -0.437017,
		28.419264, 33.545822, 39.840900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783493, 34.192364, 39.518986>,  <28.504480, 34.169647, 40.146812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783493, 34.192364, 39.518986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.548876, 33.873451, 39.461987>,  <28.408106, 33.682102, 39.427788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.548876, 33.873451, 39.461987>,  <28.783493, 34.192364, 39.518986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548876, 33.873451, 39.461987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302746, 0.379019, -0.874465,
		0.751208, -0.469769, -0.463685,
		-0.586542, -0.797284, -0.142501,
		28.372913, 33.634266, 39.419235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004637, 33.966984, 38.838268>,  <28.783493, 34.192364, 39.518986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004637, 33.966984, 38.838268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.637381, 33.837791, 38.930096>,  <28.417027, 33.760277, 38.985191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.637381, 33.837791, 38.930096>,  <29.004637, 33.966984, 38.838268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637381, 33.837791, 38.930096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350527, 0.391805, -0.850659,
		0.184797, -0.861495, -0.472944,
		-0.918140, -0.322979, 0.229573,
		28.361938, 33.740898, 38.998966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756672, 33.665489, 38.249439>,  <29.004637, 33.966984, 38.838268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756672, 33.665489, 38.249439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412539, 33.690609, 38.451778>,  <28.206059, 33.705681, 38.573181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412539, 33.690609, 38.451778>,  <28.756672, 33.665489, 38.249439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412539, 33.690609, 38.451778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467537, 0.298116, -0.832187,
		-0.203062, -0.952462, -0.227118,
		-0.860334, 0.062800, 0.505847,
		28.154438, 33.709450, 38.603531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241734, 33.273411, 37.822014>,  <28.756672, 33.665489, 38.249439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241734, 33.273411, 37.822014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006056, 33.507111, 38.045265>,  <27.864649, 33.647331, 38.179214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006056, 33.507111, 38.045265>,  <28.241734, 33.273411, 37.822014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006056, 33.507111, 38.045265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470481, 0.313501, -0.824842,
		-0.656886, -0.748579, 0.090165,
		-0.589193, 0.584248, 0.558127,
		27.829298, 33.682384, 38.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521576, 33.071186, 37.701000>,  <28.241734, 33.273411, 37.822014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521576, 33.071186, 37.701000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546253, 33.453239, 37.816868>,  <27.561060, 33.682472, 37.886387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546253, 33.453239, 37.816868>,  <27.521576, 33.071186, 37.701000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546253, 33.453239, 37.816868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619102, 0.264263, -0.739512,
		-0.782884, -0.133709, 0.607631,
		0.061694, 0.955137, 0.289667,
		27.564762, 33.739780, 37.903767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840158, 33.353828, 37.614891>,  <27.521576, 33.071186, 37.701000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840158, 33.353828, 37.614891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.054567, 33.691509, 37.615997>,  <27.183212, 33.894115, 37.616661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.054567, 33.691509, 37.615997>,  <26.840158, 33.353828, 37.614891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054567, 33.691509, 37.615997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391932, 0.251759, -0.884877,
		-0.747708, 0.473230, 0.465817,
		0.536024, 0.844198, 0.002768,
		27.215374, 33.944767, 37.616829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418818, 33.826134, 37.293209>,  <26.840158, 33.353828, 37.614891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418818, 33.826134, 37.293209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772156, 34.012794, 37.275608>,  <26.984159, 34.124790, 37.265045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772156, 34.012794, 37.275608>,  <26.418818, 33.826134, 37.293209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772156, 34.012794, 37.275608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173005, 0.237345, -0.955896,
		-0.435625, 0.852000, 0.290390,
		0.883346, 0.466651, -0.044007,
		27.037159, 34.152790, 37.262405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331791, 34.521378, 37.045334>,  <26.418818, 33.826134, 37.293209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331791, 34.521378, 37.045334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718603, 34.444004, 36.979084>,  <26.950691, 34.397579, 36.939335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718603, 34.444004, 36.979084>,  <26.331791, 34.521378, 37.045334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718603, 34.444004, 36.979084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059840, 0.459577, -0.886120,
		0.247522, 0.866818, 0.432851,
		0.967033, -0.193432, -0.165626,
		27.008713, 34.385975, 36.929398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604729, 35.079529, 36.823635>,  <26.331791, 34.521378, 37.045334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604729, 35.079529, 36.823635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890816, 34.829659, 36.698261>,  <27.062468, 34.679737, 36.623035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890816, 34.829659, 36.698261>,  <26.604729, 35.079529, 36.823635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890816, 34.829659, 36.698261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154731, 0.578866, -0.800608,
		0.681557, 0.524112, 0.510673,
		0.715219, -0.624676, -0.313434,
		27.105381, 34.642254, 36.604233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236948, 35.427006, 36.666180>,  <26.604729, 35.079529, 36.823635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236948, 35.427006, 36.666180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288439, 35.096703, 36.446526>,  <27.319332, 34.898521, 36.314732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288439, 35.096703, 36.446526>,  <27.236948, 35.427006, 36.666180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288439, 35.096703, 36.446526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247509, 0.562974, -0.788542,
		0.960296, -0.034412, 0.276852,
		0.128725, -0.825758, -0.549139,
		27.327057, 34.848976, 36.281784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844122, 35.534046, 36.295296>,  <27.236948, 35.427006, 36.666180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844122, 35.534046, 36.295296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627127, 35.259335, 36.101784>,  <27.496929, 35.094509, 35.985676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627127, 35.259335, 36.101784>,  <27.844122, 35.534046, 36.295296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627127, 35.259335, 36.101784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296921, 0.381954, -0.875185,
		0.785840, -0.618421, -0.003286,
		-0.542488, -0.686780, -0.483777,
		27.464380, 35.053299, 35.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361460, 35.377537, 35.755760>,  <27.844122, 35.534046, 36.295296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361460, 35.377537, 35.755760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993694, 35.266567, 35.644249>,  <27.773035, 35.199986, 35.577343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993694, 35.266567, 35.644249>,  <28.361460, 35.377537, 35.755760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993694, 35.266567, 35.644249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172060, 0.353659, -0.919413,
		0.353659, -0.893286, -0.277425,
		0.919413, 0.277425, 0.278774,
		27.717871, 35.183338, 35.560616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063063, 35.685520, 35.891212>,  <28.361460, 35.377537, 35.755760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063063, 35.685520, 35.891212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421673, 35.691410, 36.068310>,  <29.636839, 35.694942, 36.174568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421673, 35.691410, 36.068310>,  <29.063063, 35.685520, 35.891212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421673, 35.691410, 36.068310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048367, -0.990219, 0.130872,
		0.440342, -0.138745, -0.887045,
		0.896526, 0.014724, 0.442745,
		29.690630, 35.695827, 36.201134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469297, 35.138176, 35.650711>,  <29.063063, 35.685520, 35.891212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469297, 35.138176, 35.650711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635145, 35.213051, 36.006924>,  <29.734653, 35.257977, 36.220654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635145, 35.213051, 36.006924>,  <29.469297, 35.138176, 35.650711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635145, 35.213051, 36.006924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078646, -0.967581, 0.240002,
		0.906589, -0.169547, -0.386457,
		0.414621, 0.187190, 0.890533,
		29.759531, 35.269207, 36.274082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674702, 34.563591, 35.861435>,  <29.469297, 35.138176, 35.650711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674702, 34.563591, 35.861435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775923, 34.755810, 36.197300>,  <29.836655, 34.871140, 36.398819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775923, 34.755810, 36.197300>,  <29.674702, 34.563591, 35.861435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775923, 34.755810, 36.197300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064958, -0.857517, 0.510338,
		0.965269, -0.183686, -0.185782,
		0.253053, 0.480546, 0.839667,
		29.851839, 34.899975, 36.449200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370871, 34.387428, 36.039890>,  <29.674702, 34.563591, 35.861435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370871, 34.387428, 36.039890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.172989, 34.485359, 36.373436>,  <30.054260, 34.544117, 36.573563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.172989, 34.485359, 36.373436>,  <30.370871, 34.387428, 36.039890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172989, 34.485359, 36.373436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230045, -0.888384, 0.397308,
		0.838062, 0.388376, 0.383166,
		-0.494703, 0.244823, 0.833865,
		30.024578, 34.558807, 36.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787382, 34.145344, 36.543617>,  <30.370871, 34.387428, 36.039890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787382, 34.145344, 36.543617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.451103, 34.209118, 36.750618>,  <30.249336, 34.247383, 36.874817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.451103, 34.209118, 36.750618>,  <30.787382, 34.145344, 36.543617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451103, 34.209118, 36.750618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150409, -0.849317, 0.506002,
		0.520194, 0.503232, 0.690040,
		-0.840699, 0.159431, 0.517500,
		30.198893, 34.256947, 36.905869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874987, 34.280182, 37.345299>,  <30.787382, 34.145344, 36.543617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874987, 34.280182, 37.345299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524452, 34.109886, 37.255161>,  <30.314133, 34.007710, 37.201077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524452, 34.109886, 37.255161>,  <30.874987, 34.280182, 37.345299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524452, 34.109886, 37.255161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228581, -0.779322, 0.583445,
		-0.424014, 0.459783, 0.780264,
		-0.876335, -0.425742, -0.225345,
		30.261551, 33.982162, 37.187557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728502, 33.927773, 37.935204>,  <30.874987, 34.280182, 37.345299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728502, 33.927773, 37.935204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457294, 33.772636, 37.685444>,  <30.294569, 33.679554, 37.535587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457294, 33.772636, 37.685444>,  <30.728502, 33.927773, 37.935204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457294, 33.772636, 37.685444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206485, -0.915760, 0.344596,
		-0.705445, 0.104714, 0.700986,
		-0.678019, -0.387837, -0.624398,
		30.253889, 33.656284, 37.498123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255440, 33.605618, 38.376656>,  <30.728502, 33.927773, 37.935204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255440, 33.605618, 38.376656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.191544, 33.457970, 38.010437>,  <30.153206, 33.369381, 37.790707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.191544, 33.457970, 38.010437>,  <30.255440, 33.605618, 38.376656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191544, 33.457970, 38.010437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164278, -0.924466, 0.344056,
		-0.973394, -0.095445, 0.208313,
		-0.159740, -0.369124, -0.915550,
		30.143621, 33.347233, 37.735771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696154, 33.236183, 38.429947>,  <30.255440, 33.605618, 38.376656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696154, 33.236183, 38.429947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842245, 33.076321, 38.093643>,  <29.929899, 32.980404, 37.891861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.842245, 33.076321, 38.093643>,  <29.696154, 33.236183, 38.429947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842245, 33.076321, 38.093643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229573, -0.913929, 0.334709,
		-0.902166, 0.070771, -0.425544,
		0.365229, -0.399656, -0.840763,
		29.951815, 32.956425, 37.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295534, 32.565804, 38.282269>,  <29.696154, 33.236183, 38.429947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295534, 32.565804, 38.282269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617617, 32.552597, 38.045437>,  <29.810865, 32.544674, 37.903339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617617, 32.552597, 38.045437>,  <29.295534, 32.565804, 38.282269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617617, 32.552597, 38.045437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007304, -0.998926, 0.045764,
		-0.592952, -0.032524, -0.804580,
		0.805204, -0.033013, -0.592078,
		29.859179, 32.542694, 37.867813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096098, 32.102741, 37.688957>,  <29.295534, 32.565804, 38.282269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096098, 32.102741, 37.688957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490976, 32.129726, 37.746773>,  <29.727903, 32.145920, 37.781464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490976, 32.129726, 37.746773>,  <29.096098, 32.102741, 37.688957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490976, 32.129726, 37.746773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082585, -0.991424, -0.101279,
		0.136467, 0.111919, -0.984302,
		0.987196, 0.067468, 0.144539,
		29.787136, 32.149967, 37.790134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360710, 31.570391, 37.258858>,  <29.096098, 32.102741, 37.688957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360710, 31.570391, 37.258858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634949, 31.655258, 37.537407>,  <29.799492, 31.706179, 37.704536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634949, 31.655258, 37.537407>,  <29.360710, 31.570391, 37.258858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634949, 31.655258, 37.537407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248539, -0.967329, 0.050030,
		0.684241, 0.138776, -0.715930,
		0.685597, 0.212169, 0.696377,
		29.840628, 31.718908, 37.746319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818655, 31.025492, 37.231010>,  <29.360710, 31.570391, 37.258858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818655, 31.025492, 37.231010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936424, 31.188799, 37.576641>,  <30.007086, 31.286783, 37.784019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936424, 31.188799, 37.576641>,  <29.818655, 31.025492, 37.231010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936424, 31.188799, 37.576641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172573, -0.912004, 0.372111,
		0.939964, 0.039558, -0.338972,
		0.294424, 0.408269, 0.864078,
		30.024752, 31.311279, 37.835865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550600, 30.762999, 37.454460>,  <29.818655, 31.025492, 37.231010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550600, 30.762999, 37.454460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.325460, 30.873049, 37.766232>,  <30.190376, 30.939079, 37.953293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.325460, 30.873049, 37.766232>,  <30.550600, 30.762999, 37.454460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325460, 30.873049, 37.766232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067453, -0.924544, 0.375057,
		0.823803, 0.263675, 0.501820,
		-0.562848, 0.275124, 0.779428,
		30.156607, 30.955585, 38.000061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799463, 30.329283, 37.994293>,  <30.550600, 30.762999, 37.454460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799463, 30.329283, 37.994293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473204, 30.482145, 38.168041>,  <30.277449, 30.573862, 38.272289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473204, 30.482145, 38.168041>,  <30.799463, 30.329283, 37.994293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473204, 30.482145, 38.168041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117230, -0.844385, 0.522753,
		0.566546, 0.375462, 0.733521,
		-0.815648, 0.382155, 0.434368,
		30.228510, 30.596792, 38.298351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898153, 30.196218, 38.799129>,  <30.799463, 30.329283, 37.994293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898153, 30.196218, 38.799129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517487, 30.248308, 38.687866>,  <30.289087, 30.279562, 38.621109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.517487, 30.248308, 38.687866>,  <30.898153, 30.196218, 38.799129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517487, 30.248308, 38.687866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290132, -0.678317, 0.675062,
		-0.100772, 0.723137, 0.683313,
		-0.951666, 0.130224, -0.278161,
		30.231987, 30.287376, 38.604420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445223, 30.347090, 39.459160>,  <30.898153, 30.196218, 38.799129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445223, 30.347090, 39.459160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210358, 30.194998, 39.173317>,  <30.069439, 30.103743, 39.001812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210358, 30.194998, 39.173317>,  <30.445223, 30.347090, 39.459160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210358, 30.194998, 39.173317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320011, -0.701858, 0.636387,
		-0.743526, 0.602346, 0.290427,
		-0.587164, -0.380231, -0.714607,
		30.034208, 30.080929, 38.958935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744337, 30.292135, 39.688568>,  <30.445223, 30.347090, 39.459160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744337, 30.292135, 39.688568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783461, 30.041882, 39.378983>,  <29.806934, 29.891729, 39.193233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783461, 30.041882, 39.378983>,  <29.744337, 30.292135, 39.688568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783461, 30.041882, 39.378983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514599, -0.697449, 0.498752,
		-0.851835, 0.349499, -0.390165,
		0.097806, -0.625633, -0.773963,
		29.812803, 29.854191, 39.146793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216724, 29.869150, 39.723866>,  <29.744337, 30.292135, 39.688568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216724, 29.869150, 39.723866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462280, 29.661413, 39.486069>,  <29.609613, 29.536770, 39.343391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462280, 29.661413, 39.486069>,  <29.216724, 29.869150, 39.723866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462280, 29.661413, 39.486069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298719, -0.849933, 0.434029,
		-0.730687, -0.088861, -0.676905,
		0.613892, -0.519343, -0.594491,
		29.646448, 29.505610, 39.307720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808170, 29.244837, 39.472858>,  <29.216724, 29.869150, 39.723866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808170, 29.244837, 39.472858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203587, 29.190905, 39.445694>,  <29.440836, 29.158545, 39.429394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203587, 29.190905, 39.445694>,  <28.808170, 29.244837, 39.472858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203587, 29.190905, 39.445694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069070, -0.803930, 0.590699,
		-0.134240, -0.579238, -0.804029,
		0.988539, -0.134830, -0.067911,
		29.500149, 29.150455, 39.425320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802603, 28.546255, 39.392666>,  <28.808170, 29.244837, 39.472858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802603, 28.546255, 39.392666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165657, 28.669146, 39.507076>,  <29.383490, 28.742880, 39.575722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165657, 28.669146, 39.507076>,  <28.802603, 28.546255, 39.392666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165657, 28.669146, 39.507076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068707, -0.780941, 0.620814,
		0.414098, -0.543821, -0.729919,
		0.907636, 0.307228, 0.286022,
		29.437948, 28.761314, 39.592884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054602, 27.879005, 39.589462>,  <28.802603, 28.546255, 39.392666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054602, 27.879005, 39.589462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283157, 28.165131, 39.750381>,  <29.420290, 28.336805, 39.846931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283157, 28.165131, 39.750381>,  <29.054602, 27.879005, 39.589462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283157, 28.165131, 39.750381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086536, -0.539978, 0.837219,
		0.816104, -0.443565, -0.370438,
		0.571389, 0.715314, 0.402294,
		29.454575, 28.379725, 39.871071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.069477, 30.640112, 45.944183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780529, 30.408407, 45.793118>,  <40.607159, 30.269384, 45.702477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780529, 30.408407, 45.793118>,  <41.069477, 30.640112, 45.944183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780529, 30.408407, 45.793118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258835, -0.279948, 0.924464,
		-0.641232, 0.765563, 0.052294,
		-0.722375, -0.579261, -0.377666,
		40.563816, 30.234629, 45.679817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419159, 30.834688, 46.201160>,  <41.069477, 30.640112, 45.944183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419159, 30.834688, 46.201160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388004, 30.449572, 46.097645>,  <40.369312, 30.218502, 46.035538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388004, 30.449572, 46.097645>,  <40.419159, 30.834688, 46.201160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388004, 30.449572, 46.097645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301046, -0.224746, 0.926747,
		-0.950424, 0.150088, -0.272339,
		-0.077887, -0.962789, -0.258787,
		40.364639, 30.160734, 46.020008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932632, 30.647659, 46.482834>,  <40.419159, 30.834688, 46.201160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932632, 30.647659, 46.482834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066189, 30.279938, 46.399506>,  <40.146324, 30.059305, 46.349506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066189, 30.279938, 46.399506>,  <39.932632, 30.647659, 46.482834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066189, 30.279938, 46.399506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172679, -0.276922, 0.945250,
		-0.926659, -0.279640, -0.251206,
		0.333894, -0.919302, -0.208324,
		40.166359, 30.004147, 46.337009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429474, 30.223572, 46.707680>,  <39.932632, 30.647659, 46.482834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429474, 30.223572, 46.707680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741455, 29.973820, 46.690567>,  <39.928642, 29.823969, 46.680298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741455, 29.973820, 46.690567>,  <39.429474, 30.223572, 46.707680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741455, 29.973820, 46.690567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232089, -0.352046, 0.906752,
		-0.581218, -0.697291, -0.419489,
		0.779949, -0.624379, -0.042782,
		39.975441, 29.786507, 46.677734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117874, 29.452208, 46.878128>,  <39.429474, 30.223572, 46.707680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117874, 29.452208, 46.878128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.510548, 29.486832, 46.946018>,  <39.746151, 29.507607, 46.986752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.510548, 29.486832, 46.946018>,  <39.117874, 29.452208, 46.878128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510548, 29.486832, 46.946018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115712, -0.436849, 0.892062,
		0.151362, -0.895361, -0.418830,
		0.981682, 0.086561, 0.169726,
		39.805054, 29.512800, 46.996937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307117, 28.806175, 47.210144>,  <39.117874, 29.452208, 46.878128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307117, 28.806175, 47.210144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592289, 29.074514, 47.291821>,  <39.763393, 29.235518, 47.340828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592289, 29.074514, 47.291821>,  <39.307117, 28.806175, 47.210144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592289, 29.074514, 47.291821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008093, -0.283300, 0.958997,
		0.701191, -0.685348, -0.196543,
		0.712928, 0.670849, 0.204194,
		39.806168, 29.275768, 47.353077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496849, 28.546602, 47.837093>,  <39.307117, 28.806175, 47.210144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496849, 28.546602, 47.837093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708336, 28.885426, 47.815380>,  <39.835228, 29.088720, 47.802353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708336, 28.885426, 47.815380>,  <39.496849, 28.546602, 47.837093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708336, 28.885426, 47.815380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123277, -0.013359, 0.992282,
		0.839796, -0.531331, -0.111486,
		0.528720, 0.847059, -0.054282,
		39.866951, 29.139544, 47.799095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260902, 28.407200, 48.165508>,  <39.496849, 28.546602, 47.837093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260902, 28.407200, 48.165508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.121178, 28.781839, 48.176579>,  <40.037342, 29.006622, 48.183220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.121178, 28.781839, 48.176579>,  <40.260902, 28.407200, 48.165508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121178, 28.781839, 48.176579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142991, 0.024092, 0.989431,
		0.926031, 0.349579, -0.142341,
		-0.349313, 0.936597, 0.027677,
		40.016384, 29.062819, 48.184883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509987, 28.644068, 48.709602>,  <40.260902, 28.407200, 48.165508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509987, 28.644068, 48.709602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.245049, 28.935551, 48.639992>,  <40.086086, 29.110441, 48.598225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.245049, 28.935551, 48.639992>,  <40.509987, 28.644068, 48.709602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245049, 28.935551, 48.639992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304257, -0.049358, 0.951310,
		0.684637, 0.683045, 0.254406,
		-0.662345, 0.728707, -0.174029,
		40.046345, 29.154163, 48.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570335, 29.137928, 49.342651>,  <40.509987, 28.644068, 48.709602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570335, 29.137928, 49.342651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.215721, 29.228264, 49.181137>,  <40.002953, 29.282465, 49.084229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.215721, 29.228264, 49.181137>,  <40.570335, 29.137928, 49.342651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215721, 29.228264, 49.181137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415298, -0.003809, 0.909677,
		0.203903, 0.974157, 0.097168,
		-0.886539, 0.225840, -0.403789,
		39.949760, 29.296017, 49.060001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405113, 29.821594, 49.461155>,  <40.570335, 29.137928, 49.342651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405113, 29.821594, 49.461155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047523, 29.645525, 49.427555>,  <39.832970, 29.539885, 49.407394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047523, 29.645525, 49.427555>,  <40.405113, 29.821594, 49.461155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047523, 29.645525, 49.427555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221000, 0.269995, 0.937156,
		-0.389829, 0.856359, -0.338647,
		-0.893976, -0.440171, -0.084004,
		39.779331, 29.513474, 49.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970108, 30.127579, 49.921970>,  <40.405113, 29.821594, 49.461155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970108, 30.127579, 49.921970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742012, 29.804195, 49.863697>,  <39.605156, 29.610165, 49.828732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742012, 29.804195, 49.863697>,  <39.970108, 30.127579, 49.921970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742012, 29.804195, 49.863697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238509, -0.006762, 0.971117,
		-0.786092, 0.588515, -0.188968,
		-0.570239, -0.808458, -0.145682,
		39.570942, 29.561659, 49.819992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302605, 30.197016, 50.371391>,  <39.970108, 30.127579, 49.921970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302605, 30.197016, 50.371391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340508, 29.809269, 50.280750>,  <39.363247, 29.576620, 50.226364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340508, 29.809269, 50.280750>,  <39.302605, 30.197016, 50.371391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340508, 29.809269, 50.280750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454579, -0.244642, 0.856451,
		-0.885652, 0.021857, -0.463834,
		0.094753, -0.969367, -0.226603,
		39.368935, 29.518459, 50.212769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067307, 29.803123, 51.039982>,  <39.302605, 30.197016, 50.371391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067307, 29.803123, 51.039982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814503, 29.751036, 50.734406>,  <38.662819, 29.719782, 50.551060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814503, 29.751036, 50.734406>,  <39.067307, 29.803123, 51.039982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814503, 29.751036, 50.734406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376558, 0.913187, 0.155867,
		0.677322, 0.386177, -0.626181,
		-0.632012, -0.130221, -0.763939,
		38.624901, 29.711969, 50.505222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512817, 30.265020, 51.075680>,  <39.067307, 29.803123, 51.039982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512817, 30.265020, 51.075680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.213154, 30.519199, 51.150490>,  <38.033356, 30.671707, 51.195374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.213154, 30.519199, 51.150490>,  <38.512817, 30.265020, 51.075680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213154, 30.519199, 51.150490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010762, 0.270629, -0.962623,
		-0.662309, -0.723166, -0.195904,
		-0.749154, 0.635445, 0.187022,
		37.988407, 30.709833, 51.206596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007324, 30.150757, 50.589771>,  <38.512817, 30.265020, 51.075680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007324, 30.150757, 50.589771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.877541, 30.513836, 50.696213>,  <37.799671, 30.731684, 50.760078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.877541, 30.513836, 50.696213>,  <38.007324, 30.150757, 50.589771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877541, 30.513836, 50.696213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088980, 0.250787, -0.963944,
		-0.941704, -0.336442, -0.000604,
		-0.324463, 0.907697, 0.266104,
		37.780201, 30.786144, 50.776043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428738, 30.247574, 50.091091>,  <38.007324, 30.150757, 50.589771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428738, 30.247574, 50.091091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.556534, 30.593573, 50.245857>,  <37.633213, 30.801172, 50.338718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.556534, 30.593573, 50.245857>,  <37.428738, 30.247574, 50.091091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556534, 30.593573, 50.245857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014386, 0.412697, -0.910755,
		-0.947479, 0.285414, 0.144298,
		0.319493, 0.864997, 0.386916,
		37.652382, 30.853071, 50.361931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973053, 30.720137, 49.808895>,  <37.428738, 30.247574, 50.091091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973053, 30.720137, 49.808895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288013, 30.936886, 49.926456>,  <37.476990, 31.066936, 49.996994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288013, 30.936886, 49.926456>,  <36.973053, 30.720137, 49.808895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288013, 30.936886, 49.926456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054713, 0.413453, -0.908880,
		-0.614013, 0.731730, 0.295904,
		0.787397, 0.541875, 0.293900,
		37.524231, 31.099449, 50.014626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784748, 31.400150, 49.685493>,  <36.973053, 30.720137, 49.808895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784748, 31.400150, 49.685493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181530, 31.430540, 49.726013>,  <37.419598, 31.448774, 49.750324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181530, 31.430540, 49.726013>,  <36.784748, 31.400150, 49.685493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181530, 31.430540, 49.726013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074063, 0.300721, -0.950832,
		-0.102701, 0.950681, 0.292674,
		0.991951, 0.075975, 0.101295,
		37.479115, 31.453333, 49.756401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045269, 32.054836, 49.516384>,  <36.784748, 31.400150, 49.685493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045269, 32.054836, 49.516384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396103, 31.866320, 49.479294>,  <37.606606, 31.753208, 49.457039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396103, 31.866320, 49.479294>,  <37.045269, 32.054836, 49.516384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396103, 31.866320, 49.479294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136564, 0.429750, -0.892561,
		0.460508, 0.770191, 0.441290,
		0.877087, -0.471296, -0.092723,
		37.659229, 31.724932, 49.451477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557377, 32.584885, 49.323921>,  <37.045269, 32.054836, 49.516384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557377, 32.584885, 49.323921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689201, 32.228115, 49.200081>,  <37.768295, 32.014053, 49.125778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689201, 32.228115, 49.200081>,  <37.557377, 32.584885, 49.323921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689201, 32.228115, 49.200081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213522, 0.389836, -0.895788,
		0.919671, 0.229114, 0.318923,
		0.329565, -0.891928, -0.309600,
		37.788071, 31.960537, 49.107201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207432, 32.640896, 49.065975>,  <37.557377, 32.584885, 49.323921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207432, 32.640896, 49.065975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044159, 32.318878, 48.893791>,  <37.946194, 32.125668, 48.790482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044159, 32.318878, 48.893791>,  <38.207432, 32.640896, 49.065975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044159, 32.318878, 48.893791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164911, 0.398749, -0.902111,
		0.897881, -0.439215, -0.030003,
		-0.408184, -0.805040, -0.430460,
		37.921703, 32.077366, 48.764652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743759, 32.270229, 48.580402>,  <38.207432, 32.640896, 49.065975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743759, 32.270229, 48.580402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.361706, 32.230759, 48.468700>,  <38.132473, 32.207077, 48.401680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.361706, 32.230759, 48.468700>,  <38.743759, 32.270229, 48.580402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361706, 32.230759, 48.468700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175763, 0.570051, -0.802589,
		0.238383, -0.815662, -0.527133,
		-0.955134, -0.098673, -0.279254,
		38.075165, 32.201157, 48.384926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843437, 32.260983, 47.819771>,  <38.743759, 32.270229, 48.580402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843437, 32.260983, 47.819771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446880, 32.234383, 47.864868>,  <38.208946, 32.218422, 47.891926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446880, 32.234383, 47.864868>,  <38.843437, 32.260983, 47.819771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446880, 32.234383, 47.864868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129604, 0.378222, -0.916597,
		0.018312, -0.923323, -0.383587,
		-0.991396, -0.066499, 0.112741,
		38.149460, 32.214432, 47.898689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541924, 31.768444, 47.312546>,  <38.843437, 32.260983, 47.819771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541924, 31.768444, 47.312546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266804, 32.037518, 47.421673>,  <38.101730, 32.198963, 47.487148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266804, 32.037518, 47.421673>,  <38.541924, 31.768444, 47.312546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266804, 32.037518, 47.421673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048581, 0.332330, -0.941911,
		-0.724274, -0.661098, -0.195896,
		-0.687798, 0.672685, 0.272815,
		38.060463, 32.239323, 47.503517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070538, 31.651159, 46.762157>,  <38.541924, 31.768444, 47.312546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070538, 31.651159, 46.762157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958031, 31.994410, 46.933975>,  <37.890526, 32.200359, 47.037067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.958031, 31.994410, 46.933975>,  <38.070538, 31.651159, 46.762157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958031, 31.994410, 46.933975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094929, 0.420543, -0.902293,
		-0.954922, -0.294564, -0.036825,
		-0.281269, 0.858124, 0.429548,
		37.873650, 32.251846, 47.062840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545223, 31.888632, 46.380508>,  <38.070538, 31.651159, 46.762157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545223, 31.888632, 46.380508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670181, 32.215683, 46.573959>,  <37.745155, 32.411915, 46.690029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670181, 32.215683, 46.573959>,  <37.545223, 31.888632, 46.380508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670181, 32.215683, 46.573959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115231, 0.537965, -0.835054,
		-0.942939, 0.205135, 0.262271,
		0.312391, 0.817627, 0.483630,
		37.763897, 32.460972, 46.719048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935753, 32.439125, 46.275143>,  <37.545223, 31.888632, 46.380508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935753, 32.439125, 46.275143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280895, 32.627304, 46.349064>,  <37.487980, 32.740211, 46.393417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280895, 32.627304, 46.349064>,  <36.935753, 32.439125, 46.275143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280895, 32.627304, 46.349064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163631, 0.605930, -0.778507,
		-0.478224, 0.641503, 0.599813,
		0.862859, 0.470449, 0.184800,
		37.539753, 32.768440, 46.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287823, 32.904613, 46.349098>,  <36.935753, 32.439125, 46.275143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287823, 32.904613, 46.349098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936462, 32.761284, 46.222595>,  <35.725647, 32.675285, 46.146694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936462, 32.761284, 46.222595>,  <36.287823, 32.904613, 46.349098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936462, 32.761284, 46.222595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141249, -0.437522, 0.888044,
		-0.456574, 0.824730, 0.333708,
		-0.878401, -0.358322, -0.316253,
		35.672943, 32.653786, 46.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840805, 32.842098, 46.928379>,  <36.287823, 32.904613, 46.349098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840805, 32.842098, 46.928379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657436, 32.600063, 46.668007>,  <35.547413, 32.454842, 46.511784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.657436, 32.600063, 46.668007>,  <35.840805, 32.842098, 46.928379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657436, 32.600063, 46.668007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360879, -0.542589, 0.758527,
		-0.812165, 0.582637, 0.030373,
		-0.458426, -0.605088, -0.650933,
		35.519909, 32.418537, 46.472729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180878, 32.846272, 47.198772>,  <35.840805, 32.842098, 46.928379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180878, 32.846272, 47.198772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192287, 32.520111, 46.967499>,  <35.199131, 32.324413, 46.828735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192287, 32.520111, 46.967499>,  <35.180878, 32.846272, 47.198772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192287, 32.520111, 46.967499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333220, -0.553093, 0.763578,
		-0.942418, 0.170887, -0.287483,
		0.028519, -0.815405, -0.578188,
		35.200844, 32.275490, 46.794041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589184, 32.550583, 47.289658>,  <35.180878, 32.846272, 47.198772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589184, 32.550583, 47.289658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800014, 32.248119, 47.134529>,  <34.926514, 32.066643, 47.041451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800014, 32.248119, 47.134529>,  <34.589184, 32.550583, 47.289658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800014, 32.248119, 47.134529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422568, -0.629151, 0.652385,
		-0.737309, -0.179975, -0.651141,
		0.527079, -0.756160, -0.387827,
		34.958138, 32.021271, 47.018181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114677, 31.920166, 47.210484>,  <34.589184, 32.550583, 47.289658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114677, 31.920166, 47.210484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479481, 31.757555, 47.232281>,  <34.698364, 31.659988, 47.245361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.479481, 31.757555, 47.232281>,  <34.114677, 31.920166, 47.210484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479481, 31.757555, 47.232281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321660, -0.626441, 0.710005,
		-0.254496, -0.665063, -0.702085,
		0.912012, -0.406526, 0.054498,
		34.753086, 31.635597, 47.248631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991856, 31.183786, 47.136726>,  <34.114677, 31.920166, 47.210484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991856, 31.183786, 47.136726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347763, 31.235823, 47.311722>,  <34.561306, 31.267044, 47.416718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347763, 31.235823, 47.311722>,  <33.991856, 31.183786, 47.136726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347763, 31.235823, 47.311722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337955, -0.456448, 0.823068,
		0.306765, -0.880188, -0.362167,
		0.889765, 0.130092, 0.437486,
		34.614693, 31.274851, 47.442966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984905, 30.643055, 47.502159>,  <33.991856, 31.183786, 47.136726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984905, 30.643055, 47.502159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285767, 30.834705, 47.683136>,  <34.466282, 30.949696, 47.791721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285767, 30.834705, 47.683136>,  <33.984905, 30.643055, 47.502159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285767, 30.834705, 47.683136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241720, -0.438127, 0.865804,
		0.613057, -0.760581, -0.213724,
		0.752152, 0.479125, 0.452444,
		34.511414, 30.978443, 47.818871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076920, 29.969666, 47.274113>,  <33.984905, 30.643055, 47.502159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076920, 29.969666, 47.274113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852856, 29.652109, 47.179497>,  <33.718418, 29.461575, 47.122726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852856, 29.652109, 47.179497>,  <34.076920, 29.969666, 47.274113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852856, 29.652109, 47.179497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172895, 0.167211, -0.970643,
		0.810139, -0.584615, 0.043595,
		-0.560163, -0.793893, -0.236541,
		33.684807, 29.413942, 47.108536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506496, 29.565819, 46.861782>,  <34.076920, 29.969666, 47.274113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506496, 29.565819, 46.861782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124233, 29.485533, 46.775585>,  <33.894875, 29.437361, 46.723866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124233, 29.485533, 46.775585>,  <34.506496, 29.565819, 46.861782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124233, 29.485533, 46.775585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205429, 0.069938, -0.976170,
		0.211006, -0.977149, -0.025603,
		-0.955654, -0.200718, -0.215492,
		33.837536, 29.425318, 46.710938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562256, 29.114437, 46.301785>,  <34.506496, 29.565819, 46.861782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562256, 29.114437, 46.301785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179649, 29.226433, 46.269081>,  <33.950085, 29.293631, 46.249458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179649, 29.226433, 46.269081>,  <34.562256, 29.114437, 46.301785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179649, 29.226433, 46.269081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107507, 0.077856, -0.991151,
		-0.271148, -0.956841, -0.104571,
		-0.956515, 0.279991, -0.081756,
		33.892696, 29.310431, 46.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308361, 28.876429, 45.585438>,  <34.562256, 29.114437, 46.301785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308361, 28.876429, 45.585438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045452, 29.155169, 45.700253>,  <33.887707, 29.322412, 45.769142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045452, 29.155169, 45.700253>,  <34.308361, 28.876429, 45.585438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045452, 29.155169, 45.700253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003693, 0.383838, -0.923393,
		-0.753644, -0.605861, -0.254860,
		-0.657273, 0.696850, 0.287040,
		33.848270, 29.364223, 45.786366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682438, 28.850142, 45.042877>,  <34.308361, 28.876429, 45.585438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682438, 28.850142, 45.042877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696144, 29.208267, 45.220524>,  <33.704369, 29.423143, 45.327110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696144, 29.208267, 45.220524>,  <33.682438, 28.850142, 45.042877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696144, 29.208267, 45.220524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139463, 0.444313, -0.884950,
		-0.989634, -0.031614, 0.140088,
		0.034267, 0.895314, 0.444117,
		33.706425, 29.476862, 45.353760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960121, 29.204245, 44.981197>,  <33.682438, 28.850142, 45.042877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960121, 29.204245, 44.981197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259769, 29.464203, 45.032513>,  <33.439556, 29.620178, 45.063301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259769, 29.464203, 45.032513>,  <32.960121, 29.204245, 44.981197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259769, 29.464203, 45.032513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070069, 0.270306, -0.960221,
		-0.658720, 0.710331, 0.248029,
		0.749118, 0.649896, 0.128284,
		33.484505, 29.659172, 45.070999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738365, 29.735712, 44.654778>,  <32.960121, 29.204245, 44.981197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738365, 29.735712, 44.654778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119499, 29.855053, 44.677048>,  <33.348179, 29.926657, 44.690411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119499, 29.855053, 44.677048>,  <32.738365, 29.735712, 44.654778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119499, 29.855053, 44.677048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082469, 0.431065, -0.898544,
		-0.292082, 0.851569, 0.435337,
		0.952831, 0.298350, 0.055679,
		33.405350, 29.944557, 44.693752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.976128, 26.396889, 48.232204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.169785, 26.723827, 48.357136>,  <38.285980, 26.919991, 48.432095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.169785, 26.723827, 48.357136>,  <37.976128, 26.396889, 48.232204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169785, 26.723827, 48.357136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177217, 0.441150, -0.879761,
		-0.856854, 0.370581, 0.358428,
		0.484144, 0.817347, 0.312328,
		38.315029, 26.969032, 48.450832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601940, 27.084568, 48.169888>,  <37.976128, 26.396889, 48.232204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601940, 27.084568, 48.169888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.978233, 27.219563, 48.183308>,  <38.204010, 27.300560, 48.191360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.978233, 27.219563, 48.183308>,  <37.601940, 27.084568, 48.169888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978233, 27.219563, 48.183308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145285, 0.490406, -0.859299,
		-0.306455, 0.803496, 0.510373,
		0.940733, 0.337486, 0.033551,
		38.260452, 27.320808, 48.193375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592831, 27.696453, 47.833641>,  <37.601940, 27.084568, 48.169888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592831, 27.696453, 47.833641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.990536, 27.668568, 47.866085>,  <38.229160, 27.651836, 47.885551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.990536, 27.668568, 47.866085>,  <37.592831, 27.696453, 47.833641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990536, 27.668568, 47.866085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100786, 0.357039, -0.928636,
		0.035780, 0.931484, 0.362017,
		0.994265, -0.069713, 0.081106,
		38.288815, 27.647654, 47.890415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847477, 28.385887, 47.618916>,  <37.592831, 27.696453, 47.833641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847477, 28.385887, 47.618916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.144230, 28.122931, 47.566078>,  <38.322281, 27.965157, 47.534378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.144230, 28.122931, 47.566078>,  <37.847477, 28.385887, 47.618916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144230, 28.122931, 47.566078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142139, 0.346701, -0.927143,
		0.655293, 0.669055, 0.350652,
		0.741881, -0.657392, -0.132092,
		38.366795, 27.925713, 47.526451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314857, 28.727482, 47.246590>,  <37.847477, 28.385887, 47.618916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314857, 28.727482, 47.246590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.408195, 28.342304, 47.192493>,  <38.464199, 28.111198, 47.160034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.408195, 28.342304, 47.192493>,  <38.314857, 28.727482, 47.246590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408195, 28.342304, 47.192493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075696, 0.156649, -0.984749,
		0.969444, 0.219544, 0.109444,
		0.233340, -0.962944, -0.135244,
		38.478199, 28.053421, 47.151920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798027, 28.650333, 46.638248>,  <38.314857, 28.727482, 47.246590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798027, 28.650333, 46.638248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.638721, 28.283808, 46.655003>,  <38.543137, 28.063892, 46.665054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.638721, 28.283808, 46.655003>,  <38.798027, 28.650333, 46.638248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638721, 28.283808, 46.655003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017505, -0.038064, -0.999122,
		0.917103, -0.398649, -0.000881,
		-0.398265, -0.916313, 0.041887,
		38.519241, 28.008913, 46.667568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018524, 28.403421, 46.034359>,  <38.798027, 28.650333, 46.638248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018524, 28.403421, 46.034359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.741287, 28.133749, 46.136417>,  <38.574944, 27.971945, 46.197655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.741287, 28.133749, 46.136417>,  <39.018524, 28.403421, 46.034359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741287, 28.133749, 46.136417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180562, -0.180303, -0.966896,
		0.697868, -0.716219, 0.003235,
		-0.693092, -0.674182, 0.255150,
		38.533360, 27.931494, 46.212963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177849, 27.804722, 45.651180>,  <39.018524, 28.403421, 46.034359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177849, 27.804722, 45.651180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.784813, 27.782217, 45.721996>,  <38.548988, 27.768715, 45.764484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.784813, 27.782217, 45.721996>,  <39.177849, 27.804722, 45.651180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784813, 27.782217, 45.721996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170050, -0.111195, -0.979142,
		0.074774, -0.992205, 0.099692,
		-0.982594, -0.056261, 0.177039,
		38.490036, 27.765339, 45.775108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004978, 27.321779, 45.278740>,  <39.177849, 27.804722, 45.651180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004978, 27.321779, 45.278740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.656147, 27.500078, 45.359520>,  <38.446846, 27.607058, 45.407990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.656147, 27.500078, 45.359520>,  <39.004978, 27.321779, 45.278740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656147, 27.500078, 45.359520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154668, 0.140472, -0.977929,
		-0.464278, -0.884068, -0.053560,
		-0.872080, 0.445747, 0.201955,
		38.394524, 27.633802, 45.420105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551105, 27.040455, 44.823219>,  <39.004978, 27.321779, 45.278740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551105, 27.040455, 44.823219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.382614, 27.383314, 44.941788>,  <38.281521, 27.589029, 45.012928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.382614, 27.383314, 44.941788>,  <38.551105, 27.040455, 44.823219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382614, 27.383314, 44.941788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065411, 0.297268, -0.952551,
		-0.904593, -0.420629, -0.069151,
		-0.421227, 0.857148, 0.296420,
		38.256245, 27.640459, 45.030712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939106, 27.111698, 44.358868>,  <38.551105, 27.040455, 44.823219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939106, 27.111698, 44.358868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.055298, 27.454048, 44.530025>,  <38.125015, 27.659458, 44.632721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.055298, 27.454048, 44.530025>,  <37.939106, 27.111698, 44.358868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055298, 27.454048, 44.530025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036393, 0.456739, -0.888856,
		-0.956188, 0.242624, 0.163822,
		0.290481, 0.855876, 0.427898,
		38.142441, 27.710812, 44.658394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416664, 27.559755, 44.099060>,  <37.939106, 27.111698, 44.358868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416664, 27.559755, 44.099060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.723858, 27.773928, 44.239639>,  <37.908173, 27.902431, 44.323986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.723858, 27.773928, 44.239639>,  <37.416664, 27.559755, 44.099060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723858, 27.773928, 44.239639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012440, 0.561104, -0.827652,
		-0.640350, 0.631250, 0.437579,
		0.767983, 0.535430, 0.351450,
		37.954254, 27.934557, 44.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769756, 27.931150, 44.157578>,  <37.416664, 27.559755, 44.099060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769756, 27.931150, 44.157578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429592, 27.866585, 43.957279>,  <36.225494, 27.827845, 43.837101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429592, 27.866585, 43.957279>,  <36.769756, 27.931150, 44.157578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429592, 27.866585, 43.957279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448555, -0.274948, 0.850413,
		-0.274948, 0.947812, 0.161416,
		-0.850413, -0.161416, -0.500742,
		36.174469, 27.818161, 43.807056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311943, 28.357042, 44.464359>,  <36.769756, 27.931150, 44.157578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311943, 28.357042, 44.464359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.112694, 28.072634, 44.265839>,  <35.993145, 27.901989, 44.146725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.112694, 28.072634, 44.265839>,  <36.311943, 28.357042, 44.464359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112694, 28.072634, 44.265839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374749, -0.339625, 0.862681,
		-0.781941, 0.615715, -0.097277,
		-0.498128, -0.711020, -0.496305,
		35.963257, 27.859327, 44.116947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595158, 28.326014, 44.718758>,  <36.311943, 28.357042, 44.464359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595158, 28.326014, 44.718758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.672699, 27.975000, 44.543320>,  <35.719223, 27.764393, 44.438057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.672699, 27.975000, 44.543320>,  <35.595158, 28.326014, 44.718758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672699, 27.975000, 44.543320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318942, -0.479158, 0.817731,
		-0.927738, -0.018632, -0.372766,
		0.193850, -0.877531, -0.438590,
		35.730854, 27.711740, 44.411743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006317, 27.875547, 44.898148>,  <35.595158, 28.326014, 44.718758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006317, 27.875547, 44.898148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292587, 27.619499, 44.786396>,  <35.464352, 27.465870, 44.719345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292587, 27.619499, 44.786396>,  <35.006317, 27.875547, 44.898148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292587, 27.619499, 44.786396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075810, -0.468839, 0.880024,
		-0.694305, -0.608634, -0.384065,
		0.715678, -0.640121, -0.279377,
		35.507290, 27.427464, 44.702583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762531, 27.273724, 45.017155>,  <35.006317, 27.875547, 44.898148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762531, 27.273724, 45.017155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155037, 27.196850, 45.011612>,  <35.390541, 27.150724, 45.008286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155037, 27.196850, 45.011612>,  <34.762531, 27.273724, 45.017155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155037, 27.196850, 45.011612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074417, -0.444319, 0.892773,
		-0.177734, -0.875012, -0.450295,
		0.981261, -0.192185, -0.013855,
		35.449413, 27.139194, 45.007454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772404, 26.510702, 45.185516>,  <34.762531, 27.273724, 45.017155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772404, 26.510702, 45.185516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.129501, 26.672264, 45.265385>,  <35.343761, 26.769201, 45.313305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.129501, 26.672264, 45.265385>,  <34.772404, 26.510702, 45.185516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129501, 26.672264, 45.265385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034631, -0.380334, 0.924201,
		0.449231, -0.831989, -0.325553,
		0.892744, 0.403906, 0.199671,
		35.397324, 26.793436, 45.325287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288975, 26.004383, 45.319935>,  <34.772404, 26.510702, 45.185516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288975, 26.004383, 45.319935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410156, 26.328472, 45.520638>,  <35.482864, 26.522924, 45.641060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410156, 26.328472, 45.520638>,  <35.288975, 26.004383, 45.319935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410156, 26.328472, 45.520638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163161, -0.474628, 0.864932,
		0.938933, -0.343904, -0.011595,
		0.302957, 0.810221, 0.501755,
		35.501045, 26.571539, 45.671165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686634, 25.742233, 45.895809>,  <35.288975, 26.004383, 45.319935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686634, 25.742233, 45.895809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580746, 26.109818, 46.012726>,  <35.517212, 26.330368, 46.082878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580746, 26.109818, 46.012726>,  <35.686634, 25.742233, 45.895809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580746, 26.109818, 46.012726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210063, -0.350781, 0.912593,
		0.941168, 0.180182, 0.285899,
		-0.264721, 0.918960, 0.292294,
		35.501328, 26.385506, 46.100414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989262, 25.846415, 46.658508>,  <35.686634, 25.742233, 45.895809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989262, 25.846415, 46.658508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721874, 26.141762, 46.622807>,  <35.561443, 26.318970, 46.601387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721874, 26.141762, 46.622807>,  <35.989262, 25.846415, 46.658508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721874, 26.141762, 46.622807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258532, -0.118165, 0.958749,
		0.697364, 0.663964, 0.269881,
		-0.668465, 0.738369, -0.089251,
		35.521336, 26.363272, 46.596031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069935, 26.245148, 47.172424>,  <35.989262, 25.846415, 46.658508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069935, 26.245148, 47.172424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.694191, 26.358011, 47.094460>,  <35.468746, 26.425730, 47.047680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.694191, 26.358011, 47.094460>,  <36.069935, 26.245148, 47.172424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694191, 26.358011, 47.094460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245529, -0.156542, 0.956666,
		0.239419, 0.946510, 0.216327,
		-0.939358, 0.282159, -0.194917,
		35.412384, 26.442659, 47.035984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814995, 26.702654, 47.723434>,  <36.069935, 26.245148, 47.172424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814995, 26.702654, 47.723434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485344, 26.568262, 47.541035>,  <35.287552, 26.487627, 47.431595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.485344, 26.568262, 47.541035>,  <35.814995, 26.702654, 47.723434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485344, 26.568262, 47.541035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353629, -0.323670, 0.877601,
		-0.442447, 0.884509, 0.147934,
		-0.824128, -0.335978, -0.455995,
		35.238106, 26.467468, 47.404236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203003, 27.037445, 48.054428>,  <35.814995, 26.702654, 47.723434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203003, 27.037445, 48.054428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.043934, 26.712797, 47.883255>,  <34.948490, 26.518009, 47.780552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.043934, 26.712797, 47.883255>,  <35.203003, 27.037445, 48.054428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043934, 26.712797, 47.883255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399645, -0.266611, 0.877042,
		-0.825917, 0.519799, -0.218336,
		-0.397675, -0.811620, -0.427934,
		34.924633, 26.469311, 47.754875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520966, 27.136665, 48.205902>,  <35.203003, 27.037445, 48.054428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520966, 27.136665, 48.205902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.565498, 26.750551, 48.111393>,  <34.592216, 26.518883, 48.054688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.565498, 26.750551, 48.111393>,  <34.520966, 27.136665, 48.205902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565498, 26.750551, 48.111393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425964, -0.261157, 0.866228,
		-0.897864, 0.004207, -0.440253,
		0.111331, -0.965287, -0.236275,
		34.598896, 26.460964, 48.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854477, 26.892824, 48.325436>,  <34.520966, 27.136665, 48.205902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854477, 26.892824, 48.325436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.104088, 26.581017, 48.347122>,  <34.253853, 26.393932, 48.360134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.104088, 26.581017, 48.347122>,  <33.854477, 26.892824, 48.325436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104088, 26.581017, 48.347122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401905, -0.260679, 0.877792,
		-0.670124, -0.569555, -0.475964,
		0.624024, -0.779521, 0.054220,
		34.291294, 26.347160, 48.363388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411743, 26.357616, 48.553375>,  <33.854477, 26.892824, 48.325436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411743, 26.357616, 48.553375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.772511, 26.259186, 48.695354>,  <33.988972, 26.200127, 48.780544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.772511, 26.259186, 48.695354>,  <33.411743, 26.357616, 48.553375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772511, 26.259186, 48.695354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410909, -0.235746, 0.880669,
		-0.133028, -0.940145, -0.313736,
		0.901918, -0.246071, 0.354954,
		34.043087, 26.185364, 48.801842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201862, 27.080393, 48.841679>,  <33.411743, 26.357616, 48.553375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201862, 27.080393, 48.841679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442772, 27.369904, 48.976383>,  <33.587318, 27.543610, 49.057205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442772, 27.369904, 48.976383>,  <33.201862, 27.080393, 48.841679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442772, 27.369904, 48.976383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050425, 0.455507, -0.888803,
		-0.796693, 0.518324, 0.310837,
		0.602277, 0.723777, 0.336763,
		33.623455, 27.587036, 49.077412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813263, 27.669310, 48.753624>,  <33.201862, 27.080393, 48.841679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813263, 27.669310, 48.753624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158203, 27.870438, 48.777351>,  <33.365170, 27.991114, 48.791588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.158203, 27.870438, 48.777351>,  <32.813263, 27.669310, 48.753624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158203, 27.870438, 48.777351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126949, 0.328143, -0.936059,
		-0.490131, 0.799685, 0.346807,
		0.862355, 0.502819, 0.059314,
		33.416908, 28.021284, 48.795147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624943, 28.337162, 48.479572>,  <32.813263, 27.669310, 48.753624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624943, 28.337162, 48.479572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023682, 28.334438, 48.447941>,  <33.262924, 28.332804, 48.428963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023682, 28.334438, 48.447941>,  <32.624943, 28.337162, 48.479572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023682, 28.334438, 48.447941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059008, 0.602746, -0.795748,
		0.053084, 0.797904, 0.600443,
		0.996845, -0.006810, -0.079079,
		33.322735, 28.332396, 48.424217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729294, 29.022957, 48.246693>,  <32.624943, 28.337162, 48.479572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729294, 29.022957, 48.246693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071255, 28.826309, 48.180405>,  <33.276432, 28.708321, 48.140633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071255, 28.826309, 48.180405>,  <32.729294, 29.022957, 48.246693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071255, 28.826309, 48.180405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251050, 0.671556, -0.697128,
		0.454008, 0.554370, 0.697532,
		0.854898, -0.491617, -0.165717,
		33.327724, 28.678823, 48.130692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276188, 29.550583, 48.282204>,  <32.729294, 29.022957, 48.246693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276188, 29.550583, 48.282204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.406784, 29.234995, 48.074001>,  <33.485142, 29.045641, 47.949078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.406784, 29.234995, 48.074001>,  <33.276188, 29.550583, 48.282204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406784, 29.234995, 48.074001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333745, 0.611440, -0.717464,
		0.884319, 0.060526, 0.462944,
		0.326488, -0.788972, -0.520508,
		33.504730, 28.998302, 47.917850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726223, 29.858194, 47.958511>,  <33.276188, 29.550583, 48.282204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726223, 29.858194, 47.958511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669010, 29.528896, 47.738762>,  <33.634682, 29.331318, 47.606911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.669010, 29.528896, 47.738762>,  <33.726223, 29.858194, 47.958511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669010, 29.528896, 47.738762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154814, 0.529639, -0.833976,
		0.977536, -0.204332, 0.051697,
		-0.143028, -0.823244, -0.549374,
		33.626102, 29.281923, 47.573948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338909, 30.070871, 47.961987>,  <33.726223, 29.858194, 47.958511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338909, 30.070871, 47.961987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472080, 30.425327, 48.090931>,  <34.551983, 30.638000, 48.168297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472080, 30.425327, 48.090931>,  <34.338909, 30.070871, 47.961987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472080, 30.425327, 48.090931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015208, -0.336770, 0.941464,
		0.942828, -0.318345, -0.098645,
		0.332932, 0.886139, 0.322357,
		34.571960, 30.691170, 48.187637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974926, 29.992989, 48.392666>,  <34.338909, 30.070871, 47.961987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974926, 29.992989, 48.392666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789337, 30.330923, 48.499233>,  <34.677982, 30.533684, 48.563175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789337, 30.330923, 48.499233>,  <34.974926, 29.992989, 48.392666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789337, 30.330923, 48.499233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071399, -0.264109, 0.961847,
		0.882966, 0.465295, 0.062220,
		-0.463975, 0.844836, 0.266421,
		34.650146, 30.584373, 48.579159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351315, 30.260231, 48.888348>,  <34.974926, 29.992989, 48.392666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351315, 30.260231, 48.888348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004696, 30.448048, 48.956020>,  <34.796722, 30.560738, 48.996624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.004696, 30.448048, 48.956020>,  <35.351315, 30.260231, 48.888348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004696, 30.448048, 48.956020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282009, 0.180979, 0.942187,
		0.411778, 0.864163, -0.289242,
		-0.866550, 0.469541, 0.169179,
		34.744732, 30.588909, 49.006775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504978, 30.769859, 49.325153>,  <35.351315, 30.260231, 48.888348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504978, 30.769859, 49.325153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.108368, 30.810944, 49.356953>,  <34.870399, 30.835594, 49.376034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.108368, 30.810944, 49.356953>,  <35.504978, 30.769859, 49.325153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108368, 30.810944, 49.356953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107880, 0.310441, 0.944451,
		0.072324, 0.945028, -0.318892,
		-0.991530, 0.102709, 0.079497,
		34.810909, 30.841757, 49.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420704, 31.422138, 49.669502>,  <35.504978, 30.769859, 49.325153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420704, 31.422138, 49.669502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.093407, 31.196789, 49.715267>,  <34.897030, 31.061579, 49.742725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.093407, 31.196789, 49.715267>,  <35.420704, 31.422138, 49.669502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093407, 31.196789, 49.715267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002548, 0.202573, 0.979264,
		-0.574867, 0.800984, -0.167190,
		-0.818243, -0.563372, 0.114412,
		34.847935, 31.027777, 49.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080883, 31.801941, 50.107262>,  <35.420704, 31.422138, 49.669502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080883, 31.801941, 50.107262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926575, 31.434557, 50.142151>,  <34.833988, 31.214127, 50.163082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926575, 31.434557, 50.142151>,  <35.080883, 31.801941, 50.107262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926575, 31.434557, 50.142151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152206, 0.156600, 0.975864,
		-0.909952, 0.363187, -0.200207,
		-0.385773, -0.918462, 0.087219,
		34.810844, 31.159018, 50.168316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548317, 31.815472, 50.602448>,  <35.080883, 31.801941, 50.107262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548317, 31.815472, 50.602448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660427, 31.431557, 50.608742>,  <34.727695, 31.201208, 50.612518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660427, 31.431557, 50.608742>,  <34.548317, 31.815472, 50.602448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660427, 31.431557, 50.608742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049384, 0.001955, 0.998778,
		-0.958647, -0.280713, -0.046850,
		0.280279, -0.959790, 0.015737,
		34.744511, 31.143620, 50.613464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432709, 31.613346, 51.319912>,  <34.548317, 31.815472, 50.602448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432709, 31.613346, 51.319912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.636837, 31.300516, 51.176842>,  <34.759315, 31.112818, 51.091000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.636837, 31.300516, 51.176842>,  <34.432709, 31.613346, 51.319912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636837, 31.300516, 51.176842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218013, -0.284668, 0.933506,
		-0.831891, -0.554365, 0.025231,
		0.510321, -0.782076, -0.357672,
		34.789932, 31.065893, 51.069542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219002, 31.114759, 51.738087>,  <34.432709, 31.613346, 51.319912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219002, 31.114759, 51.738087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563175, 30.983650, 51.582027>,  <34.769680, 30.904985, 51.488392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563175, 30.983650, 51.582027>,  <34.219002, 31.114759, 51.738087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563175, 30.983650, 51.582027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307398, -0.276758, 0.910446,
		-0.406397, -0.903310, -0.137375,
		0.860435, -0.327774, -0.390149,
		34.821304, 30.885319, 51.464981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.850506, 34.987423, 35.923870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011951, 35.241108, 36.187649>,  <37.108818, 35.393318, 36.345917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011951, 35.241108, 36.187649>,  <36.850506, 34.987423, 35.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011951, 35.241108, 36.187649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371932, -0.544788, 0.751580,
		0.835919, -0.548620, 0.015998,
		0.403617, 0.634210, 0.659447,
		37.133038, 35.431370, 36.385483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853878, 34.612576, 36.527260>,  <36.850506, 34.987423, 35.923870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853878, 34.612576, 36.527260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976540, 34.946129, 36.710827>,  <37.050137, 35.146259, 36.820969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976540, 34.946129, 36.710827>,  <36.853878, 34.612576, 36.527260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976540, 34.946129, 36.710827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312264, -0.367323, 0.876108,
		0.899142, -0.411963, 0.147751,
		0.306652, 0.833882, 0.458917,
		37.068535, 35.196293, 36.848503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237259, 34.419022, 37.022476>,  <36.853878, 34.612576, 36.527260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237259, 34.419022, 37.022476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086620, 34.772545, 37.133514>,  <36.996239, 34.984657, 37.200138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086620, 34.772545, 37.133514>,  <37.237259, 34.419022, 37.022476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086620, 34.772545, 37.133514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328998, -0.407725, 0.851775,
		0.865988, 0.229447, 0.444319,
		-0.376597, 0.883807, 0.277598,
		36.973640, 35.037685, 37.216793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544296, 34.542313, 37.622562>,  <37.237259, 34.419022, 37.022476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544296, 34.542313, 37.622562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221210, 34.778130, 37.625000>,  <37.027359, 34.919621, 37.626461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221210, 34.778130, 37.625000>,  <37.544296, 34.542313, 37.622562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221210, 34.778130, 37.625000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343707, -0.479257, 0.807576,
		0.479019, 0.650197, 0.589733,
		-0.807717, 0.589539, 0.006096,
		36.978897, 34.954990, 37.626827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291073, 34.489017, 38.330914>,  <37.544296, 34.542313, 37.622562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291073, 34.489017, 38.330914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982380, 34.677185, 38.159737>,  <36.797165, 34.790085, 38.057030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982380, 34.677185, 38.159737>,  <37.291073, 34.489017, 38.330914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982380, 34.677185, 38.159737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606842, -0.343490, 0.716769,
		0.190192, 0.812845, 0.550554,
		-0.771732, 0.470423, -0.427939,
		36.750862, 34.818314, 38.031353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020763, 34.887077, 38.792683>,  <37.291073, 34.489017, 38.330914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020763, 34.887077, 38.792683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720123, 34.845989, 38.532055>,  <36.539738, 34.821335, 38.375679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720123, 34.845989, 38.532055>,  <37.020763, 34.887077, 38.792683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720123, 34.845989, 38.532055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632376, -0.168725, 0.756064,
		-0.187599, 0.980296, 0.061857,
		-0.751603, -0.102720, -0.651568,
		36.494644, 34.815174, 38.336586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467285, 35.440456, 38.840084>,  <37.020763, 34.887077, 38.792683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467285, 35.440456, 38.840084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310741, 35.104599, 38.689438>,  <36.216816, 34.903084, 38.599049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310741, 35.104599, 38.689438>,  <36.467285, 35.440456, 38.840084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310741, 35.104599, 38.689438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603687, -0.074635, 0.793720,
		-0.694550, 0.537987, -0.477672,
		-0.391360, -0.839642, -0.376614,
		36.193333, 34.852707, 38.576454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861229, 35.613403, 38.811619>,  <36.467285, 35.440456, 38.840084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861229, 35.613403, 38.811619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879272, 35.213940, 38.801506>,  <35.890099, 34.974262, 38.795441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879272, 35.213940, 38.801506>,  <35.861229, 35.613403, 38.811619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879272, 35.213940, 38.801506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608413, -0.047533, 0.792196,
		-0.792338, -0.020354, -0.609743,
		0.045108, -0.998662, -0.025279,
		35.892803, 34.914341, 38.793922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270329, 35.419018, 39.106094>,  <35.861229, 35.613403, 38.811619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270329, 35.419018, 39.106094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475937, 35.075909, 39.107651>,  <35.599300, 34.870045, 39.108585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475937, 35.075909, 39.107651>,  <35.270329, 35.419018, 39.106094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475937, 35.075909, 39.107651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382729, -0.225286, 0.895971,
		-0.767661, -0.462034, -0.444095,
		0.514018, -0.857771, 0.003891,
		35.630142, 34.818577, 39.108818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810070, 35.060593, 39.471764>,  <35.270329, 35.419018, 39.106094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810070, 35.060593, 39.471764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142052, 34.837505, 39.476299>,  <35.341240, 34.703651, 39.479019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142052, 34.837505, 39.476299>,  <34.810070, 35.060593, 39.471764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142052, 34.837505, 39.476299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286737, -0.409089, 0.866273,
		-0.478500, -0.722215, -0.499443,
		0.829952, -0.557720, 0.011337,
		35.391037, 34.670189, 39.479702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569500, 34.329353, 39.678406>,  <34.810070, 35.060593, 39.471764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569500, 34.329353, 39.678406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959515, 34.368195, 39.758274>,  <35.193523, 34.391499, 39.806194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959515, 34.368195, 39.758274>,  <34.569500, 34.329353, 39.678406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959515, 34.368195, 39.758274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141540, -0.421032, 0.895935,
		0.171067, -0.901833, -0.396779,
		0.975040, 0.097104, 0.199670,
		35.252026, 34.397327, 39.818176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876835, 33.670189, 39.875702>,  <34.569500, 34.329353, 39.678406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876835, 33.670189, 39.875702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105209, 33.963062, 40.024261>,  <35.242233, 34.138786, 40.113400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105209, 33.963062, 40.024261>,  <34.876835, 33.670189, 39.875702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105209, 33.963062, 40.024261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091614, -0.392736, 0.915077,
		0.815869, -0.556473, -0.157147,
		0.570933, 0.732186, 0.371401,
		35.276489, 34.182716, 40.135681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031727, 33.061508, 39.394817>,  <34.876835, 33.670189, 39.875702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031727, 33.061508, 39.394817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791203, 32.750011, 39.323284>,  <34.646889, 32.563114, 39.280365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791203, 32.750011, 39.323284>,  <35.031727, 33.061508, 39.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791203, 32.750011, 39.323284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044387, 0.256027, -0.965650,
		0.797779, -0.572721, -0.188519,
		-0.601314, -0.778743, -0.178831,
		34.610809, 32.516388, 39.269634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310509, 32.743515, 38.769585>,  <35.031727, 33.061508, 39.394817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310509, 32.743515, 38.769585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934620, 32.613091, 38.810760>,  <34.709087, 32.534836, 38.835464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934620, 32.613091, 38.810760>,  <35.310509, 32.743515, 38.769585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934620, 32.613091, 38.810760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183805, 0.227871, -0.956185,
		0.288323, -0.917473, -0.274069,
		-0.939726, -0.326065, 0.102935,
		34.652702, 32.515270, 38.841640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138393, 32.247890, 38.194550>,  <35.310509, 32.743515, 38.769585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138393, 32.247890, 38.194550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793690, 32.385670, 38.343529>,  <34.586868, 32.468338, 38.432919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793690, 32.385670, 38.343529>,  <35.138393, 32.247890, 38.194550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793690, 32.385670, 38.343529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283121, 0.282659, -0.916486,
		-0.420962, -0.895241, -0.146062,
		-0.861762, 0.344453, 0.372450,
		34.535160, 32.489006, 38.455265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718922, 32.003006, 37.763412>,  <35.138393, 32.247890, 38.194550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718922, 32.003006, 37.763412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517967, 32.308426, 37.925694>,  <34.397396, 32.491680, 38.023064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517967, 32.308426, 37.925694>,  <34.718922, 32.003006, 37.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517967, 32.308426, 37.925694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453375, 0.166911, -0.875552,
		-0.736248, -0.623799, 0.262323,
		-0.502384, 0.763554, 0.405703,
		34.367252, 32.537491, 38.047405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153038, 31.808775, 37.708481>,  <34.718922, 32.003006, 37.763412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153038, 31.808775, 37.708481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120426, 32.206955, 37.728210>,  <34.100861, 32.445862, 37.740047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120426, 32.206955, 37.728210>,  <34.153038, 31.808775, 37.708481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120426, 32.206955, 37.728210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673611, -0.018560, -0.738853,
		-0.734576, -0.093459, 0.672059,
		-0.081526, 0.995450, 0.049322,
		34.095970, 32.505589, 37.743008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421844, 32.010845, 37.638809>,  <34.153038, 31.808775, 37.708481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421844, 32.010845, 37.638809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621826, 32.350758, 37.571972>,  <33.741814, 32.554707, 37.531868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621826, 32.350758, 37.571972>,  <33.421844, 32.010845, 37.638809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621826, 32.350758, 37.571972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521669, 0.141477, -0.841336,
		-0.691311, 0.507796, 0.514035,
		0.499951, 0.849781, -0.167097,
		33.771812, 32.605690, 37.521843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890846, 32.443230, 37.287075>,  <33.421844, 32.010845, 37.638809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890846, 32.443230, 37.287075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258671, 32.569622, 37.193634>,  <33.479366, 32.645458, 37.137569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258671, 32.569622, 37.193634>,  <32.890846, 32.443230, 37.287075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258671, 32.569622, 37.193634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284719, 0.126033, -0.950290,
		-0.270827, 0.940359, 0.205859,
		0.919559, 0.315976, -0.233605,
		33.534538, 32.664413, 37.123554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825283, 33.140453, 36.973785>,  <32.890846, 32.443230, 37.287075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825283, 33.140453, 36.973785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183144, 32.991417, 36.875172>,  <33.397858, 32.901993, 36.816002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183144, 32.991417, 36.875172>,  <32.825283, 33.140453, 36.973785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183144, 32.991417, 36.875172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062284, 0.442410, -0.894648,
		0.442410, 0.815749, 0.372594,
		0.894648, -0.372594, -0.246534,
		33.451538, 32.879639, 36.801212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145279, 33.671547, 36.693748>,  <32.825283, 33.140453, 36.973785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145279, 33.671547, 36.693748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299213, 33.332016, 36.548752>,  <33.391575, 33.128300, 36.461754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299213, 33.332016, 36.548752>,  <33.145279, 33.671547, 36.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299213, 33.332016, 36.548752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077494, 0.361639, -0.929092,
		0.919726, 0.385639, 0.073393,
		0.384836, -0.848823, -0.362493,
		33.414665, 33.077370, 36.440002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735176, 33.829575, 36.239906>,  <33.145279, 33.671547, 36.693748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735176, 33.829575, 36.239906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640862, 33.456722, 36.129974>,  <33.584270, 33.233009, 36.064014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640862, 33.456722, 36.129974>,  <33.735176, 33.829575, 36.239906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640862, 33.456722, 36.129974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127983, 0.250555, -0.959605,
		0.963340, -0.261439, 0.060219,
		-0.235790, -0.932133, -0.274830,
		33.570126, 33.177082, 36.047527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148037, 33.730743, 35.672062>,  <33.735176, 33.829575, 36.239906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148037, 33.730743, 35.672062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881466, 33.434151, 35.640858>,  <33.721523, 33.256195, 35.622135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881466, 33.434151, 35.640858>,  <34.148037, 33.730743, 35.672062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881466, 33.434151, 35.640858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046879, 0.062751, -0.996928,
		0.744097, -0.668034, -0.007059,
		-0.666425, -0.741480, -0.078010,
		33.681538, 33.211708, 35.617455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466572, 33.212128, 35.404198>,  <34.148037, 33.730743, 35.672062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466572, 33.212128, 35.404198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079739, 33.182713, 35.306759>,  <33.847637, 33.165062, 35.248295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079739, 33.182713, 35.306759>,  <34.466572, 33.212128, 35.404198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079739, 33.182713, 35.306759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240660, 0.046580, -0.969491,
		0.082648, -0.996204, -0.027347,
		-0.967084, -0.073546, -0.243596,
		33.789612, 33.160648, 35.233681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750618, 33.167759, 34.633598>,  <34.466572, 33.212128, 35.404198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750618, 33.167759, 34.633598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940426, 33.518593, 34.603802>,  <35.054310, 33.729095, 34.585922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940426, 33.518593, 34.603802>,  <34.750618, 33.167759, 34.633598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940426, 33.518593, 34.603802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701537, -0.325710, 0.633845,
		0.531675, -0.353031, -0.769865,
		0.474519, 0.877088, -0.074492,
		35.082783, 33.781719, 34.581455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360069, 32.964863, 34.962421>,  <34.750618, 33.167759, 34.633598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360069, 32.964863, 34.962421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422050, 33.354584, 34.897026>,  <35.459240, 33.588417, 34.857788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422050, 33.354584, 34.897026>,  <35.360069, 32.964863, 34.962421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422050, 33.354584, 34.897026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828211, -0.037890, 0.559134,
		0.538570, -0.222044, -0.812797,
		0.154950, 0.974300, -0.163493,
		35.468536, 33.646873, 34.847977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154125, 33.135056, 34.622742>,  <35.360069, 32.964863, 34.962421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154125, 33.135056, 34.622742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982967, 33.410530, 34.856876>,  <35.880272, 33.575813, 34.997356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982967, 33.410530, 34.856876>,  <36.154125, 33.135056, 34.622742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982967, 33.410530, 34.856876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787463, -0.033813, 0.615433,
		0.443631, 0.724272, -0.527845,
		-0.427894, 0.688684, 0.585338,
		35.854599, 33.617134, 35.032478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438507, 32.907223, 34.067089>,  <36.154125, 33.135056, 34.622742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438507, 32.907223, 34.067089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817810, 32.902946, 33.940159>,  <37.045391, 32.900383, 33.864002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817810, 32.902946, 33.940159>,  <36.438507, 32.907223, 34.067089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817810, 32.902946, 33.940159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081090, 0.958136, -0.274589,
		0.306976, 0.286113, 0.907692,
		0.948256, -0.010688, -0.317326,
		37.102287, 32.899738, 33.844959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663139, 32.616165, 34.410576>,  <36.438507, 32.907223, 34.067089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663139, 32.616165, 34.410576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054840, 32.626648, 34.490944>,  <36.289860, 32.632938, 34.539165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054840, 32.626648, 34.490944>,  <35.663139, 32.616165, 34.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054840, 32.626648, 34.490944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135218, -0.653984, 0.744326,
		0.150910, -0.756055, -0.636873,
		0.979256, 0.026210, 0.200925,
		36.348618, 32.634510, 34.551220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787857, 31.941925, 34.483528>,  <35.663139, 32.616165, 34.410576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787857, 31.941925, 34.483528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086113, 32.145458, 34.655628>,  <36.265064, 32.267578, 34.758888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086113, 32.145458, 34.655628>,  <35.787857, 31.941925, 34.483528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086113, 32.145458, 34.655628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037311, -0.612785, 0.789369,
		0.665306, -0.604636, -0.437930,
		0.745637, 0.508832, 0.430249,
		36.309803, 32.298107, 34.784702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209045, 31.405769, 34.766113>,  <35.787857, 31.941925, 34.483528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209045, 31.405769, 34.766113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293373, 31.729198, 34.985844>,  <36.343967, 31.923256, 35.117683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293373, 31.729198, 34.985844>,  <36.209045, 31.405769, 34.766113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293373, 31.729198, 34.985844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177750, -0.584299, 0.791833,
		0.961230, -0.069286, -0.266903,
		0.210815, 0.808575, 0.549330,
		36.356617, 31.971771, 35.150642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566872, 31.056089, 35.260460>,  <36.209045, 31.405769, 34.766113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566872, 31.056089, 35.260460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483856, 31.423784, 35.394283>,  <36.434048, 31.644402, 35.474579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483856, 31.423784, 35.394283>,  <36.566872, 31.056089, 35.260460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483856, 31.423784, 35.394283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062124, -0.328929, 0.942309,
		0.976252, 0.216350, 0.011158,
		-0.207538, 0.919238, 0.334558,
		36.421597, 31.699556, 35.494652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053326, 31.155392, 35.683250>,  <36.566872, 31.056089, 35.260460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053326, 31.155392, 35.683250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752144, 31.391003, 35.800621>,  <36.571434, 31.532370, 35.871044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752144, 31.391003, 35.800621>,  <37.053326, 31.155392, 35.683250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752144, 31.391003, 35.800621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111447, -0.325312, 0.939016,
		0.648562, 0.739742, 0.179301,
		-0.752959, 0.589028, 0.293427,
		36.526257, 31.567711, 35.888649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226376, 31.465897, 36.291973>,  <37.053326, 31.155392, 35.683250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226376, 31.465897, 36.291973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836674, 31.548058, 36.329166>,  <36.602852, 31.597353, 36.351482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836674, 31.548058, 36.329166>,  <37.226376, 31.465897, 36.291973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836674, 31.548058, 36.329166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023040, -0.319527, 0.947297,
		0.224285, 0.925048, 0.306567,
		-0.974251, 0.205401, 0.092979,
		36.544399, 31.609678, 36.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148422, 31.920708, 36.818901>,  <37.226376, 31.465897, 36.291973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148422, 31.920708, 36.818901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795116, 31.734226, 36.798885>,  <36.583134, 31.622337, 36.786877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795116, 31.734226, 36.798885>,  <37.148422, 31.920708, 36.818901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795116, 31.734226, 36.798885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090686, -0.274555, 0.957285,
		-0.460027, 0.840996, 0.284782,
		-0.883262, -0.466203, -0.050036,
		36.530136, 31.594366, 36.783875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647758, 32.181812, 37.444485>,  <37.148422, 31.920708, 36.818901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647758, 32.181812, 37.444485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498417, 31.832703, 37.318707>,  <36.408810, 31.623238, 37.243240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498417, 31.832703, 37.318707>,  <36.647758, 32.181812, 37.444485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498417, 31.832703, 37.318707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008442, -0.342139, 0.939612,
		-0.927649, 0.348156, 0.135108,
		-0.373357, -0.872771, -0.314446,
		36.386410, 31.570871, 37.224373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049934, 32.092934, 37.807571>,  <36.647758, 32.181812, 37.444485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049934, 32.092934, 37.807571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179295, 31.730618, 37.698059>,  <36.256912, 31.513227, 37.632351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179295, 31.730618, 37.698059>,  <36.049934, 32.092934, 37.807571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179295, 31.730618, 37.698059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036537, -0.301070, 0.952902,
		-0.945556, -0.298168, -0.130462,
		0.323403, -0.905788, -0.273785,
		36.276314, 31.458881, 37.615925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713520, 31.669250, 38.235420>,  <36.049934, 32.092934, 37.807571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713520, 31.669250, 38.235420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983150, 31.402649, 38.108047>,  <36.144928, 31.242689, 38.031624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983150, 31.402649, 38.108047>,  <35.713520, 31.669250, 38.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983150, 31.402649, 38.108047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066219, -0.483881, 0.872625,
		-0.735690, -0.567127, -0.370307,
		0.674074, -0.666503, -0.318432,
		36.185371, 31.202698, 38.012520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411652, 31.065424, 38.343273>,  <35.713520, 31.669250, 38.235420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411652, 31.065424, 38.343273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804401, 30.992132, 38.323856>,  <36.040051, 30.948156, 38.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804401, 30.992132, 38.323856>,  <35.411652, 31.065424, 38.343273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804401, 30.992132, 38.323856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068714, -0.582739, 0.809749,
		-0.176656, -0.791734, -0.584765,
		0.981872, -0.183229, -0.048541,
		36.098961, 30.937164, 38.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508785, 30.276381, 38.364754>,  <35.411652, 31.065424, 38.343273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508785, 30.276381, 38.364754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857426, 30.448696, 38.458324>,  <36.066612, 30.552086, 38.514469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857426, 30.448696, 38.458324>,  <35.508785, 30.276381, 38.364754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857426, 30.448696, 38.458324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071661, -0.584050, 0.808548,
		0.484942, -0.687971, -0.539932,
		0.871606, 0.430791, 0.233929,
		36.118908, 30.577934, 38.528503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797844, 29.736229, 38.606216>,  <35.508785, 30.276381, 38.364754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797844, 29.736229, 38.606216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064922, 30.007530, 38.728951>,  <36.225170, 30.170311, 38.802593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064922, 30.007530, 38.728951>,  <35.797844, 29.736229, 38.606216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064922, 30.007530, 38.728951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114825, -0.501080, 0.857749,
		0.735521, -0.537487, -0.412452,
		0.667700, 0.678253, 0.306838,
		36.265232, 30.211006, 38.821003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363319, 29.412649, 38.885796>,  <35.797844, 29.736229, 38.606216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363319, 29.412649, 38.885796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390228, 29.776142, 39.050564>,  <36.406372, 29.994238, 39.149426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390228, 29.776142, 39.050564>,  <36.363319, 29.412649, 38.885796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390228, 29.776142, 39.050564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181932, -0.417107, 0.890462,
		0.981007, 0.015041, -0.193386,
		0.067269, 0.908733, 0.411922,
		36.410408, 30.048761, 39.174141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954865, 29.419415, 39.257072>,  <36.363319, 29.412649, 38.885796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954865, 29.419415, 39.257072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723923, 29.709282, 39.407547>,  <36.585358, 29.883202, 39.497833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723923, 29.709282, 39.407547>,  <36.954865, 29.419415, 39.257072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723923, 29.709282, 39.407547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161047, -0.350610, 0.922570,
		0.800452, 0.593236, 0.085721,
		-0.577357, 0.724668, 0.376186,
		36.550716, 29.926682, 39.520401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419266, 29.710602, 39.831059>,  <36.954865, 29.419415, 39.257072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419266, 29.710602, 39.831059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033306, 29.805700, 39.875675>,  <36.801731, 29.862759, 39.902443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033306, 29.805700, 39.875675>,  <37.419266, 29.710602, 39.831059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033306, 29.805700, 39.875675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062901, -0.203131, 0.977129,
		0.254963, 0.949850, 0.181047,
		-0.964903, 0.237744, 0.111537,
		36.743835, 29.877024, 39.909138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303467, 30.178215, 40.412289>,  <37.419266, 29.710602, 39.831059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303467, 30.178215, 40.412289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940876, 30.014957, 40.368977>,  <36.723324, 29.917004, 40.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940876, 30.014957, 40.368977>,  <37.303467, 30.178215, 40.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940876, 30.014957, 40.368977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010236, -0.235119, 0.971913,
		-0.422139, 0.882121, 0.208951,
		-0.906473, -0.408144, -0.108282,
		36.668934, 29.892515, 40.336491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025246, 30.337988, 41.061161>,  <37.303467, 30.178215, 40.412289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025246, 30.337988, 41.061161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787212, 30.053036, 40.912357>,  <36.644394, 29.882065, 40.823074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787212, 30.053036, 40.912357>,  <37.025246, 30.337988, 41.061161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787212, 30.053036, 40.912357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040617, -0.488958, 0.871361,
		-0.802637, 0.503423, 0.319906,
		-0.595084, -0.712380, -0.372009,
		36.608688, 29.839321, 40.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509686, 30.206125, 41.545353>,  <37.025246, 30.337988, 41.061161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509686, 30.206125, 41.545353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524239, 29.867851, 41.332378>,  <36.532970, 29.664886, 41.204594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524239, 29.867851, 41.332378>,  <36.509686, 30.206125, 41.545353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524239, 29.867851, 41.332378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099615, -0.527071, 0.843963,
		-0.994361, -0.083748, 0.065064,
		0.036387, -0.845685, -0.532441,
		36.535156, 29.614145, 41.172646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902630, 29.887163, 41.712898>,  <36.509686, 30.206125, 41.545353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902630, 29.887163, 41.712898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156284, 29.609470, 41.576714>,  <36.308475, 29.442854, 41.495003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156284, 29.609470, 41.576714>,  <35.902630, 29.887163, 41.712898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156284, 29.609470, 41.576714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028456, -0.460969, 0.886960,
		-0.772699, -0.552764, -0.312072,
		0.634135, -0.694233, -0.340460,
		36.346523, 29.401201, 41.474575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566853, 29.235344, 41.728573>,  <35.902630, 29.887163, 41.712898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566853, 29.235344, 41.728573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955410, 29.142378, 41.709057>,  <36.188545, 29.086599, 41.697346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955410, 29.142378, 41.709057>,  <35.566853, 29.235344, 41.728573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955410, 29.142378, 41.709057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155052, -0.776322, 0.610969,
		-0.179876, -0.585926, -0.790149,
		0.971393, -0.232413, -0.048793,
		36.246826, 29.072653, 41.694420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488625, 28.491997, 41.522694>,  <35.566853, 29.235344, 41.728573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488625, 28.491997, 41.522694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830887, 28.614576, 41.689518>,  <36.036243, 28.688124, 41.789612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830887, 28.614576, 41.689518>,  <35.488625, 28.491997, 41.522694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830887, 28.614576, 41.689518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146549, -0.629405, 0.763134,
		0.496364, -0.714100, -0.493644,
		0.855655, 0.306449, 0.417064,
		36.087585, 28.706511, 41.814636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847790, 27.833298, 41.712582>,  <35.488625, 28.491997, 41.522694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847790, 27.833298, 41.712582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026787, 28.122158, 41.923580>,  <36.134186, 28.295475, 42.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026787, 28.122158, 41.923580>,  <35.847790, 27.833298, 41.712582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026787, 28.122158, 41.923580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139379, -0.526320, 0.838785,
		0.883361, -0.448868, -0.134869,
		0.447489, 0.722153, 0.527494,
		36.161034, 28.338804, 42.081829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347141, 27.441553, 42.142628>,  <35.847790, 27.833298, 41.712582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347141, 27.441553, 42.142628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295792, 27.796917, 42.318924>,  <36.264980, 28.010136, 42.424702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295792, 27.796917, 42.318924>,  <36.347141, 27.441553, 42.142628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295792, 27.796917, 42.318924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172334, -0.457639, 0.872277,
		0.976638, 0.036023, 0.211852,
		-0.128374, 0.888408, 0.440740,
		36.257278, 28.063438, 42.451145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860729, 27.559727, 42.675297>,  <36.347141, 27.441553, 42.142628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860729, 27.559727, 42.675297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555199, 27.795761, 42.779881>,  <36.371880, 27.937382, 42.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555199, 27.795761, 42.779881>,  <36.860729, 27.559727, 42.675297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555199, 27.795761, 42.779881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061055, -0.337230, 0.939440,
		0.642522, 0.733537, 0.221559,
		-0.763831, 0.590084, 0.261464,
		36.326050, 27.972786, 42.858318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977154, 27.744896, 43.366943>,  <36.860729, 27.559727, 42.675297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977154, 27.744896, 43.366943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588955, 27.833248, 43.328270>,  <36.356037, 27.886259, 43.305065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588955, 27.833248, 43.328270>,  <36.977154, 27.744896, 43.366943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588955, 27.833248, 43.328270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194407, -0.479627, 0.855666,
		0.142625, 0.849217, 0.508417,
		-0.970497, 0.220879, -0.096687,
		36.297806, 27.899511, 43.299263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396847, 28.178965, 43.716946>,  <36.977154, 27.744896, 43.366943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396847, 28.178965, 43.716946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771801, 28.201441, 43.854439>,  <37.996773, 28.214928, 43.936935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771801, 28.201441, 43.854439>,  <37.396847, 28.178965, 43.716946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771801, 28.201441, 43.854439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290286, 0.419323, -0.860176,
		-0.192471, 0.906096, 0.376755,
		0.937384, 0.056192, 0.343735,
		38.053017, 28.218298, 43.957558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703136, 28.874767, 43.461876>,  <37.396847, 28.178965, 43.716946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703136, 28.874767, 43.461876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999062, 28.611250, 43.516529>,  <38.176617, 28.453138, 43.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999062, 28.611250, 43.516529>,  <37.703136, 28.874767, 43.461876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999062, 28.611250, 43.516529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490159, 0.388626, -0.780201,
		0.460894, 0.644173, 0.610425,
		0.739811, -0.658795, 0.136632,
		38.221004, 28.413612, 43.557518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403408, 29.237524, 43.430397>,  <37.703136, 28.874767, 43.461876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403408, 29.237524, 43.430397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524975, 28.860683, 43.373718>,  <38.597916, 28.634579, 43.339710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524975, 28.860683, 43.373718>,  <38.403408, 29.237524, 43.430397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524975, 28.860683, 43.373718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501629, 0.284692, -0.816896,
		0.809939, 0.177192, 0.559109,
		0.303921, -0.942101, -0.141698,
		38.616150, 28.578053, 43.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195759, 29.229692, 43.305145>,  <38.403408, 29.237524, 43.430397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195759, 29.229692, 43.305145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047771, 28.893198, 43.147438>,  <38.958977, 28.691301, 43.052814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047771, 28.893198, 43.147438>,  <39.195759, 29.229692, 43.305145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047771, 28.893198, 43.147438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553886, 0.140981, -0.820570,
		0.745876, -0.521965, 0.413790,
		-0.369972, -0.841235, -0.394264,
		38.936779, 28.640827, 43.029160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701702, 28.936661, 43.059612>,  <39.195759, 29.229692, 43.305145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701702, 28.936661, 43.059612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389492, 28.792540, 42.855274>,  <39.202168, 28.706066, 42.732670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389492, 28.792540, 42.855274>,  <39.701702, 28.936661, 43.059612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389492, 28.792540, 42.855274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466251, 0.208810, -0.859656,
		0.416406, -0.909165, 0.005010,
		-0.780523, -0.360302, -0.510849,
		39.155334, 28.684448, 42.702019>
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
