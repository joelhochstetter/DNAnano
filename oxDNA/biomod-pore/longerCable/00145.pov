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
	<24.146606, 34.766689, 34.587261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265326, 34.835804, 34.962933>,  <24.336557, 34.877274, 35.188335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265326, 34.835804, 34.962933>,  <24.146606, 34.766689, 34.587261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265326, 34.835804, 34.962933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749075, -0.652117, -0.116748,
		0.592282, 0.738166, -0.322976,
		0.296798, 0.172785, 0.939179,
		24.354364, 34.887638, 35.244686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889257, 35.042274, 34.704243>,  <24.146606, 34.766689, 34.587261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889257, 35.042274, 34.704243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754944, 34.835316, 35.019089>,  <24.674355, 34.711140, 35.207996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754944, 34.835316, 35.019089>,  <24.889257, 35.042274, 34.704243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754944, 34.835316, 35.019089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854181, -0.519471, 0.022934,
		0.397018, 0.680040, 0.616378,
		-0.335786, -0.517393, 0.787117,
		24.654207, 34.680099, 35.255222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342623, 35.060448, 35.305038>,  <24.889257, 35.042274, 34.704243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342623, 35.060448, 35.305038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118513, 34.733784, 35.360405>,  <24.984047, 34.537785, 35.393623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118513, 34.733784, 35.360405>,  <25.342623, 35.060448, 35.305038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118513, 34.733784, 35.360405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820816, -0.569823, -0.039535,
		0.111158, 0.091462, 0.989585,
		-0.560272, -0.816662, 0.138414,
		24.950432, 34.488785, 35.401928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544317, 34.651031, 35.935818>,  <25.342623, 35.060448, 35.305038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544317, 34.651031, 35.935818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418608, 34.475719, 35.598976>,  <25.343182, 34.370533, 35.396870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418608, 34.475719, 35.598976>,  <25.544317, 34.651031, 35.935818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418608, 34.475719, 35.598976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861424, -0.504456, -0.058933,
		-0.398976, -0.743930, 0.536084,
		-0.314273, -0.438283, -0.842105,
		25.324326, 34.344234, 35.346344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734444, 33.956573, 36.063805>,  <25.544317, 34.651031, 35.935818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.734444, 33.956573, 36.063805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694302, 34.012321, 35.669746>,  <25.670218, 34.045773, 35.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694302, 34.012321, 35.669746>,  <25.734444, 33.956573, 36.063805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694302, 34.012321, 35.669746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778717, -0.605300, -0.164960,
		-0.619298, -0.783700, -0.047789,
		-0.100353, 0.139373, -0.985142,
		25.664196, 34.054134, 35.374203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357174, 33.659401, 35.844887>,  <25.734444, 33.956573, 36.063805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357174, 33.659401, 35.844887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188900, 33.798843, 35.509865>,  <26.087936, 33.882507, 35.308853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188900, 33.798843, 35.509865>,  <26.357174, 33.659401, 35.844887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188900, 33.798843, 35.509865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726611, -0.423314, -0.541149,
		-0.543197, -0.836229, -0.075220,
		-0.420683, 0.348606, -0.837556,
		26.062695, 33.903423, 35.258598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308979, 33.043819, 35.374866>,  <26.357174, 33.659401, 35.844887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308979, 33.043819, 35.374866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319166, 33.372761, 35.147503>,  <26.325279, 33.570126, 35.011086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319166, 33.372761, 35.147503>,  <26.308979, 33.043819, 35.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319166, 33.372761, 35.147503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602255, -0.466451, -0.647853,
		-0.797898, -0.325828, -0.507144,
		0.025469, 0.822350, -0.568412,
		26.326807, 33.619465, 34.976978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081108, 32.935982, 34.638172>,  <26.308979, 33.043819, 35.374866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081108, 32.935982, 34.638172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311258, 33.263062, 34.631062>,  <26.449348, 33.459309, 34.626793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311258, 33.263062, 34.631062>,  <26.081108, 32.935982, 34.638172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311258, 33.263062, 34.631062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654735, -0.473519, -0.589154,
		-0.490167, 0.327345, -0.807825,
		0.575377, 0.817695, -0.017779,
		26.483871, 33.508369, 34.625729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310745, 33.028194, 33.967133>,  <26.081108, 32.935982, 34.638172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310745, 33.028194, 33.967133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566797, 33.255898, 34.173500>,  <26.720428, 33.392521, 34.297321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566797, 33.255898, 34.173500>,  <26.310745, 33.028194, 33.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566797, 33.255898, 34.173500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723815, -0.221762, -0.653386,
		-0.257535, 0.791685, -0.553995,
		0.640131, 0.569260, 0.515922,
		26.758837, 33.426674, 34.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624716, 33.493248, 33.471531>,  <26.310745, 33.028194, 33.967133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624716, 33.493248, 33.471531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888144, 33.486984, 33.772472>,  <27.046200, 33.483227, 33.953037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888144, 33.486984, 33.772472>,  <26.624716, 33.493248, 33.471531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888144, 33.486984, 33.772472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752520, 0.012049, -0.658459,
		0.001243, 0.999805, 0.019715,
		0.658568, -0.015655, 0.752358,
		27.085714, 33.482288, 33.998180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152744, 33.828465, 33.172539>,  <26.624716, 33.493248, 33.471531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152744, 33.828465, 33.172539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289864, 33.619434, 33.484798>,  <27.372135, 33.494019, 33.672153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289864, 33.619434, 33.484798>,  <27.152744, 33.828465, 33.172539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289864, 33.619434, 33.484798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842444, -0.196688, -0.501599,
		0.415666, 0.829597, 0.372815,
		0.342797, -0.522573, 0.780646,
		27.392702, 33.462662, 33.718990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774994, 33.560226, 32.951859>,  <27.152744, 33.828465, 33.172539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774994, 33.560226, 32.951859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747240, 33.382774, 33.309269>,  <27.730587, 33.276302, 33.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747240, 33.382774, 33.309269>,  <27.774994, 33.560226, 32.951859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747240, 33.382774, 33.309269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578413, -0.747648, -0.326285,
		0.812788, 0.494186, 0.308474,
		-0.069385, -0.443625, 0.893522,
		27.726425, 33.249687, 33.577324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853437, 32.790718, 32.684071>,  <27.774994, 33.560226, 32.951859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853437, 32.790718, 32.684071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016609, 32.433865, 32.606415>,  <28.114511, 32.219753, 32.559822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016609, 32.433865, 32.606415>,  <27.853437, 32.790718, 32.684071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016609, 32.433865, 32.606415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232342, -0.104203, 0.967036,
		-0.882957, -0.439587, 0.164773,
		0.407927, -0.892135, -0.194141,
		28.138987, 32.166225, 32.548172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514885, 32.455475, 33.182583>,  <27.853437, 32.790718, 32.684071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514885, 32.455475, 33.182583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857344, 32.317360, 33.028812>,  <28.062819, 32.234489, 32.936550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857344, 32.317360, 33.028812>,  <27.514885, 32.455475, 33.182583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857344, 32.317360, 33.028812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291593, -0.291359, 0.911089,
		-0.426595, -0.892125, -0.148763,
		0.856148, -0.345287, -0.384430,
		28.114189, 32.213776, 32.913483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151360, 32.576889, 33.469109>,  <27.514885, 32.455475, 33.182583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151360, 32.576889, 33.469109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265568, 32.842712, 33.745323>,  <28.334093, 33.002205, 33.911053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265568, 32.842712, 33.745323>,  <28.151360, 32.576889, 33.469109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265568, 32.842712, 33.745323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957444, 0.166086, 0.236045,
		0.042177, -0.728547, 0.683696,
		0.285522, 0.664556, 0.690538,
		28.351225, 33.042080, 33.952484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839428, 32.498173, 34.145420>,  <28.151360, 32.576889, 33.469109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839428, 32.498173, 34.145420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922161, 32.884132, 34.080685>,  <27.971800, 33.115707, 34.041843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922161, 32.884132, 34.080685>,  <27.839428, 32.498173, 34.145420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922161, 32.884132, 34.080685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862753, 0.257882, 0.434917,
		0.461386, 0.049671, 0.885808,
		0.206832, 0.964899, -0.161837,
		27.984211, 33.173603, 34.032135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883869, 32.876316, 34.773224>,  <27.839428, 32.498173, 34.145420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883869, 32.876316, 34.773224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740965, 33.070732, 34.454193>,  <27.655222, 33.187382, 34.262775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740965, 33.070732, 34.454193>,  <27.883869, 32.876316, 34.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740965, 33.070732, 34.454193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869614, 0.138476, 0.473915,
		0.340785, 0.862898, 0.373192,
		-0.357262, 0.486037, -0.797579,
		27.633785, 33.216541, 34.214920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849686, 33.548622, 35.025208>,  <27.883869, 32.876316, 34.773224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849686, 33.548622, 35.025208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611427, 33.484783, 34.710316>,  <27.468473, 33.446480, 34.521381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611427, 33.484783, 34.710316>,  <27.849686, 33.548622, 35.025208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611427, 33.484783, 34.710316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746204, 0.472690, 0.468768,
		0.297302, 0.866655, -0.400650,
		-0.595644, -0.159601, -0.787233,
		27.432734, 33.436901, 34.474144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634123, 34.190552, 34.877392>,  <27.849686, 33.548622, 35.025208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634123, 34.190552, 34.877392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356726, 33.952854, 34.714451>,  <27.190287, 33.810234, 34.616684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356726, 33.952854, 34.714451>,  <27.634123, 34.190552, 34.877392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356726, 33.952854, 34.714451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719026, 0.606543, 0.339274,
		0.045466, 0.528184, -0.847912,
		-0.693494, -0.594245, -0.407355,
		27.148678, 33.774582, 34.592243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196640, 34.658695, 34.636940>,  <27.634123, 34.190552, 34.877392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196640, 34.658695, 34.636940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995756, 34.313087, 34.651119>,  <26.875225, 34.105724, 34.659626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995756, 34.313087, 34.651119>,  <27.196640, 34.658695, 34.636940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995756, 34.313087, 34.651119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783537, 0.472012, 0.404071,
		-0.365859, 0.175151, -0.914040,
		-0.502212, -0.864018, 0.035452,
		26.845093, 34.053883, 34.661755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536194, 34.851269, 34.840534>,  <27.196640, 34.658695, 34.636940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536194, 34.851269, 34.840534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498947, 34.454941, 34.801331>,  <26.476599, 34.217144, 34.777809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498947, 34.454941, 34.801331>,  <26.536194, 34.851269, 34.840534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498947, 34.454941, 34.801331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934969, 0.053176, 0.350720,
		-0.342289, 0.124295, -0.931337,
		-0.093118, -0.990819, -0.098011,
		26.471012, 34.157696, 34.771927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133379, 34.533737, 34.231758>,  <26.536194, 34.851269, 34.840534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133379, 34.533737, 34.231758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041491, 34.268818, 34.517021>,  <25.986357, 34.109867, 34.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041491, 34.268818, 34.517021>,  <26.133379, 34.533737, 34.231758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041491, 34.268818, 34.517021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910546, 0.405025, 0.082832,
		-0.343706, -0.630334, -0.696092,
		-0.229723, -0.662294, 0.713158,
		25.972574, 34.070129, 34.730968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520115, 34.093220, 34.133541>,  <26.133379, 34.533737, 34.231758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520115, 34.093220, 34.133541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574160, 34.116844, 34.529167>,  <25.606586, 34.131020, 34.766544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574160, 34.116844, 34.529167>,  <25.520115, 34.093220, 34.133541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574160, 34.116844, 34.529167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917495, 0.384345, 0.102383,
		-0.374097, -0.921298, 0.106120,
		0.135112, 0.059064, 0.989068,
		25.614693, 34.134563, 34.825890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787155, 33.994213, 34.446125>,  <25.520115, 34.093220, 34.133541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787155, 33.994213, 34.446125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059753, 34.166409, 34.682850>,  <25.223312, 34.269726, 34.824886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059753, 34.166409, 34.682850>,  <24.787155, 33.994213, 34.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059753, 34.166409, 34.682850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699292, 0.621487, 0.353192,
		-0.215762, -0.654551, 0.724576,
		0.681497, 0.430484, 0.591815,
		25.264202, 34.295555, 34.860394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.323498, 33.322006, 34.287189>,  <24.787155, 33.994213, 34.446125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.323498, 33.322006, 34.287189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233593, 33.184498, 33.922485>,  <24.179651, 33.101994, 33.703663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233593, 33.184498, 33.922485>,  <24.323498, 33.322006, 34.287189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233593, 33.184498, 33.922485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926178, -0.366123, -0.090270,
		-0.302782, -0.864739, 0.400687,
		-0.224760, -0.343775, -0.911757,
		24.166164, 33.081364, 33.648956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625246, 32.592979, 34.207985>,  <24.323498, 33.322006, 34.287189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625246, 32.592979, 34.207985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556221, 32.750050, 33.846649>,  <24.514807, 32.844292, 33.629848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556221, 32.750050, 33.846649>,  <24.625246, 32.592979, 34.207985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.556221, 32.750050, 33.846649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876118, -0.357937, -0.322951,
		-0.450155, -0.847164, -0.282263,
		-0.172560, 0.392674, -0.903344,
		24.504454, 32.867851, 33.575645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772537, 32.003834, 33.729977>,  <24.625246, 32.592979, 34.207985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772537, 32.003834, 33.729977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802408, 32.349892, 33.531605>,  <24.820330, 32.557526, 33.412582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802408, 32.349892, 33.531605>,  <24.772537, 32.003834, 33.729977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802408, 32.349892, 33.531605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755729, -0.373565, -0.537888,
		-0.650613, -0.334619, -0.681713,
		0.074677, 0.865147, -0.495927,
		24.824812, 32.609436, 33.382828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895926, 31.975176, 32.936249>,  <24.772537, 32.003834, 33.729977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895926, 31.975176, 32.936249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048227, 32.321960, 33.064877>,  <25.139608, 32.530029, 33.142052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048227, 32.321960, 33.064877>,  <24.895926, 31.975176, 32.936249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048227, 32.321960, 33.064877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870614, -0.218947, -0.440561,
		-0.311543, 0.447706, -0.838153,
		0.380753, 0.866961, 0.321567,
		25.162453, 32.582050, 33.161346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194317, 32.471672, 32.362705>,  <24.895926, 31.975176, 32.936249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194317, 32.471672, 32.362705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358892, 32.403194, 32.720791>,  <25.457638, 32.362110, 32.935642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358892, 32.403194, 32.720791>,  <25.194317, 32.471672, 32.362705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358892, 32.403194, 32.720791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727910, -0.529381, -0.435779,
		0.548512, 0.830933, -0.093195,
		0.411439, -0.171192, 0.895216,
		25.482325, 32.351837, 32.989357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914976, 32.834732, 32.496597>,  <25.194317, 32.471672, 32.362705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914976, 32.834732, 32.496597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874386, 32.515858, 32.734653>,  <25.850031, 32.324532, 32.877487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874386, 32.515858, 32.734653>,  <25.914976, 32.834732, 32.496597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874386, 32.515858, 32.734653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789211, -0.428725, -0.439706,
		0.605681, 0.425074, 0.672653,
		-0.101475, -0.797187, 0.595144,
		25.843943, 32.276703, 32.913197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584108, 32.692657, 32.987160>,  <25.914976, 32.834732, 32.496597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584108, 32.692657, 32.987160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352509, 32.391808, 32.861263>,  <26.213549, 32.211296, 32.785725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352509, 32.391808, 32.861263>,  <26.584108, 32.692657, 32.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352509, 32.391808, 32.861263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808108, -0.478134, -0.344019,
		0.108259, -0.453531, 0.884641,
		-0.579000, -0.752129, -0.314740,
		26.178808, 32.166168, 32.766842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492983, 32.350197, 32.311535>,  <26.584108, 32.692657, 32.987160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492983, 32.350197, 32.311535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548998, 32.129543, 31.982635>,  <26.582607, 31.997152, 31.785295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548998, 32.129543, 31.982635>,  <26.492983, 32.350197, 32.311535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548998, 32.129543, 31.982635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932443, -0.352821, 0.077898,
		-0.333078, 0.755792, -0.563770,
		0.140035, -0.551630, -0.822250,
		26.591009, 31.964054, 31.735960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045547, 32.482838, 31.695887>,  <26.492983, 32.350197, 32.311535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045547, 32.482838, 31.695887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165871, 32.102245, 31.721830>,  <26.238064, 31.873892, 31.737396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165871, 32.102245, 31.721830>,  <26.045547, 32.482838, 31.695887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165871, 32.102245, 31.721830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951879, -0.303726, -0.040943,
		0.058656, -0.049422, -0.997054,
		0.300808, -0.951477, 0.064859,
		26.256113, 31.816803, 31.741287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519344, 33.058418, 31.868240>,  <26.045547, 32.482838, 31.695887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519344, 33.058418, 31.868240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340528, 33.364979, 32.052753>,  <26.233240, 33.548916, 32.163460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340528, 33.364979, 32.052753>,  <26.519344, 33.058418, 31.868240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340528, 33.364979, 32.052753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832150, 0.167135, 0.528765,
		0.328151, 0.620234, -0.712479,
		-0.447039, 0.766404, 0.461282,
		26.206417, 33.594898, 32.191139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692186, 33.709850, 31.519552>,  <26.519344, 33.058418, 31.868240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692186, 33.709850, 31.519552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942978, 33.399338, 31.545744>,  <27.093452, 33.213032, 31.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942978, 33.399338, 31.545744>,  <26.692186, 33.709850, 31.519552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942978, 33.399338, 31.545744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747746, 0.576086, -0.330152,
		0.218569, 0.255960, 0.941654,
		0.626979, -0.776279, 0.065479,
		27.131071, 33.166454, 31.565388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306898, 33.874313, 31.944519>,  <26.692186, 33.709850, 31.519552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306898, 33.874313, 31.944519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385447, 33.618599, 31.647131>,  <27.432575, 33.465168, 31.468699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385447, 33.618599, 31.647131>,  <27.306898, 33.874313, 31.944519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385447, 33.618599, 31.647131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898259, 0.421307, -0.125019,
		0.393152, -0.643278, 0.656981,
		0.196369, -0.639291, -0.743469,
		27.444357, 33.426811, 31.424089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080273, 33.881050, 32.070221>,  <27.306898, 33.874313, 31.944519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080273, 33.881050, 32.070221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462975, 33.895432, 31.954754>,  <28.692596, 33.904060, 31.885473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462975, 33.895432, 31.954754>,  <28.080273, 33.881050, 32.070221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462975, 33.895432, 31.954754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290551, 0.166457, -0.942270,
		0.014171, 0.985393, 0.169705,
		0.956754, 0.035955, -0.288666,
		28.750000, 33.906219, 31.868155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083189, 34.384113, 31.571199>,  <28.080273, 33.881050, 32.070221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083189, 34.384113, 31.571199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422489, 34.182682, 31.505619>,  <28.626070, 34.061825, 31.466270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422489, 34.182682, 31.505619>,  <28.083189, 34.384113, 31.571199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422489, 34.182682, 31.505619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188803, 0.001684, -0.982013,
		0.494795, 0.863949, -0.093648,
		0.848252, -0.503577, -0.163950,
		28.676964, 34.031609, 31.456434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530180, 34.707737, 31.078711>,  <28.083189, 34.384113, 31.571199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530180, 34.707737, 31.078711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592508, 34.312649, 31.083059>,  <28.629906, 34.075596, 31.085669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592508, 34.312649, 31.083059>,  <28.530180, 34.707737, 31.078711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592508, 34.312649, 31.083059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267978, -0.052866, -0.961974,
		0.950740, 0.146983, -0.272926,
		0.155823, -0.987725, 0.010874,
		28.639256, 34.016331, 31.086321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920752, 34.529968, 30.489435>,  <28.530180, 34.707737, 31.078711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920752, 34.529968, 30.489435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702579, 34.211334, 30.593710>,  <28.571676, 34.020153, 30.656275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702579, 34.211334, 30.593710>,  <28.920752, 34.529968, 30.489435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702579, 34.211334, 30.593710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319080, -0.090260, -0.943420,
		0.775044, -0.597749, -0.204944,
		-0.545430, -0.796586, 0.260685,
		28.538950, 33.972359, 30.671915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003353, 33.826416, 30.122528>,  <28.920752, 34.529968, 30.489435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003353, 33.826416, 30.122528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631065, 33.859810, 30.264959>,  <28.407692, 33.879845, 30.350418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631065, 33.859810, 30.264959>,  <29.003353, 33.826416, 30.122528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631065, 33.859810, 30.264959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363325, -0.099448, -0.926340,
		-0.041914, -0.991535, 0.122886,
		-0.930719, 0.083474, 0.356081,
		28.351851, 33.884853, 30.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595016, 33.142773, 30.094200>,  <29.003353, 33.826416, 30.122528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595016, 33.142773, 30.094200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399723, 33.488720, 30.047489>,  <28.282547, 33.696289, 30.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399723, 33.488720, 30.047489>,  <28.595016, 33.142773, 30.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399723, 33.488720, 30.047489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165460, -0.223116, -0.960647,
		-0.856885, -0.449696, 0.252034,
		-0.488232, 0.864865, -0.116778,
		28.253254, 33.748180, 30.012455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500347, 32.845387, 30.865559>,  <28.595016, 33.142773, 30.094200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500347, 32.845387, 30.865559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721785, 33.160240, 30.756775>,  <28.854647, 33.349152, 30.691505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721785, 33.160240, 30.756775>,  <28.500347, 32.845387, 30.865559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721785, 33.160240, 30.756775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299576, 0.116480, 0.946935,
		0.777040, -0.605688, -0.171323,
		0.553591, 0.787130, -0.271960,
		28.887861, 33.396378, 30.675186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124485, 32.827885, 31.259661>,  <28.500347, 32.845387, 30.865559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124485, 32.827885, 31.259661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040989, 33.209888, 31.175398>,  <28.990891, 33.439091, 31.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040989, 33.209888, 31.175398>,  <29.124485, 32.827885, 31.259661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040989, 33.209888, 31.175398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282254, 0.265067, 0.921994,
		0.936355, 0.132998, -0.324886,
		-0.208740, 0.955014, -0.210658,
		28.978367, 33.496391, 31.112200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718515, 33.202511, 31.349529>,  <29.124485, 32.827885, 31.259661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718515, 33.202511, 31.349529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404917, 33.449200, 31.377825>,  <29.216759, 33.597214, 31.394802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404917, 33.449200, 31.377825>,  <29.718515, 33.202511, 31.349529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404917, 33.449200, 31.377825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259358, 0.221887, 0.939946,
		0.563991, 0.755260, -0.333911,
		-0.783995, 0.616724, 0.070741,
		29.169718, 33.634216, 31.399048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998461, 33.722813, 31.662903>,  <29.718515, 33.202511, 31.349529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998461, 33.722813, 31.662903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603088, 33.748531, 31.717846>,  <29.365864, 33.763962, 31.750813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603088, 33.748531, 31.717846>,  <29.998461, 33.722813, 31.662903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603088, 33.748531, 31.717846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144956, 0.134194, 0.980296,
		0.044597, 0.988867, -0.141961,
		-0.988433, 0.064296, 0.137358,
		29.306559, 33.767818, 31.759054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804268, 34.322239, 32.182522>,  <29.998461, 33.722813, 31.662903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804268, 34.322239, 32.182522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568432, 34.000111, 32.157715>,  <29.426929, 33.806835, 32.142830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568432, 34.000111, 32.157715>,  <29.804268, 34.322239, 32.182522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568432, 34.000111, 32.157715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149389, -0.184180, 0.971473,
		-0.793766, 0.563509, 0.228897,
		-0.589592, -0.805317, -0.062014,
		29.391554, 33.758514, 32.139111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087355, 34.300449, 32.590515>,  <29.804268, 34.322239, 32.182522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087355, 34.300449, 32.590515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245888, 33.934235, 32.563072>,  <29.341007, 33.714504, 32.546608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245888, 33.934235, 32.563072>,  <29.087355, 34.300449, 32.590515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245888, 33.934235, 32.563072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028648, -0.062353, 0.997643,
		-0.917659, -0.397366, 0.001515,
		0.396335, -0.915539, -0.068603,
		29.364788, 33.659573, 32.542492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871473, 33.748459, 33.126690>,  <29.087355, 34.300449, 32.590515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871473, 33.748459, 33.126690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210451, 33.586300, 32.989582>,  <29.413837, 33.489006, 32.907318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210451, 33.586300, 32.989582>,  <28.871473, 33.748459, 33.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210451, 33.586300, 32.989582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101139, -0.510547, 0.853881,
		-0.521173, -0.758278, -0.391653,
		0.847437, -0.405409, -0.342775,
		29.464685, 33.464680, 32.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120861, 33.332043, 33.570560>,  <28.871473, 33.748459, 33.126690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120861, 33.332043, 33.570560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449118, 33.284916, 33.346893>,  <29.646072, 33.256641, 33.212692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449118, 33.284916, 33.346893>,  <29.120861, 33.332043, 33.570560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449118, 33.284916, 33.346893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434752, -0.506320, 0.744735,
		-0.370857, -0.854259, -0.364288,
		0.820643, -0.117816, -0.559163,
		29.695311, 33.249573, 33.179146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359762, 32.553406, 33.538956>,  <29.120861, 33.332043, 33.570560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359762, 32.553406, 33.538956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678183, 32.788826, 33.482506>,  <29.869234, 32.930077, 33.448635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678183, 32.788826, 33.482506>,  <29.359762, 32.553406, 33.538956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678183, 32.788826, 33.482506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525137, -0.555737, 0.644506,
		0.300891, -0.587171, -0.751462,
		0.796050, 0.588547, -0.141129,
		29.916998, 32.965389, 33.440166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886564, 32.032368, 33.654274>,  <29.359762, 32.553406, 33.538956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886564, 32.032368, 33.654274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026825, 32.405098, 33.691689>,  <30.110981, 32.628735, 33.714138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026825, 32.405098, 33.691689>,  <29.886564, 32.032368, 33.654274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026825, 32.405098, 33.691689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630916, -0.308863, 0.711722,
		0.692090, -0.190550, -0.696205,
		0.350651, 0.931823, 0.093541,
		30.132021, 32.684647, 33.719749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641676, 32.140678, 33.536747>,  <29.886564, 32.032368, 33.654274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641676, 32.140678, 33.536747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500732, 32.405087, 33.801743>,  <30.416166, 32.563732, 33.960739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500732, 32.405087, 33.801743>,  <30.641676, 32.140678, 33.536747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500732, 32.405087, 33.801743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507827, -0.459561, 0.728639,
		0.786101, 0.593173, -0.173754,
		-0.352359, 0.661021, 0.662491,
		30.395025, 32.603394, 34.000488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085428, 32.770466, 33.758045>,  <30.641676, 32.140678, 33.536747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085428, 32.770466, 33.758045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872229, 32.585915, 34.041748>,  <30.744308, 32.475182, 34.211967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872229, 32.585915, 34.041748>,  <31.085428, 32.770466, 33.758045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872229, 32.585915, 34.041748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826538, -0.463196, 0.319820,
		0.180965, 0.756688, 0.628232,
		-0.532998, -0.461381, 0.709254,
		30.712330, 32.447502, 34.254524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394779, 32.689484, 34.402737>,  <31.085428, 32.770466, 33.758045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394779, 32.689484, 34.402737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110577, 32.424603, 34.497959>,  <30.940056, 32.265675, 34.555092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110577, 32.424603, 34.497959>,  <31.394779, 32.689484, 34.402737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110577, 32.424603, 34.497959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651621, -0.491432, 0.577827,
		-0.265652, 0.565669, 0.780671,
		-0.710506, -0.662203, 0.238052,
		30.897425, 32.225941, 34.569374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300871, 32.627430, 35.182129>,  <31.394779, 32.689484, 34.402737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300871, 32.627430, 35.182129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171972, 32.297684, 34.995975>,  <31.094633, 32.099834, 34.884285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171972, 32.297684, 34.995975>,  <31.300871, 32.627430, 35.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171972, 32.297684, 34.995975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425284, -0.565272, 0.706824,
		-0.845748, 0.029852, 0.532746,
		-0.322247, -0.824364, -0.465382,
		31.075298, 32.050373, 34.856361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775585, 32.159435, 35.613327>,  <31.300871, 32.627430, 35.182129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775585, 32.159435, 35.613327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525528, 32.396633, 35.816326>,  <31.375494, 32.538952, 35.938126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525528, 32.396633, 35.816326>,  <31.775585, 32.159435, 35.613327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525528, 32.396633, 35.816326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419538, 0.292995, -0.859152,
		-0.658167, -0.750007, 0.065620,
		-0.625144, 0.592995, 0.507496,
		31.337984, 32.574532, 35.968575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088728, 31.911936, 35.540840>,  <31.775585, 32.159435, 35.613327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088728, 31.911936, 35.540840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058950, 32.308315, 35.585518>,  <31.041084, 32.546143, 35.612324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058950, 32.308315, 35.585518>,  <31.088728, 31.911936, 35.540840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058950, 32.308315, 35.585518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490081, 0.061194, -0.869526,
		-0.868492, -0.119472, 0.481090,
		-0.074445, 0.990950, 0.111697,
		31.036617, 32.605598, 35.619026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469067, 32.106525, 35.083534>,  <31.088728, 31.911936, 35.540840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469067, 32.106525, 35.083534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637009, 32.458599, 35.172073>,  <30.737774, 32.669842, 35.225197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637009, 32.458599, 35.172073>,  <30.469067, 32.106525, 35.083534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637009, 32.458599, 35.172073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473421, 0.420471, -0.774001,
		-0.774334, 0.220178, 0.593235,
		0.419856, 0.880185, 0.221349,
		30.762966, 32.722656, 35.238480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900869, 32.708492, 35.226105>,  <30.469067, 32.106525, 35.083534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900869, 32.708492, 35.226105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261555, 32.823357, 35.096828>,  <30.477966, 32.892277, 35.019264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261555, 32.823357, 35.096828>,  <29.900869, 32.708492, 35.226105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261555, 32.823357, 35.096828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420042, 0.404888, -0.812176,
		-0.102370, 0.868103, 0.485713,
		0.901713, 0.287162, -0.323191,
		30.532068, 32.909504, 34.999870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878942, 33.297653, 34.905659>,  <29.900869, 32.708492, 35.226105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878942, 33.297653, 34.905659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199329, 33.129223, 34.735416>,  <30.391562, 33.028164, 34.633270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199329, 33.129223, 34.735416>,  <29.878942, 33.297653, 34.905659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199329, 33.129223, 34.735416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209858, 0.468323, -0.858274,
		0.560724, 0.776766, 0.286744,
		0.800967, -0.421080, -0.425610,
		30.439619, 33.002899, 34.607735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166687, 33.755814, 34.403446>,  <29.878942, 33.297653, 34.905659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166687, 33.755814, 34.403446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370749, 33.437237, 34.273571>,  <30.493185, 33.246090, 34.195644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370749, 33.437237, 34.273571>,  <30.166687, 33.755814, 34.403446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370749, 33.437237, 34.273571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177709, 0.271757, -0.945816,
		0.841524, 0.540211, -0.002897,
		0.510153, -0.796442, -0.324690,
		30.523794, 33.198303, 34.176163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680405, 33.891155, 33.831371>,  <30.166687, 33.755814, 34.403446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680405, 33.891155, 33.831371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574402, 33.508705, 33.781406>,  <30.510801, 33.279236, 33.751427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574402, 33.508705, 33.781406>,  <30.680405, 33.891155, 33.831371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574402, 33.508705, 33.781406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241358, 0.191198, -0.951414,
		0.933552, -0.221980, -0.281436,
		-0.265005, -0.956121, -0.124917,
		30.494900, 33.221870, 33.743931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053289, 33.570030, 33.243099>,  <30.680405, 33.891155, 33.831371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053289, 33.570030, 33.243099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706425, 33.379807, 33.302265>,  <30.498306, 33.265671, 33.337765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706425, 33.379807, 33.302265>,  <31.053289, 33.570030, 33.243099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706425, 33.379807, 33.302265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296821, 0.255017, -0.920252,
		0.399914, -0.841909, -0.362296,
		-0.867160, -0.475558, 0.147911,
		30.446276, 33.237141, 33.346638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885931, 33.162556, 32.602249>,  <31.053289, 33.570030, 33.243099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885931, 33.162556, 32.602249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538063, 33.207867, 32.794434>,  <30.329342, 33.235054, 32.909744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538063, 33.207867, 32.794434>,  <30.885931, 33.162556, 32.602249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538063, 33.207867, 32.794434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373990, 0.484072, -0.791079,
		-0.322192, -0.867665, -0.378617,
		-0.869669, 0.113280, 0.480462,
		30.277163, 33.241852, 32.938572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293716, 32.944302, 32.075623>,  <30.885931, 33.162556, 32.602249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293716, 32.944302, 32.075623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163017, 33.186668, 32.365753>,  <30.084599, 33.332088, 32.539833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163017, 33.186668, 32.365753>,  <30.293716, 32.944302, 32.075623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163017, 33.186668, 32.365753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528110, 0.519406, -0.671802,
		-0.783796, -0.602561, 0.150277,
		-0.326747, 0.605919, 0.725327,
		30.064993, 33.368443, 32.583351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327650, 32.321632, 32.309128>,  <30.293716, 32.944302, 32.075623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327650, 32.321632, 32.309128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341185, 31.965649, 32.491039>,  <30.349304, 31.752058, 32.600185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341185, 31.965649, 32.491039>,  <30.327650, 32.321632, 32.309128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341185, 31.965649, 32.491039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047552, 0.455961, 0.888729,
		-0.998296, -0.008444, 0.057746,
		0.033835, -0.889960, 0.454782,
		30.351336, 31.698660, 32.627476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817387, 31.869934, 32.200798>,  <30.327650, 32.321632, 32.309128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817387, 31.869934, 32.200798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187071, 31.972313, 32.314167>,  <31.408880, 32.033741, 32.382187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187071, 31.972313, 32.314167>,  <30.817387, 31.869934, 32.200798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187071, 31.972313, 32.314167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253420, 0.144158, -0.956555,
		-0.285683, 0.955882, 0.068371,
		0.924210, 0.255945, 0.283423,
		31.464334, 32.049095, 32.399193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017500, 32.363251, 31.744904>,  <30.817387, 31.869934, 32.200798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017500, 32.363251, 31.744904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362349, 32.227940, 31.895800>,  <31.569258, 32.146751, 31.986338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362349, 32.227940, 31.895800>,  <31.017500, 32.363251, 31.744904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362349, 32.227940, 31.895800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469704, 0.254285, -0.845409,
		0.190060, 0.906038, 0.378117,
		0.862122, -0.338282, 0.377240,
		31.620985, 32.126453, 32.008972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446695, 32.893246, 31.605762>,  <31.017500, 32.363251, 31.744904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446695, 32.893246, 31.605762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694658, 32.587093, 31.674931>,  <31.843435, 32.403400, 31.716431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694658, 32.587093, 31.674931>,  <31.446695, 32.893246, 31.605762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694658, 32.587093, 31.674931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652976, 0.380975, -0.654583,
		0.435130, 0.518693, 0.735947,
		0.619906, -0.765385, 0.172921,
		31.880630, 32.357479, 31.726807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103809, 33.212780, 31.735584>,  <31.446695, 32.893246, 31.605762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103809, 33.212780, 31.735584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136063, 32.828911, 31.627859>,  <32.155415, 32.598591, 31.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136063, 32.828911, 31.627859>,  <32.103809, 33.212780, 31.735584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136063, 32.828911, 31.627859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702047, 0.246481, -0.668115,
		0.707551, -0.135195, 0.693609,
		0.080636, -0.959672, -0.269312,
		32.160252, 32.541008, 31.547066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778267, 33.154755, 31.744375>,  <32.103809, 33.212780, 31.735584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778267, 33.154755, 31.744375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639481, 32.862568, 31.509079>,  <32.556210, 32.687256, 31.367901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639481, 32.862568, 31.509079>,  <32.778267, 33.154755, 31.744375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639481, 32.862568, 31.509079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769048, 0.137411, -0.624246,
		0.536824, -0.668978, 0.514090,
		-0.346965, -0.730470, -0.588241,
		32.535393, 32.643425, 31.332607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305618, 33.105610, 31.412708>,  <32.778267, 33.154755, 31.744375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305618, 33.105610, 31.412708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064800, 32.860580, 31.207846>,  <32.920311, 32.713562, 31.084929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064800, 32.860580, 31.207846>,  <33.305618, 33.105610, 31.412708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064800, 32.860580, 31.207846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569035, 0.120804, -0.813391,
		0.560129, -0.781131, 0.275844,
		-0.602042, -0.612569, -0.512157,
		32.884186, 32.676811, 31.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753689, 32.604687, 31.119852>,  <33.305618, 33.105610, 31.412708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753689, 32.604687, 31.119852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430977, 32.631287, 30.885014>,  <33.237350, 32.647247, 30.744110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430977, 32.631287, 30.885014>,  <33.753689, 32.604687, 31.119852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430977, 32.631287, 30.885014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571907, 0.337486, -0.747680,
		0.148413, -0.938979, -0.310311,
		-0.806781, 0.066504, -0.587095,
		33.188942, 32.651237, 30.708885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944656, 32.318077, 30.434284>,  <33.753689, 32.604687, 31.119852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944656, 32.318077, 30.434284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606796, 32.518375, 30.358574>,  <33.404079, 32.638554, 30.313148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606796, 32.518375, 30.358574>,  <33.944656, 32.318077, 30.434284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606796, 32.518375, 30.358574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437932, 0.443009, -0.782277,
		-0.307868, -0.743640, -0.593478,
		-0.844650, 0.500741, -0.189276,
		33.353401, 32.668598, 30.301790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771931, 32.302376, 29.646996>,  <33.944656, 32.318077, 30.434284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771931, 32.302376, 29.646996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600906, 32.626385, 29.807526>,  <33.498291, 32.820789, 29.903843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600906, 32.626385, 29.807526>,  <33.771931, 32.302376, 29.646996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600906, 32.626385, 29.807526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436165, 0.573702, -0.693272,
		-0.791805, -0.121370, -0.598593,
		-0.427557, 0.810022, 0.401323,
		33.472641, 32.869392, 29.927923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437511, 32.664524, 29.099075>,  <33.771931, 32.302376, 29.646996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437511, 32.664524, 29.099075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482880, 32.953743, 29.371647>,  <33.510101, 33.127274, 29.535191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482880, 32.953743, 29.371647>,  <33.437511, 32.664524, 29.099075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482880, 32.953743, 29.371647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165613, 0.662502, -0.730523,
		-0.979647, 0.195707, -0.044607,
		0.113416, 0.723043, 0.681430,
		33.516903, 33.170654, 29.576077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140797, 33.222725, 28.773058>,  <33.437511, 32.664524, 29.099075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140797, 33.222725, 28.773058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334564, 33.405170, 29.071667>,  <33.450825, 33.514637, 29.250832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334564, 33.405170, 29.071667>,  <33.140797, 33.222725, 28.773058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334564, 33.405170, 29.071667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196207, 0.774945, -0.600801,
		-0.852550, 0.437512, 0.285904,
		0.484418, 0.456117, 0.746523,
		33.479889, 33.542004, 29.295624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795506, 33.889729, 28.798433>,  <33.140797, 33.222725, 28.773058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795506, 33.889729, 28.798433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152142, 33.912697, 28.978106>,  <33.366123, 33.926479, 29.085909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152142, 33.912697, 28.978106>,  <32.795506, 33.889729, 28.798433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152142, 33.912697, 28.978106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266894, 0.734694, -0.623692,
		-0.365825, 0.675964, 0.639723,
		0.891594, 0.057424, 0.449180,
		33.419621, 33.929924, 29.112860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942688, 34.506546, 28.752544>,  <32.795506, 33.889729, 28.798433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942688, 34.506546, 28.752544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302422, 34.352764, 28.835871>,  <33.518261, 34.260494, 28.885866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302422, 34.352764, 28.835871>,  <32.942688, 34.506546, 28.752544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302422, 34.352764, 28.835871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405160, 0.553487, -0.727666,
		0.164456, 0.738814, 0.653535,
		0.899333, -0.384456, 0.208314,
		33.572220, 34.237427, 28.898365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292740, 35.011913, 28.966892>,  <32.942688, 34.506546, 28.752544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292740, 35.011913, 28.966892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558537, 34.758442, 28.808451>,  <33.718014, 34.606358, 28.713387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558537, 34.758442, 28.808451>,  <33.292740, 35.011913, 28.966892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558537, 34.758442, 28.808451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328812, 0.723909, -0.606497,
		0.671067, 0.272770, 0.689395,
		0.664493, -0.633681, -0.396102,
		33.757885, 34.568336, 28.689621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884323, 35.322083, 29.062378>,  <33.292740, 35.011913, 28.966892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884323, 35.322083, 29.062378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921009, 35.046524, 28.774763>,  <33.943020, 34.881191, 28.602194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921009, 35.046524, 28.774763>,  <33.884323, 35.322083, 29.062378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921009, 35.046524, 28.774763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540240, 0.640999, -0.545216,
		0.836498, -0.338447, 0.430959,
		0.091718, -0.688893, -0.719037,
		33.948524, 34.839855, 28.559052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504322, 35.653084, 28.748192>,  <33.884323, 35.322083, 29.062378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504322, 35.653084, 28.748192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364769, 35.361149, 28.513037>,  <34.281036, 35.185986, 28.371944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364769, 35.361149, 28.513037>,  <34.504322, 35.653084, 28.748192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364769, 35.361149, 28.513037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101207, 0.594294, -0.797855,
		0.931684, -0.337859, -0.133476,
		-0.348886, -0.729840, -0.587888,
		34.260101, 35.142197, 28.336670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966618, 35.618290, 28.193430>,  <34.504322, 35.653084, 28.748192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966618, 35.618290, 28.193430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626675, 35.459389, 28.054905>,  <34.422710, 35.364048, 27.971790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626675, 35.459389, 28.054905>,  <34.966618, 35.618290, 28.193430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626675, 35.459389, 28.054905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009842, 0.645046, -0.764080,
		0.526922, -0.652767, -0.544287,
		-0.849857, -0.397253, -0.346314,
		34.371719, 35.340214, 27.951010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040604, 35.511669, 27.403502>,  <34.966618, 35.618290, 28.193430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040604, 35.511669, 27.403502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650936, 35.506538, 27.493679>,  <34.417133, 35.503460, 27.547785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650936, 35.506538, 27.493679>,  <35.040604, 35.511669, 27.403502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650936, 35.506538, 27.493679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183405, 0.627343, -0.756837,
		-0.131726, -0.778637, -0.613492,
		-0.974172, -0.012822, 0.225443,
		34.358685, 35.502693, 27.561312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656464, 35.353065, 26.727299>,  <35.040604, 35.511669, 27.403502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656464, 35.353065, 26.727299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362633, 35.512367, 26.947042>,  <34.186337, 35.607948, 27.078888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362633, 35.512367, 26.947042>,  <34.656464, 35.353065, 26.727299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362633, 35.512367, 26.947042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353133, 0.466958, -0.810707,
		-0.579396, -0.789521, -0.202378,
		-0.734572, 0.398254, 0.549360,
		34.142262, 35.631844, 27.111851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095753, 35.354504, 26.344597>,  <34.656464, 35.353065, 26.727299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095753, 35.354504, 26.344597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998558, 35.638767, 26.608694>,  <33.940243, 35.809326, 26.767153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998558, 35.638767, 26.608694>,  <34.095753, 35.354504, 26.344597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998558, 35.638767, 26.608694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366965, 0.562715, -0.740735,
		-0.897939, -0.422275, 0.124054,
		-0.242987, 0.710658, 0.660244,
		33.925663, 35.851963, 26.806767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477970, 35.627804, 25.990164>,  <34.095753, 35.354504, 26.344597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477970, 35.627804, 25.990164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573509, 35.911430, 26.255548>,  <33.630833, 36.081604, 26.414780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573509, 35.911430, 26.255548>,  <33.477970, 35.627804, 25.990164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573509, 35.911430, 26.255548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305452, 0.703415, -0.641800,
		-0.921764, -0.049360, 0.384597,
		0.238852, 0.709064, 0.663460,
		33.645164, 36.124149, 26.454586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902775, 36.033875, 26.150976>,  <33.477970, 35.627804, 25.990164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902775, 36.033875, 26.150976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214443, 36.277332, 26.210890>,  <33.401443, 36.423409, 26.246838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214443, 36.277332, 26.210890>,  <32.902775, 36.033875, 26.150976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214443, 36.277332, 26.210890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372030, 0.641387, -0.670982,
		-0.504463, 0.467086, 0.726187,
		0.779173, 0.608649, 0.149786,
		33.448196, 36.459927, 26.255825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603718, 36.707867, 26.067406>,  <32.902775, 36.033875, 26.150976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603718, 36.707867, 26.067406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986149, 36.822956, 26.045042>,  <33.215607, 36.892010, 26.031624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986149, 36.822956, 26.045042>,  <32.603718, 36.707867, 26.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986149, 36.822956, 26.045042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218839, 0.573836, -0.789190,
		-0.194983, 0.766765, 0.611599,
		0.956081, 0.287721, -0.055910,
		33.272972, 36.909271, 26.028269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656319, 37.491554, 26.109138>,  <32.603718, 36.707867, 26.067406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656319, 37.491554, 26.109138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977188, 37.366756, 25.905502>,  <33.169712, 37.291878, 25.783319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977188, 37.366756, 25.905502>,  <32.656319, 37.491554, 26.109138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977188, 37.366756, 25.905502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234036, 0.620104, -0.748798,
		0.549309, 0.719813, 0.424415,
		0.802176, -0.311993, -0.509091,
		33.217842, 37.273159, 25.752775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699158, 37.925900, 25.551886>,  <32.656319, 37.491554, 26.109138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699158, 37.925900, 25.551886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980812, 37.668667, 25.431465>,  <33.149803, 37.514328, 25.359213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980812, 37.668667, 25.431465>,  <32.699158, 37.925900, 25.551886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980812, 37.668667, 25.431465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079096, 0.492379, -0.866780,
		0.705645, 0.586519, 0.397567,
		0.704136, -0.643085, -0.301053,
		33.192055, 37.475742, 25.341148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289848, 38.331024, 25.411013>,  <32.699158, 37.925900, 25.551886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289848, 38.331024, 25.411013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272919, 37.995499, 25.193907>,  <33.262760, 37.794182, 25.063644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272919, 37.995499, 25.193907>,  <33.289848, 38.331024, 25.411013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272919, 37.995499, 25.193907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020508, 0.543865, -0.838922,
		0.998893, -0.024379, -0.040224,
		-0.042329, -0.838818, -0.542763,
		33.260220, 37.743855, 25.031078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544621, 38.553993, 24.793158>,  <33.289848, 38.331024, 25.411013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544621, 38.553993, 24.793158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379723, 38.206135, 24.684513>,  <33.280785, 37.997421, 24.619328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379723, 38.206135, 24.684513>,  <33.544621, 38.553993, 24.793158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379723, 38.206135, 24.684513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165127, 0.364501, -0.916445,
		0.895986, -0.332947, -0.293864,
		-0.412241, -0.869647, -0.271609,
		33.256050, 37.945240, 24.603031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879219, 38.311680, 24.253685>,  <33.544621, 38.553993, 24.793158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879219, 38.311680, 24.253685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537537, 38.108082, 24.211245>,  <33.332527, 37.985924, 24.185780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537537, 38.108082, 24.211245>,  <33.879219, 38.311680, 24.253685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537537, 38.108082, 24.211245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029669, 0.251454, -0.967414,
		0.519091, -0.823221, -0.229895,
		-0.854204, -0.508996, -0.106103,
		33.281277, 37.955383, 24.179413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973389, 38.034714, 23.649969>,  <33.879219, 38.311680, 24.253685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973389, 38.034714, 23.649969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578445, 38.000103, 23.703096>,  <33.341480, 37.979336, 23.734972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578445, 38.000103, 23.703096>,  <33.973389, 38.034714, 23.649969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578445, 38.000103, 23.703096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143253, 0.128325, -0.981332,
		0.067864, -0.987951, -0.139097,
		-0.987357, -0.086523, 0.132818,
		33.282238, 37.974144, 23.742941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758644, 37.469803, 23.202803>,  <33.973389, 38.034714, 23.649969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758644, 37.469803, 23.202803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465561, 37.727985, 23.289082>,  <33.289711, 37.882893, 23.340849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465561, 37.727985, 23.289082>,  <33.758644, 37.469803, 23.202803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465561, 37.727985, 23.289082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098999, 0.212485, -0.972136,
		-0.673302, -0.733648, -0.091790,
		-0.732710, 0.645454, 0.215697,
		33.245747, 37.921623, 23.353790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298260, 37.385254, 22.613287>,  <33.758644, 37.469803, 23.202803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298260, 37.385254, 22.613287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186825, 37.730244, 22.782299>,  <33.119965, 37.937237, 22.883705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186825, 37.730244, 22.782299>,  <33.298260, 37.385254, 22.613287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186825, 37.730244, 22.782299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027940, 0.447038, -0.894078,
		-0.960004, -0.237275, -0.148638,
		-0.278589, 0.862472, 0.422529,
		33.103249, 37.988987, 22.909058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807617, 37.728634, 22.177120>,  <33.298260, 37.385254, 22.613287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807617, 37.728634, 22.177120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919567, 38.032177, 22.412340>,  <32.986736, 38.214302, 22.553473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919567, 38.032177, 22.412340>,  <32.807617, 37.728634, 22.177120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919567, 38.032177, 22.412340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045897, 0.601252, -0.797740,
		-0.958938, 0.250259, 0.133447,
		0.279877, 0.758859, 0.588049,
		33.003529, 38.259834, 22.588755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441063, 38.357590, 21.897657>,  <32.807617, 37.728634, 22.177120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441063, 38.357590, 21.897657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723389, 38.514206, 22.133799>,  <32.892784, 38.608177, 22.275482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723389, 38.514206, 22.133799>,  <32.441063, 38.357590, 21.897657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723389, 38.514206, 22.133799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210230, 0.680046, -0.702383,
		-0.676480, 0.619863, 0.397673,
		0.705817, 0.391545, 0.590351,
		32.935135, 38.631668, 22.310904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323399, 39.014984, 21.897570>,  <32.441063, 38.357590, 21.897657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323399, 39.014984, 21.897570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706280, 38.983234, 22.008892>,  <32.936008, 38.964184, 22.075686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706280, 38.983234, 22.008892>,  <32.323399, 39.014984, 21.897570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706280, 38.983234, 22.008892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226264, 0.804845, -0.548661,
		-0.180441, 0.588152, 0.788364,
		0.957207, -0.079377, 0.278305,
		32.993443, 38.959423, 22.092384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498581, 39.661892, 22.240252>,  <32.323399, 39.014984, 21.897570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498581, 39.661892, 22.240252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845234, 39.493809, 22.132639>,  <33.053226, 39.392960, 22.068071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845234, 39.493809, 22.132639>,  <32.498581, 39.661892, 22.240252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845234, 39.493809, 22.132639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266269, 0.845486, -0.462876,
		0.421967, 0.329507, 0.844612,
		0.866628, -0.420213, -0.269029,
		33.105221, 39.367744, 22.051929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031338, 40.158680, 22.398228>,  <32.498581, 39.661892, 22.240252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031338, 40.158680, 22.398228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152447, 39.934551, 22.089846>,  <33.225113, 39.800076, 21.904818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152447, 39.934551, 22.089846>,  <33.031338, 40.158680, 22.398228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152447, 39.934551, 22.089846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218004, 0.828191, -0.516308,
		0.927796, -0.011748, 0.372904,
		0.302770, -0.560323, -0.770953,
		33.243279, 39.766453, 21.858561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670105, 40.378742, 22.240015>,  <33.031338, 40.158680, 22.398228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670105, 40.378742, 22.240015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568367, 40.179176, 21.908619>,  <33.507324, 40.059437, 21.709782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568367, 40.179176, 21.908619>,  <33.670105, 40.378742, 22.240015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568367, 40.179176, 21.908619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439329, 0.703565, -0.558558,
		0.861567, -0.506047, 0.040236,
		-0.254348, -0.498912, -0.828489,
		33.492062, 40.029503, 21.660072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179390, 40.571358, 21.838537>,  <33.670105, 40.378742, 22.240015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179390, 40.571358, 21.838537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890980, 40.435169, 21.597143>,  <33.717934, 40.353455, 21.452307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890980, 40.435169, 21.597143>,  <34.179390, 40.571358, 21.838537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890980, 40.435169, 21.597143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220653, 0.712786, -0.665769,
		0.656832, -0.613200, -0.438813,
		-0.721030, -0.340473, -0.603486,
		33.674671, 40.333027, 21.416098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507915, 40.533863, 21.250332>,  <34.179390, 40.571358, 21.838537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507915, 40.533863, 21.250332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120472, 40.556236, 21.153442>,  <33.888008, 40.569660, 21.095308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120472, 40.556236, 21.153442>,  <34.507915, 40.533863, 21.250332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120472, 40.556236, 21.153442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203896, 0.736169, -0.645354,
		0.142224, -0.674483, -0.724462,
		-0.968607, 0.055930, -0.242225,
		33.829891, 40.573017, 21.080774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503059, 40.248257, 20.524622>,  <34.507915, 40.533863, 21.250332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503059, 40.248257, 20.524622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201118, 40.489304, 20.628201>,  <34.019955, 40.633930, 20.690348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201118, 40.489304, 20.628201>,  <34.503059, 40.248257, 20.524622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201118, 40.489304, 20.628201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326682, 0.687773, -0.648265,
		-0.568752, -0.404750, -0.716030,
		-0.754851, 0.602616, 0.258947,
		33.974663, 40.670090, 20.705885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342262, 40.634369, 19.875858>,  <34.503059, 40.248257, 20.524622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342262, 40.634369, 19.875858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128925, 40.864773, 20.123652>,  <34.000923, 41.003014, 20.272327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128925, 40.864773, 20.123652>,  <34.342262, 40.634369, 19.875858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128925, 40.864773, 20.123652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060587, 0.756467, -0.651219,
		-0.843725, -0.309792, -0.438357,
		-0.533345, 0.576009, 0.619481,
		33.968922, 41.037575, 20.309496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989613, 41.003551, 19.515169>,  <34.342262, 40.634369, 19.875858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989613, 41.003551, 19.515169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959969, 41.221077, 19.849541>,  <33.942181, 41.351593, 20.050163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959969, 41.221077, 19.849541>,  <33.989613, 41.003551, 19.515169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959969, 41.221077, 19.849541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026410, 0.839009, -0.543476,
		-0.996900, -0.018200, -0.076540,
		-0.074109, 0.543813, 0.835928,
		33.937737, 41.384220, 20.100319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561356, 41.510220, 19.270151>,  <33.989613, 41.003551, 19.515169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561356, 41.510220, 19.270151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742474, 41.648609, 19.598854>,  <33.851143, 41.731644, 19.796076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742474, 41.648609, 19.598854>,  <33.561356, 41.510220, 19.270151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742474, 41.648609, 19.598854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080432, 0.902041, -0.424091,
		-0.887980, 0.258121, 0.380611,
		0.452793, 0.345972, 0.821756,
		33.878311, 41.752399, 19.845381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225071, 42.075195, 19.665201>,  <33.561356, 41.510220, 19.270151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225071, 42.075195, 19.665201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618504, 42.110477, 19.728188>,  <33.854561, 42.131645, 19.765980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618504, 42.110477, 19.728188>,  <33.225071, 42.075195, 19.665201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618504, 42.110477, 19.728188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036615, 0.951824, -0.304450,
		-0.176734, 0.293684, 0.939423,
		0.983577, 0.088203, 0.157467,
		33.913578, 42.136940, 19.775427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438103, 42.698143, 20.019499>,  <33.225071, 42.075195, 19.665201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438103, 42.698143, 20.019499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711994, 42.566814, 19.759237>,  <33.876331, 42.488018, 19.603081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711994, 42.566814, 19.759237>,  <33.438103, 42.698143, 20.019499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711994, 42.566814, 19.759237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100735, 0.926843, -0.361682,
		0.721801, 0.182112, 0.667711,
		0.684730, -0.328324, -0.650652,
		33.917412, 42.468319, 19.564041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099762, 43.179775, 19.892260>,  <33.438103, 42.698143, 20.019499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099762, 43.179775, 19.892260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064056, 42.933376, 19.579191>,  <34.042633, 42.785538, 19.391350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064056, 42.933376, 19.579191>,  <34.099762, 43.179775, 19.892260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064056, 42.933376, 19.579191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068923, 0.780105, -0.621841,
		0.993620, -0.109452, -0.027178,
		-0.089263, -0.616001, -0.782672,
		34.037277, 42.748577, 19.344389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710232, 43.132572, 19.304718>,  <34.099762, 43.179775, 19.892260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710232, 43.132572, 19.304718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331539, 43.077106, 19.188465>,  <34.104324, 43.043827, 19.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331539, 43.077106, 19.188465>,  <34.710232, 43.132572, 19.304718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331539, 43.077106, 19.188465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031304, 0.937889, -0.345519,
		0.320495, -0.318017, -0.892271,
		-0.946733, -0.138669, -0.290633,
		34.047520, 43.035507, 19.101274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182152, 43.625675, 19.748371>,  <34.710232, 43.132572, 19.304718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182152, 43.625675, 19.748371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032806, 43.934689, 19.542929>,  <34.943199, 44.120098, 19.419664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032806, 43.934689, 19.542929>,  <35.182152, 43.625675, 19.748371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032806, 43.934689, 19.542929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576805, 0.626931, 0.523691,
		0.726565, -0.100723, -0.679675,
		-0.373362, 0.772536, -0.513604,
		34.920799, 44.166451, 19.388847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715260, 43.931774, 19.463669>,  <35.182152, 43.625675, 19.748371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715260, 43.931774, 19.463669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408688, 44.157536, 19.586334>,  <35.224747, 44.292992, 19.659933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408688, 44.157536, 19.586334>,  <35.715260, 43.931774, 19.463669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408688, 44.157536, 19.586334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625060, 0.545357, 0.558467,
		0.147959, 0.619707, -0.770761,
		-0.766425, 0.564402, 0.306663,
		35.178761, 44.326855, 19.678333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173286, 43.897633, 20.085430>,  <35.715260, 43.931774, 19.463669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173286, 43.897633, 20.085430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373413, 43.609661, 20.277838>,  <36.493488, 43.436878, 20.393282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373413, 43.609661, 20.277838>,  <36.173286, 43.897633, 20.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373413, 43.609661, 20.277838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600913, 0.688688, 0.405724,
		-0.623365, 0.086059, 0.777181,
		0.500319, -0.719932, 0.481018,
		36.523510, 43.393681, 20.422144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273544, 44.053211, 20.783188>,  <36.173286, 43.897633, 20.085430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273544, 44.053211, 20.783188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582306, 43.810589, 20.707029>,  <36.767563, 43.665016, 20.661335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582306, 43.810589, 20.707029>,  <36.273544, 44.053211, 20.783188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582306, 43.810589, 20.707029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571442, 0.530753, 0.625903,
		-0.278591, -0.591940, 0.756303,
		0.771907, -0.606554, -0.190397,
		36.813877, 43.628624, 20.649910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782162, 43.801285, 21.247217>,  <36.273544, 44.053211, 20.783188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782162, 43.801285, 21.247217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453720, 43.971920, 21.095530>,  <35.256653, 44.074299, 21.004517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453720, 43.971920, 21.095530>,  <35.782162, 43.801285, 21.247217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453720, 43.971920, 21.095530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570722, -0.622546, 0.535456,
		-0.007663, 0.656095, 0.754639,
		-0.821108, 0.426586, -0.379219,
		35.207386, 44.099895, 20.981764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338165, 44.181355, 21.746563>,  <35.782162, 43.801285, 21.247217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338165, 44.181355, 21.746563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170574, 43.999588, 21.432121>,  <35.070019, 43.890530, 21.243456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170574, 43.999588, 21.432121>,  <35.338165, 44.181355, 21.746563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170574, 43.999588, 21.432121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620937, -0.488278, 0.613206,
		-0.662489, 0.745043, -0.077584,
		-0.418982, -0.454417, -0.786104,
		35.044880, 43.863262, 21.196291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664787, 44.187565, 21.901083>,  <35.338165, 44.181355, 21.746563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664787, 44.187565, 21.901083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750793, 43.880508, 21.659592>,  <34.802395, 43.696274, 21.514696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750793, 43.880508, 21.659592>,  <34.664787, 44.187565, 21.901083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750793, 43.880508, 21.659592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401091, -0.633058, 0.662090,
		-0.890447, 0.099793, -0.444011,
		0.215012, -0.767645, -0.603731,
		34.815296, 43.650215, 21.478472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129707, 43.765255, 22.014343>,  <34.664787, 44.187565, 21.901083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129707, 43.765255, 22.014343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407642, 43.526905, 21.853281>,  <34.574402, 43.383896, 21.756643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407642, 43.526905, 21.853281>,  <34.129707, 43.765255, 22.014343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407642, 43.526905, 21.853281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306045, -0.751663, 0.584242,
		-0.650800, -0.282720, -0.704648,
		0.694835, -0.595879, -0.402658,
		34.616093, 43.348141, 21.732483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747097, 43.191593, 21.880463>,  <34.129707, 43.765255, 22.014343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747097, 43.191593, 21.880463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122952, 43.054806, 21.885149>,  <34.348465, 42.972733, 21.887960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122952, 43.054806, 21.885149>,  <33.747097, 43.191593, 21.880463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122952, 43.054806, 21.885149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253251, -0.672035, 0.695868,
		-0.230088, -0.656833, -0.718074,
		0.939640, -0.341965, 0.011716,
		34.404842, 42.952217, 21.888664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675114, 42.531006, 22.080000>,  <33.747097, 43.191593, 21.880463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675114, 42.531006, 22.080000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067497, 42.588211, 22.132553>,  <34.302929, 42.622532, 22.164085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067497, 42.588211, 22.132553>,  <33.675114, 42.531006, 22.080000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067497, 42.588211, 22.132553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013829, -0.726257, 0.687284,
		0.193707, -0.672382, -0.714409,
		0.980962, 0.143011, 0.131383,
		34.361786, 42.631115, 22.171968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014446, 41.892399, 21.993649>,  <33.675114, 42.531006, 22.080000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014446, 41.892399, 21.993649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236168, 42.122387, 22.234365>,  <34.369202, 42.260380, 22.378796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236168, 42.122387, 22.234365>,  <34.014446, 41.892399, 21.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236168, 42.122387, 22.234365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006872, -0.719849, 0.694097,
		0.832284, -0.388878, -0.395065,
		0.554306, 0.574971, 0.601792,
		34.402458, 42.294880, 22.414904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427193, 41.477425, 22.241514>,  <34.014446, 41.892399, 21.993649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427193, 41.477425, 22.241514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442368, 41.782337, 22.499968>,  <34.451473, 41.965286, 22.655039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442368, 41.782337, 22.499968>,  <34.427193, 41.477425, 22.241514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442368, 41.782337, 22.499968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008737, -0.646321, 0.763015,
		0.999242, -0.034591, -0.017858,
		0.037936, 0.762281, 0.646134,
		34.453747, 42.011021, 22.693808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951832, 41.285198, 22.636681>,  <34.427193, 41.477425, 22.241514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951832, 41.285198, 22.636681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738056, 41.551674, 22.844740>,  <34.609791, 41.711559, 22.969576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738056, 41.551674, 22.844740>,  <34.951832, 41.285198, 22.636681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738056, 41.551674, 22.844740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011615, -0.609567, 0.792649,
		0.845125, 0.429668, 0.318041,
		-0.534443, 0.666194, 0.520151,
		34.577724, 41.751534, 23.000786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347488, 41.489285, 23.236782>,  <34.951832, 41.285198, 22.636681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347488, 41.489285, 23.236782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968338, 41.558178, 23.344011>,  <34.740849, 41.599514, 23.408348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968338, 41.558178, 23.344011>,  <35.347488, 41.489285, 23.236782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968338, 41.558178, 23.344011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152535, -0.493379, 0.856336,
		0.279751, 0.852592, 0.441391,
		-0.947878, 0.172233, 0.268073,
		34.683975, 41.609848, 23.424433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395119, 41.581512, 23.902990>,  <35.347488, 41.489285, 23.236782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395119, 41.581512, 23.902990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004410, 41.512772, 23.851786>,  <34.769985, 41.471527, 23.821062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004410, 41.512772, 23.851786>,  <35.395119, 41.581512, 23.902990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004410, 41.512772, 23.851786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037941, -0.449251, 0.892600,
		-0.210904, 0.876722, 0.432295,
		-0.976770, -0.171851, -0.128012,
		34.711380, 41.461216, 23.813381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060722, 41.660210, 24.603495>,  <35.395119, 41.581512, 23.902990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060722, 41.660210, 24.603495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797066, 41.449921, 24.388407>,  <34.638870, 41.323746, 24.259354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797066, 41.449921, 24.388407>,  <35.060722, 41.660210, 24.603495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797066, 41.449921, 24.388407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226123, -0.543392, 0.808451,
		-0.717214, 0.654478, 0.239296,
		-0.659146, -0.525722, -0.537721,
		34.599323, 41.292206, 24.227091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455822, 41.720318, 24.924730>,  <35.060722, 41.660210, 24.603495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455822, 41.720318, 24.924730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392029, 41.383636, 24.718391>,  <34.353752, 41.181629, 24.594587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392029, 41.383636, 24.718391>,  <34.455822, 41.720318, 24.924730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392029, 41.383636, 24.718391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271426, -0.465013, 0.842669,
		-0.949155, 0.274403, -0.154301,
		-0.159479, -0.841704, -0.515849,
		34.344185, 41.131126, 24.563637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907185, 41.433426, 25.219412>,  <34.455822, 41.720318, 24.924730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907185, 41.433426, 25.219412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061428, 41.117523, 25.028587>,  <34.153976, 40.927982, 24.914093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061428, 41.117523, 25.028587>,  <33.907185, 41.433426, 25.219412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061428, 41.117523, 25.028587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351607, -0.603815, 0.715387,
		-0.853039, -0.108124, -0.510523,
		0.385612, -0.789757, -0.477061,
		34.177113, 40.880596, 24.885469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401638, 40.968754, 25.248018>,  <33.907185, 41.433426, 25.219412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401638, 40.968754, 25.248018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726044, 40.747116, 25.172926>,  <33.920685, 40.614132, 25.127871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726044, 40.747116, 25.172926>,  <33.401638, 40.968754, 25.248018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726044, 40.747116, 25.172926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178665, -0.540137, 0.822393,
		-0.557086, -0.633426, -0.537053,
		0.811008, -0.554096, -0.187732,
		33.969345, 40.580887, 25.116608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217007, 40.277740, 25.363062>,  <33.401638, 40.968754, 25.248018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217007, 40.277740, 25.363062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616535, 40.265179, 25.377819>,  <33.856255, 40.257641, 25.386673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616535, 40.265179, 25.377819>,  <33.217007, 40.277740, 25.363062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616535, 40.265179, 25.377819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048169, -0.561762, 0.825896,
		-0.005215, -0.826703, -0.562615,
		0.998825, -0.031408, 0.036892,
		33.916183, 40.255756, 25.388887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415546, 39.593525, 25.194391>,  <33.217007, 40.277740, 25.363062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415546, 39.593525, 25.194391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689163, 39.770969, 25.426012>,  <33.853333, 39.877438, 25.564983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689163, 39.770969, 25.426012>,  <33.415546, 39.593525, 25.194391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689163, 39.770969, 25.426012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143791, -0.696244, 0.703256,
		0.715132, -0.564317, -0.412471,
		0.684040, 0.443611, 0.579050,
		33.894375, 39.904053, 25.599728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867836, 39.010941, 25.489288>,  <33.415546, 39.593525, 25.194391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867836, 39.010941, 25.489288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923878, 39.341259, 25.707806>,  <33.957504, 39.539448, 25.838917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923878, 39.341259, 25.707806>,  <33.867836, 39.010941, 25.489288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923878, 39.341259, 25.707806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024002, -0.548740, 0.835648,
		0.989846, -0.130191, -0.057060,
		0.140105, 0.825793, 0.546293,
		33.965908, 39.588997, 25.871693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485775, 38.901093, 26.055622>,  <33.867836, 39.010941, 25.489288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485775, 38.901093, 26.055622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253517, 39.208542, 26.163000>,  <34.114162, 39.393013, 26.227427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253517, 39.208542, 26.163000>,  <34.485775, 38.901093, 26.055622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253517, 39.208542, 26.163000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205608, -0.457472, 0.865127,
		0.787768, 0.447135, 0.423665,
		-0.580644, 0.768628, 0.268447,
		34.079323, 39.439129, 26.243534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566078, 38.892754, 26.751949>,  <34.485775, 38.901093, 26.055622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566078, 38.892754, 26.751949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230282, 39.099594, 26.685196>,  <34.028805, 39.223698, 26.645144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230282, 39.099594, 26.685196>,  <34.566078, 38.892754, 26.751949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230282, 39.099594, 26.685196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401448, -0.383279, 0.831828,
		0.366180, 0.765310, 0.529351,
		-0.839495, 0.517106, -0.166883,
		33.978432, 39.254726, 26.635132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391918, 39.220531, 27.388931>,  <34.566078, 38.892754, 26.751949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391918, 39.220531, 27.388931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061882, 39.152756, 27.173334>,  <33.863861, 39.112091, 27.043976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061882, 39.152756, 27.173334>,  <34.391918, 39.220531, 27.388931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061882, 39.152756, 27.173334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441048, -0.403086, 0.801872,
		-0.353132, 0.899339, 0.257851,
		-0.825091, -0.169442, -0.538994,
		33.814354, 39.101925, 27.011637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899921, 39.607498, 27.799864>,  <34.391918, 39.220531, 27.388931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899921, 39.607498, 27.799864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692963, 39.365948, 27.557335>,  <33.568787, 39.221016, 27.411818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692963, 39.365948, 27.557335>,  <33.899921, 39.607498, 27.799864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692963, 39.365948, 27.557335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461057, -0.400183, 0.792010,
		-0.720918, 0.689336, -0.071367,
		-0.517401, -0.603879, -0.606322,
		33.537743, 39.184784, 27.375439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280441, 39.599941, 28.123020>,  <33.899921, 39.607498, 27.799864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280441, 39.599941, 28.123020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274342, 39.291706, 27.868162>,  <33.270679, 39.106766, 27.715246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274342, 39.291706, 27.868162>,  <33.280441, 39.599941, 28.123020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274342, 39.291706, 27.868162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398212, -0.579824, 0.710796,
		-0.917167, 0.264561, -0.298015,
		-0.015252, -0.770592, -0.637147,
		33.269768, 39.060528, 27.677019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561302, 39.281219, 28.159182>,  <33.280441, 39.599941, 28.123020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561302, 39.281219, 28.159182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816113, 39.001125, 28.030264>,  <32.968998, 38.833069, 27.952913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816113, 39.001125, 28.030264>,  <32.561302, 39.281219, 28.159182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816113, 39.001125, 28.030264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289969, -0.605074, 0.741487,
		-0.714224, -0.378892, -0.588493,
		0.637026, -0.700233, -0.322291,
		33.007221, 38.791054, 27.933577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267262, 38.664631, 28.256397>,  <32.561302, 39.281219, 28.159182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267262, 38.664631, 28.256397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654583, 38.570385, 28.223238>,  <32.886974, 38.513836, 28.203342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654583, 38.570385, 28.223238>,  <32.267262, 38.664631, 28.256397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654583, 38.570385, 28.223238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072753, -0.583566, 0.808800,
		-0.238943, -0.777133, -0.582211,
		0.968304, -0.235615, -0.082900,
		32.945076, 38.499699, 28.198368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255955, 37.963299, 28.376036>,  <32.267262, 38.664631, 28.256397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255955, 37.963299, 28.376036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646381, 38.039967, 28.417128>,  <32.880638, 38.085968, 28.441784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646381, 38.039967, 28.417128>,  <32.255955, 37.963299, 28.376036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646381, 38.039967, 28.417128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018593, -0.544238, 0.838725,
		0.216666, -0.816743, -0.534777,
		0.976069, 0.191667, 0.102732,
		32.939201, 38.097466, 28.447947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612362, 37.364147, 28.548998>,  <32.255955, 37.963299, 28.376036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612362, 37.364147, 28.548998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858070, 37.644093, 28.694798>,  <33.005497, 37.812061, 28.782278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858070, 37.644093, 28.694798>,  <32.612362, 37.364147, 28.548998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858070, 37.644093, 28.694798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176066, -0.571837, 0.801251,
		0.769201, -0.428011, -0.474486,
		0.614272, 0.699864, 0.364500,
		33.042351, 37.854053, 28.804148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254940, 37.103065, 28.573051>,  <32.612362, 37.364147, 28.548998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254940, 37.103065, 28.573051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286068, 37.412792, 28.824249>,  <33.304745, 37.598629, 28.974968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286068, 37.412792, 28.824249>,  <33.254940, 37.103065, 28.573051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286068, 37.412792, 28.824249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143771, -0.632035, 0.761486,
		0.986546, 0.031027, -0.160511,
		0.077821, 0.774318, 0.627992,
		33.309414, 37.645088, 29.012648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951149, 37.049450, 28.970768>,  <33.254940, 37.103065, 28.573051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951149, 37.049450, 28.970768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681648, 37.274918, 29.161909>,  <33.519947, 37.410198, 29.276594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681648, 37.274918, 29.161909>,  <33.951149, 37.049450, 28.970768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681648, 37.274918, 29.161909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103158, -0.568581, 0.816133,
		0.731725, 0.599163, 0.324934,
		-0.673748, 0.563666, 0.477853,
		33.479523, 37.444016, 29.305265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258472, 37.156128, 29.644140>,  <33.951149, 37.049450, 28.970768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258472, 37.156128, 29.644140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874508, 37.252708, 29.701096>,  <33.644131, 37.310658, 29.735268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874508, 37.252708, 29.701096>,  <34.258472, 37.156128, 29.644140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874508, 37.252708, 29.701096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035060, -0.400557, 0.915601,
		0.278106, 0.883887, 0.376034,
		-0.959910, 0.241451, 0.142386,
		33.586536, 37.325142, 29.743811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245583, 37.463760, 30.353868>,  <34.258472, 37.156128, 29.644140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245583, 37.463760, 30.353868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872803, 37.363815, 30.248762>,  <33.649136, 37.303848, 30.185698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872803, 37.363815, 30.248762>,  <34.245583, 37.463760, 30.353868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872803, 37.363815, 30.248762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114931, -0.483763, 0.867620,
		-0.343901, 0.838775, 0.422125,
		-0.931946, -0.249860, -0.262768,
		33.593220, 37.288857, 30.169931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912338, 37.573456, 30.992966>,  <34.245583, 37.463760, 30.353868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912338, 37.573456, 30.992966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654728, 37.355064, 30.778625>,  <33.500160, 37.224030, 30.650021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654728, 37.355064, 30.778625>,  <33.912338, 37.573456, 30.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654728, 37.355064, 30.778625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058408, -0.663321, 0.746052,
		-0.762767, 0.511778, 0.395310,
		-0.644031, -0.545974, -0.535851,
		33.461517, 37.191273, 30.617870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552357, 37.283138, 31.544559>,  <33.912338, 37.573456, 30.992966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552357, 37.283138, 31.544559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454956, 37.065266, 31.223553>,  <33.396515, 36.934544, 31.030949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454956, 37.065266, 31.223553>,  <33.552357, 37.283138, 31.544559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454956, 37.065266, 31.223553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177114, -0.788535, 0.588934,
		-0.953593, 0.285541, 0.095536,
		-0.243498, -0.544682, -0.802515,
		33.381905, 36.901859, 30.982798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860989, 37.033970, 31.638803>,  <33.552357, 37.283138, 31.544559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860989, 37.033970, 31.638803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047707, 36.783810, 31.388689>,  <33.159737, 36.633713, 31.238621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047707, 36.783810, 31.388689>,  <32.860989, 37.033970, 31.638803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047707, 36.783810, 31.388689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153869, -0.753694, 0.638960,
		-0.870878, -0.202049, -0.448048,
		0.466792, -0.625397, -0.625287,
		33.187744, 36.596191, 31.201103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371883, 36.323517, 31.401606>,  <32.860989, 37.033970, 31.638803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371883, 36.323517, 31.401606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746780, 36.197887, 31.341022>,  <32.971718, 36.122509, 31.304672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746780, 36.197887, 31.341022>,  <32.371883, 36.323517, 31.401606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746780, 36.197887, 31.341022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132362, -0.722307, 0.678787,
		-0.322590, -0.616139, -0.718546,
		0.937238, -0.314078, -0.151456,
		33.027950, 36.103664, 31.295586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295380, 35.644024, 31.487423>,  <32.371883, 36.323517, 31.401606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295380, 35.644024, 31.487423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693245, 35.685246, 31.489090>,  <32.931965, 35.709980, 31.490091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693245, 35.685246, 31.489090>,  <32.295380, 35.644024, 31.487423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693245, 35.685246, 31.489090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085117, -0.843036, 0.531080,
		0.058245, -0.527893, -0.847312,
		0.994667, 0.103054, 0.004170,
		32.991646, 35.716160, 31.490341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579536, 35.100399, 31.202204>,  <32.295380, 35.644024, 31.487423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579536, 35.100399, 31.202204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846699, 35.253372, 31.457592>,  <33.006996, 35.345154, 31.610825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846699, 35.253372, 31.457592>,  <32.579536, 35.100399, 31.202204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846699, 35.253372, 31.457592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018329, -0.849167, 0.527807,
		0.744018, -0.364229, -0.560155,
		0.667908, 0.382431, 0.638472,
		33.047070, 35.368103, 31.649134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033321, 34.637707, 31.241587>,  <32.579536, 35.100399, 31.202204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033321, 34.637707, 31.241587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096210, 34.850388, 31.574471>,  <33.133945, 34.977997, 31.774200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096210, 34.850388, 31.574471>,  <33.033321, 34.637707, 31.241587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096210, 34.850388, 31.574471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004430, -0.843062, 0.537797,
		0.987553, -0.080869, -0.134906,
		0.157225, 0.531701, 0.832210,
		33.143379, 35.009899, 31.824133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520130, 34.276035, 31.643002>,  <33.033321, 34.637707, 31.241587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520130, 34.276035, 31.643002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339237, 34.507439, 31.914534>,  <33.230701, 34.646282, 32.077454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339237, 34.507439, 31.914534>,  <33.520130, 34.276035, 31.643002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339237, 34.507439, 31.914534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069001, -0.736132, 0.673312,
		0.889229, 0.351331, 0.292981,
		-0.452228, 0.578512, 0.678832,
		33.203568, 34.680992, 32.118183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960426, 34.167015, 32.216839>,  <33.520130, 34.276035, 31.643002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960426, 34.167015, 32.216839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614262, 34.306339, 32.360920>,  <33.406563, 34.389935, 32.447369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614262, 34.306339, 32.360920>,  <33.960426, 34.167015, 32.216839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614262, 34.306339, 32.360920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010982, -0.705513, 0.708612,
		0.500948, 0.617194, 0.606731,
		-0.865408, 0.348315, 0.360203,
		33.354641, 34.410835, 32.468983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097740, 34.263374, 32.937424>,  <33.960426, 34.167015, 32.216839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097740, 34.263374, 32.937424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702995, 34.229389, 32.882450>,  <33.466148, 34.209000, 32.849468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702995, 34.229389, 32.882450>,  <34.097740, 34.263374, 32.937424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702995, 34.229389, 32.882450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063553, -0.577898, 0.813631,
		-0.148549, 0.811675, 0.564905,
		-0.986861, -0.084962, -0.137430,
		33.406937, 34.203899, 32.841221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748817, 34.204865, 33.255226>,  <34.097740, 34.263374, 32.937424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748817, 34.204865, 33.255226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100750, 34.203056, 33.445332>,  <35.311909, 34.201973, 33.559395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100750, 34.203056, 33.445332>,  <34.748817, 34.204865, 33.255226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100750, 34.203056, 33.445332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318369, 0.748070, -0.582266,
		-0.352899, 0.663605, 0.659615,
		0.879832, -0.004520, 0.475264,
		35.364700, 34.201702, 33.587910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918896, 34.892277, 33.549133>,  <34.748817, 34.204865, 33.255226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918896, 34.892277, 33.549133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265968, 34.703953, 33.485294>,  <35.474213, 34.590958, 33.446991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265968, 34.703953, 33.485294>,  <34.918896, 34.892277, 33.549133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265968, 34.703953, 33.485294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248862, 0.689285, -0.680406,
		0.430353, 0.550655, 0.715245,
		0.867677, -0.470813, -0.159599,
		35.526272, 34.562710, 33.437416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359390, 35.434757, 33.403881>,  <34.918896, 34.892277, 33.549133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359390, 35.434757, 33.403881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573250, 35.123581, 33.271847>,  <35.701565, 34.936874, 33.192627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573250, 35.123581, 33.271847>,  <35.359390, 35.434757, 33.403881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573250, 35.123581, 33.271847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329232, 0.551483, -0.766468,
		0.778302, 0.301120, 0.550975,
		0.534652, -0.777942, -0.330082,
		35.733646, 34.890198, 33.172821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129036, 35.725357, 33.288857>,  <35.359390, 35.434757, 33.403881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129036, 35.725357, 33.288857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038273, 35.405273, 33.066799>,  <35.983814, 35.213223, 32.933567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038273, 35.405273, 33.066799>,  <36.129036, 35.725357, 33.288857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038273, 35.405273, 33.066799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175056, 0.527215, -0.831505,
		0.958055, -0.285855, 0.020452,
		-0.226907, -0.800207, -0.555142,
		35.970200, 35.165211, 32.900257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697666, 35.568195, 32.941296>,  <36.129036, 35.725357, 33.288857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697666, 35.568195, 32.941296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395435, 35.429356, 32.719078>,  <36.214096, 35.346054, 32.585747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395435, 35.429356, 32.719078>,  <36.697666, 35.568195, 32.941296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395435, 35.429356, 32.719078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324552, 0.538312, -0.777744,
		0.569011, -0.767947, -0.294083,
		-0.755574, -0.347100, -0.555544,
		36.168762, 35.325226, 32.552414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939152, 35.663033, 32.306667>,  <36.697666, 35.568195, 32.941296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939152, 35.663033, 32.306667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561707, 35.578686, 32.204586>,  <36.335239, 35.528076, 32.143337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561707, 35.578686, 32.204586>,  <36.939152, 35.663033, 32.306667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561707, 35.578686, 32.204586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096067, 0.563302, -0.820647,
		0.316805, -0.798890, -0.511282,
		-0.943613, -0.210867, -0.255204,
		36.278622, 35.515427, 32.128025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024029, 35.646088, 31.521563>,  <36.939152, 35.663033, 32.306667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024029, 35.646088, 31.521563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637093, 35.681496, 31.616571>,  <36.404930, 35.702740, 31.673576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637093, 35.681496, 31.616571>,  <37.024029, 35.646088, 31.521563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637093, 35.681496, 31.616571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175060, 0.444396, -0.878559,
		-0.183323, -0.891447, -0.414386,
		-0.967340, 0.088518, 0.237525,
		36.346889, 35.708050, 31.687828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639568, 35.400913, 30.862240>,  <37.024029, 35.646088, 31.521563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639568, 35.400913, 30.862240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416794, 35.639660, 31.093260>,  <36.283127, 35.782909, 31.231873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416794, 35.639660, 31.093260>,  <36.639568, 35.400913, 30.862240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416794, 35.639660, 31.093260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287384, 0.513939, -0.808256,
		-0.779248, -0.616130, -0.114703,
		-0.556940, 0.596868, 0.577552,
		36.249710, 35.818722, 31.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070198, 35.607353, 30.386341>,  <36.639568, 35.400913, 30.862240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070198, 35.607353, 30.386341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055058, 35.879047, 30.679518>,  <36.045975, 36.042065, 30.855423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055058, 35.879047, 30.679518>,  <36.070198, 35.607353, 30.386341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055058, 35.879047, 30.679518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101515, 0.727057, -0.679031,
		-0.994114, -0.100106, 0.041434,
		-0.037850, 0.679240, 0.732939,
		36.043701, 36.082821, 30.899399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531357, 35.903740, 30.210987>,  <36.070198, 35.607353, 30.386341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531357, 35.903740, 30.210987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752686, 36.149273, 30.436211>,  <35.885483, 36.296593, 30.571344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752686, 36.149273, 30.436211>,  <35.531357, 35.903740, 30.210987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752686, 36.149273, 30.436211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159147, 0.741425, -0.651890,
		-0.817621, 0.271098, 0.507939,
		0.553325, 0.613836, 0.563060,
		35.918682, 36.333424, 30.605129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150154, 36.573494, 30.226383>,  <35.531357, 35.903740, 30.210987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150154, 36.573494, 30.226383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517651, 36.682991, 30.340214>,  <35.738148, 36.748692, 30.408512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517651, 36.682991, 30.340214>,  <35.150154, 36.573494, 30.226383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517651, 36.682991, 30.340214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104626, 0.863690, -0.493044,
		-0.380755, 0.423204, 0.822146,
		0.918738, 0.273747, 0.284576,
		35.793270, 36.765114, 30.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167408, 37.204159, 30.355400>,  <35.150154, 36.573494, 30.226383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167408, 37.204159, 30.355400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557621, 37.142063, 30.293127>,  <35.791748, 37.104805, 30.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557621, 37.142063, 30.293127>,  <35.167408, 37.204159, 30.355400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557621, 37.142063, 30.293127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033272, 0.804213, -0.593409,
		0.217320, 0.573710, 0.789702,
		0.975533, -0.155235, -0.155683,
		35.850281, 37.095493, 30.246422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550938, 37.775845, 30.670040>,  <35.167408, 37.204159, 30.355400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550938, 37.775845, 30.670040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787914, 37.590912, 30.406143>,  <35.930099, 37.479954, 30.247805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787914, 37.590912, 30.406143>,  <35.550938, 37.775845, 30.670040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787914, 37.590912, 30.406143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114340, 0.858899, -0.499218,
		0.797458, 0.220323, 0.561711,
		0.592442, -0.462331, -0.659744,
		35.965649, 37.452213, 30.208220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106384, 38.232975, 30.538277>,  <35.550938, 37.775845, 30.670040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106384, 38.232975, 30.538277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130020, 37.996246, 30.216717>,  <36.144203, 37.854210, 30.023781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130020, 37.996246, 30.216717>,  <36.106384, 38.232975, 30.538277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130020, 37.996246, 30.216717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206016, 0.795203, -0.570271,
		0.976763, -0.131918, 0.168916,
		0.059093, -0.591819, -0.803902,
		36.147747, 37.818699, 29.975546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774948, 38.447441, 30.107193>,  <36.106384, 38.232975, 30.538277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774948, 38.447441, 30.107193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550232, 38.253380, 29.839157>,  <36.415401, 38.136944, 29.678335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550232, 38.253380, 29.839157>,  <36.774948, 38.447441, 30.107193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550232, 38.253380, 29.839157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260468, 0.665064, -0.699890,
		0.785209, -0.567724, -0.247256,
		-0.561786, -0.485158, -0.670089,
		36.381695, 38.107834, 29.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252995, 38.356182, 29.446388>,  <36.774948, 38.447441, 30.107193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252995, 38.356182, 29.446388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872784, 38.322758, 29.326710>,  <36.644657, 38.302704, 29.254902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872784, 38.322758, 29.326710>,  <37.252995, 38.356182, 29.446388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872784, 38.322758, 29.326710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198618, 0.577079, -0.792168,
		0.238854, -0.812402, -0.531932,
		-0.950526, -0.083562, -0.299196,
		36.587627, 38.297688, 29.236952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304249, 38.174763, 28.644833>,  <37.252995, 38.356182, 29.446388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304249, 38.174763, 28.644833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927998, 38.290920, 28.715143>,  <36.702248, 38.360615, 28.757330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927998, 38.290920, 28.715143>,  <37.304249, 38.174763, 28.644833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927998, 38.290920, 28.715143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004079, 0.508119, -0.861277,
		-0.339425, -0.810855, -0.476765,
		-0.940624, 0.290394, 0.175776,
		36.645809, 38.378040, 28.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115227, 38.290760, 28.004070>,  <37.304249, 38.174763, 28.644833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115227, 38.290760, 28.004070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836224, 38.469532, 28.228119>,  <36.668823, 38.576794, 28.362549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836224, 38.469532, 28.228119>,  <37.115227, 38.290760, 28.004070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836224, 38.469532, 28.228119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266651, 0.563644, -0.781795,
		-0.665115, -0.694666, -0.273973,
		-0.697509, 0.446928, 0.560122,
		36.626972, 38.603611, 28.396156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551346, 38.177937, 27.686939>,  <37.115227, 38.290760, 28.004070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551346, 38.177937, 27.686939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511551, 38.515564, 27.897711>,  <36.487675, 38.718140, 28.024174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511551, 38.515564, 27.897711>,  <36.551346, 38.177937, 27.686939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511551, 38.515564, 27.897711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182112, 0.505168, -0.843588,
		-0.978231, -0.179890, 0.103454,
		-0.099491, 0.844065, 0.526931,
		36.481705, 38.768784, 28.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902203, 38.483383, 27.389198>,  <36.551346, 38.177937, 27.686939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902203, 38.483383, 27.389198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111710, 38.778389, 27.559719>,  <36.237415, 38.955395, 27.662031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111710, 38.778389, 27.559719>,  <35.902203, 38.483383, 27.389198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111710, 38.778389, 27.559719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140875, 0.568535, -0.810508,
		-0.840131, 0.364464, 0.401679,
		0.523769, 0.737519, 0.426300,
		36.268841, 38.999645, 27.687609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410950, 39.096657, 27.452614>,  <35.902203, 38.483383, 27.389198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410950, 39.096657, 27.452614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793930, 39.211517, 27.441036>,  <36.023716, 39.280434, 27.434090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793930, 39.211517, 27.441036>,  <35.410950, 39.096657, 27.452614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793930, 39.211517, 27.441036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201122, 0.591938, -0.780487,
		-0.206983, 0.753097, 0.624502,
		0.957449, 0.287149, -0.028944,
		36.081165, 39.297661, 27.432354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380699, 39.890854, 27.332504>,  <35.410950, 39.096657, 27.452614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380699, 39.890854, 27.332504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723774, 39.713444, 27.228460>,  <35.929619, 39.606998, 27.166035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723774, 39.713444, 27.228460>,  <35.380699, 39.890854, 27.332504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723774, 39.713444, 27.228460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008839, 0.518523, -0.855018,
		0.514098, 0.731038, 0.448650,
		0.857686, -0.443529, -0.260110,
		35.981079, 39.580383, 27.150427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755569, 40.471905, 27.039488>,  <35.380699, 39.890854, 27.332504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755569, 40.471905, 27.039488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949432, 40.149895, 26.902641>,  <36.065750, 39.956688, 26.820534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949432, 40.149895, 26.902641>,  <35.755569, 40.471905, 27.039488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949432, 40.149895, 26.902641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171732, 0.471086, -0.865209,
		0.857680, 0.360578, 0.366564,
		0.484658, -0.805022, -0.342119,
		36.094830, 39.908386, 26.800005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477654, 40.696411, 26.782871>,  <35.755569, 40.471905, 27.039488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477654, 40.696411, 26.782871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395275, 40.342476, 26.615707>,  <36.345848, 40.130116, 26.515409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395275, 40.342476, 26.615707>,  <36.477654, 40.696411, 26.782871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395275, 40.342476, 26.615707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305451, 0.347597, -0.886496,
		0.929669, -0.310223, 0.198688,
		-0.205948, -0.884838, -0.417909,
		36.333492, 40.077026, 26.490335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891483, 40.801727, 26.299467>,  <36.477654, 40.696411, 26.782871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891483, 40.801727, 26.299467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707386, 40.465328, 26.185703>,  <36.596928, 40.263489, 26.117445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707386, 40.465328, 26.185703>,  <36.891483, 40.801727, 26.299467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707386, 40.465328, 26.185703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236146, 0.192847, -0.952389,
		0.855809, -0.505496, 0.109842,
		-0.460247, -0.841001, -0.284411,
		36.569313, 40.213028, 26.100380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404030, 40.529034, 25.798388>,  <36.891483, 40.801727, 26.299467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404030, 40.529034, 25.798388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043316, 40.377792, 25.714653>,  <36.826889, 40.287048, 25.664412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043316, 40.377792, 25.714653>,  <37.404030, 40.529034, 25.798388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043316, 40.377792, 25.714653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207225, 0.046772, -0.977175,
		0.379262, -0.924582, 0.036174,
		-0.901786, -0.378102, -0.209336,
		36.772781, 40.264362, 25.651852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483887, 39.888649, 25.474014>,  <37.404030, 40.529034, 25.798388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483887, 39.888649, 25.474014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130791, 40.039700, 25.362179>,  <36.918934, 40.130329, 25.295078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130791, 40.039700, 25.362179>,  <37.483887, 39.888649, 25.474014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130791, 40.039700, 25.362179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247490, -0.132117, -0.959841,
		-0.399401, -0.916484, 0.023166,
		-0.882739, 0.377628, -0.279588,
		36.865971, 40.152988, 25.278303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269257, 39.561722, 24.820745>,  <37.483887, 39.888649, 25.474014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269257, 39.561722, 24.820745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034042, 39.885239, 24.817440>,  <36.892914, 40.079350, 24.815456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034042, 39.885239, 24.817440>,  <37.269257, 39.561722, 24.820745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034042, 39.885239, 24.817440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138021, 0.090270, -0.986307,
		-0.796972, -0.581124, -0.164713,
		-0.588035, 0.808793, -0.008265,
		36.857632, 40.127876, 24.814960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865677, 39.500103, 24.210213>,  <37.269257, 39.561722, 24.820745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865677, 39.500103, 24.210213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793957, 39.882954, 24.301208>,  <36.750923, 40.112663, 24.355806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793957, 39.882954, 24.301208>,  <36.865677, 39.500103, 24.210213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793957, 39.882954, 24.301208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151668, 0.255366, -0.954874,
		-0.972033, -0.136705, -0.190953,
		-0.179299, 0.957131, 0.227490,
		36.740166, 40.170094, 24.369455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293949, 39.767731, 23.832796>,  <36.865677, 39.500103, 24.210213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293949, 39.767731, 23.832796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517113, 40.086929, 23.923964>,  <36.651009, 40.278446, 23.978664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517113, 40.086929, 23.923964>,  <36.293949, 39.767731, 23.832796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517113, 40.086929, 23.923964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037907, 0.298850, -0.953547,
		-0.829038, 0.523350, 0.196979,
		0.557906, 0.797994, 0.227919,
		36.684486, 40.326328, 23.992340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103954, 40.346024, 23.494310>,  <36.293949, 39.767731, 23.832796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103954, 40.346024, 23.494310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452213, 40.505547, 23.609495>,  <36.661171, 40.601261, 23.678606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452213, 40.505547, 23.609495>,  <36.103954, 40.346024, 23.494310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452213, 40.505547, 23.609495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029473, 0.626641, -0.778751,
		-0.491021, 0.669532, 0.557338,
		0.870649, 0.398809, 0.287960,
		36.713409, 40.625191, 23.695883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976807, 40.971767, 23.541706>,  <36.103954, 40.346024, 23.494310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976807, 40.971767, 23.541706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366135, 40.918274, 23.467117>,  <36.599731, 40.886177, 23.422365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366135, 40.918274, 23.467117>,  <35.976807, 40.971767, 23.541706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366135, 40.918274, 23.467117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099394, 0.486731, -0.867879,
		0.206823, 0.863255, 0.460452,
		0.973316, -0.133731, -0.186470,
		36.658131, 40.878155, 23.411177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173153, 41.613667, 23.135078>,  <35.976807, 40.971767, 23.541706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173153, 41.613667, 23.135078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469193, 41.348068, 23.092457>,  <36.646816, 41.188709, 23.066883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469193, 41.348068, 23.092457>,  <36.173153, 41.613667, 23.135078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469193, 41.348068, 23.092457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277013, 0.445388, -0.851407,
		0.612792, 0.600611, 0.513569,
		0.740101, -0.664000, -0.106553,
		36.691223, 41.148869, 23.060492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735619, 42.019146, 23.042255>,  <36.173153, 41.613667, 23.135078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735619, 42.019146, 23.042255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841724, 41.661819, 22.897135>,  <36.905388, 41.447426, 22.810062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841724, 41.661819, 22.897135>,  <36.735619, 42.019146, 23.042255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841724, 41.661819, 22.897135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386168, 0.443218, -0.808970,
		0.883463, 0.074492, 0.462541,
		0.265269, -0.893313, -0.362800,
		36.921307, 41.393826, 22.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402496, 42.140289, 22.872129>,  <36.735619, 42.019146, 23.042255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402496, 42.140289, 22.872129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268768, 41.823460, 22.667837>,  <37.188530, 41.633362, 22.545261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268768, 41.823460, 22.667837>,  <37.402496, 42.140289, 22.872129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268768, 41.823460, 22.667837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239456, 0.452743, -0.858886,
		0.911531, -0.409443, 0.038305,
		-0.334322, -0.792074, -0.510733,
		37.168472, 41.585838, 22.514618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012993, 41.898106, 22.423203>,  <37.402496, 42.140289, 22.872129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012993, 41.898106, 22.423203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682713, 41.762543, 22.242819>,  <37.484547, 41.681206, 22.134588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682713, 41.762543, 22.242819>,  <38.012993, 41.898106, 22.423203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682713, 41.762543, 22.242819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278722, 0.449916, -0.848463,
		0.490450, -0.826264, -0.277031,
		-0.825695, -0.338914, -0.450959,
		37.435005, 41.660870, 22.107531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201561, 41.476574, 21.905739>,  <38.012993, 41.898106, 22.423203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201561, 41.476574, 21.905739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843430, 41.638012, 21.830370>,  <37.628551, 41.734875, 21.785149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843430, 41.638012, 21.830370>,  <38.201561, 41.476574, 21.905739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843430, 41.638012, 21.830370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379225, 0.468835, -0.797736,
		-0.233622, -0.785688, -0.572813,
		-0.895326, 0.403594, -0.188422,
		37.574833, 41.759090, 21.773844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233227, 41.544987, 21.094749>,  <38.201561, 41.476574, 21.905739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233227, 41.544987, 21.094749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381023, 41.337742, 20.786198>,  <38.469704, 41.213394, 20.601067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381023, 41.337742, 20.786198>,  <38.233227, 41.544987, 21.094749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381023, 41.337742, 20.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548210, -0.548726, 0.631161,
		-0.750292, -0.656090, 0.081285,
		0.369496, -0.518117, -0.771381,
		38.491871, 41.182308, 20.554783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141911, 40.784950, 21.199543>,  <38.233227, 41.544987, 21.094749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141911, 40.784950, 21.199543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410889, 40.757992, 20.904713>,  <38.572277, 40.741817, 20.727816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410889, 40.757992, 20.904713>,  <38.141911, 40.784950, 21.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410889, 40.757992, 20.904713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367848, -0.833719, 0.411826,
		-0.642267, -0.548061, -0.535838,
		0.672444, -0.067395, -0.737073,
		38.612621, 40.737774, 20.683590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062191, 40.162655, 20.883766>,  <38.141911, 40.784950, 21.199543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062191, 40.162655, 20.883766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430851, 40.303680, 20.818947>,  <38.652046, 40.388294, 20.780056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430851, 40.303680, 20.818947>,  <38.062191, 40.162655, 20.883766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430851, 40.303680, 20.818947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383203, -0.761449, 0.522829,
		0.060938, -0.543963, -0.836893,
		0.921652, 0.352561, -0.162047,
		38.707348, 40.409451, 20.770332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463207, 39.633575, 20.590416>,  <38.062191, 40.162655, 20.883766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463207, 39.633575, 20.590416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745762, 39.861794, 20.757986>,  <38.915295, 39.998726, 20.858528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745762, 39.861794, 20.757986>,  <38.463207, 39.633575, 20.590416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745762, 39.861794, 20.757986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345148, -0.794356, 0.499872,
		0.617974, -0.208511, -0.758044,
		0.706386, 0.570545, 0.418924,
		38.957676, 40.032955, 20.883663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936741, 39.115803, 20.848749>,  <38.463207, 39.633575, 20.590416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936741, 39.115803, 20.848749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031960, 39.468075, 21.012569>,  <39.089092, 39.679440, 21.110861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031960, 39.468075, 21.012569>,  <38.936741, 39.115803, 20.848749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031960, 39.468075, 21.012569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352719, -0.471272, 0.808388,
		0.904943, -0.047981, -0.422820,
		0.238051, 0.880682, 0.409550,
		39.103374, 39.732281, 21.135435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658112, 39.075119, 20.956686>,  <38.936741, 39.115803, 20.848749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658112, 39.075119, 20.956686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454296, 39.304348, 21.213421>,  <39.332008, 39.441887, 21.367462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454296, 39.304348, 21.213421>,  <39.658112, 39.075119, 20.956686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454296, 39.304348, 21.213421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252729, -0.613356, 0.748279,
		0.822495, 0.543489, 0.167697,
		-0.509539, 0.573074, 0.641838,
		39.301434, 39.476269, 21.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151226, 39.208511, 21.526009>,  <39.658112, 39.075119, 20.956686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151226, 39.208511, 21.526009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803532, 39.321377, 21.688395>,  <39.594913, 39.389095, 21.785826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803532, 39.321377, 21.688395>,  <40.151226, 39.208511, 21.526009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803532, 39.321377, 21.688395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351637, -0.224355, 0.908854,
		0.347526, 0.932764, 0.095798,
		-0.869239, 0.282164, 0.405964,
		39.542759, 39.406025, 21.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360695, 39.432743, 22.237980>,  <40.151226, 39.208511, 21.526009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360695, 39.432743, 22.237980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964184, 39.380447, 22.244524>,  <39.726276, 39.349072, 22.248449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964184, 39.380447, 22.244524>,  <40.360695, 39.432743, 22.237980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964184, 39.380447, 22.244524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053896, -0.289057, 0.955793,
		-0.120230, 0.948343, 0.293584,
		-0.991282, -0.130738, 0.016358,
		39.666798, 39.341225, 22.249432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132725, 39.740471, 22.848730>,  <40.360695, 39.432743, 22.237980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132725, 39.740471, 22.848730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839123, 39.483829, 22.759661>,  <39.662960, 39.329845, 22.706219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839123, 39.483829, 22.759661>,  <40.132725, 39.740471, 22.848730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839123, 39.483829, 22.759661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207703, -0.100092, 0.973058,
		-0.646605, 0.760478, -0.059795,
		-0.734004, -0.641603, -0.222674,
		39.618923, 39.291348, 22.692858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531326, 39.895523, 23.229280>,  <40.132725, 39.740471, 22.848730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531326, 39.895523, 23.229280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516151, 39.503700, 23.150251>,  <39.507046, 39.268608, 23.102833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516151, 39.503700, 23.150251>,  <39.531326, 39.895523, 23.229280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516151, 39.503700, 23.150251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141289, -0.190473, 0.971472,
		-0.989241, 0.064772, -0.131173,
		-0.037940, -0.979553, -0.197575,
		39.504768, 39.209835, 23.090979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116215, 39.732643, 23.915552>,  <39.531326, 39.895523, 23.229280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116215, 39.732643, 23.915552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123135, 39.374382, 23.737782>,  <39.127285, 39.159428, 23.631119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123135, 39.374382, 23.737782>,  <39.116215, 39.732643, 23.915552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123135, 39.374382, 23.737782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188066, -0.439473, 0.878348,
		-0.982004, 0.068386, -0.176044,
		0.017300, -0.895649, -0.444425,
		39.128326, 39.105686, 23.604454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466064, 39.362373, 23.963232>,  <39.116215, 39.732643, 23.915552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466064, 39.362373, 23.963232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764778, 39.099289, 23.923775>,  <38.944008, 38.941441, 23.900101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764778, 39.099289, 23.923775>,  <38.466064, 39.362373, 23.963232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764778, 39.099289, 23.923775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288786, -0.454294, 0.842745,
		-0.599096, -0.600862, -0.529197,
		0.746784, -0.657710, -0.098645,
		38.988815, 38.901978, 23.894182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149632, 38.690948, 24.024502>,  <38.466064, 39.362373, 23.963232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149632, 38.690948, 24.024502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537029, 38.628098, 24.101789>,  <38.769466, 38.590385, 24.148163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537029, 38.628098, 24.101789>,  <38.149632, 38.690948, 24.024502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537029, 38.628098, 24.101789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248886, -0.582713, 0.773629,
		-0.008969, -0.797343, -0.603460,
		0.968491, -0.157131, 0.193221,
		38.827576, 38.580959, 24.159756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194870, 38.051323, 24.199852>,  <38.149632, 38.690948, 24.024502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194870, 38.051323, 24.199852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533291, 38.202885, 24.349852>,  <38.736343, 38.293823, 24.439852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533291, 38.202885, 24.349852>,  <38.194870, 38.051323, 24.199852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533291, 38.202885, 24.349852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023309, -0.676466, 0.736105,
		0.532591, -0.631524, -0.563493,
		0.846052, 0.378908, 0.375000,
		38.787106, 38.316559, 24.462351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585312, 37.402649, 24.351442>,  <38.194870, 38.051323, 24.199852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585312, 37.402649, 24.351442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726601, 37.703533, 24.573944>,  <38.811375, 37.884064, 24.707445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726601, 37.703533, 24.573944>,  <38.585312, 37.402649, 24.351442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726601, 37.703533, 24.573944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018460, -0.588861, 0.808024,
		0.935357, -0.295682, -0.194114,
		0.353224, 0.752207, 0.556253,
		38.832569, 37.929195, 24.740820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164116, 37.194225, 24.787096>,  <38.585312, 37.402649, 24.351442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164116, 37.194225, 24.787096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048569, 37.513615, 24.998377>,  <38.979240, 37.705246, 25.125145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048569, 37.513615, 24.998377>,  <39.164116, 37.194225, 24.787096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048569, 37.513615, 24.998377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074700, -0.568841, 0.819048,
		0.954449, 0.197143, 0.223968,
		-0.288872, 0.798470, 0.528203,
		38.961906, 37.753155, 25.156837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635624, 37.160740, 25.356812>,  <39.164116, 37.194225, 24.787096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635624, 37.160740, 25.356812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333832, 37.405029, 25.452951>,  <39.152756, 37.551605, 25.510635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333832, 37.405029, 25.452951>,  <39.635624, 37.160740, 25.356812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333832, 37.405029, 25.452951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123157, -0.491447, 0.862156,
		0.644660, 0.620882, 0.446004,
		-0.754484, 0.610726, 0.240350,
		39.107487, 37.588245, 25.525057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788212, 37.438286, 26.023252>,  <39.635624, 37.160740, 25.356812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788212, 37.438286, 26.023252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399689, 37.526878, 25.988571>,  <39.166576, 37.580032, 25.967762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399689, 37.526878, 25.988571>,  <39.788212, 37.438286, 26.023252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399689, 37.526878, 25.988571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170790, -0.395777, 0.902325,
		0.165531, 0.891239, 0.422246,
		-0.971303, 0.221478, -0.086701,
		39.108299, 37.593323, 25.962561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595707, 37.752914, 26.572922>,  <39.788212, 37.438286, 26.023252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595707, 37.752914, 26.572922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226852, 37.655567, 26.452633>,  <39.005539, 37.597160, 26.380461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226852, 37.655567, 26.452633>,  <39.595707, 37.752914, 26.572922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226852, 37.655567, 26.452633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251727, -0.212797, 0.944114,
		-0.293758, 0.946304, 0.134966,
		-0.922139, -0.243366, -0.300721,
		38.950211, 37.582558, 26.362417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131321, 38.225624, 26.978165>,  <39.595707, 37.752914, 26.572922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131321, 38.225624, 26.978165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957279, 37.881588, 26.871637>,  <38.852856, 37.675167, 26.807722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957279, 37.881588, 26.871637>,  <39.131321, 38.225624, 26.978165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957279, 37.881588, 26.871637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330448, -0.122601, 0.935828,
		-0.837551, 0.495184, -0.230872,
		-0.435101, -0.860094, -0.266317,
		38.826748, 37.623558, 26.791742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424854, 38.267498, 27.258228>,  <39.131321, 38.225624, 26.978165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424854, 38.267498, 27.258228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479206, 37.876896, 27.191320>,  <38.511818, 37.642536, 27.151175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479206, 37.876896, 27.191320>,  <38.424854, 38.267498, 27.258228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479206, 37.876896, 27.191320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526046, -0.214181, 0.823044,
		-0.839531, -0.023841, -0.542788,
		0.135877, -0.976502, -0.167271,
		38.519970, 37.583946, 27.141140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790833, 37.998291, 27.476957>,  <38.424854, 38.267498, 27.258228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790833, 37.998291, 27.476957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036610, 37.683044, 27.462378>,  <38.184078, 37.493896, 27.453630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036610, 37.683044, 27.462378>,  <37.790833, 37.998291, 27.476957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036610, 37.683044, 27.462378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287303, -0.266541, 0.920007,
		-0.734789, -0.554821, -0.390203,
		0.614444, -0.788117, -0.036449,
		38.220943, 37.446609, 27.451443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479145, 37.298515, 27.655798>,  <37.790833, 37.998291, 27.476957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479145, 37.298515, 27.655798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858559, 37.185829, 27.713652>,  <38.086208, 37.118217, 27.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858559, 37.185829, 27.713652>,  <37.479145, 37.298515, 27.655798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858559, 37.185829, 27.713652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250898, -0.389886, 0.886024,
		-0.193216, -0.876713, -0.440502,
		0.948534, -0.281716, 0.144633,
		38.143120, 37.101315, 27.757042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429573, 36.553921, 27.977905>,  <37.479145, 37.298515, 27.655798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429573, 36.553921, 27.977905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780396, 36.718204, 28.077581>,  <37.990887, 36.816776, 28.137388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780396, 36.718204, 28.077581>,  <37.429573, 36.553921, 27.977905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780396, 36.718204, 28.077581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124758, -0.306195, 0.943759,
		0.463915, -0.858813, -0.217309,
		0.877051, 0.410712, 0.249192,
		38.043510, 36.841419, 28.152338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895546, 36.059387, 28.207691>,  <37.429573, 36.553921, 27.977905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895546, 36.059387, 28.207691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093483, 36.365742, 28.371912>,  <38.212246, 36.549553, 28.470444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093483, 36.365742, 28.371912>,  <37.895546, 36.059387, 28.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093483, 36.365742, 28.371912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071052, -0.435207, 0.897522,
		0.866074, -0.473301, -0.160941,
		0.494841, 0.765886, 0.410551,
		38.241936, 36.595509, 28.495077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439793, 35.810829, 28.426003>,  <37.895546, 36.059387, 28.207691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439793, 35.810829, 28.426003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401966, 36.136520, 28.655117>,  <38.379269, 36.331936, 28.792585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401966, 36.136520, 28.655117>,  <38.439793, 35.810829, 28.426003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401966, 36.136520, 28.655117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066185, -0.568950, 0.819704,
		0.993316, 0.115426, -0.000087,
		-0.094566, 0.814231, 0.572787,
		38.373596, 36.380791, 28.826954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922157, 35.650963, 28.956549>,  <38.439793, 35.810829, 28.426003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922157, 35.650963, 28.956549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697075, 35.955231, 29.086006>,  <38.562027, 36.137791, 29.163681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697075, 35.955231, 29.086006>,  <38.922157, 35.650963, 28.956549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697075, 35.955231, 29.086006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146360, -0.293650, 0.944642,
		0.813601, 0.578920, 0.053905,
		-0.562701, 0.760672, 0.323645,
		38.528263, 36.183434, 29.183100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318794, 36.015789, 29.434298>,  <38.922157, 35.650963, 28.956549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318794, 36.015789, 29.434298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935932, 36.110165, 29.501444>,  <38.706215, 36.166790, 29.541733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935932, 36.110165, 29.501444>,  <39.318794, 36.015789, 29.434298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935932, 36.110165, 29.501444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117996, -0.211604, 0.970206,
		0.264427, 0.948450, 0.174700,
		-0.957160, 0.235935, 0.167867,
		38.648785, 36.180946, 29.551804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254349, 36.465534, 30.044611>,  <39.318794, 36.015789, 29.434298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254349, 36.465534, 30.044611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897453, 36.291924, 29.994764>,  <38.683315, 36.187756, 29.964857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897453, 36.291924, 29.994764>,  <39.254349, 36.465534, 30.044611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897453, 36.291924, 29.994764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103829, -0.465761, 0.878798,
		-0.439465, 0.771159, 0.460634,
		-0.892239, -0.434028, -0.124617,
		38.629780, 36.161716, 29.957378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948135, 36.576572, 30.646338>,  <39.254349, 36.465534, 30.044611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948135, 36.576572, 30.646338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793907, 36.248920, 30.476463>,  <38.701370, 36.052330, 30.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793907, 36.248920, 30.476463>,  <38.948135, 36.576572, 30.646338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793907, 36.248920, 30.476463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083538, -0.489375, 0.868063,
		-0.918890, 0.299220, 0.257116,
		-0.385568, -0.819134, -0.424685,
		38.678238, 36.003181, 30.349058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495934, 36.318005, 31.155373>,  <38.948135, 36.576572, 30.646338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495934, 36.318005, 31.155373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541267, 36.005753, 30.909521>,  <38.568466, 35.818401, 30.762011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541267, 36.005753, 30.909521>,  <38.495934, 36.318005, 31.155373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541267, 36.005753, 30.909521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040394, -0.621723, 0.782194,
		-0.992735, -0.063823, -0.101996,
		0.113336, -0.780632, -0.614629,
		38.575268, 35.771564, 30.725132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071419, 35.851604, 31.425655>,  <38.495934, 36.318005, 31.155373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071419, 35.851604, 31.425655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317211, 35.654171, 31.179472>,  <38.464687, 35.535709, 31.031763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317211, 35.654171, 31.179472>,  <38.071419, 35.851604, 31.425655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317211, 35.654171, 31.179472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114614, -0.715989, 0.688639,
		-0.780560, -0.493697, -0.383392,
		0.614484, -0.493582, -0.615456,
		38.501556, 35.506096, 30.994835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733616, 35.207943, 31.346474>,  <38.071419, 35.851604, 31.425655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733616, 35.207943, 31.346474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123535, 35.180260, 31.261648>,  <38.357487, 35.163651, 31.210752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123535, 35.180260, 31.261648>,  <37.733616, 35.207943, 31.346474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123535, 35.180260, 31.261648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087527, -0.755744, 0.648992,
		-0.205183, -0.651199, -0.730643,
		0.974802, -0.069211, -0.212063,
		38.415977, 35.159496, 31.198029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838684, 34.492710, 31.402592>,  <37.733616, 35.207943, 31.346474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838684, 34.492710, 31.402592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214390, 34.629898, 31.407597>,  <38.439812, 34.712212, 31.410599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214390, 34.629898, 31.407597>,  <37.838684, 34.492710, 31.402592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214390, 34.629898, 31.407597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267086, -0.753371, 0.600914,
		0.215522, -0.561074, -0.799216,
		0.939263, 0.342970, 0.012513,
		38.496170, 34.732788, 31.411350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193058, 33.990730, 31.231953>,  <37.838684, 34.492710, 31.402592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193058, 33.990730, 31.231953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465515, 34.231983, 31.397976>,  <38.628990, 34.376736, 31.497591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465515, 34.231983, 31.397976>,  <38.193058, 33.990730, 31.231953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465515, 34.231983, 31.397976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333327, -0.760205, 0.557657,
		0.651872, -0.241494, -0.718849,
		0.681143, 0.603133, 0.415060,
		38.669857, 34.412922, 31.522493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918587, 33.738819, 31.114286>,  <38.193058, 33.990730, 31.231953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918587, 33.738819, 31.114286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955879, 33.953777, 31.449551>,  <38.978252, 34.082752, 31.650709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955879, 33.953777, 31.449551>,  <38.918587, 33.738819, 31.114286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955879, 33.953777, 31.449551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506562, -0.750329, 0.424736,
		0.857148, 0.384984, -0.342176,
		0.093228, 0.537396, 0.838161,
		38.983849, 34.114998, 31.700998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508087, 33.389069, 31.417494>,  <38.918587, 33.738819, 31.114286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508087, 33.389069, 31.417494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369179, 33.613281, 31.718212>,  <39.285831, 33.747810, 31.898643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369179, 33.613281, 31.718212>,  <39.508087, 33.389069, 31.417494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369179, 33.613281, 31.718212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615181, -0.468906, 0.633782,
		0.707780, 0.682588, -0.181992,
		-0.347275, 0.560536, 0.751797,
		39.264996, 33.781441, 31.943752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026482, 33.619526, 31.768490>,  <39.508087, 33.389069, 31.417494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026482, 33.619526, 31.768490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726768, 33.627071, 32.033283>,  <39.546940, 33.631599, 32.192158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726768, 33.627071, 32.033283>,  <40.026482, 33.619526, 31.768490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726768, 33.627071, 32.033283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586848, -0.444311, 0.676902,
		0.306894, 0.895674, 0.321845,
		-0.749283, 0.018863, 0.661981,
		39.501984, 33.632729, 32.231876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320972, 33.766491, 32.497311>,  <40.026482, 33.619526, 31.768490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320972, 33.766491, 32.497311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965527, 33.593956, 32.559692>,  <39.752258, 33.490437, 32.597122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965527, 33.593956, 32.559692>,  <40.320972, 33.766491, 32.497311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965527, 33.593956, 32.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385626, -0.518507, 0.763180,
		-0.248320, 0.738311, 0.627084,
		-0.888611, -0.431333, 0.155956,
		39.698944, 33.464558, 32.606480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230038, 33.769123, 33.311268>,  <40.320972, 33.766491, 32.497311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230038, 33.769123, 33.311268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976913, 33.500816, 33.156548>,  <39.825039, 33.339832, 33.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976913, 33.500816, 33.156548>,  <40.230038, 33.769123, 33.311268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976913, 33.500816, 33.156548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082748, -0.555267, 0.827546,
		-0.769869, 0.491676, 0.406886,
		-0.632814, -0.670771, -0.386798,
		39.787067, 33.299583, 33.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779480, 33.626381, 33.862556>,  <40.230038, 33.769123, 33.311268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779480, 33.626381, 33.862556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765167, 33.310276, 33.617867>,  <39.756580, 33.120613, 33.471050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765167, 33.310276, 33.617867>,  <39.779480, 33.626381, 33.862556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765167, 33.310276, 33.617867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204079, -0.605000, 0.769628,
		-0.978300, -0.097304, 0.182922,
		-0.035780, -0.790257, -0.611729,
		39.754433, 33.073200, 33.434349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162411, 33.211308, 33.995411>,  <39.779480, 33.626381, 33.862556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162411, 33.211308, 33.995411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428844, 32.982063, 33.804466>,  <39.588707, 32.844517, 33.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428844, 32.982063, 33.804466>,  <39.162411, 33.211308, 33.995411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428844, 32.982063, 33.804466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049598, -0.672618, 0.738325,
		-0.744225, -0.468111, -0.476446,
		0.666085, -0.573111, -0.477362,
		39.628670, 32.810131, 33.661259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904980, 32.639084, 34.089924>,  <39.162411, 33.211308, 33.995411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904980, 32.639084, 34.089924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265518, 32.532917, 33.953026>,  <39.481842, 32.469219, 33.870888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265518, 32.532917, 33.953026>,  <38.904980, 32.639084, 34.089924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265518, 32.532917, 33.953026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027549, -0.753483, 0.656890,
		-0.432221, -0.601514, -0.671838,
		0.901347, -0.265413, -0.342242,
		39.535923, 32.453293, 33.850353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836094, 32.010685, 33.941669>,  <38.904980, 32.639084, 34.089924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836094, 32.010685, 33.941669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217609, 32.091316, 34.030792>,  <39.446518, 32.139694, 34.084267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217609, 32.091316, 34.030792>,  <38.836094, 32.010685, 33.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217609, 32.091316, 34.030792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031977, -0.805439, 0.591815,
		0.298761, -0.557344, -0.774668,
		0.953792, 0.201583, 0.222811,
		39.503746, 32.151791, 34.097637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206852, 31.348703, 33.893669>,  <38.836094, 32.010685, 33.941669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206852, 31.348703, 33.893669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471970, 31.558222, 34.107712>,  <39.631042, 31.683933, 34.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471970, 31.558222, 34.107712>,  <39.206852, 31.348703, 33.893669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471970, 31.558222, 34.107712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156016, -0.795535, 0.585477,
		0.732365, -0.304568, -0.608999,
		0.662797, 0.523797, 0.535104,
		39.670811, 31.715361, 34.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731255, 30.921253, 33.994610>,  <39.206852, 31.348703, 33.893669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731255, 30.921253, 33.994610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784962, 31.200422, 34.276001>,  <39.817188, 31.367924, 34.444836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784962, 31.200422, 34.276001>,  <39.731255, 30.921253, 33.994610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784962, 31.200422, 34.276001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262091, -0.709635, 0.654008,
		0.955657, 0.096561, -0.278202,
		0.134270, 0.697921, 0.703476,
		39.825241, 31.409798, 34.487045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293472, 30.732140, 34.256149>,  <39.731255, 30.921253, 33.994610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293472, 30.732140, 34.256149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092327, 30.936266, 34.535206>,  <39.971638, 31.058743, 34.702641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092327, 30.936266, 34.535206>,  <40.293472, 30.732140, 34.256149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092327, 30.936266, 34.535206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341868, -0.623878, 0.702782,
		0.793884, 0.591906, 0.139266,
		-0.502867, 0.510317, 0.697640,
		39.941467, 31.089361, 34.744499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840385, 30.765776, 34.692249>,  <40.293472, 30.732140, 34.256149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840385, 30.765776, 34.692249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539997, 30.892799, 34.923832>,  <40.359764, 30.969013, 35.062782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539997, 30.892799, 34.923832>,  <40.840385, 30.765776, 34.692249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539997, 30.892799, 34.923832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231982, -0.694005, 0.681573,
		0.618240, 0.646152, 0.447512,
		-0.750975, 0.317561, 0.578957,
		40.314705, 30.988068, 35.097519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134941, 30.802370, 35.474442>,  <40.840385, 30.765776, 34.692249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134941, 30.802370, 35.474442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735142, 30.792912, 35.482857>,  <40.495262, 30.787235, 35.487904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735142, 30.792912, 35.482857>,  <41.134941, 30.802370, 35.474442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735142, 30.792912, 35.482857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031604, -0.781571, 0.623015,
		0.001708, 0.623367, 0.781927,
		-0.999499, -0.023648, 0.021036,
		40.435291, 30.785818, 35.489166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804203, 30.903381, 36.226101>,  <41.134941, 30.802370, 35.474442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804203, 30.903381, 36.226101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543976, 30.685070, 36.014858>,  <40.387840, 30.554083, 35.888115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543976, 30.685070, 36.014858>,  <40.804203, 30.903381, 36.226101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543976, 30.685070, 36.014858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181127, -0.563806, 0.805801,
		-0.737536, 0.619879, 0.267937,
		-0.650564, -0.545777, -0.528104,
		40.348808, 30.521338, 35.856426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645454, 30.427656, 36.689110>,  <40.804203, 30.903381, 36.226101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645454, 30.427656, 36.689110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433575, 30.327984, 36.364807>,  <40.306446, 30.268181, 36.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433575, 30.327984, 36.364807>,  <40.645454, 30.427656, 36.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433575, 30.327984, 36.364807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262321, -0.860883, 0.435968,
		-0.806602, 0.443610, 0.390644,
		-0.529698, -0.249178, -0.810759,
		40.274666, 30.253231, 36.121578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971828, 30.258305, 36.849213>,  <40.645454, 30.427656, 36.689110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971828, 30.258305, 36.849213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075268, 30.042253, 36.528866>,  <40.137333, 29.912622, 36.336658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075268, 30.042253, 36.528866>,  <39.971828, 30.258305, 36.849213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075268, 30.042253, 36.528866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121703, -0.840681, 0.527679,
		-0.958287, -0.038991, -0.283136,
		0.258601, -0.540126, -0.800868,
		40.152847, 29.880217, 36.288605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473171, 29.764849, 36.615547>,  <39.971828, 30.258305, 36.849213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473171, 29.764849, 36.615547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847939, 29.659893, 36.523170>,  <40.072800, 29.596920, 36.467743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847939, 29.659893, 36.523170>,  <39.473171, 29.764849, 36.615547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847939, 29.659893, 36.523170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110461, -0.849087, 0.516575,
		-0.331634, -0.458479, -0.824509,
		0.936919, -0.262390, -0.230942,
		40.129013, 29.581177, 36.453888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413822, 29.059576, 36.357868>,  <39.473171, 29.764849, 36.615547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413822, 29.059576, 36.357868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806347, 28.988094, 36.386410>,  <40.041862, 28.945206, 36.403534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806347, 28.988094, 36.386410>,  <39.413822, 29.059576, 36.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806347, 28.988094, 36.386410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189742, -0.836984, 0.513280,
		-0.032005, -0.517226, -0.855250,
		0.981312, -0.178705, 0.071352,
		40.100742, 28.934483, 36.407814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606491, 28.399639, 36.142536>,  <39.413822, 29.059576, 36.357868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606491, 28.399639, 36.142536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895668, 28.511877, 36.395081>,  <40.069176, 28.579220, 36.546608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895668, 28.511877, 36.395081>,  <39.606491, 28.399639, 36.142536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895668, 28.511877, 36.395081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017047, -0.906293, 0.422306,
		0.690694, -0.316068, -0.650418,
		0.722946, 0.280596, 0.631359,
		40.112553, 28.596056, 36.584488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207897, 27.993437, 35.945827>,  <39.606491, 28.399639, 36.142536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207897, 27.993437, 35.945827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234863, 28.123077, 36.323273>,  <40.251045, 28.200861, 36.549740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234863, 28.123077, 36.323273>,  <40.207897, 27.993437, 35.945827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234863, 28.123077, 36.323273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096515, -0.943452, 0.317148,
		0.993046, 0.069691, -0.094886,
		0.067418, 0.324100, 0.943618,
		40.255089, 28.220308, 36.606358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426540, 27.390574, 36.332508>,  <40.207897, 27.993437, 35.945827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426540, 27.390574, 36.332508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460907, 27.658234, 36.627766>,  <40.481525, 27.818830, 36.804920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460907, 27.658234, 36.627766>,  <40.426540, 27.390574, 36.332508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460907, 27.658234, 36.627766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268162, -0.729073, 0.629715,
		0.959535, 0.143842, -0.242078,
		0.085913, 0.669150, 0.738145,
		40.486679, 27.858978, 36.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216705, 27.469690, 36.562897>,  <40.426540, 27.390574, 36.332508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216705, 27.469690, 36.562897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957851, 27.536327, 36.860477>,  <40.802540, 27.576309, 37.039028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957851, 27.536327, 36.860477>,  <41.216705, 27.469690, 36.562897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957851, 27.536327, 36.860477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382870, -0.772833, 0.506103,
		0.659266, 0.612352, 0.436340,
		-0.647131, 0.166595, 0.743954,
		40.763714, 27.586306, 37.083664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570156, 27.377169, 37.229382>,  <41.216705, 27.469690, 36.562897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570156, 27.377169, 37.229382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187012, 27.323336, 37.330875>,  <40.957123, 27.291037, 37.391773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187012, 27.323336, 37.330875>,  <41.570156, 27.377169, 37.229382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187012, 27.323336, 37.330875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252734, -0.814645, 0.521995,
		0.136454, 0.564128, 0.814334,
		-0.957865, -0.134581, 0.253736,
		40.899651, 27.282961, 37.406998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565983, 27.133333, 37.970600>,  <41.570156, 27.377169, 37.229382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565983, 27.133333, 37.970600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224785, 27.020010, 37.795265>,  <41.020065, 26.952017, 37.690063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224785, 27.020010, 37.795265>,  <41.565983, 27.133333, 37.970600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224785, 27.020010, 37.795265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100489, -0.913287, 0.394727,
		-0.512157, 0.292651, 0.807497,
		-0.852993, -0.283306, -0.438338,
		40.968887, 26.935019, 37.663765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028450, 26.888622, 38.470608>,  <41.565983, 27.133333, 37.970600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028450, 26.888622, 38.470608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929211, 26.716745, 38.123318>,  <40.869667, 26.613619, 37.914944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929211, 26.716745, 38.123318>,  <41.028450, 26.888622, 38.470608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929211, 26.716745, 38.123318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107140, -0.878575, 0.465432,
		-0.962791, 0.208496, 0.171938,
		-0.248101, -0.429692, -0.868223,
		40.854782, 26.587837, 37.862850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321289, 26.489710, 38.527016>,  <41.028450, 26.888622, 38.470608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321289, 26.489710, 38.527016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547504, 26.324835, 38.241283>,  <40.683231, 26.225910, 38.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547504, 26.324835, 38.241283>,  <40.321289, 26.489710, 38.527016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547504, 26.324835, 38.241283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137279, -0.901111, 0.411282,
		-0.813219, -0.134532, -0.566194,
		0.565534, -0.412189, -0.714333,
		40.717163, 26.201178, 38.026985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852245, 25.897530, 38.276443>,  <40.321289, 26.489710, 38.527016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852245, 25.897530, 38.276443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251976, 25.884600, 38.269478>,  <40.491814, 25.876842, 38.265297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251976, 25.884600, 38.269478>,  <39.852245, 25.897530, 38.276443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251976, 25.884600, 38.269478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024875, -0.944887, 0.326451,
		-0.027005, -0.325798, -0.945054,
		0.999326, -0.032324, -0.017412,
		40.551773, 25.874903, 38.264256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249489, 25.163708, 38.141808>,  <39.852245, 25.897530, 38.276443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249489, 25.163708, 38.141808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497692, 25.393749, 38.355061>,  <40.646614, 25.531775, 38.483013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497692, 25.393749, 38.355061>,  <40.249489, 25.163708, 38.141808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497692, 25.393749, 38.355061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108525, -0.736271, 0.667928,
		0.776657, -0.356594, -0.519274,
		0.620505, 0.575105, 0.533130,
		40.683846, 25.566280, 38.514999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547283, 25.450018, 37.569366>,  <40.249489, 25.163708, 38.141808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547283, 25.450018, 37.569366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276073, 25.575605, 37.303524>,  <40.113346, 25.650959, 37.144020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276073, 25.575605, 37.303524>,  <40.547283, 25.450018, 37.569366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276073, 25.575605, 37.303524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114035, 0.938165, 0.326866,
		0.726135, 0.145837, -0.671907,
		-0.678029, 0.313970, -0.664605,
		40.072666, 25.669796, 37.104141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847618, 25.923773, 37.150600>,  <40.547283, 25.450018, 37.569366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847618, 25.923773, 37.150600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456394, 26.001675, 37.180180>,  <40.221661, 26.048416, 37.197926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456394, 26.001675, 37.180180>,  <40.847618, 25.923773, 37.150600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456394, 26.001675, 37.180180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207546, 0.941535, 0.265398,
		-0.017935, 0.274922, -0.961299,
		-0.978061, 0.194754, 0.073945,
		40.162975, 26.060101, 37.202362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864433, 26.654539, 37.051373>,  <40.847618, 25.923773, 37.150600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864433, 26.654539, 37.051373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528378, 26.549356, 37.241119>,  <40.326744, 26.486248, 37.354965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528378, 26.549356, 37.241119>,  <40.864433, 26.654539, 37.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528378, 26.549356, 37.241119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048462, 0.907509, 0.417228,
		-0.540203, 0.327541, -0.775176,
		-0.840138, -0.262954, 0.474365,
		40.276337, 26.470470, 37.383430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051533, 26.826546, 36.816597>,  <40.864433, 26.654539, 37.051373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051533, 26.826546, 36.816597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175327, 26.824165, 37.196953>,  <40.249603, 26.822737, 37.425167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175327, 26.824165, 37.196953>,  <40.051533, 26.826546, 36.816597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175327, 26.824165, 37.196953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142335, 0.989004, -0.040137,
		-0.940192, 0.147766, 0.306927,
		0.309483, -0.005950, 0.950886,
		40.268173, 26.822380, 37.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649292, 27.079601, 37.448517>,  <40.051533, 26.826546, 36.816597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649292, 27.079601, 37.448517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043579, 27.146753, 37.443104>,  <40.280151, 27.187046, 37.439854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043579, 27.146753, 37.443104>,  <39.649292, 27.079601, 37.448517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043579, 27.146753, 37.443104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166070, 0.955371, -0.244308,
		-0.028083, 0.243066, 0.969603,
		0.985714, 0.167882, -0.013536,
		40.339294, 27.197119, 37.439041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753082, 27.718956, 37.920841>,  <39.649292, 27.079601, 37.448517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753082, 27.718956, 37.920841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040813, 27.659599, 37.649387>,  <40.213451, 27.623985, 37.486515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040813, 27.659599, 37.649387>,  <39.753082, 27.718956, 37.920841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040813, 27.659599, 37.649387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097099, 0.945848, -0.309746,
		0.687849, 0.288705, 0.665968,
		0.719330, -0.148394, -0.678634,
		40.256611, 27.615082, 37.445797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014198, 28.389397, 37.836552>,  <39.753082, 27.718956, 37.920841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014198, 28.389397, 37.836552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158443, 28.250044, 37.490467>,  <40.244991, 28.166431, 37.282818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158443, 28.250044, 37.490467>,  <40.014198, 28.389397, 37.836552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158443, 28.250044, 37.490467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250151, 0.929765, -0.270115,
		0.898544, -0.119026, 0.422434,
		0.360614, -0.348382, -0.865210,
		40.266628, 28.145529, 37.230904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616318, 28.711777, 37.854748>,  <40.014198, 28.389397, 37.836552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616318, 28.711777, 37.854748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499081, 28.582666, 37.494766>,  <40.428738, 28.505199, 37.278778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499081, 28.582666, 37.494766>,  <40.616318, 28.711777, 37.854748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499081, 28.582666, 37.494766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234533, 0.888257, -0.394961,
		0.926873, -0.326827, -0.184636,
		-0.293088, -0.322776, -0.899953,
		40.411156, 28.485834, 37.224781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211674, 28.816721, 37.443008>,  <40.616318, 28.711777, 37.854748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211674, 28.816721, 37.443008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898514, 28.760719, 37.200531>,  <40.710617, 28.727118, 37.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898514, 28.760719, 37.200531>,  <41.211674, 28.816721, 37.443008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898514, 28.760719, 37.200531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451204, 0.543078, -0.708153,
		0.428355, -0.827928, -0.362004,
		-0.782897, -0.140004, -0.606195,
		40.663647, 28.718718, 37.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476131, 28.853128, 36.703934>,  <41.211674, 28.816721, 37.443008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476131, 28.853128, 36.703934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080109, 28.887796, 36.659618>,  <40.842495, 28.908598, 36.633030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080109, 28.887796, 36.659618>,  <41.476131, 28.853128, 36.703934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080109, 28.887796, 36.659618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140657, 0.602219, -0.785842,
		-0.001388, -0.793612, -0.608422,
		-0.990058, 0.086670, -0.110791,
		40.783092, 28.913797, 36.626381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225574, 29.316896, 36.258564>,  <41.476131, 28.853128, 36.703934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225574, 29.316896, 36.258564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849049, 29.181973, 36.253632>,  <40.623135, 29.101019, 36.250671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849049, 29.181973, 36.253632>,  <41.225574, 29.316896, 36.258564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849049, 29.181973, 36.253632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240973, 0.697159, -0.675205,
		0.236352, -0.632607, -0.737527,
		-0.941313, -0.337310, -0.012333,
		40.566654, 29.080780, 36.249931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064056, 29.219215, 35.511261>,  <41.225574, 29.316896, 36.258564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064056, 29.219215, 35.511261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745712, 29.265322, 35.749023>,  <40.554707, 29.292986, 35.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745712, 29.265322, 35.749023>,  <41.064056, 29.219215, 35.511261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745712, 29.265322, 35.749023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249406, 0.832147, -0.495306,
		-0.551723, -0.542444, -0.633527,
		-0.795864, 0.115266, 0.594403,
		40.506954, 29.299902, 35.927345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400238, 29.240610, 35.171768>,  <41.064056, 29.219215, 35.511261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400238, 29.240610, 35.171768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348133, 29.434578, 35.517689>,  <40.316872, 29.550959, 35.725243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348133, 29.434578, 35.517689>,  <40.400238, 29.240610, 35.171768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348133, 29.434578, 35.517689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376922, 0.782530, -0.495558,
		-0.917040, -0.390514, 0.080845,
		-0.130259, 0.484919, 0.864804,
		40.309055, 29.580053, 35.777130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860821, 29.601439, 35.000534>,  <40.400238, 29.240610, 35.171768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860821, 29.601439, 35.000534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011158, 29.792540, 35.318150>,  <40.101360, 29.907200, 35.508717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011158, 29.792540, 35.318150>,  <39.860821, 29.601439, 35.000534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011158, 29.792540, 35.318150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319822, 0.871084, -0.372729,
		-0.869744, -0.113861, 0.480189,
		0.375846, 0.477754, 0.794035,
		40.123913, 29.935865, 35.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348644, 30.091377, 35.202579>,  <39.860821, 29.601439, 35.000534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348644, 30.091377, 35.202579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679947, 30.213678, 35.390411>,  <39.878727, 30.287060, 35.503113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679947, 30.213678, 35.390411>,  <39.348644, 30.091377, 35.202579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679947, 30.213678, 35.390411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242534, 0.951061, -0.191469,
		-0.505144, 0.044695, 0.861877,
		0.828255, 0.305754, 0.469583,
		39.928425, 30.305405, 35.531288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195305, 30.677622, 35.556488>,  <39.348644, 30.091377, 35.202579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195305, 30.677622, 35.556488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591461, 30.724821, 35.527618>,  <39.829155, 30.753139, 35.510296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591461, 30.724821, 35.527618>,  <39.195305, 30.677622, 35.556488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591461, 30.724821, 35.527618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135930, 0.926838, -0.349992,
		0.025595, 0.356438, 0.933968,
		0.990388, 0.117996, -0.072173,
		39.888577, 30.760220, 35.505966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320591, 31.317308, 35.831089>,  <39.195305, 30.677622, 35.556488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320591, 31.317308, 35.831089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637573, 31.229624, 35.603416>,  <39.827763, 31.177013, 35.466812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637573, 31.229624, 35.603416>,  <39.320591, 31.317308, 35.831089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637573, 31.229624, 35.603416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243500, 0.741888, -0.624748,
		0.559219, 0.633678, 0.534533,
		0.792453, -0.219212, -0.569179,
		39.875309, 31.163860, 35.432663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452164, 31.961128, 35.511784>,  <39.320591, 31.317308, 35.831089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452164, 31.961128, 35.511784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680420, 31.706692, 35.304031>,  <39.817371, 31.554029, 35.179379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680420, 31.706692, 35.304031>,  <39.452164, 31.961128, 35.511784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680420, 31.706692, 35.304031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045433, 0.655953, -0.753433,
		0.819944, 0.406340, 0.403212,
		0.570638, -0.636092, -0.519384,
		39.851612, 31.515863, 35.148216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027493, 32.335690, 35.370331>,  <39.452164, 31.961128, 35.511784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027493, 32.335690, 35.370331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992161, 32.043598, 35.099342>,  <39.970963, 31.868343, 34.936749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992161, 32.043598, 35.099342>,  <40.027493, 32.335690, 35.370331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992161, 32.043598, 35.099342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187686, 0.655744, -0.731283,
		0.978250, -0.191744, 0.079133,
		-0.088328, -0.730229, -0.677469,
		39.965664, 31.824530, 34.896103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495991, 32.377556, 34.881859>,  <40.027493, 32.335690, 35.370331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495991, 32.377556, 34.881859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197353, 32.200970, 34.682781>,  <40.018169, 32.095016, 34.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197353, 32.200970, 34.682781>,  <40.495991, 32.377556, 34.881859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197353, 32.200970, 34.682781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155481, 0.611599, -0.775740,
		0.646855, -0.656546, -0.387977,
		-0.746596, -0.441468, -0.497696,
		39.973373, 32.068527, 34.533474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786533, 32.412071, 34.269978>,  <40.495991, 32.377556, 34.881859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786533, 32.412071, 34.269978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399105, 32.322754, 34.226135>,  <40.166649, 32.269161, 34.199829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399105, 32.322754, 34.226135>,  <40.786533, 32.412071, 34.269978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399105, 32.322754, 34.226135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044566, 0.589285, -0.806695,
		0.244724, -0.776454, -0.580714,
		-0.968568, -0.223297, -0.109609,
		40.108536, 32.255764, 34.193253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823605, 32.261806, 33.602402>,  <40.786533, 32.412071, 34.269978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823605, 32.261806, 33.602402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437447, 32.335087, 33.676643>,  <40.205753, 32.379055, 33.721188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437447, 32.335087, 33.676643>,  <40.823605, 32.261806, 33.602402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437447, 32.335087, 33.676643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088034, 0.440990, -0.893184,
		-0.245481, -0.878615, -0.409602,
		-0.965396, 0.183201, 0.185602,
		40.147827, 32.390045, 33.732323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460991, 32.060356, 33.033386>,  <40.823605, 32.261806, 33.602402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460991, 32.060356, 33.033386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202278, 32.293331, 33.230339>,  <40.047050, 32.433117, 33.348511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202278, 32.293331, 33.230339>,  <40.460991, 32.060356, 33.033386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202278, 32.293331, 33.230339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355715, 0.340706, -0.870279,
		-0.674637, -0.738032, -0.013183,
		-0.646786, 0.582433, 0.492382,
		40.008244, 32.468060, 33.378056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529644, 31.678514, 32.408424>,  <40.460991, 32.060356, 33.033386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529644, 31.678514, 32.408424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608383, 31.922033, 32.101017>,  <40.655628, 32.068146, 31.916573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608383, 31.922033, 32.101017>,  <40.529644, 31.678514, 32.408424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608383, 31.922033, 32.101017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932445, 0.125982, 0.338636,
		0.302980, -0.783258, -0.542872,
		0.196847, 0.608798, -0.768515,
		40.667439, 32.104671, 31.870462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123203, 31.399853, 31.803326>,  <40.529644, 31.678514, 32.408424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123203, 31.399853, 31.803326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077023, 31.785061, 31.900700>,  <41.049316, 32.016186, 31.959124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077023, 31.785061, 31.900700>,  <41.123203, 31.399853, 31.803326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077023, 31.785061, 31.900700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990116, 0.091923, 0.105923,
		0.079629, 0.253257, -0.964116,
		-0.115450, 0.963022, 0.243434,
		41.042389, 32.073967, 31.973730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800266, 31.718298, 31.567543>,  <41.123203, 31.399853, 31.803326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800266, 31.718298, 31.567543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628017, 31.992943, 31.801853>,  <41.524670, 32.157730, 31.942438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628017, 31.992943, 31.801853>,  <41.800266, 31.718298, 31.567543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628017, 31.992943, 31.801853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899551, 0.379239, 0.216762,
		-0.073316, 0.620275, -0.780951,
		-0.430619, 0.686613, 0.585773,
		41.498833, 32.198925, 31.977585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033237, 32.449974, 31.369804>,  <41.800266, 31.718298, 31.567543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033237, 32.449974, 31.369804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928375, 32.367931, 31.746996>,  <41.865456, 32.318707, 31.973310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928375, 32.367931, 31.746996>,  <42.033237, 32.449974, 31.369804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928375, 32.367931, 31.746996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945513, 0.140910, 0.293512,
		-0.193076, 0.968543, 0.156989,
		-0.262157, -0.205106, 0.942977,
		41.849728, 32.306400, 32.029888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134735, 33.052311, 31.817822>,  <42.033237, 32.449974, 31.369804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134735, 33.052311, 31.817822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178867, 32.688770, 31.978727>,  <42.205345, 32.470646, 32.075272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178867, 32.688770, 31.978727>,  <42.134735, 33.052311, 31.817822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178867, 32.688770, 31.978727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880641, 0.277024, 0.384355,
		-0.460759, 0.311847, 0.830935,
		0.110329, -0.908851, 0.402266,
		42.211967, 32.416115, 32.099407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392365, 33.115025, 32.441204>,  <42.134735, 33.052311, 31.817822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392365, 33.115025, 32.441204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507072, 32.736946, 32.378769>,  <42.575897, 32.510098, 32.341309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507072, 32.736946, 32.378769>,  <42.392365, 33.115025, 32.441204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507072, 32.736946, 32.378769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862064, 0.183532, 0.472401,
		-0.417866, -0.270025, 0.867453,
		0.286766, -0.945199, -0.156087,
		42.593102, 32.453384, 32.331944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607170, 32.727020, 33.016914>,  <42.392365, 33.115025, 32.441204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607170, 32.727020, 33.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818378, 32.614887, 32.696262>,  <42.945103, 32.547607, 32.503872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818378, 32.614887, 32.696262>,  <42.607170, 32.727020, 33.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818378, 32.614887, 32.696262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849001, 0.152228, 0.505989,
		-0.019814, -0.947756, 0.318381,
		0.528020, -0.280332, -0.801629,
		42.976784, 32.530788, 32.455772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094540, 32.142845, 33.155163>,  <42.607170, 32.727020, 33.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094540, 32.142845, 33.155163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236275, 32.356579, 32.848194>,  <43.321316, 32.484818, 32.664013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236275, 32.356579, 32.848194>,  <43.094540, 32.142845, 33.155163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236275, 32.356579, 32.848194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857488, 0.141719, 0.494601,
		0.373039, -0.833310, -0.407966,
		0.354340, 0.534331, -0.767420,
		43.342575, 32.516880, 32.617970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854988, 32.148148, 33.267349>,  <43.094540, 32.142845, 33.155163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854988, 32.148148, 33.267349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809326, 32.380470, 32.944950>,  <43.781929, 32.519863, 32.751511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809326, 32.380470, 32.944950>,  <43.854988, 32.148148, 33.267349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809326, 32.380470, 32.944950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883756, 0.429970, 0.184667,
		0.453811, -0.691224, -0.562375,
		-0.114158, 0.580806, -0.805998,
		43.775078, 32.554710, 32.703152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331421, 32.053005, 32.752537>,  <43.854988, 32.148148, 33.267349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331421, 32.053005, 32.752537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221405, 32.437317, 32.738350>,  <44.155396, 32.667904, 32.729836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221405, 32.437317, 32.738350>,  <44.331421, 32.053005, 32.752537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221405, 32.437317, 32.738350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931159, 0.275380, 0.238976,
		0.239371, 0.032700, -0.970378,
		-0.275037, 0.960779, -0.035469,
		44.138893, 32.725552, 32.727711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935074, 32.483967, 32.541992>,  <44.331421, 32.053005, 32.752537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935074, 32.483967, 32.541992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701027, 32.745968, 32.733246>,  <44.560596, 32.903168, 32.847996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701027, 32.745968, 32.733246>,  <44.935074, 32.483967, 32.541992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701027, 32.745968, 32.733246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798297, 0.361503, 0.481703,
		0.142669, 0.663545, -0.734407,
		-0.585122, 0.654999, 0.478131,
		44.525490, 32.942467, 32.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168137, 33.253445, 32.479256>,  <44.935074, 32.483967, 32.541992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168137, 33.253445, 32.479256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005497, 33.148701, 32.829365>,  <44.907913, 33.085854, 33.039433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005497, 33.148701, 32.829365>,  <45.168137, 33.253445, 32.479256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005497, 33.148701, 32.829365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786308, 0.387509, 0.481204,
		-0.465187, 0.883891, 0.048345,
		-0.406598, -0.261864, 0.875274,
		44.883518, 33.070141, 33.091946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856197, 33.756134, 32.918640>,  <45.168137, 33.253445, 32.479256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856197, 33.756134, 32.918640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039627, 33.476223, 33.137737>,  <45.149685, 33.308277, 33.269196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039627, 33.476223, 33.137737>,  <44.856197, 33.756134, 32.918640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039627, 33.476223, 33.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711696, 0.658308, 0.245193,
		-0.532164, 0.277386, 0.799912,
		0.458575, -0.699777, 0.547742,
		45.177200, 33.266289, 33.302059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038719, 33.961727, 33.667915>,  <44.856197, 33.756134, 32.918640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038719, 33.961727, 33.667915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309650, 33.692734, 33.548592>,  <45.472210, 33.531338, 33.476997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309650, 33.692734, 33.548592>,  <45.038719, 33.961727, 33.667915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309650, 33.692734, 33.548592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734060, 0.644657, 0.213480,
		0.048746, -0.363574, 0.930289,
		0.677333, -0.672482, -0.298310,
		45.512852, 33.490990, 33.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433468, 33.564575, 34.173634>,  <45.038719, 33.961727, 33.667915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433468, 33.564575, 34.173634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613228, 33.654816, 33.827885>,  <45.721085, 33.708958, 33.620434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613228, 33.654816, 33.827885>,  <45.433468, 33.564575, 34.173634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613228, 33.654816, 33.827885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634425, 0.600601, 0.486605,
		0.628922, -0.767062, 0.126784,
		0.449402, 0.225601, -0.864374,
		45.748051, 33.722496, 33.568573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143791, 33.692631, 34.340168>,  <45.433468, 33.564575, 34.173634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143791, 33.692631, 34.340168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030327, 33.876259, 34.003410>,  <45.962246, 33.986435, 33.801357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030327, 33.876259, 34.003410>,  <46.143791, 33.692631, 34.340168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030327, 33.876259, 34.003410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505857, 0.817498, 0.275329,
		0.814644, -0.347777, -0.464119,
		-0.283663, 0.459073, -0.841895,
		45.945229, 34.013981, 33.750843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774666, 33.693623, 34.941780>,  <46.143791, 33.692631, 34.340168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774666, 33.693623, 34.941780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155098, 33.594242, 35.015221>,  <46.383358, 33.534615, 35.059284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155098, 33.594242, 35.015221>,  <45.774666, 33.693623, 34.941780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155098, 33.594242, 35.015221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235100, 0.967647, 0.091582,
		-0.200417, -0.043937, 0.978725,
		0.951084, -0.248453, 0.183603,
		46.440422, 33.519707, 35.070301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856342, 33.930546, 35.638901>,  <45.774666, 33.693623, 34.941780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856342, 33.930546, 35.638901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156849, 33.914921, 35.375362>,  <46.337151, 33.905544, 35.217239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156849, 33.914921, 35.375362>,  <45.856342, 33.930546, 35.638901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156849, 33.914921, 35.375362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056813, 0.998369, 0.005591,
		0.657551, -0.041631, 0.752259,
		0.751265, -0.039062, -0.658844,
		46.382229, 33.903202, 35.177708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424545, 34.310097, 35.832470>,  <45.856342, 33.930546, 35.638901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424545, 34.310097, 35.832470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388710, 34.309597, 35.434078>,  <46.367207, 34.309296, 35.195042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388710, 34.309597, 35.434078>,  <46.424545, 34.310097, 35.832470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388710, 34.309597, 35.434078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072415, 0.997361, 0.005259,
		0.993343, 0.072595, -0.089445,
		-0.089590, -0.001253, -0.995978,
		46.361832, 34.309219, 35.135284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113647, 34.658737, 35.582596>,  <46.424545, 34.310097, 35.832470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113647, 34.658737, 35.582596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768028, 34.681721, 35.382549>,  <46.560658, 34.695511, 35.262524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768028, 34.681721, 35.382549>,  <47.113647, 34.658737, 35.582596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768028, 34.681721, 35.382549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009389, 0.995130, 0.098118,
		0.503316, 0.080084, -0.860383,
		-0.864051, 0.057463, -0.500113,
		46.508812, 34.698959, 35.232513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326576, 34.812489, 34.796818>,  <47.113647, 34.658737, 35.582596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326576, 34.812489, 34.796818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613056, 35.091572, 34.803402>,  <47.784943, 35.259022, 34.807350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.613056, 35.091572, 34.803402>,  <47.326576, 34.812489, 34.796818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.613056, 35.091572, 34.803402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352947, -0.382444, 0.853911,
		0.602071, -0.605761, -0.520158,
		0.716198, 0.697704, 0.016457,
		47.827915, 35.300884, 34.808338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.974274, 34.605030, 23.928724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574295, 34.608871, 23.930182>,  <35.334309, 34.611176, 23.931057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574295, 34.608871, 23.930182>,  <35.974274, 34.605030, 23.928724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574295, 34.608871, 23.930182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002555, -0.576087, 0.817384,
		0.009953, 0.817332, 0.576081,
		-0.999947, 0.009608, 0.003645,
		35.274311, 34.611755, 23.931274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892570, 34.824825, 24.513163>,  <35.974274, 34.605030, 23.928724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892570, 34.824825, 24.513163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553185, 34.645977, 24.399891>,  <35.349552, 34.538666, 24.331928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553185, 34.645977, 24.399891>,  <35.892570, 34.824825, 24.513163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553185, 34.645977, 24.399891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048071, -0.467739, 0.882559,
		-0.527069, 0.762430, 0.375365,
		-0.848462, -0.447125, -0.283181,
		35.298645, 34.511841, 24.314938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669678, 34.792519, 25.174381>,  <35.892570, 34.824825, 24.513163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669678, 34.792519, 25.174381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445633, 34.535603, 24.965101>,  <35.311207, 34.381454, 24.839533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445633, 34.535603, 24.965101>,  <35.669678, 34.792519, 25.174381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445633, 34.535603, 24.965101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131001, -0.554947, 0.821506,
		-0.817991, 0.528678, 0.226695,
		-0.560116, -0.642288, -0.523199,
		35.277599, 34.342915, 24.808142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084961, 34.794949, 25.479872>,  <35.669678, 34.792519, 25.174381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084961, 34.794949, 25.479872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069084, 34.457115, 25.266293>,  <35.059559, 34.254414, 25.138145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069084, 34.457115, 25.266293>,  <35.084961, 34.794949, 25.479872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069084, 34.457115, 25.266293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250393, -0.508913, 0.823596,
		-0.967330, 0.166391, -0.191275,
		-0.039697, -0.844584, -0.533950,
		35.057175, 34.203739, 25.106108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412102, 34.402355, 25.665342>,  <35.084961, 34.794949, 25.479872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412102, 34.402355, 25.665342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673645, 34.139961, 25.514530>,  <34.830570, 33.982525, 25.424044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673645, 34.139961, 25.514530>,  <34.412102, 34.402355, 25.665342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673645, 34.139961, 25.514530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119274, -0.581444, 0.804796,
		-0.747156, -0.481253, -0.458424,
		0.653858, -0.655987, -0.377029,
		34.869804, 33.943165, 25.401423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073170, 33.831314, 25.847261>,  <34.412102, 34.402355, 25.665342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073170, 33.831314, 25.847261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462872, 33.763695, 25.787596>,  <34.696693, 33.723122, 25.751797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462872, 33.763695, 25.787596>,  <34.073170, 33.831314, 25.847261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462872, 33.763695, 25.787596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005613, -0.643234, 0.765649,
		-0.225382, -0.746774, -0.625724,
		0.974254, -0.169051, -0.149165,
		34.755146, 33.712978, 25.742846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253441, 33.169308, 26.076464>,  <34.073170, 33.831314, 25.847261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253441, 33.169308, 26.076464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623562, 33.320610, 26.065655>,  <34.845634, 33.411392, 26.059170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623562, 33.320610, 26.065655>,  <34.253441, 33.169308, 26.076464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623562, 33.320610, 26.065655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237604, -0.522739, 0.818711,
		0.295560, -0.763978, -0.573569,
		0.925305, 0.378260, -0.027023,
		34.901154, 33.434090, 26.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662373, 32.576733, 26.248577>,  <34.253441, 33.169308, 26.076464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662373, 32.576733, 26.248577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907707, 32.887085, 26.307657>,  <35.054909, 33.073296, 26.343105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907707, 32.887085, 26.307657>,  <34.662373, 32.576733, 26.248577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907707, 32.887085, 26.307657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309442, -0.408116, 0.858887,
		0.726676, -0.481086, -0.490406,
		0.613341, 0.775885, 0.147700,
		35.091709, 33.119850, 26.351967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180580, 32.289928, 26.511034>,  <34.662373, 32.576733, 26.248577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180580, 32.289928, 26.511034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233673, 32.664043, 26.642252>,  <35.265530, 32.888512, 26.720984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233673, 32.664043, 26.642252>,  <35.180580, 32.289928, 26.511034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233673, 32.664043, 26.642252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412805, -0.353069, 0.839604,
		0.901096, 0.023975, -0.432957,
		0.132734, 0.935290, 0.328046,
		35.273495, 32.944630, 26.740665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826077, 32.235111, 26.679825>,  <35.180580, 32.289928, 26.511034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826077, 32.235111, 26.679825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638481, 32.514999, 26.895397>,  <35.525925, 32.682934, 27.024740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638481, 32.514999, 26.895397>,  <35.826077, 32.235111, 26.679825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638481, 32.514999, 26.895397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397122, -0.377970, 0.836321,
		0.788890, 0.606242, -0.100612,
		-0.468985, 0.699721, 0.538929,
		35.497787, 32.724915, 27.057076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254959, 32.284927, 27.312000>,  <35.826077, 32.235111, 26.679825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254959, 32.284927, 27.312000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925255, 32.495285, 27.395929>,  <35.727432, 32.621498, 27.446287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925255, 32.495285, 27.395929>,  <36.254959, 32.284927, 27.312000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925255, 32.495285, 27.395929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094976, -0.236910, 0.966878,
		0.558182, 0.816892, 0.145329,
		-0.824265, 0.525891, 0.209824,
		35.677975, 32.653053, 27.458876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516911, 32.720078, 27.876724>,  <36.254959, 32.284927, 27.312000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516911, 32.720078, 27.876724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.117115, 32.722977, 27.864212>,  <35.877239, 32.724716, 27.856705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.117115, 32.722977, 27.864212>,  <36.516911, 32.720078, 27.876724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117115, 32.722977, 27.864212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032069, -0.177250, 0.983643,
		0.001582, 0.984139, 0.177391,
		-0.999484, 0.007245, -0.031280,
		35.817268, 32.725151, 27.854828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257236, 33.195637, 28.421291>,  <36.516911, 32.720078, 27.876724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257236, 33.195637, 28.421291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971668, 32.919140, 28.376579>,  <35.800327, 32.753242, 28.349752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971668, 32.919140, 28.376579>,  <36.257236, 33.195637, 28.421291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971668, 32.919140, 28.376579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039307, -0.198943, 0.979223,
		-0.699118, 0.694698, 0.169201,
		-0.713925, -0.691243, -0.111779,
		35.757492, 32.711765, 28.343046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854855, 33.147625, 29.043921>,  <36.257236, 33.195637, 28.421291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854855, 33.147625, 29.043921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763767, 32.797112, 28.874088>,  <35.709114, 32.586803, 28.772190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763767, 32.797112, 28.874088>,  <35.854855, 33.147625, 29.043921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763767, 32.797112, 28.874088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045699, -0.445172, 0.894278,
		-0.972654, 0.184241, 0.141420,
		-0.227719, -0.876286, -0.424578,
		35.695450, 32.534225, 28.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378967, 32.891350, 29.531099>,  <35.854855, 33.147625, 29.043921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378967, 32.891350, 29.531099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528862, 32.584682, 29.322561>,  <35.618797, 32.400684, 29.197439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528862, 32.584682, 29.322561>,  <35.378967, 32.891350, 29.531099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528862, 32.584682, 29.322561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113704, -0.520072, 0.846520,
		-0.920134, -0.376498, -0.107715,
		0.374733, -0.766665, -0.521345,
		35.641281, 32.354683, 29.166159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124413, 32.388500, 29.932413>,  <35.378967, 32.891350, 29.531099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124413, 32.388500, 29.932413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.429707, 32.253330, 29.712128>,  <35.612881, 32.172230, 29.579956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.429707, 32.253330, 29.712128>,  <35.124413, 32.388500, 29.932413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429707, 32.253330, 29.712128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329624, -0.529437, 0.781693,
		-0.555718, -0.778142, -0.292697,
		0.763233, -0.337922, -0.550712,
		35.658676, 32.151955, 29.546913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047863, 31.692324, 30.095263>,  <35.124413, 32.388500, 29.932413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047863, 31.692324, 30.095263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419125, 31.776171, 29.972237>,  <35.641880, 31.826479, 29.898422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419125, 31.776171, 29.972237>,  <35.047863, 31.692324, 30.095263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419125, 31.776171, 29.972237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370185, -0.433975, 0.821358,
		0.038695, -0.876200, -0.480392,
		0.928152, 0.209616, -0.307563,
		35.697571, 31.839056, 29.879967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379292, 31.039333, 30.129911>,  <35.047863, 31.692324, 30.095263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379292, 31.039333, 30.129911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691479, 31.286932, 30.094774>,  <35.878792, 31.435492, 30.073692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691479, 31.286932, 30.094774>,  <35.379292, 31.039333, 30.129911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691479, 31.286932, 30.094774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464719, -0.480385, 0.743819,
		0.418225, -0.621346, -0.662583,
		0.780464, 0.618999, -0.087842,
		35.925617, 31.472631, 30.068422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947300, 30.554811, 30.078337>,  <35.379292, 31.039333, 30.129911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947300, 30.554811, 30.078337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063858, 30.917881, 30.199146>,  <36.133793, 31.135723, 30.271631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063858, 30.917881, 30.199146>,  <35.947300, 30.554811, 30.078337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063858, 30.917881, 30.199146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378452, -0.399352, 0.835040,
		0.878556, -0.129029, -0.459881,
		0.291399, 0.907673, 0.302022,
		36.151279, 31.190184, 30.289753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540615, 30.439285, 30.406849>,  <35.947300, 30.554811, 30.078337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540615, 30.439285, 30.406849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479744, 30.816326, 30.525738>,  <36.443222, 31.042551, 30.597071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479744, 30.816326, 30.525738>,  <36.540615, 30.439285, 30.406849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479744, 30.816326, 30.525738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216981, -0.261524, 0.940492,
		0.964242, 0.207611, -0.164729,
		-0.152175, 0.942604, 0.297220,
		36.434090, 31.099108, 30.614904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190857, 30.811378, 30.591930>,  <36.540615, 30.439285, 30.406849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190857, 30.811378, 30.591930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870647, 30.958296, 30.781357>,  <36.678524, 31.046446, 30.895012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870647, 30.958296, 30.781357>,  <37.190857, 30.811378, 30.591930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870647, 30.958296, 30.781357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420480, -0.218838, 0.880515,
		0.427042, 0.903994, 0.020744,
		-0.800519, 0.367294, 0.473565,
		36.630493, 31.068483, 30.923426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519161, 31.152365, 31.114559>,  <37.190857, 30.811378, 30.591930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519161, 31.152365, 31.114559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142326, 31.033012, 31.175797>,  <36.916225, 30.961401, 31.212540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142326, 31.033012, 31.175797>,  <37.519161, 31.152365, 31.114559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142326, 31.033012, 31.175797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225336, -0.225104, 0.947920,
		-0.248379, 0.927522, 0.279304,
		-0.942089, -0.298381, 0.153093,
		36.859699, 30.943499, 31.221724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170139, 30.998922, 31.531126>,  <37.519161, 31.152365, 31.114559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170139, 30.998922, 31.531126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567982, 31.017071, 31.568436>,  <38.806686, 31.027960, 31.590822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567982, 31.017071, 31.568436>,  <38.170139, 30.998922, 31.531126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567982, 31.017071, 31.568436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025497, 0.764727, -0.643850,
		-0.100540, 0.642755, 0.759445,
		0.994606, 0.045369, 0.093274,
		38.866364, 31.030682, 31.596418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383579, 31.731554, 31.557949>,  <38.170139, 30.998922, 31.531126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383579, 31.731554, 31.557949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692547, 31.516624, 31.422504>,  <38.877926, 31.387667, 31.341238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692547, 31.516624, 31.422504>,  <38.383579, 31.731554, 31.557949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692547, 31.516624, 31.422504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127480, 0.653461, -0.746149,
		0.622194, 0.533170, 0.573241,
		0.772414, -0.537326, -0.338611,
		38.924271, 31.355427, 31.320921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946880, 32.171001, 31.443548>,  <38.383579, 31.731554, 31.557949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946880, 32.171001, 31.443548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000168, 31.864962, 31.191553>,  <39.032139, 31.681339, 31.040356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000168, 31.864962, 31.191553>,  <38.946880, 32.171001, 31.443548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000168, 31.864962, 31.191553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067467, 0.641178, -0.764421,
		0.988788, 0.059331, 0.137035,
		0.133217, -0.765095, -0.629986,
		39.040134, 31.635433, 31.002558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451450, 32.383492, 30.955561>,  <38.946880, 32.171001, 31.443548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451450, 32.383492, 30.955561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259705, 32.083351, 30.773493>,  <39.144657, 31.903267, 30.664253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259705, 32.083351, 30.773493>,  <39.451450, 32.383492, 30.955561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259705, 32.083351, 30.773493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135973, 0.448878, -0.883187,
		0.867018, -0.485260, -0.113149,
		-0.479365, -0.750354, -0.455168,
		39.115894, 31.858246, 30.636942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903915, 32.284100, 30.390228>,  <39.451450, 32.383492, 30.955561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903915, 32.284100, 30.390228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578590, 32.070915, 30.296875>,  <39.383396, 31.943005, 30.240862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578590, 32.070915, 30.296875>,  <39.903915, 32.284100, 30.390228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578590, 32.070915, 30.296875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115487, 0.245265, -0.962553,
		0.570245, -0.809812, -0.137928,
		-0.813316, -0.532962, -0.233384,
		39.334595, 31.911026, 30.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125263, 31.860449, 29.821974>,  <39.903915, 32.284100, 30.390228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125263, 31.860449, 29.821974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.728058, 31.907635, 29.822790>,  <39.489735, 31.935946, 29.823280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.728058, 31.907635, 29.822790>,  <40.125263, 31.860449, 29.821974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728058, 31.907635, 29.822790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011777, 0.116324, -0.993142,
		-0.117391, -0.986181, -0.116901,
		-0.993016, 0.117963, 0.002041,
		39.430153, 31.943024, 29.823402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869568, 31.455347, 29.173477>,  <40.125263, 31.860449, 29.821974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869568, 31.455347, 29.173477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581608, 31.711367, 29.280867>,  <39.408833, 31.864979, 29.345301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.581608, 31.711367, 29.280867>,  <39.869568, 31.455347, 29.173477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581608, 31.711367, 29.280867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096882, 0.290358, -0.952001,
		-0.687280, -0.711359, -0.147020,
		-0.719903, 0.640047, 0.268475,
		39.365635, 31.903381, 29.361408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385612, 31.202444, 28.813272>,  <39.869568, 31.455347, 29.173477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385612, 31.202444, 28.813272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299362, 31.583771, 28.897839>,  <39.247612, 31.812567, 28.948578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299362, 31.583771, 28.897839>,  <39.385612, 31.202444, 28.813272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299362, 31.583771, 28.897839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097573, 0.194389, -0.976060,
		-0.971589, -0.231093, 0.051102,
		-0.215627, 0.953315, 0.211415,
		39.234673, 31.869764, 28.961264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925541, 31.416775, 28.273008>,  <39.385612, 31.202444, 28.813272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925541, 31.416775, 28.273008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033993, 31.776178, 28.411095>,  <39.099064, 31.991819, 28.493946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033993, 31.776178, 28.411095>,  <38.925541, 31.416775, 28.273008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033993, 31.776178, 28.411095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064639, 0.374835, -0.924835,
		-0.960370, 0.228437, 0.159708,
		0.271131, 0.898507, 0.345214,
		39.115334, 32.045731, 28.514660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387001, 31.956682, 28.146711>,  <38.925541, 31.416775, 28.273008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387001, 31.956682, 28.146711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740074, 32.143482, 28.167814>,  <38.951920, 32.255562, 28.180477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740074, 32.143482, 28.167814>,  <38.387001, 31.956682, 28.146711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740074, 32.143482, 28.167814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175394, 0.431486, -0.884905,
		-0.436015, 0.771836, 0.462773,
		0.882682, 0.467000, 0.052759,
		39.004879, 32.283581, 28.183641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242260, 32.664070, 27.925596>,  <38.387001, 31.956682, 28.146711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242260, 32.664070, 27.925596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636547, 32.607048, 27.889750>,  <38.873119, 32.572834, 27.868242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636547, 32.607048, 27.889750>,  <38.242260, 32.664070, 27.925596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636547, 32.607048, 27.889750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014975, 0.455894, -0.889908,
		0.167713, 0.878544, 0.447250,
		0.985722, -0.142552, -0.089616,
		38.932262, 32.564281, 27.862865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452007, 33.304382, 27.763863>,  <38.242260, 32.664070, 27.925596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452007, 33.304382, 27.763863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793678, 33.115082, 27.677687>,  <38.998680, 33.001503, 27.625982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793678, 33.115082, 27.677687>,  <38.452007, 33.304382, 27.763863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793678, 33.115082, 27.677687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105897, 0.563960, -0.818984,
		0.509084, 0.676744, 0.531838,
		0.854178, -0.473251, -0.215438,
		39.049931, 32.973106, 27.613056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045246, 33.842350, 27.658371>,  <38.452007, 33.304382, 27.763863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045246, 33.842350, 27.658371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154659, 33.505058, 27.473269>,  <39.220306, 33.302685, 27.362207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154659, 33.505058, 27.473269>,  <39.045246, 33.842350, 27.658371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154659, 33.505058, 27.473269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103375, 0.504091, -0.857442,
		0.956291, 0.186701, 0.225054,
		0.273533, -0.843229, -0.462758,
		39.236721, 33.252090, 27.334442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668392, 33.982861, 27.147625>,  <39.045246, 33.842350, 27.658371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668392, 33.982861, 27.147625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463219, 33.673882, 26.997845>,  <39.340115, 33.488495, 26.907976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.463219, 33.673882, 26.997845>,  <39.668392, 33.982861, 27.147625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463219, 33.673882, 26.997845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021466, 0.424530, -0.905159,
		0.858158, -0.472327, -0.201175,
		-0.512936, -0.772451, -0.374453,
		39.309338, 33.442146, 26.885509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972275, 33.956558, 26.481432>,  <39.668392, 33.982861, 27.147625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972275, 33.956558, 26.481432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640293, 33.734051, 26.464729>,  <39.441105, 33.600544, 26.454708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640293, 33.734051, 26.464729>,  <39.972275, 33.956558, 26.481432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640293, 33.734051, 26.464729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188049, 0.349466, -0.917884,
		0.525187, -0.753945, -0.394646,
		-0.829949, -0.556274, -0.041757,
		39.391308, 33.567169, 26.452202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895382, 33.750610, 25.778257>,  <39.972275, 33.956558, 26.481432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895382, 33.750610, 25.778257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531548, 33.731670, 25.943378>,  <39.313248, 33.720306, 26.042452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531548, 33.731670, 25.943378>,  <39.895382, 33.750610, 25.778257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531548, 33.731670, 25.943378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356739, 0.598367, -0.717422,
		-0.213042, -0.799822, -0.561158,
		-0.909588, -0.047346, 0.412805,
		39.258671, 33.717468, 26.067221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602310, 33.667522, 25.241486>,  <39.895382, 33.750610, 25.778257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602310, 33.667522, 25.241486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331894, 33.795593, 25.506956>,  <39.169643, 33.872437, 25.666239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.331894, 33.795593, 25.506956>,  <39.602310, 33.667522, 25.241486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331894, 33.795593, 25.506956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403949, 0.592244, -0.697188,
		-0.616279, -0.739415, -0.271045,
		-0.676037, 0.320174, 0.663674,
		39.129082, 33.891647, 25.706059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057137, 33.812458, 24.803530>,  <39.602310, 33.667522, 25.241486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057137, 33.812458, 24.803530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957279, 33.978752, 25.153351>,  <38.897366, 34.078529, 25.363243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957279, 33.978752, 25.153351>,  <39.057137, 33.812458, 24.803530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957279, 33.978752, 25.153351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480186, 0.731135, -0.484627,
		-0.840891, -0.540934, 0.017104,
		-0.249646, 0.415731, 0.874554,
		38.882385, 34.103470, 25.415716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.096760, 33.790627, 24.952951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262268, 34.094994, 25.152868>,  <38.361572, 34.277615, 25.272818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262268, 34.094994, 25.152868>,  <38.096760, 33.790627, 24.952951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262268, 34.094994, 25.152868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593722, 0.641722, -0.485476,
		-0.690137, -0.095863, 0.717301,
		0.413769, 0.760922, 0.499792,
		38.386398, 34.323269, 25.302807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596867, 34.129917, 25.234783>,  <38.096760, 33.790627, 24.952951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596867, 34.129917, 25.234783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888260, 34.403481, 25.218910>,  <38.063095, 34.567619, 25.209387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888260, 34.403481, 25.218910>,  <37.596867, 34.129917, 25.234783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888260, 34.403481, 25.218910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626606, 0.641795, -0.442114,
		-0.276897, 0.346941, 0.896080,
		0.728487, 0.683909, -0.039685,
		38.106808, 34.608654, 25.207005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195805, 34.721390, 25.337074>,  <37.596867, 34.129917, 25.234783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195805, 34.721390, 25.337074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535667, 34.851505, 25.171051>,  <37.739586, 34.929573, 25.071438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535667, 34.851505, 25.171051>,  <37.195805, 34.721390, 25.337074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535667, 34.851505, 25.171051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527100, 0.500269, -0.686948,
		-0.015813, 0.802447, 0.596514,
		0.849656, 0.325285, -0.415059,
		37.790565, 34.949089, 25.046534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124565, 35.476887, 25.186508>,  <37.195805, 34.721390, 25.337074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124565, 35.476887, 25.186508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400635, 35.344322, 24.929190>,  <37.566277, 35.264786, 24.774797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400635, 35.344322, 24.929190>,  <37.124565, 35.476887, 25.186508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400635, 35.344322, 24.929190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431029, 0.525801, -0.733313,
		0.581273, 0.783391, 0.220045,
		0.690171, -0.331409, -0.643298,
		37.607685, 35.244900, 24.736200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307133, 36.089169, 24.841646>,  <37.124565, 35.476887, 25.186508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307133, 36.089169, 24.841646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442009, 35.782848, 24.622610>,  <37.522934, 35.599056, 24.491188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.442009, 35.782848, 24.622610>,  <37.307133, 36.089169, 24.841646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442009, 35.782848, 24.622610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120130, 0.541898, -0.831815,
		0.933740, 0.346263, 0.090728,
		0.337192, -0.765799, -0.547588,
		37.543167, 35.553108, 24.458334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795853, 36.313347, 24.403034>,  <37.307133, 36.089169, 24.841646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795853, 36.313347, 24.403034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684250, 35.981636, 24.209354>,  <37.617287, 35.782608, 24.093145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684250, 35.981636, 24.209354>,  <37.795853, 36.313347, 24.403034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684250, 35.981636, 24.209354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011133, 0.506983, -0.861884,
		0.960225, -0.235081, -0.150684,
		-0.279006, -0.829280, -0.484201,
		37.600548, 35.732853, 24.064095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992130, 36.430634, 23.755325>,  <37.795853, 36.313347, 24.403034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992130, 36.430634, 23.755325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816528, 36.076122, 23.696295>,  <37.711166, 35.863415, 23.660877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.816528, 36.076122, 23.696295>,  <37.992130, 36.430634, 23.755325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816528, 36.076122, 23.696295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030640, 0.149387, -0.988304,
		0.897962, -0.438393, -0.038426,
		-0.439006, -0.886282, -0.147576,
		37.684826, 35.810238, 23.652021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385643, 36.152565, 23.231134>,  <37.992130, 36.430634, 23.755325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385643, 36.152565, 23.231134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001976, 36.039490, 23.234676>,  <37.771774, 35.971645, 23.236801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001976, 36.039490, 23.234676>,  <38.385643, 36.152565, 23.231134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001976, 36.039490, 23.234676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056816, 0.161929, -0.985166,
		0.277059, -0.945446, -0.171378,
		-0.959172, -0.282687, 0.008853,
		37.714226, 35.954685, 23.237331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330399, 35.697178, 22.696510>,  <38.385643, 36.152565, 23.231134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330399, 35.697178, 22.696510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959129, 35.828102, 22.767342>,  <37.736366, 35.906654, 22.809839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959129, 35.828102, 22.767342>,  <38.330399, 35.697178, 22.696510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959129, 35.828102, 22.767342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071505, 0.310106, -0.948009,
		-0.365203, -0.892583, -0.264429,
		-0.928178, 0.327307, 0.177076,
		37.680676, 35.926296, 22.820465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858078, 35.358799, 22.228674>,  <38.330399, 35.697178, 22.696510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858078, 35.358799, 22.228674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688145, 35.702232, 22.343466>,  <37.586185, 35.908291, 22.412340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688145, 35.702232, 22.343466>,  <37.858078, 35.358799, 22.228674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688145, 35.702232, 22.343466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290786, 0.170785, -0.941422,
		-0.857298, -0.483398, 0.177108,
		-0.424834, 0.858579, 0.286979,
		37.560696, 35.959805, 22.429560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197559, 35.357746, 21.866158>,  <37.858078, 35.358799, 22.228674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197559, 35.357746, 21.866158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283772, 35.738819, 21.951895>,  <37.335499, 35.967464, 22.003338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.283772, 35.738819, 21.951895>,  <37.197559, 35.357746, 21.866158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283772, 35.738819, 21.951895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117226, 0.243159, -0.962877,
		-0.969435, 0.182404, 0.164088,
		0.215532, 0.952682, 0.214344,
		37.348431, 36.024624, 22.016197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818871, 35.705406, 21.310480>,  <37.197559, 35.357746, 21.866158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818871, 35.705406, 21.310480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042572, 36.002930, 21.456890>,  <37.176792, 36.181446, 21.544737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042572, 36.002930, 21.456890>,  <36.818871, 35.705406, 21.310480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042572, 36.002930, 21.456890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044768, 0.467984, -0.882603,
		-0.827785, 0.477215, 0.295022,
		0.559256, 0.743813, 0.366026,
		37.210350, 36.226074, 21.566698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546577, 36.346039, 21.089809>,  <36.818871, 35.705406, 21.310480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546577, 36.346039, 21.089809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926170, 36.436424, 21.177780>,  <37.153927, 36.490654, 21.230562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926170, 36.436424, 21.177780>,  <36.546577, 36.346039, 21.089809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926170, 36.436424, 21.177780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096177, 0.456818, -0.884346,
		-0.300293, 0.860384, 0.411781,
		0.948986, 0.225959, 0.219929,
		37.210865, 36.504211, 21.243759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587418, 37.037296, 21.046354>,  <36.546577, 36.346039, 21.089809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587418, 37.037296, 21.046354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975651, 36.944668, 21.020010>,  <37.208591, 36.889091, 21.004204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.975651, 36.944668, 21.020010>,  <36.587418, 37.037296, 21.046354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975651, 36.944668, 21.020010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109356, 0.667741, -0.736317,
		0.214490, 0.707456, 0.673424,
		0.970585, -0.231576, -0.065859,
		37.266827, 36.875195, 21.000252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827137, 37.657215, 20.948172>,  <36.587418, 37.037296, 21.046354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827137, 37.657215, 20.948172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113342, 37.410568, 20.816830>,  <37.285065, 37.262581, 20.738026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113342, 37.410568, 20.816830>,  <36.827137, 37.657215, 20.948172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113342, 37.410568, 20.816830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204426, 0.634255, -0.745608,
		0.668015, 0.466372, 0.579873,
		0.715518, -0.616618, -0.328353,
		37.327999, 37.225582, 20.718323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375477, 38.125973, 20.841879>,  <36.827137, 37.657215, 20.948172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375477, 38.125973, 20.841879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436806, 37.803524, 20.613262>,  <37.473602, 37.610054, 20.476093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436806, 37.803524, 20.613262>,  <37.375477, 38.125973, 20.841879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436806, 37.803524, 20.613262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257813, 0.590979, -0.764379,
		0.953952, -0.030154, 0.298439,
		0.153322, -0.806123, -0.571540,
		37.482803, 37.561687, 20.441799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081181, 38.154354, 20.570007>,  <37.375477, 38.125973, 20.841879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081181, 38.154354, 20.570007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902012, 37.918983, 20.300751>,  <37.794510, 37.777760, 20.139196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.902012, 37.918983, 20.300751>,  <38.081181, 38.154354, 20.570007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902012, 37.918983, 20.300751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445506, 0.505873, -0.738659,
		0.775169, -0.630752, 0.035554,
		-0.447925, -0.588425, -0.673141,
		37.767635, 37.742455, 20.098808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531216, 38.083378, 20.063280>,  <38.081181, 38.154354, 20.570007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531216, 38.083378, 20.063280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191231, 37.984631, 19.877108>,  <37.987240, 37.925381, 19.765404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191231, 37.984631, 19.877108>,  <38.531216, 38.083378, 20.063280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191231, 37.984631, 19.877108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255107, 0.580099, -0.773567,
		0.460966, -0.776235, -0.430082,
		-0.849959, -0.246871, -0.465429,
		37.936245, 37.910568, 19.737478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706314, 38.001675, 19.341488>,  <38.531216, 38.083378, 20.063280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706314, 38.001675, 19.341488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307671, 38.030998, 19.356440>,  <38.068485, 38.048592, 19.365412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307671, 38.030998, 19.356440>,  <38.706314, 38.001675, 19.341488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307671, 38.030998, 19.356440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015845, 0.616710, -0.787031,
		-0.080750, -0.783769, -0.615780,
		-0.996608, 0.073310, 0.037381,
		38.008690, 38.052990, 19.367653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337433, 37.756226, 18.687292>,  <38.706314, 38.001675, 19.341488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337433, 37.756226, 18.687292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083645, 38.017639, 18.852385>,  <37.931374, 38.174488, 18.951441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083645, 38.017639, 18.852385>,  <38.337433, 37.756226, 18.687292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083645, 38.017639, 18.852385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036165, 0.508288, -0.860427,
		-0.772102, -0.560841, -0.298858,
		-0.634469, 0.653530, 0.412733,
		37.893303, 38.213699, 18.976204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921051, 38.068920, 18.072035>,  <38.337433, 37.756226, 18.687292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921051, 38.068920, 18.072035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841129, 38.328663, 18.365541>,  <37.793175, 38.484509, 18.541645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.841129, 38.328663, 18.365541>,  <37.921051, 38.068920, 18.072035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841129, 38.328663, 18.365541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220499, 0.699862, -0.679392,
		-0.954703, -0.297541, 0.003347,
		-0.199805, 0.649356, 0.733768,
		37.781189, 38.523468, 18.585672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241367, 38.384899, 17.870319>,  <37.921051, 38.068920, 18.072035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241367, 38.384899, 17.870319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391197, 38.637844, 18.141558>,  <37.481094, 38.789612, 18.304300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.391197, 38.637844, 18.141558>,  <37.241367, 38.384899, 17.870319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391197, 38.637844, 18.141558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316399, 0.774617, -0.547594,
		-0.871542, -0.009435, 0.490230,
		0.374574, 0.632360, 0.678097,
		37.503571, 38.827553, 18.344986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735352, 38.936825, 18.128317>,  <37.241367, 38.384899, 17.870319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735352, 38.936825, 18.128317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109856, 39.077339, 18.126705>,  <37.334557, 39.161648, 18.125738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.109856, 39.077339, 18.126705>,  <36.735352, 38.936825, 18.128317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109856, 39.077339, 18.126705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274304, 0.723813, -0.633128,
		-0.219495, 0.593877, 0.774036,
		0.936258, 0.351290, -0.004029,
		37.390732, 39.182728, 18.125496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218586, 39.251850, 17.666065>,  <36.735352, 38.936825, 18.128317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218586, 39.251850, 17.666065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995598, 39.578445, 17.605959>,  <35.861805, 39.774403, 17.569895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995598, 39.578445, 17.605959>,  <36.218586, 39.251850, 17.666065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995598, 39.578445, 17.605959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488325, -0.176111, 0.854706,
		0.671391, 0.549852, 0.496887,
		-0.557469, 0.816485, -0.150267,
		35.828358, 39.823391, 17.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370140, 39.747482, 18.149078>,  <36.218586, 39.251850, 17.666065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370140, 39.747482, 18.149078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992722, 39.776295, 18.019754>,  <35.766270, 39.793583, 17.942160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992722, 39.776295, 18.019754>,  <36.370140, 39.747482, 18.149078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992722, 39.776295, 18.019754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331128, -0.180347, 0.926190,
		0.008409, 0.980962, 0.194019,
		-0.943548, 0.072034, -0.323308,
		35.709656, 39.797905, 17.922762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940533, 40.180977, 18.631027>,  <36.370140, 39.747482, 18.149078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940533, 40.180977, 18.631027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672031, 39.962341, 18.430761>,  <35.510933, 39.831161, 18.310602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672031, 39.962341, 18.430761>,  <35.940533, 40.180977, 18.631027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672031, 39.962341, 18.430761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537394, -0.106351, 0.836599,
		-0.510521, 0.830621, -0.222344,
		-0.671250, -0.546587, -0.500665,
		35.470657, 39.798367, 18.280561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309807, 40.365826, 18.889494>,  <35.940533, 40.180977, 18.631027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309807, 40.365826, 18.889494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247585, 40.009312, 18.719120>,  <35.210255, 39.795403, 18.616896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247585, 40.009312, 18.719120>,  <35.309807, 40.365826, 18.889494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247585, 40.009312, 18.719120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473808, -0.311030, 0.823873,
		-0.866781, 0.329966, -0.373915,
		-0.155551, -0.891281, -0.425936,
		35.200920, 39.741928, 18.591339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667870, 40.138397, 19.090622>,  <35.309807, 40.365826, 18.889494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667870, 40.138397, 19.090622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826969, 39.786449, 18.986601>,  <34.922428, 39.575283, 18.924189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826969, 39.786449, 18.986601>,  <34.667870, 40.138397, 19.090622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826969, 39.786449, 18.986601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422719, -0.427305, 0.799199,
		-0.814312, -0.207951, -0.541898,
		0.397750, -0.879867, -0.260055,
		34.946293, 39.522488, 18.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231255, 39.694309, 19.386536>,  <34.667870, 40.138397, 19.090622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231255, 39.694309, 19.386536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548042, 39.455368, 19.336014>,  <34.738113, 39.312004, 19.305700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548042, 39.455368, 19.336014>,  <34.231255, 39.694309, 19.386536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548042, 39.455368, 19.336014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236452, -0.490792, 0.838578,
		-0.562923, -0.634259, -0.529937,
		0.791965, -0.597360, -0.126307,
		34.785633, 39.276161, 19.298122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059708, 38.904930, 19.429190>,  <34.231255, 39.694309, 19.386536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059708, 38.904930, 19.429190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452831, 38.911335, 19.502769>,  <34.688705, 38.915176, 19.546917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452831, 38.911335, 19.502769>,  <34.059708, 38.904930, 19.429190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452831, 38.911335, 19.502769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132381, -0.633402, 0.762415,
		0.128724, -0.773657, -0.620391,
		0.982805, 0.016013, 0.183952,
		34.747673, 38.916138, 19.557955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353027, 38.140327, 19.377268>,  <34.059708, 38.904930, 19.429190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353027, 38.140327, 19.377268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628773, 38.355186, 19.571693>,  <34.794220, 38.484100, 19.688349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628773, 38.355186, 19.571693>,  <34.353027, 38.140327, 19.377268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628773, 38.355186, 19.571693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144944, -0.759676, 0.633942,
		0.709771, -0.366562, -0.601546,
		0.689360, 0.537144, 0.486065,
		34.835579, 38.516331, 19.717512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936218, 37.725342, 19.410828>,  <34.353027, 38.140327, 19.377268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936218, 37.725342, 19.410828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972618, 37.984215, 19.713583>,  <34.994457, 38.139538, 19.895237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.972618, 37.984215, 19.713583>,  <34.936218, 37.725342, 19.410828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972618, 37.984215, 19.713583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283696, -0.745396, 0.603243,
		0.954587, 0.159831, -0.251432,
		0.090999, 0.647178, 0.756888,
		34.999916, 38.178368, 19.940649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330750, 37.402378, 19.825264>,  <34.936218, 37.725342, 19.410828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330750, 37.402378, 19.825264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239868, 37.696053, 20.081182>,  <35.185337, 37.872257, 20.234734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239868, 37.696053, 20.081182>,  <35.330750, 37.402378, 19.825264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239868, 37.696053, 20.081182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078804, -0.640965, 0.763514,
		0.970653, 0.223895, 0.087775,
		-0.227208, 0.734190, 0.639798,
		35.171707, 37.916309, 20.273123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893879, 37.442905, 20.357464>,  <35.330750, 37.402378, 19.825264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893879, 37.442905, 20.357464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564983, 37.597721, 20.524372>,  <35.367645, 37.690613, 20.624517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564983, 37.597721, 20.524372>,  <35.893879, 37.442905, 20.357464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564983, 37.597721, 20.524372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052000, -0.679011, 0.732284,
		0.566757, 0.623813, 0.538185,
		-0.822242, 0.387042, 0.417272,
		35.318310, 37.713833, 20.649553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056232, 37.634052, 21.046179>,  <35.893879, 37.442905, 20.357464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056232, 37.634052, 21.046179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659508, 37.583466, 21.039066>,  <35.421474, 37.553112, 21.034800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659508, 37.583466, 21.039066>,  <36.056232, 37.634052, 21.046179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659508, 37.583466, 21.039066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049831, -0.511397, 0.857898,
		-0.117590, 0.849987, 0.513511,
		-0.991811, -0.126469, -0.017780,
		35.361965, 37.545525, 21.033731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900639, 37.746372, 21.767256>,  <36.056232, 37.634052, 21.046179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900639, 37.746372, 21.767256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.593048, 37.554527, 21.598186>,  <35.408493, 37.439423, 21.496746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.593048, 37.554527, 21.598186>,  <35.900639, 37.746372, 21.767256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593048, 37.554527, 21.598186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060545, -0.603560, 0.795015,
		-0.636403, 0.636939, 0.435086,
		-0.768977, -0.479608, -0.422671,
		35.362354, 37.410645, 21.471386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362675, 37.681667, 22.290356>,  <35.900639, 37.746372, 21.767256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362675, 37.681667, 22.290356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252937, 37.396408, 22.032316>,  <35.187096, 37.225254, 21.877493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252937, 37.396408, 22.032316>,  <35.362675, 37.681667, 22.290356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252937, 37.396408, 22.032316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217544, -0.607422, 0.764011,
		-0.936701, 0.349940, 0.011501,
		-0.274344, -0.713148, -0.645101,
		35.170635, 37.182465, 21.838785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908756, 37.311832, 22.628723>,  <35.362675, 37.681667, 22.290356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908756, 37.311832, 22.628723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990646, 37.075333, 22.316694>,  <35.039780, 36.933434, 22.129477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990646, 37.075333, 22.316694>,  <34.908756, 37.311832, 22.628723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990646, 37.075333, 22.316694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023985, -0.793683, 0.607859,
		-0.978526, -0.143153, -0.148304,
		0.204723, -0.591249, -0.780073,
		35.052063, 36.897957, 22.082672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327637, 36.738632, 22.637245>,  <34.908756, 37.311832, 22.628723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327637, 36.738632, 22.637245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644253, 36.598377, 22.437037>,  <34.834221, 36.514225, 22.316912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644253, 36.598377, 22.437037>,  <34.327637, 36.738632, 22.637245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644253, 36.598377, 22.437037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068493, -0.762966, 0.642801,
		-0.607267, -0.543085, -0.579902,
		0.791540, -0.350632, -0.500521,
		34.881714, 36.493187, 22.286880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140934, 36.102085, 22.255449>,  <34.327637, 36.738632, 22.637245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140934, 36.102085, 22.255449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536232, 36.079697, 22.312355>,  <34.773411, 36.066265, 22.346498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536232, 36.079697, 22.312355>,  <34.140934, 36.102085, 22.255449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536232, 36.079697, 22.312355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114472, -0.887716, 0.445934,
		0.101333, -0.456978, -0.883687,
		0.988245, -0.055969, 0.142266,
		34.832706, 36.062904, 22.355034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370308, 35.439491, 21.975328>,  <34.140934, 36.102085, 22.255449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370308, 35.439491, 21.975328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638966, 35.558914, 22.246552>,  <34.800159, 35.630566, 22.409285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.638966, 35.558914, 22.246552>,  <34.370308, 35.439491, 21.975328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638966, 35.558914, 22.246552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266216, -0.756833, 0.596936,
		0.691394, -0.581437, -0.428842,
		0.671643, 0.298553, 0.678058,
		34.840458, 35.648479, 22.449968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603245, 34.865807, 22.184303>,  <34.370308, 35.439491, 21.975328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603245, 34.865807, 22.184303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758785, 35.083416, 22.481714>,  <34.852112, 35.213982, 22.660160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.758785, 35.083416, 22.481714>,  <34.603245, 34.865807, 22.184303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758785, 35.083416, 22.481714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018810, -0.802184, 0.596781,
		0.921107, -0.246047, -0.301699,
		0.388854, 0.544024, 0.743526,
		34.875443, 35.246624, 22.704771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159622, 34.519417, 22.416039>,  <34.603245, 34.865807, 22.184303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159622, 34.519417, 22.416039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094959, 34.753578, 22.733822>,  <35.056164, 34.894077, 22.924492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094959, 34.753578, 22.733822>,  <35.159622, 34.519417, 22.416039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094959, 34.753578, 22.733822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126541, -0.786107, 0.604999,
		0.978701, 0.198332, 0.052999,
		-0.161653, 0.585407, 0.794460,
		35.046463, 34.929199, 22.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624790, 34.476475, 22.993584>,  <35.159622, 34.519417, 22.416039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624790, 34.476475, 22.993584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323498, 34.624435, 23.211140>,  <35.142723, 34.713211, 23.341673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323498, 34.624435, 23.211140>,  <35.624790, 34.476475, 22.993584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323498, 34.624435, 23.211140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236159, -0.619669, 0.748491,
		0.613897, 0.692233, 0.379400,
		-0.753233, 0.369898, 0.543890,
		35.097527, 34.735405, 23.374306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.073986, 32.295383, 27.233644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760441, 32.511948, 27.355259>,  <39.572315, 32.641884, 27.428226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760441, 32.511948, 27.355259>,  <40.073986, 32.295383, 27.233644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760441, 32.511948, 27.355259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099089, -0.374296, 0.922000,
		0.612978, 0.752847, 0.239749,
		-0.783862, 0.541409, 0.304034,
		39.525284, 32.674370, 27.446468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294445, 32.665588, 27.906521>,  <40.073986, 32.295383, 27.233644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294445, 32.665588, 27.906521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895462, 32.637989, 27.899485>,  <39.656071, 32.621429, 27.895262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895462, 32.637989, 27.899485>,  <40.294445, 32.665588, 27.906521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895462, 32.637989, 27.899485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000751, -0.236845, 0.971547,
		-0.071206, 0.969094, 0.236192,
		-0.997461, -0.069003, -0.017592,
		39.596222, 32.617287, 27.894207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031780, 33.003124, 28.461187>,  <40.294445, 32.665588, 27.906521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031780, 33.003124, 28.461187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.720703, 32.766457, 28.376225>,  <39.534058, 32.624454, 28.325247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.720703, 32.766457, 28.376225>,  <40.031780, 33.003124, 28.461187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720703, 32.766457, 28.376225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133227, -0.175086, 0.975498,
		-0.614364, 0.786936, 0.057337,
		-0.777693, -0.591672, -0.212408,
		39.487396, 32.588955, 28.312502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644260, 33.176392, 28.905756>,  <40.031780, 33.003124, 28.461187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644260, 33.176392, 28.905756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478069, 32.831070, 28.791159>,  <39.378353, 32.623878, 28.722401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478069, 32.831070, 28.791159>,  <39.644260, 33.176392, 28.905756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478069, 32.831070, 28.791159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180546, -0.230428, 0.956194,
		-0.891503, 0.449006, -0.060127,
		-0.415482, -0.863306, -0.286493,
		39.353424, 32.572079, 28.705212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952637, 33.101200, 29.297972>,  <39.644260, 33.176392, 28.905756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952637, 33.101200, 29.297972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.054817, 32.731964, 29.182980>,  <39.116123, 32.510422, 29.113985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.054817, 32.731964, 29.182980>,  <38.952637, 33.101200, 29.297972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054817, 32.731964, 29.182980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358500, -0.366584, 0.858542,
		-0.897900, -0.116250, -0.424571,
		0.255447, -0.923094, -0.287481,
		39.131451, 32.455036, 29.096735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401459, 32.706688, 29.580900>,  <38.952637, 33.101200, 29.297972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401459, 32.706688, 29.580900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700920, 32.449211, 29.517439>,  <38.880596, 32.294724, 29.479362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700920, 32.449211, 29.517439>,  <38.401459, 32.706688, 29.580900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700920, 32.449211, 29.517439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198839, -0.446314, 0.872506,
		-0.632438, -0.621660, -0.462127,
		0.748656, -0.643695, -0.158656,
		38.925518, 32.256104, 29.469843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084591, 32.080513, 29.797304>,  <38.401459, 32.706688, 29.580900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084591, 32.080513, 29.797304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.479729, 32.022442, 29.819555>,  <38.716812, 31.987598, 29.832905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.479729, 32.022442, 29.819555>,  <38.084591, 32.080513, 29.797304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479729, 32.022442, 29.819555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135758, -0.631088, 0.763739,
		-0.075775, -0.762004, -0.643124,
		0.987840, -0.145181, 0.055627,
		38.776081, 31.978888, 29.836243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196316, 31.353571, 29.959658>,  <38.084591, 32.080513, 29.797304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196316, 31.353571, 29.959658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542664, 31.535452, 30.043104>,  <38.750473, 31.644581, 30.093172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542664, 31.535452, 30.043104>,  <38.196316, 31.353571, 29.959658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542664, 31.535452, 30.043104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079940, -0.537399, 0.839531,
		0.493846, -0.710246, -0.501665,
		0.865867, 0.454702, 0.208615,
		38.802425, 31.671862, 30.105688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670036, 30.838514, 30.101822>,  <38.196316, 31.353571, 29.959658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670036, 30.838514, 30.101822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823452, 31.166725, 30.271355>,  <38.915501, 31.363651, 30.373074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.823452, 31.166725, 30.271355>,  <38.670036, 30.838514, 30.101822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823452, 31.166725, 30.271355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150070, -0.508201, 0.848063,
		0.911250, -0.261662, -0.318052,
		0.383540, 0.820527, 0.423830,
		38.938515, 31.412884, 30.398504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339169, 30.541086, 30.390310>,  <38.670036, 30.838514, 30.101822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339169, 30.541086, 30.390310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238506, 30.882509, 30.572786>,  <39.178108, 31.087364, 30.682272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238506, 30.882509, 30.572786>,  <39.339169, 30.541086, 30.390310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238506, 30.882509, 30.572786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055769, -0.457785, 0.887312,
		0.966209, 0.248736, 0.067601,
		-0.251653, 0.853559, 0.456188,
		39.163010, 31.138577, 30.709642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923836, 30.608570, 30.798714>,  <39.339169, 30.541086, 30.390310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923836, 30.608570, 30.798714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626369, 30.830797, 30.947470>,  <39.447891, 30.964134, 31.036724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.626369, 30.830797, 30.947470>,  <39.923836, 30.608570, 30.798714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626369, 30.830797, 30.947470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113628, -0.443136, 0.889224,
		0.658824, 0.703543, 0.266416,
		-0.743666, 0.555570, 0.371891,
		39.403271, 30.997469, 31.059036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147152, 30.760498, 31.324915>,  <39.923836, 30.608570, 30.798714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147152, 30.760498, 31.324915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768425, 30.845877, 31.421228>,  <39.541187, 30.897104, 31.479017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768425, 30.845877, 31.421228>,  <40.147152, 30.760498, 31.324915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768425, 30.845877, 31.421228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179648, -0.270168, 0.945905,
		0.266951, 0.938856, 0.217455,
		-0.946818, 0.213444, 0.240785,
		39.484379, 30.909910, 31.493464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081184, 31.039408, 31.965345>,  <40.147152, 30.760498, 31.324915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081184, 31.039408, 31.965345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699799, 30.920460, 31.985239>,  <39.470966, 30.849091, 31.997175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699799, 30.920460, 31.985239>,  <40.081184, 31.039408, 31.965345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699799, 30.920460, 31.985239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148195, -0.318581, 0.936240,
		-0.262567, 0.900043, 0.347825,
		-0.953466, -0.297371, 0.049734,
		39.413757, 30.831249, 32.000160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790077, 31.266804, 32.570122>,  <40.081184, 31.039408, 31.965345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790077, 31.266804, 32.570122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543968, 30.961472, 32.491364>,  <39.396301, 30.778273, 32.444107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543968, 30.961472, 32.491364>,  <39.790077, 31.266804, 32.570122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543968, 30.961472, 32.491364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005219, -0.253705, 0.967268,
		-0.788297, 0.594106, 0.160082,
		-0.615273, -0.763330, -0.196895,
		39.359386, 30.732473, 32.432297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756683, 32.029472, 32.633785>,  <39.790077, 31.266804, 32.570122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756683, 32.029472, 32.633785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768078, 32.350597, 32.872009>,  <39.774914, 32.543270, 33.014942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768078, 32.350597, 32.872009>,  <39.756683, 32.029472, 32.633785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768078, 32.350597, 32.872009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518503, 0.521244, -0.677834,
		-0.854601, -0.289486, 0.431108,
		0.028489, 0.802809, 0.595555,
		39.776623, 32.591438, 33.050674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982666, 32.356129, 32.704552>,  <39.756683, 32.029472, 32.633785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982666, 32.356129, 32.704552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220619, 32.664753, 32.794708>,  <39.363392, 32.849926, 32.848804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.220619, 32.664753, 32.794708>,  <38.982666, 32.356129, 32.704552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220619, 32.664753, 32.794708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508318, 0.578323, -0.638087,
		-0.622673, 0.265018, 0.736236,
		0.594887, 0.771562, 0.225393,
		39.399086, 32.896221, 32.862328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562710, 32.921978, 32.870396>,  <38.982666, 32.356129, 32.704552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562710, 32.921978, 32.870396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917519, 33.093792, 32.802635>,  <39.130402, 33.196880, 32.761978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917519, 33.093792, 32.802635>,  <38.562710, 32.921978, 32.870396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917519, 33.093792, 32.802635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431362, 0.640038, -0.635828,
		-0.164687, 0.637065, 0.753011,
		0.887020, 0.429533, -0.169400,
		39.183624, 33.222652, 32.751816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476292, 33.649128, 33.081039>,  <38.562710, 32.921978, 32.870396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476292, 33.649128, 33.081039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786572, 33.641468, 32.828716>,  <38.972740, 33.636871, 32.677322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786572, 33.641468, 32.828716>,  <38.476292, 33.649128, 33.081039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786572, 33.641468, 32.828716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383284, 0.779791, -0.494995,
		0.501375, 0.625747, 0.597548,
		0.775704, -0.019148, -0.630807,
		39.019283, 33.635723, 32.639473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632542, 34.375607, 33.014961>,  <38.476292, 33.649128, 33.081039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632542, 34.375607, 33.014961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821041, 34.218693, 32.698978>,  <38.934139, 34.124542, 32.509388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821041, 34.218693, 32.698978>,  <38.632542, 34.375607, 33.014961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821041, 34.218693, 32.698978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200196, 0.824694, -0.528962,
		0.858982, 0.407418, 0.310098,
		0.471244, -0.392288, -0.789961,
		38.962414, 34.101006, 32.461990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025314, 34.932659, 32.685223>,  <38.632542, 34.375607, 33.014961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025314, 34.932659, 32.685223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023941, 34.660732, 32.391872>,  <39.023117, 34.497578, 32.215862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023941, 34.660732, 32.391872>,  <39.025314, 34.932659, 32.685223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023941, 34.660732, 32.391872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175377, 0.722422, -0.668842,
		0.984495, 0.126322, -0.121702,
		-0.003431, -0.679815, -0.733375,
		39.022911, 34.456787, 32.171860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531532, 35.210182, 32.160267>,  <39.025314, 34.932659, 32.685223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531532, 35.210182, 32.160267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287373, 34.960136, 31.965685>,  <39.140877, 34.810108, 31.848934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287373, 34.960136, 31.965685>,  <39.531532, 35.210182, 32.160267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287373, 34.960136, 31.965685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090816, 0.665322, -0.741012,
		0.786873, -0.408133, -0.462881,
		-0.610397, -0.625119, -0.486459,
		39.104252, 34.772602, 31.819748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721645, 35.213348, 31.461515>,  <39.531532, 35.210182, 32.160267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721645, 35.213348, 31.461515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354107, 35.058311, 31.431894>,  <39.133583, 34.965290, 31.414122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354107, 35.058311, 31.431894>,  <39.721645, 35.213348, 31.461515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354107, 35.058311, 31.431894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152439, 0.521745, -0.839372,
		0.363973, -0.759969, -0.538490,
		-0.918850, -0.387596, -0.074053,
		39.078453, 34.942032, 31.409678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647209, 35.065304, 30.832346>,  <39.721645, 35.213348, 31.461515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647209, 35.065304, 30.832346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270130, 35.088493, 30.963779>,  <39.043884, 35.102406, 31.042639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270130, 35.088493, 30.963779>,  <39.647209, 35.065304, 30.832346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270130, 35.088493, 30.963779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259026, 0.493591, -0.830225,
		-0.210318, -0.867760, -0.450288,
		-0.942694, 0.057975, 0.328584,
		38.987324, 35.105885, 31.062355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270363, 34.915142, 30.195358>,  <39.647209, 35.065304, 30.832346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270363, 34.915142, 30.195358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010937, 35.057514, 30.464481>,  <38.855282, 35.142937, 30.625956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010937, 35.057514, 30.464481>,  <39.270363, 34.915142, 30.195358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010937, 35.057514, 30.464481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520384, 0.437732, -0.733206,
		-0.555482, -0.825653, -0.098677,
		-0.648568, 0.355933, 0.672808,
		38.816368, 35.164295, 30.666325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586582, 34.739498, 29.915958>,  <39.270363, 34.915142, 30.195358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586582, 34.739498, 29.915958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555893, 35.047516, 30.169302>,  <38.537479, 35.232327, 30.321308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555893, 35.047516, 30.169302>,  <38.586582, 34.739498, 29.915958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555893, 35.047516, 30.169302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380318, 0.564600, -0.732520,
		-0.921668, -0.297079, 0.249544,
		-0.076724, 0.770046, 0.633358,
		38.532875, 35.278530, 30.359310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040367, 35.060127, 29.652752>,  <38.586582, 34.739498, 29.915958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040367, 35.060127, 29.652752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187794, 35.351505, 29.883759>,  <38.276249, 35.526333, 30.022362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187794, 35.351505, 29.883759>,  <38.040367, 35.060127, 29.652752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187794, 35.351505, 29.883759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305031, 0.681620, -0.665094,
		-0.878132, 0.068970, 0.473421,
		0.368565, 0.728448, 0.577515,
		38.298363, 35.570042, 30.057013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491962, 35.573078, 29.905666>,  <38.040367, 35.060127, 29.652752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491962, 35.573078, 29.905666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847610, 35.756145, 29.906153>,  <38.061001, 35.865986, 29.906445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847610, 35.756145, 29.906153>,  <37.491962, 35.573078, 29.905666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847610, 35.756145, 29.906153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351060, 0.683718, -0.639755,
		-0.293623, 0.568396, 0.768578,
		0.889124, 0.457664, 0.001215,
		38.114349, 35.893444, 29.906517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367821, 36.231434, 29.769913>,  <37.491962, 35.573078, 29.905666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367821, 36.231434, 29.769913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764584, 36.239559, 29.719776>,  <38.002640, 36.244434, 29.689693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764584, 36.239559, 29.719776>,  <37.367821, 36.231434, 29.769913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764584, 36.239559, 29.719776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110354, 0.626237, -0.771783,
		0.062815, 0.779368, 0.623409,
		0.991905, 0.020316, -0.125343,
		38.062157, 36.245655, 29.682173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142590, 36.905766, 30.158884>,  <37.367821, 36.231434, 29.769913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142590, 36.905766, 30.158884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749184, 36.967861, 30.195961>,  <36.513138, 37.005119, 30.218208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749184, 36.967861, 30.195961>,  <37.142590, 36.905766, 30.158884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749184, 36.967861, 30.195961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005433, -0.487055, 0.873354,
		0.180728, 0.859463, 0.478184,
		-0.983518, 0.155242, 0.092695,
		36.454128, 37.014435, 30.223770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996975, 36.999649, 30.790541>,  <37.142590, 36.905766, 30.158884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996975, 36.999649, 30.790541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617695, 36.921947, 30.690002>,  <36.390125, 36.875328, 30.629679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.617695, 36.921947, 30.690002>,  <36.996975, 36.999649, 30.790541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617695, 36.921947, 30.690002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098244, -0.573122, 0.813560,
		-0.302085, 0.796115, 0.524353,
		-0.948205, -0.194250, -0.251345,
		36.333233, 36.863674, 30.614599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561939, 37.101326, 31.398855>,  <36.996975, 36.999649, 30.790541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561939, 37.101326, 31.398855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.365192, 36.874649, 31.134453>,  <36.247147, 36.738644, 30.975811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.365192, 36.874649, 31.134453>,  <36.561939, 37.101326, 31.398855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365192, 36.874649, 31.134453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116891, -0.709338, 0.695109,
		-0.862790, 0.419164, 0.282656,
		-0.491863, -0.566693, -0.661007,
		36.217632, 36.704639, 30.936152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061279, 36.927521, 31.867519>,  <36.561939, 37.101326, 31.398855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061279, 36.927521, 31.867519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.062580, 36.663452, 31.567076>,  <36.063362, 36.505013, 31.386810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.062580, 36.663452, 31.567076>,  <36.061279, 36.927521, 31.867519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062580, 36.663452, 31.567076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004576, -0.751116, 0.660155,
		-0.999984, 0.001288, -0.005466,
		0.003256, -0.660169, -0.751110,
		36.063557, 36.465401, 31.341743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517208, 36.476425, 32.053894>,  <36.061279, 36.927521, 31.867519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517208, 36.476425, 32.053894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.768509, 36.289349, 31.805193>,  <35.919289, 36.177105, 31.655973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.768509, 36.289349, 31.805193>,  <35.517208, 36.476425, 32.053894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768509, 36.289349, 31.805193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113698, -0.845762, 0.521306,
		-0.769661, -0.256818, -0.584523,
		0.628248, -0.467687, -0.621750,
		35.956985, 36.149044, 31.618668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101379, 35.947342, 31.938410>,  <35.517208, 36.476425, 32.053894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101379, 35.947342, 31.938410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490177, 35.873055, 31.880802>,  <35.723454, 35.828484, 31.846237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.490177, 35.873055, 31.880802>,  <35.101379, 35.947342, 31.938410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490177, 35.873055, 31.880802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062972, -0.796213, 0.601730,
		-0.226418, -0.575808, -0.785608,
		0.971992, -0.185714, -0.144018,
		35.781776, 35.817341, 31.837597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124607, 35.233189, 31.677057>,  <35.101379, 35.947342, 31.938410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124607, 35.233189, 31.677057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473362, 35.324753, 31.850225>,  <35.682613, 35.379692, 31.954126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.473362, 35.324753, 31.850225>,  <35.124607, 35.233189, 31.677057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473362, 35.324753, 31.850225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091656, -0.792129, 0.603433,
		0.481059, -0.565803, -0.669663,
		0.871884, 0.228908, 0.432920,
		35.734928, 35.393425, 31.980101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137959, 34.751415, 32.218178>,  <35.124607, 35.233189, 31.677057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137959, 34.751415, 32.218178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.502953, 34.908051, 32.265564>,  <35.721951, 35.002029, 32.293995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.502953, 34.908051, 32.265564>,  <35.137959, 34.751415, 32.218178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502953, 34.908051, 32.265564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198938, -0.677733, 0.707885,
		0.357487, -0.622365, -0.696322,
		0.912484, 0.391585, 0.118469,
		35.776699, 35.025524, 32.301105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728706, 34.174538, 32.108418>,  <35.137959, 34.751415, 32.218178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728706, 34.174538, 32.108418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811405, 34.475006, 32.359177>,  <35.861023, 34.655285, 32.509632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.811405, 34.475006, 32.359177>,  <35.728706, 34.174538, 32.108418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811405, 34.475006, 32.359177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045710, -0.632629, 0.773105,
		0.977327, -0.188490, -0.096456,
		0.206743, 0.751167, 0.626901,
		35.873428, 34.700356, 32.547249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277073, 33.871178, 32.564201>,  <35.728706, 34.174538, 32.108418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277073, 33.871178, 32.564201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.150093, 34.202492, 32.748882>,  <36.073906, 34.401279, 32.859692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.150093, 34.202492, 32.748882>,  <36.277073, 33.871178, 32.564201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150093, 34.202492, 32.748882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068359, -0.505610, 0.860050,
		0.945809, 0.241458, 0.217125,
		-0.317446, 0.828285, 0.461705,
		36.054859, 34.450977, 32.887394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644459, 33.909809, 33.184605>,  <36.277073, 33.871178, 32.564201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644459, 33.909809, 33.184605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302361, 34.104248, 33.256458>,  <36.097103, 34.220913, 33.299568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.302361, 34.104248, 33.256458>,  <36.644459, 33.909809, 33.184605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302361, 34.104248, 33.256458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093590, -0.485804, 0.869043,
		0.509708, 0.726430, 0.460974,
		-0.855242, 0.486100, 0.179632,
		36.045788, 34.250076, 33.310349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605194, 33.935566, 33.918930>,  <36.644459, 33.909809, 33.184605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605194, 33.935566, 33.918930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234703, 34.034229, 33.804897>,  <36.012409, 34.093426, 33.736477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234703, 34.034229, 33.804897>,  <36.605194, 33.935566, 33.918930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234703, 34.034229, 33.804897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366212, -0.409294, 0.835684,
		0.089442, 0.878431, 0.469425,
		-0.926223, 0.246654, -0.285084,
		35.956837, 34.108227, 33.719372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.240292, 39.885727, 27.632767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897190, 39.693848, 27.558863>,  <36.691330, 39.578720, 27.514521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897190, 39.693848, 27.558863>,  <37.240292, 39.885727, 27.632767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897190, 39.693848, 27.558863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013386, -0.380139, 0.924832,
		-0.513879, 0.790809, 0.332489,
		-0.857758, -0.479703, -0.184760,
		36.639862, 39.549938, 27.503435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828705, 40.067905, 28.232149>,  <37.240292, 39.885727, 27.632767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828705, 40.067905, 28.232149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668411, 39.739765, 28.068962>,  <36.572235, 39.542881, 27.971050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668411, 39.739765, 28.068962>,  <36.828705, 40.067905, 28.232149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668411, 39.739765, 28.068962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180921, -0.365660, 0.912995,
		-0.898152, 0.439682, -0.001884,
		-0.400739, -0.820349, -0.407966,
		36.548191, 39.493660, 27.946571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306644, 39.878189, 28.733778>,  <36.828705, 40.067905, 28.232149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306644, 39.878189, 28.733778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349705, 39.532604, 28.537008>,  <36.375542, 39.325253, 28.418947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349705, 39.532604, 28.537008>,  <36.306644, 39.878189, 28.733778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349705, 39.532604, 28.537008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098932, -0.501652, 0.859394,
		-0.989254, -0.043847, -0.139476,
		0.107650, -0.863958, -0.491923,
		36.382000, 39.273418, 28.389431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798912, 39.353420, 28.995798>,  <36.306644, 39.878189, 28.733778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798912, 39.353420, 28.995798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076527, 39.126984, 28.817877>,  <36.243095, 38.991123, 28.711124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076527, 39.126984, 28.817877>,  <35.798912, 39.353420, 28.995798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076527, 39.126984, 28.817877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186391, -0.738058, 0.648481,
		-0.695392, -0.367163, -0.617755,
		0.694038, -0.566093, -0.444804,
		36.284737, 38.957157, 28.684435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460938, 38.765766, 29.097967>,  <35.798912, 39.353420, 28.995798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460938, 38.765766, 29.097967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826031, 38.659695, 28.973642>,  <36.045086, 38.596054, 28.899048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826031, 38.659695, 28.973642>,  <35.460938, 38.765766, 29.097967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826031, 38.659695, 28.973642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026487, -0.797553, 0.602668,
		-0.407701, -0.541841, -0.734975,
		0.912731, -0.265175, -0.310811,
		36.099850, 38.580143, 28.880400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439404, 38.058746, 28.784134>,  <35.460938, 38.765766, 29.097967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439404, 38.058746, 28.784134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803852, 38.138325, 28.928513>,  <36.022522, 38.186069, 29.015141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803852, 38.138325, 28.928513>,  <35.439404, 38.058746, 28.784134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803852, 38.138325, 28.928513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041994, -0.826415, 0.561494,
		0.409999, -0.526746, -0.744608,
		0.911119, 0.198942, 0.360949,
		36.077187, 38.198006, 29.036797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586929, 37.410416, 28.855688>,  <35.439404, 38.058746, 28.784134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586929, 37.410416, 28.855688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857140, 37.610222, 29.072630>,  <36.019264, 37.730106, 29.202795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857140, 37.610222, 29.072630>,  <35.586929, 37.410416, 28.855688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857140, 37.610222, 29.072630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030376, -0.753786, 0.656417,
		0.736710, -0.426952, -0.524375,
		0.675526, 0.499517, 0.542353,
		36.059799, 37.760078, 29.235336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233730, 36.983299, 29.030655>,  <35.586929, 37.410416, 28.855688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233730, 36.983299, 29.030655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214386, 37.256615, 29.322073>,  <36.202782, 37.420605, 29.496923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214386, 37.256615, 29.322073>,  <36.233730, 36.983299, 29.030655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214386, 37.256615, 29.322073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057118, -0.730099, 0.680950,
		0.997196, -0.008684, 0.074333,
		-0.048357, 0.683286, 0.728547,
		36.199879, 37.461601, 29.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861168, 36.907150, 29.382315>,  <36.233730, 36.983299, 29.030655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861168, 36.907150, 29.382315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583725, 37.072929, 29.617990>,  <36.417259, 37.172398, 29.759396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583725, 37.072929, 29.617990>,  <36.861168, 36.907150, 29.382315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583725, 37.072929, 29.617990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078161, -0.769785, 0.633500,
		0.716103, 0.485450, 0.501532,
		-0.693604, 0.414451, 0.589189,
		36.375645, 37.197266, 29.794746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609180, 36.930576, 29.584244>,  <36.861168, 36.907150, 29.382315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609180, 36.930576, 29.584244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927700, 36.716148, 29.472143>,  <38.118813, 36.587494, 29.404882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927700, 36.716148, 29.472143>,  <37.609180, 36.930576, 29.584244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927700, 36.716148, 29.472143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197293, 0.668126, -0.717414,
		0.571825, 0.515984, 0.637790,
		0.796299, -0.536067, -0.280251,
		38.166588, 36.555328, 29.388067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083309, 37.496151, 29.444490>,  <37.609180, 36.930576, 29.584244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083309, 37.496151, 29.444490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197399, 37.152386, 29.274757>,  <38.265854, 36.946125, 29.172916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197399, 37.152386, 29.274757>,  <38.083309, 37.496151, 29.444490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197399, 37.152386, 29.274757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274567, 0.497433, -0.822905,
		0.918292, 0.118204, 0.377846,
		0.285224, -0.859412, -0.424334,
		38.282967, 36.894562, 29.147457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765179, 37.687595, 28.948187>,  <38.083309, 37.496151, 29.444490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765179, 37.687595, 28.948187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602917, 37.344223, 28.822620>,  <38.505558, 37.138199, 28.747280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602917, 37.344223, 28.822620>,  <38.765179, 37.687595, 28.948187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602917, 37.344223, 28.822620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036842, 0.327809, -0.944025,
		0.913284, -0.394513, -0.101351,
		-0.405654, -0.858429, -0.313918,
		38.481220, 37.086693, 28.728445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215809, 37.259045, 28.528332>,  <38.765179, 37.687595, 28.948187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215809, 37.259045, 28.528332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852154, 37.132030, 28.420530>,  <38.633961, 37.055820, 28.355850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852154, 37.132030, 28.420530>,  <39.215809, 37.259045, 28.528332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852154, 37.132030, 28.420530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230381, 0.155661, -0.960570,
		0.346970, -0.935381, -0.068363,
		-0.909140, -0.317539, -0.269504,
		38.579411, 37.036770, 28.339680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348030, 36.802601, 27.983086>,  <39.215809, 37.259045, 28.528332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348030, 36.802601, 27.983086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968952, 36.915321, 27.923124>,  <38.741505, 36.982952, 27.887148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968952, 36.915321, 27.923124>,  <39.348030, 36.802601, 27.983086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968952, 36.915321, 27.923124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215047, 0.216635, -0.952273,
		-0.235877, -0.934696, -0.265903,
		-0.947690, 0.281801, -0.149905,
		38.684647, 36.999863, 27.878153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051029, 36.352859, 27.454411>,  <39.348030, 36.802601, 27.983086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051029, 36.352859, 27.454411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848469, 36.697750, 27.458775>,  <38.726933, 36.904686, 27.461393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848469, 36.697750, 27.458775>,  <39.051029, 36.352859, 27.454411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848469, 36.697750, 27.458775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115978, 0.080643, -0.989973,
		-0.854463, -0.500057, -0.140837,
		-0.506401, 0.862229, 0.010911,
		38.696548, 36.956417, 27.462048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626583, 36.321712, 26.894882>,  <39.051029, 36.352859, 27.454411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626583, 36.321712, 26.894882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621082, 36.712315, 26.980902>,  <38.617783, 36.946674, 27.032515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621082, 36.712315, 26.980902>,  <38.626583, 36.321712, 26.894882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621082, 36.712315, 26.980902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192218, 0.213641, -0.957815,
		-0.981256, 0.028169, -0.190639,
		-0.013747, 0.976506, 0.215051,
		38.616959, 37.005268, 27.045418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162529, 36.571335, 26.419060>,  <38.626583, 36.321712, 26.894882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162529, 36.571335, 26.419060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396446, 36.876297, 26.529881>,  <38.536797, 37.059273, 26.596373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396446, 36.876297, 26.529881>,  <38.162529, 36.571335, 26.419060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396446, 36.876297, 26.529881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001181, 0.342340, -0.939576,
		-0.811182, 0.549130, 0.201098,
		0.584793, 0.762404, 0.277052,
		38.571884, 37.105019, 26.612995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929047, 37.072926, 25.891777>,  <38.162529, 36.571335, 26.419060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929047, 37.072926, 25.891777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256958, 37.221436, 26.066189>,  <38.453705, 37.310543, 26.170835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256958, 37.221436, 26.066189>,  <37.929047, 37.072926, 25.891777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256958, 37.221436, 26.066189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180641, 0.554867, -0.812091,
		-0.543450, 0.744497, 0.387798,
		0.819775, 0.371278, 0.436029,
		38.502892, 37.332821, 26.196997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876259, 37.841759, 25.794146>,  <37.929047, 37.072926, 25.891777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876259, 37.841759, 25.794146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258018, 37.742813, 25.861002>,  <38.487076, 37.683445, 25.901115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258018, 37.742813, 25.861002>,  <37.876259, 37.841759, 25.794146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258018, 37.742813, 25.861002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279627, 0.544620, -0.790694,
		0.104557, 0.801375, 0.588953,
		0.954399, -0.247360, 0.167143,
		38.544338, 37.668606, 25.911144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218578, 38.395184, 25.982214>,  <37.876259, 37.841759, 25.794146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218578, 38.395184, 25.982214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496414, 38.142860, 25.843866>,  <38.663116, 37.991467, 25.760859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496414, 38.142860, 25.843866>,  <38.218578, 38.395184, 25.982214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496414, 38.142860, 25.843866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252648, 0.664036, -0.703723,
		0.673585, 0.401414, 0.620604,
		0.694588, -0.630812, -0.345868,
		38.704792, 37.953617, 25.740107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771854, 38.892933, 25.834726>,  <38.218578, 38.395184, 25.982214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771854, 38.892933, 25.834726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823032, 38.551586, 25.632580>,  <38.853741, 38.346779, 25.511292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823032, 38.551586, 25.632580>,  <38.771854, 38.892933, 25.834726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823032, 38.551586, 25.632580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185089, 0.521148, -0.833154,
		0.974357, 0.013060, 0.224627,
		0.127945, -0.853366, -0.505367,
		38.861416, 38.295578, 25.480970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409355, 38.896320, 25.495182>,  <38.771854, 38.892933, 25.834726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409355, 38.896320, 25.495182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224903, 38.627258, 25.263702>,  <39.114231, 38.465820, 25.124815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224903, 38.627258, 25.263702>,  <39.409355, 38.896320, 25.495182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224903, 38.627258, 25.263702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478842, 0.360424, -0.800503,
		0.747040, -0.646243, 0.155893,
		-0.461132, -0.672655, -0.578699,
		39.086563, 38.425461, 25.090094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864773, 38.830734, 24.960402>,  <39.409355, 38.896320, 25.495182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864773, 38.830734, 24.960402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540390, 38.651619, 24.809759>,  <39.345760, 38.544147, 24.719374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540390, 38.651619, 24.809759>,  <39.864773, 38.830734, 24.960402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540390, 38.651619, 24.809759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225967, 0.354023, -0.907528,
		0.539709, -0.821067, -0.185912,
		-0.810958, -0.447791, -0.376604,
		39.297104, 38.517281, 24.696777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.158039, 37.292007, 24.099619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495163, 37.505733, 24.125511>,  <32.697437, 37.633968, 24.141047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495163, 37.505733, 24.125511>,  <32.158039, 37.292007, 24.099619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495163, 37.505733, 24.125511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192079, -0.410950, 0.891194,
		0.502777, -0.738669, -0.448981,
		0.842806, 0.534311, 0.064733,
		32.748005, 37.666027, 24.144932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654984, 36.838272, 24.294111>,  <32.158039, 37.292007, 24.099619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654984, 36.838272, 24.294111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.846390, 37.176056, 24.390371>,  <32.961235, 37.378727, 24.448128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.846390, 37.176056, 24.390371>,  <32.654984, 36.838272, 24.294111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846390, 37.176056, 24.390371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458620, -0.474071, 0.751615,
		0.748792, -0.249294, -0.614136,
		0.478517, 0.844458, 0.240649,
		32.989944, 37.429394, 24.462566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441055, 36.634449, 24.354795>,  <32.654984, 36.838272, 24.294111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441055, 36.634449, 24.354795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.341766, 36.957340, 24.568998>,  <33.282192, 37.151073, 24.697519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.341766, 36.957340, 24.568998>,  <33.441055, 36.634449, 24.354795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341766, 36.957340, 24.568998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306198, -0.459081, 0.833959,
		0.919036, 0.370981, -0.133216,
		-0.248226, 0.807228, 0.535505,
		33.267300, 37.199509, 24.729650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089703, 36.864311, 24.684246>,  <33.441055, 36.634449, 24.354795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089703, 36.864311, 24.684246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790802, 37.025967, 24.895262>,  <33.611462, 37.122959, 25.021872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790802, 37.025967, 24.895262>,  <34.089703, 36.864311, 24.684246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790802, 37.025967, 24.895262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395850, -0.366939, 0.841819,
		0.533782, 0.837873, 0.114218,
		-0.747248, 0.404134, 0.527537,
		33.566628, 37.147205, 25.053522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349262, 36.702896, 25.406734>,  <34.089703, 36.864311, 24.684246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349262, 36.702896, 25.406734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.001781, 36.883095, 25.489115>,  <33.793293, 36.991215, 25.538544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.001781, 36.883095, 25.489115>,  <34.349262, 36.702896, 25.406734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001781, 36.883095, 25.489115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127360, -0.198664, 0.971757,
		0.478687, 0.870395, 0.115204,
		-0.868699, 0.450495, 0.205951,
		33.741173, 37.018242, 25.550900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488888, 37.306534, 25.913023>,  <34.349262, 36.702896, 25.406734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488888, 37.306534, 25.913023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113644, 37.168816, 25.928047>,  <33.888496, 37.086185, 25.937061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113644, 37.168816, 25.928047>,  <34.488888, 37.306534, 25.913023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113644, 37.168816, 25.928047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156905, -0.325812, 0.932324,
		-0.308752, 0.880517, 0.359669,
		-0.938111, -0.344291, 0.037563,
		33.832211, 37.065529, 25.939316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430481, 37.191093, 26.588116>,  <34.488888, 37.306534, 25.913023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430481, 37.191093, 26.588116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.104191, 36.986328, 26.480379>,  <33.908417, 36.863468, 26.415737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.104191, 36.986328, 26.480379>,  <34.430481, 37.191093, 26.588116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104191, 36.986328, 26.480379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029715, -0.502099, 0.864299,
		-0.577677, 0.697026, 0.424786,
		-0.815724, -0.511909, -0.269339,
		33.859474, 36.832756, 26.399578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225918, 36.986271, 27.263498>,  <34.430481, 37.191093, 26.588116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225918, 36.986271, 27.263498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.023827, 36.737530, 27.024153>,  <33.902573, 36.588284, 26.880547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.023827, 36.737530, 27.024153>,  <34.225918, 36.986271, 27.263498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023827, 36.737530, 27.024153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154778, -0.747416, 0.646075,
		-0.848992, 0.233803, 0.473866,
		-0.505229, -0.621857, -0.598362,
		33.872257, 36.550972, 26.844645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712673, 36.713913, 27.706987>,  <34.225918, 36.986271, 27.263498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712673, 36.713913, 27.706987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767712, 36.452271, 27.409475>,  <33.800735, 36.295284, 27.230968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767712, 36.452271, 27.409475>,  <33.712673, 36.713913, 27.706987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767712, 36.452271, 27.409475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226146, -0.710341, 0.666539,
		-0.964327, -0.259915, 0.050185,
		0.137595, -0.654111, -0.743779,
		33.808990, 36.256039, 27.186342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228695, 36.191814, 27.904797>,  <33.712673, 36.713913, 27.706987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228695, 36.191814, 27.904797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521423, 36.036266, 27.680935>,  <33.697060, 35.942940, 27.546618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.521423, 36.036266, 27.680935>,  <33.228695, 36.191814, 27.904797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521423, 36.036266, 27.680935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043197, -0.793099, 0.607559,
		-0.680121, -0.468803, -0.563613,
		0.731826, -0.388867, -0.559654,
		33.740971, 35.919605, 27.513039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101593, 35.541176, 27.846542>,  <33.228695, 36.191814, 27.904797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101593, 35.541176, 27.846542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482552, 35.534164, 27.724802>,  <33.711128, 35.529957, 27.651758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.482552, 35.534164, 27.724802>,  <33.101593, 35.541176, 27.846542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482552, 35.534164, 27.724802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140805, -0.860178, 0.490171,
		-0.270387, -0.509693, -0.816764,
		0.952399, -0.017531, -0.304349,
		33.768272, 35.528904, 27.633497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205868, 34.880512, 27.649446>,  <33.101593, 35.541176, 27.846542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205868, 34.880512, 27.649446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.572796, 35.021214, 27.724060>,  <33.792953, 35.105637, 27.768829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.572796, 35.021214, 27.724060>,  <33.205868, 34.880512, 27.649446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572796, 35.021214, 27.724060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152036, -0.742454, 0.652417,
		0.367987, -0.570113, -0.734546,
		0.917317, 0.351758, 0.186535,
		33.847992, 35.126740, 27.780020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639771, 34.276024, 27.572630>,  <33.205868, 34.880512, 27.649446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639771, 34.276024, 27.572630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.816048, 34.546719, 27.808533>,  <33.921814, 34.709137, 27.950075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.816048, 34.546719, 27.808533>,  <33.639771, 34.276024, 27.572630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816048, 34.546719, 27.808533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058056, -0.677109, 0.733589,
		0.895777, -0.289052, -0.337688,
		0.440697, 0.676737, 0.589757,
		33.948257, 34.749741, 27.985460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338474, 33.956657, 27.724735>,  <33.639771, 34.276024, 27.572630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338474, 33.956657, 27.724735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208027, 34.234146, 27.981607>,  <34.129761, 34.400639, 28.135731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208027, 34.234146, 27.981607>,  <34.338474, 33.956657, 27.724735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208027, 34.234146, 27.981607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085175, -0.654996, 0.750817,
		0.941485, 0.299551, 0.154517,
		-0.326115, 0.693722, 0.642183,
		34.110191, 34.442265, 28.174263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033405, 33.773544, 27.640051>,  <34.338474, 33.956657, 27.724735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033405, 33.773544, 27.640051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201752, 33.460880, 27.455929>,  <35.302757, 33.273281, 27.345455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.201752, 33.460880, 27.455929>,  <35.033405, 33.773544, 27.640051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201752, 33.460880, 27.455929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004203, 0.509107, -0.860693,
		0.907114, 0.360300, 0.217550,
		0.420864, -0.781661, -0.460304,
		35.328011, 33.226383, 27.317837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283073, 34.132820, 27.116385>,  <35.033405, 33.773544, 27.640051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283073, 34.132820, 27.116385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317478, 33.757835, 26.981462>,  <35.338120, 33.532845, 26.900509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317478, 33.757835, 26.981462>,  <35.283073, 34.132820, 27.116385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317478, 33.757835, 26.981462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173099, 0.319351, -0.931693,
		0.981142, 0.138520, -0.134807,
		0.086007, -0.937458, -0.337306,
		35.343281, 33.476597, 26.880270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859207, 34.181034, 26.641611>,  <35.283073, 34.132820, 27.116385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859207, 34.181034, 26.641611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630680, 33.863136, 26.559668>,  <35.493565, 33.672398, 26.510502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630680, 33.863136, 26.559668>,  <35.859207, 34.181034, 26.641611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630680, 33.863136, 26.559668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135356, 0.337433, -0.931567,
		0.809487, -0.504496, -0.300357,
		-0.571322, -0.794747, -0.204861,
		35.459282, 33.624714, 26.498209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197472, 33.657677, 26.093861>,  <35.859207, 34.181034, 26.641611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197472, 33.657677, 26.093861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800327, 33.610695, 26.085466>,  <35.562042, 33.582504, 26.080429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800327, 33.610695, 26.085466>,  <36.197472, 33.657677, 26.093861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800327, 33.610695, 26.085466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006514, 0.228995, -0.973406,
		0.119137, -0.966316, -0.228124,
		-0.992856, -0.117455, -0.020987,
		35.502472, 33.575459, 26.079170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025234, 33.347935, 25.514935>,  <36.197472, 33.657677, 26.093861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025234, 33.347935, 25.514935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648880, 33.465172, 25.582842>,  <35.423065, 33.535515, 25.623587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648880, 33.465172, 25.582842>,  <36.025234, 33.347935, 25.514935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648880, 33.465172, 25.582842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064915, 0.335885, -0.939663,
		-0.332434, -0.895140, -0.297005,
		-0.940889, 0.293096, 0.169768,
		35.366611, 33.553101, 25.633772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602112, 33.068470, 24.845488>,  <36.025234, 33.347935, 25.514935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602112, 33.068470, 24.845488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392532, 33.355736, 25.028666>,  <35.266785, 33.528095, 25.138573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.392532, 33.355736, 25.028666>,  <35.602112, 33.068470, 24.845488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392532, 33.355736, 25.028666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292588, 0.353177, -0.888627,
		-0.799917, -0.599586, 0.025079,
		-0.523951, 0.718166, 0.457944,
		35.235348, 33.571186, 25.166048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115299, 33.177975, 24.382936>,  <35.602112, 33.068470, 24.845488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115299, 33.177975, 24.382936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090794, 33.504475, 24.612715>,  <35.076092, 33.700375, 24.750582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090794, 33.504475, 24.612715>,  <35.115299, 33.177975, 24.382936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090794, 33.504475, 24.612715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176693, 0.557570, -0.811107,
		-0.982358, -0.151190, 0.110067,
		-0.061261, 0.816245, 0.574448,
		35.072414, 33.749348, 24.785049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538483, 33.453426, 24.042997>,  <35.115299, 33.177975, 24.382936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538483, 33.453426, 24.042997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707211, 33.725517, 24.282785>,  <34.808449, 33.888771, 24.426659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707211, 33.725517, 24.282785>,  <34.538483, 33.453426, 24.042997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707211, 33.725517, 24.282785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158099, 0.706223, -0.690111,
		-0.892789, 0.196327, 0.405442,
		0.421820, 0.680224, 0.599469,
		34.833755, 33.929585, 24.462626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179886, 34.054401, 23.907730>,  <34.538483, 33.453426, 24.042997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179886, 34.054401, 23.907730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529823, 34.191566, 24.044582>,  <34.739784, 34.273865, 24.126694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529823, 34.191566, 24.044582>,  <34.179886, 34.054401, 23.907730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529823, 34.191566, 24.044582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005166, 0.699652, -0.714465,
		-0.484376, 0.626813, 0.610315,
		0.874845, 0.342917, 0.342132,
		34.792278, 34.294441, 24.147223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002274, 34.737438, 23.868923>,  <34.179886, 34.054401, 23.907730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002274, 34.737438, 23.868923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400063, 34.699318, 23.886526>,  <34.638737, 34.676445, 23.897087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400063, 34.699318, 23.886526>,  <34.002274, 34.737438, 23.868923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400063, 34.699318, 23.886526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101893, 0.775637, -0.622901,
		0.025231, 0.623944, 0.781062,
		0.994475, -0.095301, 0.044006,
		34.698406, 34.670727, 23.899727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234303, 35.371021, 24.034428>,  <34.002274, 34.737438, 23.868923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234303, 35.371021, 24.034428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.518234, 35.165722, 23.841465>,  <34.688595, 35.042542, 23.725687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.518234, 35.165722, 23.841465>,  <34.234303, 35.371021, 24.034428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518234, 35.165722, 23.841465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082159, 0.740529, -0.666983,
		0.699567, 0.433810, 0.567817,
		0.709828, -0.513250, -0.482408,
		34.731182, 35.011745, 23.696743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735329, 35.755104, 23.905411>,  <34.234303, 35.371021, 24.034428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735329, 35.755104, 23.905411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820656, 35.484097, 23.623856>,  <34.871853, 35.321491, 23.454922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820656, 35.484097, 23.623856>,  <34.735329, 35.755104, 23.905411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820656, 35.484097, 23.623856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166324, 0.735142, -0.657194,
		0.962720, 0.023120, 0.269510,
		0.213322, -0.677519, -0.703890,
		34.884651, 35.280842, 23.412689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242332, 35.990070, 23.679047>,  <34.735329, 35.755104, 23.905411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242332, 35.990070, 23.679047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.110176, 35.776825, 23.367500>,  <35.030884, 35.648876, 23.180573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.110176, 35.776825, 23.367500>,  <35.242332, 35.990070, 23.679047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110176, 35.776825, 23.367500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401170, 0.667635, -0.627157,
		0.854345, -0.519663, -0.006709,
		-0.330390, -0.533117, -0.778864,
		35.011059, 35.616890, 23.133841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784973, 35.900333, 23.219025>,  <35.242332, 35.990070, 23.679047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784973, 35.900333, 23.219025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457436, 35.856434, 22.993654>,  <35.260914, 35.830093, 22.858433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457436, 35.856434, 22.993654>,  <35.784973, 35.900333, 23.219025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457436, 35.856434, 22.993654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386034, 0.621145, -0.682024,
		0.424819, -0.775973, -0.466255,
		-0.818844, -0.109747, -0.563426,
		35.211781, 35.823509, 22.824627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458923, 35.547249, 23.328176>,  <35.784973, 35.900333, 23.219025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458923, 35.547249, 23.328176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.837296, 35.673473, 23.298151>,  <37.064320, 35.749210, 23.280136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.837296, 35.673473, 23.298151>,  <36.458923, 35.547249, 23.328176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837296, 35.673473, 23.298151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231870, -0.496007, 0.836788,
		0.226829, -0.808948, -0.542358,
		0.945931, 0.315564, -0.075063,
		37.121075, 35.768143, 23.275633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895515, 34.953083, 23.229288>,  <36.458923, 35.547249, 23.328176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895515, 34.953083, 23.229288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101959, 35.250553, 23.399265>,  <37.225826, 35.429035, 23.501251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101959, 35.250553, 23.399265>,  <36.895515, 34.953083, 23.229288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101959, 35.250553, 23.399265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277850, -0.614662, 0.738235,
		0.810205, -0.262938, -0.523862,
		0.516107, 0.743677, 0.424945,
		37.256790, 35.473656, 23.526749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241615, 34.576591, 23.592525>,  <36.895515, 34.953083, 23.229288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241615, 34.576591, 23.592525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365234, 34.933975, 23.722889>,  <37.439407, 35.148407, 23.801107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365234, 34.933975, 23.722889>,  <37.241615, 34.576591, 23.592525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365234, 34.933975, 23.722889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469228, -0.441319, 0.764894,
		0.827232, -0.083466, -0.555626,
		0.309051, 0.893460, 0.325908,
		37.457951, 35.202015, 23.820662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929890, 34.588188, 23.617311>,  <37.241615, 34.576591, 23.592525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929890, 34.588188, 23.617311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817257, 34.876774, 23.870359>,  <37.749680, 35.049923, 24.022188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.817257, 34.876774, 23.870359>,  <37.929890, 34.588188, 23.617311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817257, 34.876774, 23.870359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562163, -0.410262, 0.718094,
		0.777616, 0.557835, -0.290057,
		-0.281578, 0.721460, 0.632620,
		37.732784, 35.093212, 24.060146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536182, 34.814072, 23.972187>,  <37.929890, 34.588188, 23.617311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536182, 34.814072, 23.972187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265003, 34.971207, 24.220722>,  <38.102295, 35.065487, 24.369844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265003, 34.971207, 24.220722>,  <38.536182, 34.814072, 23.972187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265003, 34.971207, 24.220722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486030, -0.394591, 0.779790,
		0.551503, 0.830650, 0.076585,
		-0.677953, 0.392834, 0.621339,
		38.061619, 35.089058, 24.407124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907036, 35.320061, 24.508108>,  <38.536182, 34.814072, 23.972187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907036, 35.320061, 24.508108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565342, 35.185116, 24.666330>,  <38.360325, 35.104149, 24.761263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565342, 35.185116, 24.666330>,  <38.907036, 35.320061, 24.508108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565342, 35.185116, 24.666330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515547, -0.451677, 0.728148,
		-0.066986, 0.825939, 0.559765,
		-0.854239, -0.337361, 0.395555,
		38.309071, 35.083908, 24.784996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060715, 35.430634, 25.153137>,  <38.907036, 35.320061, 24.508108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060715, 35.430634, 25.153137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746399, 35.183666, 25.167738>,  <38.557812, 35.035484, 25.176498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.746399, 35.183666, 25.167738>,  <39.060715, 35.430634, 25.153137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746399, 35.183666, 25.167738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368190, -0.419538, 0.829713,
		-0.496969, 0.665416, 0.556995,
		-0.785785, -0.617422, 0.036502,
		38.510662, 34.998440, 25.178688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019131, 35.257221, 25.882858>,  <39.060715, 35.430634, 25.153137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019131, 35.257221, 25.882858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834805, 34.960182, 25.688454>,  <38.724209, 34.781960, 25.571812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834805, 34.960182, 25.688454>,  <39.019131, 35.257221, 25.882858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834805, 34.960182, 25.688454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354238, -0.656006, 0.666462,
		-0.813735, 0.134953, 0.565352,
		-0.460815, -0.742593, -0.486009,
		38.696560, 34.737404, 25.542650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757351, 34.836159, 26.426374>,  <39.019131, 35.257221, 25.882858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757351, 34.836159, 26.426374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765133, 34.581715, 26.117834>,  <38.769802, 34.429047, 25.932709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765133, 34.581715, 26.117834>,  <38.757351, 34.836159, 26.426374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765133, 34.581715, 26.117834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262627, -0.741155, 0.617832,
		-0.964701, -0.214600, 0.152638,
		0.019458, -0.636110, -0.771353,
		38.770969, 34.390881, 25.886429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256424, 34.379856, 26.608238>,  <38.757351, 34.836159, 26.426374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256424, 34.379856, 26.608238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.505844, 34.223003, 26.337706>,  <38.655495, 34.128891, 26.175386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.505844, 34.223003, 26.337706>,  <38.256424, 34.379856, 26.608238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505844, 34.223003, 26.337706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164538, -0.779905, 0.603883,
		-0.764278, -0.487830, -0.421784,
		0.623544, -0.392135, -0.676331,
		38.692909, 34.105362, 26.134808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153690, 33.632011, 26.718466>,  <38.256424, 34.379856, 26.608238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153690, 33.632011, 26.718466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491379, 33.655209, 26.505323>,  <38.693993, 33.669125, 26.377438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491379, 33.655209, 26.505323>,  <38.153690, 33.632011, 26.718466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491379, 33.655209, 26.505323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283478, -0.892024, 0.352043,
		-0.454903, -0.448253, -0.769501,
		0.844217, 0.057991, -0.532854,
		38.744644, 33.672607, 26.345467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309624, 32.906891, 26.489046>,  <38.153690, 33.632011, 26.718466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309624, 32.906891, 26.489046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.650257, 33.114223, 26.457716>,  <38.854637, 33.238625, 26.438917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.650257, 33.114223, 26.457716>,  <38.309624, 32.906891, 26.489046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650257, 33.114223, 26.457716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438004, -0.621443, 0.649585,
		0.288028, -0.587483, -0.756243,
		0.851583, 0.518336, -0.078327,
		38.905731, 33.269726, 26.434217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880821, 32.349182, 26.402567>,  <38.309624, 32.906891, 26.489046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880821, 32.349182, 26.402567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976562, 32.706676, 26.554325>,  <39.034008, 32.921173, 26.645380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976562, 32.706676, 26.554325>,  <38.880821, 32.349182, 26.402567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976562, 32.706676, 26.554325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359319, -0.444546, 0.820530,
		0.901999, -0.060070, -0.427539,
		0.239350, 0.893740, 0.379395,
		39.048367, 32.974800, 26.668144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569252, 32.180347, 26.721478>,  <38.880821, 32.349182, 26.402567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569252, 32.180347, 26.721478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459259, 32.513649, 26.913340>,  <39.393265, 32.713631, 27.028458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459259, 32.513649, 26.913340>,  <39.569252, 32.180347, 26.721478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459259, 32.513649, 26.913340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211814, -0.434128, 0.875596,
		0.937827, 0.342373, -0.057117,
		-0.274984, 0.833255, 0.479656,
		39.376762, 32.763626, 27.057236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.165520, 38.428856, 24.319695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.767475, 38.432064, 24.280310>,  <39.528648, 38.433990, 24.256680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.767475, 38.432064, 24.280310>,  <40.165520, 38.428856, 24.319695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767475, 38.432064, 24.280310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098476, 0.159637, -0.982252,
		0.007837, -0.987143, -0.159646,
		-0.995109, 0.008023, -0.098461,
		39.468941, 38.434471, 24.250771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960415, 38.043613, 23.677210>,  <40.165520, 38.428856, 24.319695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960415, 38.043613, 23.677210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.679440, 38.318542, 23.751160>,  <39.510857, 38.483498, 23.795528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.679440, 38.318542, 23.751160>,  <39.960415, 38.043613, 23.677210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679440, 38.318542, 23.751160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010066, 0.269313, -0.963000,
		-0.711677, -0.674583, -0.196093,
		-0.702434, 0.687320, 0.184873,
		39.468708, 38.524738, 23.806622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559834, 37.913593, 23.194040>,  <39.960415, 38.043613, 23.677210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559834, 37.913593, 23.194040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 38.285007, 23.297853>,  <39.389942, 38.507854, 23.360142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 38.285007, 23.297853>,  <39.559834, 37.913593, 23.194040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453651, 38.285007, 23.297853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005654, 0.270686, -0.962651,
		-0.964107, -0.254074, -0.077104,
		-0.265455, 0.928534, 0.259534,
		39.374016, 38.563568, 23.375713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129967, 38.039433, 22.702047>,  <39.559834, 37.913593, 23.194040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129967, 38.039433, 22.702047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229176, 38.405880, 22.828035>,  <39.288700, 38.625748, 22.903627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.229176, 38.405880, 22.828035>,  <39.129967, 38.039433, 22.702047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229176, 38.405880, 22.828035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016207, 0.329007, -0.944188,
		-0.968619, 0.229072, 0.096448,
		0.248020, 0.916122, 0.314970,
		39.303581, 38.680717, 22.922525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591660, 38.518894, 22.356220>,  <39.129967, 38.039433, 22.702047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591660, 38.518894, 22.356220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902344, 38.737755, 22.481022>,  <39.088757, 38.869072, 22.555902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902344, 38.737755, 22.481022>,  <38.591660, 38.518894, 22.356220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902344, 38.737755, 22.481022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102570, 0.598620, -0.794439,
		-0.621447, 0.585049, 0.521077,
		0.776713, 0.547148, 0.312002,
		39.135357, 38.901901, 22.574623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354027, 39.179436, 22.334297>,  <38.591660, 38.518894, 22.356220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354027, 39.179436, 22.334297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750717, 39.199051, 22.286852>,  <38.988731, 39.210819, 22.258385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.750717, 39.199051, 22.286852>,  <38.354027, 39.179436, 22.334297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750717, 39.199051, 22.286852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117531, 0.718347, -0.685685,
		0.051582, 0.693955, 0.718169,
		0.991729, 0.049038, -0.118615,
		39.048237, 39.213764, 22.251268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477337, 39.931808, 22.338276>,  <38.354027, 39.179436, 22.334297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477337, 39.931808, 22.338276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779381, 39.736961, 22.162767>,  <38.960609, 39.620052, 22.057463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.779381, 39.736961, 22.162767>,  <38.477337, 39.931808, 22.338276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779381, 39.736961, 22.162767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080229, 0.732903, -0.675586,
		0.650668, 0.474942, 0.592505,
		0.755112, -0.487118, -0.438772,
		39.005913, 39.590824, 22.031136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612583, 40.521057, 21.985170>,  <38.477337, 39.931808, 22.338276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612583, 40.521057, 21.985170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851952, 40.231144, 21.848591>,  <38.995571, 40.057198, 21.766644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851952, 40.231144, 21.848591>,  <38.612583, 40.521057, 21.985170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851952, 40.231144, 21.848591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183339, 0.538753, -0.822273,
		0.779924, 0.429463, 0.455280,
		0.598419, -0.724781, -0.341449,
		39.031479, 40.013710, 21.746157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294205, 40.831863, 21.768347>,  <38.612583, 40.521057, 21.985170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294205, 40.831863, 21.768347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253216, 40.494667, 21.557116>,  <39.228622, 40.292351, 21.430376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253216, 40.494667, 21.557116>,  <39.294205, 40.831863, 21.768347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253216, 40.494667, 21.557116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193176, 0.503903, -0.841882,
		0.975799, -0.188281, 0.111209,
		-0.102471, -0.842990, -0.528079,
		39.222473, 40.241772, 21.398691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874954, 40.879467, 21.307159>,  <39.294205, 40.831863, 21.768347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874954, 40.879467, 21.307159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598560, 40.627544, 21.165236>,  <39.432724, 40.476391, 21.080080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.598560, 40.627544, 21.165236>,  <39.874954, 40.879467, 21.307159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598560, 40.627544, 21.165236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058499, 0.537944, -0.840948,
		0.720502, -0.560323, -0.408552,
		-0.690980, -0.629805, -0.354812,
		39.391266, 40.438602, 21.058792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903954, 40.929729, 20.555363>,  <39.874954, 40.879467, 21.307159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903954, 40.929729, 20.555363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.547615, 40.753437, 20.599443>,  <39.333813, 40.647659, 20.625893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.547615, 40.753437, 20.599443>,  <39.903954, 40.929729, 20.555363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547615, 40.753437, 20.599443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337231, 0.478985, -0.810462,
		0.304413, -0.759161, -0.575332,
		-0.890846, -0.440735, 0.110204,
		39.280361, 40.621216, 20.632505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666943, 40.637161, 19.904438>,  <39.903954, 40.929729, 20.555363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666943, 40.637161, 19.904438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362671, 40.726879, 20.148096>,  <39.180107, 40.780708, 20.294291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362671, 40.726879, 20.148096>,  <39.666943, 40.637161, 19.904438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362671, 40.726879, 20.148096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466328, 0.463967, -0.753175,
		-0.451556, -0.856987, -0.248336,
		-0.760681, 0.224295, 0.609144,
		39.134468, 40.794167, 20.330839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080173, 40.454765, 19.609217>,  <39.666943, 40.637161, 19.904438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080173, 40.454765, 19.609217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.930557, 40.708126, 19.880182>,  <38.840786, 40.860142, 20.042763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.930557, 40.708126, 19.880182>,  <39.080173, 40.454765, 19.609217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930557, 40.708126, 19.880182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604942, 0.387011, -0.695893,
		-0.702950, -0.670089, 0.238415,
		-0.374041, 0.633405, 0.677415,
		38.818344, 40.898148, 20.083406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248184, 40.421528, 19.574869>,  <39.080173, 40.454765, 19.609217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248184, 40.421528, 19.574869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389946, 40.774651, 19.698189>,  <38.475002, 40.986523, 19.772181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389946, 40.774651, 19.698189>,  <38.248184, 40.421528, 19.574869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389946, 40.774651, 19.698189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466415, 0.452649, -0.759977,
		-0.810464, 0.125545, 0.572176,
		0.354407, 0.882807, 0.308300,
		38.496269, 41.039494, 19.790678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066284, 39.694134, 19.221561>,  <38.248184, 40.421528, 19.574869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066284, 39.694134, 19.221561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891487, 39.435539, 18.971413>,  <37.786610, 39.280380, 18.821323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891487, 39.435539, 18.971413>,  <38.066284, 39.694134, 19.221561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891487, 39.435539, 18.971413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101886, -0.726375, 0.679705,
		-0.893678, 0.233307, 0.383286,
		-0.436989, -0.646489, -0.625374,
		37.760391, 39.241592, 18.783800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476349, 39.364368, 19.593931>,  <38.066284, 39.694134, 19.221561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476349, 39.364368, 19.593931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570957, 39.107914, 19.301905>,  <37.627720, 38.954041, 19.126688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.570957, 39.107914, 19.301905>,  <37.476349, 39.364368, 19.593931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570957, 39.107914, 19.301905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194403, -0.767420, 0.610962,
		-0.951981, -0.002576, -0.306147,
		0.236517, -0.641140, -0.730068,
		37.641911, 38.915573, 19.082884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904510, 38.849598, 19.476110>,  <37.476349, 39.364368, 19.593931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904510, 38.849598, 19.476110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.217270, 38.650440, 19.326048>,  <37.404926, 38.530945, 19.236010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.217270, 38.650440, 19.326048>,  <36.904510, 38.849598, 19.476110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217270, 38.650440, 19.326048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262929, -0.809018, 0.525698,
		-0.565247, -0.312403, -0.763479,
		0.781897, -0.497890, -0.375155,
		37.451839, 38.501072, 19.213501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667999, 38.176437, 19.299994>,  <36.904510, 38.849598, 19.476110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667999, 38.176437, 19.299994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064198, 38.121700, 19.294325>,  <37.301914, 38.088860, 19.290924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064198, 38.121700, 19.294325>,  <36.667999, 38.176437, 19.299994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064198, 38.121700, 19.294325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121828, -0.920322, 0.371707,
		-0.063908, -0.366446, -0.928242,
		0.990492, -0.136841, -0.014173,
		37.361343, 38.080647, 19.290073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834171, 37.568954, 19.121944>,  <36.667999, 38.176437, 19.299994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834171, 37.568954, 19.121944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163784, 37.671467, 19.324049>,  <37.361553, 37.732975, 19.445312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163784, 37.671467, 19.324049>,  <36.834171, 37.568954, 19.121944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163784, 37.671467, 19.324049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089463, -0.821787, 0.562728,
		0.559433, -0.508909, -0.654253,
		0.824034, 0.256278, 0.505263,
		37.410995, 37.748348, 19.475628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172932, 36.934345, 19.256329>,  <36.834171, 37.568954, 19.121944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172932, 36.934345, 19.256329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.339413, 37.172245, 19.531443>,  <37.439301, 37.314983, 19.696512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.339413, 37.172245, 19.531443>,  <37.172932, 36.934345, 19.256329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339413, 37.172245, 19.531443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053816, -0.771203, 0.634311,
		0.907677, -0.226990, -0.352985,
		0.416205, 0.594745, 0.687787,
		37.464275, 37.350670, 19.737780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775188, 36.551704, 19.638897>,  <37.172932, 36.934345, 19.256329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775188, 36.551704, 19.638897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673157, 36.853374, 19.880941>,  <37.611938, 37.034374, 20.026169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673157, 36.853374, 19.880941>,  <37.775188, 36.551704, 19.638897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673157, 36.853374, 19.880941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130638, -0.593195, 0.794389,
		0.958055, 0.281681, 0.052787,
		-0.255077, 0.754172, 0.605111,
		37.596634, 37.079628, 20.062475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236877, 36.425087, 20.274157>,  <37.775188, 36.551704, 19.638897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236877, 36.425087, 20.274157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968201, 36.684734, 20.416977>,  <37.806995, 36.840523, 20.502670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968201, 36.684734, 20.416977>,  <38.236877, 36.425087, 20.274157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968201, 36.684734, 20.416977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000923, -0.481226, 0.876596,
		0.740834, 0.589128, 0.322634,
		-0.671687, 0.649115, 0.357052,
		37.766693, 36.879467, 20.524092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462154, 36.518345, 20.940844>,  <38.236877, 36.425087, 20.274157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462154, 36.518345, 20.940844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082317, 36.643017, 20.954334>,  <37.854416, 36.717819, 20.962429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082317, 36.643017, 20.954334>,  <38.462154, 36.518345, 20.940844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082317, 36.643017, 20.954334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112904, -0.440366, 0.890691,
		0.292464, 0.841981, 0.453356,
		-0.949588, 0.311681, 0.033729,
		37.797440, 36.736523, 20.964453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378765, 36.881611, 21.545918>,  <38.462154, 36.518345, 20.940844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378765, 36.881611, 21.545918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017799, 36.746334, 21.439129>,  <37.801220, 36.665169, 21.375055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.017799, 36.746334, 21.439129>,  <38.378765, 36.881611, 21.545918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017799, 36.746334, 21.439129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190938, -0.241563, 0.951415,
		-0.386250, 0.909547, 0.153416,
		-0.902416, -0.338191, -0.266970,
		37.747074, 36.644878, 21.359037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882092, 37.259869, 21.979036>,  <38.378765, 36.881611, 21.545918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882092, 37.259869, 21.979036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705803, 36.922642, 21.855742>,  <37.600029, 36.720306, 21.781765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705803, 36.922642, 21.855742>,  <37.882092, 37.259869, 21.979036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705803, 36.922642, 21.855742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290190, -0.191135, 0.937687,
		-0.849446, 0.502703, -0.160412,
		-0.440718, -0.843064, -0.308238,
		37.573589, 36.669724, 21.763269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330280, 37.268406, 22.330938>,  <37.882092, 37.259869, 21.979036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330280, 37.268406, 22.330938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.344448, 36.879795, 22.237236>,  <37.352951, 36.646629, 22.181015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.344448, 36.879795, 22.237236>,  <37.330280, 37.268406, 22.330938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344448, 36.879795, 22.237236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098657, -0.236659, 0.966571,
		-0.994491, -0.011127, -0.104231,
		0.035423, -0.971529, -0.234258,
		37.355076, 36.588337, 22.166958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891243, 36.996281, 22.802620>,  <37.330280, 37.268406, 22.330938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891243, 36.996281, 22.802620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103371, 36.678436, 22.684399>,  <37.230648, 36.487728, 22.613466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103371, 36.678436, 22.684399>,  <36.891243, 36.996281, 22.802620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103371, 36.678436, 22.684399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118066, -0.414433, 0.902388,
		-0.839538, -0.443657, -0.313599,
		0.530317, -0.794615, -0.295552,
		37.262466, 36.440052, 22.595734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519920, 36.367214, 23.050686>,  <36.891243, 36.996281, 22.802620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519920, 36.367214, 23.050686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891953, 36.240498, 22.976290>,  <37.115173, 36.164467, 22.931652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891953, 36.240498, 22.976290>,  <36.519920, 36.367214, 23.050686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891953, 36.240498, 22.976290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007605, -0.522788, 0.852429,
		-0.367275, -0.791413, -0.488645,
		0.930081, -0.316792, -0.185988,
		37.170979, 36.145458, 22.920494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103271, 36.080795, 22.489300>,  <36.519920, 36.367214, 23.050686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103271, 36.080795, 22.489300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708027, 36.065128, 22.429838>,  <35.470879, 36.055729, 22.394161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708027, 36.065128, 22.429838>,  <36.103271, 36.080795, 22.489300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708027, 36.065128, 22.429838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085989, 0.660758, -0.745657,
		0.127430, -0.749576, -0.649536,
		-0.988113, -0.039167, -0.148655,
		35.411594, 36.053379, 22.385241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945412, 35.961193, 21.714245>,  <36.103271, 36.080795, 22.489300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945412, 35.961193, 21.714245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621296, 36.123837, 21.883055>,  <35.426826, 36.221424, 21.984341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621296, 36.123837, 21.883055>,  <35.945412, 35.961193, 21.714245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621296, 36.123837, 21.883055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010524, 0.730117, -0.683241,
		-0.585940, -0.549179, -0.595883,
		-0.810286, 0.406609, 0.422025,
		35.378208, 36.245819, 22.009663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403690, 36.076385, 21.129555>,  <35.945412, 35.961193, 21.714245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403690, 36.076385, 21.129555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306637, 36.331802, 21.421690>,  <35.248405, 36.485054, 21.596972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.306637, 36.331802, 21.421690>,  <35.403690, 36.076385, 21.129555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306637, 36.331802, 21.421690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127994, 0.725181, -0.676557,
		-0.961637, -0.257636, -0.094226,
		-0.242636, 0.638542, 0.730337,
		35.233845, 36.523365, 21.640791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730659, 36.296978, 20.976458>,  <35.403690, 36.076385, 21.129555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730659, 36.296978, 20.976458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.869625, 36.574989, 21.228249>,  <34.953003, 36.741795, 21.379324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.869625, 36.574989, 21.228249>,  <34.730659, 36.296978, 20.976458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869625, 36.574989, 21.228249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206282, 0.711492, -0.671734,
		-0.914741, 0.103520, 0.390553,
		0.347413, 0.695027, 0.629477,
		34.973850, 36.783497, 21.417091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339214, 36.768940, 20.866972>,  <34.730659, 36.296978, 20.976458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339214, 36.768940, 20.866972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634083, 36.961815, 21.056320>,  <34.811005, 37.077541, 21.169930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634083, 36.961815, 21.056320>,  <34.339214, 36.768940, 20.866972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634083, 36.961815, 21.056320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199860, 0.824800, -0.528925,
		-0.645475, 0.295299, 0.704387,
		0.737169, 0.482187, 0.473369,
		34.855232, 37.106472, 21.198330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081875, 37.436138, 21.116705>,  <34.339214, 36.768940, 20.866972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081875, 37.436138, 21.116705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478828, 37.470070, 21.080984>,  <34.716999, 37.490429, 21.059551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478828, 37.470070, 21.080984>,  <34.081875, 37.436138, 21.116705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478828, 37.470070, 21.080984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120864, 0.810372, -0.573315,
		0.023735, 0.579743, 0.814454,
		0.992385, 0.084831, -0.089304,
		34.776543, 37.495518, 21.054193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202419, 38.208599, 21.147545>,  <34.081875, 37.436138, 21.116705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202419, 38.208599, 21.147545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539055, 38.059853, 20.990856>,  <34.741035, 37.970604, 20.896843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539055, 38.059853, 20.990856>,  <34.202419, 38.208599, 21.147545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539055, 38.059853, 20.990856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084735, 0.807169, -0.584207,
		0.533430, 0.458470, 0.710815,
		0.841589, -0.371865, -0.391720,
		34.791531, 37.948292, 20.873341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151936, 38.798187, 21.615059>,  <34.202419, 38.208599, 21.147545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151936, 38.798187, 21.615059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811310, 38.980381, 21.718874>,  <33.606934, 39.089699, 21.781162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811310, 38.980381, 21.718874>,  <34.151936, 38.798187, 21.615059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811310, 38.980381, 21.718874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109756, -0.639004, 0.761333,
		0.512624, 0.619841, 0.594149,
		-0.851569, 0.455489, 0.259538,
		33.555840, 39.117027, 21.796736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264404, 38.939648, 22.353624>,  <34.151936, 38.798187, 21.615059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264404, 38.939648, 22.353624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870926, 38.944893, 22.281881>,  <33.634838, 38.948040, 22.238836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870926, 38.944893, 22.281881>,  <34.264404, 38.939648, 22.353624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870926, 38.944893, 22.281881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158337, -0.536026, 0.829220,
		-0.085265, 0.844100, 0.529363,
		-0.983697, 0.013114, -0.179357,
		33.575817, 38.948826, 22.228075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994843, 39.112263, 22.944244>,  <34.264404, 38.939648, 22.353624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994843, 39.112263, 22.944244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687668, 38.944569, 22.750534>,  <33.503365, 38.843952, 22.634308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687668, 38.944569, 22.750534>,  <33.994843, 39.112263, 22.944244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687668, 38.944569, 22.750534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352850, -0.354120, 0.866081,
		-0.534581, 0.835968, 0.124014,
		-0.767932, -0.419232, -0.484277,
		33.457287, 38.818798, 22.605251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467392, 39.158978, 23.345295>,  <33.994843, 39.112263, 22.944244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467392, 39.158978, 23.345295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299221, 38.891106, 23.100422>,  <33.198318, 38.730381, 22.953497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299221, 38.891106, 23.100422>,  <33.467392, 39.158978, 23.345295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299221, 38.891106, 23.100422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392346, -0.474184, 0.788171,
		-0.818109, 0.571559, -0.063385,
		-0.420430, -0.669679, -0.612184,
		33.173092, 38.690201, 22.916767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824104, 39.152771, 23.546419>,  <33.467392, 39.158978, 23.345295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824104, 39.152771, 23.546419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901291, 38.808914, 23.357199>,  <32.947605, 38.602600, 23.243666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901291, 38.808914, 23.357199>,  <32.824104, 39.152771, 23.546419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901291, 38.808914, 23.357199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160415, -0.503266, 0.849112,
		-0.968003, -0.087968, -0.235014,
		0.192969, -0.859642, -0.473052,
		32.959183, 38.551022, 23.215282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235836, 38.694077, 23.668585>,  <32.824104, 39.152771, 23.546419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235836, 38.694077, 23.668585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550804, 38.467899, 23.570402>,  <32.739784, 38.332191, 23.511492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550804, 38.467899, 23.570402>,  <32.235836, 38.694077, 23.668585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550804, 38.467899, 23.570402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124122, -0.535481, 0.835376,
		-0.603798, -0.627321, -0.491830,
		0.787415, -0.565445, -0.245458,
		32.787029, 38.298267, 23.496765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920088, 37.938049, 23.781605>,  <32.235836, 38.694077, 23.668585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920088, 37.938049, 23.781605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319130, 37.939800, 23.753986>,  <32.558556, 37.940849, 23.737415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319130, 37.939800, 23.753986>,  <31.920088, 37.938049, 23.781605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319130, 37.939800, 23.753986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062923, -0.472267, 0.879207,
		-0.028757, -0.881445, -0.471411,
		0.997604, 0.004379, -0.069044,
		32.618412, 37.941113, 23.733273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.679787, 42.427605, 21.122211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968483, 42.153332, 21.160021>,  <37.141701, 41.988770, 21.182707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968483, 42.153332, 21.160021>,  <36.679787, 42.427605, 21.122211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968483, 42.153332, 21.160021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313272, -0.201822, 0.927970,
		-0.617213, -0.699365, -0.360467,
		0.721740, -0.685679, 0.094524,
		37.185005, 41.947628, 21.188377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331631, 41.838924, 21.367975>,  <36.679787, 42.427605, 21.122211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331631, 41.838924, 21.367975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713337, 41.832260, 21.487373>,  <36.942360, 41.828262, 21.559013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713337, 41.832260, 21.487373>,  <36.331631, 41.838924, 21.367975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713337, 41.832260, 21.487373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293974, -0.233906, 0.926751,
		0.054384, -0.972116, -0.228105,
		0.954265, -0.016657, 0.298497,
		36.999615, 41.827263, 21.576923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421474, 41.163280, 21.585920>,  <36.331631, 41.838924, 21.367975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421474, 41.163280, 21.585920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771423, 41.282852, 21.738358>,  <36.981392, 41.354595, 21.829821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.771423, 41.282852, 21.738358>,  <36.421474, 41.163280, 21.585920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771423, 41.282852, 21.738358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214030, -0.467232, 0.857838,
		0.434491, -0.832068, -0.344791,
		0.874877, 0.298927, 0.381095,
		37.033886, 41.372532, 21.852686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759914, 40.518417, 21.810429>,  <36.421474, 41.163280, 21.585920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759914, 40.518417, 21.810429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864826, 40.845699, 22.015072>,  <36.927773, 41.042068, 22.137857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864826, 40.845699, 22.015072>,  <36.759914, 40.518417, 21.810429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864826, 40.845699, 22.015072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221884, -0.464832, 0.857146,
		0.939137, -0.338329, 0.059633,
		0.262278, 0.818209, 0.511610,
		36.943508, 41.091164, 22.168554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144413, 40.199444, 22.282492>,  <36.759914, 40.518417, 21.810429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144413, 40.199444, 22.282492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082066, 40.566402, 22.428959>,  <37.044655, 40.786579, 22.516840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082066, 40.566402, 22.428959>,  <37.144413, 40.199444, 22.282492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082066, 40.566402, 22.428959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168567, -0.340556, 0.924990,
		0.973288, 0.205905, -0.101560,
		-0.155873, 0.917401, 0.366168,
		37.035305, 40.841621, 22.538809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640034, 40.219646, 22.814556>,  <37.144413, 40.199444, 22.282492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640034, 40.219646, 22.814556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.375820, 40.512257, 22.882170>,  <37.217293, 40.687820, 22.922737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.375820, 40.512257, 22.882170>,  <37.640034, 40.219646, 22.814556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375820, 40.512257, 22.882170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179698, -0.064560, 0.981601,
		0.728975, 0.678755, -0.088809,
		-0.660533, 0.731522, 0.169034,
		37.177662, 40.731712, 22.932880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949272, 40.648159, 23.254425>,  <37.640034, 40.219646, 22.814556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949272, 40.648159, 23.254425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554192, 40.700779, 23.288229>,  <37.317142, 40.732349, 23.308512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554192, 40.700779, 23.288229>,  <37.949272, 40.648159, 23.254425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554192, 40.700779, 23.288229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072361, -0.094549, 0.992887,
		0.138604, 0.986790, 0.083867,
		-0.987701, 0.131549, 0.084510,
		37.257881, 40.740242, 23.313581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884953, 41.172447, 23.786734>,  <37.949272, 40.648159, 23.254425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884953, 41.172447, 23.786734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.519211, 41.012383, 23.761972>,  <37.299767, 40.916344, 23.747116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.519211, 41.012383, 23.761972>,  <37.884953, 41.172447, 23.786734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519211, 41.012383, 23.761972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081713, 0.032614, 0.996122,
		-0.396591, 0.915864, -0.062519,
		-0.914351, -0.400162, -0.061904,
		37.244904, 40.892334, 23.743401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405243, 41.361786, 24.286474>,  <37.884953, 41.172447, 23.786734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405243, 41.361786, 24.286474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.169823, 41.054508, 24.185686>,  <37.028568, 40.870144, 24.125214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.169823, 41.054508, 24.185686>,  <37.405243, 41.361786, 24.286474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169823, 41.054508, 24.185686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379956, -0.012276, 0.924923,
		-0.713610, 0.640104, -0.284653,
		-0.588553, -0.768190, -0.251972,
		36.993256, 40.824051, 24.110094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675949, 41.494724, 24.593710>,  <37.405243, 41.361786, 24.286474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675949, 41.494724, 24.593710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732143, 41.102821, 24.536671>,  <36.765862, 40.867680, 24.502447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.732143, 41.102821, 24.536671>,  <36.675949, 41.494724, 24.593710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732143, 41.102821, 24.536671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367225, -0.185318, 0.911484,
		-0.919461, -0.075688, -0.385828,
		0.140489, -0.979759, -0.142598,
		36.774292, 40.808895, 24.493891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053612, 41.133873, 24.879393>,  <36.675949, 41.494724, 24.593710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053612, 41.133873, 24.879393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313068, 40.832382, 24.837114>,  <36.468742, 40.651489, 24.811747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313068, 40.832382, 24.837114>,  <36.053612, 41.133873, 24.879393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313068, 40.832382, 24.837114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350606, -0.419167, 0.837481,
		-0.675533, -0.506163, -0.536147,
		0.648637, -0.753723, -0.105698,
		36.507660, 40.606266, 24.805405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667706, 40.470100, 24.949459>,  <36.053612, 41.133873, 24.879393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667706, 40.470100, 24.949459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.041050, 40.372181, 25.054466>,  <36.265057, 40.313427, 25.117470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.041050, 40.372181, 25.054466>,  <35.667706, 40.470100, 24.949459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041050, 40.372181, 25.054466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345098, -0.410803, 0.843889,
		-0.098743, -0.878244, -0.467907,
		0.933358, -0.244802, 0.262516,
		36.321056, 40.298740, 25.133221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100193, 40.014141, 24.874504>,  <35.667706, 40.470100, 24.949459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100193, 40.014141, 24.874504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.757839, 40.196983, 24.971258>,  <34.552425, 40.306690, 25.029310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.757839, 40.196983, 24.971258>,  <35.100193, 40.014141, 24.874504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757839, 40.196983, 24.971258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031509, 0.420760, -0.906624,
		-0.516199, -0.783591, -0.345721,
		-0.855889, 0.457106, 0.241887,
		34.501072, 40.334114, 25.043823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738800, 39.857254, 24.330734>,  <35.100193, 40.014141, 24.874504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738800, 39.857254, 24.330734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581348, 40.185604, 24.496250>,  <34.486877, 40.382614, 24.595560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.581348, 40.185604, 24.496250>,  <34.738800, 39.857254, 24.330734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581348, 40.185604, 24.496250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069872, 0.422112, -0.903847,
		-0.916611, -0.384690, -0.108798,
		-0.393626, 0.820875, 0.413792,
		34.463261, 40.431866, 24.620388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277699, 40.067112, 23.751652>,  <34.738800, 39.857254, 24.330734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277699, 40.067112, 23.751652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.297401, 40.383446, 23.995668>,  <34.309223, 40.573246, 24.142078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.297401, 40.383446, 23.995668>,  <34.277699, 40.067112, 23.751652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297401, 40.383446, 23.995668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020684, 0.611459, -0.791006,
		-0.998572, 0.026343, 0.046475,
		0.049255, 0.790838, 0.610041,
		34.312180, 40.620697, 24.178680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727753, 40.545620, 23.617521>,  <34.277699, 40.067112, 23.751652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727753, 40.545620, 23.617521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.999081, 40.774506, 23.801891>,  <34.161877, 40.911839, 23.912514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.999081, 40.774506, 23.801891>,  <33.727753, 40.545620, 23.617521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999081, 40.774506, 23.801891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012573, 0.618177, -0.785938,
		-0.734661, 0.538911, 0.412126,
		0.678317, 0.572217, 0.460927,
		34.202576, 40.946171, 23.940168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408131, 41.299458, 23.731356>,  <33.727753, 40.545620, 23.617521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408131, 41.299458, 23.731356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.805122, 41.335896, 23.764065>,  <34.043316, 41.357758, 23.783689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.805122, 41.335896, 23.764065>,  <33.408131, 41.299458, 23.731356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805122, 41.335896, 23.764065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025595, 0.807660, -0.589093,
		-0.119708, 0.582569, 0.803917,
		0.992479, 0.091096, 0.081773,
		34.102867, 41.363224, 23.788597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483459, 42.075020, 23.641981>,  <33.408131, 41.299458, 23.731356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483459, 42.075020, 23.641981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.858799, 41.941563, 23.605793>,  <34.084003, 41.861488, 23.584080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.858799, 41.941563, 23.605793>,  <33.483459, 42.075020, 23.641981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858799, 41.941563, 23.605793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220596, 0.779421, -0.586379,
		0.266151, 0.530271, 0.804969,
		0.938350, -0.333638, -0.090468,
		34.140305, 41.841473, 23.578653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941856, 42.599461, 23.808651>,  <33.483459, 42.075020, 23.641981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941856, 42.599461, 23.808651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.138542, 42.353344, 23.562195>,  <34.256554, 42.205673, 23.414322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.138542, 42.353344, 23.562195>,  <33.941856, 42.599461, 23.808651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138542, 42.353344, 23.562195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096255, 0.741665, -0.663828,
		0.865418, 0.267110, 0.423916,
		0.491719, -0.615292, -0.616140,
		34.286057, 42.168755, 23.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580349, 42.967415, 23.593929>,  <33.941856, 42.599461, 23.808651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580349, 42.967415, 23.593929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.535194, 42.673721, 23.326151>,  <34.508102, 42.497505, 23.165483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.535194, 42.673721, 23.326151>,  <34.580349, 42.967415, 23.593929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535194, 42.673721, 23.326151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284286, 0.621718, -0.729828,
		0.952071, -0.272700, 0.138550,
		-0.112885, -0.734236, -0.669444,
		34.501328, 42.453449, 23.125319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217484, 42.951057, 23.172865>,  <34.580349, 42.967415, 23.593929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217484, 42.951057, 23.172865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001091, 42.727695, 22.921303>,  <34.871258, 42.593678, 22.770365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.001091, 42.727695, 22.921303>,  <35.217484, 42.951057, 23.172865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001091, 42.727695, 22.921303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493527, 0.394721, -0.775001,
		0.681009, -0.729641, 0.062053,
		-0.540979, -0.558407, -0.628906,
		34.838799, 42.560173, 22.732632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597973, 42.649639, 22.680847>,  <35.217484, 42.951057, 23.172865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597973, 42.649639, 22.680847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.234230, 42.699097, 22.521959>,  <35.015984, 42.728771, 22.426626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.234230, 42.699097, 22.521959>,  <35.597973, 42.649639, 22.680847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234230, 42.699097, 22.521959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402388, 0.503824, -0.764359,
		0.105621, -0.854912, -0.507908,
		-0.909356, 0.123643, -0.397220,
		34.961422, 42.736191, 22.402794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666588, 42.615459, 21.994211>,  <35.597973, 42.649639, 22.680847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666588, 42.615459, 21.994211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.280056, 42.708115, 21.949383>,  <35.048138, 42.763706, 21.922485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.280056, 42.708115, 21.949383>,  <35.666588, 42.615459, 21.994211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280056, 42.708115, 21.949383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208712, 0.450791, -0.867886,
		-0.150514, -0.862051, -0.483956,
		-0.966326, 0.231637, -0.112071,
		34.990158, 42.777607, 21.915762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447037, 42.428062, 21.343092>,  <35.666588, 42.615459, 21.994211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447037, 42.428062, 21.343092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.191788, 42.719498, 21.442659>,  <35.038639, 42.894360, 21.502399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.191788, 42.719498, 21.442659>,  <35.447037, 42.428062, 21.343092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191788, 42.719498, 21.442659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422583, 0.601678, -0.677796,
		-0.643605, -0.327325, -0.691832,
		-0.638120, 0.728589, 0.248920,
		35.000351, 42.938076, 21.517336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231758, 42.610409, 20.779617>,  <35.447037, 42.428062, 21.343092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231758, 42.610409, 20.779617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.105507, 42.928040, 20.987394>,  <35.029758, 43.118618, 21.112061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.105507, 42.928040, 20.987394>,  <35.231758, 42.610409, 20.779617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105507, 42.928040, 20.987394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253660, 0.598111, -0.760211,
		-0.914350, -0.108181, -0.390206,
		-0.315626, 0.794078, 0.519441,
		35.010818, 43.166264, 21.143227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550289, 42.217880, 20.846090>,  <35.231758, 42.610409, 20.779617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550289, 42.217880, 20.846090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.339283, 42.070530, 20.539883>,  <34.212677, 41.982121, 20.356157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.339283, 42.070530, 20.539883>,  <34.550289, 42.217880, 20.846090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339283, 42.070530, 20.539883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453934, -0.639452, 0.620520,
		-0.718100, 0.674831, 0.170102,
		-0.527518, -0.368380, -0.765520,
		34.181026, 41.960014, 20.310226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929180, 42.209625, 21.113045>,  <34.550289, 42.217880, 20.846090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929180, 42.209625, 21.113045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.937504, 41.954014, 20.805483>,  <33.942497, 41.800648, 20.620945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.937504, 41.954014, 20.805483>,  <33.929180, 42.209625, 21.113045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937504, 41.954014, 20.805483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540444, -0.654215, 0.529078,
		-0.841122, 0.404538, -0.358973,
		0.020813, -0.639024, -0.768905,
		33.943748, 41.762306, 20.574812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395245, 41.844662, 21.164038>,  <33.929180, 42.209625, 21.113045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395245, 41.844662, 21.164038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.549221, 41.560364, 20.928526>,  <33.641605, 41.389786, 20.787218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.549221, 41.560364, 20.928526>,  <33.395245, 41.844662, 21.164038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549221, 41.560364, 20.928526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418405, -0.703006, 0.575083,
		-0.822653, 0.024976, -0.567994,
		0.384940, -0.710745, -0.588780,
		33.664703, 41.347141, 20.751892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875008, 41.231285, 20.927597>,  <33.395245, 41.844662, 21.164038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875008, 41.231285, 20.927597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229523, 41.060169, 20.856627>,  <33.442234, 40.957500, 20.814043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229523, 41.060169, 20.856627>,  <32.875008, 41.231285, 20.927597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229523, 41.060169, 20.856627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358830, -0.876511, 0.320889,
		-0.292791, -0.220735, -0.930349,
		0.886293, -0.427791, -0.177428,
		33.495411, 40.931831, 20.803398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645893, 40.558758, 20.649475>,  <32.875008, 41.231285, 20.927597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645893, 40.558758, 20.649475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021202, 40.546741, 20.787308>,  <33.246387, 40.539532, 20.870007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.021202, 40.546741, 20.787308>,  <32.645893, 40.558758, 20.649475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021202, 40.546741, 20.787308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221889, -0.816505, 0.532996,
		0.265339, -0.576556, -0.772773,
		0.938275, -0.030045, 0.344582,
		33.302685, 40.537727, 20.890682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779194, 39.827419, 20.672428>,  <32.645893, 40.558758, 20.649475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779194, 39.827419, 20.672428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.076931, 39.986301, 20.887157>,  <33.255573, 40.081631, 21.015995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.076931, 39.986301, 20.887157>,  <32.779194, 39.827419, 20.672428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076931, 39.986301, 20.887157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003527, -0.801521, 0.597956,
		0.667790, -0.446977, -0.595204,
		0.744341, 0.397210, 0.536824,
		33.300232, 40.105465, 21.048204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250580, 39.270546, 20.663445>,  <32.779194, 39.827419, 20.672428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250580, 39.270546, 20.663445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.336498, 39.523754, 20.960939>,  <33.388050, 39.675678, 21.139437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.336498, 39.523754, 20.960939>,  <33.250580, 39.270546, 20.663445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336498, 39.523754, 20.960939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056531, -0.768292, 0.637598,
		0.975021, -0.094911, -0.200814,
		0.214799, 0.633023, 0.743735,
		33.400936, 39.713661, 21.184061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902199, 39.030514, 20.956137>,  <33.250580, 39.270546, 20.663445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902199, 39.030514, 20.956137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.691711, 39.249290, 21.216583>,  <33.565418, 39.380558, 21.372852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.691711, 39.249290, 21.216583>,  <33.902199, 39.030514, 20.956137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691711, 39.249290, 21.216583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089317, -0.797019, 0.597314,
		0.845649, 0.256159, 0.468253,
		-0.526214, 0.546940, 0.651118,
		33.533848, 39.413372, 21.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615341, 38.797543, 20.980541>,  <33.902199, 39.030514, 20.956137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615341, 38.797543, 20.980541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.812595, 38.511902, 20.781797>,  <34.930946, 38.340515, 20.662552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.812595, 38.511902, 20.781797>,  <34.615341, 38.797543, 20.980541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812595, 38.511902, 20.781797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254512, 0.664572, -0.702543,
		0.831890, 0.219992, 0.509473,
		0.493136, -0.714106, -0.496860,
		34.960537, 38.297668, 20.632740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226440, 39.097954, 20.829285>,  <34.615341, 38.797543, 20.980541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226440, 39.097954, 20.829285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.160690, 38.810017, 20.559528>,  <35.121243, 38.637253, 20.397675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.160690, 38.810017, 20.559528>,  <35.226440, 39.097954, 20.829285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160690, 38.810017, 20.559528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263646, 0.626756, -0.733258,
		0.950512, -0.298328, 0.086763,
		-0.164372, -0.719845, -0.674392,
		35.111378, 38.594063, 20.357210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729195, 39.218662, 20.265064>,  <35.226440, 39.097954, 20.829285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729195, 39.218662, 20.265064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.426384, 39.006172, 20.112896>,  <35.244698, 38.878677, 20.021595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.426384, 39.006172, 20.112896>,  <35.729195, 39.218662, 20.265064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426384, 39.006172, 20.112896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145601, 0.430432, -0.890802,
		0.636959, -0.729747, -0.248500,
		-0.757023, -0.531223, -0.380420,
		35.199276, 38.846806, 19.998770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966820, 39.145466, 19.723118>,  <35.729195, 39.218662, 20.265064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966820, 39.145466, 19.723118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.597961, 38.999889, 19.670662>,  <35.376648, 38.912544, 19.639189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.597961, 38.999889, 19.670662>,  <35.966820, 39.145466, 19.723118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597961, 38.999889, 19.670662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035916, 0.418077, -0.907701,
		0.385176, -0.832322, -0.398599,
		-0.922144, -0.363941, -0.131139,
		35.321320, 38.890705, 19.631319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834503, 38.531502, 19.161329>,  <35.966820, 39.145466, 19.723118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834503, 38.531502, 19.161329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.501755, 38.752171, 19.185492>,  <35.302105, 38.884571, 19.199989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.501755, 38.752171, 19.185492>,  <35.834503, 38.531502, 19.161329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501755, 38.752171, 19.185492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054580, 0.189645, -0.980334,
		-0.552284, -0.812211, -0.187870,
		-0.831867, 0.551677, 0.060408,
		35.252193, 38.917675, 19.203613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440186, 38.368671, 18.592428>,  <35.834503, 38.531502, 19.161329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440186, 38.368671, 18.592428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.274548, 38.721134, 18.683723>,  <35.175163, 38.932610, 18.738501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.274548, 38.721134, 18.683723>,  <35.440186, 38.368671, 18.592428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274548, 38.721134, 18.683723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220510, 0.340387, -0.914063,
		-0.883120, -0.328180, -0.335255,
		-0.414094, 0.881155, 0.228236,
		35.150318, 38.985481, 18.752193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159081, 38.545853, 18.016376>,  <35.440186, 38.368671, 18.592428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159081, 38.545853, 18.016376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.182468, 38.896538, 18.207355>,  <35.196503, 39.106949, 18.321943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.182468, 38.896538, 18.207355>,  <35.159081, 38.545853, 18.016376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182468, 38.896538, 18.207355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290789, 0.442566, -0.848279,
		-0.954999, 0.188436, -0.229062,
		0.058472, 0.876714, 0.477445,
		35.200008, 39.159554, 18.350590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613758, 38.995586, 17.724861>,  <35.159081, 38.545853, 18.016376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613758, 38.995586, 17.724861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903847, 39.219009, 17.885889>,  <35.077900, 39.353062, 17.982506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903847, 39.219009, 17.885889>,  <34.613758, 38.995586, 17.724861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903847, 39.219009, 17.885889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010520, 0.593616, -0.804680,
		-0.688432, 0.579338, 0.436381,
		0.725225, 0.558558, 0.402569,
		35.121414, 39.386578, 18.006660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528355, 39.657425, 17.452436>,  <34.613758, 38.995586, 17.724861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528355, 39.657425, 17.452436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.905594, 39.652924, 17.585365>,  <35.131939, 39.650223, 17.665123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.905594, 39.652924, 17.585365>,  <34.528355, 39.657425, 17.452436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905594, 39.652924, 17.585365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291689, 0.507806, -0.810587,
		-0.159631, 0.861398, 0.482195,
		0.943099, -0.011256, 0.332322,
		35.188522, 39.649548, 17.685062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.740963, 31.000774, 31.567228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128342, 31.098616, 31.548120>,  <36.360767, 31.157320, 31.536655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128342, 31.098616, 31.548120>,  <35.740963, 31.000774, 31.567228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128342, 31.098616, 31.548120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195728, 0.627808, -0.753357,
		-0.154284, 0.738935, 0.655874,
		0.968445, 0.244604, -0.047770,
		36.418877, 31.171997, 31.533789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694965, 31.712868, 31.447977>,  <35.740963, 31.000774, 31.567228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694965, 31.712868, 31.447977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019569, 31.532326, 31.299526>,  <36.214333, 31.424000, 31.210457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019569, 31.532326, 31.299526>,  <35.694965, 31.712868, 31.447977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019569, 31.532326, 31.299526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108753, 0.507361, -0.854844,
		0.574133, 0.734073, 0.362641,
		0.811507, -0.451356, -0.371126,
		36.263023, 31.396919, 31.188189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162800, 32.246349, 31.150627>,  <35.694965, 31.712868, 31.447977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162800, 32.246349, 31.150627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254368, 31.903316, 30.966389>,  <36.309311, 31.697496, 30.855846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254368, 31.903316, 30.966389>,  <36.162800, 32.246349, 31.150627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254368, 31.903316, 30.966389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015378, 0.469915, -0.882578,
		0.973323, 0.209126, 0.094387,
		0.228924, -0.857581, -0.460595,
		36.323044, 31.646042, 30.828211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545044, 32.389771, 30.567411>,  <36.162800, 32.246349, 31.150627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545044, 32.389771, 30.567411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451603, 32.008839, 30.488937>,  <36.395538, 31.780279, 30.441853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.451603, 32.008839, 30.488937>,  <36.545044, 32.389771, 30.567411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451603, 32.008839, 30.488937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256189, 0.254923, -0.932406,
		0.937975, -0.167552, -0.303529,
		-0.233603, -0.952335, -0.196186,
		36.381523, 31.723139, 30.430082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920158, 32.277523, 29.953236>,  <36.545044, 32.389771, 30.567411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920158, 32.277523, 29.953236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612076, 32.025696, 29.994068>,  <36.427227, 31.874599, 30.018568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612076, 32.025696, 29.994068>,  <36.920158, 32.277523, 29.953236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612076, 32.025696, 29.994068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253067, 0.154753, -0.954992,
		0.585436, -0.761377, -0.278515,
		-0.770209, -0.629569, 0.102081,
		36.381012, 31.836824, 30.024693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874428, 32.009731, 29.332710>,  <36.920158, 32.277523, 29.953236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874428, 32.009731, 29.332710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518227, 31.933212, 29.497835>,  <36.304508, 31.887300, 29.596910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518227, 31.933212, 29.497835>,  <36.874428, 32.009731, 29.332710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518227, 31.933212, 29.497835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448343, 0.214520, -0.867738,
		0.077438, -0.957803, -0.276797,
		-0.890501, -0.191296, 0.412812,
		36.251076, 31.875822, 29.621679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573452, 31.474079, 28.927950>,  <36.874428, 32.009731, 29.332710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573452, 31.474079, 28.927950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287487, 31.682896, 29.114014>,  <36.115910, 31.808186, 29.225653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287487, 31.682896, 29.114014>,  <36.573452, 31.474079, 28.927950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287487, 31.682896, 29.114014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452332, 0.162004, -0.877012,
		-0.533196, -0.837393, 0.120318,
		-0.714912, 0.522043, 0.465159,
		36.073013, 31.839508, 29.253561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883392, 31.264191, 28.611767>,  <36.573452, 31.474079, 28.927950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883392, 31.264191, 28.611767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825050, 31.620981, 28.782928>,  <35.790043, 31.835056, 28.885626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825050, 31.620981, 28.782928>,  <35.883392, 31.264191, 28.611767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825050, 31.620981, 28.782928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567970, 0.278646, -0.774446,
		-0.810022, -0.355994, 0.465975,
		-0.145857, 0.891978, 0.427903,
		35.781292, 31.888575, 28.911299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207691, 31.432415, 28.339569>,  <35.883392, 31.264191, 28.611767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207691, 31.432415, 28.339569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372089, 31.775949, 28.461870>,  <35.470726, 31.982071, 28.535252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372089, 31.775949, 28.461870>,  <35.207691, 31.432415, 28.339569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372089, 31.775949, 28.461870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467209, 0.486426, -0.738312,
		-0.782817, 0.160588, 0.601173,
		0.410991, 0.858837, 0.305754,
		35.495388, 32.033600, 28.553596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714764, 31.973150, 28.225845>,  <35.207691, 31.432415, 28.339569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714764, 31.973150, 28.225845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043953, 32.199234, 28.248636>,  <35.241467, 32.334885, 28.262310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043953, 32.199234, 28.248636>,  <34.714764, 31.973150, 28.225845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043953, 32.199234, 28.248636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273007, 0.481472, -0.832858,
		-0.498171, 0.669869, 0.550547,
		0.822978, 0.565209, 0.056976,
		35.290848, 32.368797, 28.265730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506214, 32.613209, 28.014193>,  <34.714764, 31.973150, 28.225845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506214, 32.613209, 28.014193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900711, 32.654255, 27.962355>,  <35.137409, 32.678883, 27.931252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900711, 32.654255, 27.962355>,  <34.506214, 32.613209, 28.014193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900711, 32.654255, 27.962355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163130, 0.477541, -0.863333,
		-0.026703, 0.872597, 0.487711,
		0.986243, 0.102614, -0.129595,
		35.196583, 32.685040, 27.923477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577534, 33.266441, 27.839548>,  <34.506214, 32.613209, 28.014193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577534, 33.266441, 27.839548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924934, 33.112019, 27.715185>,  <35.133377, 33.019367, 27.640568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924934, 33.112019, 27.715185>,  <34.577534, 33.266441, 27.839548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924934, 33.112019, 27.715185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068092, 0.528364, -0.846283,
		0.490982, 0.756171, 0.432599,
		0.868504, -0.386054, -0.310906,
		35.185486, 32.996204, 27.621914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742958, 33.769917, 28.360958>,  <34.577534, 33.266441, 27.839548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742958, 33.769917, 28.360958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431747, 34.000641, 28.460531>,  <34.245022, 34.139076, 28.520275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431747, 34.000641, 28.460531>,  <34.742958, 33.769917, 28.360958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431747, 34.000641, 28.460531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134268, -0.539759, 0.831043,
		0.613717, 0.613149, 0.497393,
		-0.778026, 0.576809, 0.248933,
		34.198341, 34.173683, 28.535212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756161, 33.778263, 29.161551>,  <34.742958, 33.769917, 28.360958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756161, 33.778263, 29.161551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388718, 33.915981, 29.083958>,  <34.168251, 33.998611, 29.037401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388718, 33.915981, 29.083958>,  <34.756161, 33.778263, 29.161551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388718, 33.915981, 29.083958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368903, -0.571094, 0.733323,
		0.141695, 0.745194, 0.651620,
		-0.918604, 0.344293, -0.193983,
		34.113136, 34.019268, 29.025763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694515, 34.096382, 29.663754>,  <34.756161, 33.778263, 29.161551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694515, 34.096382, 29.663754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321415, 34.033573, 29.533937>,  <34.097557, 33.995888, 29.456047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321415, 34.033573, 29.533937>,  <34.694515, 34.096382, 29.663754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321415, 34.033573, 29.533937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207864, -0.501291, 0.839940,
		-0.294576, 0.850913, 0.434940,
		-0.932747, -0.157018, -0.324542,
		34.041592, 33.986469, 29.436575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164085, 34.035172, 30.242805>,  <34.694515, 34.096382, 29.663754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164085, 34.035172, 30.242805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950001, 33.882977, 29.941137>,  <33.821548, 33.791660, 29.760136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950001, 33.882977, 29.941137>,  <34.164085, 34.035172, 30.242805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950001, 33.882977, 29.941137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445697, -0.631219, 0.634757,
		-0.717565, 0.675863, 0.168254,
		-0.535214, -0.380489, -0.754171,
		33.789436, 33.768829, 29.714886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547939, 34.153206, 30.401838>,  <34.164085, 34.035172, 30.242805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547939, 34.153206, 30.401838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545673, 33.845261, 30.146564>,  <33.544315, 33.660492, 29.993401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545673, 33.845261, 30.146564>,  <33.547939, 34.153206, 30.401838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545673, 33.845261, 30.146564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641940, -0.486535, 0.592619,
		-0.766734, 0.413034, -0.491448,
		-0.005665, -0.769862, -0.638186,
		33.543972, 33.614304, 29.955109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843121, 33.983898, 30.292269>,  <33.547939, 34.153206, 30.401838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843121, 33.983898, 30.292269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009869, 33.644199, 30.162657>,  <33.109917, 33.440380, 30.084890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009869, 33.644199, 30.162657>,  <32.843121, 33.983898, 30.292269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009869, 33.644199, 30.162657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559715, -0.520712, 0.644653,
		-0.716196, -0.087374, -0.692408,
		0.416871, -0.849249, -0.324028,
		33.134930, 33.389423, 30.065449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353413, 33.507416, 30.106419>,  <32.843121, 33.983898, 30.292269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353413, 33.507416, 30.106419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663681, 33.262451, 30.167446>,  <32.849842, 33.115471, 30.204063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.663681, 33.262451, 30.167446>,  <32.353413, 33.507416, 30.106419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663681, 33.262451, 30.167446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578834, -0.593945, 0.558731,
		-0.251558, -0.521706, -0.815194,
		0.775674, -0.612416, 0.152569,
		32.896381, 33.078728, 30.213217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008167, 32.794567, 30.077005>,  <32.353413, 33.507416, 30.106419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008167, 32.794567, 30.077005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357521, 32.748817, 30.266373>,  <32.567131, 32.721367, 30.379993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357521, 32.748817, 30.266373>,  <32.008167, 32.794567, 30.077005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357521, 32.748817, 30.266373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453879, -0.543664, 0.705991,
		0.176635, -0.831473, -0.526737,
		0.873381, -0.114372, 0.473419,
		32.619534, 32.714504, 30.408398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062412, 32.069359, 30.299458>,  <32.008167, 32.794567, 30.077005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062412, 32.069359, 30.299458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325661, 32.254906, 30.536678>,  <32.483608, 32.366234, 30.679010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325661, 32.254906, 30.536678>,  <32.062412, 32.069359, 30.299458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325661, 32.254906, 30.536678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281304, -0.579144, 0.765154,
		0.698389, -0.670390, -0.250659,
		0.658119, 0.463863, 0.593052,
		32.523098, 32.394066, 30.714594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384609, 31.586758, 30.662113>,  <32.062412, 32.069359, 30.299458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384609, 31.586758, 30.662113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413750, 31.923544, 30.875950>,  <32.431232, 32.125614, 31.004251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413750, 31.923544, 30.875950>,  <32.384609, 31.586758, 30.662113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413750, 31.923544, 30.875950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332987, -0.484724, 0.808803,
		0.940113, -0.236933, 0.245051,
		0.072850, 0.841966, 0.534591,
		32.435604, 32.176132, 31.036327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485470, 31.335022, 31.264467>,  <32.384609, 31.586758, 30.662113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485470, 31.335022, 31.264467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367832, 31.707041, 31.352577>,  <32.297249, 31.930252, 31.405443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.367832, 31.707041, 31.352577>,  <32.485470, 31.335022, 31.264467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367832, 31.707041, 31.352577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326550, -0.314376, 0.891366,
		0.898260, 0.190217, 0.396164,
		-0.294098, 0.930046, 0.220276,
		32.279602, 31.986055, 31.418659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651821, 31.348553, 31.936510>,  <32.485470, 31.335022, 31.264467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651821, 31.348553, 31.936510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.421707, 31.670952, 31.880775>,  <32.283638, 31.864391, 31.847336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.421707, 31.670952, 31.880775>,  <32.651821, 31.348553, 31.936510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421707, 31.670952, 31.880775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434916, -0.157147, 0.886653,
		0.692744, 0.570678, 0.440946,
		-0.575286, 0.805998, -0.139334,
		32.249123, 31.912750, 31.838976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752808, 31.802305, 32.510281>,  <32.651821, 31.348553, 31.936510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752808, 31.802305, 32.510281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407528, 31.928833, 32.352886>,  <32.200359, 32.004749, 32.258450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407528, 31.928833, 32.352886>,  <32.752808, 31.802305, 32.510281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407528, 31.928833, 32.352886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427684, -0.044000, 0.902857,
		0.268277, 0.947632, 0.173265,
		-0.863200, 0.316318, -0.393483,
		32.148567, 32.023727, 32.234840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596382, 32.420055, 32.865158>,  <32.752808, 31.802305, 32.510281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596382, 32.420055, 32.865158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254723, 32.275787, 32.715309>,  <32.049725, 32.189224, 32.625401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254723, 32.275787, 32.715309>,  <32.596382, 32.420055, 32.865158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254723, 32.275787, 32.715309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385050, -0.045535, 0.921772,
		-0.349516, 0.931580, -0.099984,
		-0.854151, -0.360673, -0.374620,
		31.998478, 32.167587, 32.602924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704777, 33.193161, 32.893356>,  <32.596382, 32.420055, 32.865158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704777, 33.193161, 32.893356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604900, 33.494122, 33.137173>,  <32.544975, 33.674698, 33.283463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604900, 33.494122, 33.137173>,  <32.704777, 33.193161, 32.893356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604900, 33.494122, 33.137173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539044, 0.630931, -0.557994,
		-0.804416, 0.189242, -0.563119,
		-0.249693, 0.752405, 0.609541,
		32.529991, 33.719845, 33.320034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243320, 33.699791, 32.568214>,  <32.704777, 33.193161, 32.893356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243320, 33.699791, 32.568214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466881, 33.880459, 32.846386>,  <32.601017, 33.988861, 33.013290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466881, 33.880459, 32.846386>,  <32.243320, 33.699791, 32.568214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466881, 33.880459, 32.846386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291166, 0.678351, -0.674583,
		-0.776437, 0.579510, 0.247618,
		0.558900, 0.451673, 0.695430,
		32.634552, 34.015961, 33.055016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140465, 34.405273, 32.610977>,  <32.243320, 33.699791, 32.568214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140465, 34.405273, 32.610977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516907, 34.358135, 32.737740>,  <32.742771, 34.329853, 32.813797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516907, 34.358135, 32.737740>,  <32.140465, 34.405273, 32.610977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516907, 34.358135, 32.737740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293245, 0.751055, -0.591543,
		-0.168303, 0.649637, 0.741381,
		0.941106, -0.117848, 0.316908,
		32.799240, 34.322781, 32.832813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295383, 35.005440, 32.950153>,  <32.140465, 34.405273, 32.610977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295383, 35.005440, 32.950153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630295, 34.821415, 32.831966>,  <32.831242, 34.710999, 32.761055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630295, 34.821415, 32.831966>,  <32.295383, 35.005440, 32.950153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630295, 34.821415, 32.831966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301350, 0.839183, -0.452724,
		0.456233, 0.290019, 0.841273,
		0.837281, -0.460065, -0.295466,
		32.881477, 34.683395, 32.743328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796215, 35.416973, 33.125462>,  <32.295383, 35.005440, 32.950153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796215, 35.416973, 33.125462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913906, 35.195717, 32.813702>,  <32.984520, 35.062962, 32.626644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913906, 35.195717, 32.813702>,  <32.796215, 35.416973, 33.125462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913906, 35.195717, 32.813702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290475, 0.828675, -0.478458,
		0.910525, -0.085623, 0.404491,
		0.294225, -0.553142, -0.779401,
		33.002174, 35.029774, 32.579880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374371, 35.748444, 32.884762>,  <32.796215, 35.416973, 33.125462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374371, 35.748444, 32.884762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302025, 35.521244, 32.563599>,  <33.258617, 35.384926, 32.370899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.302025, 35.521244, 32.563599>,  <33.374371, 35.748444, 32.884762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302025, 35.521244, 32.563599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296224, 0.747004, -0.595177,
		0.937837, -0.345488, 0.033147,
		-0.180866, -0.567999, -0.802910,
		33.247765, 35.350845, 32.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929840, 35.877850, 32.501369>,  <33.374371, 35.748444, 32.884762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929840, 35.877850, 32.501369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663643, 35.734119, 32.239677>,  <33.503925, 35.647881, 32.082664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663643, 35.734119, 32.239677>,  <33.929840, 35.877850, 32.501369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663643, 35.734119, 32.239677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286199, 0.686667, -0.668265,
		0.689352, -0.631966, -0.354138,
		-0.665495, -0.359316, -0.654223,
		33.463997, 35.626324, 32.043407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216312, 35.971779, 31.833382>,  <33.929840, 35.877850, 32.501369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216312, 35.971779, 31.833382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837765, 35.888283, 31.734747>,  <33.610634, 35.838184, 31.675566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837765, 35.888283, 31.734747>,  <34.216312, 35.971779, 31.833382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837765, 35.888283, 31.734747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063563, 0.628038, -0.775582,
		0.316761, -0.749664, -0.581090,
		-0.946373, -0.208739, -0.246589,
		33.553852, 35.825661, 31.660770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243607, 35.782604, 31.180956>,  <34.216312, 35.971779, 31.833382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243607, 35.782604, 31.180956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866436, 35.903629, 31.236599>,  <33.640133, 35.976246, 31.269985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866436, 35.903629, 31.236599>,  <34.243607, 35.782604, 31.180956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866436, 35.903629, 31.236599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107132, 0.671129, -0.733559,
		-0.315306, -0.676787, -0.665237,
		-0.942923, 0.302564, 0.139106,
		33.583557, 35.994400, 31.278330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848076, 35.793556, 30.479517>,  <34.243607, 35.782604, 31.180956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848076, 35.793556, 30.479517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622906, 36.042393, 30.697186>,  <33.487804, 36.191692, 30.827787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622906, 36.042393, 30.697186>,  <33.848076, 35.793556, 30.479517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622906, 36.042393, 30.697186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078543, 0.615155, -0.784484,
		-0.822768, -0.484346, -0.297425,
		-0.562924, 0.622088, 0.544172,
		33.454029, 36.229019, 30.860437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416538, 36.158802, 29.952568>,  <33.848076, 35.793556, 30.479517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416538, 36.158802, 29.952568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385193, 36.391232, 30.276596>,  <33.366386, 36.530689, 30.471014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385193, 36.391232, 30.276596>,  <33.416538, 36.158802, 29.952568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385193, 36.391232, 30.276596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231847, 0.779669, -0.581690,
		-0.969590, -0.233399, 0.073618,
		-0.078368, 0.581069, 0.810072,
		33.361683, 36.565552, 30.519617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779804, 36.437794, 29.883732>,  <33.416538, 36.158802, 29.952568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779804, 36.437794, 29.883732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993832, 36.670555, 30.128710>,  <33.122250, 36.810211, 30.275698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993832, 36.670555, 30.128710>,  <32.779804, 36.437794, 29.883732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993832, 36.670555, 30.128710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151052, 0.779167, -0.608343,
		-0.831195, 0.232994, 0.504806,
		0.535068, 0.581904, 0.612446,
		33.154350, 36.845127, 30.312443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342155, 37.011692, 29.983885>,  <32.779804, 36.437794, 29.883732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342155, 37.011692, 29.983885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719067, 37.125603, 30.054333>,  <32.945213, 37.193947, 30.096601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719067, 37.125603, 30.054333>,  <32.342155, 37.011692, 29.983885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719067, 37.125603, 30.054333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089563, 0.721184, -0.686930,
		-0.322635, 0.631504, 0.705060,
		0.942277, 0.284775, 0.176120,
		33.001751, 37.211037, 30.107168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356968, 37.793282, 30.022232>,  <32.342155, 37.011692, 29.983885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356968, 37.793282, 30.022232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724186, 37.661098, 29.934601>,  <32.944515, 37.581787, 29.882023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724186, 37.661098, 29.934601>,  <32.356968, 37.793282, 30.022232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724186, 37.661098, 29.934601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119616, 0.757656, -0.641598,
		0.378005, 0.562810, 0.735090,
		0.918044, -0.330456, -0.219076,
		32.999599, 37.561962, 29.868877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817005, 38.375282, 30.044552>,  <32.356968, 37.793282, 30.022232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817005, 38.375282, 30.044552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996571, 38.095963, 29.821531>,  <33.104309, 37.928371, 29.687719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996571, 38.095963, 29.821531>,  <32.817005, 38.375282, 30.044552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996571, 38.095963, 29.821531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103779, 0.660475, -0.743642,
		0.887531, 0.275965, 0.368961,
		0.448909, -0.698295, -0.557552,
		33.131245, 37.886475, 29.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371868, 38.692707, 29.690741>,  <32.817005, 38.375282, 30.044552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371868, 38.692707, 29.690741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323917, 38.357738, 29.477438>,  <33.295147, 38.156757, 29.349457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323917, 38.357738, 29.477438>,  <33.371868, 38.692707, 29.690741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323917, 38.357738, 29.477438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160797, 0.513660, -0.842791,
		0.979681, -0.186773, 0.073080,
		-0.119872, -0.837418, -0.533256,
		33.287956, 38.106514, 29.317461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876377, 38.820648, 29.140272>,  <33.371868, 38.692707, 29.690741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876377, 38.820648, 29.140272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.639839, 38.513828, 29.040707>,  <33.497917, 38.329739, 28.980968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.639839, 38.513828, 29.040707>,  <33.876377, 38.820648, 29.140272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639839, 38.513828, 29.040707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107253, 0.231113, -0.966997,
		0.799257, -0.598522, -0.054398,
		-0.591341, -0.767045, -0.248912,
		33.462437, 38.283714, 28.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181210, 38.507019, 28.536688>,  <33.876377, 38.820648, 29.140272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181210, 38.507019, 28.536688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799583, 38.388294, 28.520433>,  <33.570606, 38.317059, 28.510681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799583, 38.388294, 28.520433>,  <34.181210, 38.507019, 28.536688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799583, 38.388294, 28.520433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027910, 0.223121, -0.974391,
		0.298280, -0.928503, -0.221157,
		-0.954070, -0.296814, -0.040638,
		33.513363, 38.299252, 28.508242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158478, 38.106541, 28.041960>,  <34.181210, 38.507019, 28.536688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158478, 38.106541, 28.041960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784969, 38.241436, 28.089861>,  <33.560863, 38.322372, 28.118603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784969, 38.241436, 28.089861>,  <34.158478, 38.106541, 28.041960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784969, 38.241436, 28.089861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028000, 0.264753, -0.963909,
		-0.356777, -0.903423, -0.237776,
		-0.933770, 0.337243, 0.119754,
		33.504837, 38.342609, 28.125788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816338, 37.896633, 27.488731>,  <34.158478, 38.106541, 28.041960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816338, 37.896633, 27.488731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573807, 38.184719, 27.623579>,  <33.428288, 38.357571, 27.704489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573807, 38.184719, 27.623579>,  <33.816338, 37.896633, 27.488731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573807, 38.184719, 27.623579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030338, 0.402678, -0.914839,
		-0.794635, -0.564921, -0.222306,
		-0.606330, 0.720218, 0.337120,
		33.391907, 38.400784, 27.724714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232639, 37.965492, 26.900919>,  <33.816338, 37.896633, 27.488731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232639, 37.965492, 26.900919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252583, 38.304893, 27.111656>,  <33.264549, 38.508533, 27.238098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252583, 38.304893, 27.111656>,  <33.232639, 37.965492, 26.900919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252583, 38.304893, 27.111656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249158, 0.500252, -0.829257,
		-0.967178, 0.172614, -0.186468,
		0.049860, 0.848500, 0.526841,
		33.267540, 38.559444, 27.269709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867943, 38.454323, 26.458847>,  <33.232639, 37.965492, 26.900919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867943, 38.454323, 26.458847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.072857, 38.668652, 26.727314>,  <33.195805, 38.797249, 26.888393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.072857, 38.668652, 26.727314>,  <32.867943, 38.454323, 26.458847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072857, 38.668652, 26.727314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062083, 0.756353, -0.651211,
		-0.856570, 0.375273, 0.354202,
		0.512284, 0.535817, 0.671167,
		33.226543, 38.829395, 26.928663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758575, 39.158398, 26.293644>,  <32.867943, 38.454323, 26.458847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758575, 39.158398, 26.293644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083553, 39.134644, 26.525646>,  <33.278542, 39.120392, 26.664848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083553, 39.134644, 26.525646>,  <32.758575, 39.158398, 26.293644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083553, 39.134644, 26.525646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492035, 0.603523, -0.627425,
		-0.312790, 0.795131, 0.519546,
		0.812444, -0.059383, 0.580008,
		33.327286, 39.116829, 26.699648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875500, 39.909267, 26.404442>,  <32.758575, 39.158398, 26.293644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875500, 39.909267, 26.404442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217407, 39.723732, 26.497581>,  <33.422554, 39.612411, 26.553465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217407, 39.723732, 26.497581>,  <32.875500, 39.909267, 26.404442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217407, 39.723732, 26.497581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495645, 0.596464, -0.631322,
		0.153944, 0.655047, 0.739740,
		0.854773, -0.463836, 0.232848,
		33.473839, 39.584579, 26.567436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329929, 40.430439, 26.625103>,  <32.875500, 39.909267, 26.404442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329929, 40.430439, 26.625103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555195, 40.122604, 26.504721>,  <33.690353, 39.937904, 26.432491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555195, 40.122604, 26.504721>,  <33.329929, 40.430439, 26.625103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555195, 40.122604, 26.504721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431651, 0.584538, -0.687018,
		0.704642, 0.256998, 0.661386,
		0.563167, -0.769589, -0.300956,
		33.724144, 39.891727, 26.414434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134266, 40.675224, 26.631390>,  <33.329929, 40.430439, 26.625103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134266, 40.675224, 26.631390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087456, 40.348946, 26.404785>,  <34.059368, 40.153179, 26.268822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087456, 40.348946, 26.404785>,  <34.134266, 40.675224, 26.631390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087456, 40.348946, 26.404785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366505, 0.494696, -0.788004,
		0.923027, -0.299847, 0.241066,
		-0.117026, -0.815701, -0.566513,
		34.052349, 40.104237, 26.234831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845692, 40.468449, 26.299879>,  <34.134266, 40.675224, 26.631390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845692, 40.468449, 26.299879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563126, 40.300999, 26.071590>,  <34.393585, 40.200527, 25.934618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563126, 40.300999, 26.071590>,  <34.845692, 40.468449, 26.299879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563126, 40.300999, 26.071590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485440, 0.300246, -0.821097,
		0.515092, -0.857089, -0.008880,
		-0.706419, -0.418630, -0.570719,
		34.351200, 40.175411, 25.900375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139172, 40.453796, 25.722364>,  <34.845692, 40.468449, 26.299879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139172, 40.453796, 25.722364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761326, 40.391193, 25.606976>,  <34.534618, 40.353634, 25.537743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761326, 40.391193, 25.606976>,  <35.139172, 40.453796, 25.722364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761326, 40.391193, 25.606976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193920, 0.442967, -0.875314,
		0.264774, -0.882772, -0.388083,
		-0.944611, -0.156503, -0.288473,
		34.477943, 40.344242, 25.520433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576813, 39.899845, 25.445837>,  <35.139172, 40.453796, 25.722364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576813, 39.899845, 25.445837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967915, 39.975880, 25.481314>,  <36.202576, 40.021500, 25.502600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967915, 39.975880, 25.481314>,  <35.576813, 39.899845, 25.445837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967915, 39.975880, 25.481314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012900, -0.476501, 0.879079,
		0.209364, -0.858378, -0.468352,
		0.977753, 0.190089, 0.088689,
		36.261242, 40.032906, 25.507921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651913, 39.331425, 25.781889>,  <35.576813, 39.899845, 25.445837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651913, 39.331425, 25.781889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981110, 39.553288, 25.830940>,  <36.178627, 39.686405, 25.860371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981110, 39.553288, 25.830940>,  <35.651913, 39.331425, 25.781889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981110, 39.553288, 25.830940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117542, -0.377480, 0.918527,
		0.555757, -0.741528, -0.375859,
		0.822993, 0.554658, 0.122626,
		36.228008, 39.719685, 25.867727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178921, 38.920761, 25.937614>,  <35.651913, 39.331425, 25.781889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178921, 38.920761, 25.937614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241245, 39.277332, 26.107828>,  <36.278641, 39.491276, 26.209957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241245, 39.277332, 26.107828>,  <36.178921, 38.920761, 25.937614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241245, 39.277332, 26.107828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165536, -0.448267, 0.878438,
		0.973818, -0.066426, -0.217407,
		0.155808, 0.891428, 0.425535,
		36.287987, 39.544762, 26.235489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718510, 38.825848, 26.418940>,  <36.178921, 38.920761, 25.937614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718510, 38.825848, 26.418940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527836, 39.162441, 26.520664>,  <36.413429, 39.364399, 26.581699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.527836, 39.162441, 26.520664>,  <36.718510, 38.825848, 26.418940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527836, 39.162441, 26.520664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006256, -0.292534, 0.956235,
		0.879050, 0.454235, 0.144711,
		-0.476688, 0.841483, 0.254311,
		36.384830, 39.414886, 26.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130550, 39.135098, 26.833546>,  <36.718510, 38.825848, 26.418940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130550, 39.135098, 26.833546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759045, 39.242439, 26.935827>,  <36.536140, 39.306843, 26.997196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759045, 39.242439, 26.935827>,  <37.130550, 39.135098, 26.833546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759045, 39.242439, 26.935827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149372, -0.360390, 0.920764,
		0.339246, 0.893367, 0.294632,
		-0.928763, 0.268356, 0.255705,
		36.480415, 39.322945, 27.012539>
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
