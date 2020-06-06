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
	<24.045624, 35.250526, 34.616203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278488, 35.245338, 34.941391>,  <24.418207, 35.242226, 35.136505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278488, 35.245338, 34.941391>,  <24.045624, 35.250526, 34.616203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278488, 35.245338, 34.941391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429370, 0.853991, -0.293839,
		-0.690458, 0.520127, 0.502729,
		0.582159, -0.012973, 0.812971,
		24.453136, 35.241447, 35.185284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085340, 35.887840, 34.998657>,  <24.045624, 35.250526, 34.616203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085340, 35.887840, 34.998657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432529, 35.689278, 34.992947>,  <24.640842, 35.570141, 34.989521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432529, 35.689278, 34.992947>,  <24.085340, 35.887840, 34.998657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432529, 35.689278, 34.992947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448100, 0.795258, -0.408376,
		0.214077, 0.348060, 0.912702,
		0.867973, -0.496406, -0.014281,
		24.692921, 35.540356, 34.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548550, 36.195042, 35.429974>,  <24.085340, 35.887840, 34.998657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548550, 36.195042, 35.429974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743208, 36.008957, 35.134201>,  <24.860003, 35.897305, 34.956738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743208, 36.008957, 35.134201>,  <24.548550, 36.195042, 35.429974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743208, 36.008957, 35.134201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280660, 0.884803, -0.371960,
		0.827288, -0.026515, 0.561152,
		0.486646, -0.465211, -0.739428,
		24.889202, 35.869392, 34.912373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187689, 36.403435, 35.556385>,  <24.548550, 36.195042, 35.429974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187689, 36.403435, 35.556385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190958, 36.288975, 35.173126>,  <25.192921, 36.220299, 34.943169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190958, 36.288975, 35.173126>,  <25.187689, 36.403435, 35.556385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190958, 36.288975, 35.173126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424027, 0.868763, -0.255839,
		0.905613, -0.404190, 0.128437,
		0.008174, -0.286152, -0.958149,
		25.193411, 36.203129, 34.885681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936325, 36.277748, 35.311047>,  <25.187689, 36.403435, 35.556385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936325, 36.277748, 35.311047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682919, 36.377430, 35.018047>,  <25.530874, 36.437241, 34.842247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682919, 36.377430, 35.018047>,  <25.936325, 36.277748, 35.311047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682919, 36.377430, 35.018047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579143, 0.780517, -0.235341,
		0.513077, -0.573313, -0.638799,
		-0.633518, 0.249208, -0.732496,
		25.492863, 36.452194, 34.798298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258938, 36.216408, 34.717743>,  <25.936325, 36.277748, 35.311047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258938, 36.216408, 34.717743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989758, 36.509449, 34.676888>,  <25.828249, 36.685272, 34.652374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989758, 36.509449, 34.676888>,  <26.258938, 36.216408, 34.717743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989758, 36.509449, 34.676888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737266, 0.653161, -0.172686,
		-0.059798, -0.191512, -0.979667,
		-0.672951, 0.732601, -0.102137,
		25.787872, 36.729229, 34.646248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444242, 36.566849, 34.105244>,  <26.258938, 36.216408, 34.717743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444242, 36.566849, 34.105244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233931, 36.814674, 34.338379>,  <26.107744, 36.963367, 34.478260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233931, 36.814674, 34.338379>,  <26.444242, 36.566849, 34.105244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233931, 36.814674, 34.338379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651346, 0.733932, -0.192594,
		-0.547088, 0.278369, -0.789434,
		-0.525778, 0.619561, 0.582839,
		26.076197, 37.000542, 34.513229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284809, 37.326481, 33.826668>,  <26.444242, 36.566849, 34.105244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284809, 37.326481, 33.826668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298969, 37.313824, 34.226215>,  <26.307465, 37.306229, 34.465946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298969, 37.313824, 34.226215>,  <26.284809, 37.326481, 33.826668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298969, 37.313824, 34.226215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634666, 0.772784, 0.001987,
		-0.771975, 0.633880, 0.047438,
		0.035399, -0.031641, 0.998872,
		26.309589, 37.304333, 34.525879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206459, 38.047352, 34.073383>,  <26.284809, 37.326481, 33.826668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206459, 38.047352, 34.073383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398180, 37.852161, 34.365177>,  <26.513212, 37.735046, 34.540253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398180, 37.852161, 34.365177>,  <26.206459, 38.047352, 34.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398180, 37.852161, 34.365177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610345, 0.782608, 0.122492,
		-0.630673, 0.386526, 0.672941,
		0.479303, -0.487978, 0.729484,
		26.541971, 37.705769, 34.584023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399378, 38.408234, 34.535656>,  <26.206459, 38.047352, 34.073383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399378, 38.408234, 34.535656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657240, 38.129566, 34.661556>,  <26.811956, 37.962364, 34.737099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657240, 38.129566, 34.661556>,  <26.399378, 38.408234, 34.535656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657240, 38.129566, 34.661556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623738, 0.717379, 0.310350,
		-0.442010, -0.003745, 0.897002,
		0.644653, -0.696673, 0.314753,
		26.850636, 37.920563, 34.755981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521761, 38.552979, 35.225277>,  <26.399378, 38.408234, 34.535656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521761, 38.552979, 35.225277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831093, 38.347584, 35.076527>,  <27.016691, 38.224346, 34.987274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831093, 38.347584, 35.076527>,  <26.521761, 38.552979, 35.225277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831093, 38.347584, 35.076527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586647, 0.801978, 0.112586,
		0.240427, -0.305228, 0.921429,
		0.773330, -0.513485, -0.371878,
		27.063091, 38.193539, 34.964962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213120, 38.653316, 35.682308>,  <26.521761, 38.552979, 35.225277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213120, 38.653316, 35.682308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314144, 38.540424, 35.312107>,  <27.374760, 38.472691, 35.089985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314144, 38.540424, 35.312107>,  <27.213120, 38.653316, 35.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314144, 38.540424, 35.312107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572100, 0.814963, -0.092396,
		0.780329, -0.506146, 0.367291,
		0.252563, -0.282226, -0.925506,
		27.389914, 38.455757, 35.034454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704899, 39.195297, 35.289341>,  <27.213120, 38.653316, 35.682308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704899, 39.195297, 35.289341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968037, 39.232765, 34.990417>,  <28.125919, 39.255245, 34.811062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968037, 39.232765, 34.990417>,  <27.704899, 39.195297, 35.289341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968037, 39.232765, 34.990417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020235, -0.989680, -0.141858,
		-0.752883, 0.108442, -0.649159,
		0.657843, 0.093666, -0.747308,
		28.165390, 39.260864, 34.766224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393028, 39.029613, 34.605942>,  <27.704899, 39.195297, 35.289341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393028, 39.029613, 34.605942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767744, 38.896004, 34.647621>,  <27.992573, 38.815838, 34.672626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767744, 38.896004, 34.647621>,  <27.393028, 39.029613, 34.605942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767744, 38.896004, 34.647621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317151, -0.936376, -0.150381,
		0.147796, 0.107829, -0.983122,
		0.936788, -0.334024, 0.104195,
		28.048780, 38.795795, 34.678879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514301, 38.669403, 34.019772>,  <27.393028, 39.029613, 34.605942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514301, 38.669403, 34.019772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725204, 38.566391, 34.343666>,  <27.851746, 38.504585, 34.538002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725204, 38.566391, 34.343666>,  <27.514301, 38.669403, 34.019772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725204, 38.566391, 34.343666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434844, -0.900500, -0.003247,
		0.730007, -0.350398, -0.586780,
		0.527258, -0.257528, 0.809740,
		27.883381, 38.489132, 34.586590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979797, 37.947929, 34.082584>,  <27.514301, 38.669403, 34.019772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979797, 37.947929, 34.082584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837355, 38.068066, 34.436531>,  <27.751888, 38.140148, 34.648899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837355, 38.068066, 34.436531>,  <27.979797, 37.947929, 34.082584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837355, 38.068066, 34.436531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420473, -0.897160, 0.135298,
		0.834500, -0.323881, 0.445770,
		-0.356107, 0.300341, 0.884864,
		27.730522, 38.158169, 34.701992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999702, 37.386208, 34.568428>,  <27.979797, 37.947929, 34.082584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999702, 37.386208, 34.568428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691723, 37.623722, 34.661884>,  <27.506935, 37.766232, 34.717957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691723, 37.623722, 34.661884>,  <27.999702, 37.386208, 34.568428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691723, 37.623722, 34.661884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614410, -0.788728, -0.020226,
		0.172270, -0.159125, 0.972113,
		-0.769951, 0.593791, 0.233642,
		27.460737, 37.801861, 34.731976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665594, 37.003311, 35.057388>,  <27.999702, 37.386208, 34.568428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665594, 37.003311, 35.057388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416265, 37.301987, 34.964500>,  <27.266668, 37.481194, 34.908768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416265, 37.301987, 34.964500>,  <27.665594, 37.003311, 35.057388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416265, 37.301987, 34.964500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781841, -0.600376, 0.168145,
		-0.013864, 0.286365, 0.958020,
		-0.623323, 0.746689, -0.232216,
		27.229269, 37.525993, 34.894836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122225, 36.960136, 35.561020>,  <27.665594, 37.003311, 35.057388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122225, 36.960136, 35.561020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964920, 37.183407, 35.268780>,  <26.870537, 37.317371, 35.093433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964920, 37.183407, 35.268780>,  <27.122225, 36.960136, 35.561020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964920, 37.183407, 35.268780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833126, -0.552454, 0.026371,
		-0.388905, 0.619056, 0.682292,
		-0.393260, 0.558180, -0.730604,
		26.846943, 37.350861, 35.049599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463535, 37.250507, 35.798397>,  <27.122225, 36.960136, 35.561020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463535, 37.250507, 35.798397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428661, 37.247971, 35.399929>,  <26.407736, 37.246449, 35.160847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428661, 37.247971, 35.399929>,  <26.463535, 37.250507, 35.798397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428661, 37.247971, 35.399929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863294, -0.498523, 0.078731,
		-0.497114, 0.866854, 0.037988,
		-0.087186, -0.006343, -0.996172,
		26.402506, 37.246067, 35.101078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806873, 37.543102, 35.548672>,  <26.463535, 37.250507, 35.798397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806873, 37.543102, 35.548672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942268, 37.291138, 35.269058>,  <26.023506, 37.139961, 35.101292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942268, 37.291138, 35.269058>,  <25.806873, 37.543102, 35.548672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942268, 37.291138, 35.269058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819705, -0.562187, 0.109675,
		-0.462071, 0.535875, -0.706632,
		0.338488, -0.629908, -0.699030,
		26.043816, 37.102165, 35.059349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255108, 37.904366, 35.159229>,  <25.806873, 37.543102, 35.548672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255108, 37.904366, 35.159229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492479, 37.653831, 34.957024>,  <25.634901, 37.503510, 34.835701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492479, 37.653831, 34.957024>,  <25.255108, 37.904366, 35.159229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492479, 37.653831, 34.957024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771178, -0.622301, -0.134256,
		-0.230495, 0.469515, -0.852307,
		0.593427, -0.626336, -0.505517,
		25.670507, 37.465931, 34.805370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918840, 37.687473, 34.447651>,  <25.255108, 37.904366, 35.159229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918840, 37.687473, 34.447651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164520, 37.379589, 34.517284>,  <25.311928, 37.194859, 34.559067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164520, 37.379589, 34.517284>,  <24.918840, 37.687473, 34.447651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164520, 37.379589, 34.517284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752536, -0.637690, -0.164443,
		0.237586, -0.030006, -0.970903,
		0.614200, -0.769709, 0.174087,
		25.348780, 37.148678, 34.569511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683393, 37.193447, 34.005783>,  <24.918840, 37.687473, 34.447651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683393, 37.193447, 34.005783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889164, 37.029896, 34.307293>,  <25.012627, 36.931763, 34.488201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889164, 37.029896, 34.307293>,  <24.683393, 37.193447, 34.005783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889164, 37.029896, 34.307293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664401, -0.745775, 0.048892,
		0.542158, -0.525961, -0.655309,
		0.514428, -0.408881, 0.753777,
		25.043493, 36.907230, 34.533424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830961, 37.196499, 33.297230>,  <24.683393, 37.193447, 34.005783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830961, 37.196499, 33.297230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179853, 37.223518, 33.103466>,  <25.389189, 37.239731, 32.987209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179853, 37.223518, 33.103466>,  <24.830961, 37.196499, 33.297230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179853, 37.223518, 33.103466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290390, -0.868478, 0.401771,
		-0.393560, -0.491105, -0.777127,
		0.872229, 0.067549, -0.484410,
		25.441523, 37.243782, 32.958141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002981, 36.501247, 33.610252>,  <24.830961, 37.196499, 33.297230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002981, 36.501247, 33.610252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215157, 36.473316, 33.948189>,  <25.342463, 36.456558, 34.150951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215157, 36.473316, 33.948189>,  <25.002981, 36.501247, 33.610252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215157, 36.473316, 33.948189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296247, -0.949035, 0.107563,
		0.794274, -0.307338, -0.524091,
		0.530439, -0.069826, 0.844842,
		25.374289, 36.452370, 34.201641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191566, 35.848289, 33.668259>,  <25.002981, 36.501247, 33.610252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191566, 35.848289, 33.668259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204615, 35.940235, 34.057331>,  <25.212444, 35.995403, 34.290775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204615, 35.940235, 34.057331>,  <25.191566, 35.848289, 33.668259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204615, 35.940235, 34.057331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280581, -0.931953, 0.229646,
		0.959276, -0.280406, 0.034093,
		0.032621, 0.229860, 0.972677,
		25.214401, 36.009193, 34.349133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540203, 35.277058, 33.939709>,  <25.191566, 35.848289, 33.668259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540203, 35.277058, 33.939709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339748, 35.452229, 34.238258>,  <25.219475, 35.557331, 34.417389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339748, 35.452229, 34.238258>,  <25.540203, 35.277058, 33.939709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339748, 35.452229, 34.238258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293558, -0.897386, 0.329426,
		0.814054, -0.054018, 0.578271,
		-0.501138, 0.437926, 0.746379,
		25.189407, 35.583607, 34.462173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760090, 35.264050, 34.671082>,  <25.540203, 35.277058, 33.939709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760090, 35.264050, 34.671082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360353, 35.275852, 34.679527>,  <25.120512, 35.282932, 34.684597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360353, 35.275852, 34.679527>,  <25.760090, 35.264050, 34.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360353, 35.275852, 34.679527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022068, -0.956254, 0.291706,
		0.028800, 0.291048, 0.956275,
		-0.999342, 0.029504, 0.021117,
		25.060551, 35.284702, 34.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398035, 35.059189, 35.379681>,  <25.760090, 35.264050, 34.671082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398035, 35.059189, 35.379681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141417, 34.981037, 35.082966>,  <24.987446, 34.934147, 34.904938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141417, 34.981037, 35.082966>,  <25.398035, 35.059189, 35.379681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141417, 34.981037, 35.082966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041305, -0.956819, 0.287735,
		-0.765971, 0.215235, 0.605774,
		-0.641547, -0.195375, -0.741786,
		24.948952, 34.922424, 34.860432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017773, 34.697121, 35.812260>,  <25.398035, 35.059189, 35.379681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017773, 34.697121, 35.812260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991447, 34.613770, 35.421928>,  <24.975653, 34.563759, 35.187729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991447, 34.613770, 35.421928>,  <25.017773, 34.697121, 35.812260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991447, 34.613770, 35.421928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243569, -0.945015, 0.218222,
		-0.967648, 0.252044, 0.011442,
		-0.065814, -0.208375, -0.975832,
		24.971703, 34.551258, 35.129177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542906, 34.158707, 35.770939>,  <25.017773, 34.697121, 35.812260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542906, 34.158707, 35.770939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790730, 34.082184, 35.466427>,  <24.939425, 34.036270, 35.283722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.790730, 34.082184, 35.466427>,  <24.542906, 34.158707, 35.770939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790730, 34.082184, 35.466427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316217, -0.826834, 0.465137,
		-0.718436, -0.528910, -0.451778,
		0.619561, -0.191311, -0.761278,
		24.976597, 34.024792, 35.238045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606264, 33.344677, 35.716564>,  <24.542906, 34.158707, 35.770939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606264, 33.344677, 35.716564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918009, 33.500259, 35.520073>,  <25.105057, 33.593609, 35.402180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918009, 33.500259, 35.520073>,  <24.606264, 33.344677, 35.716564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918009, 33.500259, 35.520073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536954, -0.818650, 0.203698,
		-0.322912, -0.422520, -0.846879,
		0.779364, 0.388959, -0.491226,
		25.151817, 33.616947, 35.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852861, 32.917603, 35.209335>,  <24.606264, 33.344677, 35.716564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852861, 32.917603, 35.209335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172441, 33.130371, 35.321579>,  <25.364189, 33.258030, 35.388927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172441, 33.130371, 35.321579>,  <24.852861, 32.917603, 35.209335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172441, 33.130371, 35.321579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496006, -0.846666, 0.192703,
		0.340088, -0.014774, -0.940278,
		0.798949, 0.531919, 0.280613,
		25.412127, 33.289948, 35.405762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463018, 32.512192, 35.019783>,  <24.852861, 32.917603, 35.209335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463018, 32.512192, 35.019783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560179, 32.749832, 35.326519>,  <25.618475, 32.892418, 35.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560179, 32.749832, 35.326519>,  <25.463018, 32.512192, 35.019783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560179, 32.749832, 35.326519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845643, -0.516997, 0.132677,
		0.475277, 0.616245, -0.627976,
		0.242900, 0.594102, 0.766839,
		25.633049, 32.928062, 35.556572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202753, 32.388008, 35.157997>,  <25.463018, 32.512192, 35.019783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202753, 32.388008, 35.157997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107578, 32.660782, 35.434650>,  <26.050472, 32.824448, 35.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107578, 32.660782, 35.434650>,  <26.202753, 32.388008, 35.157997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107578, 32.660782, 35.434650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849948, -0.198444, 0.488067,
		0.470079, 0.703979, -0.532390,
		-0.237939, 0.681934, 0.691630,
		26.036196, 32.865360, 35.642139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801710, 32.626766, 35.462055>,  <26.202753, 32.388008, 35.157997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801710, 32.626766, 35.462055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545668, 32.781372, 35.727646>,  <26.392042, 32.874138, 35.887001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545668, 32.781372, 35.727646>,  <26.801710, 32.626766, 35.462055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545668, 32.781372, 35.727646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734774, 0.055515, 0.676036,
		0.224438, 0.920610, -0.319538,
		-0.640105, 0.386517, 0.663981,
		26.353636, 32.897327, 35.926842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201822, 32.855610, 36.042995>,  <26.801710, 32.626766, 35.462055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201822, 32.855610, 36.042995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842012, 32.870796, 36.217079>,  <26.626125, 32.879910, 36.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842012, 32.870796, 36.217079>,  <27.201822, 32.855610, 36.042995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842012, 32.870796, 36.217079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421287, -0.188272, 0.887170,
		0.115624, 0.981383, 0.153360,
		-0.899527, 0.037969, 0.435213,
		26.572155, 32.882187, 36.347645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149057, 33.324089, 36.658134>,  <27.201822, 32.855610, 36.042995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149057, 33.324089, 36.658134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903278, 33.009270, 36.680050>,  <26.755810, 32.820377, 36.693199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903278, 33.009270, 36.680050>,  <27.149057, 33.324089, 36.658134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903278, 33.009270, 36.680050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422375, -0.269503, 0.865429,
		-0.666372, 0.554903, 0.498027,
		-0.614449, -0.787052, 0.054788,
		26.718945, 32.773155, 36.696487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871405, 33.095284, 36.754284>,  <27.149057, 33.324089, 36.658134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871405, 33.095284, 36.754284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954596, 32.751038, 36.940228>,  <28.004511, 32.544491, 37.051792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954596, 32.751038, 36.940228>,  <27.871405, 33.095284, 36.754284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954596, 32.751038, 36.940228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196295, -0.502302, -0.842117,
		0.958235, 0.083892, -0.273402,
		0.207977, -0.860613, 0.464856,
		28.016989, 32.492855, 37.079685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402388, 32.673737, 37.026844>,  <27.871405, 33.095284, 36.754284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402388, 32.673737, 37.026844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149298, 32.763409, 37.323330>,  <26.997444, 32.817211, 37.501221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149298, 32.763409, 37.323330>,  <27.402388, 32.673737, 37.026844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149298, 32.763409, 37.323330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774208, -0.163159, -0.611539,
		-0.016156, -0.960794, 0.276793,
		-0.632725, 0.224175, 0.741219,
		26.959480, 32.830662, 37.545696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780704, 32.218327, 37.154846>,  <27.402388, 32.673737, 37.026844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780704, 32.218327, 37.154846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679037, 32.598713, 37.225346>,  <26.618036, 32.826946, 37.267647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679037, 32.598713, 37.225346>,  <26.780704, 32.218327, 37.154846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679037, 32.598713, 37.225346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746625, -0.077087, -0.660763,
		-0.614776, -0.299539, 0.729607,
		-0.254167, 0.950965, 0.176252,
		26.602787, 32.884003, 37.278221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927967, 32.394474, 37.216225>,  <26.780704, 32.218327, 37.154846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927967, 32.394474, 37.216225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144499, 32.701065, 37.077965>,  <26.274418, 32.885021, 36.995007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144499, 32.701065, 37.077965>,  <25.927967, 32.394474, 37.216225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144499, 32.701065, 37.077965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564324, 0.026454, -0.825130,
		-0.623299, 0.641727, 0.446862,
		0.541329, 0.766477, -0.345653,
		26.306898, 32.931007, 36.974270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476160, 32.883682, 36.975258>,  <25.927967, 32.394474, 37.216225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476160, 32.883682, 36.975258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816219, 32.917492, 36.767372>,  <26.020254, 32.937778, 36.642639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816219, 32.917492, 36.767372>,  <25.476160, 32.883682, 36.975258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816219, 32.917492, 36.767372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525515, 0.074419, -0.847524,
		-0.032957, 0.993639, 0.107685,
		0.850146, 0.084521, -0.519719,
		26.071262, 32.942848, 36.611458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418781, 33.496391, 36.603813>,  <25.476160, 32.883682, 36.975258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418781, 33.496391, 36.603813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689388, 33.265205, 36.421261>,  <25.851753, 33.126495, 36.311729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689388, 33.265205, 36.421261>,  <25.418781, 33.496391, 36.603813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689388, 33.265205, 36.421261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414546, 0.213330, -0.884670,
		0.608666, 0.787686, -0.095271,
		0.676518, -0.577964, -0.456379,
		25.892344, 33.091816, 36.284348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812023, 33.915627, 36.228951>,  <25.418781, 33.496391, 36.603813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812023, 33.915627, 36.228951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822884, 33.568535, 36.030430>,  <25.829399, 33.360279, 35.911320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822884, 33.568535, 36.030430>,  <25.812023, 33.915627, 36.228951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822884, 33.568535, 36.030430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339863, 0.458895, -0.820919,
		0.940083, 0.190961, -0.282450,
		0.027149, -0.867726, -0.496300,
		25.831028, 33.308216, 35.881538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266724, 34.125160, 35.717934>,  <25.812023, 33.915627, 36.228951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266724, 34.125160, 35.717934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021202, 33.838226, 35.586071>,  <25.873888, 33.666065, 35.506954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021202, 33.838226, 35.586071>,  <26.266724, 34.125160, 35.717934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021202, 33.838226, 35.586071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459402, 0.664142, -0.589802,
		0.642019, -0.210585, -0.737201,
		-0.613810, -0.717335, -0.329649,
		25.837061, 33.623024, 35.487175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226746, 34.105015, 34.913662>,  <26.266724, 34.125160, 35.717934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226746, 34.105015, 34.913662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897100, 33.935326, 35.063793>,  <25.699314, 33.833511, 35.153873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897100, 33.935326, 35.063793>,  <26.226746, 34.105015, 34.913662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897100, 33.935326, 35.063793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566366, 0.626961, -0.534929,
		-0.008385, -0.653415, -0.756953,
		-0.824111, -0.424227, 0.375329,
		25.649868, 33.808056, 35.176392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788843, 33.744431, 34.291836>,  <26.226746, 34.105015, 34.913662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788843, 33.744431, 34.291836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547571, 33.833618, 34.598160>,  <25.402807, 33.887131, 34.781952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547571, 33.833618, 34.598160>,  <25.788843, 33.744431, 34.291836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547571, 33.833618, 34.598160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581780, 0.533814, -0.613656,
		-0.545625, -0.815676, -0.192267,
		-0.603179, 0.222969, 0.765806,
		25.366617, 33.900509, 34.827900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243326, 33.992756, 33.922886>,  <25.788843, 33.744431, 34.291836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243326, 33.992756, 33.922886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181189, 34.081070, 34.308033>,  <25.143906, 34.134060, 34.539124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181189, 34.081070, 34.308033>,  <25.243326, 33.992756, 33.922886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181189, 34.081070, 34.308033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560969, 0.782586, -0.269951,
		-0.813131, -0.582076, 0.002286,
		-0.155342, 0.220788, 0.962871,
		25.134586, 34.147305, 34.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721581, 34.530998, 33.818787>,  <25.243326, 33.992756, 33.922886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721581, 34.530998, 33.818787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782650, 34.526115, 34.214066>,  <24.819292, 34.523186, 34.451233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782650, 34.526115, 34.214066>,  <24.721581, 34.530998, 33.818787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782650, 34.526115, 34.214066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491079, 0.866803, 0.086575,
		-0.857632, -0.498502, 0.126343,
		0.152672, -0.012205, 0.988202,
		24.828451, 34.522453, 34.510525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116110, 34.159092, 33.188145>,  <24.721581, 34.530998, 33.818787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116110, 34.159092, 33.188145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163872, 34.154930, 32.791027>,  <25.192530, 34.152435, 32.552757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163872, 34.154930, 32.791027>,  <25.116110, 34.159092, 33.188145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163872, 34.154930, 32.791027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975275, -0.186061, 0.119247,
		-0.185958, -0.982484, -0.012094,
		0.119409, -0.010380, -0.992791,
		25.199694, 34.151810, 32.493191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517895, 33.585014, 33.019974>,  <25.116110, 34.159092, 33.188145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517895, 33.585014, 33.019974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536865, 33.880062, 32.750553>,  <25.548248, 34.057091, 32.588902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536865, 33.880062, 32.750553>,  <25.517895, 33.585014, 33.019974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536865, 33.880062, 32.750553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997275, 0.003177, 0.073700,
		0.056503, -0.675213, -0.735456,
		0.047427, 0.737616, -0.673553,
		25.551094, 34.101345, 32.548489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122435, 33.469254, 32.573383>,  <25.517895, 33.585014, 33.019974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122435, 33.469254, 32.573383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087914, 33.867664, 32.582138>,  <26.067200, 34.106712, 32.587391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087914, 33.867664, 32.582138>,  <26.122435, 33.469254, 32.573383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087914, 33.867664, 32.582138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984708, 0.088619, -0.149989,
		-0.151333, 0.008608, -0.988445,
		-0.086304, 0.996028, 0.021887,
		26.062023, 34.166473, 32.588703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334234, 33.904892, 31.895075>,  <26.122435, 33.469254, 32.573383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334234, 33.904892, 31.895075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376789, 34.121559, 32.228607>,  <26.402321, 34.251560, 32.428726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376789, 34.121559, 32.228607>,  <26.334234, 33.904892, 31.895075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376789, 34.121559, 32.228607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979158, 0.088841, -0.182641,
		-0.173010, 0.835882, -0.520931,
		0.106386, 0.541672, 0.833830,
		26.408705, 34.284061, 32.478756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832092, 34.375469, 31.593596>,  <26.334234, 33.904892, 31.895075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832092, 34.375469, 31.593596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814096, 34.387196, 31.993019>,  <26.803299, 34.394230, 32.232674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.814096, 34.387196, 31.993019>,  <26.832092, 34.375469, 31.593596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814096, 34.387196, 31.993019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989232, 0.140660, 0.040441,
		-0.139272, 0.989624, -0.035326,
		-0.044990, 0.029313, 0.998557,
		26.800600, 34.395988, 32.292587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947081, 35.068161, 31.916609>,  <26.832092, 34.375469, 31.593596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947081, 35.068161, 31.916609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064140, 34.752106, 32.132030>,  <27.134377, 34.562473, 32.261284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064140, 34.752106, 32.132030>,  <26.947081, 35.068161, 31.916609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064140, 34.752106, 32.132030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947548, 0.315308, -0.052290,
		-0.128494, 0.525606, 0.840968,
		0.292648, -0.790139, 0.538552,
		27.151936, 34.515064, 32.293594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342384, 35.279785, 32.490635>,  <26.947081, 35.068161, 31.916609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342384, 35.279785, 32.490635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450939, 34.904125, 32.406410>,  <27.516073, 34.678730, 32.355873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450939, 34.904125, 32.406410>,  <27.342384, 35.279785, 32.490635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450939, 34.904125, 32.406410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955913, 0.288504, -0.054740,
		0.112158, -0.186424, 0.976047,
		0.271389, -0.939155, -0.210563,
		27.532356, 34.622379, 32.343243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902651, 35.035027, 32.991177>,  <27.342384, 35.279785, 32.490635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902651, 35.035027, 32.991177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875416, 34.916256, 32.610188>,  <27.859074, 34.844994, 32.381596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875416, 34.916256, 32.610188>,  <27.902651, 35.035027, 32.991177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875416, 34.916256, 32.610188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944002, 0.289750, -0.157812,
		0.322837, -0.909879, 0.260570,
		-0.068090, -0.296927, -0.952470,
		27.854988, 34.827179, 32.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454439, 34.558846, 32.878647>,  <27.902651, 35.035027, 32.991177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454439, 34.558846, 32.878647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374502, 34.758938, 32.541641>,  <28.326540, 34.878994, 32.339439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374502, 34.758938, 32.541641>,  <28.454439, 34.558846, 32.878647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374502, 34.758938, 32.541641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960792, 0.268712, -0.068355,
		0.192199, -0.823140, -0.534322,
		-0.199844, 0.500235, -0.842513,
		28.314548, 34.909008, 32.288887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069784, 34.500072, 32.439476>,  <28.454439, 34.558846, 32.878647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069784, 34.500072, 32.439476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875694, 34.823612, 32.306618>,  <28.759239, 35.017735, 32.226902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875694, 34.823612, 32.306618>,  <29.069784, 34.500072, 32.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875694, 34.823612, 32.306618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872576, 0.472372, -0.124402,
		0.056272, -0.350182, -0.934990,
		-0.485227, 0.808849, -0.332142,
		28.730125, 35.066265, 32.206974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303915, 34.686420, 31.805880>,  <29.069784, 34.500072, 32.439476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303915, 34.686420, 31.805880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143404, 35.021976, 31.952976>,  <29.047096, 35.223312, 32.041233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143404, 35.021976, 31.952976>,  <29.303915, 34.686420, 31.805880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143404, 35.021976, 31.952976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788505, 0.520674, -0.327351,
		-0.466086, 0.158606, -0.870407,
		-0.401278, 0.838894, 0.367740,
		29.023020, 35.273643, 32.063297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351185, 35.182446, 31.283548>,  <29.303915, 34.686420, 31.805880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351185, 35.182446, 31.283548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345642, 35.376099, 31.633501>,  <29.342316, 35.492290, 31.843473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345642, 35.376099, 31.633501>,  <29.351185, 35.182446, 31.283548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345642, 35.376099, 31.633501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732384, 0.600606, -0.320757,
		-0.680750, 0.636306, -0.362896,
		-0.013858, 0.484135, 0.874883,
		29.341484, 35.521339, 31.895966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994961, 35.899578, 31.255020>,  <29.351185, 35.182446, 31.283548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994961, 35.899578, 31.255020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310722, 35.787876, 31.473690>,  <29.500179, 35.720856, 31.604893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310722, 35.787876, 31.473690>,  <28.994961, 35.899578, 31.255020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310722, 35.787876, 31.473690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610804, 0.446241, -0.654054,
		-0.061300, 0.850226, 0.522837,
		0.789405, -0.279258, 0.546676,
		29.547544, 35.704098, 31.637693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613157, 36.334053, 31.338392>,  <28.994961, 35.899578, 31.255020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613157, 36.334053, 31.338392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774160, 35.969288, 31.370415>,  <29.870762, 35.750431, 31.389627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774160, 35.969288, 31.370415>,  <29.613157, 36.334053, 31.338392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774160, 35.969288, 31.370415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666199, 0.231826, -0.708827,
		0.627827, 0.338642, 0.700825,
		0.402508, -0.911909, 0.080056,
		29.894913, 35.695717, 31.394432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321095, 36.380852, 31.273304>,  <29.613157, 36.334053, 31.338392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321095, 36.380852, 31.273304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241499, 36.004162, 31.164818>,  <30.193741, 35.778149, 31.099726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241499, 36.004162, 31.164818>,  <30.321095, 36.380852, 31.273304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241499, 36.004162, 31.164818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609576, 0.097759, -0.786677,
		0.767347, -0.321867, 0.554600,
		-0.198988, -0.941724, -0.271217,
		30.181803, 35.721645, 31.083452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908924, 35.855576, 31.282122>,  <30.321095, 36.380852, 31.273304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908924, 35.855576, 31.282122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633680, 35.803215, 30.996641>,  <30.468534, 35.771801, 30.825354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633680, 35.803215, 30.996641>,  <30.908924, 35.855576, 31.282122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633680, 35.803215, 30.996641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681439, 0.221348, -0.697600,
		0.249295, -0.966369, -0.063108,
		-0.688108, -0.130904, -0.713702,
		30.427248, 35.763947, 30.782530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305382, 35.582439, 30.710016>,  <30.908924, 35.855576, 31.282122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305382, 35.582439, 30.710016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984129, 35.792946, 30.598284>,  <30.791378, 35.919250, 30.531244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984129, 35.792946, 30.598284>,  <31.305382, 35.582439, 30.710016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984129, 35.792946, 30.598284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479667, 0.293020, -0.827078,
		-0.353410, -0.798240, -0.487765,
		-0.803132, 0.526263, -0.279333,
		30.743189, 35.950825, 30.514484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950237, 35.404610, 30.100138>,  <31.305382, 35.582439, 30.710016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950237, 35.404610, 30.100138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884445, 35.797756, 30.133423>,  <30.844971, 36.033642, 30.153395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884445, 35.797756, 30.133423>,  <30.950237, 35.404610, 30.100138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884445, 35.797756, 30.133423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399617, 0.143529, -0.905376,
		-0.901805, -0.115661, -0.416377,
		-0.164479, 0.982864, 0.083215,
		30.835102, 36.092617, 30.158388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988947, 35.569866, 29.453493>,  <30.950237, 35.404610, 30.100138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988947, 35.569866, 29.453493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005663, 35.933399, 29.619518>,  <31.015694, 36.151520, 29.719133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005663, 35.933399, 29.619518>,  <30.988947, 35.569866, 29.453493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005663, 35.933399, 29.619518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587914, 0.313523, -0.745695,
		-0.807843, 0.275184, -0.521213,
		0.041791, 0.908833, 0.415062,
		31.018200, 36.206051, 29.744038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001457, 36.069813, 28.894688>,  <30.988947, 35.569866, 29.453493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001457, 36.069813, 28.894688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124416, 36.312119, 29.188232>,  <31.198191, 36.457504, 29.364359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124416, 36.312119, 29.188232>,  <31.001457, 36.069813, 28.894688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124416, 36.312119, 29.188232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676245, 0.403508, -0.616339,
		-0.669477, 0.685730, -0.285611,
		0.307396, 0.605768, 0.733862,
		31.216635, 36.493851, 29.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951338, 36.812126, 28.684767>,  <31.001457, 36.069813, 28.894688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951338, 36.812126, 28.684767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211441, 36.818039, 28.988594>,  <31.367504, 36.821587, 29.170891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211441, 36.818039, 28.988594>,  <30.951338, 36.812126, 28.684767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211441, 36.818039, 28.988594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656703, 0.491760, -0.571763,
		-0.381975, 0.870605, 0.310067,
		0.650259, 0.014777, 0.759569,
		31.406519, 36.822472, 29.216465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189919, 37.465702, 28.614981>,  <30.951338, 36.812126, 28.684767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189919, 37.465702, 28.614981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465719, 37.256943, 28.815861>,  <31.631201, 37.131687, 28.936388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465719, 37.256943, 28.815861>,  <31.189919, 37.465702, 28.614981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465719, 37.256943, 28.815861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723740, 0.469647, -0.505601,
		0.028017, 0.712076, 0.701543,
		0.689504, -0.521900, 0.502200,
		31.672571, 37.100372, 28.966520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707323, 37.908810, 28.745783>,  <31.189919, 37.465702, 28.614981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707323, 37.908810, 28.745783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893270, 37.557419, 28.789906>,  <32.004841, 37.346584, 28.816380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893270, 37.557419, 28.789906>,  <31.707323, 37.908810, 28.745783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893270, 37.557419, 28.789906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794311, 0.358769, -0.490261,
		0.391110, 0.315525, 0.864567,
		0.464869, -0.878481, 0.110307,
		32.032730, 37.293873, 28.822998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456375, 38.080650, 28.753168>,  <31.707323, 37.908810, 28.745783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456375, 38.080650, 28.753168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455582, 37.686016, 28.687868>,  <32.455105, 37.449238, 28.648687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455582, 37.686016, 28.687868>,  <32.456375, 38.080650, 28.753168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455582, 37.686016, 28.687868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709627, 0.113633, -0.695354,
		0.704575, -0.117226, 0.699881,
		-0.001984, -0.986583, -0.163250,
		32.454987, 37.390041, 28.638893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160606, 37.885868, 28.728527>,  <32.456375, 38.080650, 28.753168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160606, 37.885868, 28.728527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957615, 37.609428, 28.522675>,  <32.835819, 37.443565, 28.399162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957615, 37.609428, 28.522675>,  <33.160606, 37.885868, 28.728527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957615, 37.609428, 28.522675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757094, -0.072445, -0.649277,
		0.411433, -0.719118, 0.559993,
		-0.507475, -0.691102, -0.514633,
		32.805374, 37.402100, 28.368284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620190, 37.308601, 28.476410>,  <33.160606, 37.885868, 28.728527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620190, 37.308601, 28.476410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303978, 37.274960, 28.233761>,  <33.114250, 37.254776, 28.088171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303978, 37.274960, 28.233761>,  <33.620190, 37.308601, 28.476410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303978, 37.274960, 28.233761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611938, -0.147995, -0.776936,
		-0.024435, -0.985406, 0.168459,
		-0.790529, -0.084102, -0.606623,
		33.066818, 37.249729, 28.051773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813522, 36.758484, 28.025984>,  <33.620190, 37.308601, 28.476410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813522, 36.758484, 28.025984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506638, 36.938732, 27.843414>,  <33.322506, 37.046883, 27.733873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506638, 36.938732, 27.843414>,  <33.813522, 36.758484, 28.025984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506638, 36.938732, 27.843414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508104, -0.007268, -0.861265,
		-0.391420, -0.892687, -0.223385,
		-0.767216, 0.450619, -0.456423,
		33.276474, 37.073917, 27.706488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904850, 36.488522, 27.351110>,  <33.813522, 36.758484, 28.025984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904850, 36.488522, 27.351110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664280, 36.807991, 27.343002>,  <33.519939, 36.999672, 27.338139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664280, 36.807991, 27.343002>,  <33.904850, 36.488522, 27.351110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664280, 36.807991, 27.343002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284588, 0.190460, -0.939540,
		-0.746525, -0.570830, -0.341839,
		-0.601424, 0.798673, -0.020268,
		33.483852, 37.047592, 27.336922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660736, 36.446026, 26.733000>,  <33.904850, 36.488522, 27.351110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660736, 36.446026, 26.733000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618431, 36.829510, 26.838589>,  <33.593048, 37.059601, 26.901943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618431, 36.829510, 26.838589>,  <33.660736, 36.446026, 26.733000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618431, 36.829510, 26.838589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321340, 0.284172, -0.903320,
		-0.941039, -0.010713, -0.338128,
		-0.105763, 0.958714, 0.263975,
		33.586700, 37.117123, 26.917782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334454, 36.839176, 26.259954>,  <33.660736, 36.446026, 26.733000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334454, 36.839176, 26.259954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504269, 37.143761, 26.455894>,  <33.606159, 37.326511, 26.573458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504269, 37.143761, 26.455894>,  <33.334454, 36.839176, 26.259954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504269, 37.143761, 26.455894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285954, 0.400569, -0.870503,
		-0.859068, 0.509635, -0.047685,
		0.424538, 0.761457, 0.489848,
		33.631630, 37.372196, 26.602848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922634, 37.458942, 26.039639>,  <33.334454, 36.839176, 26.259954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922634, 37.458942, 26.039639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279434, 37.565659, 26.185596>,  <33.493515, 37.629688, 26.273172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279434, 37.565659, 26.185596>,  <32.922634, 37.458942, 26.039639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279434, 37.565659, 26.185596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205570, 0.479511, -0.853118,
		-0.402579, 0.835997, 0.372880,
		0.892004, 0.266794, 0.364897,
		33.547035, 37.645699, 26.295065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052055, 38.226463, 25.983089>,  <32.922634, 37.458942, 26.039639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052055, 38.226463, 25.983089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405148, 38.038513, 25.983068>,  <33.617004, 37.925743, 25.983057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405148, 38.038513, 25.983068>,  <33.052055, 38.226463, 25.983089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405148, 38.038513, 25.983068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241860, 0.454468, -0.857300,
		0.402843, 0.756756, 0.514818,
		0.882735, -0.469871, -0.000051,
		33.669968, 37.897552, 25.983053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447563, 38.710396, 25.787983>,  <33.052055, 38.226463, 25.983089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447563, 38.710396, 25.787983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679966, 38.391602, 25.721968>,  <33.819408, 38.200325, 25.682360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679966, 38.391602, 25.721968>,  <33.447563, 38.710396, 25.787983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679966, 38.391602, 25.721968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201156, 0.337096, -0.919730,
		0.788648, 0.501173, 0.356175,
		0.581009, -0.796989, -0.165036,
		33.854267, 38.152504, 25.672457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116047, 38.903484, 25.565372>,  <33.447563, 38.710396, 25.787983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116047, 38.903484, 25.565372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066547, 38.525200, 25.445168>,  <34.036846, 38.298229, 25.373045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066547, 38.525200, 25.445168>,  <34.116047, 38.903484, 25.565372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066547, 38.525200, 25.445168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225705, 0.268078, -0.936585,
		0.966304, -0.183728, 0.180279,
		-0.123748, -0.945716, -0.300513,
		34.029423, 38.241486, 25.355013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625153, 38.854553, 25.036242>,  <34.116047, 38.903484, 25.565372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625153, 38.854553, 25.036242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407604, 38.525845, 24.968250>,  <34.277073, 38.328621, 24.927456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407604, 38.525845, 24.968250>,  <34.625153, 38.854553, 25.036242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407604, 38.525845, 24.968250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302042, -0.002719, -0.953291,
		0.782924, -0.569812, 0.249688,
		-0.543875, -0.821771, -0.169979,
		34.244442, 38.279312, 24.917257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093353, 38.379856, 24.565723>,  <34.625153, 38.854553, 25.036242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093353, 38.379856, 24.565723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721504, 38.238396, 24.524294>,  <34.498394, 38.153519, 24.499437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721504, 38.238396, 24.524294>,  <35.093353, 38.379856, 24.565723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721504, 38.238396, 24.524294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152719, -0.113944, -0.981679,
		0.335369, -0.928412, 0.159934,
		-0.929626, -0.353650, -0.103573,
		34.442616, 38.132301, 24.493221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207962, 37.787872, 24.145061>,  <35.093353, 38.379856, 24.565723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207962, 37.787872, 24.145061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821201, 37.874477, 24.091070>,  <34.589146, 37.926441, 24.058676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821201, 37.874477, 24.091070>,  <35.207962, 37.787872, 24.145061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821201, 37.874477, 24.091070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121598, -0.074032, -0.989815,
		-0.224301, -0.973469, 0.045254,
		-0.966904, 0.216514, -0.134977,
		34.531132, 37.939430, 24.050577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949345, 37.259071, 23.824297>,  <35.207962, 37.787872, 24.145061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949345, 37.259071, 23.824297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701435, 37.564690, 23.752605>,  <34.552689, 37.748058, 23.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701435, 37.564690, 23.752605>,  <34.949345, 37.259071, 23.824297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701435, 37.564690, 23.752605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189085, -0.076271, -0.978994,
		-0.761663, -0.640641, -0.097198,
		-0.619771, 0.764043, -0.179229,
		34.515503, 37.793903, 23.698837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579521, 37.078373, 23.170631>,  <34.949345, 37.259071, 23.824297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579521, 37.078373, 23.170631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539165, 37.473320, 23.219500>,  <34.514954, 37.710289, 23.248821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539165, 37.473320, 23.219500>,  <34.579521, 37.078373, 23.170631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539165, 37.473320, 23.219500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166982, 0.137862, -0.976274,
		-0.980785, -0.078092, -0.178781,
		-0.100887, 0.987368, 0.122173,
		34.508900, 37.769531, 23.256151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240620, 37.238159, 22.539785>,  <34.579521, 37.078373, 23.170631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240620, 37.238159, 22.539785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387348, 37.570564, 22.707050>,  <34.475384, 37.770008, 22.807409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387348, 37.570564, 22.707050>,  <34.240620, 37.238159, 22.539785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387348, 37.570564, 22.707050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133775, 0.397707, -0.907708,
		-0.920624, 0.388904, 0.034717,
		0.366818, 0.831013, 0.418165,
		34.497395, 37.819870, 22.832500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951813, 37.659054, 22.112831>,  <34.240620, 37.238159, 22.539785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951813, 37.659054, 22.112831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263618, 37.852409, 22.272173>,  <34.450703, 37.968422, 22.367779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263618, 37.852409, 22.272173>,  <33.951813, 37.659054, 22.112831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263618, 37.852409, 22.272173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244880, 0.350171, -0.904110,
		-0.576533, 0.802316, 0.154590,
		0.779515, 0.483393, 0.398356,
		34.497475, 37.997429, 22.391680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835091, 38.353550, 22.110435>,  <33.951813, 37.659054, 22.112831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835091, 38.353550, 22.110435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226852, 38.275990, 22.087952>,  <34.461910, 38.229454, 22.074461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226852, 38.275990, 22.087952>,  <33.835091, 38.353550, 22.110435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226852, 38.275990, 22.087952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032129, 0.424578, -0.904821,
		0.199312, 0.884384, 0.422066,
		0.979409, -0.193902, -0.056210,
		34.520676, 38.217819, 22.071089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095375, 38.849129, 21.609636>,  <33.835091, 38.353550, 22.110435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095375, 38.849129, 21.609636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433628, 38.649097, 21.684278>,  <34.636581, 38.529079, 21.729063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433628, 38.649097, 21.684278>,  <34.095375, 38.849129, 21.609636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433628, 38.649097, 21.684278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399091, 0.360232, -0.843184,
		0.354438, 0.787498, 0.504202,
		0.845636, -0.500079, 0.186604,
		34.687317, 38.499073, 21.740259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755711, 39.301826, 21.713190>,  <34.095375, 38.849129, 21.609636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755711, 39.301826, 21.713190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860645, 38.944469, 21.567297>,  <34.923607, 38.730057, 21.479761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860645, 38.944469, 21.567297>,  <34.755711, 39.301826, 21.713190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860645, 38.944469, 21.567297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428467, 0.446509, -0.785523,
		0.864637, 0.049792, 0.499923,
		0.262333, -0.893393, -0.364734,
		34.939346, 38.676453, 21.457876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443081, 39.230434, 21.650349>,  <34.755711, 39.301826, 21.713190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443081, 39.230434, 21.650349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255779, 39.016499, 21.369013>,  <35.143398, 38.888138, 21.200212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255779, 39.016499, 21.369013>,  <35.443081, 39.230434, 21.650349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255779, 39.016499, 21.369013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550098, 0.446462, -0.705737,
		0.691468, -0.717371, 0.085154,
		-0.468257, -0.534837, -0.703338,
		35.115303, 38.856049, 21.158010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029083, 38.977032, 21.148560>,  <35.443081, 39.230434, 21.650349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029083, 38.977032, 21.148560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668095, 38.962963, 20.976835>,  <35.451500, 38.954521, 20.873800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668095, 38.962963, 20.976835>,  <36.029083, 38.977032, 21.148560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668095, 38.962963, 20.976835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342016, 0.547383, -0.763804,
		0.261859, -0.836143, -0.481970,
		-0.902472, -0.035167, -0.429312,
		35.397354, 38.952412, 20.848042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139091, 38.930309, 20.426378>,  <36.029083, 38.977032, 21.148560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139091, 38.930309, 20.426378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760567, 39.059315, 20.435175>,  <35.533451, 39.136719, 20.440453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760567, 39.059315, 20.435175>,  <36.139091, 38.930309, 20.426378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760567, 39.059315, 20.435175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240596, 0.748121, -0.618407,
		-0.215898, -0.579913, -0.785550,
		-0.946309, 0.322513, 0.021993,
		35.476673, 39.156067, 20.441772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044731, 39.110313, 19.831137>,  <36.139091, 38.930309, 20.426378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044731, 39.110313, 19.831137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748142, 39.308216, 20.012438>,  <35.570190, 39.426956, 20.121220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748142, 39.308216, 20.012438>,  <36.044731, 39.110313, 19.831137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748142, 39.308216, 20.012438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081862, 0.737163, -0.670738,
		-0.665972, -0.460228, -0.587086,
		-0.741471, 0.494753, 0.453255,
		35.525700, 39.456642, 20.148415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643822, 39.374428, 19.309385>,  <36.044731, 39.110313, 19.831137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643822, 39.374428, 19.309385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544495, 39.611561, 19.615820>,  <35.484898, 39.753841, 19.799681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544495, 39.611561, 19.615820>,  <35.643822, 39.374428, 19.309385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544495, 39.611561, 19.615820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054972, 0.780957, -0.622161,
		-0.967118, -0.196605, -0.161334,
		-0.248315, 0.592835, 0.766085,
		35.470001, 39.789410, 19.845646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165134, 39.777710, 18.994974>,  <35.643822, 39.374428, 19.309385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165134, 39.777710, 18.994974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298851, 39.972656, 19.317644>,  <35.379082, 40.089622, 19.511246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298851, 39.972656, 19.317644>,  <35.165134, 39.777710, 18.994974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298851, 39.972656, 19.317644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086146, 0.868133, -0.488798,
		-0.938525, 0.093909, 0.332194,
		0.334291, 0.487366, 0.806675,
		35.399139, 40.118866, 19.559647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785492, 40.339344, 18.969179>,  <35.165134, 39.777710, 18.994974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785492, 40.339344, 18.969179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091442, 40.433914, 19.208870>,  <35.275013, 40.490654, 19.352684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091442, 40.433914, 19.208870>,  <34.785492, 40.339344, 18.969179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091442, 40.433914, 19.208870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023376, 0.919416, -0.392590,
		-0.643756, 0.314289, 0.697711,
		0.764874, 0.236423, 0.599227,
		35.320904, 40.504841, 19.388638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650112, 41.004040, 19.169428>,  <34.785492, 40.339344, 18.969179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650112, 41.004040, 19.169428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043377, 40.973747, 19.235949>,  <35.279335, 40.955570, 19.275862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043377, 40.973747, 19.235949>,  <34.650112, 41.004040, 19.169428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043377, 40.973747, 19.235949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154543, 0.830239, -0.535555,
		-0.097511, 0.552238, 0.827964,
		0.983162, -0.075733, 0.166302,
		35.338326, 40.951027, 19.285839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845249, 41.696278, 19.355185>,  <34.650112, 41.004040, 19.169428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845249, 41.696278, 19.355185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167492, 41.486130, 19.245659>,  <35.360840, 41.360039, 19.179943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167492, 41.486130, 19.245659>,  <34.845249, 41.696278, 19.355185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167492, 41.486130, 19.245659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295114, 0.756619, -0.583468,
		0.513711, 0.389242, 0.764586,
		0.805611, -0.525374, -0.273813,
		35.409176, 41.328518, 19.163515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346718, 42.249756, 19.347038>,  <34.845249, 41.696278, 19.355185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346718, 42.249756, 19.347038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474449, 41.936600, 19.133453>,  <35.551086, 41.748707, 19.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474449, 41.936600, 19.133453>,  <35.346718, 42.249756, 19.347038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474449, 41.936600, 19.133453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057499, 0.578431, -0.813703,
		0.945899, 0.229135, 0.229724,
		0.319327, -0.782889, -0.533962,
		35.570248, 41.701733, 18.973265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972839, 42.488949, 18.995951>,  <35.346718, 42.249756, 19.347038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972839, 42.488949, 18.995951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813164, 42.197258, 18.773643>,  <35.717358, 42.022243, 18.640259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813164, 42.197258, 18.773643>,  <35.972839, 42.488949, 18.995951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813164, 42.197258, 18.773643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009858, 0.602712, -0.797898,
		0.916814, -0.323994, -0.233410,
		-0.399193, -0.729223, -0.555768,
		35.693405, 41.978493, 18.606913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272190, 42.470463, 18.322504>,  <35.972839, 42.488949, 18.995951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272190, 42.470463, 18.322504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927601, 42.290390, 18.228523>,  <35.720848, 42.182346, 18.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927601, 42.290390, 18.228523>,  <36.272190, 42.470463, 18.322504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927601, 42.290390, 18.228523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074405, 0.569587, -0.818557,
		0.502326, -0.687681, -0.524178,
		-0.861471, -0.450184, -0.234951,
		35.669159, 42.155334, 18.158037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265221, 42.446949, 17.584681>,  <36.272190, 42.470463, 18.322504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265221, 42.446949, 17.584681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882584, 42.349274, 17.648317>,  <35.653004, 42.290668, 17.686499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882584, 42.349274, 17.648317>,  <36.265221, 42.446949, 17.584681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882584, 42.349274, 17.648317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281228, 0.630153, -0.723753,
		0.076481, -0.737075, -0.671470,
		-0.956589, -0.244189, 0.159091,
		35.595608, 42.276016, 17.696045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077240, 42.176346, 17.006432>,  <36.265221, 42.446949, 17.584681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077240, 42.176346, 17.006432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750923, 42.314461, 17.192019>,  <35.555134, 42.397327, 17.303371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750923, 42.314461, 17.192019>,  <36.077240, 42.176346, 17.006432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750923, 42.314461, 17.192019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223481, 0.551718, -0.803532,
		-0.533428, -0.759200, -0.372921,
		-0.815788, 0.345286, 0.463969,
		35.506187, 42.418045, 17.331209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613537, 41.961723, 16.598047>,  <36.077240, 42.176346, 17.006432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613537, 41.961723, 16.598047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482594, 42.286617, 16.791178>,  <35.404030, 42.481552, 16.907057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482594, 42.286617, 16.791178>,  <35.613537, 41.961723, 16.598047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482594, 42.286617, 16.791178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257731, 0.414853, -0.872623,
		-0.909073, -0.410096, 0.073533,
		-0.327354, 0.812230, 0.482827,
		35.384388, 42.530285, 16.936026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913708, 42.122276, 16.411921>,  <35.613537, 41.961723, 16.598047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913708, 42.122276, 16.411921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114342, 42.448719, 16.526733>,  <35.234722, 42.644585, 16.595621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114342, 42.448719, 16.526733>,  <34.913708, 42.122276, 16.411921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114342, 42.448719, 16.526733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245175, 0.452282, -0.857514,
		-0.829642, 0.359738, 0.426945,
		0.501580, 0.816106, 0.287033,
		35.264816, 42.693550, 16.612843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509232, 42.770687, 16.269703>,  <34.913708, 42.122276, 16.411921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509232, 42.770687, 16.269703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897888, 42.858555, 16.234705>,  <35.131084, 42.911274, 16.213707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897888, 42.858555, 16.234705>,  <34.509232, 42.770687, 16.269703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897888, 42.858555, 16.234705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208455, 0.621147, -0.755462,
		-0.111604, 0.752279, 0.649324,
		0.971644, 0.219667, -0.087494,
		35.189381, 42.924454, 16.208456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951405, 42.685814, 15.613493>,  <34.509232, 42.770687, 16.269703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951405, 42.685814, 15.613493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601757, 42.738171, 15.426393>,  <34.391968, 42.769585, 15.314133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601757, 42.738171, 15.426393>,  <34.951405, 42.685814, 15.613493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601757, 42.738171, 15.426393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172432, 0.816654, 0.550767,
		0.454083, 0.562088, -0.691278,
		-0.874114, 0.130895, -0.467751,
		34.339523, 42.777439, 15.286067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855907, 43.333179, 15.147435>,  <34.951405, 42.685814, 15.613493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855907, 43.333179, 15.147435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523670, 43.205326, 15.329840>,  <34.324326, 43.128613, 15.439282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523670, 43.205326, 15.329840>,  <34.855907, 43.333179, 15.147435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523670, 43.205326, 15.329840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028865, 0.842484, 0.537948,
		-0.556127, 0.433654, -0.708990,
		-0.830596, -0.319632, 0.456011,
		34.274490, 43.109436, 15.466643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295643, 43.809925, 15.073426>,  <34.855907, 43.333179, 15.147435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295643, 43.809925, 15.073426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216892, 43.614193, 15.413260>,  <34.169643, 43.496754, 15.617160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216892, 43.614193, 15.413260>,  <34.295643, 43.809925, 15.073426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216892, 43.614193, 15.413260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127496, 0.871963, 0.472679,
		-0.972103, -0.015259, -0.234056,
		-0.196875, -0.489334, 0.849584,
		34.157829, 43.467392, 15.668135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593460, 43.845596, 15.302894>,  <34.295643, 43.809925, 15.073426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593460, 43.845596, 15.302894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836010, 43.814732, 15.619465>,  <33.981541, 43.796215, 15.809408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836010, 43.814732, 15.619465>,  <33.593460, 43.845596, 15.302894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836010, 43.814732, 15.619465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204735, 0.946577, 0.249149,
		-0.768372, -0.313111, 0.558181,
		0.606372, -0.077160, 0.791429,
		34.017921, 43.791584, 15.856894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212902, 44.089622, 15.932125>,  <33.593460, 43.845596, 15.302894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212902, 44.089622, 15.932125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608551, 44.146687, 15.917842>,  <33.845940, 44.180927, 15.909272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608551, 44.146687, 15.917842>,  <33.212902, 44.089622, 15.932125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608551, 44.146687, 15.917842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140095, 0.987916, 0.066298,
		0.044735, -0.060575, 0.997161,
		0.989127, 0.142663, -0.035708,
		33.905289, 44.189484, 15.907129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581398, 44.593475, 16.513222>,  <33.212902, 44.089622, 15.932125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581398, 44.593475, 16.513222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807053, 44.621014, 16.184099>,  <33.942444, 44.637535, 15.986626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807053, 44.621014, 16.184099>,  <33.581398, 44.593475, 16.513222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807053, 44.621014, 16.184099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309762, 0.906085, 0.288195,
		0.765374, -0.417456, 0.489830,
		0.564137, 0.068846, -0.822806,
		33.976292, 44.641666, 15.937257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241894, 44.906021, 16.993292>,  <33.581398, 44.593475, 16.513222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241894, 44.906021, 16.993292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016296, 44.604942, 16.857433>,  <32.880939, 44.424294, 16.775919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016296, 44.604942, 16.857433>,  <33.241894, 44.906021, 16.993292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016296, 44.604942, 16.857433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364981, -0.141733, 0.920163,
		-0.740745, 0.642928, -0.194785,
		-0.563991, -0.752699, -0.339645,
		32.847099, 44.379131, 16.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529598, 44.890625, 17.316914>,  <33.241894, 44.906021, 16.993292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529598, 44.890625, 17.316914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719757, 44.554832, 17.211643>,  <32.833855, 44.353355, 17.148481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719757, 44.554832, 17.211643>,  <32.529598, 44.890625, 17.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719757, 44.554832, 17.211643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019760, -0.288876, 0.957163,
		-0.879548, -0.460235, -0.120743,
		0.475400, -0.839485, -0.263174,
		32.862377, 44.302986, 17.132690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189888, 44.226833, 17.433826>,  <32.529598, 44.890625, 17.316914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189888, 44.226833, 17.433826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577015, 44.126431, 17.441027>,  <32.809292, 44.066189, 17.445347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577015, 44.126431, 17.441027>,  <32.189888, 44.226833, 17.433826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577015, 44.126431, 17.441027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134222, -0.454371, 0.880643,
		-0.212869, -0.854718, -0.473439,
		0.967818, -0.251007, 0.018000,
		32.867359, 44.051128, 17.446426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149845, 43.592049, 17.761278>,  <32.189888, 44.226833, 17.433826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149845, 43.592049, 17.761278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533195, 43.705975, 17.769318>,  <32.763206, 43.774330, 17.774141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533195, 43.705975, 17.769318>,  <32.149845, 43.592049, 17.761278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533195, 43.705975, 17.769318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046039, -0.223618, 0.973589,
		0.281785, -0.932135, -0.227422,
		0.958372, 0.284813, 0.020097,
		32.820705, 43.791420, 17.775347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468620, 43.059887, 18.136652>,  <32.149845, 43.592049, 17.761278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468620, 43.059887, 18.136652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718864, 43.371433, 18.154453>,  <32.869011, 43.558361, 18.165134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718864, 43.371433, 18.154453>,  <32.468620, 43.059887, 18.136652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718864, 43.371433, 18.154453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217252, -0.228727, 0.948939,
		0.749274, -0.583999, -0.312303,
		0.625612, 0.778864, 0.044504,
		32.906548, 43.605091, 18.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124561, 42.808121, 18.357533>,  <32.468620, 43.059887, 18.136652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124561, 42.808121, 18.357533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105644, 43.188389, 18.480167>,  <33.094296, 43.416550, 18.553749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105644, 43.188389, 18.480167>,  <33.124561, 42.808121, 18.357533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105644, 43.188389, 18.480167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099549, -0.300919, 0.948440,
		0.993908, 0.075375, -0.080407,
		-0.047292, 0.950666, 0.306589,
		33.091457, 43.473587, 18.572144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671185, 42.911842, 18.913359>,  <33.124561, 42.808121, 18.357533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671185, 42.911842, 18.913359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423927, 43.222576, 18.961395>,  <33.275574, 43.409016, 18.990217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423927, 43.222576, 18.961395>,  <33.671185, 42.911842, 18.913359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423927, 43.222576, 18.961395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002571, -0.150780, 0.988564,
		0.786058, 0.611387, 0.091207,
		-0.618148, 0.776834, 0.120093,
		33.238483, 43.455627, 18.997423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923656, 43.303356, 19.399370>,  <33.671185, 42.911842, 18.913359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923656, 43.303356, 19.399370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545982, 43.435032, 19.404264>,  <33.319378, 43.514038, 19.407202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545982, 43.435032, 19.404264>,  <33.923656, 43.303356, 19.399370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545982, 43.435032, 19.404264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019076, -0.091724, 0.995602,
		0.328868, 0.939797, 0.092884,
		-0.944183, 0.329194, 0.012238,
		33.262726, 43.533791, 19.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893578, 43.841972, 19.866089>,  <33.923656, 43.303356, 19.399370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893578, 43.841972, 19.866089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515415, 43.713680, 19.842991>,  <33.288517, 43.636703, 19.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515415, 43.713680, 19.842991>,  <33.893578, 43.841972, 19.866089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515415, 43.713680, 19.842991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052222, -0.025802, 0.998302,
		-0.321677, 0.946819, 0.007644,
		-0.945408, -0.320731, -0.057744,
		33.231792, 43.617462, 19.825668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696159, 44.160477, 20.348475>,  <33.893578, 43.841972, 19.866089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696159, 44.160477, 20.348475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399136, 43.898590, 20.291981>,  <33.220921, 43.741459, 20.258085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399136, 43.898590, 20.291981>,  <33.696159, 44.160477, 20.348475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399136, 43.898590, 20.291981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152543, -0.040008, 0.987487,
		-0.652175, 0.754814, -0.070165,
		-0.742562, -0.654717, -0.141234,
		33.176369, 43.702175, 20.249611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091690, 44.415829, 20.719776>,  <33.696159, 44.160477, 20.348475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091690, 44.415829, 20.719776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018669, 44.025436, 20.672203>,  <32.974857, 43.791203, 20.643660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018669, 44.025436, 20.672203>,  <33.091690, 44.415829, 20.719776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018669, 44.025436, 20.672203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196401, -0.082330, 0.977061,
		-0.963381, 0.201719, -0.176654,
		-0.182548, -0.975977, -0.118933,
		32.963905, 43.732643, 20.636522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449638, 44.119473, 20.963221>,  <33.091690, 44.415829, 20.719776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449638, 44.119473, 20.963221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638741, 43.768242, 20.933588>,  <32.752201, 43.557503, 20.915808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638741, 43.768242, 20.933588>,  <32.449638, 44.119473, 20.963221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638741, 43.768242, 20.933588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349666, -0.264096, 0.898881,
		-0.808851, -0.399042, -0.431886,
		0.472751, -0.878076, -0.074083,
		32.780567, 43.504818, 20.911364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055580, 43.566792, 21.150295>,  <32.449638, 44.119473, 20.963221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055580, 43.566792, 21.150295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416042, 43.417843, 21.239065>,  <32.632320, 43.328472, 21.292328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416042, 43.417843, 21.239065>,  <32.055580, 43.566792, 21.150295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416042, 43.417843, 21.239065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343666, -0.301681, 0.889316,
		-0.264202, -0.877685, -0.399833,
		0.901161, -0.372368, 0.221926,
		32.686390, 43.306129, 21.305643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993494, 43.092655, 21.713638>,  <32.055580, 43.566792, 21.150295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993494, 43.092655, 21.713638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392517, 43.113811, 21.695408>,  <32.631931, 43.126503, 21.684469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392517, 43.113811, 21.695408>,  <31.993494, 43.092655, 21.713638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392517, 43.113811, 21.695408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066238, -0.510617, 0.857253,
		0.022065, -0.858180, -0.512874,
		0.997560, 0.052887, -0.045578,
		32.691784, 43.129677, 21.681734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082993, 42.476921, 21.867733>,  <31.993494, 43.092655, 21.713638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082993, 42.476921, 21.867733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411278, 42.692608, 21.943283>,  <32.608250, 42.822021, 21.988613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411278, 42.692608, 21.943283>,  <32.082993, 42.476921, 21.867733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411278, 42.692608, 21.943283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110651, -0.474338, 0.873361,
		0.560523, -0.695880, -0.448961,
		0.820713, 0.539217, 0.188877,
		32.657494, 42.854374, 21.999947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598797, 41.995346, 21.904799>,  <32.082993, 42.476921, 21.867733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598797, 41.995346, 21.904799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700630, 42.320984, 22.113583>,  <32.761730, 42.516365, 22.238853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700630, 42.320984, 22.113583>,  <32.598797, 41.995346, 21.904799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700630, 42.320984, 22.113583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217846, -0.574147, 0.789239,
		0.942195, -0.087219, -0.323514,
		0.254581, 0.814094, 0.521958,
		32.777004, 42.565212, 22.270170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266094, 41.812618, 22.195709>,  <32.598797, 41.995346, 21.904799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266094, 41.812618, 22.195709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122154, 42.123260, 22.402546>,  <33.035789, 42.309647, 22.526648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122154, 42.123260, 22.402546>,  <33.266094, 41.812618, 22.195709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122154, 42.123260, 22.402546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246293, -0.455493, 0.855492,
		0.899914, 0.435207, -0.027362,
		-0.359853, 0.776608, 0.517093,
		33.014198, 42.356243, 22.557674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687519, 41.808372, 22.837729>,  <33.266094, 41.812618, 22.195709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687519, 41.808372, 22.837729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353790, 42.019146, 22.902521>,  <33.153553, 42.145611, 22.941397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353790, 42.019146, 22.902521>,  <33.687519, 41.808372, 22.837729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353790, 42.019146, 22.902521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096271, -0.428591, 0.898355,
		0.542800, 0.733927, 0.408314,
		-0.834326, 0.526936, 0.161984,
		33.103493, 42.177227, 22.951117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705376, 42.094948, 23.494347>,  <33.687519, 41.808372, 22.837729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705376, 42.094948, 23.494347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320320, 42.074005, 23.388081>,  <33.089287, 42.061440, 23.324320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320320, 42.074005, 23.388081>,  <33.705376, 42.094948, 23.494347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320320, 42.074005, 23.388081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220244, -0.419372, 0.880693,
		-0.157521, 0.906304, 0.392174,
		-0.962642, -0.052353, -0.265667,
		33.031528, 42.058300, 23.308380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460499, 42.181984, 24.131653>,  <33.705376, 42.094948, 23.494347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460499, 42.181984, 24.131653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169868, 42.041130, 23.895657>,  <32.995491, 41.956619, 23.754059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169868, 42.041130, 23.895657>,  <33.460499, 42.181984, 24.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169868, 42.041130, 23.895657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430492, -0.435940, 0.790337,
		-0.535505, 0.828227, 0.165153,
		-0.726575, -0.352132, -0.589993,
		32.951897, 41.935490, 23.718658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774017, 42.313080, 24.457384>,  <33.460499, 42.181984, 24.131653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774017, 42.313080, 24.457384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687485, 42.015820, 24.204109>,  <32.635567, 41.837463, 24.052145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687485, 42.015820, 24.204109>,  <32.774017, 42.313080, 24.457384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687485, 42.015820, 24.204109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599567, -0.410723, 0.686896,
		-0.770533, 0.528234, -0.356718,
		-0.216329, -0.743152, -0.633188,
		32.622585, 41.792873, 24.014153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028820, 42.297237, 24.479868>,  <32.774017, 42.313080, 24.457384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028820, 42.297237, 24.479868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123295, 41.938923, 24.329256>,  <32.179981, 41.723934, 24.238890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123295, 41.938923, 24.329256>,  <32.028820, 42.297237, 24.479868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123295, 41.938923, 24.329256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717793, -0.422027, 0.553774,
		-0.654971, 0.139474, -0.742671,
		0.236190, -0.895790, -0.376530,
		32.194153, 41.670185, 24.216297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410322, 41.895878, 24.633608>,  <32.028820, 42.297237, 24.479868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410322, 41.895878, 24.633608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645992, 41.596764, 24.511177>,  <31.787394, 41.417294, 24.437717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645992, 41.596764, 24.511177>,  <31.410322, 41.895878, 24.633608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645992, 41.596764, 24.511177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543259, -0.647015, 0.535015,
		-0.598116, -0.148937, -0.787448,
		0.589174, -0.747790, -0.306079,
		31.822744, 41.372425, 24.419353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922157, 41.265087, 24.441462>,  <31.410322, 41.895878, 24.633608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922157, 41.265087, 24.441462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287575, 41.122810, 24.520376>,  <31.506824, 41.037445, 24.567724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287575, 41.122810, 24.520376>,  <30.922157, 41.265087, 24.441462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287575, 41.122810, 24.520376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382232, -0.584906, 0.715391,
		-0.139067, -0.728949, -0.670294,
		0.913542, -0.355694, 0.197287,
		31.561638, 41.016102, 24.579561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879328, 40.466270, 24.652884>,  <30.922157, 41.265087, 24.441462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879328, 40.466270, 24.652884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253246, 40.566399, 24.753677>,  <31.477596, 40.626476, 24.814154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253246, 40.566399, 24.753677>,  <30.879328, 40.466270, 24.652884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253246, 40.566399, 24.753677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006986, -0.722264, 0.691582,
		0.355120, -0.644727, -0.676917,
		0.934794, 0.250323, 0.251987,
		31.533684, 40.641495, 24.829273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340981, 39.906342, 24.597736>,  <30.879328, 40.466270, 24.652884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340981, 39.906342, 24.597736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491398, 40.163490, 24.864662>,  <31.581648, 40.317780, 25.024817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491398, 40.163490, 24.864662>,  <31.340981, 39.906342, 24.597736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491398, 40.163490, 24.864662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025086, -0.712844, 0.700874,
		0.926263, -0.280298, -0.251933,
		0.376042, 0.642873, 0.667313,
		31.604210, 40.356354, 25.064856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670597, 39.459785, 25.076187>,  <31.340981, 39.906342, 24.597736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670597, 39.459785, 25.076187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640171, 39.821819, 25.243540>,  <31.621916, 40.039040, 25.343950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640171, 39.821819, 25.243540>,  <31.670597, 39.459785, 25.076187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640171, 39.821819, 25.243540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078286, -0.412879, 0.907415,
		0.994025, 0.101775, -0.039450,
		-0.076064, 0.905082, 0.418380,
		31.617352, 40.093346, 25.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074921, 39.293655, 25.598560>,  <31.670597, 39.459785, 25.076187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074921, 39.293655, 25.598560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878801, 39.627747, 25.698154>,  <31.761129, 39.828201, 25.757912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878801, 39.627747, 25.698154>,  <32.074921, 39.293655, 25.598560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878801, 39.627747, 25.698154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024174, -0.298603, 0.954071,
		0.871219, 0.461762, 0.166595,
		-0.490300, 0.835232, 0.248986,
		31.731712, 39.878315, 25.772850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414162, 39.597797, 26.145771>,  <32.074921, 39.293655, 25.598560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414162, 39.597797, 26.145771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034878, 39.724148, 26.159214>,  <31.807308, 39.799957, 26.167280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034878, 39.724148, 26.159214>,  <32.414162, 39.597797, 26.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034878, 39.724148, 26.159214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065758, -0.298689, 0.952083,
		0.310774, 0.900561, 0.303990,
		-0.948206, 0.315872, 0.033606,
		31.750416, 39.818909, 26.169296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322018, 39.813545, 26.790085>,  <32.414162, 39.597797, 26.145771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322018, 39.813545, 26.790085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943811, 39.781109, 26.663963>,  <31.716887, 39.761646, 26.588289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943811, 39.781109, 26.663963>,  <32.322018, 39.813545, 26.790085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943811, 39.781109, 26.663963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275078, -0.319038, 0.906944,
		-0.174142, 0.944266, 0.279349,
		-0.945519, -0.081095, -0.315305,
		31.660156, 39.756779, 26.569372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843153, 40.093246, 27.409004>,  <32.322018, 39.813545, 26.790085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843153, 40.093246, 27.409004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666790, 39.842064, 27.152481>,  <31.560972, 39.691353, 26.998568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666790, 39.842064, 27.152481>,  <31.843153, 40.093246, 27.409004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666790, 39.842064, 27.152481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467389, -0.449352, 0.761334,
		-0.766257, 0.635416, -0.095378,
		-0.440905, -0.627956, -0.641306,
		31.534519, 39.653679, 26.960089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172222, 40.131168, 27.557346>,  <31.843153, 40.093246, 27.409004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172222, 40.131168, 27.557346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193672, 39.790440, 27.348913>,  <31.206543, 39.586002, 27.223854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193672, 39.790440, 27.348913>,  <31.172222, 40.131168, 27.557346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193672, 39.790440, 27.348913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635132, -0.431769, 0.640455,
		-0.770539, 0.296610, -0.564173,
		0.053627, -0.851821, -0.521081,
		31.209761, 39.534893, 27.192589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477598, 40.022884, 27.353487>,  <31.172222, 40.131168, 27.557346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477598, 40.022884, 27.353487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674923, 39.675453, 27.334671>,  <30.793318, 39.466995, 27.323381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674923, 39.675453, 27.334671>,  <30.477598, 40.022884, 27.353487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674923, 39.675453, 27.334671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651689, -0.404865, 0.641394,
		-0.576145, -0.285754, -0.765768,
		0.493314, -0.868579, -0.047038,
		30.822918, 39.414879, 27.320560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005960, 39.582523, 27.092218>,  <30.477598, 40.022884, 27.353487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005960, 39.582523, 27.092218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283298, 39.343109, 27.252731>,  <30.449701, 39.199459, 27.349039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283298, 39.343109, 27.252731>,  <30.005960, 39.582523, 27.092218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283298, 39.343109, 27.252731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714740, -0.500298, 0.488721,
		-0.091757, -0.625664, -0.774678,
		0.693345, -0.598537, 0.401281,
		30.491302, 39.163548, 27.373116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651430, 38.985317, 27.127760>,  <30.005960, 39.582523, 27.092218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651430, 38.985317, 27.127760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951429, 38.983921, 27.392332>,  <30.131430, 38.983082, 27.551075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951429, 38.983921, 27.392332>,  <29.651430, 38.985317, 27.127760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951429, 38.983921, 27.392332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647446, -0.208482, 0.733041,
		0.135335, -0.978020, -0.158623,
		0.749999, -0.003494, 0.661430,
		30.176430, 38.982872, 27.590761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556326, 38.421551, 27.592852>,  <29.651430, 38.985317, 27.127760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556326, 38.421551, 27.592852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818354, 38.646904, 27.794239>,  <29.975571, 38.782116, 27.915071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818354, 38.646904, 27.794239>,  <29.556326, 38.421551, 27.592852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818354, 38.646904, 27.794239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439733, -0.257597, 0.860394,
		0.614425, -0.785011, 0.078994,
		0.655070, 0.563384, 0.503469,
		30.014875, 38.815918, 27.945280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059284, 37.989761, 28.139372>,  <29.556326, 38.421551, 27.592852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059284, 37.989761, 28.139372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036352, 38.369881, 28.261774>,  <30.022593, 38.597954, 28.335215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036352, 38.369881, 28.261774>,  <30.059284, 37.989761, 28.139372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036352, 38.369881, 28.261774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226798, -0.310893, 0.922989,
		0.972253, -0.016486, 0.233350,
		-0.057330, 0.950302, 0.306005,
		30.019154, 38.654972, 28.353575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442204, 37.982815, 28.769859>,  <30.059284, 37.989761, 28.139372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442204, 37.982815, 28.769859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190786, 38.293835, 28.762281>,  <30.039936, 38.480446, 28.757734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190786, 38.293835, 28.762281>,  <30.442204, 37.982815, 28.769859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190786, 38.293835, 28.762281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305244, -0.224197, 0.925506,
		0.715376, 0.587502, 0.378258,
		-0.628541, 0.777546, -0.018947,
		30.002224, 38.527100, 28.756598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504086, 38.223209, 29.516829>,  <30.442204, 37.982815, 28.769859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504086, 38.223209, 29.516829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183825, 38.398426, 29.353327>,  <29.991669, 38.503555, 29.255226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183825, 38.398426, 29.353327>,  <30.504086, 38.223209, 29.516829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183825, 38.398426, 29.353327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465964, -0.026413, 0.884409,
		0.376610, 0.898567, 0.225259,
		-0.800651, 0.438040, -0.408752,
		29.943628, 38.529839, 29.230701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376236, 38.841980, 30.041758>,  <30.504086, 38.223209, 29.516829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376236, 38.841980, 30.041758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026415, 38.756069, 29.867846>,  <29.816523, 38.704525, 29.763498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026415, 38.756069, 29.867846>,  <30.376236, 38.841980, 30.041758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026415, 38.756069, 29.867846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383116, -0.243641, 0.890989,
		-0.297290, 0.945786, 0.130794,
		-0.874552, -0.214773, -0.434778,
		29.764050, 38.691639, 29.737411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988815, 39.124287, 30.521593>,  <30.376236, 38.841980, 30.041758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988815, 39.124287, 30.521593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759483, 38.878181, 30.305170>,  <29.621883, 38.730518, 30.175316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759483, 38.878181, 30.305170>,  <29.988815, 39.124287, 30.521593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759483, 38.878181, 30.305170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462572, -0.301987, 0.833565,
		-0.676253, 0.728188, -0.111463,
		-0.573332, -0.615261, -0.541059,
		29.587484, 38.693604, 30.142853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925220, 39.756306, 30.907640>,  <29.988815, 39.124287, 30.521593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925220, 39.756306, 30.907640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156404, 39.870026, 31.213617>,  <30.295115, 39.938259, 31.397203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156404, 39.870026, 31.213617>,  <29.925220, 39.756306, 30.907640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156404, 39.870026, 31.213617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543263, 0.565425, -0.620612,
		-0.608957, 0.774254, 0.172343,
		0.577958, 0.284299, 0.764943,
		30.329792, 39.955315, 31.443100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980583, 40.485783, 30.867905>,  <29.925220, 39.756306, 30.907640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980583, 40.485783, 30.867905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296124, 40.348831, 31.072056>,  <30.485449, 40.266659, 31.194546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296124, 40.348831, 31.072056>,  <29.980583, 40.485783, 30.867905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296124, 40.348831, 31.072056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609005, 0.547096, -0.574281,
		-0.082603, 0.763846, 0.640091,
		0.788853, -0.342381, 0.510378,
		30.532780, 40.246117, 31.225170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369349, 41.071095, 31.035690>,  <29.980583, 40.485783, 30.867905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369349, 41.071095, 31.035690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644203, 40.785370, 31.088755>,  <30.809116, 40.613934, 31.120594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644203, 40.785370, 31.088755>,  <30.369349, 41.071095, 31.035690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644203, 40.785370, 31.088755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717413, 0.638274, -0.279152,
		0.114727, 0.286989, 0.951039,
		0.687137, -0.714314, 0.132662,
		30.850344, 40.571075, 31.128553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971903, 41.369751, 31.397001>,  <30.369349, 41.071095, 31.035690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971903, 41.369751, 31.397001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100052, 41.051968, 31.190624>,  <31.176941, 40.861298, 31.066799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100052, 41.051968, 31.190624>,  <30.971903, 41.369751, 31.397001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100052, 41.051968, 31.190624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651331, 0.580220, -0.488992,
		0.687843, -0.179388, 0.703343,
		0.320374, -0.794459, -0.515941,
		31.196165, 40.813629, 31.035841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633837, 41.533455, 31.229122>,  <30.971903, 41.369751, 31.397001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633837, 41.533455, 31.229122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580914, 41.223278, 30.982161>,  <31.549160, 41.037174, 30.833982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580914, 41.223278, 30.982161>,  <31.633837, 41.533455, 31.229122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580914, 41.223278, 30.982161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697502, 0.369728, -0.613834,
		0.704263, -0.511856, 0.491952,
		-0.132306, -0.775438, -0.617406,
		31.541222, 40.990646, 30.796938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294395, 41.276104, 31.058517>,  <31.633837, 41.533455, 31.229122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294395, 41.276104, 31.058517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050758, 41.152065, 30.766533>,  <31.904575, 41.077641, 30.591343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050758, 41.152065, 30.766533>,  <32.294395, 41.276104, 31.058517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050758, 41.152065, 30.766533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706113, 0.207051, -0.677152,
		0.361124, -0.927884, 0.092852,
		-0.609093, -0.310100, -0.729962,
		31.868031, 41.059036, 30.547544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775146, 41.055531, 30.591747>,  <32.294395, 41.276104, 31.058517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775146, 41.055531, 30.591747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437408, 41.097149, 30.381508>,  <32.234764, 41.122120, 30.255365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437408, 41.097149, 30.381508>,  <32.775146, 41.055531, 30.591747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437408, 41.097149, 30.381508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515119, 0.427535, -0.742877,
		0.147414, -0.897990, -0.414587,
		-0.844347, 0.104051, -0.525597,
		32.184105, 41.128365, 30.223829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031658, 41.044399, 29.890728>,  <32.775146, 41.055531, 30.591747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031658, 41.044399, 29.890728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668201, 41.208164, 29.857859>,  <32.450127, 41.306423, 29.838137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668201, 41.208164, 29.857859>,  <33.031658, 41.044399, 29.890728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668201, 41.208164, 29.857859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257591, 0.394678, -0.881973,
		-0.328656, -0.822565, -0.464081,
		-0.908643, 0.409409, -0.082172,
		32.395607, 41.330986, 29.833206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756413, 40.992874, 29.157131>,  <33.031658, 41.044399, 29.890728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756413, 40.992874, 29.157131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554310, 41.286827, 29.338093>,  <32.433048, 41.463200, 29.446669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554310, 41.286827, 29.338093>,  <32.756413, 40.992874, 29.157131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554310, 41.286827, 29.338093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263131, 0.630465, -0.730257,
		-0.821877, -0.249923, -0.511914,
		-0.505253, 0.734882, 0.452402,
		32.402733, 41.507290, 29.473814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185925, 41.203388, 28.682455>,  <32.756413, 40.992874, 29.157131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185925, 41.203388, 28.682455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274609, 41.510586, 28.922798>,  <32.327820, 41.694904, 29.067005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274609, 41.510586, 28.922798>,  <32.185925, 41.203388, 28.682455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274609, 41.510586, 28.922798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056978, 0.604939, -0.794231,
		-0.973446, 0.210327, 0.090364,
		0.221713, 0.767992, 0.600859,
		32.341122, 41.740982, 29.103056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922750, 41.696239, 28.275225>,  <32.185925, 41.203388, 28.682455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922750, 41.696239, 28.275225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161808, 41.891495, 28.529640>,  <32.305241, 42.008648, 28.682289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161808, 41.891495, 28.529640>,  <31.922750, 41.696239, 28.275225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161808, 41.891495, 28.529640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172834, 0.696213, -0.696718,
		-0.782912, 0.526318, 0.331721,
		0.597643, 0.488136, 0.636039,
		32.341103, 42.037937, 28.720451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721270, 42.476982, 28.183994>,  <31.922750, 41.696239, 28.275225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721270, 42.476982, 28.183994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089130, 42.478374, 28.341084>,  <32.309845, 42.479210, 28.435337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089130, 42.478374, 28.341084>,  <31.721270, 42.476982, 28.183994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089130, 42.478374, 28.341084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297815, 0.645698, -0.703122,
		-0.256025, 0.763585, 0.592781,
		0.919651, 0.003478, 0.392722,
		32.365025, 42.479420, 28.458900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848730, 43.296780, 28.230925>,  <31.721270, 42.476982, 28.183994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848730, 43.296780, 28.230925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183994, 43.080853, 28.262114>,  <32.385151, 42.951294, 28.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183994, 43.080853, 28.262114>,  <31.848730, 43.296780, 28.230925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183994, 43.080853, 28.262114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483916, 0.670053, -0.562898,
		0.251619, 0.509530, 0.822841,
		0.838160, -0.539822, 0.077972,
		32.435444, 42.918907, 28.285505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486031, 43.816051, 28.206078>,  <31.848730, 43.296780, 28.230925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486031, 43.816051, 28.206078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615246, 43.456493, 28.087662>,  <32.692776, 43.240761, 28.016611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615246, 43.456493, 28.087662>,  <32.486031, 43.816051, 28.206078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615246, 43.456493, 28.087662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657466, 0.438155, -0.612991,
		0.680726, 0.003380, 0.732531,
		0.323034, -0.898893, -0.296042,
		32.712154, 43.186825, 27.998850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309818, 43.899834, 28.158997>,  <32.486031, 43.816051, 28.206078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309818, 43.899834, 28.158997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208405, 43.590012, 27.927210>,  <33.147556, 43.404118, 27.788137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208405, 43.590012, 27.927210>,  <33.309818, 43.899834, 28.158997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208405, 43.590012, 27.927210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517165, 0.397701, -0.757874,
		0.817471, -0.491830, 0.299741,
		-0.253538, -0.774556, -0.579467,
		33.132343, 43.357643, 27.753370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900841, 43.777092, 27.751459>,  <33.309818, 43.899834, 28.158997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900841, 43.777092, 27.751459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651379, 43.568340, 27.518669>,  <33.501701, 43.443089, 27.378996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651379, 43.568340, 27.518669>,  <33.900841, 43.777092, 27.751459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651379, 43.568340, 27.518669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324159, 0.504808, -0.800057,
		0.711322, -0.687609, -0.145651,
		-0.623652, -0.521884, -0.581975,
		33.464283, 43.411774, 27.344076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269871, 43.515308, 27.132687>,  <33.900841, 43.777092, 27.751459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269871, 43.515308, 27.132687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888004, 43.481056, 27.018650>,  <33.658886, 43.460503, 26.950228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888004, 43.481056, 27.018650>,  <34.269871, 43.515308, 27.132687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888004, 43.481056, 27.018650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248312, 0.299096, -0.921348,
		0.164168, -0.950373, -0.264274,
		-0.954668, -0.085634, -0.285091,
		33.601604, 43.455364, 26.933123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327850, 43.017891, 26.585911>,  <34.269871, 43.515308, 27.132687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327850, 43.017891, 26.585911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977497, 43.204376, 26.536161>,  <33.767284, 43.316265, 26.506311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977497, 43.204376, 26.536161>,  <34.327850, 43.017891, 26.585911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977497, 43.204376, 26.536161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248370, 0.214633, -0.944587,
		-0.413683, -0.858242, -0.303787,
		-0.875888, 0.466211, -0.124371,
		33.714729, 43.344238, 26.498850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033558, 42.717102, 25.982941>,  <34.327850, 43.017891, 26.585911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033558, 42.717102, 25.982941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859444, 43.073402, 26.035240>,  <33.754974, 43.287182, 26.066620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859444, 43.073402, 26.035240>,  <34.033558, 42.717102, 25.982941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859444, 43.073402, 26.035240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279576, 0.271788, -0.920852,
		-0.855783, -0.364279, -0.367337,
		-0.435285, 0.890748, 0.130748,
		33.728859, 43.340626, 26.074465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653320, 42.816593, 25.387482>,  <34.033558, 42.717102, 25.982941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653320, 42.816593, 25.387482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706333, 43.181946, 25.541451>,  <33.738140, 43.401157, 25.633831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706333, 43.181946, 25.541451>,  <33.653320, 42.816593, 25.387482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706333, 43.181946, 25.541451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233722, 0.348597, -0.907664,
		-0.963229, 0.210255, -0.167279,
		0.132528, 0.913385, 0.384920,
		33.746090, 43.455963, 25.656927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312866, 43.181347, 24.907234>,  <33.653320, 42.816593, 25.387482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312866, 43.181347, 24.907234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544933, 43.445385, 25.098097>,  <33.684174, 43.603809, 25.212614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544933, 43.445385, 25.098097>,  <33.312866, 43.181347, 24.907234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544933, 43.445385, 25.098097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237935, 0.422922, -0.874370,
		-0.778967, 0.620815, 0.088307,
		0.580170, 0.660094, 0.477157,
		33.718983, 43.643414, 25.241243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206402, 43.879326, 24.620522>,  <33.312866, 43.181347, 24.907234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206402, 43.879326, 24.620522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579361, 43.876431, 24.765060>,  <33.803139, 43.874695, 24.851784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579361, 43.876431, 24.765060>,  <33.206402, 43.879326, 24.620522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579361, 43.876431, 24.765060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350096, 0.266399, -0.898033,
		-0.089767, 0.963836, 0.250924,
		0.932402, -0.007234, 0.361349,
		33.859081, 43.874260, 24.873465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474579, 44.537350, 24.548895>,  <33.206402, 43.879326, 24.620522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474579, 44.537350, 24.548895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829773, 44.357067, 24.585443>,  <34.042889, 44.248898, 24.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829773, 44.357067, 24.585443>,  <33.474579, 44.537350, 24.548895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829773, 44.357067, 24.585443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236639, 0.277460, -0.931138,
		0.394316, 0.848458, 0.353034,
		0.887985, -0.450704, 0.091371,
		34.096169, 44.221855, 24.612854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004444, 45.075546, 24.275892>,  <33.474579, 44.537350, 24.548895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004444, 45.075546, 24.275892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146843, 44.701790, 24.281305>,  <34.232285, 44.477535, 24.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146843, 44.701790, 24.281305>,  <34.004444, 45.075546, 24.275892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146843, 44.701790, 24.281305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454679, 0.160544, -0.876066,
		0.816413, 0.318034, 0.482001,
		0.356001, -0.934387, 0.013533,
		34.253643, 44.421474, 24.285366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648117, 45.166904, 24.097612>,  <34.004444, 45.075546, 24.275892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648117, 45.166904, 24.097612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568363, 44.783089, 24.018082>,  <34.520512, 44.552799, 23.970364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568363, 44.783089, 24.018082>,  <34.648117, 45.166904, 24.097612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568363, 44.783089, 24.018082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496508, 0.076002, -0.864699,
		0.844823, -0.271127, 0.461265,
		-0.199386, -0.959538, -0.198825,
		34.508549, 44.495228, 23.958435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262897, 44.884808, 23.857622>,  <34.648117, 45.166904, 24.097612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262897, 44.884808, 23.857622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988117, 44.639809, 23.701187>,  <34.823250, 44.492809, 23.607327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988117, 44.639809, 23.701187>,  <35.262897, 44.884808, 23.857622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988117, 44.639809, 23.701187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543041, -0.075036, -0.836347,
		0.482911, -0.786906, 0.384155,
		-0.686952, -0.612493, -0.391087,
		34.782032, 44.456062, 23.583860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565323, 44.253716, 23.740061>,  <35.262897, 44.884808, 23.857622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565323, 44.253716, 23.740061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249039, 44.226215, 23.496731>,  <35.059269, 44.209717, 23.350733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249039, 44.226215, 23.496731>,  <35.565323, 44.253716, 23.740061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249039, 44.226215, 23.496731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612072, -0.108666, -0.783300,
		-0.012256, -0.991698, 0.128000,
		-0.790706, -0.068745, -0.608323,
		35.011826, 44.205593, 23.314234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778725, 43.776592, 23.261745>,  <35.565323, 44.253716, 23.740061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778725, 43.776592, 23.261745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457798, 43.925819, 23.075367>,  <35.265240, 44.015354, 22.963541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457798, 43.925819, 23.075367>,  <35.778725, 43.776592, 23.261745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457798, 43.925819, 23.075367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415410, -0.211559, -0.884690,
		-0.428626, -0.903361, 0.014761,
		-0.802318, 0.373069, -0.465945,
		35.217102, 44.037739, 22.935583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449718, 43.234333, 22.869091>,  <35.778725, 43.776592, 23.261745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449718, 43.234333, 22.869091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360985, 43.600460, 22.734636>,  <35.307747, 43.820137, 22.653963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360985, 43.600460, 22.734636>,  <35.449718, 43.234333, 22.869091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360985, 43.600460, 22.734636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314235, -0.259230, -0.913267,
		-0.923064, -0.308217, -0.230119,
		-0.221830, 0.915315, -0.336139,
		35.294437, 43.875053, 22.633795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180141, 43.129128, 22.155088>,  <35.449718, 43.234333, 22.869091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180141, 43.129128, 22.155088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278267, 43.516460, 22.173647>,  <35.337143, 43.748859, 22.184782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278267, 43.516460, 22.173647>,  <35.180141, 43.129128, 22.155088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278267, 43.516460, 22.173647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345192, -0.042530, -0.937568,
		-0.905904, 0.246018, -0.344694,
		0.245318, 0.968332, 0.046395,
		35.351864, 43.806961, 22.187565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975132, 43.464943, 21.525375>,  <35.180141, 43.129128, 22.155088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975132, 43.464943, 21.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238071, 43.724670, 21.678360>,  <35.395836, 43.880508, 21.770151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238071, 43.724670, 21.678360>,  <34.975132, 43.464943, 21.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238071, 43.724670, 21.678360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422189, 0.103079, -0.900628,
		-0.624219, 0.753498, -0.206377,
		0.657348, 0.649319, 0.382463,
		35.435276, 43.919468, 21.793098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038055, 43.998886, 20.987867>,  <34.975132, 43.464943, 21.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038055, 43.998886, 20.987867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371677, 44.055862, 21.201056>,  <35.571850, 44.090046, 21.328968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371677, 44.055862, 21.201056>,  <35.038055, 43.998886, 20.987867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371677, 44.055862, 21.201056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535065, 0.026436, -0.844397,
		-0.134364, 0.989451, -0.054165,
		0.834057, 0.142438, 0.532972,
		35.621895, 44.098595, 21.360947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328876, 44.598694, 20.713583>,  <35.038055, 43.998886, 20.987867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328876, 44.598694, 20.713583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634701, 44.446590, 20.921757>,  <35.818195, 44.355328, 21.046661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634701, 44.446590, 20.921757>,  <35.328876, 44.598694, 20.713583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634701, 44.446590, 20.921757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590223, 0.088580, -0.802366,
		0.259006, 0.920629, 0.292161,
		0.764561, -0.380258, 0.520433,
		35.864071, 44.332512, 21.077887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858017, 44.969692, 20.576340>,  <35.328876, 44.598694, 20.713583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858017, 44.969692, 20.576340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009060, 44.624878, 20.711576>,  <36.099686, 44.417988, 20.792719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009060, 44.624878, 20.711576>,  <35.858017, 44.969692, 20.576340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009060, 44.624878, 20.711576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629029, -0.029133, -0.776836,
		0.679509, 0.506011, 0.531244,
		0.377611, -0.862035, 0.338092,
		36.122345, 44.366268, 20.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576168, 45.155449, 20.502377>,  <35.858017, 44.969692, 20.576340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576168, 45.155449, 20.502377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516399, 44.760201, 20.516768>,  <36.480537, 44.523052, 20.525402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516399, 44.760201, 20.516768>,  <36.576168, 45.155449, 20.502377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516399, 44.760201, 20.516768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372983, -0.090025, -0.923460,
		0.915727, -0.124568, 0.382003,
		-0.149424, -0.988119, 0.035977,
		36.471573, 44.463764, 20.527561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271576, 44.834797, 20.295700>,  <36.576168, 45.155449, 20.502377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271576, 44.834797, 20.295700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975616, 44.571808, 20.238752>,  <36.798038, 44.414013, 20.204584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975616, 44.571808, 20.238752>,  <37.271576, 44.834797, 20.295700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975616, 44.571808, 20.238752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330712, -0.171209, -0.928072,
		0.585810, -0.733766, 0.344113,
		-0.739903, -0.657476, -0.142370,
		36.753647, 44.374565, 20.196041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614799, 44.263725, 19.959190>,  <37.271576, 44.834797, 20.295700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614799, 44.263725, 19.959190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223953, 44.254990, 19.874550>,  <36.989445, 44.249748, 19.823767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223953, 44.254990, 19.874550>,  <37.614799, 44.263725, 19.959190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223953, 44.254990, 19.874550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212674, -0.079030, -0.973922,
		0.004546, -0.996633, 0.081865,
		-0.977113, -0.021838, -0.211599,
		36.930820, 44.248440, 19.811069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642242, 43.796562, 19.436518>,  <37.614799, 44.263725, 19.959190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642242, 43.796562, 19.436518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280544, 43.963467, 19.400238>,  <37.063526, 44.063610, 19.378469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280544, 43.963467, 19.400238>,  <37.642242, 43.796562, 19.436518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280544, 43.963467, 19.400238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003714, -0.220090, -0.975473,
		-0.426990, -0.881733, 0.200566,
		-0.904249, 0.417262, -0.090701,
		37.009270, 44.088646, 19.373028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314896, 43.720970, 19.729288>,  <37.642242, 43.796562, 19.436518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314896, 43.720970, 19.729288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708229, 43.735264, 19.800602>,  <38.944229, 43.743839, 19.843390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708229, 43.735264, 19.800602>,  <38.314896, 43.720970, 19.729288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708229, 43.735264, 19.800602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137505, -0.495406, 0.857709,
		0.118976, -0.867926, -0.482233,
		0.983330, 0.035737, 0.178285,
		39.003227, 43.745983, 19.854088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421062, 43.043781, 19.979826>,  <38.314896, 43.720970, 19.729288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421062, 43.043781, 19.979826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737617, 43.268684, 20.075808>,  <38.927551, 43.403625, 20.133396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737617, 43.268684, 20.075808>,  <38.421062, 43.043781, 19.979826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737617, 43.268684, 20.075808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023224, -0.419888, 0.907279,
		0.610878, -0.712433, -0.345351,
		0.791384, 0.562257, 0.239955,
		38.975033, 43.437363, 20.147795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933750, 42.599312, 20.228432>,  <38.421062, 43.043781, 19.979826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933750, 42.599312, 20.228432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042435, 42.957916, 20.368401>,  <39.107647, 43.173077, 20.452383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042435, 42.957916, 20.368401>,  <38.933750, 42.599312, 20.228432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042435, 42.957916, 20.368401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120051, -0.392337, 0.911954,
		0.954862, -0.205780, -0.214229,
		0.271712, 0.896508, 0.349923,
		39.123947, 43.226868, 20.473377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414127, 42.404095, 20.795734>,  <38.933750, 42.599312, 20.228432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414127, 42.404095, 20.795734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247185, 42.764755, 20.841038>,  <39.147018, 42.981152, 20.868219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247185, 42.764755, 20.841038>,  <39.414127, 42.404095, 20.795734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247185, 42.764755, 20.841038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016722, -0.116991, 0.992992,
		0.908587, 0.416330, 0.033749,
		-0.417361, 0.901655, 0.113258,
		39.121975, 43.035252, 20.875015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791065, 42.728439, 21.402489>,  <39.414127, 42.404095, 20.795734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791065, 42.728439, 21.402489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449200, 42.932369, 21.363255>,  <39.244080, 43.054726, 21.339714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449200, 42.932369, 21.363255>,  <39.791065, 42.728439, 21.402489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449200, 42.932369, 21.363255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210077, -0.166833, 0.963345,
		0.474774, 0.843946, 0.249689,
		-0.854668, 0.509825, -0.098085,
		39.192799, 43.085316, 21.333830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834419, 43.105473, 21.974237>,  <39.791065, 42.728439, 21.402489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834419, 43.105473, 21.974237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449635, 43.125309, 21.866781>,  <39.218765, 43.137211, 21.802307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449635, 43.125309, 21.866781>,  <39.834419, 43.105473, 21.974237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449635, 43.125309, 21.866781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266326, 0.048627, 0.962656,
		0.060806, 0.997585, -0.033570,
		-0.961963, 0.049594, -0.268640,
		39.161045, 43.140186, 21.786190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570599, 43.612797, 22.461914>,  <39.834419, 43.105473, 21.974237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570599, 43.612797, 22.461914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266808, 43.401379, 22.310207>,  <39.084534, 43.274529, 22.219183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266808, 43.401379, 22.310207>,  <39.570599, 43.612797, 22.461914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266808, 43.401379, 22.310207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423835, -0.040267, 0.904844,
		-0.493519, 0.847952, -0.193432,
		-0.759475, -0.528541, -0.379265,
		39.038963, 43.242817, 22.196428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939167, 43.780918, 22.752647>,  <39.570599, 43.612797, 22.461914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939167, 43.780918, 22.752647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825893, 43.408440, 22.660830>,  <38.757931, 43.184952, 22.605740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825893, 43.408440, 22.660830>,  <38.939167, 43.780918, 22.752647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825893, 43.408440, 22.660830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456362, -0.079677, 0.886220,
		-0.843530, 0.355716, -0.402397,
		-0.283181, -0.931192, -0.229545,
		38.740940, 43.129082, 22.591967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275684, 43.775631, 22.962801>,  <38.939167, 43.780918, 22.752647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275684, 43.775631, 22.962801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374928, 43.390736, 22.917999>,  <38.434471, 43.159798, 22.891117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374928, 43.390736, 22.917999>,  <38.275684, 43.775631, 22.962801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374928, 43.390736, 22.917999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432180, -0.213421, 0.876169,
		-0.866986, -0.168975, -0.468810,
		0.248105, -0.962236, -0.112005,
		38.449360, 43.102066, 22.884398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683128, 43.516666, 23.041174>,  <38.275684, 43.775631, 22.962801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683128, 43.516666, 23.041174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942085, 43.222042, 23.119516>,  <38.097458, 43.045269, 23.166521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942085, 43.222042, 23.119516>,  <37.683128, 43.516666, 23.041174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942085, 43.222042, 23.119516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462735, -0.175667, 0.868917,
		-0.605606, -0.653159, -0.454559,
		0.647393, -0.736562, 0.195854,
		38.136303, 43.001072, 23.178272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286205, 42.924492, 23.135485>,  <37.683128, 43.516666, 23.041174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286205, 42.924492, 23.135485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641819, 42.821583, 23.286976>,  <37.855186, 42.759838, 23.377871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641819, 42.821583, 23.286976>,  <37.286205, 42.924492, 23.135485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641819, 42.821583, 23.286976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448225, -0.320354, 0.834546,
		-0.093378, -0.911693, -0.400121,
		0.889030, -0.257272, 0.378729,
		37.908527, 42.744400, 23.400595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186180, 42.227478, 23.361017>,  <37.286205, 42.924492, 23.135485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186180, 42.227478, 23.361017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499588, 42.366516, 23.567034>,  <37.687634, 42.449940, 23.690643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499588, 42.366516, 23.567034>,  <37.186180, 42.227478, 23.361017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499588, 42.366516, 23.567034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310943, -0.498300, 0.809328,
		0.537967, -0.794275, -0.282345,
		0.783522, 0.347598, 0.515043,
		37.734646, 42.470795, 23.721546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486904, 41.649040, 23.709517>,  <37.186180, 42.227478, 23.361017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486904, 41.649040, 23.709517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650520, 41.958683, 23.902782>,  <37.748688, 42.144470, 24.018742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650520, 41.958683, 23.902782>,  <37.486904, 41.649040, 23.709517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650520, 41.958683, 23.902782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265466, -0.405637, 0.874635,
		0.873050, -0.486022, 0.039578,
		0.409038, 0.774107, 0.483164,
		37.773232, 42.190914, 24.047731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775093, 41.395531, 24.342501>,  <37.486904, 41.649040, 23.709517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775093, 41.395531, 24.342501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711956, 41.783936, 24.414301>,  <37.674072, 42.016979, 24.457380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711956, 41.783936, 24.414301>,  <37.775093, 41.395531, 24.342501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711956, 41.783936, 24.414301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556505, -0.237636, 0.796135,
		0.815713, 0.025773, 0.577883,
		-0.157844, 0.971012, 0.179500,
		37.664604, 42.075241, 24.468151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920021, 41.555805, 25.090117>,  <37.775093, 41.395531, 24.342501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920021, 41.555805, 25.090117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670921, 41.831131, 24.941301>,  <37.521461, 41.996326, 24.852013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670921, 41.831131, 24.941301>,  <37.920021, 41.555805, 25.090117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670921, 41.831131, 24.941301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638737, -0.172613, 0.749813,
		0.451887, 0.704579, 0.547145,
		-0.622746, 0.688312, -0.372039,
		37.484097, 42.037624, 24.829689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791386, 41.993252, 25.646877>,  <37.920021, 41.555805, 25.090117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791386, 41.993252, 25.646877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473755, 42.059116, 25.412844>,  <37.283176, 42.098633, 25.272423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473755, 42.059116, 25.412844>,  <37.791386, 41.993252, 25.646877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473755, 42.059116, 25.412844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600284, -0.061429, 0.797424,
		0.095362, 0.984436, 0.147621,
		-0.794081, 0.164659, -0.585083,
		37.235531, 42.108513, 25.237318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300446, 42.581806, 25.965202>,  <37.791386, 41.993252, 25.646877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300446, 42.581806, 25.965202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075165, 42.387356, 25.697924>,  <36.939999, 42.270683, 25.537556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075165, 42.387356, 25.697924>,  <37.300446, 42.581806, 25.965202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075165, 42.387356, 25.697924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821201, 0.239385, 0.518000,
		-0.091858, 0.840461, -0.534029,
		-0.563198, -0.486127, -0.668198,
		36.906204, 42.241516, 25.497465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710297, 42.983013, 25.898563>,  <37.300446, 42.581806, 25.965202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710297, 42.983013, 25.898563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605907, 42.618214, 25.771980>,  <36.543274, 42.399334, 25.696030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605907, 42.618214, 25.771980>,  <36.710297, 42.983013, 25.898563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605907, 42.618214, 25.771980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852293, 0.063744, 0.519166,
		-0.453308, 0.405204, -0.793928,
		-0.260977, -0.912002, -0.316457,
		36.527615, 42.344612, 25.677044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043148, 43.044533, 25.678967>,  <36.710297, 42.983013, 25.898563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043148, 43.044533, 25.678967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084568, 42.655388, 25.761734>,  <36.109421, 42.421902, 25.811394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084568, 42.655388, 25.761734>,  <36.043148, 43.044533, 25.678967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084568, 42.655388, 25.761734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803697, 0.040718, 0.593644,
		-0.585960, -0.227769, -0.777671,
		0.103549, -0.972863, 0.206917,
		36.115631, 42.363529, 25.823809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298119, 42.811874, 25.734413>,  <36.043148, 43.044533, 25.678967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298119, 42.811874, 25.734413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525597, 42.524254, 25.894192>,  <35.662083, 42.351681, 25.990059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525597, 42.524254, 25.894192>,  <35.298119, 42.811874, 25.734413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525597, 42.524254, 25.894192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678973, -0.136238, 0.721412,
		-0.464311, -0.681474, -0.565693,
		0.568692, -0.719049, 0.399445,
		35.696205, 42.308540, 26.014025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797527, 42.378345, 25.961363>,  <35.298119, 42.811874, 25.734413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797527, 42.378345, 25.961363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120087, 42.256355, 26.164028>,  <35.313622, 42.183163, 26.285627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120087, 42.256355, 26.164028>,  <34.797527, 42.378345, 25.961363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120087, 42.256355, 26.164028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578840, -0.231648, 0.781846,
		-0.121072, -0.923760, -0.363331,
		0.806402, -0.304970, 0.506663,
		35.362007, 42.164864, 26.316027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677753, 41.695435, 26.318293>,  <34.797527, 42.378345, 25.961363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677753, 41.695435, 26.318293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975834, 41.880367, 26.510509>,  <35.154682, 41.991329, 26.625839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975834, 41.880367, 26.510509>,  <34.677753, 41.695435, 26.318293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975834, 41.880367, 26.510509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396796, -0.271733, 0.876764,
		0.535939, -0.844042, -0.019042,
		0.745199, 0.462336, 0.480545,
		35.199394, 42.019070, 26.654673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671753, 41.210270, 26.740126>,  <34.677753, 41.695435, 26.318293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671753, 41.210270, 26.740126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907158, 41.506844, 26.869076>,  <35.048401, 41.684788, 26.946445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907158, 41.506844, 26.869076>,  <34.671753, 41.210270, 26.740126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907158, 41.506844, 26.869076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226453, -0.231610, 0.946084,
		0.776127, -0.629785, 0.031595,
		0.588512, 0.741437, 0.322375,
		35.083710, 41.729275, 26.965788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112297, 40.906044, 27.191711>,  <34.671753, 41.210270, 26.740126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112297, 40.906044, 27.191711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120304, 41.289814, 27.304207>,  <35.125107, 41.520077, 27.371704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120304, 41.289814, 27.304207>,  <35.112297, 40.906044, 27.191711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120304, 41.289814, 27.304207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161632, -0.274487, 0.947909,
		0.986648, -0.064431, 0.149581,
		0.020016, 0.959430, 0.281236,
		35.126308, 41.577644, 27.388578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621048, 40.970600, 27.679476>,  <35.112297, 40.906044, 27.191711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621048, 40.970600, 27.679476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377003, 41.283188, 27.731735>,  <35.230576, 41.470741, 27.763090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377003, 41.283188, 27.731735>,  <35.621048, 40.970600, 27.679476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377003, 41.283188, 27.731735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069147, -0.216780, 0.973768,
		0.789292, 0.585074, 0.186297,
		-0.610112, 0.781470, 0.130647,
		35.193970, 41.517628, 27.770929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399174, 40.851955, 28.385998>,  <35.621048, 40.970600, 27.679476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399174, 40.851955, 28.385998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156815, 41.163857, 28.322918>,  <35.011398, 41.350998, 28.285070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156815, 41.163857, 28.322918>,  <35.399174, 40.851955, 28.385998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156815, 41.163857, 28.322918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068688, 0.146213, 0.986866,
		0.792572, 0.608771, -0.035030,
		-0.605897, 0.779756, -0.157699,
		34.975044, 41.397785, 28.275608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631531, 41.485447, 28.564222>,  <35.399174, 40.851955, 28.385998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631531, 41.485447, 28.564222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239361, 41.508259, 28.639593>,  <35.004059, 41.521946, 28.684816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239361, 41.508259, 28.639593>,  <35.631531, 41.485447, 28.564222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239361, 41.508259, 28.639593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196794, 0.257352, 0.946067,
		0.005465, 0.964633, -0.263540,
		-0.980430, 0.057034, 0.188427,
		34.945232, 41.525368, 28.696121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508190, 42.093777, 28.997288>,  <35.631531, 41.485447, 28.564222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508190, 42.093777, 28.997288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159767, 41.903824, 29.047474>,  <34.950714, 41.789852, 29.077585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159767, 41.903824, 29.047474>,  <35.508190, 42.093777, 28.997288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159767, 41.903824, 29.047474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011412, 0.274930, 0.961396,
		-0.491046, 0.836001, -0.244899,
		-0.871059, -0.474885, 0.125463,
		34.898449, 41.761360, 29.085114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078831, 42.474163, 29.369484>,  <35.508190, 42.093777, 28.997288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078831, 42.474163, 29.369484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899643, 42.119987, 29.419006>,  <34.792130, 41.907482, 29.448719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899643, 42.119987, 29.419006>,  <35.078831, 42.474163, 29.369484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899643, 42.119987, 29.419006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101359, 0.187881, 0.976948,
		-0.888286, 0.425091, -0.173911,
		-0.447966, -0.885437, 0.123805,
		34.765255, 41.854355, 29.456148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520184, 42.601543, 29.738419>,  <35.078831, 42.474163, 29.369484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520184, 42.601543, 29.738419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634193, 42.224380, 29.807337>,  <34.702599, 41.998081, 29.848688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634193, 42.224380, 29.807337>,  <34.520184, 42.601543, 29.738419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634193, 42.224380, 29.807337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056111, 0.163032, 0.985024,
		-0.956875, -0.290427, -0.006439,
		0.285028, -0.942906, 0.172298,
		34.719704, 41.941509, 29.859026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076344, 42.332619, 30.218988>,  <34.520184, 42.601543, 29.738419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076344, 42.332619, 30.218988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398468, 42.095989, 30.234507>,  <34.591743, 41.954010, 30.243818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398468, 42.095989, 30.234507>,  <34.076344, 42.332619, 30.218988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398468, 42.095989, 30.234507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181610, -0.183872, 0.966028,
		-0.564346, -0.785002, -0.255511,
		0.805315, -0.591577, 0.038797,
		34.640064, 41.918518, 30.246145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908195, 41.883957, 30.799515>,  <34.076344, 42.332619, 30.218988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908195, 41.883957, 30.799515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301010, 41.821693, 30.756844>,  <34.536697, 41.784336, 30.731241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301010, 41.821693, 30.756844>,  <33.908195, 41.883957, 30.799515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301010, 41.821693, 30.756844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049745, -0.331786, 0.942042,
		-0.182029, -0.930424, -0.318082,
		0.982034, -0.155656, -0.106679,
		34.595619, 41.774998, 30.724840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024559, 41.265755, 31.165588>,  <33.908195, 41.883957, 30.799515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024559, 41.265755, 31.165588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371544, 41.460747, 31.125834>,  <34.579735, 41.577744, 31.101980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371544, 41.460747, 31.125834>,  <34.024559, 41.265755, 31.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371544, 41.460747, 31.125834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216664, -0.190327, 0.957514,
		0.447854, -0.852137, -0.270720,
		0.867458, 0.487482, -0.099388,
		34.631783, 41.606991, 31.096018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463787, 40.748409, 31.380087>,  <34.024559, 41.265755, 31.165588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463787, 40.748409, 31.380087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626007, 41.113724, 31.395256>,  <34.723339, 41.332912, 31.404358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626007, 41.113724, 31.395256>,  <34.463787, 40.748409, 31.380087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626007, 41.113724, 31.395256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264718, -0.157057, 0.951450,
		0.874902, -0.375822, -0.305458,
		0.405550, 0.913286, 0.037923,
		34.747673, 41.387711, 31.406633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211212, 40.610802, 31.477396>,  <34.463787, 40.748409, 31.380087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211212, 40.610802, 31.477396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116669, 40.981102, 31.595465>,  <35.059944, 41.203281, 31.666306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116669, 40.981102, 31.595465>,  <35.211212, 40.610802, 31.477396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116669, 40.981102, 31.595465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268060, -0.229865, 0.935578,
		0.933959, 0.300254, -0.193826,
		-0.236357, 0.925748, 0.295171,
		35.045761, 41.258827, 31.684015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669834, 40.879864, 32.031578>,  <35.211212, 40.610802, 31.477396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669834, 40.879864, 32.031578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357132, 41.124683, 32.079330>,  <35.169510, 41.271576, 32.107983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357132, 41.124683, 32.079330>,  <35.669834, 40.879864, 32.031578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357132, 41.124683, 32.079330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035192, -0.147841, 0.988385,
		0.622593, 0.776875, 0.094036,
		-0.781754, 0.612052, 0.119384,
		35.122604, 41.308300, 32.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884930, 41.323647, 32.503174>,  <35.669834, 40.879864, 32.031578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884930, 41.323647, 32.503174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490089, 41.381512, 32.530586>,  <35.253185, 41.416229, 32.547035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490089, 41.381512, 32.530586>,  <35.884930, 41.323647, 32.503174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490089, 41.381512, 32.530586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041744, -0.180693, 0.982653,
		0.154535, 0.972843, 0.172325,
		-0.987105, 0.144661, 0.068534,
		35.193958, 41.424911, 32.551147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785233, 41.719528, 33.065144>,  <35.884930, 41.323647, 32.503174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785233, 41.719528, 33.065144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431053, 41.544323, 33.003010>,  <35.218548, 41.439201, 32.965729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431053, 41.544323, 33.003010>,  <35.785233, 41.719528, 33.065144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431053, 41.544323, 33.003010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026782, -0.285596, 0.957976,
		-0.463971, 0.852396, 0.241149,
		-0.885446, -0.438015, -0.155336,
		35.165421, 41.412918, 32.956409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299232, 41.868130, 33.634617>,  <35.785233, 41.719528, 33.065144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299232, 41.868130, 33.634617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141476, 41.540054, 33.468849>,  <35.046822, 41.343208, 33.369389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141476, 41.540054, 33.468849>,  <35.299232, 41.868130, 33.634617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141476, 41.540054, 33.468849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175759, -0.509973, 0.842043,
		-0.901977, 0.259259, 0.345286,
		-0.394394, -0.820190, -0.414417,
		35.023159, 41.293999, 33.344524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940254, 41.590572, 34.156452>,  <35.299232, 41.868130, 33.634617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940254, 41.590572, 34.156452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984066, 41.284718, 33.902420>,  <35.010353, 41.101204, 33.750000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984066, 41.284718, 33.902420>,  <34.940254, 41.590572, 34.156452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984066, 41.284718, 33.902420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070871, -0.631294, 0.772299,
		-0.991454, -0.129597, -0.014953,
		0.109527, -0.764639, -0.635083,
		35.016926, 41.055325, 33.711895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563477, 41.660107, 34.490101>,  <34.940254, 41.590572, 34.156452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563477, 41.660107, 34.490101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869297, 41.410332, 34.426186>,  <36.052792, 41.260468, 34.387836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869297, 41.410332, 34.426186>,  <35.563477, 41.660107, 34.490101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869297, 41.410332, 34.426186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210738, 0.007885, 0.977511,
		-0.609136, -0.781033, 0.137622,
		0.764554, -0.624440, -0.159790,
		36.098663, 41.223000, 34.378250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696075, 42.045284, 35.168907>,  <35.563477, 41.660107, 34.490101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696075, 42.045284, 35.168907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944420, 42.068459, 34.856197>,  <36.093426, 42.082363, 34.668571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944420, 42.068459, 34.856197>,  <35.696075, 42.045284, 35.168907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944420, 42.068459, 34.856197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185894, 0.957939, 0.218622,
		0.761557, -0.281062, 0.583982,
		0.620866, 0.057935, -0.781774,
		36.130680, 42.085838, 34.621666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150993, 42.638016, 35.621403>,  <35.696075, 42.045284, 35.168907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150993, 42.638016, 35.621403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500912, 42.830402, 35.598068>,  <36.710861, 42.945835, 35.584068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500912, 42.830402, 35.598068>,  <36.150993, 42.638016, 35.621403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500912, 42.830402, 35.598068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354265, -0.552874, 0.754206,
		0.330498, -0.680441, -0.654042,
		0.874796, 0.480967, -0.058333,
		36.763351, 42.974693, 35.580570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750046, 42.128647, 35.608387>,  <36.150993, 42.638016, 35.621403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750046, 42.128647, 35.608387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836452, 42.488831, 35.759384>,  <36.888298, 42.704941, 35.849983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836452, 42.488831, 35.759384>,  <36.750046, 42.128647, 35.608387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836452, 42.488831, 35.759384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222115, -0.421808, 0.879058,
		0.950789, -0.106046, -0.291125,
		0.216019, 0.900462, 0.377497,
		36.901257, 42.758968, 35.872635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992065, 41.922543, 36.281521>,  <36.750046, 42.128647, 35.608387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992065, 41.922543, 36.281521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003216, 42.315907, 36.353214>,  <37.009907, 42.551926, 36.396233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003216, 42.315907, 36.353214>,  <36.992065, 41.922543, 36.281521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003216, 42.315907, 36.353214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209810, -0.181069, 0.960830,
		0.977345, 0.010825, -0.211376,
		0.027873, 0.983411, 0.179238,
		37.011578, 42.610931, 36.406986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765217, 41.880077, 36.055370>,  <36.992065, 41.922543, 36.281521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765217, 41.880077, 36.055370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594215, 41.530807, 35.961720>,  <37.491615, 41.321247, 35.905529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594215, 41.530807, 35.961720>,  <37.765217, 41.880077, 36.055370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594215, 41.530807, 35.961720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853127, -0.475339, 0.215005,
		-0.299025, -0.107824, 0.948134,
		-0.427502, -0.873171, -0.234126,
		37.465965, 41.268856, 35.891483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885311, 41.382202, 36.592392>,  <37.765217, 41.880077, 36.055370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885311, 41.382202, 36.592392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831974, 41.137428, 36.280560>,  <37.799973, 40.990562, 36.093460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831974, 41.137428, 36.280560>,  <37.885311, 41.382202, 36.592392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831974, 41.137428, 36.280560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700487, -0.614651, 0.362660,
		-0.701098, -0.497730, 0.510614,
		-0.133342, -0.611938, -0.779584,
		37.791973, 40.953846, 36.046684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625793, 40.626476, 36.810574>,  <37.885311, 41.382202, 36.592392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625793, 40.626476, 36.810574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860584, 40.676544, 36.490627>,  <38.001457, 40.706585, 36.298660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860584, 40.676544, 36.490627>,  <37.625793, 40.626476, 36.810574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860584, 40.676544, 36.490627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661994, -0.642961, 0.385181,
		-0.466071, -0.755601, -0.460266,
		0.586976, 0.125172, -0.799870,
		38.036678, 40.714096, 36.250668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769108, 40.021866, 36.555527>,  <37.625793, 40.626476, 36.810574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769108, 40.021866, 36.555527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065235, 40.264099, 36.438774>,  <38.242912, 40.409439, 36.368721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065235, 40.264099, 36.438774>,  <37.769108, 40.021866, 36.555527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065235, 40.264099, 36.438774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662974, -0.585794, 0.466166,
		0.111321, -0.538621, -0.835162,
		0.740319, 0.605585, -0.291881,
		38.287331, 40.445774, 36.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415703, 39.531937, 36.284576>,  <37.769108, 40.021866, 36.555527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415703, 39.531937, 36.284576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508827, 39.908310, 36.382915>,  <38.564701, 40.134136, 36.441921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508827, 39.908310, 36.382915>,  <38.415703, 39.531937, 36.284576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508827, 39.908310, 36.382915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745989, -0.334964, 0.575586,
		0.623940, 0.049400, -0.779909,
		0.232808, 0.940935, 0.245850,
		38.578671, 40.190590, 36.456669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161694, 39.737671, 36.056721>,  <38.415703, 39.531937, 36.284576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161694, 39.737671, 36.056721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045383, 39.956287, 36.370853>,  <38.975597, 40.087456, 36.559334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045383, 39.956287, 36.370853>,  <39.161694, 39.737671, 36.056721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045383, 39.956287, 36.370853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877740, -0.174320, 0.446302,
		0.380822, 0.819087, -0.429034,
		-0.290771, 0.546542, 0.785331,
		38.958153, 40.120251, 36.606453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692360, 40.198513, 36.319733>,  <39.161694, 39.737671, 36.056721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692360, 40.198513, 36.319733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495670, 40.142235, 36.663456>,  <39.377659, 40.108467, 36.869690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495670, 40.142235, 36.663456>,  <39.692360, 40.198513, 36.319733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495670, 40.142235, 36.663456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870694, -0.090901, 0.483352,
		0.010107, 0.985871, 0.167200,
		-0.491721, -0.140695, 0.859311,
		39.348152, 40.100025, 36.921249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673512, 40.796692, 36.608692>,  <39.692360, 40.198513, 36.319733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673512, 40.796692, 36.608692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700638, 40.459473, 36.822109>,  <39.716915, 40.257141, 36.950161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700638, 40.459473, 36.822109>,  <39.673512, 40.796692, 36.608692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700638, 40.459473, 36.822109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938824, 0.234909, 0.251846,
		-0.337653, 0.483821, 0.807408,
		0.067819, -0.843051, 0.533541,
		39.720985, 40.206558, 36.982170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433533, 41.003448, 36.753174>,  <39.673512, 40.796692, 36.608692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433533, 41.003448, 36.753174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622227, 41.288273, 36.545158>,  <40.735443, 41.459167, 36.420349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622227, 41.288273, 36.545158>,  <40.433533, 41.003448, 36.753174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622227, 41.288273, 36.545158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874275, 0.454311, -0.171012,
		0.114489, 0.535328, 0.836849,
		0.471738, 0.712057, -0.520037,
		40.763748, 41.501888, 36.389149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195068, 41.597713, 36.977886>,  <40.433533, 41.003448, 36.753174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195068, 41.597713, 36.977886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355743, 41.676270, 36.620098>,  <40.452148, 41.723404, 36.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355743, 41.676270, 36.620098>,  <40.195068, 41.597713, 36.977886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355743, 41.676270, 36.620098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759046, 0.617848, -0.205212,
		0.512345, 0.761376, 0.397252,
		0.401685, 0.196393, -0.894471,
		40.476250, 41.735188, 36.351757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177658, 42.309349, 36.870682>,  <40.195068, 41.597713, 36.977886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177658, 42.309349, 36.870682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219269, 42.190781, 36.490932>,  <40.244236, 42.119640, 36.263081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219269, 42.190781, 36.490932>,  <40.177658, 42.309349, 36.870682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219269, 42.190781, 36.490932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719750, 0.636338, -0.277549,
		0.686395, 0.712185, -0.147153,
		0.104027, -0.296421, -0.949375,
		40.250477, 42.101852, 36.206120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991604, 42.936028, 36.496082>,  <40.177658, 42.309349, 36.870682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991604, 42.936028, 36.496082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933205, 42.647278, 36.225502>,  <39.898167, 42.474030, 36.063152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933205, 42.647278, 36.225502>,  <39.991604, 42.936028, 36.496082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933205, 42.647278, 36.225502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811989, 0.478040, -0.334890,
		0.565118, 0.500379, -0.655944,
		-0.145995, -0.721872, -0.676452,
		39.889404, 42.430717, 36.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978935, 43.292404, 35.747074>,  <39.991604, 42.936028, 36.496082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978935, 43.292404, 35.747074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819847, 42.928036, 35.703190>,  <39.724396, 42.709415, 35.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819847, 42.928036, 35.703190>,  <39.978935, 43.292404, 35.747074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819847, 42.928036, 35.703190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816159, 0.405875, -0.411278,
		0.419168, -0.074042, -0.904884,
		-0.397722, -0.910924, -0.109700,
		39.700531, 42.654758, 35.670277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676037, 43.339424, 35.126476>,  <39.978935, 43.292404, 35.747074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676037, 43.339424, 35.126476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482662, 43.010078, 35.245373>,  <39.366638, 42.812469, 35.316711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482662, 43.010078, 35.245373>,  <39.676037, 43.339424, 35.126476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482662, 43.010078, 35.245373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764076, 0.231191, -0.602278,
		0.427177, -0.518279, -0.740882,
		-0.483434, -0.823369, 0.297245,
		39.337631, 42.763069, 35.334545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452477, 43.112953, 34.469570>,  <39.676037, 43.339424, 35.126476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452477, 43.112953, 34.469570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274117, 43.009880, 34.812447>,  <39.167099, 42.948036, 35.018173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274117, 43.009880, 34.812447>,  <39.452477, 43.112953, 34.469570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274117, 43.009880, 34.812447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833625, 0.468293, -0.292868,
		-0.325949, -0.845164, -0.423622,
		-0.445901, -0.257682, 0.857189,
		39.140347, 42.932575, 35.069603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752792, 42.824940, 34.299984>,  <39.452477, 43.112953, 34.469570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752792, 42.824940, 34.299984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747948, 42.969250, 34.673012>,  <38.745041, 43.055836, 34.896828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747948, 42.969250, 34.673012>,  <38.752792, 42.824940, 34.299984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747948, 42.969250, 34.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853719, 0.481829, -0.197493,
		-0.520592, -0.798548, 0.302166,
		-0.012115, 0.360779, 0.932572,
		38.744312, 43.077484, 34.952785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978115, 42.930977, 34.374111>,  <38.752792, 42.824940, 34.299984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978115, 42.930977, 34.374111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186596, 43.116695, 34.660542>,  <38.311684, 43.228127, 34.832401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186596, 43.116695, 34.660542>,  <37.978115, 42.930977, 34.374111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186596, 43.116695, 34.660542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837021, 0.441855, 0.322739,
		-0.166555, -0.767587, 0.618927,
		0.521206, 0.464301, 0.716079,
		38.342957, 43.255985, 34.875366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720058, 42.760082, 35.011406>,  <37.978115, 42.930977, 34.374111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720058, 42.760082, 35.011406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860054, 43.133759, 34.983681>,  <37.944050, 43.357964, 34.967045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860054, 43.133759, 34.983681>,  <37.720058, 42.760082, 35.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860054, 43.133759, 34.983681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849409, 0.347683, 0.397014,
		0.394986, -0.080071, 0.915191,
		0.349986, 0.934187, -0.069317,
		37.965050, 43.414013, 34.962887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449898, 43.161179, 35.547482>,  <37.720058, 42.760082, 35.011406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449898, 43.161179, 35.547482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547310, 43.407478, 35.247738>,  <37.605759, 43.555260, 35.067890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547310, 43.407478, 35.247738>,  <37.449898, 43.161179, 35.547482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547310, 43.407478, 35.247738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820621, 0.542648, 0.179203,
		0.516984, 0.571300, 0.637451,
		0.243533, 0.615751, -0.749361,
		37.620369, 43.592205, 35.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083199, 43.074154, 35.662659>,  <37.449898, 43.161179, 35.547482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083199, 43.074154, 35.662659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195347, 42.807686, 35.386223>,  <38.262634, 42.647804, 35.220360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195347, 42.807686, 35.386223>,  <38.083199, 43.074154, 35.662659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195347, 42.807686, 35.386223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883429, -0.102513, 0.457213,
		-0.375430, -0.738717, 0.559777,
		0.280366, -0.666175, -0.691090,
		38.279457, 42.607834, 35.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410648, 42.504807, 36.051773>,  <38.083199, 43.074154, 35.662659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410648, 42.504807, 36.051773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549545, 42.496765, 35.676750>,  <38.632885, 42.491940, 35.451736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549545, 42.496765, 35.676750>,  <38.410648, 42.504807, 36.051773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549545, 42.496765, 35.676750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897446, -0.282916, 0.338453,
		-0.272052, -0.958934, -0.080204,
		0.347245, -0.020098, -0.937559,
		38.653717, 42.490734, 35.395481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742092, 41.797092, 35.943512>,  <38.410648, 42.504807, 36.051773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742092, 41.797092, 35.943512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918327, 42.085636, 35.729774>,  <39.024067, 42.258762, 35.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918327, 42.085636, 35.729774>,  <38.742092, 41.797092, 35.943512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918327, 42.085636, 35.729774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894215, -0.405136, 0.190378,
		-0.079149, -0.561694, -0.823551,
		0.440584, 0.721363, -0.534341,
		39.050503, 42.302044, 35.569473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186707, 41.455875, 35.487568>,  <38.742092, 41.797092, 35.943512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186707, 41.455875, 35.487568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346283, 41.819916, 35.532394>,  <39.442028, 42.038342, 35.559292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346283, 41.819916, 35.532394>,  <39.186707, 41.455875, 35.487568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346283, 41.819916, 35.532394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914954, -0.403189, 0.017240,
		0.060875, 0.095659, -0.993551,
		0.398940, 0.910103, 0.112068,
		39.465965, 42.092945, 35.566013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827671, 41.381954, 35.239323>,  <39.186707, 41.455875, 35.487568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827671, 41.381954, 35.239323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849728, 41.718582, 35.454254>,  <39.862961, 41.920559, 35.583214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849728, 41.718582, 35.454254>,  <39.827671, 41.381954, 35.239323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849728, 41.718582, 35.454254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966286, -0.180526, 0.183580,
		0.251497, 0.509092, -0.823149,
		0.055140, 0.841567, 0.537330,
		39.866268, 41.971054, 35.615452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413681, 41.739864, 34.954918>,  <39.827671, 41.381954, 35.239323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413681, 41.739864, 34.954918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364643, 41.853653, 35.335243>,  <40.335220, 41.921925, 35.563438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364643, 41.853653, 35.335243>,  <40.413681, 41.739864, 34.954918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364643, 41.853653, 35.335243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944633, -0.260367, 0.199693,
		0.304367, 0.922651, -0.236801,
		-0.122591, 0.284470, 0.950814,
		40.327866, 41.938995, 35.620487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959087, 42.107914, 35.224899>,  <40.413681, 41.739864, 34.954918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959087, 42.107914, 35.224899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804974, 41.969711, 35.567169>,  <40.712505, 41.886791, 35.772533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804974, 41.969711, 35.567169>,  <40.959087, 42.107914, 35.224899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804974, 41.969711, 35.567169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910803, -0.291404, 0.292440,
		0.148309, 0.892025, 0.426960,
		-0.385282, -0.345506, 0.855677,
		40.689388, 41.866058, 35.823872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469814, 42.352291, 35.822529>,  <40.959087, 42.107914, 35.224899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469814, 42.352291, 35.822529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240070, 42.054207, 35.958038>,  <41.102222, 41.875355, 36.039345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240070, 42.054207, 35.958038>,  <41.469814, 42.352291, 35.822529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240070, 42.054207, 35.958038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792709, -0.403066, 0.457329,
		-0.204257, 0.531225, 0.822241,
		-0.574361, -0.745210, 0.338778,
		41.067760, 41.830643, 36.059673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391880, 42.445076, 36.515358>,  <41.469814, 42.352291, 35.822529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391880, 42.445076, 36.515358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406902, 42.065617, 36.389717>,  <41.415916, 41.837940, 36.314335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406902, 42.065617, 36.389717>,  <41.391880, 42.445076, 36.515358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406902, 42.065617, 36.389717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849034, -0.135476, 0.510674,
		-0.527003, -0.285858, 0.800346,
		0.037553, -0.948647, -0.314099,
		41.418167, 41.781021, 36.295486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488758, 42.023624, 37.104877>,  <41.391880, 42.445076, 36.515358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488758, 42.023624, 37.104877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648426, 41.870968, 36.771408>,  <41.744228, 41.779373, 36.571327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648426, 41.870968, 36.771408>,  <41.488758, 42.023624, 37.104877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648426, 41.870968, 36.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857176, -0.167403, 0.487057,
		-0.325440, -0.909026, 0.260310,
		0.399171, -0.381640, -0.833675,
		41.768177, 41.756477, 36.521305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679962, 41.359158, 37.145462>,  <41.488758, 42.023624, 37.104877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679962, 41.359158, 37.145462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903969, 41.559181, 36.881241>,  <42.038372, 41.679195, 36.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903969, 41.559181, 36.881241>,  <41.679962, 41.359158, 37.145462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903969, 41.559181, 36.881241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818426, -0.210052, 0.534844,
		0.128701, -0.840133, -0.526890,
		0.560014, 0.500055, -0.660552,
		42.071972, 41.709198, 36.683075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229755, 40.880024, 37.117294>,  <41.679962, 41.359158, 37.145462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229755, 40.880024, 37.117294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490562, 40.805580, 36.823292>,  <42.647045, 40.760914, 36.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490562, 40.805580, 36.823292>,  <42.229755, 40.880024, 37.117294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490562, 40.805580, 36.823292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715059, 0.473285, 0.514482,
		0.252119, -0.861026, 0.441668,
		0.652017, -0.186108, -0.735008,
		42.686169, 40.749748, 36.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823448, 40.526356, 37.447357>,  <42.229755, 40.880024, 37.117294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823448, 40.526356, 37.447357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900120, 40.761780, 37.133194>,  <42.946121, 40.903034, 36.944698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900120, 40.761780, 37.133194>,  <42.823448, 40.526356, 37.447357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900120, 40.761780, 37.133194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881539, 0.248542, 0.401392,
		0.431448, -0.769303, -0.471196,
		0.191680, 0.588557, -0.785404,
		42.957623, 40.938347, 36.897572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449329, 40.239597, 37.057583>,  <42.823448, 40.526356, 37.447357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449329, 40.239597, 37.057583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385399, 40.630436, 37.001377>,  <43.347042, 40.864937, 36.967655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385399, 40.630436, 37.001377>,  <43.449329, 40.239597, 37.057583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385399, 40.630436, 37.001377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912751, 0.200489, 0.355935,
		0.375953, -0.071365, -0.923886,
		-0.159827, 0.977093, -0.140513,
		43.337452, 40.923565, 36.959225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047295, 40.044777, 36.596710>,  <43.449329, 40.239597, 37.057583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047295, 40.044777, 36.596710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025867, 40.385685, 36.804848>,  <44.013012, 40.590233, 36.929729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025867, 40.385685, 36.804848>,  <44.047295, 40.044777, 36.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025867, 40.385685, 36.804848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902773, 0.264038, -0.339535,
		-0.426768, 0.451565, -0.783554,
		-0.053566, 0.852275, 0.520344,
		44.009796, 40.641369, 36.960953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244736, 40.517342, 36.156151>,  <44.047295, 40.044777, 36.596710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244736, 40.517342, 36.156151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326721, 40.593170, 36.540245>,  <44.375912, 40.638668, 36.770702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.326721, 40.593170, 36.540245>,  <44.244736, 40.517342, 36.156151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326721, 40.593170, 36.540245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959184, 0.156373, -0.235614,
		-0.194821, 0.969335, -0.149784,
		0.204967, 0.189573, 0.960235,
		44.388210, 40.650043, 36.828316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848240, 40.111286, 36.187134>,  <44.244736, 40.517342, 36.156151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848240, 40.111286, 36.187134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701687, 40.186028, 35.822529>,  <44.613754, 40.230873, 35.603767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701687, 40.186028, 35.822529>,  <44.848240, 40.111286, 36.187134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701687, 40.186028, 35.822529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715621, -0.569521, -0.404391,
		-0.594687, -0.800457, 0.074942,
		-0.366379, 0.186856, -0.911511,
		44.591774, 40.242085, 35.549076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498962, 39.556755, 35.888287>,  <44.848240, 40.111286, 36.187134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498962, 39.556755, 35.888287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668285, 39.803368, 35.622746>,  <44.769878, 39.951336, 35.463421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668285, 39.803368, 35.622746>,  <44.498962, 39.556755, 35.888287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668285, 39.803368, 35.622746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698666, -0.688631, -0.194046,
		-0.576784, -0.381669, -0.722252,
		0.423304, 0.616535, -0.663851,
		44.795277, 39.988327, 35.423592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568668, 39.335163, 35.246056>,  <44.498962, 39.556755, 35.888287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568668, 39.335163, 35.246056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869865, 39.588562, 35.317253>,  <45.050583, 39.740601, 35.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869865, 39.588562, 35.317253>,  <44.568668, 39.335163, 35.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869865, 39.588562, 35.317253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644977, -0.764151, -0.008856,
		0.130403, 0.121470, -0.983992,
		0.752994, 0.633497, 0.177993,
		45.095764, 39.778610, 35.370651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125198, 39.429539, 34.684036>,  <44.568668, 39.335163, 35.246056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125198, 39.429539, 34.684036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267334, 39.503506, 35.050541>,  <45.352615, 39.547886, 35.270443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.267334, 39.503506, 35.050541>,  <45.125198, 39.429539, 34.684036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267334, 39.503506, 35.050541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628080, -0.773210, -0.087529,
		0.692278, 0.606589, -0.390898,
		0.355340, 0.184921, 0.916263,
		45.373936, 39.558983, 35.325420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840237, 39.425610, 34.638206>,  <45.125198, 39.429539, 34.684036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840237, 39.425610, 34.638206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744190, 39.348289, 35.018730>,  <45.686562, 39.301899, 35.247044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.744190, 39.348289, 35.018730>,  <45.840237, 39.425610, 34.638206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.744190, 39.348289, 35.018730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632668, -0.774420, 0.002332,
		0.736259, 0.602420, 0.308241,
		-0.240113, -0.193297, 0.951306,
		45.672157, 39.290302, 35.304123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504440, 39.016296, 34.437786>,  <45.840237, 39.425610, 34.638206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504440, 39.016296, 34.437786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873806, 39.014351, 34.591293>,  <47.095425, 39.013184, 34.683399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873806, 39.014351, 34.591293>,  <46.504440, 39.016296, 34.437786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873806, 39.014351, 34.591293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376233, 0.209013, -0.902642,
		-0.075825, 0.977901, 0.194835,
		0.923417, -0.004860, 0.383767,
		47.150833, 39.012894, 34.706425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616726, 38.604572, 33.795231>,  <46.504440, 39.016296, 34.437786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616726, 38.604572, 33.795231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669357, 38.272011, 34.011177>,  <46.700935, 38.072475, 34.140747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669357, 38.272011, 34.011177>,  <46.616726, 38.604572, 33.795231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669357, 38.272011, 34.011177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150249, -0.555039, -0.818142,
		0.979853, 0.026533, -0.197948,
		0.131577, -0.831401, 0.539870,
		46.708832, 38.022591, 34.173138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215366, 38.084229, 33.605221>,  <46.616726, 38.604572, 33.795231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215366, 38.084229, 33.605221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916203, 37.880520, 33.775524>,  <46.736702, 37.758293, 33.877705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916203, 37.880520, 33.775524>,  <47.215366, 38.084229, 33.605221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916203, 37.880520, 33.775524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068182, -0.579061, -0.812428,
		0.660286, -0.636654, 0.398364,
		-0.747913, -0.509273, 0.425755,
		46.691830, 37.727737, 33.903252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.246361, 37.338524, 33.896004>,  <47.215366, 38.084229, 33.605221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.246361, 37.338524, 33.896004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883644, 37.418785, 33.747700>,  <46.666012, 37.466942, 33.658718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883644, 37.418785, 33.747700>,  <47.246361, 37.338524, 33.896004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883644, 37.418785, 33.747700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170073, -0.630611, -0.757235,
		-0.385743, -0.749714, 0.537710,
		-0.906795, 0.200648, -0.370760,
		46.611607, 37.478981, 33.636471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.820786, 36.705097, 33.721252>,  <47.246361, 37.338524, 33.896004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.820786, 36.705097, 33.721252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676918, 36.985622, 33.475067>,  <46.590599, 37.153938, 33.327354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676918, 36.985622, 33.475067>,  <46.820786, 36.705097, 33.721252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676918, 36.985622, 33.475067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209053, -0.582267, -0.785660,
		-0.909359, -0.411242, 0.062812,
		-0.359670, 0.701316, -0.615462,
		46.569016, 37.196018, 33.290428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414223, 36.401615, 33.259647>,  <46.820786, 36.705097, 33.721252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414223, 36.401615, 33.259647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532887, 36.745384, 33.093090>,  <46.604084, 36.951645, 32.993156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532887, 36.745384, 33.093090>,  <46.414223, 36.401615, 33.259647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532887, 36.745384, 33.093090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299486, -0.497746, -0.813976,
		-0.906808, 0.116772, -0.405047,
		0.296660, 0.859426, -0.416389,
		46.621883, 37.003212, 32.968174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205364, 36.372955, 32.572716>,  <46.414223, 36.401615, 33.259647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205364, 36.372955, 32.572716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506538, 36.635284, 32.594604>,  <46.687241, 36.792683, 32.607738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.506538, 36.635284, 32.594604>,  <46.205364, 36.372955, 32.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506538, 36.635284, 32.594604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372671, -0.356360, -0.856810,
		-0.542413, 0.665513, -0.512720,
		0.752931, 0.655820, 0.054723,
		46.732418, 36.832031, 32.611023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355728, 36.795982, 31.970495>,  <46.205364, 36.372955, 32.572716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355728, 36.795982, 31.970495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712410, 36.783585, 32.151115>,  <46.926418, 36.776146, 32.259487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712410, 36.783585, 32.151115>,  <46.355728, 36.795982, 31.970495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712410, 36.783585, 32.151115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433690, -0.226942, -0.872015,
		0.129501, 0.973415, -0.188925,
		0.891708, -0.030992, 0.451549,
		46.979923, 36.774288, 32.286579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691059, 36.640533, 31.603355>,  <46.355728, 36.795982, 31.970495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691059, 36.640533, 31.603355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499851, 36.383640, 31.363680>,  <45.385124, 36.229504, 31.219873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499851, 36.383640, 31.363680>,  <45.691059, 36.640533, 31.603355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499851, 36.383640, 31.363680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871288, -0.433032, -0.230955,
		-0.111140, -0.632469, 0.766571,
		-0.478022, -0.642236, -0.599190,
		45.356445, 36.190971, 31.183924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193455, 36.105000, 31.474556>,  <45.691059, 36.640533, 31.603355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193455, 36.105000, 31.474556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916626, 36.038464, 31.193596>,  <45.750530, 35.998543, 31.025021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916626, 36.038464, 31.193596>,  <46.193455, 36.105000, 31.474556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916626, 36.038464, 31.193596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552156, -0.748760, -0.366718,
		-0.464929, -0.641630, 0.610043,
		-0.692073, -0.166341, -0.702400,
		45.709003, 35.988560, 30.982876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259041, 35.440697, 31.425821>,  <46.193455, 36.105000, 31.474556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259041, 35.440697, 31.425821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034481, 35.537354, 31.109230>,  <45.899746, 35.595348, 30.919275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034481, 35.537354, 31.109230>,  <46.259041, 35.440697, 31.425821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034481, 35.537354, 31.109230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259900, -0.856542, -0.445856,
		-0.785671, -0.456010, 0.418062,
		-0.561402, 0.241642, -0.791478,
		45.866062, 35.609848, 30.871786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545212, 34.851116, 31.036348>,  <46.259041, 35.440697, 31.425821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545212, 34.851116, 31.036348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918049, 34.746475, 31.136560>,  <47.141750, 34.683689, 31.196688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918049, 34.746475, 31.136560>,  <46.545212, 34.851116, 31.036348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918049, 34.746475, 31.136560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321164, -0.277031, 0.905598,
		-0.167501, -0.924564, -0.342236,
		0.932093, -0.261603, 0.250533,
		47.197678, 34.667992, 31.211720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658604, 34.062000, 31.015493>,  <46.545212, 34.851116, 31.036348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658604, 34.062000, 31.015493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818371, 34.316116, 31.279877>,  <46.914230, 34.468586, 31.438507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818371, 34.316116, 31.279877>,  <46.658604, 34.062000, 31.015493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818371, 34.316116, 31.279877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467274, -0.479212, 0.742975,
		0.788747, -0.605606, 0.105451,
		0.399417, 0.635294, 0.660960,
		46.938194, 34.506706, 31.478165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.184681, 33.789509, 31.460957>,  <46.658604, 34.062000, 31.015493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.184681, 33.789509, 31.460957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976818, 34.066818, 31.660688>,  <46.852100, 34.233204, 31.780527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976818, 34.066818, 31.660688>,  <47.184681, 33.789509, 31.460957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976818, 34.066818, 31.660688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340505, -0.704072, 0.623168,
		0.783588, 0.153812, 0.601941,
		-0.519660, 0.693271, 0.499329,
		46.820919, 34.274799, 31.810488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256626, 33.704773, 32.242397>,  <47.184681, 33.789509, 31.460957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256626, 33.704773, 32.242397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912716, 33.878265, 32.134575>,  <46.706371, 33.982361, 32.069881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912716, 33.878265, 32.134575>,  <47.256626, 33.704773, 32.242397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912716, 33.878265, 32.134575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506851, -0.660338, 0.554126,
		0.062346, 0.613049, 0.787581,
		-0.859776, 0.433734, -0.269555,
		46.654781, 34.008385, 32.053707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933250, 33.862450, 32.846226>,  <47.256626, 33.704773, 32.242397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933250, 33.862450, 32.846226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660957, 33.798721, 32.560226>,  <46.497581, 33.760483, 32.388626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660957, 33.798721, 32.560226>,  <46.933250, 33.862450, 32.846226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660957, 33.798721, 32.560226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357186, -0.779973, 0.513868,
		-0.639549, 0.605193, 0.474044,
		-0.680731, -0.159322, -0.714998,
		46.456738, 33.750923, 32.345726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073284, 34.524990, 32.598740>,  <46.933250, 33.862450, 32.846226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073284, 34.524990, 32.598740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.909279, 34.839260, 32.784039>,  <46.810875, 35.027824, 32.895218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.909279, 34.839260, 32.784039>,  <47.073284, 34.524990, 32.598740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909279, 34.839260, 32.784039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709869, -0.044026, 0.702957,
		0.572693, 0.617066, -0.539678,
		-0.410011, 0.785679, 0.463249,
		46.786274, 35.074963, 32.923012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571560, 35.144070, 32.782532>,  <47.073284, 34.524990, 32.598740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571560, 35.144070, 32.782532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268127, 35.093365, 33.038181>,  <47.086067, 35.062943, 33.191570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268127, 35.093365, 33.038181>,  <47.571560, 35.144070, 32.782532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268127, 35.093365, 33.038181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648929, -0.058666, 0.758584,
		-0.058666, 0.990197, 0.126764,
		-0.758584, -0.126764, 0.639126,
		47.040554, 35.055336, 33.229919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533016, 35.623714, 33.237953>,  <47.571560, 35.144070, 32.782532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533016, 35.623714, 33.237953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385563, 35.336670, 33.474308>,  <47.297092, 35.164444, 33.616119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.385563, 35.336670, 33.474308>,  <47.533016, 35.623714, 33.237953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.385563, 35.336670, 33.474308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759295, 0.134254, 0.636747,
		-0.536265, 0.683382, 0.495388,
		-0.368634, -0.717610, 0.590885,
		47.274971, 35.121387, 33.651573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344639, 35.820492, 34.040157>,  <47.533016, 35.623714, 33.237953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344639, 35.820492, 34.040157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427284, 35.429611, 34.020645>,  <47.476871, 35.195084, 34.008938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427284, 35.429611, 34.020645>,  <47.344639, 35.820492, 34.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427284, 35.429611, 34.020645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531366, 0.070204, 0.844229,
		-0.821560, -0.200354, 0.533759,
		0.206617, -0.977205, -0.048784,
		47.489269, 35.136448, 34.006008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.254505, 35.472790, 34.674973>,  <47.344639, 35.820492, 34.040157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.254505, 35.472790, 34.674973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484905, 35.203327, 34.489758>,  <47.623146, 35.041649, 34.378628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484905, 35.203327, 34.489758>,  <47.254505, 35.472790, 34.674973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.484905, 35.203327, 34.489758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669825, 0.064276, 0.739732,
		-0.468565, -0.736242, 0.488257,
		0.576005, -0.673659, -0.463035,
		47.657707, 35.001228, 34.350845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441284, 34.883839, 35.198650>,  <47.254505, 35.472790, 34.674973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441284, 34.883839, 35.198650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702499, 34.922970, 34.898258>,  <47.859226, 34.946449, 34.718021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.702499, 34.922970, 34.898258>,  <47.441284, 34.883839, 35.198650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.702499, 34.922970, 34.898258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756069, -0.027049, 0.653933,
		0.043662, -0.994836, -0.091631,
		0.653034, 0.097831, -0.750983,
		47.898411, 34.952320, 34.672962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.098785, 38.587982, 24.607975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.750584, 38.502579, 24.430601>,  <37.541660, 38.451336, 24.324177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.750584, 38.502579, 24.430601>,  <38.098785, 38.587982, 24.607975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750584, 38.502579, 24.430601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382417, -0.273717, 0.882517,
		-0.309799, 0.937813, 0.156623,
		-0.870506, -0.213508, -0.443433,
		37.489433, 38.438526, 24.297571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498791, 38.983944, 24.890398>,  <38.098785, 38.587982, 24.607975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498791, 38.983944, 24.890398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352535, 38.651947, 24.721912>,  <37.264782, 38.452751, 24.620821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352535, 38.651947, 24.721912>,  <37.498791, 38.983944, 24.890398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352535, 38.651947, 24.721912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279153, -0.333928, 0.900314,
		-0.887908, 0.446775, -0.109597,
		-0.365641, -0.829990, -0.421216,
		37.242844, 38.402950, 24.595547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760071, 39.107063, 24.967550>,  <37.498791, 38.983944, 24.890398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760071, 39.107063, 24.967550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808838, 38.711697, 24.931385>,  <36.838100, 38.474476, 24.909685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.808838, 38.711697, 24.931385>,  <36.760071, 39.107063, 24.967550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808838, 38.711697, 24.931385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265523, -0.120255, 0.956575,
		-0.956364, -0.092619, -0.277108,
		0.121920, -0.988413, -0.090415,
		36.845413, 38.415173, 24.904261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197220, 38.807312, 25.350321>,  <36.760071, 39.107063, 24.967550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197220, 38.807312, 25.350321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434509, 38.486210, 25.326067>,  <36.576881, 38.293549, 25.311514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.434509, 38.486210, 25.326067>,  <36.197220, 38.807312, 25.350321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434509, 38.486210, 25.326067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146543, -0.181738, 0.972366,
		-0.791589, -0.567943, -0.225449,
		0.593221, -0.802753, -0.060634,
		36.612476, 38.245384, 25.307877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848347, 38.382183, 25.694735>,  <36.197220, 38.807312, 25.350321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848347, 38.382183, 25.694735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210079, 38.211662, 25.686218>,  <36.427120, 38.109352, 25.681108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210079, 38.211662, 25.686218>,  <35.848347, 38.382183, 25.694735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210079, 38.211662, 25.686218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103253, -0.266895, 0.958179,
		-0.414155, -0.864312, -0.285378,
		0.904331, -0.426300, -0.021293,
		36.481380, 38.083775, 25.679831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676750, 37.713535, 25.825830>,  <35.848347, 38.382183, 25.694735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676750, 37.713535, 25.825830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062485, 37.788265, 25.900822>,  <36.293926, 37.833103, 25.945816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062485, 37.788265, 25.900822>,  <35.676750, 37.713535, 25.825830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062485, 37.788265, 25.900822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127252, -0.293824, 0.947351,
		0.232074, -0.937424, -0.259572,
		0.964338, 0.186824, 0.187478,
		36.351788, 37.844311, 25.957066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932575, 37.168667, 26.140894>,  <35.676750, 37.713535, 25.825830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932575, 37.168667, 26.140894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153072, 37.479881, 26.261417>,  <36.285370, 37.666611, 26.333733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153072, 37.479881, 26.261417>,  <35.932575, 37.168667, 26.140894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153072, 37.479881, 26.261417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122860, -0.281504, 0.951662,
		0.825249, -0.561617, -0.059587,
		0.551244, 0.778037, 0.301311,
		36.318447, 37.713291, 26.351810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328709, 36.870911, 26.633064>,  <35.932575, 37.168667, 26.140894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328709, 36.870911, 26.633064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343170, 37.266502, 26.690498>,  <36.351845, 37.503857, 26.724958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343170, 37.266502, 26.690498>,  <36.328709, 36.870911, 26.633064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343170, 37.266502, 26.690498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320901, -0.124581, 0.938884,
		0.946423, -0.080017, 0.312860,
		0.036150, 0.988977, 0.143584,
		36.354015, 37.563194, 26.733574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353935, 36.878330, 27.328245>,  <36.328709, 36.870911, 26.633064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353935, 36.878330, 27.328245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256561, 37.255856, 27.238842>,  <36.198139, 37.482372, 27.185200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256561, 37.255856, 27.238842>,  <36.353935, 36.878330, 27.328245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256561, 37.255856, 27.238842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337469, 0.133624, 0.931804,
		0.909316, 0.302258, 0.285980,
		-0.243431, 0.943814, -0.223509,
		36.183533, 37.539001, 27.171789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619549, 37.253036, 27.915424>,  <36.353935, 36.878330, 27.328245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619549, 37.253036, 27.915424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311672, 37.451061, 27.754185>,  <36.126945, 37.569878, 27.657442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.311672, 37.451061, 27.754185>,  <36.619549, 37.253036, 27.915424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311672, 37.451061, 27.754185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327329, 0.236071, 0.914946,
		0.548114, 0.836173, -0.019654,
		-0.769692, 0.495062, -0.403098,
		36.080765, 37.599579, 27.633255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631325, 37.924286, 28.201025>,  <36.619549, 37.253036, 27.915424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631325, 37.924286, 28.201025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254200, 37.881447, 28.074768>,  <36.027924, 37.855743, 27.999014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254200, 37.881447, 28.074768>,  <36.631325, 37.924286, 28.201025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254200, 37.881447, 28.074768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332871, 0.253435, 0.908277,
		-0.017282, 0.961405, -0.274593,
		-0.942814, -0.107101, -0.315644,
		35.971355, 37.849316, 27.980074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291759, 38.542583, 28.344933>,  <36.631325, 37.924286, 28.201025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291759, 38.542583, 28.344933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013958, 38.258411, 28.299404>,  <35.847279, 38.087910, 28.272087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013958, 38.258411, 28.299404>,  <36.291759, 38.542583, 28.344933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013958, 38.258411, 28.299404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454328, 0.310362, 0.835022,
		-0.557900, 0.631636, -0.538316,
		-0.694503, -0.710430, -0.113819,
		35.805607, 38.045280, 28.265259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616543, 38.811447, 28.432049>,  <36.291759, 38.542583, 28.344933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616543, 38.811447, 28.432049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572422, 38.419769, 28.500185>,  <35.545952, 38.184765, 28.541067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572422, 38.419769, 28.500185>,  <35.616543, 38.811447, 28.432049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572422, 38.419769, 28.500185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504463, 0.202825, 0.839273,
		-0.856359, 0.006641, -0.516338,
		-0.110300, -0.979193, 0.170341,
		35.539333, 38.126011, 28.551287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979427, 38.748348, 28.835592>,  <35.616543, 38.811447, 28.432049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979427, 38.748348, 28.835592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116825, 38.377052, 28.892700>,  <35.199265, 38.154274, 28.926966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.116825, 38.377052, 28.892700>,  <34.979427, 38.748348, 28.835592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116825, 38.377052, 28.892700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561028, -0.080896, 0.823834,
		-0.753166, -0.363082, -0.548555,
		0.343495, -0.928239, 0.142771,
		35.219875, 38.098579, 28.935532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429573, 38.286800, 28.838659>,  <34.979427, 38.748348, 28.835592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429573, 38.286800, 28.838659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718163, 38.094055, 29.037571>,  <34.891315, 37.978409, 29.156918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718163, 38.094055, 29.037571>,  <34.429573, 38.286800, 28.838659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718163, 38.094055, 29.037571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592837, -0.058750, 0.803176,
		-0.357807, -0.874274, -0.328053,
		0.721469, -0.481864, 0.497281,
		34.934605, 37.949497, 29.186756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053867, 37.759678, 29.214884>,  <34.429573, 38.286800, 28.838659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053867, 37.759678, 29.214884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.407398, 37.742516, 29.401220>,  <34.619518, 37.732220, 29.513021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.407398, 37.742516, 29.401220>,  <34.053867, 37.759678, 29.214884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407398, 37.742516, 29.401220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451433, -0.339409, 0.825233,
		0.122705, -0.939660, -0.319348,
		0.883828, -0.042903, 0.465840,
		34.672546, 37.729645, 29.540972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123409, 37.151863, 29.721560>,  <34.053867, 37.759678, 29.214884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123409, 37.151863, 29.721560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386242, 37.423141, 29.853191>,  <34.543941, 37.585907, 29.932171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386242, 37.423141, 29.853191>,  <34.123409, 37.151863, 29.721560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386242, 37.423141, 29.853191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245511, -0.220215, 0.944050,
		0.712720, -0.701110, 0.021806,
		0.657081, 0.678196, 0.329081,
		34.583366, 37.626602, 29.951916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504974, 36.763187, 30.247971>,  <34.123409, 37.151863, 29.721560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504974, 36.763187, 30.247971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.562004, 37.149277, 30.335623>,  <34.596222, 37.380932, 30.388214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.562004, 37.149277, 30.335623>,  <34.504974, 36.763187, 30.247971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562004, 37.149277, 30.335623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, -0.181519, 0.954219,
		0.960810, -0.188138, 0.203587,
		0.142570, 0.965223, 0.219132,
		34.604774, 37.438843, 30.401361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788441, 36.735939, 30.906111>,  <34.504974, 36.763187, 30.247971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788441, 36.735939, 30.906111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669151, 37.115253, 30.862637>,  <34.597576, 37.342842, 30.836552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669151, 37.115253, 30.862637>,  <34.788441, 36.735939, 30.906111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669151, 37.115253, 30.862637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584571, -0.091444, 0.806173,
		0.754546, 0.303953, 0.581612,
		-0.298224, 0.948288, -0.108684,
		34.579685, 37.399738, 30.830032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831245, 37.102928, 31.626602>,  <34.788441, 36.735939, 30.906111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831245, 37.102928, 31.626602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590309, 37.347755, 31.421642>,  <34.445747, 37.494652, 31.298666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590309, 37.347755, 31.421642>,  <34.831245, 37.102928, 31.626602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590309, 37.347755, 31.421642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476822, 0.238918, 0.845907,
		0.640176, 0.753850, 0.147938,
		-0.602342, 0.612069, -0.512402,
		34.409607, 37.531376, 31.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813095, 37.805092, 31.957209>,  <34.831245, 37.102928, 31.626602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813095, 37.805092, 31.957209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486641, 37.699802, 31.751438>,  <34.290768, 37.636631, 31.627975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486641, 37.699802, 31.751438>,  <34.813095, 37.805092, 31.957209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486641, 37.699802, 31.751438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566306, 0.187213, 0.802651,
		-0.114968, 0.946396, -0.301856,
		-0.816137, -0.263222, -0.514427,
		34.241798, 37.620834, 31.597111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313015, 38.005898, 31.496510>,  <34.813095, 37.805092, 31.957209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313015, 38.005898, 31.496510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423527, 38.238201, 31.802814>,  <35.489834, 38.377583, 31.986597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423527, 38.238201, 31.802814>,  <35.313015, 38.005898, 31.496510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423527, 38.238201, 31.802814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289889, 0.709306, -0.642533,
		-0.916317, 0.399502, 0.027608,
		0.276275, 0.580761, 0.765760,
		35.506409, 38.412430, 32.032543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094444, 38.670914, 31.403551>,  <35.313015, 38.005898, 31.496510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094444, 38.670914, 31.403551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406994, 38.683300, 31.652868>,  <35.594524, 38.690731, 31.802460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.406994, 38.683300, 31.652868>,  <35.094444, 38.670914, 31.403551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406994, 38.683300, 31.652868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432440, 0.693239, -0.576554,
		-0.449944, 0.720042, 0.528289,
		0.781374, 0.030964, 0.623294,
		35.641407, 38.692589, 31.839857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428131, 39.287483, 31.224627>,  <35.094444, 38.670914, 31.403551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428131, 39.287483, 31.224627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722832, 39.135212, 31.448154>,  <35.899654, 39.043850, 31.582272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722832, 39.135212, 31.448154>,  <35.428131, 39.287483, 31.224627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722832, 39.135212, 31.448154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674349, 0.474125, -0.566091,
		-0.049455, 0.793910, 0.606021,
		0.736754, -0.380674, 0.558821,
		35.943859, 39.021011, 31.615801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980049, 39.812374, 31.325535>,  <35.428131, 39.287483, 31.224627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980049, 39.812374, 31.325535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170197, 39.463913, 31.374722>,  <36.284286, 39.254837, 31.404234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170197, 39.463913, 31.374722>,  <35.980049, 39.812374, 31.325535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170197, 39.463913, 31.374722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767513, 0.342314, -0.541983,
		0.430054, 0.352023, 0.831344,
		0.475371, -0.871149, 0.122969,
		36.312809, 39.202568, 31.411612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660774, 39.948650, 31.621700>,  <35.980049, 39.812374, 31.325535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660774, 39.948650, 31.621700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677277, 39.586704, 31.452221>,  <36.687176, 39.369537, 31.350533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677277, 39.586704, 31.452221>,  <36.660774, 39.948650, 31.621700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677277, 39.586704, 31.452221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823422, 0.270980, -0.498544,
		0.565928, -0.328317, 0.756263,
		0.041251, -0.904864, -0.423698,
		36.689651, 39.315247, 31.325111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340622, 39.689438, 31.767006>,  <36.660774, 39.948650, 31.621700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340622, 39.689438, 31.767006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195339, 39.493607, 31.449921>,  <37.108170, 39.376106, 31.259670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.195339, 39.493607, 31.449921>,  <37.340622, 39.689438, 31.767006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195339, 39.493607, 31.449921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805153, 0.263207, -0.531460,
		0.468841, -0.831284, 0.298590,
		-0.363203, -0.489581, -0.792713,
		37.086380, 39.346733, 31.212107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956829, 39.242020, 31.383654>,  <37.340622, 39.689438, 31.767006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956829, 39.242020, 31.383654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661827, 39.288601, 31.117563>,  <37.484825, 39.316551, 30.957909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661827, 39.288601, 31.117563>,  <37.956829, 39.242020, 31.383654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661827, 39.288601, 31.117563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674425, 0.178311, -0.716489,
		0.035181, -0.977059, -0.210043,
		-0.737505, 0.116451, -0.665226,
		37.440575, 39.323536, 30.917995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159309, 38.788513, 30.712086>,  <37.956829, 39.242020, 31.383654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159309, 38.788513, 30.712086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888340, 39.059937, 30.598486>,  <37.725758, 39.222790, 30.530327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888340, 39.059937, 30.598486>,  <38.159309, 38.788513, 30.712086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888340, 39.059937, 30.598486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525336, 0.176034, -0.832487,
		-0.514898, -0.713141, -0.475721,
		-0.677423, 0.678559, -0.283999,
		37.685112, 39.263504, 30.513287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098701, 38.478302, 30.033613>,  <38.159309, 38.788513, 30.712086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098701, 38.478302, 30.033613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935867, 38.842045, 30.067923>,  <37.838165, 39.060291, 30.088509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935867, 38.842045, 30.067923>,  <38.098701, 38.478302, 30.033613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935867, 38.842045, 30.067923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277114, 0.212439, -0.937058,
		-0.870339, -0.357693, -0.338475,
		-0.407084, 0.909354, 0.085772,
		37.813744, 39.114853, 30.093655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672825, 38.499104, 29.523867>,  <38.098701, 38.478302, 30.033613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672825, 38.499104, 29.523867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767197, 38.872250, 29.632746>,  <37.823818, 39.096138, 29.698074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767197, 38.872250, 29.632746>,  <37.672825, 38.499104, 29.523867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767197, 38.872250, 29.632746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243513, 0.214416, -0.945900,
		-0.940765, 0.289448, -0.176579,
		0.235928, 0.932869, 0.272199,
		37.837975, 39.152111, 29.714405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338768, 38.908169, 29.068501>,  <37.672825, 38.499104, 29.523867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338768, 38.908169, 29.068501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638508, 39.126274, 29.218786>,  <37.818352, 39.257137, 29.308958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638508, 39.126274, 29.218786>,  <37.338768, 38.908169, 29.068501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638508, 39.126274, 29.218786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341971, 0.167207, -0.924715,
		-0.567035, 0.821420, -0.061167,
		0.749352, 0.545263, 0.375713,
		37.863312, 39.289852, 29.331501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441860, 39.560413, 28.673836>,  <37.338768, 38.908169, 29.068501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441860, 39.560413, 28.673836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792904, 39.553669, 28.865467>,  <38.003532, 39.549622, 28.980446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.792904, 39.553669, 28.865467>,  <37.441860, 39.560413, 28.673836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792904, 39.553669, 28.865467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447932, 0.384823, -0.807012,
		-0.170750, 0.922836, 0.345279,
		0.877611, -0.016865, 0.479076,
		38.056187, 39.548611, 29.009190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699497, 40.276009, 28.577017>,  <37.441860, 39.560413, 28.673836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699497, 40.276009, 28.577017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994724, 40.017471, 28.654476>,  <38.171860, 39.862350, 28.700953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994724, 40.017471, 28.654476>,  <37.699497, 40.276009, 28.577017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994724, 40.017471, 28.654476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428968, 0.227964, -0.874082,
		0.520808, 0.728202, 0.445512,
		0.738069, -0.646339, 0.193650,
		38.216145, 39.823570, 28.712570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341232, 40.648846, 28.434956>,  <37.699497, 40.276009, 28.577017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341232, 40.648846, 28.434956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427036, 40.258202, 28.429121>,  <38.478519, 40.023815, 28.425619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427036, 40.258202, 28.429121>,  <38.341232, 40.648846, 28.434956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427036, 40.258202, 28.429121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397215, 0.100872, -0.912165,
		0.892304, 0.189873, 0.409563,
		0.214509, -0.976613, -0.014588,
		38.491390, 39.965218, 28.424746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094166, 40.623260, 28.327688>,  <38.341232, 40.648846, 28.434956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094166, 40.623260, 28.327688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981693, 40.250900, 28.234428>,  <38.914207, 40.027485, 28.178473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981693, 40.250900, 28.234428>,  <39.094166, 40.623260, 28.327688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981693, 40.250900, 28.234428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540935, 0.046931, -0.839754,
		0.792670, -0.362244, 0.490360,
		-0.281183, -0.930901, -0.233151,
		38.897339, 39.971630, 28.164484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673428, 40.365356, 28.099545>,  <39.094166, 40.623260, 28.327688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673428, 40.365356, 28.099545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378613, 40.146278, 27.941149>,  <39.201725, 40.014832, 27.846111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378613, 40.146278, 27.941149>,  <39.673428, 40.365356, 28.099545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378613, 40.146278, 27.941149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379898, 0.148861, -0.912972,
		0.558981, -0.823327, 0.098355,
		-0.737033, -0.547699, -0.395990,
		39.157501, 39.981968, 27.822351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031887, 39.983204, 27.544748>,  <39.673428, 40.365356, 28.099545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031887, 39.983204, 27.544748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644886, 39.929852, 27.458820>,  <39.412685, 39.897842, 27.407265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.644886, 39.929852, 27.458820>,  <40.031887, 39.983204, 27.544748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644886, 39.929852, 27.458820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219837, -0.023939, -0.975243,
		0.124935, -0.990776, 0.052483,
		-0.967503, -0.133380, -0.214819,
		39.354633, 39.889839, 27.394375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040260, 39.408211, 27.159462>,  <40.031887, 39.983204, 27.544748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040260, 39.408211, 27.159462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.693241, 39.594872, 27.090652>,  <39.485027, 39.706867, 27.049366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.693241, 39.594872, 27.090652>,  <40.040260, 39.408211, 27.159462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693241, 39.594872, 27.090652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222508, 0.054835, -0.973388,
		-0.444800, -0.882740, -0.151406,
		-0.867550, 0.466652, -0.172026,
		39.432976, 39.734867, 27.039045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775455, 39.126537, 26.602793>,  <40.040260, 39.408211, 27.159462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775455, 39.126537, 26.602793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555408, 39.460175, 26.586538>,  <39.423378, 39.660358, 26.576786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555408, 39.460175, 26.586538>,  <39.775455, 39.126537, 26.602793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555408, 39.460175, 26.586538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065454, -0.005442, -0.997841,
		-0.832515, -0.551593, -0.051601,
		-0.550122, 0.834095, -0.040635,
		39.390373, 39.710403, 26.574348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.284943, 38.984936, 26.087355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265427, 39.383389, 26.116579>,  <39.253716, 39.622459, 26.134113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265427, 39.383389, 26.116579>,  <39.284943, 38.984936, 26.087355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265427, 39.383389, 26.116579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053064, 0.075631, -0.995723,
		-0.997398, -0.044705, -0.056549,
		-0.048790, 0.996133, 0.073062,
		39.250790, 39.682228, 26.138498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663605, 39.215572, 25.699385>,  <39.284943, 38.984936, 26.087355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663605, 39.215572, 25.699385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930161, 39.512760, 25.724400>,  <39.090096, 39.691074, 25.739408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930161, 39.512760, 25.724400>,  <38.663605, 39.215572, 25.699385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930161, 39.512760, 25.724400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021388, 0.102887, -0.994463,
		-0.745294, 0.661366, 0.084453,
		0.666393, 0.742973, 0.062536,
		39.130077, 39.735653, 25.743160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433144, 39.884434, 25.312714>,  <38.663605, 39.215572, 25.699385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433144, 39.884434, 25.312714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828075, 39.919621, 25.365532>,  <39.065037, 39.940735, 25.397223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828075, 39.919621, 25.365532>,  <38.433144, 39.884434, 25.312714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828075, 39.919621, 25.365532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113606, 0.189034, -0.975377,
		-0.110765, 0.978022, 0.176645,
		0.987332, 0.087969, 0.132047,
		39.124275, 39.946011, 25.405146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520256, 40.476570, 24.990442>,  <38.433144, 39.884434, 25.312714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520256, 40.476570, 24.990442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872349, 40.286766, 24.992685>,  <39.083603, 40.172882, 24.994032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.872349, 40.286766, 24.992685>,  <38.520256, 40.476570, 24.990442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872349, 40.286766, 24.992685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106849, 0.186661, -0.976596,
		0.462362, 0.860229, 0.215006,
		0.880230, -0.474515, 0.005610,
		39.136417, 40.144413, 24.994368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874550, 40.889790, 24.582125>,  <38.520256, 40.476570, 24.990442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874550, 40.889790, 24.582125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078918, 40.547962, 24.619379>,  <39.201538, 40.342865, 24.641731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078918, 40.547962, 24.619379>,  <38.874550, 40.889790, 24.582125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078918, 40.547962, 24.619379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377304, 0.125578, -0.917536,
		0.772402, 0.503926, 0.386593,
		0.510918, -0.854569, 0.093136,
		39.232193, 40.291592, 24.647320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523708, 40.993748, 24.274855>,  <38.874550, 40.889790, 24.582125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523708, 40.993748, 24.274855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536720, 40.594101, 24.285509>,  <39.544529, 40.354313, 24.291901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536720, 40.594101, 24.285509>,  <39.523708, 40.993748, 24.274855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536720, 40.594101, 24.285509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350662, -0.013546, -0.936404,
		0.935937, 0.039802, 0.349911,
		0.032531, -0.999116, 0.026635,
		39.546478, 40.294365, 24.293499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092033, 40.751720, 23.986204>,  <39.523708, 40.993748, 24.274855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092033, 40.751720, 23.986204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881275, 40.413574, 23.951008>,  <39.754822, 40.210686, 23.929890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.881275, 40.413574, 23.951008>,  <40.092033, 40.751720, 23.986204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881275, 40.413574, 23.951008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350231, -0.121622, -0.928734,
		0.774417, -0.520160, 0.360155,
		-0.526893, -0.845365, -0.087991,
		39.723206, 40.159966, 23.924610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580193, 40.112045, 23.849102>,  <40.092033, 40.751720, 23.986204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580193, 40.112045, 23.849102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217941, 40.006104, 23.716621>,  <40.000591, 39.942539, 23.637133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217941, 40.006104, 23.716621>,  <40.580193, 40.112045, 23.849102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217941, 40.006104, 23.716621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397849, -0.260227, -0.879771,
		0.146825, -0.928511, 0.341041,
		-0.905626, -0.264856, -0.331200,
		39.946255, 39.926647, 23.617262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680370, 39.383915, 23.519661>,  <40.580193, 40.112045, 23.849102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680370, 39.383915, 23.519661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.360203, 39.580639, 23.382574>,  <40.168102, 39.698673, 23.300322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.360203, 39.580639, 23.382574>,  <40.680370, 39.383915, 23.519661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360203, 39.580639, 23.382574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404567, 0.021332, -0.914260,
		-0.442333, -0.870440, -0.216045,
		-0.800417, 0.491812, -0.342715,
		40.120079, 39.728184, 23.279760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706631, 39.155830, 22.871197>,  <40.680370, 39.383915, 23.519661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706631, 39.155830, 22.871197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441570, 39.454765, 22.851702>,  <40.282536, 39.634129, 22.840004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441570, 39.454765, 22.851702>,  <40.706631, 39.155830, 22.871197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441570, 39.454765, 22.851702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317731, 0.221602, -0.921922,
		-0.678188, -0.626399, -0.384298,
		-0.662652, 0.747340, -0.048738,
		40.242775, 39.678967, 22.837080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297523, 39.038742, 22.328644>,  <40.706631, 39.155830, 22.871197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297523, 39.038742, 22.328644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241089, 39.427765, 22.402655>,  <40.207230, 39.661179, 22.447062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241089, 39.427765, 22.402655>,  <40.297523, 39.038742, 22.328644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241089, 39.427765, 22.402655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172826, 0.208223, -0.962691,
		-0.974795, -0.103844, -0.197460,
		-0.141086, 0.972553, 0.185028,
		40.198765, 39.719532, 22.458162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864422, 39.156525, 21.843109>,  <40.297523, 39.038742, 22.328644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864422, 39.156525, 21.843109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947289, 39.529400, 21.961845>,  <39.997009, 39.753124, 22.033087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947289, 39.529400, 21.961845>,  <39.864422, 39.156525, 21.843109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947289, 39.529400, 21.961845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031731, 0.296860, -0.954393,
		-0.977791, 0.207136, 0.031920,
		0.207165, 0.932185, 0.296840,
		40.009438, 39.809055, 22.050898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516479, 39.634739, 21.388960>,  <39.864422, 39.156525, 21.843109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516479, 39.634739, 21.388960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774544, 39.888962, 21.558588>,  <39.929382, 40.041496, 21.660364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774544, 39.888962, 21.558588>,  <39.516479, 39.634739, 21.388960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774544, 39.888962, 21.558588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166155, 0.425043, -0.889792,
		-0.745761, 0.644522, 0.168621,
		0.645162, 0.635555, 0.424071,
		39.968094, 40.079628, 21.685810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350895, 40.366589, 21.233120>,  <39.516479, 39.634739, 21.388960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350895, 40.366589, 21.233120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745861, 40.353119, 21.294939>,  <39.982841, 40.345036, 21.332029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745861, 40.353119, 21.294939>,  <39.350895, 40.366589, 21.233120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745861, 40.353119, 21.294939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152488, 0.462249, -0.873541,
		-0.042024, 0.886110, 0.461565,
		0.987412, -0.033674, 0.154546,
		40.042084, 40.343018, 21.341303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604076, 41.030251, 21.076958>,  <39.350895, 40.366589, 21.233120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604076, 41.030251, 21.076958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944679, 40.822670, 21.046930>,  <40.149040, 40.698124, 21.028913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944679, 40.822670, 21.046930>,  <39.604076, 41.030251, 21.076958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944679, 40.822670, 21.046930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260406, 0.542782, -0.798484,
		0.455116, 0.660364, 0.597318,
		0.851504, -0.518948, -0.075066,
		40.200130, 40.666985, 21.024410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193050, 41.501678, 20.981611>,  <39.604076, 41.030251, 21.076958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193050, 41.501678, 20.981611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305901, 41.150379, 20.827168>,  <40.373611, 40.939598, 20.734501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.305901, 41.150379, 20.827168>,  <40.193050, 41.501678, 20.981611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305901, 41.150379, 20.827168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337143, 0.467550, -0.817149,
		0.898187, 0.100366, 0.428004,
		0.282127, -0.878251, -0.386109,
		40.390537, 40.886906, 20.711334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804043, 41.567726, 20.783524>,  <40.193050, 41.501678, 20.981611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804043, 41.567726, 20.783524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.692585, 41.251705, 20.565102>,  <40.625710, 41.062092, 20.434050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.692585, 41.251705, 20.565102>,  <40.804043, 41.567726, 20.783524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692585, 41.251705, 20.565102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339392, 0.450880, -0.825542,
		0.898426, -0.415360, 0.142501,
		-0.278646, -0.790053, -0.546053,
		40.608990, 41.014690, 20.401285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163090, 41.714924, 20.219641>,  <40.804043, 41.567726, 20.783524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163090, 41.714924, 20.219641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.954220, 41.392353, 20.108637>,  <40.828899, 41.198811, 20.042034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.954220, 41.392353, 20.108637>,  <41.163090, 41.714924, 20.219641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954220, 41.392353, 20.108637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409849, 0.048075, -0.910886,
		0.747903, -0.589378, 0.305410,
		-0.522174, -0.806425, -0.277511,
		40.797569, 41.150425, 20.025383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632710, 41.307846, 19.686646>,  <41.163090, 41.714924, 20.219641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632710, 41.307846, 19.686646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247646, 41.213425, 19.633642>,  <41.016609, 41.156773, 19.601839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247646, 41.213425, 19.633642>,  <41.632710, 41.307846, 19.686646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247646, 41.213425, 19.633642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066935, 0.266741, -0.961441,
		0.262296, -0.934414, -0.240982,
		-0.962663, -0.236052, -0.132510,
		40.958847, 41.142609, 19.593889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601124, 41.061958, 19.019548>,  <41.632710, 41.307846, 19.686646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601124, 41.061958, 19.019548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.212105, 41.118118, 19.093784>,  <40.978695, 41.151814, 19.138327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.212105, 41.118118, 19.093784>,  <41.601124, 41.061958, 19.019548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212105, 41.118118, 19.093784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139666, 0.285769, -0.948066,
		-0.186141, -0.947958, -0.258315,
		-0.972545, 0.140396, 0.185590,
		40.920341, 41.160236, 19.149462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139591, 40.688774, 18.564272>,  <41.601124, 41.061958, 19.019548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139591, 40.688774, 18.564272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.933338, 41.015213, 18.668657>,  <40.809586, 41.211079, 18.731289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.933338, 41.015213, 18.668657>,  <41.139591, 40.688774, 18.564272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933338, 41.015213, 18.668657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404672, 0.036500, -0.913733,
		-0.755223, -0.576757, 0.311432,
		-0.515635, 0.816100, 0.260963,
		40.778648, 41.260044, 18.746946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576237, 40.638859, 18.001354>,  <41.139591, 40.688774, 18.564272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576237, 40.638859, 18.001354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.552624, 41.003590, 18.163881>,  <40.538456, 41.222427, 18.261396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.552624, 41.003590, 18.163881>,  <40.576237, 40.638859, 18.001354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552624, 41.003590, 18.163881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356425, 0.360946, -0.861789,
		-0.932457, -0.195693, 0.303690,
		-0.059030, 0.911824, 0.406316,
		40.534916, 41.277138, 18.285776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483803, 41.262924, 17.703354>,  <40.576237, 40.638859, 18.001354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483803, 41.262924, 17.703354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.722134, 41.392776, 17.997185>,  <40.865131, 41.470688, 18.173483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.722134, 41.392776, 17.997185>,  <40.483803, 41.262924, 17.703354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722134, 41.392776, 17.997185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797531, 0.131517, 0.588767,
		0.094517, -0.936655, 0.337258,
		0.595827, 0.324622, 0.734582,
		40.900883, 41.490166, 18.217558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033333, 41.163006, 17.067043>,  <40.483803, 41.262924, 17.703354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033333, 41.163006, 17.067043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762852, 41.430939, 16.944351>,  <39.600563, 41.591698, 16.870737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762852, 41.430939, 16.944351>,  <40.033333, 41.163006, 17.067043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762852, 41.430939, 16.944351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527552, -0.149641, 0.836240,
		0.514237, 0.727282, 0.454556,
		-0.676202, 0.669828, -0.306728,
		39.559990, 41.631886, 16.852333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848106, 41.637138, 17.521866>,  <40.033333, 41.163006, 17.067043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848106, 41.637138, 17.521866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513466, 41.597984, 17.306265>,  <39.312683, 41.574493, 17.176905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.513466, 41.597984, 17.306265>,  <39.848106, 41.637138, 17.521866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513466, 41.597984, 17.306265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494916, -0.286791, 0.820249,
		-0.234868, 0.952980, 0.191486,
		-0.836598, -0.097881, -0.539003,
		39.262486, 41.568619, 17.144564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332375, 42.005489, 17.992565>,  <39.848106, 41.637138, 17.521866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332375, 42.005489, 17.992565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135082, 41.758308, 17.747660>,  <39.016708, 41.610001, 17.600718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135082, 41.758308, 17.747660>,  <39.332375, 42.005489, 17.992565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135082, 41.758308, 17.747660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545884, -0.328131, 0.770935,
		-0.677300, 0.714472, -0.175484,
		-0.493230, -0.617948, -0.612262,
		38.987114, 41.572926, 17.563982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655720, 41.968052, 18.296019>,  <39.332375, 42.005489, 17.992565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655720, 41.968052, 18.296019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628918, 41.669281, 18.031410>,  <38.612835, 41.490021, 17.872644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.628918, 41.669281, 18.031410>,  <38.655720, 41.968052, 18.296019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628918, 41.669281, 18.031410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395525, -0.588808, 0.704886,
		-0.916007, 0.308881, -0.255974,
		-0.067007, -0.746925, -0.661523,
		38.608814, 41.445202, 17.832952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985306, 41.724159, 18.285109>,  <38.655720, 41.968052, 18.296019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985306, 41.724159, 18.285109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215160, 41.426796, 18.148212>,  <38.353073, 41.248379, 18.066074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215160, 41.426796, 18.148212>,  <37.985306, 41.724159, 18.285109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215160, 41.426796, 18.148212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431696, -0.630609, 0.644958,
		-0.695292, -0.222872, -0.683299,
		0.574638, -0.743412, -0.342244,
		38.387550, 41.203773, 18.045540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477161, 41.163303, 18.105368>,  <37.985306, 41.724159, 18.285109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477161, 41.163303, 18.105368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827465, 40.979786, 18.165436>,  <38.037647, 40.869675, 18.201477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827465, 40.979786, 18.165436>,  <37.477161, 41.163303, 18.105368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827465, 40.979786, 18.165436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398148, -0.510547, 0.762116,
		-0.272987, -0.727220, -0.629785,
		0.875760, -0.458795, 0.150169,
		38.090195, 40.842148, 18.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284153, 40.514130, 18.301573>,  <37.477161, 41.163303, 18.105368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284153, 40.514130, 18.301573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654350, 40.571346, 18.441860>,  <37.876469, 40.605675, 18.526033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654350, 40.571346, 18.441860>,  <37.284153, 40.514130, 18.301573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654350, 40.571346, 18.441860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247536, -0.472438, 0.845889,
		0.286691, -0.869679, -0.401829,
		0.925492, 0.143042, 0.350720,
		37.931999, 40.614258, 18.547077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517750, 39.869003, 18.533989>,  <37.284153, 40.514130, 18.301573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517750, 39.869003, 18.533989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751263, 40.123020, 18.736343>,  <37.891369, 40.275429, 18.857758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751263, 40.123020, 18.736343>,  <37.517750, 39.869003, 18.533989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751263, 40.123020, 18.736343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233348, -0.465563, 0.853698,
		0.777656, -0.616420, -0.123601,
		0.583780, 0.635041, 0.505888,
		37.926395, 40.313534, 18.888109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878902, 39.430557, 18.917492>,  <37.517750, 39.869003, 18.533989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878902, 39.430557, 18.917492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918900, 39.782837, 19.102690>,  <37.942898, 39.994205, 19.213808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918900, 39.782837, 19.102690>,  <37.878902, 39.430557, 18.917492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918900, 39.782837, 19.102690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202251, -0.437623, 0.876117,
		0.974215, -0.181250, 0.134363,
		0.099996, 0.880701, 0.462997,
		37.948898, 40.047047, 19.241589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320915, 39.343296, 19.620115>,  <37.878902, 39.430557, 18.917492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320915, 39.343296, 19.620115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146469, 39.699348, 19.672970>,  <38.041801, 39.912979, 19.704683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.146469, 39.699348, 19.672970>,  <38.320915, 39.343296, 19.620115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146469, 39.699348, 19.672970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151435, -0.217339, 0.964277,
		0.887056, 0.400528, 0.229583,
		-0.436117, 0.890135, 0.132138,
		38.015633, 39.966389, 19.712612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667652, 39.733002, 20.182142>,  <38.320915, 39.343296, 19.620115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667652, 39.733002, 20.182142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301712, 39.894440, 20.177153>,  <38.082150, 39.991302, 20.174158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301712, 39.894440, 20.177153>,  <38.667652, 39.733002, 20.182142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301712, 39.894440, 20.177153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109535, -0.218314, 0.969712,
		0.388651, 0.888508, 0.243934,
		-0.914851, 0.403599, -0.012475,
		38.027256, 40.015518, 20.173410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601711, 40.132301, 20.758837>,  <38.667652, 39.733002, 20.182142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601711, 40.132301, 20.758837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225655, 40.051311, 20.649185>,  <38.000023, 40.002716, 20.583395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.225655, 40.051311, 20.649185>,  <38.601711, 40.132301, 20.758837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225655, 40.051311, 20.649185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256576, -0.108891, 0.960371,
		-0.224300, 0.973215, 0.050422,
		-0.940137, -0.202474, -0.274128,
		37.943615, 39.990570, 20.566946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222195, 40.557480, 21.117699>,  <38.601711, 40.132301, 20.758837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222195, 40.557480, 21.117699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985485, 40.252171, 21.013992>,  <37.843460, 40.068985, 20.951769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985485, 40.252171, 21.013992>,  <38.222195, 40.557480, 21.117699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985485, 40.252171, 21.013992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101682, -0.248379, 0.963311,
		-0.799668, 0.596422, 0.069372,
		-0.591770, -0.763275, -0.259266,
		37.807953, 40.023190, 20.936213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591644, 40.600002, 21.556145>,  <38.222195, 40.557480, 21.117699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591644, 40.600002, 21.556145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612835, 40.225056, 21.418425>,  <37.625549, 40.000088, 21.335793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612835, 40.225056, 21.418425>,  <37.591644, 40.600002, 21.556145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612835, 40.225056, 21.418425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274752, -0.345159, 0.897428,
		-0.960055, 0.047057, -0.275827,
		0.052974, -0.937364, -0.344301,
		37.628727, 39.943848, 21.315134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118042, 40.265366, 21.977692>,  <37.591644, 40.600002, 21.556145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118042, 40.265366, 21.977692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318321, 39.958584, 21.817150>,  <37.438488, 39.774513, 21.720825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318321, 39.958584, 21.817150>,  <37.118042, 40.265366, 21.977692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318321, 39.958584, 21.817150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164389, -0.539470, 0.825802,
		-0.849871, -0.347497, -0.396189,
		0.500696, -0.766954, -0.401355,
		37.468529, 39.728497, 21.696743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762463, 39.669544, 22.166191>,  <37.118042, 40.265366, 21.977692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762463, 39.669544, 22.166191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126335, 39.519596, 22.094696>,  <37.344658, 39.429626, 22.051800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126335, 39.519596, 22.094696>,  <36.762463, 39.669544, 22.166191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126335, 39.519596, 22.094696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118134, -0.646175, 0.753991,
		-0.398144, -0.664779, -0.632101,
		0.909684, -0.374869, -0.178737,
		37.399239, 39.407135, 22.041075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732010, 38.994282, 22.316143>,  <36.762463, 39.669544, 22.166191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732010, 38.994282, 22.316143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128452, 39.044849, 22.332813>,  <37.366318, 39.075191, 22.342815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128452, 39.044849, 22.332813>,  <36.732010, 38.994282, 22.316143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128452, 39.044849, 22.332813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047259, -0.626873, 0.777686,
		0.124438, -0.768796, -0.627269,
		0.991101, 0.126418, 0.041674,
		37.425781, 39.082775, 22.345316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225216, 38.365067, 22.192116>,  <36.732010, 38.994282, 22.316143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225216, 38.365067, 22.192116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398026, 38.620411, 22.446939>,  <37.501713, 38.773617, 22.599834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398026, 38.620411, 22.446939>,  <37.225216, 38.365067, 22.192116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398026, 38.620411, 22.446939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109314, -0.664110, 0.739600,
		0.895212, -0.389166, -0.217131,
		0.432026, 0.638363, 0.637060,
		37.527634, 38.811920, 22.638058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724190, 37.935589, 22.626593>,  <37.225216, 38.365067, 22.192116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724190, 37.935589, 22.626593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684921, 38.276398, 22.832281>,  <37.661362, 38.480885, 22.955694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684921, 38.276398, 22.832281>,  <37.724190, 37.935589, 22.626593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684921, 38.276398, 22.832281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007985, -0.517373, 0.855723,
		0.995138, 0.079901, 0.057595,
		-0.098171, 0.852022, 0.514220,
		37.655472, 38.532005, 22.986547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071503, 37.839668, 23.301636>,  <37.724190, 37.935589, 22.626593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071503, 37.839668, 23.301636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830559, 38.152107, 23.367426>,  <37.685993, 38.339569, 23.406900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830559, 38.152107, 23.367426>,  <38.071503, 37.839668, 23.301636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830559, 38.152107, 23.367426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205627, -0.350940, 0.913541,
		0.771282, 0.516463, 0.372007,
		-0.602363, 0.781093, 0.164475,
		37.649849, 38.386436, 23.416769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212196, 38.028194, 24.057775>,  <38.071503, 37.839668, 23.301636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212196, 38.028194, 24.057775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867817, 38.208218, 23.962931>,  <37.661190, 38.316231, 23.906023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867817, 38.208218, 23.962931>,  <38.212196, 38.028194, 24.057775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867817, 38.208218, 23.962931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340773, -0.164189, 0.925698,
		0.377684, 0.877777, 0.294724,
		-0.860946, 0.450055, -0.237111,
		37.609531, 38.343235, 23.891798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.298397, 39.140789, 29.034252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964523, 39.340988, 28.942337>,  <38.764198, 39.461109, 28.887188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964523, 39.340988, 28.942337>,  <39.298397, 39.140789, 29.034252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964523, 39.340988, 28.942337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304308, -0.071379, 0.949896,
		0.459023, 0.862788, 0.211885,
		-0.834682, 0.500502, -0.229789,
		38.714119, 39.491138, 28.873400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215401, 39.679989, 29.527411>,  <39.298397, 39.140789, 29.034252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215401, 39.679989, 29.527411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857952, 39.578621, 29.379236>,  <38.643482, 39.517799, 29.290331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.857952, 39.578621, 29.379236>,  <39.215401, 39.679989, 29.527411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857952, 39.578621, 29.379236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386611, 0.015385, 0.922115,
		-0.227979, 0.967235, -0.111722,
		-0.893620, -0.253416, -0.370436,
		38.589867, 39.502598, 29.268105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763947, 40.056377, 29.948174>,  <39.215401, 39.679989, 29.527411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763947, 40.056377, 29.948174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507000, 39.804653, 29.773209>,  <38.352833, 39.653618, 29.668230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507000, 39.804653, 29.773209>,  <38.763947, 40.056377, 29.948174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507000, 39.804653, 29.773209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611952, 0.077576, 0.787081,
		-0.461389, 0.773269, -0.434943,
		-0.642367, -0.629314, -0.437411,
		38.314289, 39.615860, 29.641985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112644, 40.360737, 30.059237>,  <38.763947, 40.056377, 29.948174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112644, 40.360737, 30.059237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.032024, 39.980370, 29.965309>,  <37.983654, 39.752151, 29.908953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.032024, 39.980370, 29.965309>,  <38.112644, 40.360737, 30.059237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032024, 39.980370, 29.965309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696635, -0.029363, 0.716824,
		-0.688533, 0.308057, -0.656523,
		-0.201545, -0.950914, -0.234821,
		37.971561, 39.695095, 29.894863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311275, 40.288074, 29.910267>,  <38.112644, 40.360737, 30.059237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311275, 40.288074, 29.910267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453514, 39.922436, 29.988220>,  <37.538857, 39.703053, 30.034992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453514, 39.922436, 29.988220>,  <37.311275, 40.288074, 29.910267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453514, 39.922436, 29.988220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744221, -0.150789, 0.650690,
		-0.565408, -0.376418, -0.733910,
		0.355597, -0.914096, 0.194881,
		37.560192, 39.648209, 30.046684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675125, 39.998905, 30.166756>,  <37.311275, 40.288074, 29.910267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675125, 39.998905, 30.166756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.986950, 39.771572, 30.272041>,  <37.174046, 39.635174, 30.335213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.986950, 39.771572, 30.272041>,  <36.675125, 39.998905, 30.166756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986950, 39.771572, 30.272041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571447, -0.473372, 0.670349,
		-0.256381, -0.672993, -0.693793,
		0.779562, -0.568330, 0.263216,
		37.220818, 39.601074, 30.351006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562374, 39.274971, 30.012989>,  <36.675125, 39.998905, 30.166756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562374, 39.274971, 30.012989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.825790, 39.314068, 30.311457>,  <36.983841, 39.337524, 30.490538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.825790, 39.314068, 30.311457>,  <36.562374, 39.274971, 30.012989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825790, 39.314068, 30.311457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590630, -0.547315, 0.592960,
		0.466345, -0.831200, -0.302703,
		0.658542, 0.097738, 0.746170,
		37.023354, 39.343388, 30.535307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538307, 38.639221, 30.241377>,  <36.562374, 39.274971, 30.012989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538307, 38.639221, 30.241377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716362, 38.858875, 30.524305>,  <36.823196, 38.990669, 30.694061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716362, 38.858875, 30.524305>,  <36.538307, 38.639221, 30.241377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716362, 38.858875, 30.524305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685709, -0.298963, 0.663644,
		0.575894, -0.780429, 0.243468,
		0.445139, 0.549136, 0.707319,
		36.849903, 39.023617, 30.736502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597336, 38.165276, 30.779091>,  <36.538307, 38.639221, 30.241377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597336, 38.165276, 30.779091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.635349, 38.529160, 30.940779>,  <36.658157, 38.747490, 31.037792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.635349, 38.529160, 30.940779>,  <36.597336, 38.165276, 30.779091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635349, 38.529160, 30.940779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479495, -0.314015, 0.819438,
		0.872383, -0.271699, 0.406359,
		0.095038, 0.909711, 0.404220,
		36.663860, 38.802074, 31.062044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909748, 38.060902, 31.414324>,  <36.597336, 38.165276, 30.779091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909748, 38.060902, 31.414324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720749, 38.413410, 31.410105>,  <36.607349, 38.624916, 31.407574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720749, 38.413410, 31.410105>,  <36.909748, 38.060902, 31.414324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720749, 38.413410, 31.410105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598582, -0.312098, 0.737763,
		0.646876, 0.354903, 0.674978,
		-0.472494, 0.881271, -0.010550,
		36.579002, 38.677792, 31.406940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866356, 38.228096, 32.038010>,  <36.909748, 38.060902, 31.414324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866356, 38.228096, 32.038010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572365, 38.465466, 31.906765>,  <36.395969, 38.607887, 31.828018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572365, 38.465466, 31.906765>,  <36.866356, 38.228096, 32.038010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572365, 38.465466, 31.906765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576618, -0.292332, 0.762925,
		0.356822, 0.749926, 0.557036,
		-0.734976, 0.593425, -0.328110,
		36.351871, 38.643494, 31.808332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662270, 38.644440, 32.637955>,  <36.866356, 38.228096, 32.038010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662270, 38.644440, 32.637955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.343269, 38.651600, 32.396736>,  <36.151867, 38.655895, 32.252007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.343269, 38.651600, 32.396736>,  <36.662270, 38.644440, 32.637955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343269, 38.651600, 32.396736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561624, -0.387139, 0.731233,
		-0.220374, 0.921848, 0.318798,
		-0.797505, 0.017900, -0.603047,
		36.104019, 38.656971, 32.215820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181095, 39.180298, 32.835369>,  <36.662270, 38.644440, 32.637955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181095, 39.180298, 32.835369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.961845, 38.924095, 32.620220>,  <35.830296, 38.770374, 32.491131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.961845, 38.924095, 32.620220>,  <36.181095, 39.180298, 32.835369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961845, 38.924095, 32.620220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667384, -0.052683, 0.742848,
		-0.504139, 0.766140, -0.398589,
		-0.548127, -0.640511, -0.537869,
		35.797409, 38.731941, 32.458858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597931, 39.552219, 32.789318>,  <36.181095, 39.180298, 32.835369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597931, 39.552219, 32.789318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558208, 39.160183, 32.720547>,  <35.534374, 38.924961, 32.679283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558208, 39.160183, 32.720547>,  <35.597931, 39.552219, 32.789318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558208, 39.160183, 32.720547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696312, -0.054987, 0.715629,
		-0.710836, 0.190785, -0.676989,
		-0.099306, -0.980091, -0.171932,
		35.528416, 38.866158, 32.668968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027100, 40.073452, 32.934624>,  <35.597931, 39.552219, 32.789318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027100, 40.073452, 32.934624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.969357, 40.378841, 33.186424>,  <34.934711, 40.562077, 33.337505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.969357, 40.378841, 33.186424>,  <35.027100, 40.073452, 32.934624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969357, 40.378841, 33.186424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174724, 0.606500, -0.775648,
		-0.973978, -0.221957, 0.045846,
		-0.144355, 0.763474, 0.629499,
		34.926048, 40.607883, 33.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326839, 40.322025, 32.907265>,  <35.027100, 40.073452, 32.934624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326839, 40.322025, 32.907265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.570362, 40.619320, 33.018234>,  <34.716476, 40.797695, 33.084816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.570362, 40.619320, 33.018234>,  <34.326839, 40.322025, 32.907265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570362, 40.619320, 33.018234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297625, 0.538136, -0.788561,
		-0.735375, 0.397512, 0.548824,
		0.608805, 0.743232, 0.277422,
		34.753002, 40.842289, 33.101460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937172, 40.902374, 32.758888>,  <34.326839, 40.322025, 32.907265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937172, 40.902374, 32.758888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300396, 41.060188, 32.815128>,  <34.518330, 41.154877, 32.848873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300396, 41.060188, 32.815128>,  <33.937172, 40.902374, 32.758888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300396, 41.060188, 32.815128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124817, 0.575337, -0.808336,
		-0.399807, 0.716470, 0.571686,
		0.908061, 0.394535, 0.140596,
		34.572815, 41.178551, 32.857307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881653, 41.685070, 32.558044>,  <33.937172, 40.902374, 32.758888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881653, 41.685070, 32.558044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.273071, 41.602741, 32.561562>,  <34.507923, 41.553345, 32.563671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.273071, 41.602741, 32.561562>,  <33.881653, 41.685070, 32.558044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273071, 41.602741, 32.561562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083666, 0.358057, -0.929944,
		0.188253, 0.910732, 0.367597,
		0.978550, -0.205819, 0.008792,
		34.566635, 41.540997, 32.564198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207821, 42.303783, 32.294266>,  <33.881653, 41.685070, 32.558044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207821, 42.303783, 32.294266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.449009, 41.988758, 32.243393>,  <34.593719, 41.799744, 32.212872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.449009, 41.988758, 32.243393>,  <34.207821, 42.303783, 32.294266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449009, 41.988758, 32.243393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273995, 0.354164, -0.894145,
		0.749238, 0.504293, 0.429338,
		0.602967, -0.787563, -0.127180,
		34.629898, 41.752487, 32.205238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834633, 42.528053, 32.119514>,  <34.207821, 42.303783, 32.294266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834633, 42.528053, 32.119514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.857498, 42.155403, 31.975958>,  <34.871216, 41.931812, 31.889822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.857498, 42.155403, 31.975958>,  <34.834633, 42.528053, 32.119514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857498, 42.155403, 31.975958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279866, 0.360022, -0.889977,
		0.958336, -0.049572, 0.281309,
		0.057160, -0.931626, -0.358896,
		34.874645, 41.875916, 31.868290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301090, 42.547768, 31.488165>,  <34.834633, 42.528053, 32.119514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301090, 42.547768, 31.488165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.150135, 42.178230, 31.462578>,  <35.059563, 41.956509, 31.447226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.150135, 42.178230, 31.462578>,  <35.301090, 42.547768, 31.488165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150135, 42.178230, 31.462578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154480, 0.005302, -0.987981,
		0.913080, -0.382734, 0.140714,
		-0.377388, -0.923843, -0.063966,
		35.036919, 41.901077, 31.443388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845882, 42.108452, 31.067137>,  <35.301090, 42.547768, 31.488165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845882, 42.108452, 31.067137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.471233, 41.968643, 31.057577>,  <35.246445, 41.884758, 31.051842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.471233, 41.968643, 31.057577>,  <35.845882, 42.108452, 31.067137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471233, 41.968643, 31.057577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062910, -0.100688, -0.992927,
		0.344640, -0.931503, 0.116295,
		-0.936624, -0.349519, -0.023900,
		35.190247, 41.863789, 31.050407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865379, 41.567623, 30.534693>,  <35.845882, 42.108452, 31.067137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865379, 41.567623, 30.534693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.474251, 41.633801, 30.586052>,  <35.239574, 41.673508, 30.616867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.474251, 41.633801, 30.586052>,  <35.865379, 41.567623, 30.534693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474251, 41.633801, 30.586052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155108, -0.160214, -0.974819,
		-0.140697, -0.973120, 0.182322,
		-0.977827, 0.165434, 0.128397,
		35.180904, 41.683434, 30.624571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586685, 41.048378, 30.162855>,  <35.865379, 41.567623, 30.534693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586685, 41.048378, 30.162855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.286030, 41.305687, 30.221155>,  <35.105637, 41.460072, 30.256134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.286030, 41.305687, 30.221155>,  <35.586685, 41.048378, 30.162855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286030, 41.305687, 30.221155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246337, -0.068797, -0.966740,
		-0.611849, -0.762541, 0.210172,
		-0.751638, 0.643271, 0.145749,
		35.060539, 41.498669, 30.264879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967640, 40.729889, 30.030056>,  <35.586685, 41.048378, 30.162855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967640, 40.729889, 30.030056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921219, 41.117020, 29.940756>,  <34.893368, 41.349300, 29.887177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921219, 41.117020, 29.940756>,  <34.967640, 40.729889, 30.030056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921219, 41.117020, 29.940756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259114, -0.246485, -0.933866,
		-0.958850, -0.050526, 0.279382,
		-0.116048, 0.967829, -0.223251,
		34.886406, 41.407368, 29.873781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389084, 40.653183, 29.646788>,  <34.967640, 40.729889, 30.030056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389084, 40.653183, 29.646788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.487625, 41.037262, 29.594137>,  <34.546749, 41.267712, 29.562546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.487625, 41.037262, 29.594137>,  <34.389084, 40.653183, 29.646788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487625, 41.037262, 29.594137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314184, -0.049359, -0.948078,
		-0.916843, 0.274913, 0.289521,
		0.246349, 0.960201, -0.131628,
		34.561531, 41.325321, 29.554649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920078, 40.884911, 29.208931>,  <34.389084, 40.653183, 29.646788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920078, 40.884911, 29.208931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219234, 41.147030, 29.166517>,  <34.398727, 41.304302, 29.141069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.219234, 41.147030, 29.166517>,  <33.920078, 40.884911, 29.208931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219234, 41.147030, 29.166517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245738, 0.124919, -0.961253,
		-0.616660, 0.744971, 0.254457,
		0.747892, 0.655297, -0.106035,
		34.443604, 41.343620, 29.134706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704288, 41.601013, 28.939920>,  <33.920078, 40.884911, 29.208931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704288, 41.601013, 28.939920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094082, 41.553421, 28.863785>,  <34.327957, 41.524864, 28.818104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094082, 41.553421, 28.863785>,  <33.704288, 41.601013, 28.939920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094082, 41.553421, 28.863785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175000, 0.128327, -0.976170,
		0.140570, 0.984569, 0.104231,
		0.974482, -0.118979, -0.190339,
		34.386425, 41.517727, 28.806683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571918, 42.368900, 28.913649>,  <33.704288, 41.601013, 28.939920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571918, 42.368900, 28.913649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.191044, 42.401478, 28.795868>,  <32.962517, 42.421024, 28.725201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.191044, 42.401478, 28.795868>,  <33.571918, 42.368900, 28.913649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191044, 42.401478, 28.795868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299441, -0.439934, 0.846636,
		-0.060582, 0.894329, 0.443289,
		-0.952190, 0.081448, -0.294451,
		32.905388, 42.425911, 28.707533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192062, 42.641144, 29.452040>,  <33.571918, 42.368900, 28.913649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192062, 42.641144, 29.452040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.923748, 42.450924, 29.224390>,  <32.762760, 42.336792, 29.087801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.923748, 42.450924, 29.224390>,  <33.192062, 42.641144, 29.452040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923748, 42.450924, 29.224390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315625, -0.511373, 0.799299,
		-0.671138, 0.715788, 0.192927,
		-0.670787, -0.475547, -0.569122,
		32.722511, 42.308258, 29.053654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479828, 42.729527, 29.894522>,  <33.192062, 42.641144, 29.452040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479828, 42.729527, 29.894522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.460930, 42.434826, 29.624718>,  <32.449589, 42.258007, 29.462835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.460930, 42.434826, 29.624718>,  <32.479828, 42.729527, 29.894522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460930, 42.434826, 29.624718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539694, -0.549389, 0.637889,
		-0.840535, 0.394169, -0.371662,
		-0.047250, -0.736752, -0.674511,
		32.446754, 42.213799, 29.422365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813858, 42.550587, 29.865488>,  <32.479828, 42.729527, 29.894522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813858, 42.550587, 29.865488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.028660, 42.232430, 29.753073>,  <32.157539, 42.041534, 29.685623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.028660, 42.232430, 29.753073>,  <31.813858, 42.550587, 29.865488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028660, 42.232430, 29.753073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403649, -0.534808, 0.742326,
		-0.740741, -0.285190, -0.608251,
		0.537001, -0.795391, -0.281038,
		32.189762, 41.993813, 29.668762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381493, 42.048416, 29.806839>,  <31.813858, 42.550587, 29.865488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381493, 42.048416, 29.806839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.689638, 41.794384, 29.784140>,  <31.874525, 41.641964, 29.770521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.689638, 41.794384, 29.784140>,  <31.381493, 42.048416, 29.806839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689638, 41.794384, 29.784140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546940, -0.703938, 0.453131,
		-0.327719, -0.318038, -0.889636,
		0.770361, -0.635077, -0.056746,
		31.920746, 41.603859, 29.767117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109404, 41.386318, 29.517887>,  <31.381493, 42.048416, 29.806839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109404, 41.386318, 29.517887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.434526, 41.305843, 29.736563>,  <31.629601, 41.257557, 29.867767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.434526, 41.305843, 29.736563>,  <31.109404, 41.386318, 29.517887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434526, 41.305843, 29.736563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540403, -0.610822, 0.578672,
		0.217509, -0.765781, -0.605202,
		0.812806, -0.201187, 0.546690,
		31.678368, 41.245487, 29.900570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034161, 40.667839, 29.584574>,  <31.109404, 41.386318, 29.517887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034161, 40.667839, 29.584574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.286650, 40.784119, 29.872198>,  <31.438143, 40.853886, 30.044773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.286650, 40.784119, 29.872198>,  <31.034161, 40.667839, 29.584574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286650, 40.784119, 29.872198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397887, -0.674440, 0.621946,
		0.665765, -0.678692, -0.310055,
		0.631223, 0.290703, 0.719062,
		31.476017, 40.871330, 30.087917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363535, 40.038784, 29.902615>,  <31.034161, 40.667839, 29.584574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363535, 40.038784, 29.902615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.387249, 40.331760, 30.173914>,  <31.401478, 40.507545, 30.336693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.387249, 40.331760, 30.173914>,  <31.363535, 40.038784, 29.902615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387249, 40.331760, 30.173914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340903, -0.623739, 0.703374,
		0.938227, -0.272917, 0.212712,
		0.059287, 0.732438, 0.678247,
		31.405035, 40.551491, 30.377388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586594, 39.763588, 30.424690>,  <31.363535, 40.038784, 29.902615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586594, 39.763588, 30.424690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.440899, 40.089565, 30.604998>,  <31.353481, 40.285152, 30.713182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.440899, 40.089565, 30.604998>,  <31.586594, 39.763588, 30.424690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440899, 40.089565, 30.604998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370482, -0.570864, 0.732706,
		0.854443, 0.099879, 0.509854,
		-0.364239, 0.814947, 0.450767,
		31.331627, 40.334049, 30.740229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692213, 39.586418, 31.163214>,  <31.586594, 39.763588, 30.424690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692213, 39.586418, 31.163214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.435408, 39.892620, 31.146139>,  <31.281324, 40.076340, 31.135895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.435408, 39.892620, 31.146139>,  <31.692213, 39.586418, 31.163214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435408, 39.892620, 31.146139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540644, -0.412544, 0.733151,
		0.543621, 0.493770, 0.678725,
		-0.642012, 0.765505, -0.042686,
		31.242804, 40.122272, 31.133333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534615, 39.705940, 31.827522>,  <31.692213, 39.586418, 31.163214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534615, 39.705940, 31.827522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.236551, 39.896271, 31.640619>,  <31.057714, 40.010468, 31.528477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.236551, 39.896271, 31.640619>,  <31.534615, 39.705940, 31.827522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236551, 39.896271, 31.640619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642864, -0.326145, 0.693077,
		0.177390, 0.816835, 0.548921,
		-0.745157, 0.475826, -0.467259,
		31.013004, 40.039021, 31.500441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272814, 40.117584, 32.343803>,  <31.534615, 39.705940, 31.827522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272814, 40.117584, 32.343803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.014061, 40.035629, 32.049984>,  <30.858809, 39.986458, 31.873692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.014061, 40.035629, 32.049984>,  <31.272814, 40.117584, 32.343803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014061, 40.035629, 32.049984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611894, -0.435399, 0.660313,
		-0.455112, 0.876612, 0.156284,
		-0.646884, -0.204887, -0.734549,
		30.819996, 39.974163, 31.829618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.464161, 44.584393, 25.837875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253769, 44.281822, 25.682358>,  <34.127533, 44.100281, 25.589048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253769, 44.281822, 25.682358>,  <34.464161, 44.584393, 25.837875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253769, 44.281822, 25.682358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571115, -0.024601, 0.820501,
		-0.630215, 0.653613, -0.419068,
		-0.525981, -0.756428, -0.388793,
		34.095974, 44.054893, 25.565720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863811, 44.597260, 26.174585>,  <34.464161, 44.584393, 25.837875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863811, 44.597260, 26.174585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820080, 44.250717, 25.979658>,  <33.793842, 44.042793, 25.862701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820080, 44.250717, 25.979658>,  <33.863811, 44.597260, 26.174585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820080, 44.250717, 25.979658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565644, -0.348912, 0.747200,
		-0.817370, 0.357339, -0.451901,
		-0.109330, -0.866354, -0.487317,
		33.787281, 43.990810, 25.833464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153183, 44.486305, 26.178984>,  <33.863811, 44.597260, 26.174585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153183, 44.486305, 26.178984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348564, 44.138725, 26.147135>,  <33.465794, 43.930176, 26.128025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348564, 44.138725, 26.147135>,  <33.153183, 44.486305, 26.178984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348564, 44.138725, 26.147135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520808, -0.363530, 0.772402,
		-0.700125, -0.335812, -0.630123,
		0.488451, -0.868951, -0.079623,
		33.495098, 43.878040, 26.123247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665428, 44.015915, 26.191664>,  <33.153183, 44.486305, 26.178984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665428, 44.015915, 26.191664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992813, 43.808380, 26.290400>,  <33.189243, 43.683861, 26.349642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992813, 43.808380, 26.290400>,  <32.665428, 44.015915, 26.191664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992813, 43.808380, 26.290400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497874, -0.426005, 0.755408,
		-0.286776, -0.741169, -0.606983,
		0.818463, -0.518834, 0.246841,
		33.238354, 43.652729, 26.364452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429634, 43.344578, 26.489626>,  <32.665428, 44.015915, 26.191664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429634, 43.344578, 26.489626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806652, 43.354408, 26.622900>,  <33.032864, 43.360306, 26.702866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806652, 43.354408, 26.622900>,  <32.429634, 43.344578, 26.489626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806652, 43.354408, 26.622900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263305, -0.559215, 0.786097,
		0.205639, -0.828658, -0.520613,
		0.942541, 0.024572, 0.333186,
		33.089413, 43.361778, 26.722857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637970, 42.705196, 26.645157>,  <32.429634, 43.344578, 26.489626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637970, 42.705196, 26.645157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891922, 42.923969, 26.863438>,  <33.044292, 43.055233, 26.994406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891922, 42.923969, 26.863438>,  <32.637970, 42.705196, 26.645157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891922, 42.923969, 26.863438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217265, -0.551420, 0.805439,
		0.741433, -0.629919, -0.231255,
		0.634880, 0.546935, 0.545700,
		33.082386, 43.088051, 27.027147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015663, 42.279247, 27.052132>,  <32.637970, 42.705196, 26.645157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015663, 42.279247, 27.052132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017590, 42.618828, 27.263512>,  <33.018745, 42.822575, 27.390341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017590, 42.618828, 27.263512>,  <33.015663, 42.279247, 27.052132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017590, 42.618828, 27.263512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166771, -0.520375, 0.837495,
		0.985984, -0.092160, 0.139077,
		0.004812, 0.848950, 0.528451,
		33.019032, 42.873512, 27.422047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068573, 42.022377, 27.647873>,  <33.015663, 42.279247, 27.052132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068573, 42.022377, 27.647873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987606, 42.401867, 27.744993>,  <32.939026, 42.629559, 27.803267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987606, 42.401867, 27.744993>,  <33.068573, 42.022377, 27.647873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987606, 42.401867, 27.744993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312032, -0.297496, 0.902293,
		0.928257, 0.106880, 0.356251,
		-0.202421, 0.948722, 0.242803,
		32.926880, 42.686485, 27.817835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539108, 42.262989, 28.215578>,  <33.068573, 42.022377, 27.647873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539108, 42.262989, 28.215578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183334, 42.444710, 28.235619>,  <32.969868, 42.553741, 28.247643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183334, 42.444710, 28.235619>,  <33.539108, 42.262989, 28.215578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183334, 42.444710, 28.235619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161227, -0.414435, 0.895684,
		0.427672, 0.788579, 0.441860,
		-0.889440, 0.454298, 0.050102,
		32.916504, 42.580997, 28.250648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938622, 41.803902, 27.761625>,  <33.539108, 42.262989, 28.215578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938622, 41.803902, 27.761625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284573, 41.804676, 27.962414>,  <34.492146, 41.805141, 28.082888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284573, 41.804676, 27.962414>,  <33.938622, 41.803902, 27.761625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284573, 41.804676, 27.962414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491386, 0.201063, -0.847416,
		-0.102571, 0.979576, 0.172943,
		0.864881, 0.001938, 0.501973,
		34.544037, 41.805256, 28.113007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354050, 42.504116, 27.903894>,  <33.938622, 41.803902, 27.761625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354050, 42.504116, 27.903894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615013, 42.205009, 27.854559>,  <34.771591, 42.025547, 27.824959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615013, 42.205009, 27.854559>,  <34.354050, 42.504116, 27.903894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615013, 42.205009, 27.854559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283751, 0.391914, -0.875151,
		0.702744, 0.535958, 0.467867,
		0.652408, -0.747765, -0.123336,
		34.810734, 41.980679, 27.817558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021065, 42.879185, 27.734760>,  <34.354050, 42.504116, 27.903894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021065, 42.879185, 27.734760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079895, 42.494061, 27.644114>,  <35.115192, 42.262985, 27.589725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079895, 42.494061, 27.644114>,  <35.021065, 42.879185, 27.734760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079895, 42.494061, 27.644114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464422, 0.269506, -0.843611,
		0.873315, 0.018832, 0.486791,
		0.147080, -0.962815, -0.226618,
		35.124020, 42.205215, 27.576128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654335, 42.788754, 27.552847>,  <35.021065, 42.879185, 27.734760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654335, 42.788754, 27.552847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499615, 42.466690, 27.373024>,  <35.406784, 42.273453, 27.265129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499615, 42.466690, 27.373024>,  <35.654335, 42.788754, 27.552847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499615, 42.466690, 27.373024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613778, 0.139054, -0.777136,
		0.688233, -0.576523, 0.440405,
		-0.386797, -0.805162, -0.449558,
		35.383575, 42.225143, 27.238157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196152, 42.534859, 27.278650>,  <35.654335, 42.788754, 27.552847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196152, 42.534859, 27.278650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898190, 42.353458, 27.082916>,  <35.719410, 42.244617, 26.965475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898190, 42.353458, 27.082916>,  <36.196152, 42.534859, 27.278650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898190, 42.353458, 27.082916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527872, 0.047907, -0.847971,
		0.408000, -0.889966, 0.203705,
		-0.744907, -0.453502, -0.489335,
		35.674717, 42.217407, 26.936115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435814, 41.972839, 26.963112>,  <36.196152, 42.534859, 27.278650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435814, 41.972839, 26.963112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096382, 42.021439, 26.757139>,  <35.892723, 42.050598, 26.633556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096382, 42.021439, 26.757139>,  <36.435814, 41.972839, 26.963112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096382, 42.021439, 26.757139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488066, -0.195917, -0.850534,
		-0.204243, -0.973062, 0.106939,
		-0.848574, 0.121522, -0.514933,
		35.841808, 42.057888, 26.602659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387615, 41.382435, 26.591875>,  <36.435814, 41.972839, 26.963112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387615, 41.382435, 26.591875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174843, 41.666225, 26.406965>,  <36.047180, 41.836498, 26.296019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174843, 41.666225, 26.406965>,  <36.387615, 41.382435, 26.591875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174843, 41.666225, 26.406965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407435, -0.264132, -0.874203,
		-0.742325, -0.653362, -0.148565,
		-0.531931, 0.709474, -0.462274,
		36.015263, 41.879066, 26.268284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220982, 41.082821, 25.989279>,  <36.387615, 41.382435, 26.591875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220982, 41.082821, 25.989279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183403, 41.478897, 25.947908>,  <36.160854, 41.716541, 25.923086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183403, 41.478897, 25.947908>,  <36.220982, 41.082821, 25.989279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183403, 41.478897, 25.947908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491578, -0.044201, -0.869711,
		-0.865751, -0.132546, -0.482604,
		-0.093945, 0.990191, -0.103424,
		36.155220, 41.775955, 25.916882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091099, 41.170380, 25.225353>,  <36.220982, 41.082821, 25.989279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091099, 41.170380, 25.225353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233891, 41.515846, 25.367704>,  <36.319565, 41.723125, 25.453115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233891, 41.515846, 25.367704>,  <36.091099, 41.170380, 25.225353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233891, 41.515846, 25.367704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663384, 0.033822, -0.747514,
		-0.657638, 0.502931, -0.560867,
		0.356979, 0.863664, 0.355879,
		36.340984, 41.774944, 25.474468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152645, 41.594254, 24.646709>,  <36.091099, 41.170380, 25.225353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152645, 41.594254, 24.646709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393772, 41.778999, 24.906954>,  <36.538448, 41.889847, 25.063101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393772, 41.778999, 24.906954>,  <36.152645, 41.594254, 24.646709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393772, 41.778999, 24.906954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580903, 0.304931, -0.754698,
		-0.546960, 0.832885, -0.084483,
		0.602815, 0.461866, 0.650611,
		36.574615, 41.917561, 25.102137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218937, 42.250961, 24.397125>,  <36.152645, 41.594254, 24.646709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218937, 42.250961, 24.397125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525005, 42.208248, 24.651091>,  <36.708645, 42.182621, 24.803471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525005, 42.208248, 24.651091>,  <36.218937, 42.250961, 24.397125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525005, 42.208248, 24.651091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632806, 0.306453, -0.711086,
		-0.118637, 0.945877, 0.302062,
		0.765168, -0.106785, 0.634914,
		36.754555, 42.176212, 24.841564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698383, 42.899616, 24.332575>,  <36.218937, 42.250961, 24.397125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698383, 42.899616, 24.332575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945068, 42.628799, 24.493217>,  <37.093079, 42.466309, 24.589603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945068, 42.628799, 24.493217>,  <36.698383, 42.899616, 24.332575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945068, 42.628799, 24.493217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728648, 0.297898, -0.616708,
		0.297898, 0.672960, 0.677039,
		0.616708, -0.677039, 0.401608,
		37.130081, 42.425686, 24.613699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222363, 43.347626, 24.579689>,  <36.698383, 42.899616, 24.332575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222363, 43.347626, 24.579689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373791, 42.981346, 24.525747>,  <37.464645, 42.761578, 24.493383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373791, 42.981346, 24.525747>,  <37.222363, 43.347626, 24.579689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373791, 42.981346, 24.525747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646321, 0.365821, -0.669659,
		0.662537, 0.166352, 0.730323,
		0.378566, -0.915698, -0.134853,
		37.487362, 42.706638, 24.485291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934673, 43.425606, 24.611277>,  <37.222363, 43.347626, 24.579689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934673, 43.425606, 24.611277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875454, 43.067039, 24.444176>,  <37.839924, 42.851898, 24.343916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875454, 43.067039, 24.444176>,  <37.934673, 43.425606, 24.611277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875454, 43.067039, 24.444176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792382, 0.145246, -0.592481,
		0.591788, -0.418733, 0.688803,
		-0.148045, -0.896418, -0.417751,
		37.831039, 42.798115, 24.318850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.372242, 37.369514, 21.315207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.305603, 37.762280, 21.351191>,  <35.265621, 37.997940, 21.372780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.305603, 37.762280, 21.351191>,  <35.372242, 37.369514, 21.315207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305603, 37.762280, 21.351191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078469, -0.104146, 0.991462,
		0.982898, 0.158113, 0.094400,
		-0.166594, 0.981913, 0.089958,
		35.255627, 38.056854, 21.378178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781075, 37.671165, 21.852417>,  <35.372242, 37.369514, 21.315207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781075, 37.671165, 21.852417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458725, 37.905071, 21.815273>,  <35.265316, 38.045414, 21.792988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458725, 37.905071, 21.815273>,  <35.781075, 37.671165, 21.852417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458725, 37.905071, 21.815273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209973, -0.135610, 0.968257,
		0.553605, 0.799791, 0.232068,
		-0.805874, 0.584760, -0.092860,
		35.216965, 38.080498, 21.787415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820412, 38.098297, 22.359011>,  <35.781075, 37.671165, 21.852417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820412, 38.098297, 22.359011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.432613, 38.132236, 22.267033>,  <35.199936, 38.152599, 22.211845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.432613, 38.132236, 22.267033>,  <35.820412, 38.098297, 22.359011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432613, 38.132236, 22.267033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234071, -0.042236, 0.971302,
		0.072705, 0.995498, 0.060809,
		-0.969497, 0.084852, -0.229947,
		35.141766, 38.157692, 22.198050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581776, 38.546387, 22.901194>,  <35.820412, 38.098297, 22.359011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581776, 38.546387, 22.901194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252182, 38.376812, 22.750822>,  <35.054424, 38.275066, 22.660599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252182, 38.376812, 22.750822>,  <35.581776, 38.546387, 22.901194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252182, 38.376812, 22.750822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445592, 0.075011, 0.892088,
		-0.349994, 0.902578, -0.250713,
		-0.823986, -0.423941, -0.375928,
		35.004986, 38.249630, 22.638044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130455, 38.886372, 23.264040>,  <35.581776, 38.546387, 22.901194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130455, 38.886372, 23.264040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.917732, 38.586971, 23.105587>,  <34.790100, 38.407330, 23.010515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.917732, 38.586971, 23.105587>,  <35.130455, 38.886372, 23.264040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917732, 38.586971, 23.105587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577321, -0.021789, 0.816226,
		-0.619581, 0.662771, -0.420541,
		-0.531808, -0.748505, -0.396132,
		34.758190, 38.362419, 22.986748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474430, 39.066154, 23.403133>,  <35.130455, 38.886372, 23.264040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474430, 39.066154, 23.403133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.487289, 38.669640, 23.352037>,  <34.495003, 38.431732, 23.321381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.487289, 38.669640, 23.352037>,  <34.474430, 39.066154, 23.403133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487289, 38.669640, 23.352037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524623, -0.125518, 0.842031,
		-0.850728, 0.039948, -0.524086,
		0.032145, -0.991287, -0.127739,
		34.496933, 38.372253, 23.313715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795338, 38.849644, 23.418528>,  <34.474430, 39.066154, 23.403133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795338, 38.849644, 23.418528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015125, 38.527760, 23.508442>,  <34.146999, 38.334629, 23.562391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.015125, 38.527760, 23.508442>,  <33.795338, 38.849644, 23.418528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015125, 38.527760, 23.508442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393289, -0.011739, 0.919340,
		-0.737161, -0.593556, -0.322933,
		0.549471, -0.804707, 0.224785,
		34.179966, 38.286346, 23.575878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349640, 38.375648, 23.824640>,  <33.795338, 38.849644, 23.418528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349640, 38.375648, 23.824640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721798, 38.242428, 23.885885>,  <33.945091, 38.162495, 23.922632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721798, 38.242428, 23.885885>,  <33.349640, 38.375648, 23.824640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721798, 38.242428, 23.885885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229759, -0.204383, 0.951545,
		-0.285628, -0.920488, -0.266680,
		0.930391, -0.333061, 0.153113,
		34.000916, 38.142509, 23.931820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283211, 37.682434, 24.156311>,  <33.349640, 38.375648, 23.824640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283211, 37.682434, 24.156311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634720, 37.840420, 24.263466>,  <33.845627, 37.935211, 24.327759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634720, 37.840420, 24.263466>,  <33.283211, 37.682434, 24.156311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634720, 37.840420, 24.263466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119008, -0.362235, 0.924458,
		0.462162, -0.844270, -0.271320,
		0.878774, 0.394960, 0.267886,
		33.898354, 37.958908, 24.343832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570000, 37.225910, 24.637295>,  <33.283211, 37.682434, 24.156311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570000, 37.225910, 24.637295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759083, 37.568108, 24.721855>,  <33.872532, 37.773426, 24.772591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759083, 37.568108, 24.721855>,  <33.570000, 37.225910, 24.637295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759083, 37.568108, 24.721855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118735, -0.299540, 0.946667,
		0.873186, -0.422391, -0.243170,
		0.472703, 0.855489, 0.211402,
		33.900894, 37.824753, 24.785276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082890, 36.946445, 25.022127>,  <33.570000, 37.225910, 24.637295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082890, 36.946445, 25.022127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083191, 37.336155, 25.112267>,  <34.083370, 37.569981, 25.166349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083191, 37.336155, 25.112267>,  <34.082890, 36.946445, 25.022127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083191, 37.336155, 25.112267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182066, -0.221716, 0.957964,
		0.983286, 0.040307, -0.177550,
		0.000753, 0.974278, 0.225349,
		34.083416, 37.628437, 25.179871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620541, 37.103848, 25.510069>,  <34.082890, 36.946445, 25.022127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620541, 37.103848, 25.510069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.360008, 37.404301, 25.553101>,  <34.203690, 37.584572, 25.578918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.360008, 37.404301, 25.553101>,  <34.620541, 37.103848, 25.510069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360008, 37.404301, 25.553101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031233, -0.168193, 0.985259,
		0.758154, 0.638366, 0.133009,
		-0.651327, 0.751132, 0.107578,
		34.164612, 37.629639, 25.585375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865532, 37.430580, 26.095352>,  <34.620541, 37.103848, 25.510069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865532, 37.430580, 26.095352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490891, 37.562122, 26.046967>,  <34.266106, 37.641048, 26.017935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.490891, 37.562122, 26.046967>,  <34.865532, 37.430580, 26.095352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490891, 37.562122, 26.046967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252903, -0.395507, 0.882958,
		0.242521, 0.857572, 0.453601,
		-0.936602, 0.328853, -0.120963,
		34.209911, 37.660778, 26.010677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791183, 37.707539, 26.695034>,  <34.865532, 37.430580, 26.095352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791183, 37.707539, 26.695034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431503, 37.645000, 26.531570>,  <34.215694, 37.607479, 26.433493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431503, 37.645000, 26.531570>,  <34.791183, 37.707539, 26.695034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431503, 37.645000, 26.531570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340001, -0.338185, 0.877513,
		-0.275395, 0.928002, 0.250938,
		-0.899198, -0.156344, -0.408657,
		34.161743, 37.598099, 26.408974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057564, 38.268280, 27.171865>,  <34.791183, 37.707539, 26.695034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057564, 38.268280, 27.171865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373775, 38.068817, 27.314075>,  <35.563503, 37.949139, 27.399401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.373775, 38.068817, 27.314075>,  <35.057564, 38.268280, 27.171865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373775, 38.068817, 27.314075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578737, 0.418408, -0.699999,
		0.200307, 0.759126, 0.619358,
		0.790532, -0.498660, 0.355524,
		35.610935, 37.919220, 27.420732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671921, 38.690006, 27.013142>,  <35.057564, 38.268280, 27.171865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671921, 38.690006, 27.013142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870377, 38.344921, 27.052269>,  <35.989449, 38.137871, 27.075747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870377, 38.344921, 27.052269>,  <35.671921, 38.690006, 27.013142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870377, 38.344921, 27.052269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710072, 0.338335, -0.617518,
		0.499646, 0.375833, 0.780451,
		0.496137, -0.862716, 0.097821,
		36.019218, 38.086105, 27.081615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440521, 38.841297, 27.018749>,  <35.671921, 38.690006, 27.013142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440521, 38.841297, 27.018749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407417, 38.453888, 26.924843>,  <36.387554, 38.221443, 26.868498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407417, 38.453888, 26.924843>,  <36.440521, 38.841297, 27.018749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407417, 38.453888, 26.924843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579925, 0.144778, -0.801703,
		0.810456, -0.202495, 0.549688,
		-0.082758, -0.968522, -0.234768,
		36.382591, 38.163330, 26.854412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145302, 38.635967, 26.764753>,  <36.440521, 38.841297, 27.018749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145302, 38.635967, 26.764753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908241, 38.348522, 26.619228>,  <36.766006, 38.176056, 26.531914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908241, 38.348522, 26.619228>,  <37.145302, 38.635967, 26.764753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908241, 38.348522, 26.619228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379396, 0.149382, -0.913096,
		0.710509, -0.679177, 0.184108,
		-0.592651, -0.718613, -0.363814,
		36.730446, 38.132938, 26.510084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582455, 38.236614, 26.223467>,  <37.145302, 38.635967, 26.764753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582455, 38.236614, 26.223467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.213856, 38.096233, 26.156923>,  <36.992699, 38.012005, 26.116997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.213856, 38.096233, 26.156923>,  <37.582455, 38.236614, 26.223467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213856, 38.096233, 26.156923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164723, 0.034748, -0.985728,
		0.351727, -0.935747, 0.025790,
		-0.921496, -0.350955, -0.166361,
		36.937408, 37.990948, 26.107016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704971, 37.659874, 25.704908>,  <37.582455, 38.236614, 26.223467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704971, 37.659874, 25.704908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316513, 37.755135, 25.699745>,  <37.083439, 37.812290, 25.696648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.316513, 37.755135, 25.699745>,  <37.704971, 37.659874, 25.704908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316513, 37.755135, 25.699745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013080, -0.000864, -0.999914,
		-0.238146, -0.971227, -0.002276,
		-0.971141, 0.238156, -0.012909,
		37.025169, 37.826580, 25.695873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400097, 37.231495, 25.203957>,  <37.704971, 37.659874, 25.704908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400097, 37.231495, 25.203957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141907, 37.536247, 25.225475>,  <36.986992, 37.719101, 25.238386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141907, 37.536247, 25.225475>,  <37.400097, 37.231495, 25.203957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141907, 37.536247, 25.225475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108177, 0.160919, -0.981021,
		-0.756081, -0.627406, -0.186288,
		-0.645476, 0.761883, 0.053796,
		36.948265, 37.764812, 25.241613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946629, 37.169643, 24.707884>,  <37.400097, 37.231495, 25.203957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946629, 37.169643, 24.707884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915409, 37.564636, 24.762711>,  <36.896675, 37.801632, 24.795607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915409, 37.564636, 24.762711>,  <36.946629, 37.169643, 24.707884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915409, 37.564636, 24.762711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083840, 0.143503, -0.986092,
		-0.993418, -0.065473, -0.093991,
		-0.078050, 0.987482, 0.137069,
		36.891994, 37.860882, 24.803831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436920, 37.501694, 24.117594>,  <36.946629, 37.169643, 24.707884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436920, 37.501694, 24.117594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671913, 37.789753, 24.265244>,  <36.812908, 37.962589, 24.353834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671913, 37.789753, 24.265244>,  <36.436920, 37.501694, 24.117594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671913, 37.789753, 24.265244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211389, 0.303734, -0.929010,
		-0.781138, 0.623809, 0.026208,
		0.587485, 0.720145, 0.369125,
		36.848160, 38.005795, 24.375980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363457, 38.114628, 23.717253>,  <36.436920, 37.501694, 24.117594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363457, 38.114628, 23.717253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716373, 38.212120, 23.878330>,  <36.928123, 38.270615, 23.974977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716373, 38.212120, 23.878330>,  <36.363457, 38.114628, 23.717253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716373, 38.212120, 23.878330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292746, 0.385799, -0.874905,
		-0.368604, 0.889805, 0.269034,
		0.882287, 0.243735, 0.402694,
		36.981060, 38.285240, 23.999138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425743, 38.768417, 23.442312>,  <36.363457, 38.114628, 23.717253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425743, 38.768417, 23.442312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.784550, 38.669567, 23.588896>,  <36.999832, 38.610256, 23.676846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.784550, 38.669567, 23.588896>,  <36.425743, 38.768417, 23.442312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784550, 38.669567, 23.588896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441995, 0.504050, -0.742007,
		-0.001344, 0.827565, 0.561369,
		0.897017, -0.247125, 0.366457,
		37.053654, 38.595428, 23.698833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868649, 39.393665, 23.512703>,  <36.425743, 38.768417, 23.442312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868649, 39.393665, 23.512703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123299, 39.085415, 23.501104>,  <37.276089, 38.900463, 23.494144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123299, 39.085415, 23.501104>,  <36.868649, 39.393665, 23.512703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123299, 39.085415, 23.501104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502999, 0.443451, -0.741851,
		0.584548, 0.457698, 0.669937,
		0.636628, -0.770625, -0.028997,
		37.314285, 38.854229, 23.492405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526119, 39.605068, 23.679897>,  <36.868649, 39.393665, 23.512703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526119, 39.605068, 23.679897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569649, 39.276218, 23.456375>,  <37.595768, 39.078907, 23.322262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569649, 39.276218, 23.456375>,  <37.526119, 39.605068, 23.679897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569649, 39.276218, 23.456375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435149, 0.544822, -0.716808,
		0.893758, -0.165158, 0.417037,
		0.108825, -0.822126, -0.558807,
		37.602295, 39.029579, 23.288733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095375, 39.733509, 23.334568>,  <37.526119, 39.605068, 23.679897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095375, 39.733509, 23.334568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935257, 39.438553, 23.116938>,  <37.839188, 39.261578, 22.986359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935257, 39.438553, 23.116938>,  <38.095375, 39.733509, 23.334568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935257, 39.438553, 23.116938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267276, 0.473957, -0.839004,
		0.876544, -0.481265, 0.007366,
		-0.400292, -0.737392, -0.544075,
		37.815170, 39.217335, 22.953714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752953, 39.664146, 23.229298>,  <38.095375, 39.733509, 23.334568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752953, 39.664146, 23.229298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124035, 39.746246, 23.354033>,  <39.346684, 39.795506, 23.428873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.124035, 39.746246, 23.354033>,  <38.752953, 39.664146, 23.229298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124035, 39.746246, 23.354033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331552, 0.069040, 0.940907,
		0.171593, -0.976271, 0.132100,
		0.927701, 0.205251, 0.311838,
		39.402344, 39.807823, 23.447584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910419, 39.165356, 23.771101>,  <38.752953, 39.664146, 23.229298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910419, 39.165356, 23.771101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151909, 39.480408, 23.820335>,  <39.296803, 39.669441, 23.849876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151909, 39.480408, 23.820335>,  <38.910419, 39.165356, 23.771101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151909, 39.480408, 23.820335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224120, 0.019522, 0.974366,
		0.765039, -0.615837, 0.188310,
		0.603727, 0.787632, 0.123086,
		39.333027, 39.716698, 23.857262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406616, 38.983006, 24.254021>,  <38.910419, 39.165356, 23.771101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406616, 38.983006, 24.254021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411217, 39.382496, 24.273668>,  <39.413975, 39.622189, 24.285458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.411217, 39.382496, 24.273668>,  <39.406616, 38.983006, 24.254021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411217, 39.382496, 24.273668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122015, -0.050156, 0.991260,
		0.992462, -0.005403, -0.122436,
		0.011497, 0.998727, 0.049119,
		39.414665, 39.682114, 24.288404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866329, 39.139408, 24.755495>,  <39.406616, 38.983006, 24.254021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866329, 39.139408, 24.755495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680759, 39.492104, 24.721300>,  <39.569416, 39.703720, 24.700783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680759, 39.492104, 24.721300>,  <39.866329, 39.139408, 24.755495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680759, 39.492104, 24.721300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106156, 0.151138, 0.982796,
		0.879490, 0.446871, -0.163719,
		-0.463927, 0.881739, -0.085487,
		39.541580, 39.756626, 24.695654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392059, 39.697624, 24.890318>,  <39.866329, 39.139408, 24.755495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392059, 39.697624, 24.890318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012970, 39.817318, 24.934626>,  <39.785515, 39.889133, 24.961210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012970, 39.817318, 24.934626>,  <40.392059, 39.697624, 24.890318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012970, 39.817318, 24.934626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195881, 0.271580, 0.942271,
		0.251879, 0.914714, -0.315998,
		-0.947728, 0.299236, 0.110770,
		39.728653, 39.907089, 24.967857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366714, 40.068741, 25.444038>,  <40.392059, 39.697624, 24.890318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366714, 40.068741, 25.444038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967361, 40.048164, 25.434324>,  <39.727749, 40.035816, 25.428495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967361, 40.048164, 25.434324>,  <40.366714, 40.068741, 25.444038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967361, 40.048164, 25.434324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036489, 0.251553, 0.967156,
		-0.043646, 0.966475, -0.253022,
		-0.998380, -0.051445, -0.024287,
		39.667847, 40.032730, 25.427038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010513, 40.664970, 25.865744>,  <40.366714, 40.068741, 25.444038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010513, 40.664970, 25.865744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728943, 40.383831, 25.824793>,  <39.560001, 40.215145, 25.800222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728943, 40.383831, 25.824793>,  <40.010513, 40.664970, 25.865744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728943, 40.383831, 25.824793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076808, -0.067962, 0.994727,
		-0.706103, 0.708082, -0.006143,
		-0.703931, -0.702852, -0.102375,
		39.517765, 40.172974, 25.794081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448517, 40.952942, 26.151958>,  <40.010513, 40.664970, 25.865744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448517, 40.952942, 26.151958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384281, 40.558201, 26.159212>,  <39.345737, 40.321354, 26.163565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384281, 40.558201, 26.159212>,  <39.448517, 40.952942, 26.151958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384281, 40.558201, 26.159212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206629, 0.051580, 0.977059,
		-0.965150, 0.153160, -0.212196,
		-0.160591, -0.986854, 0.018136,
		39.336105, 40.262146, 26.164652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874607, 40.903431, 26.538980>,  <39.448517, 40.952942, 26.151958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874607, 40.903431, 26.538980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023785, 40.532310, 26.542854>,  <39.113289, 40.309639, 26.545177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023785, 40.532310, 26.542854>,  <38.874607, 40.903431, 26.538980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023785, 40.532310, 26.542854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357863, -0.134203, 0.924080,
		-0.856067, -0.348091, -0.382077,
		0.372940, -0.927805, 0.009682,
		39.135666, 40.253967, 26.545759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337509, 40.524063, 26.881788>,  <38.874607, 40.903431, 26.538980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337509, 40.524063, 26.881788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665245, 40.298264, 26.921839>,  <38.861885, 40.162785, 26.945869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665245, 40.298264, 26.921839>,  <38.337509, 40.524063, 26.881788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665245, 40.298264, 26.921839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294477, -0.264527, 0.918318,
		-0.491906, -0.781896, -0.382970,
		0.819336, -0.564502, 0.100128,
		38.911045, 40.128914, 26.951878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138905, 39.781933, 26.996735>,  <38.337509, 40.524063, 26.881788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138905, 39.781933, 26.996735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504742, 39.842178, 27.146851>,  <38.724243, 39.878326, 27.236921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.504742, 39.842178, 27.146851>,  <38.138905, 39.781933, 26.996735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504742, 39.842178, 27.146851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281325, -0.429685, 0.858037,
		0.290491, -0.890329, -0.350613,
		0.914588, 0.150616, 0.375291,
		38.779118, 39.887363, 27.259438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203911, 39.258484, 27.400415>,  <38.138905, 39.781933, 26.996735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203911, 39.258484, 27.400415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510117, 39.485703, 27.521280>,  <38.693840, 39.622036, 27.593800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510117, 39.485703, 27.521280>,  <38.203911, 39.258484, 27.400415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510117, 39.485703, 27.521280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141935, -0.308964, 0.940423,
		0.627563, -0.762799, -0.155892,
		0.765519, 0.568049, 0.302162,
		38.739773, 39.656116, 27.611929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587673, 38.767555, 27.851683>,  <38.203911, 39.258484, 27.400415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587673, 38.767555, 27.851683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693790, 39.139965, 27.951933>,  <38.757462, 39.363411, 28.012083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693790, 39.139965, 27.951933>,  <38.587673, 38.767555, 27.851683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693790, 39.139965, 27.951933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243433, -0.186841, 0.951752,
		0.932931, -0.313505, 0.177074,
		0.265294, 0.931024, 0.250627,
		38.773380, 39.419273, 28.027121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027332, 38.766483, 28.472353>,  <38.587673, 38.767555, 27.851683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027332, 38.766483, 28.472353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.850304, 39.125076, 28.463861>,  <38.744087, 39.340233, 28.458767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.850304, 39.125076, 28.463861>,  <39.027332, 38.766483, 28.472353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850304, 39.125076, 28.463861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202739, -0.076970, 0.976203,
		0.873512, 0.436348, 0.215816,
		-0.442576, 0.896480, -0.021231,
		38.717529, 39.394020, 28.457493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.738361, 43.001823, 24.403957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.451099, 42.818184, 24.194775>,  <38.278744, 42.708000, 24.069265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.451099, 42.818184, 24.194775>,  <38.738361, 43.001823, 24.403957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451099, 42.818184, 24.194775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584962, 0.008787, -0.811013,
		0.376931, -0.888342, 0.262245,
		-0.718153, -0.459099, -0.522958,
		38.235653, 42.680454, 24.037888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057884, 42.428764, 23.956303>,  <38.738361, 43.001823, 24.403957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057884, 42.428764, 23.956303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708614, 42.527149, 23.787985>,  <38.499054, 42.586182, 23.686995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708614, 42.527149, 23.787985>,  <39.057884, 42.428764, 23.956303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708614, 42.527149, 23.787985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443486, 0.042777, -0.895260,
		-0.202202, -0.968334, -0.146434,
		-0.873175, 0.245964, -0.420794,
		38.446663, 42.600937, 23.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038109, 42.118244, 23.342503>,  <39.057884, 42.428764, 23.956303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038109, 42.118244, 23.342503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745434, 42.387970, 23.302631>,  <38.569828, 42.549805, 23.278708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.745434, 42.387970, 23.302631>,  <39.038109, 42.118244, 23.342503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745434, 42.387970, 23.302631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227453, 0.103674, -0.968255,
		-0.642574, -0.731130, -0.229232,
		-0.731685, 0.674315, -0.099680,
		38.525928, 42.590263, 23.272728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670948, 41.794975, 22.789267>,  <39.038109, 42.118244, 23.342503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670948, 41.794975, 22.789267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631214, 42.191372, 22.825191>,  <38.607372, 42.429211, 22.846746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631214, 42.191372, 22.825191>,  <38.670948, 41.794975, 22.789267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631214, 42.191372, 22.825191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340944, 0.118692, -0.932561,
		-0.934821, -0.062015, -0.349663,
		-0.099335, 0.990993, 0.089812,
		38.601414, 42.488670, 22.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307499, 42.005310, 22.162781>,  <38.670948, 41.794975, 22.789267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307499, 42.005310, 22.162781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475536, 42.342419, 22.297392>,  <38.576359, 42.544685, 22.378159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475536, 42.342419, 22.297392>,  <38.307499, 42.005310, 22.162781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475536, 42.342419, 22.297392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273222, 0.236171, -0.932509,
		-0.865374, 0.483687, -0.131051,
		0.420092, 0.842775, 0.336530,
		38.601562, 42.595253, 22.398352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955399, 42.651833, 21.760973>,  <38.307499, 42.005310, 22.162781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955399, 42.651833, 21.760973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299858, 42.809067, 21.889908>,  <38.506535, 42.903408, 21.967268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299858, 42.809067, 21.889908>,  <37.955399, 42.651833, 21.760973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299858, 42.809067, 21.889908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197732, 0.325139, -0.924763,
		-0.468319, 0.860096, 0.202268,
		0.861150, 0.393089, 0.322338,
		38.558205, 42.926994, 21.986609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927792, 43.242046, 21.471601>,  <37.955399, 42.651833, 21.760973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927792, 43.242046, 21.471601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314770, 43.245239, 21.572777>,  <38.546959, 43.247154, 21.633482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314770, 43.245239, 21.572777>,  <37.927792, 43.242046, 21.471601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314770, 43.245239, 21.572777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235899, 0.333398, -0.912796,
		-0.091616, 0.942752, 0.320662,
		0.967449, 0.007983, 0.252939,
		38.605003, 43.247635, 21.648659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183849, 43.829689, 21.242197>,  <37.927792, 43.242046, 21.471601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183849, 43.829689, 21.242197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522781, 43.620834, 21.280979>,  <38.726139, 43.495522, 21.304249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522781, 43.620834, 21.280979>,  <38.183849, 43.829689, 21.242197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522781, 43.620834, 21.280979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217690, 0.174974, -0.960206,
		0.484397, 0.834718, 0.261925,
		0.847331, -0.522140, 0.096953,
		38.776981, 43.464191, 21.310064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663063, 44.267319, 21.019030>,  <38.183849, 43.829689, 21.242197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663063, 44.267319, 21.019030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.805058, 43.896149, 20.973524>,  <38.890255, 43.673447, 20.946220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.805058, 43.896149, 20.973524>,  <38.663063, 44.267319, 21.019030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805058, 43.896149, 20.973524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104603, 0.160347, -0.981502,
		0.929000, 0.336522, 0.153985,
		0.354988, -0.927923, -0.113762,
		38.911552, 43.617771, 20.939396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400391, 44.374504, 20.973690>,  <38.663063, 44.267319, 21.019030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400391, 44.374504, 20.973690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278400, 44.032253, 20.806412>,  <39.205204, 43.826904, 20.706045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278400, 44.032253, 20.806412>,  <39.400391, 44.374504, 20.973690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278400, 44.032253, 20.806412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447093, 0.259089, -0.856143,
		0.840890, -0.448078, 0.303529,
		-0.304978, -0.855628, -0.418198,
		39.186909, 43.775566, 20.680952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044277, 44.024685, 20.589577>,  <39.400391, 44.374504, 20.973690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044277, 44.024685, 20.589577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705578, 43.877396, 20.435993>,  <39.502357, 43.789024, 20.343843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.705578, 43.877396, 20.435993>,  <40.044277, 44.024685, 20.589577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705578, 43.877396, 20.435993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336129, 0.189118, -0.922633,
		0.412347, -0.910301, -0.036366,
		-0.846751, -0.368221, -0.383960,
		39.451553, 43.766930, 20.320805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321495, 43.674149, 19.959152>,  <40.044277, 44.024685, 20.589577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321495, 43.674149, 19.959152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926640, 43.733727, 19.935942>,  <39.689724, 43.769474, 19.922014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926640, 43.733727, 19.935942>,  <40.321495, 43.674149, 19.959152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926640, 43.733727, 19.935942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085287, 0.183727, -0.979270,
		-0.135192, -0.971628, -0.194067,
		-0.987142, 0.148941, -0.058029,
		39.630497, 43.778408, 19.918533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136974, 43.203938, 19.462019>,  <40.321495, 43.674149, 19.959152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136974, 43.203938, 19.462019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935650, 43.545425, 19.515444>,  <39.814857, 43.750320, 19.547499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935650, 43.545425, 19.515444>,  <40.136974, 43.203938, 19.462019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935650, 43.545425, 19.515444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280666, 0.307698, -0.909147,
		-0.817256, -0.420096, -0.394478,
		-0.503309, 0.853722, 0.133562,
		39.784657, 43.801540, 19.555511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725811, 42.707012, 19.467976>,  <40.136974, 43.203938, 19.462019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725811, 42.707012, 19.467976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.003635, 42.994732, 19.462402>,  <41.170330, 43.167362, 19.459059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.003635, 42.994732, 19.462402>,  <40.725811, 42.707012, 19.467976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003635, 42.994732, 19.462402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508301, -0.504341, -0.698048,
		-0.509132, 0.477755, -0.715916,
		0.694561, 0.719299, -0.013933,
		41.212006, 43.210522, 19.458223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463791, 42.422085, 18.898127>,  <40.725811, 42.707012, 19.467976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463791, 42.422085, 18.898127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464973, 42.073803, 18.701408>,  <40.465683, 41.864834, 18.583378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464973, 42.073803, 18.701408>,  <40.463791, 42.422085, 18.898127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464973, 42.073803, 18.701408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011907, -0.491733, 0.870665,
		-0.999925, -0.008431, 0.008913,
		0.002958, -0.870706, -0.491796,
		40.465862, 41.812592, 18.553869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916023, 42.089874, 19.067387>,  <40.463791, 42.422085, 18.898127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916023, 42.089874, 19.067387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162163, 41.794083, 18.958197>,  <40.309845, 41.616608, 18.892683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162163, 41.794083, 18.958197>,  <39.916023, 42.089874, 19.067387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162163, 41.794083, 18.958197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174558, -0.465540, 0.867642,
		-0.768684, -0.486253, -0.415551,
		0.615349, -0.739480, -0.272974,
		40.346767, 41.572239, 18.876305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664539, 41.453339, 19.360447>,  <39.916023, 42.089874, 19.067387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664539, 41.453339, 19.360447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049591, 41.372284, 19.288576>,  <40.280621, 41.323650, 19.245453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049591, 41.372284, 19.288576>,  <39.664539, 41.453339, 19.360447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049591, 41.372284, 19.288576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002860, -0.671022, 0.741432,
		-0.270807, -0.713210, -0.646525,
		0.962629, -0.202634, -0.179678,
		40.338379, 41.311493, 19.234673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725727, 40.768581, 19.516642>,  <39.664539, 41.453339, 19.360447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725727, 40.768581, 19.516642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.104870, 40.894516, 19.536438>,  <40.332355, 40.970078, 19.548315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.104870, 40.894516, 19.536438>,  <39.725727, 40.768581, 19.516642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104870, 40.894516, 19.536438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142673, -0.558037, 0.817459,
		0.284985, -0.767771, -0.573857,
		0.947854, 0.314837, 0.049492,
		40.389225, 40.988968, 19.551285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109928, 40.163132, 19.469967>,  <39.725727, 40.768581, 19.516642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109928, 40.163132, 19.469967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.312141, 40.456894, 19.651110>,  <40.433468, 40.633152, 19.759796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.312141, 40.456894, 19.651110>,  <40.109928, 40.163132, 19.469967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312141, 40.456894, 19.651110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052173, -0.549924, 0.833583,
		0.861228, -0.397777, -0.316321,
		0.505533, 0.734409, 0.452857,
		40.463802, 40.677216, 19.786966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349712, 39.775974, 20.009853>,  <40.109928, 40.163132, 19.469967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349712, 39.775974, 20.009853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458046, 40.147915, 20.109467>,  <40.523045, 40.371078, 20.169235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458046, 40.147915, 20.109467>,  <40.349712, 39.775974, 20.009853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458046, 40.147915, 20.109467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078006, -0.279050, 0.957103,
		0.959461, -0.239788, -0.148110,
		0.270832, 0.929856, 0.249033,
		40.539295, 40.426872, 20.184175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963428, 39.776909, 20.438637>,  <40.349712, 39.775974, 20.009853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963428, 39.776909, 20.438637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765320, 40.116566, 20.512018>,  <40.646454, 40.320362, 20.556047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765320, 40.116566, 20.512018>,  <40.963428, 39.776909, 20.438637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765320, 40.116566, 20.512018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049996, -0.238683, 0.969810,
		0.867296, 0.471151, 0.160668,
		-0.495275, 0.849145, 0.183453,
		40.616737, 40.371311, 20.567055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307243, 40.071606, 20.936672>,  <40.963428, 39.776909, 20.438637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307243, 40.071606, 20.936672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.951012, 40.245670, 20.989592>,  <40.737274, 40.350109, 21.021343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.951012, 40.245670, 20.989592>,  <41.307243, 40.071606, 20.936672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951012, 40.245670, 20.989592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031471, -0.231226, 0.972391,
		0.453739, 0.870155, 0.192230,
		-0.890579, 0.435162, 0.132301,
		40.683838, 40.376221, 21.029282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306591, 40.450397, 21.647465>,  <41.307243, 40.071606, 20.936672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306591, 40.450397, 21.647465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923138, 40.408321, 21.541670>,  <40.693066, 40.383076, 21.478193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923138, 40.408321, 21.541670>,  <41.306591, 40.450397, 21.647465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923138, 40.408321, 21.541670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239207, -0.205890, 0.948889,
		-0.154265, 0.972905, 0.172212,
		-0.958636, -0.105186, -0.264487,
		40.635548, 40.376766, 21.462324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906929, 40.916233, 22.116007>,  <41.306591, 40.450397, 21.647465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906929, 40.916233, 22.116007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634777, 40.646564, 22.001060>,  <40.471485, 40.484764, 21.932093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.634777, 40.646564, 22.001060>,  <40.906929, 40.916233, 22.116007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634777, 40.646564, 22.001060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360440, -0.033581, 0.932178,
		-0.638096, 0.737813, -0.220150,
		-0.680380, -0.674169, -0.287365,
		40.430664, 40.444313, 21.914850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333435, 41.077599, 22.448336>,  <40.906929, 40.916233, 22.116007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333435, 41.077599, 22.448336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255299, 40.704971, 22.325687>,  <40.208416, 40.481396, 22.252098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255299, 40.704971, 22.325687>,  <40.333435, 41.077599, 22.448336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255299, 40.704971, 22.325687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467458, -0.186403, 0.864139,
		-0.862163, 0.312133, -0.399058,
		-0.195341, -0.931572, -0.306619,
		40.196697, 40.425499, 22.233702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830853, 40.951279, 22.896294>,  <40.333435, 41.077599, 22.448336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830853, 40.951279, 22.896294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.928333, 40.603226, 22.724957>,  <39.986820, 40.394394, 22.622154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.928333, 40.603226, 22.724957>,  <39.830853, 40.951279, 22.896294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928333, 40.603226, 22.724957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483366, -0.491870, 0.724169,
		-0.840813, 0.030565, -0.540463,
		0.243703, -0.870132, -0.428345,
		40.001446, 40.342186, 22.596453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256290, 40.553005, 22.800810>,  <39.830853, 40.951279, 22.896294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256290, 40.553005, 22.800810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.570095, 40.306385, 22.827381>,  <39.758377, 40.158413, 22.843325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.570095, 40.306385, 22.827381>,  <39.256290, 40.553005, 22.800810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570095, 40.306385, 22.827381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354787, -0.358403, 0.863524,
		-0.508596, -0.701011, -0.499914,
		0.784510, -0.616547, 0.066427,
		39.805447, 40.121422, 22.847309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997646, 39.809879, 22.579132>,  <39.256290, 40.553005, 22.800810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997646, 39.809879, 22.579132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.334553, 39.820705, 22.794485>,  <39.536697, 39.827202, 22.923697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.334553, 39.820705, 22.794485>,  <38.997646, 39.809879, 22.579132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334553, 39.820705, 22.794485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497716, -0.344547, 0.795969,
		0.207042, -0.938379, -0.276729,
		0.842267, 0.027066, 0.538381,
		39.587234, 39.828827, 22.955999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702610, 39.177235, 22.380785>,  <38.997646, 39.809879, 22.579132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702610, 39.177235, 22.380785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304611, 39.142345, 22.361307>,  <38.065811, 39.121410, 22.349621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.304611, 39.142345, 22.361307>,  <38.702610, 39.177235, 22.380785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304611, 39.142345, 22.361307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029265, 0.211540, -0.976931,
		0.095509, -0.973470, -0.207929,
		-0.994998, -0.087221, -0.048693,
		38.006111, 39.116180, 22.346699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543579, 38.887642, 21.698633>,  <38.702610, 39.177235, 22.380785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543579, 38.887642, 21.698633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191959, 39.050724, 21.797462>,  <37.980988, 39.148571, 21.856760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.191959, 39.050724, 21.797462>,  <38.543579, 38.887642, 21.698633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191959, 39.050724, 21.797462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039735, 0.453812, -0.890211,
		-0.475068, -0.792359, -0.382724,
		-0.879052, 0.407703, 0.247076,
		37.928246, 39.173035, 21.871586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241074, 38.877552, 21.143583>,  <38.543579, 38.887642, 21.698633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241074, 38.877552, 21.143583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.994881, 39.130512, 21.331730>,  <37.847164, 39.282288, 21.444618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.994881, 39.130512, 21.331730>,  <38.241074, 38.877552, 21.143583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994881, 39.130512, 21.331730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249102, 0.410121, -0.877354,
		-0.747747, -0.657168, -0.094891,
		-0.615485, 0.632401, 0.470368,
		37.810234, 39.320232, 21.472841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584053, 38.770992, 20.837574>,  <38.241074, 38.877552, 21.143583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584053, 38.770992, 20.837574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.622467, 39.134537, 20.999933>,  <37.645515, 39.352665, 21.097349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.622467, 39.134537, 20.999933>,  <37.584053, 38.770992, 20.837574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622467, 39.134537, 20.999933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183311, 0.416954, -0.890251,
		-0.978353, 0.011086, 0.206644,
		0.096031, 0.908860, 0.405896,
		37.651276, 39.407196, 21.121702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915337, 39.179657, 20.601934>,  <37.584053, 38.770992, 20.837574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915337, 39.179657, 20.601934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213093, 39.427139, 20.702400>,  <37.391747, 39.575630, 20.762680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.213093, 39.427139, 20.702400>,  <36.915337, 39.179657, 20.601934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213093, 39.427139, 20.702400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125086, 0.498683, -0.857711,
		-0.655920, 0.607058, 0.448608,
		0.744394, 0.618705, 0.251162,
		37.436413, 39.612751, 20.777748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761875, 39.725716, 20.087412>,  <36.915337, 39.179657, 20.601934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761875, 39.725716, 20.087412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092819, 39.848225, 20.275740>,  <37.291386, 39.921730, 20.388737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092819, 39.848225, 20.275740>,  <36.761875, 39.725716, 20.087412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092819, 39.848225, 20.275740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348466, 0.377526, -0.857931,
		-0.440505, 0.873884, 0.205626,
		0.827361, 0.306269, 0.470821,
		37.341026, 39.940105, 20.416986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811062, 40.374229, 20.084379>,  <36.761875, 39.725716, 20.087412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811062, 40.374229, 20.084379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200474, 40.289738, 20.119301>,  <37.434120, 40.239040, 20.140253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.200474, 40.289738, 20.119301>,  <36.811062, 40.374229, 20.084379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200474, 40.289738, 20.119301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161142, 0.363434, -0.917578,
		0.162095, 0.907357, 0.387852,
		0.973529, -0.211234, 0.087302,
		37.492531, 40.226368, 20.145491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279999, 40.977303, 20.140989>,  <36.811062, 40.374229, 20.084379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279999, 40.977303, 20.140989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.965313, 40.842979, 19.933794>,  <35.776501, 40.762386, 19.809477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.965313, 40.842979, 19.933794>,  <36.279999, 40.977303, 20.140989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965313, 40.842979, 19.933794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154122, -0.705681, 0.691564,
		-0.597765, 0.623899, 0.503416,
		-0.786717, -0.335805, -0.517988,
		35.729298, 40.742237, 19.778399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835087, 40.777603, 20.571867>,  <36.279999, 40.977303, 20.140989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835087, 40.777603, 20.571867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671711, 40.571152, 20.270725>,  <35.573685, 40.447281, 20.090040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671711, 40.571152, 20.270725>,  <35.835087, 40.777603, 20.571867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671711, 40.571152, 20.270725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272707, -0.718116, 0.640266,
		-0.871095, 0.466818, 0.152556,
		-0.408440, -0.516130, -0.752852,
		35.549179, 40.416313, 20.044870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167542, 40.531162, 20.836489>,  <35.835087, 40.777603, 20.571867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167542, 40.531162, 20.836489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261440, 40.300076, 20.523788>,  <35.317780, 40.161423, 20.336168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261440, 40.300076, 20.523788>,  <35.167542, 40.531162, 20.836489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261440, 40.300076, 20.523788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323136, -0.804865, 0.497769,
		-0.916776, 0.135763, -0.375621,
		0.234745, -0.577720, -0.781751,
		35.331863, 40.126759, 20.289263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606518, 40.128838, 20.706161>,  <35.167542, 40.531162, 20.836489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606518, 40.128838, 20.706161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888149, 39.902485, 20.534552>,  <35.057129, 39.766674, 20.431585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.888149, 39.902485, 20.534552>,  <34.606518, 40.128838, 20.706161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888149, 39.902485, 20.534552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368516, -0.807590, 0.460428,
		-0.607021, -0.166075, -0.777139,
		0.704075, -0.565877, -0.429023,
		35.099373, 39.732723, 20.405846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294495, 39.596561, 20.379829>,  <34.606518, 40.128838, 20.706161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294495, 39.596561, 20.379829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668800, 39.460087, 20.415459>,  <34.893383, 39.378201, 20.436836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668800, 39.460087, 20.415459>,  <34.294495, 39.596561, 20.379829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668800, 39.460087, 20.415459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349154, -0.861171, 0.369427,
		-0.049339, -0.376797, -0.924981,
		0.935765, -0.341187, 0.089071,
		34.949532, 39.357731, 20.442181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282658, 38.996983, 20.158497>,  <34.294495, 39.596561, 20.379829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282658, 38.996983, 20.158497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619686, 38.980816, 20.373322>,  <34.821903, 38.971115, 20.502216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619686, 38.980816, 20.373322>,  <34.282658, 38.996983, 20.158497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619686, 38.980816, 20.373322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258545, -0.905123, 0.337501,
		0.472463, -0.423224, -0.773085,
		0.842575, -0.040420, 0.537060,
		34.872459, 38.968689, 20.534439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440498, 38.300983, 20.145197>,  <34.282658, 38.996983, 20.158497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440498, 38.300983, 20.145197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627602, 38.460590, 20.460661>,  <34.739864, 38.556355, 20.649940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627602, 38.460590, 20.460661>,  <34.440498, 38.300983, 20.145197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627602, 38.460590, 20.460661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107062, -0.860147, 0.498684,
		0.877348, -0.317699, -0.359621,
		0.467758, 0.399018, 0.788662,
		34.767929, 38.580296, 20.697260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.955002, 44.731873, 19.040915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.275314, 44.524818, 19.161442>,  <36.467503, 44.400585, 19.233759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.275314, 44.524818, 19.161442>,  <35.955002, 44.731873, 19.040915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275314, 44.524818, 19.161442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480757, -0.255450, 0.838819,
		-0.357233, -0.816575, -0.453419,
		0.800785, -0.517639, 0.301319,
		36.515549, 44.369526, 19.251837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706818, 44.243042, 19.406275>,  <35.955002, 44.731873, 19.040915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706818, 44.243042, 19.406275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.085072, 44.215023, 19.533308>,  <36.312023, 44.198212, 19.609528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.085072, 44.215023, 19.533308>,  <35.706818, 44.243042, 19.406275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085072, 44.215023, 19.533308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324784, -0.152954, 0.933338,
		-0.016802, -0.985748, -0.167389,
		0.945639, -0.070047, 0.317586,
		36.368763, 44.194008, 19.628584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684765, 43.721302, 19.925169>,  <35.706818, 44.243042, 19.406275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684765, 43.721302, 19.925169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.027000, 43.911179, 20.007759>,  <36.232342, 44.025105, 20.057314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.027000, 43.911179, 20.007759>,  <35.684765, 43.721302, 19.925169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027000, 43.911179, 20.007759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091273, -0.254282, 0.962814,
		0.509539, -0.842622, -0.174235,
		0.855593, 0.474688, 0.206475,
		36.283680, 44.053585, 20.069702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192352, 43.206032, 20.416023>,  <35.684765, 43.721302, 19.925169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192352, 43.206032, 20.416023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.272995, 43.594826, 20.464357>,  <36.321381, 43.828102, 20.493359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.272995, 43.594826, 20.464357>,  <36.192352, 43.206032, 20.416023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272995, 43.594826, 20.464357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136758, -0.094228, 0.986113,
		0.969872, -0.215334, 0.113929,
		0.201608, 0.971984, 0.120838,
		36.333477, 43.886421, 20.500608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568451, 43.217499, 21.096647>,  <36.192352, 43.206032, 20.416023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568451, 43.217499, 21.096647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.441189, 43.587646, 21.014225>,  <36.364830, 43.809734, 20.964771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.441189, 43.587646, 21.014225>,  <36.568451, 43.217499, 21.096647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441189, 43.587646, 21.014225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130320, 0.172595, 0.976334,
		0.939037, 0.337483, 0.065682,
		-0.318160, 0.925374, -0.206054,
		36.345741, 43.865257, 20.952410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754192, 43.632339, 21.693909>,  <36.568451, 43.217499, 21.096647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754192, 43.632339, 21.693909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.492630, 43.862713, 21.497660>,  <36.335693, 44.000938, 21.379911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.492630, 43.862713, 21.497660>,  <36.754192, 43.632339, 21.693909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492630, 43.862713, 21.497660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381278, 0.309254, 0.871200,
		0.653482, 0.756742, 0.017370,
		-0.653902, 0.575937, -0.490621,
		36.296459, 44.035496, 21.350473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733829, 44.323750, 22.080574>,  <36.754192, 43.632339, 21.693909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733829, 44.323750, 22.080574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.396858, 44.244633, 21.880095>,  <36.194675, 44.197163, 21.759808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.396858, 44.244633, 21.880095>,  <36.733829, 44.323750, 22.080574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396858, 44.244633, 21.880095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538559, 0.280542, 0.794513,
		-0.016540, 0.939242, -0.342857,
		-0.842426, -0.197790, -0.501197,
		36.144131, 44.185295, 21.729736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191631, 44.954449, 22.120789>,  <36.733829, 44.323750, 22.080574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191631, 44.954449, 22.120789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981647, 44.624966, 22.035069>,  <35.855659, 44.427277, 21.983637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.981647, 44.624966, 22.035069>,  <36.191631, 44.954449, 22.120789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981647, 44.624966, 22.035069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617407, 0.195226, 0.762034,
		-0.585858, 0.532344, -0.611049,
		-0.524956, -0.823710, -0.214298,
		35.824162, 44.377853, 21.970779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501968, 45.092777, 22.142124>,  <36.191631, 44.954449, 22.120789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501968, 45.092777, 22.142124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.466728, 44.697212, 22.189934>,  <35.445583, 44.459873, 22.218620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.466728, 44.697212, 22.189934>,  <35.501968, 45.092777, 22.142124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466728, 44.697212, 22.189934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624978, 0.148314, 0.766424,
		-0.775654, -0.007175, -0.631117,
		-0.088105, -0.988914, 0.119524,
		35.440296, 44.400539, 22.225792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827309, 45.044651, 22.204250>,  <35.501968, 45.092777, 22.142124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827309, 45.044651, 22.204250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.979309, 44.692959, 22.319178>,  <35.070511, 44.481945, 22.388134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.979309, 44.692959, 22.319178>,  <34.827309, 45.044651, 22.204250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979309, 44.692959, 22.319178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533386, 0.045486, 0.844648,
		-0.755709, -0.474220, -0.451685,
		0.380004, -0.879231, 0.287317,
		35.093311, 44.429192, 22.405373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281124, 44.587860, 22.264816>,  <34.827309, 45.044651, 22.204250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281124, 44.587860, 22.264816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.572765, 44.419075, 22.480356>,  <34.747749, 44.317802, 22.609680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.572765, 44.419075, 22.480356>,  <34.281124, 44.587860, 22.264816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572765, 44.419075, 22.480356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635272, -0.124318, 0.762217,
		-0.254637, -0.898050, -0.358701,
		0.729102, -0.421961, 0.538850,
		34.791496, 44.292488, 22.642012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962109, 44.067699, 22.557972>,  <34.281124, 44.587860, 22.264816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962109, 44.067699, 22.557972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281677, 44.124393, 22.791769>,  <34.473419, 44.158409, 22.932047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281677, 44.124393, 22.791769>,  <33.962109, 44.067699, 22.557972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281677, 44.124393, 22.791769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574258, -0.109060, 0.811378,
		0.178746, -0.983879, -0.005738,
		0.798923, 0.141735, 0.584494,
		34.521355, 44.166912, 22.967117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690941, 43.510841, 22.318048>,  <33.962109, 44.067699, 22.557972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690941, 43.510841, 22.318048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.376179, 43.281685, 22.226332>,  <33.187321, 43.144192, 22.171303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.376179, 43.281685, 22.226332>,  <33.690941, 43.510841, 22.318048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376179, 43.281685, 22.226332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021101, 0.346375, -0.937859,
		0.616715, -0.742843, -0.260475,
		-0.786904, -0.572895, -0.229290,
		33.140106, 43.109818, 22.157545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946964, 43.288521, 21.675331>,  <33.690941, 43.510841, 22.318048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946964, 43.288521, 21.675331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.549942, 43.245300, 21.697838>,  <33.311729, 43.219368, 21.711342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.549942, 43.245300, 21.697838>,  <33.946964, 43.288521, 21.675331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549942, 43.245300, 21.697838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057847, 0.011555, -0.998259,
		0.107213, -0.994078, -0.017719,
		-0.992552, -0.108052, 0.056266,
		33.252178, 43.212887, 21.714718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800488, 42.706539, 21.358511>,  <33.946964, 43.288521, 21.675331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800488, 42.706539, 21.358511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.447769, 42.892986, 21.329758>,  <33.236137, 43.004856, 21.312506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.447769, 42.892986, 21.329758>,  <33.800488, 42.706539, 21.358511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447769, 42.892986, 21.329758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027017, -0.202081, -0.978996,
		-0.470857, -0.861333, 0.190788,
		-0.881796, 0.466121, -0.071881,
		33.183231, 43.032822, 21.308193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469265, 42.437286, 20.756065>,  <33.800488, 42.706539, 21.358511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469265, 42.437286, 20.756065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.285854, 42.783169, 20.838089>,  <33.175808, 42.990696, 20.887302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.285854, 42.783169, 20.838089>,  <33.469265, 42.437286, 20.756065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285854, 42.783169, 20.838089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094333, 0.276798, -0.956287,
		-0.883662, -0.419135, -0.208488,
		-0.458522, 0.864701, 0.205057,
		33.148296, 43.042580, 20.899607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810326, 42.473614, 20.391951>,  <33.469265, 42.437286, 20.756065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810326, 42.473614, 20.391951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848366, 42.863743, 20.471647>,  <32.871189, 43.097820, 20.519464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.848366, 42.863743, 20.471647>,  <32.810326, 42.473614, 20.391951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848366, 42.863743, 20.471647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312482, 0.219282, -0.924267,
		-0.945151, 0.025642, 0.325626,
		0.095104, 0.975324, 0.199242,
		32.876896, 43.156342, 20.531420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246429, 42.775974, 20.040068>,  <32.810326, 42.473614, 20.391951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246429, 42.775974, 20.040068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522736, 43.060402, 20.092552>,  <32.688519, 43.231060, 20.124043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522736, 43.060402, 20.092552>,  <32.246429, 42.775974, 20.040068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522736, 43.060402, 20.092552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135329, 0.305389, -0.942562,
		-0.710298, 0.633336, 0.307182,
		0.690769, 0.711071, 0.131209,
		32.729965, 43.273724, 20.131914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002762, 43.364040, 19.720911>,  <32.246429, 42.775974, 20.040068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002762, 43.364040, 19.720911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.388340, 43.467457, 19.746130>,  <32.619686, 43.529507, 19.761261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.388340, 43.467457, 19.746130>,  <32.002762, 43.364040, 19.720911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388340, 43.467457, 19.746130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039093, 0.371914, -0.927444,
		-0.263230, 0.891536, 0.368610,
		0.963941, 0.258541, 0.063046,
		32.677521, 43.545021, 19.765043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067917, 44.014263, 19.320393>,  <32.002762, 43.364040, 19.720911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067917, 44.014263, 19.320393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444122, 43.882565, 19.353926>,  <32.669846, 43.803547, 19.374046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.444122, 43.882565, 19.353926>,  <32.067917, 44.014263, 19.320393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444122, 43.882565, 19.353926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212776, 0.378436, -0.900840,
		0.264872, 0.865091, 0.425981,
		0.940515, -0.329246, 0.083833,
		32.726276, 43.783791, 19.379076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574364, 44.548069, 19.207829>,  <32.067917, 44.014263, 19.320393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574364, 44.548069, 19.207829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775185, 44.210449, 19.132437>,  <32.895679, 44.007877, 19.087202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775185, 44.210449, 19.132437>,  <32.574364, 44.548069, 19.207829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775185, 44.210449, 19.132437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066199, 0.254804, -0.964724,
		0.862298, 0.471867, 0.183800,
		0.502055, -0.844047, -0.188480,
		32.925800, 43.957233, 19.075893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126553, 44.778847, 18.890911>,  <32.574364, 44.548069, 19.207829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126553, 44.778847, 18.890911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.106144, 44.394760, 18.781082>,  <33.093899, 44.164310, 18.715185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.106144, 44.394760, 18.781082>,  <33.126553, 44.778847, 18.890911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106144, 44.394760, 18.781082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263483, 0.252248, -0.931100,
		0.963314, -0.119850, 0.240129,
		-0.051021, -0.960212, -0.274572,
		33.090839, 44.106697, 18.698709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649765, 44.704487, 18.311951>,  <33.126553, 44.778847, 18.890911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649765, 44.704487, 18.311951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440750, 44.365311, 18.276283>,  <33.315342, 44.161804, 18.254883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.440750, 44.365311, 18.276283>,  <33.649765, 44.704487, 18.311951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440750, 44.365311, 18.276283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075749, 0.057999, -0.995439,
		0.849245, -0.526908, 0.033924,
		-0.522537, -0.847941, -0.089168,
		33.283989, 44.110928, 18.249533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000038, 44.244442, 17.907154>,  <33.649765, 44.704487, 18.311951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000038, 44.244442, 17.907154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.627728, 44.104046, 17.866228>,  <33.404343, 44.019806, 17.841673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.627728, 44.104046, 17.866228>,  <34.000038, 44.244442, 17.907154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627728, 44.104046, 17.866228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089114, 0.053603, -0.994578,
		0.354574, -0.934843, -0.018613,
		-0.930772, -0.350993, -0.102313,
		33.348495, 43.998749, 17.835535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131969, 43.738026, 17.456888>,  <34.000038, 44.244442, 17.907154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131969, 43.738026, 17.456888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.740368, 43.818035, 17.441145>,  <33.505409, 43.866039, 17.431700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.740368, 43.818035, 17.441145>,  <34.131969, 43.738026, 17.456888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740368, 43.818035, 17.441145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059131, 0.093858, -0.993828,
		-0.195096, -0.975285, -0.103714,
		-0.979000, 0.200024, -0.039359,
		33.446667, 43.878044, 17.429337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680069, 43.428387, 17.737627>,  <34.131969, 43.738026, 17.456888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680069, 43.428387, 17.737627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879356, 43.172916, 17.503065>,  <34.998928, 43.019634, 17.362328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.879356, 43.172916, 17.503065>,  <34.680069, 43.428387, 17.737627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879356, 43.172916, 17.503065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062567, -0.701036, 0.710375,
		-0.864792, -0.317231, -0.389228,
		0.498216, -0.638680, -0.586403,
		35.028820, 42.981312, 17.327145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417679, 42.785156, 17.939013>,  <34.680069, 43.428387, 17.737627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417679, 42.785156, 17.939013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.747303, 42.671421, 17.743019>,  <34.945076, 42.603180, 17.625423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.747303, 42.671421, 17.743019>,  <34.417679, 42.785156, 17.939013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747303, 42.671421, 17.743019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098066, -0.780262, 0.617718,
		-0.557956, -0.557085, -0.615095,
		0.824056, -0.284339, -0.489982,
		34.994518, 42.586121, 17.596024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317833, 42.084660, 17.835430>,  <34.417679, 42.785156, 17.939013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317833, 42.084660, 17.835430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713226, 42.132488, 17.798347>,  <34.950462, 42.161186, 17.776098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713226, 42.132488, 17.798347>,  <34.317833, 42.084660, 17.835430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713226, 42.132488, 17.798347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148932, -0.660992, 0.735465,
		0.026661, -0.740805, -0.671191,
		0.988488, 0.119570, -0.092707,
		35.009773, 42.168358, 17.770535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643528, 41.421413, 17.919147>,  <34.317833, 42.084660, 17.835430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643528, 41.421413, 17.919147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973957, 41.638332, 17.980482>,  <35.172215, 41.768482, 18.017282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973957, 41.638332, 17.980482>,  <34.643528, 41.421413, 17.919147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973957, 41.638332, 17.980482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317108, -0.672213, 0.669009,
		0.465875, -0.504029, -0.727266,
		0.826077, 0.542296, 0.153335,
		35.221779, 41.801022, 18.026484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251205, 40.967728, 17.911673>,  <34.643528, 41.421413, 17.919147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251205, 40.967728, 17.911673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372402, 41.283772, 18.124807>,  <35.445122, 41.473400, 18.252687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372402, 41.283772, 18.124807>,  <35.251205, 40.967728, 17.911673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372402, 41.283772, 18.124807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272543, -0.607608, 0.746011,
		0.913190, -0.080816, -0.399441,
		0.302993, 0.790114, 0.532836,
		35.463299, 41.520805, 18.284658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878971, 40.688583, 18.197096>,  <35.251205, 40.967728, 17.911673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878971, 40.688583, 18.197096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777485, 40.994446, 18.434053>,  <35.716595, 41.177963, 18.576227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777485, 40.994446, 18.434053>,  <35.878971, 40.688583, 18.197096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777485, 40.994446, 18.434053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081724, -0.593298, 0.800824,
		0.963820, 0.251594, 0.088038,
		-0.253715, 0.764655, 0.592394,
		35.701370, 41.223843, 18.611773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454906, 40.734272, 18.711750>,  <35.878971, 40.688583, 18.197096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454906, 40.734272, 18.711750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129322, 40.928165, 18.839811>,  <35.933971, 41.044502, 18.916647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129322, 40.928165, 18.839811>,  <36.454906, 40.734272, 18.711750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129322, 40.928165, 18.839811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051680, -0.488505, 0.871029,
		0.578613, 0.725531, 0.372574,
		-0.813963, 0.484734, 0.320151,
		35.885132, 41.073586, 18.935856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625744, 40.855438, 19.449310>,  <36.454906, 40.734272, 18.711750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625744, 40.855438, 19.449310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229786, 40.886021, 19.401546>,  <35.992210, 40.904369, 19.372889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.229786, 40.886021, 19.401546>,  <36.625744, 40.855438, 19.449310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229786, 40.886021, 19.401546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141203, -0.455131, 0.879157,
		0.012865, 0.887136, 0.461328,
		-0.989897, 0.076451, -0.119411,
		35.932816, 40.908955, 19.365723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316795, 40.997978, 19.768290>,  <36.625744, 40.855438, 19.449310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316795, 40.997978, 19.768290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561180, 40.681313, 19.767622>,  <37.707809, 40.491314, 19.767221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561180, 40.681313, 19.767622>,  <37.316795, 40.997978, 19.768290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561180, 40.681313, 19.767622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402545, 0.312476, -0.860417,
		0.681678, 0.525008, 0.509589,
		0.610960, -0.791660, -0.001669,
		37.744469, 40.443813, 19.767122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073353, 41.223900, 19.757534>,  <37.316795, 40.997978, 19.768290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073353, 41.223900, 19.757534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032406, 40.863884, 19.588085>,  <38.007835, 40.647877, 19.486416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032406, 40.863884, 19.588085>,  <38.073353, 41.223900, 19.757534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032406, 40.863884, 19.588085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532622, 0.310075, -0.787506,
		0.840139, -0.306248, 0.447637,
		-0.102371, -0.900036, -0.423621,
		38.001694, 40.593872, 19.460999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782505, 41.017742, 19.459518>,  <38.073353, 41.223900, 19.757534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782505, 41.017742, 19.459518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482903, 40.830215, 19.272242>,  <38.303143, 40.717697, 19.159876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482903, 40.830215, 19.272242>,  <38.782505, 41.017742, 19.459518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482903, 40.830215, 19.272242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418766, 0.212629, -0.882850,
		0.513449, -0.857319, 0.037067,
		-0.749003, -0.468820, -0.468190,
		38.258202, 40.689568, 19.131784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152657, 40.576199, 19.088671>,  <38.782505, 41.017742, 19.459518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152657, 40.576199, 19.088671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.793991, 40.587227, 18.911930>,  <38.578793, 40.593845, 18.805885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.793991, 40.587227, 18.911930>,  <39.152657, 40.576199, 19.088671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793991, 40.587227, 18.911930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429799, 0.293498, -0.853892,
		0.106139, -0.955562, -0.275020,
		-0.896665, 0.027572, -0.441851,
		38.524990, 40.595497, 18.779375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296745, 40.393833, 18.404034>,  <39.152657, 40.576199, 19.088671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296745, 40.393833, 18.404034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916164, 40.486519, 18.322992>,  <38.687817, 40.542130, 18.274368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916164, 40.486519, 18.322992>,  <39.296745, 40.393833, 18.404034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916164, 40.486519, 18.322992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300627, 0.558330, -0.773234,
		-0.066049, -0.796603, -0.600883,
		-0.951453, 0.231713, -0.202603,
		38.630730, 40.556034, 18.262211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178379, 40.295349, 17.700802>,  <39.296745, 40.393833, 18.404034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178379, 40.295349, 17.700802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904839, 40.565655, 17.810848>,  <38.740715, 40.727837, 17.876875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904839, 40.565655, 17.810848>,  <39.178379, 40.295349, 17.700802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904839, 40.565655, 17.810848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180462, 0.522006, -0.833633,
		-0.706951, -0.520433, -0.478925,
		-0.683852, 0.675765, 0.275114,
		38.699684, 40.768383, 17.893383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784401, 40.390068, 17.105993>,  <39.178379, 40.295349, 17.700802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784401, 40.390068, 17.105993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715210, 40.715950, 17.327381>,  <38.673695, 40.911480, 17.460215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715210, 40.715950, 17.327381>,  <38.784401, 40.390068, 17.105993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715210, 40.715950, 17.327381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136322, 0.576337, -0.805762,
		-0.975447, -0.063926, -0.210755,
		-0.172975, 0.814708, 0.553471,
		38.663319, 40.960361, 17.493423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341175, 40.839600, 16.655954>,  <38.784401, 40.390068, 17.105993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341175, 40.839600, 16.655954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.518749, 41.060658, 16.938089>,  <38.625294, 41.193295, 17.107370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.518749, 41.060658, 16.938089>,  <38.341175, 40.839600, 16.655954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518749, 41.060658, 16.938089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306946, 0.645743, -0.699143,
		-0.841847, 0.526874, 0.117034,
		0.443934, 0.552648, 0.705339,
		38.651928, 41.226452, 17.149691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223057, 41.409412, 16.422668>,  <38.341175, 40.839600, 16.655954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223057, 41.409412, 16.422668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.551285, 41.471874, 16.642588>,  <38.748222, 41.509354, 16.774540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.551285, 41.471874, 16.642588>,  <38.223057, 41.409412, 16.422668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551285, 41.471874, 16.642588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439033, 0.443694, -0.781272,
		-0.365944, 0.882469, 0.295524,
		0.820570, 0.156157, 0.549800,
		38.797455, 41.518723, 16.807528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.359451, 36.928749, 31.205328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465637, 37.266254, 31.391912>,  <33.529350, 37.468758, 31.503864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465637, 37.266254, 31.391912>,  <33.359451, 36.928749, 31.205328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465637, 37.266254, 31.391912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453679, 0.317583, -0.832656,
		-0.850707, 0.432668, -0.298490,
		0.265468, 0.843765, 0.466463,
		33.545277, 37.519382, 31.531851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259445, 37.405712, 30.739653>,  <33.359451, 36.928749, 31.205328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259445, 37.405712, 30.739653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.516167, 37.546005, 31.012438>,  <33.670200, 37.630180, 31.176109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.516167, 37.546005, 31.012438>,  <33.259445, 37.405712, 30.739653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516167, 37.546005, 31.012438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645938, 0.232071, -0.727260,
		-0.413339, 0.907264, -0.077608,
		0.641806, 0.350734, 0.681961,
		33.708710, 37.651226, 31.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516273, 38.140572, 30.557344>,  <33.259445, 37.405712, 30.739653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516273, 38.140572, 30.557344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805546, 37.967319, 30.772533>,  <33.979107, 37.863369, 30.901648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805546, 37.967319, 30.772533>,  <33.516273, 38.140572, 30.557344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805546, 37.967319, 30.772533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669210, 0.246807, -0.700888,
		0.170797, 0.866884, 0.468338,
		0.723178, -0.433126, 0.537974,
		34.022499, 37.837383, 30.933926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093456, 38.600071, 30.618761>,  <33.516273, 38.140572, 30.557344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093456, 38.600071, 30.618761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242283, 38.238869, 30.704689>,  <34.331577, 38.022148, 30.756245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242283, 38.238869, 30.704689>,  <34.093456, 38.600071, 30.618761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242283, 38.238869, 30.704689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654378, 0.091045, -0.750667,
		0.658298, 0.419870, 0.624782,
		0.372066, -0.903006, 0.214818,
		34.353901, 37.967968, 30.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832047, 38.694500, 30.717218>,  <34.093456, 38.600071, 30.618761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832047, 38.694500, 30.717218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753551, 38.319725, 30.601530>,  <34.706455, 38.094860, 30.532118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753551, 38.319725, 30.601530>,  <34.832047, 38.694500, 30.717218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753551, 38.319725, 30.601530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603710, 0.116979, -0.788575,
		0.772675, -0.329351, 0.542680,
		-0.196236, -0.936933, -0.289219,
		34.694679, 38.038647, 30.514765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441532, 38.464081, 30.450722>,  <34.832047, 38.694500, 30.717218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441532, 38.464081, 30.450722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171501, 38.218948, 30.286423>,  <35.009483, 38.071869, 30.187843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171501, 38.218948, 30.286423>,  <35.441532, 38.464081, 30.450722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171501, 38.218948, 30.286423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523613, -0.005788, -0.851937,
		0.519713, -0.790195, 0.324792,
		-0.675076, -0.612828, -0.410748,
		34.968979, 38.035099, 30.163198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834831, 38.026093, 30.077906>,  <35.441532, 38.464081, 30.450722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834831, 38.026093, 30.077906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476711, 37.935631, 29.924391>,  <35.261841, 37.881351, 29.832281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476711, 37.935631, 29.924391>,  <35.834831, 38.026093, 30.077906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476711, 37.935631, 29.924391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428875, -0.204656, -0.879876,
		0.120447, -0.952349, 0.280222,
		-0.895298, -0.226159, -0.383788,
		35.208122, 37.867783, 29.809254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919479, 37.370850, 29.785017>,  <35.834831, 38.026093, 30.077906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919479, 37.370850, 29.785017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609211, 37.552734, 29.609943>,  <35.423050, 37.661865, 29.504898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609211, 37.552734, 29.609943>,  <35.919479, 37.370850, 29.785017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609211, 37.552734, 29.609943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453925, -0.079890, -0.887451,
		-0.438501, -0.887048, -0.144436,
		-0.775673, 0.454712, -0.437685,
		35.376511, 37.689148, 29.478638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825676, 36.942776, 29.191908>,  <35.919479, 37.370850, 29.785017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825676, 36.942776, 29.191908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627045, 37.282028, 29.118059>,  <35.507866, 37.485580, 29.073750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.627045, 37.282028, 29.118059>,  <35.825676, 36.942776, 29.191908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627045, 37.282028, 29.118059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123078, -0.141746, -0.982222,
		-0.859221, -0.510474, -0.033998,
		-0.496579, 0.848130, -0.184619,
		35.478069, 37.536469, 29.062674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361088, 36.810280, 28.606339>,  <35.825676, 36.942776, 29.191908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361088, 36.810280, 28.606339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421421, 37.205563, 28.616821>,  <35.457623, 37.442734, 28.623112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421421, 37.205563, 28.616821>,  <35.361088, 36.810280, 28.606339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421421, 37.205563, 28.616821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231631, -0.009556, -0.972757,
		-0.961039, 0.152796, -0.230342,
		0.150835, 0.988211, 0.026209,
		35.466671, 37.502026, 28.624683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949547, 37.027924, 27.947281>,  <35.361088, 36.810280, 28.606339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949547, 37.027924, 27.947281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168507, 37.346531, 28.049974>,  <35.299881, 37.537697, 28.111591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168507, 37.346531, 28.049974>,  <34.949547, 37.027924, 27.947281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168507, 37.346531, 28.049974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097205, 0.244185, -0.964844,
		-0.831206, 0.553112, 0.056242,
		0.547401, 0.796518, 0.256734,
		35.332726, 37.585487, 28.126995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729828, 37.749985, 27.592693>,  <34.949547, 37.027924, 27.947281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729828, 37.749985, 27.592693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113857, 37.762932, 27.703836>,  <35.344276, 37.770699, 27.770521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113857, 37.762932, 27.703836>,  <34.729828, 37.749985, 27.592693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113857, 37.762932, 27.703836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264683, 0.216327, -0.939758,
		-0.090526, 0.975784, 0.199123,
		0.960077, 0.032368, 0.277856,
		35.401882, 37.772644, 27.787193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145691, 38.220306, 27.420586>,  <34.729828, 37.749985, 27.592693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145691, 38.220306, 27.420586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977734, 37.968262, 27.159311>,  <33.876961, 37.817036, 27.002546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977734, 37.968262, 27.159311>,  <34.145691, 38.220306, 27.420586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977734, 37.968262, 27.159311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571165, -0.375845, 0.729734,
		-0.705310, 0.679485, -0.202083,
		-0.419891, -0.630112, -0.653185,
		33.851765, 37.779228, 26.963356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433109, 38.294662, 27.369034>,  <34.145691, 38.220306, 27.420586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433109, 38.294662, 27.369034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472420, 37.922134, 27.228756>,  <33.496006, 37.698616, 27.144590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472420, 37.922134, 27.228756>,  <33.433109, 38.294662, 27.369034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472420, 37.922134, 27.228756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710001, -0.312543, 0.631042,
		-0.697309, 0.186976, -0.691954,
		0.098276, -0.931319, -0.350693,
		33.501904, 37.642738, 27.123549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768917, 38.124893, 27.195314>,  <33.433109, 38.294662, 27.369034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768917, 38.124893, 27.195314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971912, 37.783188, 27.240374>,  <33.093708, 37.578163, 27.267408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971912, 37.783188, 27.240374>,  <32.768917, 38.124893, 27.195314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971912, 37.783188, 27.240374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688126, -0.323122, 0.649672,
		-0.518594, -0.407215, -0.751822,
		0.507487, -0.854265, 0.112646,
		33.124157, 37.526909, 27.274168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252171, 37.604668, 27.176077>,  <32.768917, 38.124893, 27.195314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252171, 37.604668, 27.176077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582291, 37.447033, 27.337852>,  <32.780361, 37.352451, 27.434917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582291, 37.447033, 27.337852>,  <32.252171, 37.604668, 27.176077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582291, 37.447033, 27.337852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564588, -0.561945, 0.604532,
		-0.010967, -0.727262, -0.686272,
		0.825300, -0.394091, 0.404441,
		32.829880, 37.328804, 27.459185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171379, 36.844284, 27.242146>,  <32.252171, 37.604668, 27.176077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171379, 36.844284, 27.242146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447578, 36.968754, 27.503338>,  <32.613297, 37.043434, 27.660053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447578, 36.968754, 27.503338>,  <32.171379, 36.844284, 27.242146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447578, 36.968754, 27.503338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541433, -0.376268, 0.751846,
		0.479649, -0.872694, -0.091334,
		0.690498, 0.311171, 0.652982,
		32.654728, 37.062107, 27.699232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321789, 36.276318, 27.746248>,  <32.171379, 36.844284, 27.242146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321789, 36.276318, 27.746248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447273, 36.612591, 27.922808>,  <32.522564, 36.814354, 28.028744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447273, 36.612591, 27.922808>,  <32.321789, 36.276318, 27.746248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447273, 36.612591, 27.922808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479142, -0.261178, 0.837979,
		0.819760, -0.474379, 0.320872,
		0.313715, 0.840685, 0.441398,
		32.541389, 36.864796, 28.055227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326420, 36.083179, 28.443850>,  <32.321789, 36.276318, 27.746248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326420, 36.083179, 28.443850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.414101, 36.467358, 28.512550>,  <32.466709, 36.697865, 28.553770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.414101, 36.467358, 28.512550>,  <32.326420, 36.083179, 28.443850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414101, 36.467358, 28.512550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481645, -0.046569, 0.875128,
		0.848510, -0.274551, 0.452385,
		0.219201, 0.960444, 0.171750,
		32.479862, 36.755489, 28.564075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662373, 36.138462, 29.068420>,  <32.326420, 36.083179, 28.443850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662373, 36.138462, 29.068420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471016, 36.479511, 28.984344>,  <32.356201, 36.684139, 28.933899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471016, 36.479511, 28.984344>,  <32.662373, 36.138462, 29.068420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471016, 36.479511, 28.984344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580061, -0.127113, 0.804594,
		0.659296, 0.506832, 0.555382,
		-0.478390, 0.852621, -0.210188,
		32.327499, 36.735298, 28.921288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555088, 36.476723, 29.725719>,  <32.662373, 36.138462, 29.068420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555088, 36.476723, 29.725719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.294571, 36.654972, 29.480042>,  <32.138260, 36.761921, 29.332634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.294571, 36.654972, 29.480042>,  <32.555088, 36.476723, 29.725719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294571, 36.654972, 29.480042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738442, -0.185860, 0.648198,
		0.174697, 0.875715, 0.450116,
		-0.651295, 0.445623, -0.614195,
		32.099182, 36.788658, 29.295782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296776, 36.998260, 30.076551>,  <32.555088, 36.476723, 29.725719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296776, 36.998260, 30.076551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005688, 36.910187, 29.816723>,  <31.831036, 36.857342, 29.660826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.005688, 36.910187, 29.816723>,  <32.296776, 36.998260, 30.076551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005688, 36.910187, 29.816723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667097, 0.007139, 0.744937,
		-0.159388, 0.975432, -0.152081,
		-0.727721, -0.220186, -0.649569,
		31.787371, 36.844131, 29.621853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627300, 37.226059, 30.334269>,  <32.296776, 36.998260, 30.076551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627300, 37.226059, 30.334269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481894, 37.004276, 30.034821>,  <31.394650, 36.871204, 29.855152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.481894, 37.004276, 30.034821>,  <31.627300, 37.226059, 30.334269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481894, 37.004276, 30.034821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754331, -0.296368, 0.585791,
		-0.546665, 0.777650, -0.310512,
		-0.363515, -0.554460, -0.748619,
		31.372839, 36.837936, 29.810234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966679, 37.383823, 30.313238>,  <31.627300, 37.226059, 30.334269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966679, 37.383823, 30.313238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.981174, 37.026550, 30.133944>,  <30.989872, 36.812187, 30.026367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.981174, 37.026550, 30.133944>,  <30.966679, 37.383823, 30.313238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981174, 37.026550, 30.133944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838343, -0.271307, 0.472836,
		-0.543938, 0.358642, -0.758622,
		0.036240, -0.893179, -0.448239,
		30.992046, 36.758598, 29.999472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303699, 37.256332, 30.202211>,  <30.966679, 37.383823, 30.313238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303699, 37.256332, 30.202211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481297, 36.898350, 30.184702>,  <30.587856, 36.683559, 30.174196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.481297, 36.898350, 30.184702>,  <30.303699, 37.256332, 30.202211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481297, 36.898350, 30.184702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617224, -0.340894, 0.709102,
		-0.649540, -0.287818, -0.703746,
		0.443995, -0.894959, -0.043776,
		30.614494, 36.629864, 30.171570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693655, 36.718117, 30.362801>,  <30.303699, 37.256332, 30.202211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693655, 36.718117, 30.362801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022818, 36.493233, 30.395643>,  <30.220316, 36.358303, 30.415348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022818, 36.493233, 30.395643>,  <29.693655, 36.718117, 30.362801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022818, 36.493233, 30.395643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374203, -0.427544, 0.822908,
		-0.427544, -0.707902, -0.562211,
		-0.822908, 0.562211, -0.082105,
		30.269690, 36.324570, 30.420275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961922, 36.834019, 29.934309>,  <29.693655, 36.718117, 30.362801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961922, 36.834019, 29.934309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.652533, 36.596905, 30.024059>,  <28.466900, 36.454636, 30.077909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.652533, 36.596905, 30.024059>,  <28.961922, 36.834019, 29.934309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652533, 36.596905, 30.024059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620009, 0.781135, -0.073599,
		-0.131639, -0.196042, -0.971720,
		-0.773472, -0.592787, 0.224376,
		28.420490, 36.419067, 30.091372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258368, 37.504711, 29.897968>,  <28.961922, 36.834019, 29.934309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258368, 37.504711, 29.897968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.231026, 37.872272, 30.053377>,  <29.214621, 38.092808, 30.146622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.231026, 37.872272, 30.053377>,  <29.258368, 37.504711, 29.897968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231026, 37.872272, 30.053377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150341, 0.394473, -0.906526,
		-0.986268, -0.003555, -0.165112,
		-0.068355, 0.918901, 0.388522,
		29.210520, 38.147942, 30.169933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753992, 37.934444, 29.535727>,  <29.258368, 37.504711, 29.897968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753992, 37.934444, 29.535727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.997042, 38.189911, 29.724577>,  <29.142872, 38.343189, 29.837887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.997042, 38.189911, 29.724577>,  <28.753992, 37.934444, 29.535727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997042, 38.189911, 29.724577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256177, 0.405075, -0.877660,
		-0.751775, 0.654236, 0.082522,
		0.607624, 0.638663, 0.472125,
		29.179329, 38.381508, 29.866215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731905, 38.472305, 29.037659>,  <28.753992, 37.934444, 29.535727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731905, 38.472305, 29.037659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.035425, 38.547501, 29.287102>,  <29.217537, 38.592617, 29.436768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.035425, 38.547501, 29.287102>,  <28.731905, 38.472305, 29.037659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035425, 38.547501, 29.287102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540494, 0.352518, -0.763935,
		-0.363441, 0.916729, 0.165886,
		0.758800, 0.187985, 0.623606,
		29.263065, 38.603897, 29.474184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995577, 38.910542, 28.613197>,  <28.731905, 38.472305, 29.037659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995577, 38.910542, 28.613197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282366, 38.850491, 28.885494>,  <29.454439, 38.814461, 29.048872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282366, 38.850491, 28.885494>,  <28.995577, 38.910542, 28.613197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282366, 38.850491, 28.885494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696877, 0.179055, -0.694479,
		-0.017629, 0.972317, 0.232999,
		0.716974, -0.150129, 0.680742,
		29.497458, 38.805450, 29.089718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343689, 39.631325, 28.730330>,  <28.995577, 38.910542, 28.613197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343689, 39.631325, 28.730330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561653, 39.296837, 28.755011>,  <29.692430, 39.096142, 28.769819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561653, 39.296837, 28.755011>,  <29.343689, 39.631325, 28.730330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561653, 39.296837, 28.755011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566818, 0.313128, -0.762016,
		0.617894, 0.450204, 0.644612,
		0.544908, -0.836222, 0.061704,
		29.725126, 39.045971, 28.773521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019142, 39.824223, 28.822027>,  <29.343689, 39.631325, 28.730330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019142, 39.824223, 28.822027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013395, 39.454044, 28.670580>,  <30.009947, 39.231937, 28.579712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013395, 39.454044, 28.670580>,  <30.019142, 39.824223, 28.822027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013395, 39.454044, 28.670580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605874, 0.293169, -0.739573,
		0.795431, -0.240022, 0.556488,
		-0.014369, -0.925441, -0.378619,
		30.009085, 39.176411, 28.556993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726086, 39.661171, 28.557589>,  <30.019142, 39.824223, 28.822027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726086, 39.661171, 28.557589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501612, 39.381554, 28.380314>,  <30.366928, 39.213783, 28.273949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501612, 39.381554, 28.380314>,  <30.726086, 39.661171, 28.557589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501612, 39.381554, 28.380314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602206, 0.022496, -0.798024,
		0.567821, -0.714728, 0.408342,
		-0.561184, -0.699040, -0.443187,
		30.333256, 39.171841, 28.247358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166567, 39.070744, 28.411192>,  <30.726086, 39.661171, 28.557589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166567, 39.070744, 28.411192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857704, 39.039696, 28.158924>,  <30.672386, 39.021069, 28.007563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.857704, 39.039696, 28.158924>,  <31.166567, 39.070744, 28.411192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857704, 39.039696, 28.158924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634807, -0.138132, -0.760223,
		-0.028110, -0.987368, 0.155932,
		-0.772159, -0.077617, -0.630671,
		30.626057, 39.016411, 27.969723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409359, 38.487568, 28.041161>,  <31.166567, 39.070744, 28.411192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409359, 38.487568, 28.041161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.129400, 38.703526, 27.854115>,  <30.961426, 38.833099, 27.741886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.129400, 38.703526, 27.854115>,  <31.409359, 38.487568, 28.041161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129400, 38.703526, 27.854115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609722, 0.110639, -0.784855,
		-0.372000, -0.834432, -0.406619,
		-0.699897, 0.539890, -0.467615,
		30.919432, 38.865494, 27.713831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449024, 38.264236, 27.253071>,  <31.409359, 38.487568, 28.041161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449024, 38.264236, 27.253071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256313, 38.612549, 27.292322>,  <31.140686, 38.821537, 27.315874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.256313, 38.612549, 27.292322>,  <31.449024, 38.264236, 27.253071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256313, 38.612549, 27.292322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392059, 0.314343, -0.864568,
		-0.783697, -0.378056, -0.492841,
		-0.481777, 0.870782, 0.098129,
		31.111780, 38.873783, 27.321760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289968, 38.441399, 26.521709>,  <31.449024, 38.264236, 27.253071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289968, 38.441399, 26.521709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.263693, 38.782230, 26.729420>,  <31.247927, 38.986729, 26.854046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.263693, 38.782230, 26.729420>,  <31.289968, 38.441399, 26.521709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263693, 38.782230, 26.729420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439904, 0.491826, -0.751393,
		-0.895639, 0.179072, -0.407141,
		-0.065689, 0.852080, 0.519273,
		31.243986, 39.037853, 26.885202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814062, 38.876984, 26.197109>,  <31.289968, 38.441399, 26.521709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814062, 38.876984, 26.197109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.038074, 39.114655, 26.428043>,  <31.172482, 39.257259, 26.566603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.038074, 39.114655, 26.428043>,  <30.814062, 38.876984, 26.197109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038074, 39.114655, 26.428043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194647, 0.582992, -0.788817,
		-0.805281, 0.554139, 0.210838,
		0.560031, 0.594181, 0.577334,
		31.206083, 39.292908, 26.601244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507217, 39.546917, 26.024309>,  <30.814062, 38.876984, 26.197109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507217, 39.546917, 26.024309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.876089, 39.588604, 26.173292>,  <31.097412, 39.613617, 26.262682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.876089, 39.588604, 26.173292>,  <30.507217, 39.546917, 26.024309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876089, 39.588604, 26.173292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214832, 0.662759, -0.717355,
		-0.321609, 0.741545, 0.588794,
		0.922179, 0.104216, 0.372457,
		31.152742, 39.619869, 26.285028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548613, 40.268322, 26.106747>,  <30.507217, 39.546917, 26.024309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548613, 40.268322, 26.106747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.919086, 40.122986, 26.147079>,  <31.141371, 40.035782, 26.171280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.919086, 40.122986, 26.147079>,  <30.548613, 40.268322, 26.106747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919086, 40.122986, 26.147079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316614, 0.604120, -0.731296,
		0.204798, 0.709239, 0.674565,
		0.926182, -0.363344, 0.100832,
		31.196941, 40.013981, 26.177330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929329, 40.903603, 26.051067>,  <30.548613, 40.268322, 26.106747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929329, 40.903603, 26.051067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167057, 40.590816, 25.975899>,  <31.309694, 40.403145, 25.930798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167057, 40.590816, 25.975899>,  <30.929329, 40.903603, 26.051067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167057, 40.590816, 25.975899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359867, 0.467545, -0.807402,
		0.719222, 0.412228, 0.559275,
		0.594320, -0.781965, -0.187921,
		31.345352, 40.356228, 25.919523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559502, 41.194817, 26.021849>,  <30.929329, 40.903603, 26.051067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559502, 41.194817, 26.021849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568844, 40.847076, 25.824390>,  <31.574450, 40.638432, 25.705915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.568844, 40.847076, 25.824390>,  <31.559502, 41.194817, 26.021849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568844, 40.847076, 25.824390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483262, 0.442075, -0.755664,
		0.875164, -0.220914, 0.430447,
		0.023353, -0.869348, -0.493648,
		31.575850, 40.586273, 25.676296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315266, 41.027370, 25.830038>,  <31.559502, 41.194817, 26.021849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315266, 41.027370, 25.830038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048901, 40.855785, 25.585890>,  <31.889082, 40.752834, 25.439400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048901, 40.855785, 25.585890>,  <32.315266, 41.027370, 25.830038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048901, 40.855785, 25.585890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456978, 0.412162, -0.788222,
		0.589688, -0.803813, -0.078438,
		-0.665912, -0.428961, -0.610373,
		31.849127, 40.727097, 25.402779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628460, 41.140892, 25.311144>,  <32.315266, 41.027370, 25.830038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628460, 41.140892, 25.311144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297260, 40.980751, 25.154100>,  <32.098541, 40.884666, 25.059875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297260, 40.980751, 25.154100>,  <32.628460, 41.140892, 25.311144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297260, 40.980751, 25.154100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228121, 0.399104, -0.888075,
		0.512231, -0.824886, -0.239129,
		-0.827998, -0.400349, -0.392607,
		32.048862, 40.860645, 25.036318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846642, 40.818787, 24.750065>,  <32.628460, 41.140892, 25.311144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846642, 40.818787, 24.750065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450916, 40.859707, 24.708504>,  <32.213482, 40.884258, 24.683567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450916, 40.859707, 24.708504>,  <32.846642, 40.818787, 24.750065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450916, 40.859707, 24.708504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132970, 0.340537, -0.930781,
		-0.059838, -0.934649, -0.350500,
		-0.989312, 0.102302, -0.103904,
		32.154121, 40.890396, 24.677332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728603, 40.401745, 24.311802>,  <32.846642, 40.818787, 24.750065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728603, 40.401745, 24.311802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470932, 40.707211, 24.328983>,  <32.316330, 40.890491, 24.339293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470932, 40.707211, 24.328983>,  <32.728603, 40.401745, 24.311802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470932, 40.707211, 24.328983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362162, 0.353996, -0.862279,
		-0.673700, -0.539906, -0.504608,
		-0.644179, 0.763668, 0.042953,
		32.277679, 40.936310, 24.341869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430893, 40.520908, 23.713739>,  <32.728603, 40.401745, 24.311802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430893, 40.520908, 23.713739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406250, 40.883720, 23.880354>,  <32.391464, 41.101406, 23.980322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406250, 40.883720, 23.880354>,  <32.430893, 40.520908, 23.713739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406250, 40.883720, 23.880354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622865, 0.361033, -0.694042,
		-0.779900, 0.216685, -0.587200,
		-0.061610, 0.907029, 0.416535,
		32.387768, 41.155830, 24.005314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424358, 40.952930, 23.082634>,  <32.430893, 40.520908, 23.713739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424358, 40.952930, 23.082634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489925, 41.197964, 23.391922>,  <32.529266, 41.344986, 23.577494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489925, 41.197964, 23.391922>,  <32.424358, 40.952930, 23.082634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489925, 41.197964, 23.391922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447187, 0.652514, -0.611759,
		-0.879292, 0.446052, -0.166982,
		0.163919, 0.612587, 0.773219,
		32.539101, 41.381741, 23.623888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865646, 41.611965, 23.043070>,  <32.424358, 40.952930, 23.082634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865646, 41.611965, 23.043070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188137, 41.717777, 23.254740>,  <32.381630, 41.781265, 23.381742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188137, 41.717777, 23.254740>,  <31.865646, 41.611965, 23.043070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188137, 41.717777, 23.254740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148939, 0.774907, -0.614277,
		-0.572555, 0.574060, 0.585351,
		0.806225, 0.264526, 0.529177,
		32.430004, 41.797134, 23.413492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808929, 42.337124, 23.168179>,  <31.865646, 41.611965, 23.043070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808929, 42.337124, 23.168179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183445, 42.196690, 23.164148>,  <32.408154, 42.112431, 23.161730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183445, 42.196690, 23.164148>,  <31.808929, 42.337124, 23.168179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183445, 42.196690, 23.164148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272135, 0.743280, -0.611128,
		0.222045, 0.569451, 0.791468,
		0.936290, -0.351084, -0.010074,
		32.464333, 42.091366, 23.161125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092010, 42.904327, 23.267738>,  <31.808929, 42.337124, 23.168179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092010, 42.904327, 23.267738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411171, 42.683838, 23.170164>,  <32.602669, 42.551544, 23.111620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411171, 42.683838, 23.170164>,  <32.092010, 42.904327, 23.267738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411171, 42.683838, 23.170164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309118, 0.721587, -0.619482,
		0.517495, 0.418881, 0.746149,
		0.797901, -0.551227, -0.243934,
		32.650539, 42.518471, 23.096985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550800, 43.415432, 23.197998>,  <32.092010, 42.904327, 23.267738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550800, 43.415432, 23.197998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685444, 43.090797, 23.006990>,  <32.766232, 42.896019, 22.892385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685444, 43.090797, 23.006990>,  <32.550800, 43.415432, 23.197998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685444, 43.090797, 23.006990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233299, 0.563180, -0.792717,
		0.912286, 0.155431, 0.378913,
		0.336609, -0.811585, -0.477519,
		32.786427, 42.847321, 22.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215946, 43.566685, 22.936754>,  <32.550800, 43.415432, 23.197998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215946, 43.566685, 22.936754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076233, 43.255802, 22.727394>,  <32.992405, 43.069271, 22.601778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076233, 43.255802, 22.727394>,  <33.215946, 43.566685, 22.936754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076233, 43.255802, 22.727394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192481, 0.487156, -0.851839,
		0.917035, -0.398276, -0.020556,
		-0.349281, -0.777210, -0.523400,
		32.971447, 43.022640, 22.570374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863552, 43.585373, 23.258678>,  <33.215946, 43.566685, 22.936754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863552, 43.585373, 23.258678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154781, 43.845268, 23.346090>,  <34.329517, 44.001205, 23.398537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.154781, 43.845268, 23.346090>,  <33.863552, 43.585373, 23.258678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154781, 43.845268, 23.346090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102509, -0.212008, 0.971877,
		0.677792, -0.729998, -0.087753,
		0.728073, 0.649734, 0.218528,
		34.373203, 44.040188, 23.411650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283447, 43.251289, 23.692787>,  <33.863552, 43.585373, 23.258678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283447, 43.251289, 23.692787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371483, 43.631557, 23.780233>,  <34.424305, 43.859718, 23.832701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371483, 43.631557, 23.780233>,  <34.283447, 43.251289, 23.692787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371483, 43.631557, 23.780233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077538, -0.206350, 0.975401,
		0.972393, -0.231626, 0.028298,
		0.220089, 0.950668, 0.218613,
		34.437511, 43.916759, 23.845818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768482, 43.254295, 24.216375>,  <34.283447, 43.251289, 23.692787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768482, 43.254295, 24.216375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611210, 43.619175, 24.262510>,  <34.516846, 43.838104, 24.290192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611210, 43.619175, 24.262510>,  <34.768482, 43.254295, 24.216375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611210, 43.619175, 24.262510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233626, -0.220439, 0.947009,
		0.889285, 0.345400, 0.299786,
		-0.393182, 0.912198, 0.115338,
		34.493256, 43.892834, 24.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089809, 43.462196, 24.875067>,  <34.768482, 43.254295, 24.216375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089809, 43.462196, 24.875067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772125, 43.682217, 24.771780>,  <34.581512, 43.814228, 24.709808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772125, 43.682217, 24.771780>,  <35.089809, 43.462196, 24.875067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772125, 43.682217, 24.771780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448429, -0.243796, 0.859927,
		0.410047, 0.798757, 0.440283,
		-0.794212, 0.550046, -0.258218,
		34.533863, 43.847229, 24.694315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003010, 43.909527, 25.516413>,  <35.089809, 43.462196, 24.875067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003010, 43.909527, 25.516413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665882, 43.857346, 25.307552>,  <34.463608, 43.826038, 25.182236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.665882, 43.857346, 25.307552>,  <35.003010, 43.909527, 25.516413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665882, 43.857346, 25.307552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476937, -0.268502, 0.836921,
		-0.249378, 0.954405, 0.164080,
		-0.842818, -0.130453, -0.522150,
		34.413036, 43.818211, 25.150908>
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
