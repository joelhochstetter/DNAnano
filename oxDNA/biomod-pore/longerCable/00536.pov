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
	<24.632843, 35.176479, 34.893005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343739, 35.082214, 35.152874>,  <24.170275, 35.025654, 35.308796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343739, 35.082214, 35.152874>,  <24.632843, 35.176479, 34.893005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343739, 35.082214, 35.152874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634958, 0.144688, 0.758876,
		-0.272840, 0.961004, 0.045062,
		-0.722763, -0.235664, 0.649674,
		24.126909, 35.011517, 35.347775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371189, 35.736027, 35.405716>,  <24.632843, 35.176479, 34.893005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371189, 35.736027, 35.405716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376266, 35.360332, 35.542934>,  <24.379313, 35.134918, 35.625267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376266, 35.360332, 35.542934>,  <24.371189, 35.736027, 35.405716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376266, 35.360332, 35.542934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668862, 0.262996, 0.695310,
		-0.743278, 0.220626, 0.631556,
		0.012694, -0.939232, 0.343048,
		24.380075, 35.078564, 35.645847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096680, 35.704029, 36.105770>,  <24.371189, 35.736027, 35.405716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096680, 35.704029, 36.105770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377365, 35.430210, 36.026783>,  <24.545776, 35.265919, 35.979389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377365, 35.430210, 36.026783>,  <24.096680, 35.704029, 36.105770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377365, 35.430210, 36.026783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617476, 0.446064, 0.647882,
		-0.355422, -0.576559, 0.735700,
		0.701711, -0.684549, -0.197471,
		24.587879, 35.224846, 35.967541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310369, 35.041161, 36.580715>,  <24.096680, 35.704029, 36.105770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310369, 35.041161, 36.580715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607162, 35.218502, 36.379559>,  <24.785238, 35.324909, 36.258865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607162, 35.218502, 36.379559>,  <24.310369, 35.041161, 36.580715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607162, 35.218502, 36.379559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422020, 0.273969, 0.864199,
		0.520924, -0.853450, 0.016175,
		0.741982, 0.443356, -0.502890,
		24.829758, 35.351509, 36.228691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158413, 34.701939, 36.647430>,  <24.310369, 35.041161, 36.580715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158413, 34.701939, 36.647430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046144, 35.085625, 36.634018>,  <24.978783, 35.315838, 36.625969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046144, 35.085625, 36.634018>,  <25.158413, 34.701939, 36.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046144, 35.085625, 36.634018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385236, 0.144587, 0.911421,
		0.879099, 0.242893, -0.410106,
		-0.280674, 0.959217, -0.033536,
		24.961943, 35.373390, 36.623959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768602, 35.303341, 36.602440>,  <25.158413, 34.701939, 36.647430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768602, 35.303341, 36.602440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427837, 35.406616, 36.784683>,  <25.223377, 35.468582, 36.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427837, 35.406616, 36.784683>,  <25.768602, 35.303341, 36.602440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427837, 35.406616, 36.784683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507814, 0.194741, 0.839167,
		0.127935, 0.946264, -0.297014,
		-0.851914, 0.258187, 0.455612,
		25.172264, 35.484074, 36.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663242, 36.057053, 36.933327>,  <25.768602, 35.303341, 36.602440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663242, 36.057053, 36.933327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524750, 35.763401, 37.166965>,  <25.441654, 35.587208, 37.307148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524750, 35.763401, 37.166965>,  <25.663242, 36.057053, 36.933327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524750, 35.763401, 37.166965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720435, 0.190740, 0.666777,
		-0.600914, 0.651667, 0.462853,
		-0.346232, -0.734131, 0.584102,
		25.420879, 35.543163, 37.342197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379393, 35.717628, 36.757435>,  <25.663242, 36.057053, 36.933327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379393, 35.717628, 36.757435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650312, 35.818092, 36.480831>,  <26.812864, 35.878368, 36.314869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.650312, 35.818092, 36.480831>,  <26.379393, 35.717628, 36.757435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650312, 35.818092, 36.480831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481006, 0.862380, -0.157903,
		0.556686, 0.439568, 0.704897,
		0.677299, 0.251158, -0.691510,
		26.853502, 35.893440, 36.273376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402044, 36.496113, 36.873558>,  <26.379393, 35.717628, 36.757435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402044, 36.496113, 36.873558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575302, 36.460613, 36.514778>,  <26.679256, 36.439316, 36.299511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575302, 36.460613, 36.514778>,  <26.402044, 36.496113, 36.873558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575302, 36.460613, 36.514778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381670, 0.883457, -0.271722,
		0.816527, 0.460031, 0.348791,
		0.433142, -0.088745, -0.896946,
		26.705244, 36.433990, 36.245693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774282, 37.066566, 36.779236>,  <26.402044, 36.496113, 36.873558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774282, 37.066566, 36.779236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706629, 36.942150, 36.405148>,  <26.666037, 36.867500, 36.180695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706629, 36.942150, 36.405148>,  <26.774282, 37.066566, 36.779236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706629, 36.942150, 36.405148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266387, 0.928006, -0.260465,
		0.948910, 0.205078, -0.239816,
		-0.169135, -0.311042, -0.935225,
		26.655888, 36.848839, 36.124580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010391, 37.596359, 36.341015>,  <26.774282, 37.066566, 36.779236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010391, 37.596359, 36.341015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764566, 37.389732, 36.102528>,  <26.617071, 37.265755, 35.959435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764566, 37.389732, 36.102528>,  <27.010391, 37.596359, 36.341015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764566, 37.389732, 36.102528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349946, 0.855869, -0.380823,
		0.707002, -0.025396, -0.706755,
		-0.614562, -0.516568, -0.596213,
		26.580198, 37.234760, 35.923664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154524, 37.956341, 35.632080>,  <27.010391, 37.596359, 36.341015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154524, 37.956341, 35.632080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799034, 37.773304, 35.643276>,  <26.585741, 37.663483, 35.649994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799034, 37.773304, 35.643276>,  <27.154524, 37.956341, 35.632080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799034, 37.773304, 35.643276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434050, 0.820207, -0.372640,
		0.147556, -0.343324, -0.927554,
		-0.888722, -0.457590, 0.027993,
		26.532417, 37.636028, 35.651672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802589, 38.034126, 34.995808>,  <27.154524, 37.956341, 35.632080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802589, 38.034126, 34.995808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495735, 37.972889, 35.244987>,  <26.311623, 37.936146, 35.394497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495735, 37.972889, 35.244987>,  <26.802589, 38.034126, 34.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495735, 37.972889, 35.244987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559563, 0.634556, -0.533130,
		-0.313679, -0.757562, -0.572455,
		-0.767134, -0.153094, 0.622951,
		26.265594, 37.926960, 35.431873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233654, 37.563751, 34.807339>,  <26.802589, 38.034126, 34.995808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233654, 37.563751, 34.807339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087078, 37.845398, 35.050629>,  <25.999132, 38.014385, 35.196602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087078, 37.845398, 35.050629>,  <26.233654, 37.563751, 34.807339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087078, 37.845398, 35.050629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379831, 0.483544, -0.788615,
		-0.849382, -0.520003, 0.090256,
		-0.366439, 0.704118, 0.608227,
		25.977146, 38.056633, 35.233097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540880, 37.609566, 34.955338>,  <26.233654, 37.563751, 34.807339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540880, 37.609566, 34.955338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700869, 37.976173, 34.957073>,  <25.796862, 38.196136, 34.958115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700869, 37.976173, 34.957073>,  <25.540880, 37.609566, 34.955338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700869, 37.976173, 34.957073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485590, 0.215922, -0.847101,
		-0.777319, 0.336711, 0.531414,
		0.399972, 0.916517, 0.004337,
		25.820860, 38.251129, 34.958374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362282, 37.088612, 35.558067>,  <25.540880, 37.609566, 34.955338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362282, 37.088612, 35.558067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742304, 37.209866, 35.528385>,  <25.970316, 37.282619, 35.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742304, 37.209866, 35.528385>,  <25.362282, 37.088612, 35.558067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742304, 37.209866, 35.528385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310889, -0.940066, 0.140085,
		-0.027289, -0.156157, -0.987355,
		0.950054, 0.303136, -0.074201,
		26.027321, 37.300808, 35.506126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757198, 36.517887, 35.273930>,  <25.362282, 37.088612, 35.558067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757198, 36.517887, 35.273930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032070, 36.756680, 35.439533>,  <26.196993, 36.899956, 35.538895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032070, 36.756680, 35.439533>,  <25.757198, 36.517887, 35.273930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032070, 36.756680, 35.439533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575558, -0.795101, 0.191172,
		0.443306, 0.106919, -0.889971,
		0.687177, 0.596978, 0.414011,
		26.238224, 36.935772, 35.563736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497190, 36.404598, 34.936195>,  <25.757198, 36.517887, 35.273930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497190, 36.404598, 34.936195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583187, 36.548550, 35.299351>,  <26.634785, 36.634918, 35.517246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583187, 36.548550, 35.299351>,  <26.497190, 36.404598, 34.936195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583187, 36.548550, 35.299351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652571, -0.744568, 0.140606,
		0.726588, 0.562234, -0.394921,
		0.214992, 0.359877, 0.907892,
		26.647684, 36.656513, 35.571720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197962, 36.302929, 35.043163>,  <26.497190, 36.404598, 34.936195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197962, 36.302929, 35.043163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059097, 36.339729, 35.416477>,  <26.975779, 36.361809, 35.640465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059097, 36.339729, 35.416477>,  <27.197962, 36.302929, 35.043163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059097, 36.339729, 35.416477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631957, -0.712338, 0.305296,
		0.692898, 0.695781, 0.189158,
		-0.347164, 0.092000, 0.933281,
		26.954948, 36.367329, 35.696461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716427, 36.526272, 35.510567>,  <27.197962, 36.302929, 35.043163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716427, 36.526272, 35.510567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451412, 36.305630, 35.713261>,  <27.292404, 36.173244, 35.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451412, 36.305630, 35.713261>,  <27.716427, 36.526272, 35.510567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451412, 36.305630, 35.713261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739065, -0.591397, 0.322540,
		0.121766, 0.588204, 0.799493,
		-0.662537, -0.551604, 0.506733,
		27.252651, 36.140148, 35.865280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268118, 35.982105, 35.499683>,  <27.716427, 36.526272, 35.510567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268118, 35.982105, 35.499683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907791, 35.931362, 35.665787>,  <27.691595, 35.900917, 35.765450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907791, 35.931362, 35.665787>,  <28.268118, 35.982105, 35.499683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907791, 35.931362, 35.665787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383384, -0.216577, -0.897837,
		0.203828, -0.967989, 0.146463,
		-0.900817, -0.126853, 0.415256,
		27.637547, 35.893307, 35.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109005, 35.261009, 35.574383>,  <28.268118, 35.982105, 35.499683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109005, 35.261009, 35.574383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817169, 35.528439, 35.516823>,  <27.642069, 35.688896, 35.482288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817169, 35.528439, 35.516823>,  <28.109005, 35.261009, 35.574383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817169, 35.528439, 35.516823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026627, -0.182482, -0.982848,
		-0.683369, -0.720905, 0.115334,
		-0.729587, 0.668577, -0.143898,
		27.598293, 35.729012, 35.473652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554028, 34.861671, 35.097881>,  <28.109005, 35.261009, 35.574383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554028, 34.861671, 35.097881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607704, 35.257938, 35.107449>,  <27.639910, 35.495697, 35.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607704, 35.257938, 35.107449>,  <27.554028, 34.861671, 35.097881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607704, 35.257938, 35.107449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223596, -0.006753, -0.974659,
		-0.965400, 0.136138, -0.222415,
		0.134190, 0.990667, 0.023921,
		27.647961, 35.555138, 35.114624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300930, 34.746979, 34.784214>,  <27.554028, 34.861671, 35.097881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300930, 34.746979, 34.784214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573133, 34.462879, 34.856274>,  <28.736456, 34.292419, 34.899509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573133, 34.462879, 34.856274>,  <28.300930, 34.746979, 34.784214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573133, 34.462879, 34.856274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532920, -0.648477, -0.543574,
		0.502897, 0.273901, -0.819800,
		0.680508, -0.710250, 0.180150,
		28.777287, 34.249805, 34.910320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773609, 34.392288, 34.234619>,  <28.300930, 34.746979, 34.784214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773609, 34.392288, 34.234619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703856, 34.109447, 34.508728>,  <28.662003, 33.939743, 34.673195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703856, 34.109447, 34.508728>,  <28.773609, 34.392288, 34.234619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703856, 34.109447, 34.508728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403567, -0.583479, -0.704759,
		0.898178, -0.399454, -0.183612,
		-0.174385, -0.707099, 0.685274,
		28.651541, 33.897316, 34.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187481, 33.875725, 34.660118>,  <28.773609, 34.392288, 34.234619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187481, 33.875725, 34.660118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081526, 33.521542, 34.812847>,  <29.017952, 33.309032, 34.904484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081526, 33.521542, 34.812847>,  <29.187481, 33.875725, 34.660118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081526, 33.521542, 34.812847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759264, -0.435620, -0.483480,
		0.594434, 0.161837, 0.787691,
		-0.264889, -0.885462, 0.381825,
		29.002060, 33.255901, 34.927395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679283, 33.559784, 35.044685>,  <29.187481, 33.875725, 34.660118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679283, 33.559784, 35.044685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432283, 33.274620, 34.911743>,  <29.284084, 33.103523, 34.831978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432283, 33.274620, 34.911743>,  <29.679283, 33.559784, 35.044685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432283, 33.274620, 34.911743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762520, -0.438861, -0.475356,
		0.193028, -0.546957, 0.814603,
		-0.617497, -0.712908, -0.332353,
		29.247034, 33.060749, 34.812038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940380, 32.975361, 35.272377>,  <29.679283, 33.559784, 35.044685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940380, 32.975361, 35.272377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749634, 32.930588, 34.923649>,  <29.635185, 32.903725, 34.714413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749634, 32.930588, 34.923649>,  <29.940380, 32.975361, 35.272377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749634, 32.930588, 34.923649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674487, -0.682600, -0.281292,
		-0.563620, -0.722170, 0.401003,
		-0.476865, -0.111929, -0.871821,
		29.606575, 32.897011, 34.662102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598539, 33.331318, 35.665073>,  <29.940380, 32.975361, 35.272377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598539, 33.331318, 35.665073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672993, 33.106350, 35.987328>,  <30.717665, 32.971371, 36.180679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672993, 33.106350, 35.987328>,  <30.598539, 33.331318, 35.665073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672993, 33.106350, 35.987328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170881, 0.788933, 0.590240,
		-0.967551, -0.247530, 0.050740,
		0.186133, -0.562417, 0.805631,
		30.728832, 32.937626, 36.229015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030323, 33.359905, 36.162136>,  <30.598539, 33.331318, 35.665073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030323, 33.359905, 36.162136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374662, 33.293800, 36.354645>,  <30.581266, 33.254135, 36.470150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374662, 33.293800, 36.354645>,  <30.030323, 33.359905, 36.162136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374662, 33.293800, 36.354645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303816, 0.591785, 0.746650,
		-0.408206, -0.788973, 0.459228,
		0.860850, -0.165266, 0.481273,
		30.632917, 33.244221, 36.499027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977882, 33.028168, 36.777855>,  <30.030323, 33.359905, 36.162136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977882, 33.028168, 36.777855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334497, 33.202000, 36.828918>,  <30.548466, 33.306301, 36.859554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334497, 33.202000, 36.828918>,  <29.977882, 33.028168, 36.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334497, 33.202000, 36.828918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386074, 0.581724, 0.715922,
		0.236867, -0.687557, 0.686411,
		0.891538, 0.434584, 0.127657,
		30.601959, 33.332375, 36.867214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080851, 33.063560, 37.517513>,  <29.977882, 33.028168, 36.777855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080851, 33.063560, 37.517513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303616, 33.343594, 37.338749>,  <30.437275, 33.511616, 37.231491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303616, 33.343594, 37.338749>,  <30.080851, 33.063560, 37.517513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303616, 33.343594, 37.338749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272289, 0.662232, 0.698075,
		0.784671, -0.267077, 0.559430,
		0.556911, 0.700086, -0.446912,
		30.470690, 33.553619, 37.204674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243851, 33.558800, 38.032959>,  <30.080851, 33.063560, 37.517513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243851, 33.558800, 38.032959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321218, 33.758335, 37.695023>,  <30.367640, 33.878056, 37.492260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321218, 33.758335, 37.695023>,  <30.243851, 33.558800, 38.032959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321218, 33.758335, 37.695023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306772, 0.848671, 0.430869,
		0.931923, 0.175835, 0.317179,
		0.193419, 0.498838, -0.844837,
		30.379244, 33.907986, 37.441570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627254, 34.124496, 38.295914>,  <30.243851, 33.558800, 38.032959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627254, 34.124496, 38.295914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495420, 34.221149, 37.930840>,  <30.416321, 34.279140, 37.711796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495420, 34.221149, 37.930840>,  <30.627254, 34.124496, 38.295914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495420, 34.221149, 37.930840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294374, 0.892204, 0.342516,
		0.897061, 0.381557, -0.222924,
		-0.329583, 0.241635, -0.912681,
		30.396545, 34.293640, 37.657036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971798, 34.752029, 37.937866>,  <30.627254, 34.124496, 38.295914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971798, 34.752029, 37.937866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583189, 34.748806, 37.843140>,  <30.350023, 34.746872, 37.786304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583189, 34.748806, 37.843140>,  <30.971798, 34.752029, 37.937866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583189, 34.748806, 37.843140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135269, 0.839413, 0.526392,
		0.194544, 0.543435, -0.816598,
		-0.971522, -0.008054, -0.236813,
		30.291733, 34.746391, 37.772095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837423, 35.430939, 37.783443>,  <30.971798, 34.752029, 37.937866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837423, 35.430939, 37.783443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498095, 35.293171, 37.944305>,  <30.294498, 35.210510, 38.040821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498095, 35.293171, 37.944305>,  <30.837423, 35.430939, 37.783443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498095, 35.293171, 37.944305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025487, 0.785200, 0.618718,
		-0.528870, 0.514621, -0.674879,
		-0.848320, -0.344422, 0.402152,
		30.243599, 35.189846, 38.064953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209200, 35.895451, 37.694672>,  <30.837423, 35.430939, 37.783443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209200, 35.895451, 37.694672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200270, 35.670506, 38.025307>,  <30.194912, 35.535538, 38.223690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200270, 35.670506, 38.025307>,  <30.209200, 35.895451, 37.694672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200270, 35.670506, 38.025307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266721, 0.800182, 0.537186,
		-0.963515, -0.208477, -0.167858,
		-0.022326, -0.562358, 0.826592,
		30.193571, 35.501797, 38.273285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661480, 36.209755, 38.077545>,  <30.209200, 35.895451, 37.694672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661480, 36.209755, 38.077545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917028, 36.025883, 38.324295>,  <30.070358, 35.915558, 38.472343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917028, 36.025883, 38.324295>,  <29.661480, 36.209755, 38.077545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917028, 36.025883, 38.324295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083531, 0.755660, 0.649616,
		-0.764764, -0.466551, 0.444372,
		0.638873, -0.459684, 0.616873,
		30.108690, 35.887978, 38.509357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391745, 36.219994, 38.755245>,  <29.661480, 36.209755, 38.077545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391745, 36.219994, 38.755245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789387, 36.234661, 38.714443>,  <30.027973, 36.243462, 38.689960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789387, 36.234661, 38.714443>,  <29.391745, 36.219994, 38.755245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789387, 36.234661, 38.714443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030706, 0.807265, 0.589390,
		0.103959, -0.589049, 0.801382,
		0.994107, 0.036665, -0.102009,
		30.087620, 36.245659, 38.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511106, 35.567142, 38.346012>,  <29.391745, 36.219994, 38.755245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511106, 35.567142, 38.346012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388374, 35.304573, 38.070343>,  <29.314735, 35.147030, 37.904942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388374, 35.304573, 38.070343>,  <29.511106, 35.567142, 38.346012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388374, 35.304573, 38.070343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031089, -0.716804, 0.696581,
		-0.951256, 0.235158, 0.199529,
		-0.306830, -0.656424, -0.689175,
		29.296326, 35.107647, 37.863590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865997, 35.276169, 38.517612>,  <29.511106, 35.567142, 38.346012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865997, 35.276169, 38.517612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124329, 35.043884, 38.319351>,  <29.279327, 34.904514, 38.200394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124329, 35.043884, 38.319351>,  <28.865997, 35.276169, 38.517612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124329, 35.043884, 38.319351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004119, -0.651847, 0.758339,
		-0.763472, -0.487715, -0.423373,
		0.645828, -0.580715, -0.495658,
		29.318077, 34.869671, 38.170654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641258, 34.547363, 38.766659>,  <28.865997, 35.276169, 38.517612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641258, 34.547363, 38.766659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522543, 34.166611, 38.797199>,  <28.451313, 33.938160, 38.815525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522543, 34.166611, 38.797199>,  <28.641258, 34.547363, 38.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522543, 34.166611, 38.797199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864918, -0.301840, -0.401012,
		0.404764, -0.052975, 0.912885,
		-0.296789, -0.951886, 0.076355,
		28.433506, 33.881046, 38.820107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061655, 34.073174, 39.108288>,  <28.641258, 34.547363, 38.766659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061655, 34.073174, 39.108288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886332, 33.845417, 38.830097>,  <28.781137, 33.708763, 38.663185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886332, 33.845417, 38.830097>,  <29.061655, 34.073174, 39.108288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886332, 33.845417, 38.830097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898526, -0.257632, -0.355355,
		0.023159, -0.780655, 0.624533,
		-0.438309, -0.569389, -0.695472,
		28.754839, 33.674599, 38.621456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435017, 34.159222, 38.450722>,  <29.061655, 34.073174, 39.108288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435017, 34.159222, 38.450722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423063, 34.386639, 38.779564>,  <29.415892, 34.523090, 38.976871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423063, 34.386639, 38.779564>,  <29.435017, 34.159222, 38.450722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423063, 34.386639, 38.779564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934367, 0.276265, -0.225023,
		-0.355056, -0.774875, 0.522976,
		-0.029885, 0.568547, 0.822108,
		29.414099, 34.557201, 39.026196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518225, 34.328709, 37.670307>,  <29.435017, 34.159222, 38.450722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518225, 34.328709, 37.670307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726715, 34.667889, 37.708885>,  <29.851810, 34.871395, 37.732033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726715, 34.667889, 37.708885>,  <29.518225, 34.328709, 37.670307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726715, 34.667889, 37.708885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537176, -0.238167, -0.809147,
		-0.663147, 0.473556, -0.579638,
		0.521227, 0.847951, 0.096443,
		29.883083, 34.922276, 37.737820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480375, 34.745266, 37.080872>,  <29.518225, 34.328709, 37.670307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480375, 34.745266, 37.080872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843872, 34.781467, 37.243843>,  <30.061970, 34.803188, 37.341625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843872, 34.781467, 37.243843>,  <29.480375, 34.745266, 37.080872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843872, 34.781467, 37.243843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369997, -0.626364, -0.686127,
		0.193103, 0.774260, -0.602688,
		0.908742, 0.090500, 0.407427,
		30.116495, 34.808617, 37.366070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044033, 34.835339, 36.518959>,  <29.480375, 34.745266, 37.080872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044033, 34.835339, 36.518959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171524, 34.663845, 36.857094>,  <30.248018, 34.560947, 37.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171524, 34.663845, 36.857094>,  <30.044033, 34.835339, 36.518959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171524, 34.663845, 36.857094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482608, -0.694184, -0.534039,
		0.815783, 0.578180, -0.014344,
		0.318729, -0.428738, 0.845338,
		30.267143, 34.535225, 37.110695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697453, 34.628544, 36.393738>,  <30.044033, 34.835339, 36.518959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697453, 34.628544, 36.393738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615892, 34.402237, 36.713322>,  <30.566956, 34.266453, 36.905071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615892, 34.402237, 36.713322>,  <30.697453, 34.628544, 36.393738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615892, 34.402237, 36.713322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660457, -0.681908, -0.314322,
		0.722649, 0.463588, 0.512703,
		-0.203900, -0.565763, 0.798960,
		30.554722, 34.232510, 36.953011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231430, 34.454872, 36.744209>,  <30.697453, 34.628544, 36.393738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231430, 34.454872, 36.744209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027163, 34.167912, 36.933758>,  <30.904602, 33.995735, 37.047489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027163, 34.167912, 36.933758>,  <31.231430, 34.454872, 36.744209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027163, 34.167912, 36.933758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534253, -0.696610, -0.478862,
		0.673641, 0.008630, 0.739008,
		-0.510668, -0.717398, 0.473876,
		30.873962, 33.952694, 37.075920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709826, 33.872089, 36.929153>,  <31.231430, 34.454872, 36.744209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709826, 33.872089, 36.929153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345371, 33.707344, 36.934826>,  <31.126699, 33.608498, 36.938229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345371, 33.707344, 36.934826>,  <31.709826, 33.872089, 36.929153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345371, 33.707344, 36.934826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353556, -0.798900, -0.486577,
		0.211733, -0.438323, 0.873523,
		-0.911135, -0.411863, 0.014182,
		31.072031, 33.583786, 36.939079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731647, 33.242924, 37.313076>,  <31.709826, 33.872089, 36.929153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731647, 33.242924, 37.313076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459084, 33.224091, 37.020924>,  <31.295546, 33.212791, 36.845631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459084, 33.224091, 37.020924>,  <31.731647, 33.242924, 37.313076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459084, 33.224091, 37.020924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489037, -0.771752, -0.406500,
		-0.544537, -0.634179, 0.548905,
		-0.681412, -0.047080, -0.730385,
		31.254660, 33.209965, 36.801807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637209, 32.461452, 37.152905>,  <31.731647, 33.242924, 37.313076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637209, 32.461452, 37.152905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474831, 32.695068, 36.871735>,  <31.377403, 32.835239, 36.703033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474831, 32.695068, 36.871735>,  <31.637209, 32.461452, 37.152905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474831, 32.695068, 36.871735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207230, -0.690291, -0.693220,
		-0.890092, -0.427077, 0.159191,
		-0.405947, 0.584040, -0.702926,
		31.353046, 32.870281, 36.660858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156235, 32.090836, 36.666187>,  <31.637209, 32.461452, 37.152905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156235, 32.090836, 36.666187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307781, 32.415329, 36.488037>,  <31.398708, 32.610027, 36.381149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307781, 32.415329, 36.488037>,  <31.156235, 32.090836, 36.666187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307781, 32.415329, 36.488037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351995, -0.571395, -0.741355,
		-0.855897, 0.124105, -0.502034,
		0.378866, 0.811237, -0.445371,
		31.421440, 32.658699, 36.354427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767746, 32.312317, 36.039986>,  <31.156235, 32.090836, 36.666187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767746, 32.312317, 36.039986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163090, 32.367962, 36.015354>,  <31.400297, 32.401348, 36.000576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163090, 32.367962, 36.015354>,  <30.767746, 32.312317, 36.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163090, 32.367962, 36.015354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051676, -0.687713, -0.724141,
		-0.143086, 0.712530, -0.686897,
		0.988360, 0.139110, -0.061581,
		31.459599, 32.409695, 35.996880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098192, 32.813797, 35.413525>,  <30.767746, 32.312317, 36.039986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098192, 32.813797, 35.413525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320040, 32.502705, 35.531864>,  <31.453148, 32.316048, 35.602867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320040, 32.502705, 35.531864>,  <31.098192, 32.813797, 35.413525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320040, 32.502705, 35.531864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221552, -0.480734, -0.848416,
		0.802067, 0.405002, -0.438933,
		0.554620, -0.777733, 0.295852,
		31.486425, 32.269386, 35.620621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462702, 32.539452, 34.813114>,  <31.098192, 32.813797, 35.413525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462702, 32.539452, 34.813114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415836, 32.246315, 35.081211>,  <31.387716, 32.070435, 35.242069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415836, 32.246315, 35.081211>,  <31.462702, 32.539452, 34.813114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415836, 32.246315, 35.081211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376576, -0.591702, -0.712797,
		0.918947, -0.335910, -0.206643,
		-0.117165, -0.732839, 0.670238,
		31.380688, 32.026463, 35.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519190, 31.937634, 34.468712>,  <31.462702, 32.539452, 34.813114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519190, 31.937634, 34.468712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311588, 31.828533, 34.792747>,  <31.187027, 31.763073, 34.987167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311588, 31.828533, 34.792747>,  <31.519190, 31.937634, 34.468712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311588, 31.828533, 34.792747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559570, -0.608005, -0.563215,
		0.646156, -0.745611, 0.162932,
		-0.519003, -0.272753, 0.810088,
		31.155888, 31.746708, 35.035774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768702, 31.961132, 34.436249>,  <31.519190, 31.937634, 34.468712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768702, 31.961132, 34.436249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582661, 32.232674, 34.208973>,  <30.471037, 32.395599, 34.072609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582661, 32.232674, 34.208973>,  <30.768702, 31.961132, 34.436249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582661, 32.232674, 34.208973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064262, 0.666030, 0.743151,
		0.882922, 0.309128, -0.353397,
		-0.465102, 0.678854, -0.568187,
		30.443130, 32.436329, 34.038517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395323, 31.341459, 34.078011>,  <30.768702, 31.961132, 34.436249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395323, 31.341459, 34.078011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350042, 31.058950, 34.357544>,  <30.322874, 30.889444, 34.525265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350042, 31.058950, 34.357544>,  <30.395323, 31.341459, 34.078011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350042, 31.058950, 34.357544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733889, 0.414696, 0.537990,
		-0.669771, 0.573765, 0.471382,
		-0.113200, -0.706272, 0.698831,
		30.316082, 30.847069, 34.567192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165001, 31.646397, 34.682163>,  <30.395323, 31.341459, 34.078011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165001, 31.646397, 34.682163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384085, 31.319685, 34.754696>,  <30.515535, 31.123657, 34.798218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384085, 31.319685, 34.754696>,  <30.165001, 31.646397, 34.682163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384085, 31.319685, 34.754696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465811, 0.477724, 0.744849,
		-0.695005, -0.323495, 0.642120,
		0.547711, -0.816780, 0.181333,
		30.548399, 31.074652, 34.809097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214334, 31.437965, 35.364910>,  <30.165001, 31.646397, 34.682163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214334, 31.437965, 35.364910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553596, 31.274225, 35.230408>,  <30.757154, 31.175982, 35.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553596, 31.274225, 35.230408>,  <30.214334, 31.437965, 35.364910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553596, 31.274225, 35.230408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490076, 0.365297, 0.791444,
		-0.201144, -0.836057, 0.510440,
		0.848155, -0.409349, -0.336254,
		30.808043, 31.151421, 35.129532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729591, 31.048132, 35.868610>,  <30.214334, 31.437965, 35.364910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729591, 31.048132, 35.868610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983959, 31.226070, 35.616348>,  <31.136580, 31.332832, 35.464993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983959, 31.226070, 35.616348>,  <30.729591, 31.048132, 35.868610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983959, 31.226070, 35.616348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473024, 0.421017, 0.773947,
		0.609801, -0.790480, 0.057310,
		0.635918, 0.444844, -0.630652,
		31.174734, 31.359524, 35.427151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364412, 30.977020, 36.102848>,  <30.729591, 31.048132, 35.868610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364412, 30.977020, 36.102848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379610, 31.299578, 35.866787>,  <31.388729, 31.493113, 35.725151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379610, 31.299578, 35.866787>,  <31.364412, 30.977020, 36.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379610, 31.299578, 35.866787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444500, 0.515297, 0.732726,
		0.894973, -0.290165, -0.338863,
		0.037996, 0.806395, -0.590155,
		31.391008, 31.541496, 35.689739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077171, 31.278076, 36.053051>,  <31.364412, 30.977020, 36.102848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077171, 31.278076, 36.053051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773998, 31.538990, 36.050072>,  <31.592093, 31.695538, 36.048286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773998, 31.538990, 36.050072>,  <32.077171, 31.278076, 36.053051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773998, 31.538990, 36.050072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326740, 0.389493, 0.861125,
		0.564599, 0.650246, -0.508339,
		-0.757937, 0.652285, -0.007446,
		31.546618, 31.734676, 36.047836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242825, 30.957579, 35.424248>,  <32.077171, 31.278076, 36.053051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242825, 30.957579, 35.424248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290016, 30.628780, 35.201389>,  <32.318333, 30.431501, 35.067677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290016, 30.628780, 35.201389>,  <32.242825, 30.957579, 35.424248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290016, 30.628780, 35.201389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911845, 0.311850, -0.267000,
		0.393217, -0.476525, 0.786323,
		0.117983, -0.821994, -0.557141,
		32.325413, 30.382183, 35.034248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844704, 30.602016, 35.629601>,  <32.242825, 30.957579, 35.424248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844704, 30.602016, 35.629601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778633, 30.476988, 35.255432>,  <32.738991, 30.401970, 35.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778633, 30.476988, 35.255432>,  <32.844704, 30.602016, 35.629601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778633, 30.476988, 35.255432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930945, 0.263771, -0.252520,
		0.325669, -0.912537, 0.247419,
		-0.165172, -0.312572, -0.935424,
		32.729080, 30.383217, 34.974804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457016, 30.058975, 35.353268>,  <32.844704, 30.602016, 35.629601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457016, 30.058975, 35.353268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257484, 30.250443, 35.064259>,  <33.137764, 30.365322, 34.890854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257484, 30.250443, 35.064259>,  <33.457016, 30.058975, 35.353268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257484, 30.250443, 35.064259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852989, 0.123453, -0.507118,
		-0.153542, -0.869274, -0.469880,
		-0.498833, 0.478666, -0.722526,
		33.107834, 30.394043, 34.847500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396511, 29.653730, 34.669331>,  <33.457016, 30.058975, 35.353268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396511, 29.653730, 34.669331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388626, 30.052475, 34.638649>,  <33.383896, 30.291721, 34.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388626, 30.052475, 34.638649>,  <33.396511, 29.653730, 34.669331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388626, 30.052475, 34.638649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843165, -0.024654, -0.537090,
		-0.537294, -0.075257, -0.840031,
		-0.019709, 0.996859, -0.076700,
		33.382713, 30.351532, 34.615639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393970, 29.890608, 33.936031>,  <33.396511, 29.653730, 34.669331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393970, 29.890608, 33.936031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564075, 30.182678, 34.149944>,  <33.666138, 30.357920, 34.278294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564075, 30.182678, 34.149944>,  <33.393970, 29.890608, 33.936031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564075, 30.182678, 34.149944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699407, 0.109893, -0.706225,
		-0.574437, 0.674364, -0.463956,
		0.425267, 0.730176, 0.534781,
		33.691654, 30.401731, 34.310379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583961, 30.311514, 33.454330>,  <33.393970, 29.890608, 33.936031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583961, 30.311514, 33.454330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811237, 30.421503, 33.764568>,  <33.947605, 30.487497, 33.950710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811237, 30.421503, 33.764568>,  <33.583961, 30.311514, 33.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811237, 30.421503, 33.764568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822888, -0.185938, -0.536920,
		-0.003426, 0.943301, -0.331920,
		0.568194, 0.274972, 0.775594,
		33.981697, 30.503994, 33.997246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936405, 30.815527, 33.210281>,  <33.583961, 30.311514, 33.454330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936405, 30.815527, 33.210281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150967, 30.668037, 33.513943>,  <34.279705, 30.579544, 33.696140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150967, 30.668037, 33.513943>,  <33.936405, 30.815527, 33.210281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150967, 30.668037, 33.513943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772061, -0.148913, -0.617857,
		0.340865, 0.917534, 0.204799,
		0.536407, -0.368723, 0.759151,
		34.311890, 30.557421, 33.741688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564163, 31.256742, 33.230076>,  <33.936405, 30.815527, 33.210281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564163, 31.256742, 33.230076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660290, 30.931250, 33.441769>,  <34.717964, 30.735954, 33.568783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660290, 30.931250, 33.441769>,  <34.564163, 31.256742, 33.230076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660290, 30.931250, 33.441769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925117, 0.026897, -0.378727,
		0.293948, 0.580617, 0.759262,
		0.240318, -0.813732, 0.529233,
		34.732384, 30.687130, 33.600540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289513, 31.396080, 33.516865>,  <34.564163, 31.256742, 33.230076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289513, 31.396080, 33.516865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236481, 30.999861, 33.530941>,  <35.204662, 30.762129, 33.539387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236481, 30.999861, 33.530941>,  <35.289513, 31.396080, 33.516865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236481, 30.999861, 33.530941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884396, -0.134249, -0.447013,
		0.447512, -0.028141, 0.893835,
		-0.132576, -0.990548, 0.035191,
		35.196709, 30.702696, 33.541500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942543, 31.149307, 33.768486>,  <35.289513, 31.396080, 33.516865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942543, 31.149307, 33.768486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747711, 30.850557, 33.587406>,  <35.630814, 30.671309, 33.478760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747711, 30.850557, 33.587406>,  <35.942543, 31.149307, 33.768486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747711, 30.850557, 33.587406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747197, -0.088004, -0.658750,
		0.452164, -0.659117, 0.600926,
		-0.487078, -0.746873, -0.452698,
		35.601589, 30.626495, 33.451595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377487, 30.487513, 33.744019>,  <35.942543, 31.149307, 33.768486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377487, 30.487513, 33.744019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120979, 30.421043, 33.444378>,  <35.967075, 30.381163, 33.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120979, 30.421043, 33.444378>,  <36.377487, 30.487513, 33.744019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120979, 30.421043, 33.444378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766464, -0.092819, -0.635545,
		0.036078, -0.981719, 0.186886,
		-0.641273, -0.166171, -0.749104,
		35.928596, 30.371193, 33.219646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676140, 29.928654, 33.312759>,  <36.377487, 30.487513, 33.744019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676140, 29.928654, 33.312759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406437, 30.113350, 33.082218>,  <36.244617, 30.224167, 32.943893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406437, 30.113350, 33.082218>,  <36.676140, 29.928654, 33.312759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406437, 30.113350, 33.082218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651398, 0.004155, -0.758724,
		-0.347938, -0.887006, -0.303578,
		-0.674254, 0.461739, -0.576349,
		36.204159, 30.251871, 32.909313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621578, 29.512974, 32.732742>,  <36.676140, 29.928654, 33.312759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621578, 29.512974, 32.732742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495827, 29.878754, 32.630806>,  <36.420376, 30.098223, 32.569645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495827, 29.878754, 32.630806>,  <36.621578, 29.512974, 32.732742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495827, 29.878754, 32.630806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692321, 0.037180, -0.720631,
		-0.649507, -0.402983, -0.644783,
		-0.314375, 0.914452, -0.254845,
		36.401516, 30.153090, 32.554352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695225, 29.521843, 31.975740>,  <36.621578, 29.512974, 32.732742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695225, 29.521843, 31.975740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647713, 29.911575, 32.052235>,  <36.619205, 30.145414, 32.098133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647713, 29.911575, 32.052235>,  <36.695225, 29.521843, 31.975740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647713, 29.911575, 32.052235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581468, 0.224380, -0.782016,
		-0.804851, 0.018307, -0.593195,
		-0.118784, 0.974330, 0.191237,
		36.612076, 30.203875, 32.109608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585754, 29.831343, 31.303339>,  <36.695225, 29.521843, 31.975740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585754, 29.831343, 31.303339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714596, 30.118839, 31.549805>,  <36.791901, 30.291338, 31.697685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714596, 30.118839, 31.549805>,  <36.585754, 29.831343, 31.303339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714596, 30.118839, 31.549805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609421, 0.340650, -0.715936,
		-0.724470, 0.606108, -0.328293,
		0.322102, 0.718742, 0.616166,
		36.811226, 30.334461, 31.734653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615070, 30.439548, 30.911489>,  <36.585754, 29.831343, 31.303339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615070, 30.439548, 30.911489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869354, 30.530037, 31.206703>,  <37.021927, 30.584330, 31.383831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869354, 30.530037, 31.206703>,  <36.615070, 30.439548, 30.911489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869354, 30.530037, 31.206703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539914, 0.553007, -0.634568,
		-0.551689, 0.801878, 0.229415,
		0.635714, 0.226220, 0.738033,
		37.060070, 30.597902, 31.428114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587261, 31.166479, 31.056755>,  <36.615070, 30.439548, 30.911489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587261, 31.166479, 31.056755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952484, 31.056135, 31.176901>,  <37.171619, 30.989929, 31.248989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952484, 31.056135, 31.176901>,  <36.587261, 31.166479, 31.056755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952484, 31.056135, 31.176901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395648, 0.777780, -0.488385,
		-0.098895, 0.564766, 0.819304,
		0.913062, -0.275858, 0.300367,
		37.226402, 30.973377, 31.267012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812859, 31.797018, 31.091827>,  <36.587261, 31.166479, 31.056755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812859, 31.797018, 31.091827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141808, 31.572214, 31.127260>,  <37.339176, 31.437332, 31.148520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141808, 31.572214, 31.127260>,  <36.812859, 31.797018, 31.091827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141808, 31.572214, 31.127260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520360, 0.680016, -0.516531,
		0.230056, 0.470877, 0.851674,
		0.822375, -0.562008, 0.088583,
		37.388519, 31.403612, 31.153835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409283, 32.232140, 31.381807>,  <36.812859, 31.797018, 31.091827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409283, 32.232140, 31.381807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534798, 31.916485, 31.170601>,  <37.610107, 31.727093, 31.043877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534798, 31.916485, 31.170601>,  <37.409283, 32.232140, 31.381807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534798, 31.916485, 31.170601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456191, 0.613013, -0.645062,
		0.832722, -0.038461, 0.552354,
		0.313791, -0.789136, -0.528015,
		37.628937, 31.679745, 31.012196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114922, 32.375195, 31.204254>,  <37.409283, 32.232140, 31.381807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114922, 32.375195, 31.204254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017170, 32.083103, 30.949057>,  <37.958519, 31.907846, 30.795937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017170, 32.083103, 30.949057>,  <38.114922, 32.375195, 31.204254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017170, 32.083103, 30.949057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501361, 0.468024, -0.727730,
		0.830010, -0.497708, 0.251734,
		-0.244379, -0.730233, -0.637996,
		37.943855, 31.864033, 30.757658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708580, 32.059628, 30.984514>,  <38.114922, 32.375195, 31.204254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708580, 32.059628, 30.984514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436150, 32.022606, 30.693977>,  <38.272694, 32.000393, 30.519655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436150, 32.022606, 30.693977>,  <38.708580, 32.059628, 30.984514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436150, 32.022606, 30.693977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667378, 0.329643, -0.667789,
		0.301240, -0.939558, -0.162742,
		-0.681073, -0.092554, -0.726342,
		38.231827, 31.994839, 30.476074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106903, 32.155056, 30.315680>,  <38.708580, 32.059628, 30.984514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106903, 32.155056, 30.315680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730389, 32.135742, 30.182024>,  <38.504478, 32.124153, 30.101831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730389, 32.135742, 30.182024>,  <39.106903, 32.155056, 30.315680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730389, 32.135742, 30.182024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289248, 0.395068, -0.871927,
		0.174111, -0.917382, -0.357905,
		-0.941287, -0.048289, -0.334136,
		38.448002, 32.121254, 30.081783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076595, 31.698004, 29.758533>,  <39.106903, 32.155056, 30.315680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076595, 31.698004, 29.758533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740894, 31.910120, 29.710457>,  <38.539474, 32.037392, 29.681610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740894, 31.910120, 29.710457>,  <39.076595, 31.698004, 29.758533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740894, 31.910120, 29.710457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349834, 0.357383, -0.865964,
		-0.416259, -0.768810, -0.485449,
		-0.839253, 0.530292, -0.120192,
		38.489117, 32.069206, 29.674398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043137, 31.691113, 29.119932>,  <39.076595, 31.698004, 29.758533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043137, 31.691113, 29.119932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786522, 31.985453, 29.206608>,  <38.632553, 32.162056, 29.258614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786522, 31.985453, 29.206608>,  <39.043137, 31.691113, 29.119932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786522, 31.985453, 29.206608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355984, 0.535816, -0.765621,
		-0.679489, -0.414036, -0.605697,
		-0.641537, 0.735850, 0.216691,
		38.594059, 32.206207, 29.271616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783379, 31.808208, 28.494240>,  <39.043137, 31.691113, 29.119932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783379, 31.808208, 28.494240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735031, 32.135017, 28.719759>,  <38.706024, 32.331100, 28.855070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735031, 32.135017, 28.719759>,  <38.783379, 31.808208, 28.494240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735031, 32.135017, 28.719759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456915, 0.550008, -0.699085,
		-0.881261, 0.173114, -0.439785,
		-0.120864, 0.817020, 0.563799,
		38.698772, 32.380123, 28.888899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383003, 32.267567, 28.067993>,  <38.783379, 31.808208, 28.494240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383003, 32.267567, 28.067993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532318, 32.514732, 28.344788>,  <38.621906, 32.663033, 28.510864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532318, 32.514732, 28.344788>,  <38.383003, 32.267567, 28.067993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532318, 32.514732, 28.344788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368754, 0.585617, -0.721854,
		-0.851281, 0.524628, -0.009257,
		0.373284, 0.617914, 0.691984,
		38.644302, 32.700108, 28.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116493, 32.887455, 27.918753>,  <38.383003, 32.267567, 28.067993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116493, 32.887455, 27.918753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460590, 32.946686, 28.113916>,  <38.667049, 32.982224, 28.231014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460590, 32.946686, 28.113916>,  <38.116493, 32.887455, 27.918753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460590, 32.946686, 28.113916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334914, 0.557428, -0.759675,
		-0.384466, 0.816912, 0.429930,
		0.860243, 0.148080, 0.487908,
		38.718662, 32.991108, 28.260288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391075, 33.565388, 27.783318>,  <38.116493, 32.887455, 27.918753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391075, 33.565388, 27.783318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729301, 33.408546, 27.928242>,  <38.932240, 33.314442, 28.015196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729301, 33.408546, 27.928242>,  <38.391075, 33.565388, 27.783318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729301, 33.408546, 27.928242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533767, 0.607851, -0.587886,
		0.010278, 0.690489, 0.723270,
		0.845569, -0.392100, 0.362313,
		38.982971, 33.290916, 28.036936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775192, 34.147228, 27.963375>,  <38.391075, 33.565388, 27.783318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775192, 34.147228, 27.963375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021294, 33.834408, 27.923656>,  <39.168957, 33.646717, 27.899824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021294, 33.834408, 27.923656>,  <38.775192, 34.147228, 27.963375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021294, 33.834408, 27.923656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537475, 0.508281, -0.672882,
		0.576698, 0.360625, 0.733055,
		0.615255, -0.782049, -0.099298,
		39.205872, 33.599792, 27.893867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420887, 34.451065, 28.066166>,  <38.775192, 34.147228, 27.963375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420887, 34.451065, 28.066166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477249, 34.109528, 27.865726>,  <39.511066, 33.904606, 27.745462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477249, 34.109528, 27.865726>,  <39.420887, 34.451065, 28.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477249, 34.109528, 27.865726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586125, 0.479859, -0.652834,
		0.797873, -0.201717, 0.568074,
		0.140908, -0.853841, -0.501099,
		39.519520, 33.853374, 27.715397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989803, 34.604092, 27.894917>,  <39.420887, 34.451065, 28.066166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989803, 34.604092, 27.894917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939793, 34.282429, 27.662466>,  <39.909786, 34.089432, 27.522997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939793, 34.282429, 27.662466>,  <39.989803, 34.604092, 27.894917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939793, 34.282429, 27.662466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636355, 0.384378, -0.668809,
		0.761196, -0.453422, 0.463668,
		-0.125029, -0.804153, -0.581125,
		39.902283, 34.041183, 27.488129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707996, 34.496727, 27.599495>,  <39.989803, 34.604092, 27.894917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707996, 34.496727, 27.599495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443966, 34.299694, 27.372633>,  <40.285549, 34.181473, 27.236517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443966, 34.299694, 27.372633>,  <40.707996, 34.496727, 27.599495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443966, 34.299694, 27.372633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597908, 0.112552, -0.793623,
		0.454759, -0.862957, 0.220226,
		-0.660075, -0.492582, -0.567153,
		40.245945, 34.151920, 27.202486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048599, 34.050884, 27.229437>,  <40.707996, 34.496727, 27.599495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048599, 34.050884, 27.229437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721004, 34.109600, 27.007551>,  <40.524448, 34.144829, 26.874420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721004, 34.109600, 27.007551>,  <41.048599, 34.050884, 27.229437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721004, 34.109600, 27.007551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560818, 0.000235, -0.827939,
		-0.121401, -0.989168, -0.082514,
		-0.818990, 0.146788, -0.554715,
		40.475307, 34.153637, 26.841137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033607, 33.521042, 26.597700>,  <41.048599, 34.050884, 27.229437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033607, 33.521042, 26.597700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807796, 33.839062, 26.508966>,  <40.672310, 34.029873, 26.455727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807796, 33.839062, 26.508966>,  <41.033607, 33.521042, 26.597700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807796, 33.839062, 26.508966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315779, -0.040287, -0.947977,
		-0.762624, -0.605208, -0.228316,
		-0.564525, 0.795048, -0.221835,
		40.638439, 34.077576, 26.442415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723007, 33.339565, 25.920687>,  <41.033607, 33.521042, 26.597700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723007, 33.339565, 25.920687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684792, 33.735226, 25.965328>,  <40.661861, 33.972622, 25.992113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684792, 33.735226, 25.965328>,  <40.723007, 33.339565, 25.920687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684792, 33.735226, 25.965328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278669, 0.134212, -0.950963,
		-0.955623, -0.059755, -0.288468,
		-0.095540, 0.989150, 0.111604,
		40.656128, 34.031971, 25.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331886, 33.570049, 25.322119>,  <40.723007, 33.339565, 25.920687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331886, 33.570049, 25.322119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493774, 33.912685, 25.450157>,  <40.590908, 34.118267, 25.526979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493774, 33.912685, 25.450157>,  <40.331886, 33.570049, 25.322119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493774, 33.912685, 25.450157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133401, 0.290992, -0.947379,
		-0.904656, 0.426127, 0.003502,
		0.404723, 0.856586, 0.320094,
		40.615192, 34.169662, 25.546185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077076, 34.062634, 25.021851>,  <40.331886, 33.570049, 25.322119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077076, 34.062634, 25.021851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410648, 34.247913, 25.141853>,  <40.610790, 34.359081, 25.213856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410648, 34.247913, 25.141853>,  <40.077076, 34.062634, 25.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410648, 34.247913, 25.141853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064766, 0.457720, -0.886734,
		-0.548054, 0.758906, 0.351707,
		0.833931, 0.463200, 0.300007,
		40.660828, 34.386875, 25.231855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049164, 34.711105, 24.715025>,  <40.077076, 34.062634, 25.021851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049164, 34.711105, 24.715025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432037, 34.701057, 24.830379>,  <40.661762, 34.695030, 24.899591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432037, 34.701057, 24.830379>,  <40.049164, 34.711105, 24.715025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432037, 34.701057, 24.830379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244378, 0.604117, -0.758500,
		-0.155168, 0.796499, 0.584390,
		0.957185, -0.025117, 0.288386,
		40.719193, 34.693523, 24.916895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284962, 35.399879, 24.678352>,  <40.049164, 34.711105, 24.715025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284962, 35.399879, 24.678352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617615, 35.178406, 24.661329>,  <40.817207, 35.045521, 24.651115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617615, 35.178406, 24.661329>,  <40.284962, 35.399879, 24.678352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617615, 35.178406, 24.661329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279866, 0.484078, -0.829062,
		0.479643, 0.677567, 0.557535,
		0.831635, -0.553689, -0.042556,
		40.867104, 35.012299, 24.648561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820290, 35.857510, 24.452232>,  <40.284962, 35.399879, 24.678352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820290, 35.857510, 24.452232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925251, 35.486340, 24.346327>,  <40.988228, 35.263638, 24.282784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925251, 35.486340, 24.346327>,  <40.820290, 35.857510, 24.452232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925251, 35.486340, 24.346327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356991, 0.348264, -0.866758,
		0.896494, 0.132921, 0.422647,
		0.262403, -0.927925, -0.264765,
		41.003971, 35.207962, 24.266897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458405, 35.869308, 24.227009>,  <40.820290, 35.857510, 24.452232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458405, 35.869308, 24.227009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358044, 35.522366, 24.055084>,  <41.297829, 35.314201, 23.951929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358044, 35.522366, 24.055084>,  <41.458405, 35.869308, 24.227009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358044, 35.522366, 24.055084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439377, 0.293601, -0.848968,
		0.862552, -0.401859, 0.307431,
		-0.250903, -0.867357, -0.429813,
		41.282772, 35.262157, 23.926140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973484, 35.780846, 23.801949>,  <41.458405, 35.869308, 24.227009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973484, 35.780846, 23.801949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663143, 35.569244, 23.664421>,  <41.476940, 35.442284, 23.581903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663143, 35.569244, 23.664421>,  <41.973484, 35.780846, 23.801949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663143, 35.569244, 23.664421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172125, 0.346808, -0.922008,
		0.606981, -0.774522, -0.178018,
		-0.775853, -0.528999, -0.343820,
		41.430386, 35.410545, 23.561275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232742, 35.379852, 23.121794>,  <41.973484, 35.780846, 23.801949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232742, 35.379852, 23.121794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832909, 35.390766, 23.125526>,  <41.593010, 35.397316, 23.127766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832909, 35.390766, 23.125526>,  <42.232742, 35.379852, 23.121794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832909, 35.390766, 23.125526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005094, 0.151490, -0.988446,
		-0.028388, -0.988082, -0.151288,
		-0.999584, 0.027289, 0.009334,
		41.533035, 35.398952, 23.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038227, 35.178360, 22.438688>,  <42.232742, 35.379852, 23.121794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038227, 35.178360, 22.438688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692951, 35.340637, 22.558899>,  <41.485786, 35.438004, 22.631025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692951, 35.340637, 22.558899>,  <42.038227, 35.178360, 22.438688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692951, 35.340637, 22.558899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226849, 0.220127, -0.948727,
		-0.451051, -0.887104, -0.097979,
		-0.863187, 0.405698, 0.300527,
		41.433994, 35.462345, 22.649057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427094, 34.785496, 22.173166>,  <42.038227, 35.178360, 22.438688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427094, 34.785496, 22.173166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306973, 35.160446, 22.243750>,  <41.234901, 35.385418, 22.286100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306973, 35.160446, 22.243750>,  <41.427094, 34.785496, 22.173166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306973, 35.160446, 22.243750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367568, 0.056985, -0.928249,
		-0.880178, -0.343614, 0.327439,
		-0.300300, 0.937381, 0.176458,
		41.216881, 35.441662, 22.296686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790188, 34.788525, 21.841587>,  <41.427094, 34.785496, 22.173166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790188, 34.788525, 21.841587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936054, 35.153290, 21.916878>,  <41.023575, 35.372150, 21.962053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936054, 35.153290, 21.916878>,  <40.790188, 34.788525, 21.841587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936054, 35.153290, 21.916878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294504, 0.304728, -0.905764,
		-0.883339, 0.274865, 0.379686,
		0.364663, 0.911916, 0.188229,
		41.045452, 35.426865, 21.973347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275215, 35.313347, 21.586096>,  <40.790188, 34.788525, 21.841587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275215, 35.313347, 21.586096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627209, 35.502277, 21.606239>,  <40.838406, 35.615635, 21.618326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627209, 35.502277, 21.606239>,  <40.275215, 35.313347, 21.586096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627209, 35.502277, 21.606239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195552, 0.456852, -0.867782,
		-0.432882, 0.753787, 0.494387,
		0.879985, 0.472325, 0.050359,
		40.891205, 35.643974, 21.621347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568085, 36.002728, 21.752645>,  <40.275215, 35.313347, 21.586096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568085, 36.002728, 21.752645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418694, 36.214050, 22.057646>,  <40.329060, 36.340843, 22.240646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418694, 36.214050, 22.057646>,  <40.568085, 36.002728, 21.752645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418694, 36.214050, 22.057646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325978, 0.844299, -0.425319,
		-0.868478, 0.089712, -0.487542,
		-0.373475, 0.528309, 0.762500,
		40.306652, 36.372543, 22.286396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386982, 36.777985, 21.480371>,  <40.568085, 36.002728, 21.752645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386982, 36.777985, 21.480371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296524, 36.787796, 21.869884>,  <40.242249, 36.793682, 22.103592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296524, 36.787796, 21.869884>,  <40.386982, 36.777985, 21.480371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296524, 36.787796, 21.869884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275990, 0.957105, -0.088206,
		-0.934178, -0.288702, -0.209673,
		-0.226144, 0.024532, 0.973785,
		40.228680, 36.795155, 22.162020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386749, 37.437756, 21.879360>,  <40.386982, 36.777985, 21.480371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386749, 37.437756, 21.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508514, 37.694580, 22.160810>,  <40.581573, 37.848675, 22.329681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508514, 37.694580, 22.160810>,  <40.386749, 37.437756, 21.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508514, 37.694580, 22.160810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775042, 0.262475, -0.574820,
		-0.553754, 0.720322, -0.417724,
		0.304413, 0.642062, 0.703626,
		40.599838, 37.887199, 22.371899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373272, 38.271393, 21.796610>,  <40.386749, 37.437756, 21.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373272, 38.271393, 21.796610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657822, 38.150482, 22.050404>,  <40.828552, 38.077938, 22.202681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657822, 38.150482, 22.050404>,  <40.373272, 38.271393, 21.796610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657822, 38.150482, 22.050404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690388, 0.131559, -0.711377,
		0.131559, 0.944099, 0.302274,
		0.711377, -0.302274, 0.634486,
		40.871235, 38.059799, 22.240749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886044, 38.737434, 21.880735>,  <40.373272, 38.271393, 21.796610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886044, 38.737434, 21.880735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052917, 38.379059, 21.941725>,  <41.153042, 38.164032, 21.978317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052917, 38.379059, 21.941725>,  <40.886044, 38.737434, 21.880735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052917, 38.379059, 21.941725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824746, 0.302754, -0.477635,
		0.381770, 0.325014, 0.865227,
		0.417188, -0.895939, 0.152471,
		41.178074, 38.110275, 21.987467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547138, 38.785000, 22.179560>,  <40.886044, 38.737434, 21.880735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547138, 38.785000, 22.179560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550850, 38.442299, 21.973305>,  <41.553078, 38.236679, 21.849552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550850, 38.442299, 21.973305>,  <41.547138, 38.785000, 22.179560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550850, 38.442299, 21.973305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853098, 0.275800, -0.442897,
		0.521668, -0.435778, 0.733458,
		0.009283, -0.856757, -0.515637,
		41.553635, 38.185272, 21.818613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496490, 38.549431, 22.894836>,  <41.547138, 38.785000, 22.179560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496490, 38.549431, 22.894836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203033, 38.486740, 22.630350>,  <41.026958, 38.449123, 22.471659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203033, 38.486740, 22.630350>,  <41.496490, 38.549431, 22.894836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203033, 38.486740, 22.630350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666276, -0.025380, 0.745273,
		-0.133588, 0.987315, -0.085805,
		-0.733642, -0.156729, -0.661215,
		40.982941, 38.439720, 22.431986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884926, 39.011932, 23.036053>,  <41.496490, 38.549431, 22.894836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884926, 39.011932, 23.036053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803761, 38.671104, 22.843056>,  <40.755062, 38.466606, 22.727257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803761, 38.671104, 22.843056>,  <40.884926, 39.011932, 23.036053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803761, 38.671104, 22.843056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668681, -0.239386, 0.703960,
		-0.715327, 0.465475, -0.521191,
		-0.202910, -0.852072, -0.482494,
		40.742886, 38.415482, 22.698307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227982, 39.078106, 22.851820>,  <40.884926, 39.011932, 23.036053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227982, 39.078106, 22.851820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309486, 38.686527, 22.856483>,  <40.358391, 38.451580, 22.859282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309486, 38.686527, 22.856483>,  <40.227982, 39.078106, 22.851820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309486, 38.686527, 22.856483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819138, -0.163956, 0.549665,
		-0.536183, -0.121551, -0.835304,
		0.203765, -0.978951, 0.011657,
		40.370617, 38.392841, 22.859980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693874, 38.670223, 22.405777>,  <40.227982, 39.078106, 22.851820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693874, 38.670223, 22.405777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859261, 38.428947, 22.678598>,  <39.958492, 38.284180, 22.842291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859261, 38.428947, 22.678598>,  <39.693874, 38.670223, 22.405777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859261, 38.428947, 22.678598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871058, -0.043908, 0.489214,
		-0.265144, -0.796384, -0.543572,
		0.413470, -0.603195, 0.682054,
		39.983303, 38.247990, 22.883215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124088, 38.445156, 22.669895>,  <39.693874, 38.670223, 22.405777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124088, 38.445156, 22.669895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401920, 38.294159, 22.914864>,  <39.568619, 38.203560, 23.061846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401920, 38.294159, 22.914864>,  <39.124088, 38.445156, 22.669895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401920, 38.294159, 22.914864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683419, -0.080308, 0.725595,
		-0.224729, -0.922521, -0.313770,
		0.694575, -0.377499, 0.612422,
		39.610294, 38.180908, 23.098591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843258, 37.859871, 22.895512>,  <39.124088, 38.445156, 22.669895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843258, 37.859871, 22.895512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110573, 37.959469, 23.175913>,  <39.270962, 38.019226, 23.344152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110573, 37.959469, 23.175913>,  <38.843258, 37.859871, 22.895512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110573, 37.959469, 23.175913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711566, -0.060874, 0.699977,
		0.216959, -0.966591, 0.136491,
		0.668283, 0.248989, 0.701001,
		39.311058, 38.034164, 23.386213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647366, 37.443340, 23.443846>,  <38.843258, 37.859871, 22.895512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647366, 37.443340, 23.443846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855160, 37.735893, 23.620579>,  <38.979836, 37.911423, 23.726620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855160, 37.735893, 23.620579>,  <38.647366, 37.443340, 23.443846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855160, 37.735893, 23.620579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687432, 0.050606, 0.724483,
		0.507513, -0.680090, 0.529063,
		0.519488, 0.731380, 0.441833,
		39.011005, 37.955307, 23.753128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796520, 37.246281, 24.128935>,  <38.647366, 37.443340, 23.443846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796520, 37.246281, 24.128935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893547, 37.630165, 24.185661>,  <38.951763, 37.860497, 24.219698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893547, 37.630165, 24.185661>,  <38.796520, 37.246281, 24.128935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893547, 37.630165, 24.185661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524793, 0.006858, 0.851202,
		0.815937, -0.280898, 0.505314,
		0.242567, 0.959713, 0.141818,
		38.966316, 37.918079, 24.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287037, 37.323540, 24.705160>,  <38.796520, 37.246281, 24.128935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287037, 37.323540, 24.705160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062752, 37.651497, 24.658890>,  <38.928181, 37.848270, 24.631128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062752, 37.651497, 24.658890>,  <39.287037, 37.323540, 24.705160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062752, 37.651497, 24.658890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051930, 0.104608, 0.993157,
		0.826378, 0.562886, -0.016079,
		-0.560716, 0.819888, -0.115676,
		38.894539, 37.897465, 24.624187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410797, 37.699471, 25.291943>,  <39.287037, 37.323540, 24.705160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410797, 37.699471, 25.291943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056515, 37.845963, 25.177816>,  <38.843945, 37.933857, 25.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056515, 37.845963, 25.177816>,  <39.410797, 37.699471, 25.291943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056515, 37.845963, 25.177816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284099, 0.058494, 0.957009,
		0.367171, 0.928685, 0.052236,
		-0.885705, 0.366226, -0.285316,
		38.790802, 37.955830, 25.092222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255806, 38.167301, 25.809450>,  <39.410797, 37.699471, 25.291943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255806, 38.167301, 25.809450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909554, 38.076260, 25.631069>,  <38.701801, 38.021637, 25.524040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909554, 38.076260, 25.631069>,  <39.255806, 38.167301, 25.809450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909554, 38.076260, 25.631069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456086, -0.008980, 0.889890,
		-0.206545, 0.973713, -0.096033,
		-0.865635, -0.227601, -0.445952,
		38.649864, 38.007980, 25.497284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752312, 38.613216, 26.066774>,  <39.255806, 38.167301, 25.809450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752312, 38.613216, 26.066774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540482, 38.300686, 25.934664>,  <38.413383, 38.113167, 25.855398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540482, 38.300686, 25.934664>,  <38.752312, 38.613216, 26.066774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540482, 38.300686, 25.934664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367749, -0.139391, 0.919419,
		-0.764399, 0.608364, -0.213512,
		-0.529580, -0.781322, -0.330275,
		38.381607, 38.066288, 25.835581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070225, 38.837730, 26.187376>,  <38.752312, 38.613216, 26.066774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070225, 38.837730, 26.187376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072002, 38.440151, 26.143471>,  <38.073067, 38.201603, 26.117128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072002, 38.440151, 26.143471>,  <38.070225, 38.837730, 26.187376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072002, 38.440151, 26.143471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440695, -0.100475, 0.892016,
		-0.897646, 0.044410, -0.438474,
		0.004441, -0.993948, -0.109763,
		38.073334, 38.141968, 26.110542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396618, 38.683922, 26.382759>,  <38.070225, 38.837730, 26.187376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396618, 38.683922, 26.382759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612476, 38.347824, 26.403851>,  <37.741989, 38.146168, 26.416506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612476, 38.347824, 26.403851>,  <37.396618, 38.683922, 26.382759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612476, 38.347824, 26.403851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420235, -0.214565, 0.881682,
		-0.729513, -0.497952, -0.468888,
		0.539642, -0.840242, 0.052729,
		37.774368, 38.095753, 26.419670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971111, 38.063595, 26.568661>,  <37.396618, 38.683922, 26.382759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971111, 38.063595, 26.568661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340221, 37.952984, 26.676008>,  <37.561687, 37.886620, 26.740416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340221, 37.952984, 26.676008>,  <36.971111, 38.063595, 26.568661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340221, 37.952984, 26.676008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321864, -0.170186, 0.931365,
		-0.211873, -0.945817, -0.246047,
		0.922774, -0.276525, 0.268367,
		37.617054, 37.870026, 26.756519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977203, 37.339947, 26.728485>,  <36.971111, 38.063595, 26.568661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977203, 37.339947, 26.728485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308708, 37.468498, 26.911730>,  <37.507610, 37.545628, 27.021677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308708, 37.468498, 26.911730>,  <36.977203, 37.339947, 26.728485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308708, 37.468498, 26.911730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248651, -0.521899, 0.815962,
		0.501320, -0.790150, -0.352621,
		0.828764, 0.321378, 0.458110,
		37.557339, 37.564911, 27.049164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273102, 36.766438, 27.017342>,  <36.977203, 37.339947, 26.728485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273102, 36.766438, 27.017342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442261, 37.072964, 27.210798>,  <37.543758, 37.256882, 27.326872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442261, 37.072964, 27.210798>,  <37.273102, 36.766438, 27.017342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442261, 37.072964, 27.210798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420541, -0.306791, 0.853829,
		0.802683, -0.564476, 0.192527,
		0.422900, 0.766320, 0.483642,
		37.569130, 37.302860, 27.355890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444298, 36.509506, 27.582567>,  <37.273102, 36.766438, 27.017342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444298, 36.509506, 27.582567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436127, 36.899479, 27.671200>,  <37.431225, 37.133461, 27.724379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436127, 36.899479, 27.671200>,  <37.444298, 36.509506, 27.582567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436127, 36.899479, 27.671200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443807, -0.207440, 0.871782,
		0.895889, -0.080528, 0.436919,
		-0.020432, 0.974928, 0.221582,
		37.429996, 37.191956, 27.737675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808311, 36.521225, 28.229280>,  <37.444298, 36.509506, 27.582567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808311, 36.521225, 28.229280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583012, 36.849426, 28.190235>,  <37.447834, 37.046349, 28.166809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583012, 36.849426, 28.190235>,  <37.808311, 36.521225, 28.229280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583012, 36.849426, 28.190235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277642, -0.076667, 0.957621,
		0.778248, 0.566477, 0.270988,
		-0.563246, 0.820504, -0.097612,
		37.414040, 37.095577, 28.160952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021889, 36.975811, 28.807922>,  <37.808311, 36.521225, 28.229280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021889, 36.975811, 28.807922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665207, 37.122517, 28.701834>,  <37.451199, 37.210541, 28.638180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665207, 37.122517, 28.701834>,  <38.021889, 36.975811, 28.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665207, 37.122517, 28.701834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271390, 0.035693, 0.961807,
		0.362220, 0.929630, 0.067708,
		-0.891709, 0.366761, -0.265221,
		37.397694, 37.232544, 28.622267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803776, 37.410187, 29.369183>,  <38.021889, 36.975811, 28.807922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803776, 37.410187, 29.369183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466911, 37.330917, 29.168587>,  <37.264793, 37.283356, 29.048229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466911, 37.330917, 29.168587>,  <37.803776, 37.410187, 29.369183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466911, 37.330917, 29.168587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472264, -0.177801, 0.863339,
		-0.260258, 0.963905, 0.056146,
		-0.842160, -0.198175, -0.501492,
		37.214264, 37.271465, 29.018139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227589, 37.665031, 29.706850>,  <37.803776, 37.410187, 29.369183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227589, 37.665031, 29.706850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013878, 37.421085, 29.472719>,  <36.885651, 37.274715, 29.332241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013878, 37.421085, 29.472719>,  <37.227589, 37.665031, 29.706850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013878, 37.421085, 29.472719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635835, -0.166335, 0.753688,
		-0.557010, 0.774852, -0.298906,
		-0.534278, -0.609867, -0.585328,
		36.853596, 37.238125, 29.297121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550144, 37.917736, 29.792419>,  <37.227589, 37.665031, 29.706850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550144, 37.917736, 29.792419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550823, 37.534515, 29.677790>,  <36.551231, 37.304581, 29.609011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550823, 37.534515, 29.677790>,  <36.550144, 37.917736, 29.792419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550823, 37.534515, 29.677790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628998, -0.223809, 0.744494,
		-0.777405, 0.178992, -0.602996,
		0.001698, -0.958056, -0.286575,
		36.551334, 37.247097, 29.591818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964474, 37.829025, 29.865353>,  <36.550144, 37.917736, 29.792419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964474, 37.829025, 29.865353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118549, 37.461784, 29.828011>,  <36.210995, 37.241440, 29.805605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118549, 37.461784, 29.828011>,  <35.964474, 37.829025, 29.865353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118549, 37.461784, 29.828011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765396, -0.374353, 0.523477,
		-0.515554, -0.130185, -0.846910,
		0.385193, -0.918102, -0.093356,
		36.234108, 37.186356, 29.800003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347519, 37.367928, 29.608921>,  <35.964474, 37.829025, 29.865353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347519, 37.367928, 29.608921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638180, 37.168354, 29.797829>,  <35.812576, 37.048611, 29.911173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638180, 37.168354, 29.797829>,  <35.347519, 37.367928, 29.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638180, 37.168354, 29.797829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666783, -0.346656, 0.659720,
		-0.165442, -0.794289, -0.584580,
		0.726656, -0.498933, 0.472267,
		35.856178, 37.018673, 29.939508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105145, 36.667000, 29.675606>,  <35.347519, 37.367928, 29.608921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105145, 36.667000, 29.675606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401043, 36.711433, 29.941069>,  <35.578583, 36.738094, 30.100346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401043, 36.711433, 29.941069>,  <35.105145, 36.667000, 29.675606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401043, 36.711433, 29.941069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506121, -0.558079, 0.657563,
		0.443419, -0.822319, -0.356612,
		0.739744, 0.111087, 0.663656,
		35.622967, 36.744759, 30.140165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227932, 35.918873, 29.942762>,  <35.105145, 36.667000, 29.675606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227932, 35.918873, 29.942762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411934, 36.163670, 30.200092>,  <35.522335, 36.310547, 30.354490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411934, 36.163670, 30.200092>,  <35.227932, 35.918873, 29.942762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411934, 36.163670, 30.200092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246658, -0.607939, 0.754698,
		0.852970, -0.505844, -0.128701,
		0.460002, 0.611990, 0.643325,
		35.549934, 36.347267, 30.393089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788910, 35.545948, 30.377275>,  <35.227932, 35.918873, 29.942762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788910, 35.545948, 30.377275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685871, 35.869312, 30.588980>,  <35.624046, 36.063332, 30.716002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685871, 35.869312, 30.588980>,  <35.788910, 35.545948, 30.377275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685871, 35.869312, 30.588980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365012, -0.588572, 0.721352,
		0.894657, -0.007369, 0.446694,
		-0.257596, 0.808411, 0.529260,
		35.608593, 36.111835, 30.747757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029331, 35.381733, 31.011606>,  <35.788910, 35.545948, 30.377275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029331, 35.381733, 31.011606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754574, 35.665020, 31.076849>,  <35.589722, 35.834991, 31.115993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754574, 35.665020, 31.076849>,  <36.029331, 35.381733, 31.011606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754574, 35.665020, 31.076849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395695, -0.552694, 0.733454,
		0.609594, 0.439264, 0.659880,
		-0.686892, 0.708221, 0.163105,
		35.548508, 35.877487, 31.125780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075920, 35.453873, 31.683151>,  <36.029331, 35.381733, 31.011606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075920, 35.453873, 31.683151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719219, 35.603821, 31.581766>,  <35.505199, 35.693790, 31.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719219, 35.603821, 31.581766>,  <36.075920, 35.453873, 31.683151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719219, 35.603821, 31.581766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420612, -0.480066, 0.769820,
		0.166902, 0.793102, 0.585776,
		-0.891757, 0.374868, -0.253464,
		35.451691, 35.716282, 31.505728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754227, 35.677876, 32.305176>,  <36.075920, 35.453873, 31.683151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754227, 35.677876, 32.305176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435699, 35.634232, 32.067192>,  <35.244583, 35.608047, 31.924402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435699, 35.634232, 32.067192>,  <35.754227, 35.677876, 32.305176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435699, 35.634232, 32.067192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540847, -0.312013, 0.781110,
		-0.270860, 0.943792, 0.189451,
		-0.796316, -0.109107, -0.594959,
		35.196804, 35.601498, 31.888704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190968, 35.780903, 32.726833>,  <35.754227, 35.677876, 32.305176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190968, 35.780903, 32.726833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041210, 35.610069, 32.397610>,  <34.951355, 35.507568, 32.200077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041210, 35.610069, 32.397610>,  <35.190968, 35.780903, 32.726833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041210, 35.610069, 32.397610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502739, -0.652345, 0.567186,
		-0.779153, 0.626138, 0.029527,
		-0.374398, -0.427081, -0.823060,
		34.928890, 35.481945, 32.150692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516117, 35.747814, 32.785908>,  <35.190968, 35.780903, 32.726833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516117, 35.747814, 32.785908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577740, 35.455261, 32.520172>,  <34.614716, 35.279728, 32.360733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577740, 35.455261, 32.520172>,  <34.516117, 35.747814, 32.785908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577740, 35.455261, 32.520172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491544, -0.639988, 0.590592,
		-0.857117, 0.235563, -0.458105,
		0.154060, -0.731385, -0.664335,
		34.623959, 35.235847, 32.320873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967129, 35.246342, 32.913631>,  <34.516117, 35.747814, 32.785908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967129, 35.246342, 32.913631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237076, 35.011879, 32.734310>,  <34.399044, 34.871201, 32.626717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237076, 35.011879, 32.734310>,  <33.967129, 35.246342, 32.913631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237076, 35.011879, 32.734310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231167, -0.744853, 0.625904,
		-0.700796, -0.318771, -0.638178,
		0.674868, -0.586157, -0.448300,
		34.439537, 34.836033, 32.599819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745712, 34.584808, 33.049625>,  <33.967129, 35.246342, 32.913631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745712, 34.584808, 33.049625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106274, 34.475468, 32.915318>,  <34.322613, 34.409863, 32.834732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106274, 34.475468, 32.915318>,  <33.745712, 34.584808, 33.049625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106274, 34.475468, 32.915318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010171, -0.761925, 0.647585,
		-0.432854, -0.587153, -0.684024,
		0.901407, -0.273353, -0.335774,
		34.376694, 34.393463, 32.814587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711594, 33.839489, 32.824696>,  <33.745712, 34.584808, 33.049625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711594, 33.839489, 32.824696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101372, 33.904922, 32.886269>,  <34.335239, 33.944183, 32.923214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101372, 33.904922, 32.886269>,  <33.711594, 33.839489, 32.824696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101372, 33.904922, 32.886269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000808, -0.687861, 0.725842,
		0.224621, -0.707170, -0.670415,
		0.974446, 0.163581, 0.153937,
		34.393707, 33.953999, 32.932449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068130, 33.230415, 32.761936>,  <33.711594, 33.839489, 32.824696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068130, 33.230415, 32.761936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313610, 33.461288, 32.977432>,  <34.460896, 33.599812, 33.106728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313610, 33.461288, 32.977432>,  <34.068130, 33.230415, 32.761936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313610, 33.461288, 32.977432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061783, -0.645144, 0.761559,
		0.787122, -0.500650, -0.360261,
		0.613695, 0.577182, 0.538738,
		34.497719, 33.634441, 33.139053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403103, 32.783310, 33.335548>,  <34.068130, 33.230415, 32.761936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403103, 32.783310, 33.335548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456345, 33.149036, 33.488548>,  <34.488289, 33.368473, 33.580349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456345, 33.149036, 33.488548>,  <34.403103, 32.783310, 33.335548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456345, 33.149036, 33.488548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076054, -0.394216, 0.915866,
		0.988180, -0.092812, -0.122008,
		0.133101, 0.914319, 0.382497,
		34.496277, 33.423332, 33.603298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025845, 32.729412, 33.872021>,  <34.403103, 32.783310, 33.335548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025845, 32.729412, 33.872021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843430, 33.075298, 33.956203>,  <34.733978, 33.282829, 34.006714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843430, 33.075298, 33.956203>,  <35.025845, 32.729412, 33.872021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843430, 33.075298, 33.956203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054861, -0.208719, 0.976436,
		0.888266, 0.456841, 0.047745,
		-0.456042, 0.864715, 0.210461,
		34.706615, 33.334713, 34.019341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460239, 33.070076, 34.290825>,  <35.025845, 32.729412, 33.872021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460239, 33.070076, 34.290825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088619, 33.203423, 34.354996>,  <34.865646, 33.283432, 34.393497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088619, 33.203423, 34.354996>,  <35.460239, 33.070076, 34.290825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088619, 33.203423, 34.354996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097617, -0.197371, 0.975457,
		0.356848, 0.921907, 0.150825,
		-0.929048, 0.333366, 0.160425,
		34.809906, 33.303432, 34.403122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523438, 33.601383, 34.904682>,  <35.460239, 33.070076, 34.290825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523438, 33.601383, 34.904682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140038, 33.488773, 34.886703>,  <34.909996, 33.421207, 34.875916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140038, 33.488773, 34.886703>,  <35.523438, 33.601383, 34.904682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140038, 33.488773, 34.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021145, -0.087018, 0.995982,
		-0.284301, 0.955601, 0.077454,
		-0.958502, -0.281521, -0.044945,
		34.852486, 33.404316, 34.873219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211540, 33.943497, 35.356747>,  <35.523438, 33.601383, 34.904682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211540, 33.943497, 35.356747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927216, 33.671223, 35.285843>,  <34.756622, 33.507858, 35.243301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927216, 33.671223, 35.285843>,  <35.211540, 33.943497, 35.356747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927216, 33.671223, 35.285843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151895, -0.097525, 0.983573,
		-0.686790, 0.726057, -0.034071,
		-0.710808, -0.680683, -0.177264,
		34.713974, 33.467018, 35.232662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752640, 33.905495, 35.873409>,  <35.211540, 33.943497, 35.356747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752640, 33.905495, 35.873409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882133, 34.104416, 36.195374>,  <35.959831, 34.223770, 36.388554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882133, 34.104416, 36.195374>,  <35.752640, 33.905495, 35.873409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882133, 34.104416, 36.195374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133917, 0.818079, -0.559298,
		-0.936622, 0.288857, 0.198245,
		0.323736, 0.497302, 0.804913,
		35.979256, 34.253605, 36.436848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372330, 34.528721, 35.918663>,  <35.752640, 33.905495, 35.873409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372330, 34.528721, 35.918663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692501, 34.594589, 36.149208>,  <35.884605, 34.634109, 36.287537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692501, 34.594589, 36.149208>,  <35.372330, 34.528721, 35.918663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692501, 34.594589, 36.149208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144303, 0.880311, -0.451916,
		-0.581798, 0.444898, 0.680865,
		0.800430, 0.164673, 0.576363,
		35.932629, 34.643990, 36.322117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291058, 35.263016, 36.258198>,  <35.372330, 34.528721, 35.918663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291058, 35.263016, 36.258198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684502, 35.191315, 36.266029>,  <35.920567, 35.148293, 36.270729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684502, 35.191315, 36.266029>,  <35.291058, 35.263016, 36.258198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684502, 35.191315, 36.266029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173381, 0.910306, -0.375876,
		0.049554, 0.373110, 0.926463,
		0.983607, -0.179257, 0.019581,
		35.979584, 35.137539, 36.271904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688435, 35.934128, 36.402340>,  <35.291058, 35.263016, 36.258198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688435, 35.934128, 36.402340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956120, 35.698696, 36.220913>,  <36.116730, 35.557438, 36.112057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956120, 35.698696, 36.220913>,  <35.688435, 35.934128, 36.402340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956120, 35.698696, 36.220913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390047, 0.797792, -0.459772,
		0.632468, 0.130772, 0.763468,
		0.669214, -0.588580, -0.453570,
		36.156883, 35.522121, 36.084843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158058, 36.357571, 36.314930>,  <35.688435, 35.934128, 36.402340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158058, 36.357571, 36.314930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262356, 36.065704, 36.062077>,  <36.324936, 35.890583, 35.910366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262356, 36.065704, 36.062077>,  <36.158058, 36.357571, 36.314930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262356, 36.065704, 36.062077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463410, 0.669016, -0.581092,
		0.846913, -0.141418, 0.512581,
		0.260748, -0.729670, -0.632133,
		36.340580, 35.846802, 35.872437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968155, 36.305042, 36.246346>,  <36.158058, 36.357571, 36.314930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968155, 36.305042, 36.246346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791176, 36.141273, 35.927193>,  <36.684990, 36.043011, 35.735703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791176, 36.141273, 35.927193>,  <36.968155, 36.305042, 36.246346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791176, 36.141273, 35.927193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543864, 0.584915, -0.601736,
		0.713058, -0.700174, -0.036122,
		-0.442448, -0.409427, -0.797878,
		36.658440, 36.018444, 35.687828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510365, 36.136887, 35.702000>,  <36.968155, 36.305042, 36.246346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510365, 36.136887, 35.702000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187431, 36.091633, 35.470341>,  <36.993671, 36.064480, 35.331345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187431, 36.091633, 35.470341>,  <37.510365, 36.136887, 35.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187431, 36.091633, 35.470341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502186, 0.383659, -0.774993,
		0.309878, -0.916518, -0.252923,
		-0.807332, -0.113138, -0.579150,
		36.945232, 36.057690, 35.296597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773140, 35.951221, 35.016026>,  <37.510365, 36.136887, 35.702000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773140, 35.951221, 35.016026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415169, 36.120609, 34.959785>,  <37.200386, 36.222244, 34.926041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415169, 36.120609, 34.959785>,  <37.773140, 35.951221, 35.016026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415169, 36.120609, 34.959785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303875, 0.347681, -0.887005,
		-0.326740, -0.836533, -0.439833,
		-0.894931, 0.423474, -0.140600,
		37.146690, 36.247650, 34.917606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652962, 35.797970, 34.281372>,  <37.773140, 35.951221, 35.016026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652962, 35.797970, 34.281372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413517, 36.089127, 34.415142>,  <37.269852, 36.263821, 34.495403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413517, 36.089127, 34.415142>,  <37.652962, 35.797970, 34.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413517, 36.089127, 34.415142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221488, 0.551612, -0.804156,
		-0.769810, -0.407307, -0.491421,
		-0.598612, 0.727891, 0.334423,
		37.233932, 36.307495, 34.515469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269962, 36.016983, 33.615242>,  <37.652962, 35.797970, 34.281372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269962, 36.016983, 33.615242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228397, 36.297787, 33.897060>,  <37.203461, 36.466270, 34.066151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228397, 36.297787, 33.897060>,  <37.269962, 36.016983, 33.615242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228397, 36.297787, 33.897060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425125, 0.671756, -0.606640,
		-0.899151, 0.236486, -0.368243,
		-0.103908, 0.702010, 0.704546,
		37.197224, 36.508389, 34.108425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057381, 36.594830, 33.232067>,  <37.269962, 36.016983, 33.615242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057381, 36.594830, 33.232067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215740, 36.710102, 33.580830>,  <37.310757, 36.779266, 33.790089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215740, 36.710102, 33.580830>,  <37.057381, 36.594830, 33.232067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215740, 36.710102, 33.580830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497510, 0.730753, -0.467422,
		-0.771849, 0.618832, 0.145930,
		0.395895, 0.288178, 0.871907,
		37.334507, 36.796555, 33.842403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933849, 37.416172, 33.307945>,  <37.057381, 36.594830, 33.232067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933849, 37.416172, 33.307945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253315, 37.318558, 33.527977>,  <37.444992, 37.259991, 33.659996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253315, 37.318558, 33.527977>,  <36.933849, 37.416172, 33.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253315, 37.318558, 33.527977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507649, 0.764087, -0.398074,
		-0.323165, 0.597174, 0.734131,
		0.798660, -0.244037, 0.550081,
		37.492912, 37.245346, 33.693001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271099, 38.027458, 33.497532>,  <36.933849, 37.416172, 33.307945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271099, 38.027458, 33.497532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544308, 37.735313, 33.500549>,  <37.708233, 37.560028, 33.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544308, 37.735313, 33.500549>,  <37.271099, 38.027458, 33.497532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544308, 37.735313, 33.500549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622062, 0.576269, -0.530050,
		0.382782, 0.366727, 0.847933,
		0.683020, -0.730360, 0.007542,
		37.749214, 37.516205, 33.502811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895603, 38.340954, 33.593822>,  <37.271099, 38.027458, 33.497532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895603, 38.340954, 33.593822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004505, 37.977505, 33.467152>,  <38.069847, 37.759434, 33.391151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004505, 37.977505, 33.467152>,  <37.895603, 38.340954, 33.593822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004505, 37.977505, 33.467152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598135, 0.417605, -0.683988,
		0.753732, -0.003197, 0.657174,
		0.272253, -0.908623, -0.316675,
		38.086182, 37.704918, 33.372150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638474, 38.383667, 33.420673>,  <37.895603, 38.340954, 33.593822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638474, 38.383667, 33.420673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463833, 38.095543, 33.205070>,  <38.359047, 37.922668, 33.075710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463833, 38.095543, 33.205070>,  <38.638474, 38.383667, 33.420673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463833, 38.095543, 33.205070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549096, 0.261230, -0.793885,
		0.712649, -0.642579, 0.281467,
		-0.436606, -0.720314, -0.539003,
		38.332851, 37.879448, 33.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177750, 38.223530, 32.909073>,  <38.638474, 38.383667, 33.420673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177750, 38.223530, 32.909073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853626, 38.042149, 32.760593>,  <38.659153, 37.933319, 32.671505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853626, 38.042149, 32.760593>,  <39.177750, 38.223530, 32.909073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853626, 38.042149, 32.760593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303727, 0.216735, -0.927780,
		0.501155, -0.864528, -0.037896,
		-0.810304, -0.453451, -0.371198,
		38.610535, 37.906113, 32.649235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388409, 37.947746, 32.249897>,  <39.177750, 38.223530, 32.909073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388409, 37.947746, 32.249897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989410, 37.971004, 32.233757>,  <38.750011, 37.984959, 32.224075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989410, 37.971004, 32.233757>,  <39.388409, 37.947746, 32.249897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989410, 37.971004, 32.233757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050766, 0.190615, -0.980351,
		-0.049310, -0.979941, -0.193089,
		-0.997493, 0.058143, -0.040348,
		38.690163, 37.988449, 32.221653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161240, 37.406532, 31.675568>,  <39.388409, 37.947746, 32.249897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161240, 37.406532, 31.675568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899662, 37.699261, 31.752289>,  <38.742714, 37.874897, 31.798321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899662, 37.699261, 31.752289>,  <39.161240, 37.406532, 31.675568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899662, 37.699261, 31.752289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008016, 0.246806, -0.969032,
		-0.756500, -0.635231, -0.155531,
		-0.653945, 0.731826, 0.191801,
		38.703480, 37.918808, 31.809830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725117, 37.258080, 31.095575>,  <39.161240, 37.406532, 31.675568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725117, 37.258080, 31.095575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641819, 37.627777, 31.223581>,  <38.591839, 37.849594, 31.300385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641819, 37.627777, 31.223581>,  <38.725117, 37.258080, 31.095575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641819, 37.627777, 31.223581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016374, 0.323846, -0.945968,
		-0.977940, -0.202233, -0.052306,
		-0.208245, 0.924243, 0.320013,
		38.579346, 37.905048, 31.319586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172539, 37.550232, 30.637032>,  <38.725117, 37.258080, 31.095575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172539, 37.550232, 30.637032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375957, 37.858219, 30.791191>,  <38.498009, 38.043011, 30.883686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375957, 37.858219, 30.791191>,  <38.172539, 37.550232, 30.637032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375957, 37.858219, 30.791191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115847, 0.504713, -0.855479,
		-0.853205, 0.390405, 0.345869,
		0.508548, 0.769966, 0.385397,
		38.528522, 38.089211, 30.906811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925896, 38.182152, 30.262886>,  <38.172539, 37.550232, 30.637032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925896, 38.182152, 30.262886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274570, 38.275707, 30.435143>,  <38.483776, 38.331841, 30.538496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274570, 38.275707, 30.435143>,  <37.925896, 38.182152, 30.262886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274570, 38.275707, 30.435143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275680, 0.492486, -0.825505,
		-0.405165, 0.838303, 0.364815,
		0.871689, 0.233893, 0.430641,
		38.536076, 38.345875, 30.564335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941521, 38.833599, 30.206293>,  <37.925896, 38.182152, 30.262886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941521, 38.833599, 30.206293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320953, 38.714794, 30.250080>,  <38.548611, 38.643513, 30.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320953, 38.714794, 30.250080>,  <37.941521, 38.833599, 30.206293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320953, 38.714794, 30.250080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229989, 0.409060, -0.883049,
		0.217497, 0.862817, 0.456334,
		0.948578, -0.297012, 0.109469,
		38.605526, 38.625690, 30.282921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297020, 39.324486, 29.772541>,  <37.941521, 38.833599, 30.206293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297020, 39.324486, 29.772541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549110, 39.018574, 29.826094>,  <38.700367, 38.835026, 29.858225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549110, 39.018574, 29.826094>,  <38.297020, 39.324486, 29.772541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549110, 39.018574, 29.826094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431992, 0.202127, -0.878935,
		0.645130, 0.611767, 0.457765,
		0.630231, -0.764778, 0.133880,
		38.738178, 38.789139, 29.866259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950233, 39.547009, 29.412283>,  <38.297020, 39.324486, 29.772541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950233, 39.547009, 29.412283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015198, 39.154541, 29.454090>,  <39.054176, 38.919060, 29.479174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015198, 39.154541, 29.454090>,  <38.950233, 39.547009, 29.412283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015198, 39.154541, 29.454090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678438, 0.034125, -0.733865,
		0.716481, 0.190095, 0.671207,
		0.162409, -0.981172, 0.104518,
		39.063919, 38.860188, 29.485445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698513, 39.519180, 29.288692>,  <38.950233, 39.547009, 29.412283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698513, 39.519180, 29.288692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570763, 39.143730, 29.236555>,  <39.494114, 38.918461, 29.205273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570763, 39.143730, 29.236555>,  <39.698513, 39.519180, 29.288692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570763, 39.143730, 29.236555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640536, -0.112460, -0.759649,
		0.698364, -0.326104, 0.637138,
		-0.319377, -0.938621, -0.130343,
		39.474949, 38.862144, 29.197453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287792, 39.038891, 29.325838>,  <39.698513, 39.519180, 29.288692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287792, 39.038891, 29.325838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029190, 38.809490, 29.124596>,  <39.874027, 38.671848, 29.003849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029190, 38.809490, 29.124596>,  <40.287792, 39.038891, 29.325838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029190, 38.809490, 29.124596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659548, -0.088716, -0.746409,
		0.383437, -0.814383, 0.435611,
		-0.646509, -0.573506, -0.503107,
		39.835236, 38.637440, 28.973663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665298, 38.502533, 29.164085>,  <40.287792, 39.038891, 29.325838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665298, 38.502533, 29.164085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369804, 38.528679, 28.895760>,  <40.192509, 38.544369, 28.734764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369804, 38.528679, 28.895760>,  <40.665298, 38.502533, 29.164085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369804, 38.528679, 28.895760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662374, -0.113582, -0.740513,
		-0.124596, -0.991376, 0.040612,
		-0.738740, 0.065365, -0.670814,
		40.148182, 38.548290, 28.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903950, 37.979694, 28.729273>,  <40.665298, 38.502533, 29.164085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903950, 37.979694, 28.729273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611443, 38.167728, 28.531582>,  <40.435936, 38.280548, 28.412968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611443, 38.167728, 28.531582>,  <40.903950, 37.979694, 28.729273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611443, 38.167728, 28.531582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454607, -0.204283, -0.866949,
		-0.508503, -0.858655, -0.064317,
		-0.731271, 0.470086, -0.494229,
		40.392059, 38.308754, 28.383314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799702, 37.516121, 28.271484>,  <40.903950, 37.979694, 28.729273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799702, 37.516121, 28.271484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653942, 37.865307, 28.141785>,  <40.566486, 38.074818, 28.063965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653942, 37.865307, 28.141785>,  <40.799702, 37.516121, 28.271484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653942, 37.865307, 28.141785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264319, -0.236913, -0.934884,
		-0.892944, -0.426377, -0.144412,
		-0.364400, 0.872969, -0.324249,
		40.544621, 38.127197, 28.044510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498119, 37.425507, 27.492786>,  <40.799702, 37.516121, 28.271484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498119, 37.425507, 27.492786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577568, 37.815540, 27.532290>,  <40.625237, 38.049561, 27.555990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577568, 37.815540, 27.532290>,  <40.498119, 37.425507, 27.492786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577568, 37.815540, 27.532290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511408, -0.017154, -0.859167,
		-0.836070, 0.221150, -0.502075,
		0.198617, 0.975089, 0.098756,
		40.637154, 38.108067, 27.561916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230125, 37.739433, 26.864344>,  <40.498119, 37.425507, 27.492786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230125, 37.739433, 26.864344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489117, 38.008991, 27.006689>,  <40.644512, 38.170727, 27.092096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489117, 38.008991, 27.006689>,  <40.230125, 37.739433, 26.864344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489117, 38.008991, 27.006689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456240, 0.031259, -0.889307,
		-0.610423, 0.738166, -0.287218,
		0.647479, 0.673894, 0.355862,
		40.683361, 38.211159, 27.113447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292381, 38.286713, 26.398806>,  <40.230125, 37.739433, 26.864344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292381, 38.286713, 26.398806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638588, 38.273758, 26.598736>,  <40.846313, 38.265984, 26.718693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638588, 38.273758, 26.598736>,  <40.292381, 38.286713, 26.398806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638588, 38.273758, 26.598736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500795, 0.038410, -0.864713,
		0.008808, 0.998737, 0.049464,
		0.865521, -0.032388, 0.499824,
		40.898243, 38.264042, 26.748684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705635, 38.757172, 26.165512>,  <40.292381, 38.286713, 26.398806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705635, 38.757172, 26.165512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991184, 38.537453, 26.339249>,  <41.162514, 38.405621, 26.443491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991184, 38.537453, 26.339249>,  <40.705635, 38.757172, 26.165512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991184, 38.537453, 26.339249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628449, 0.228912, -0.743405,
		0.308928, 0.803659, 0.508622,
		0.713874, -0.549301, 0.434341,
		41.205345, 38.372662, 26.469551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370110, 39.118645, 26.031322>,  <40.705635, 38.757172, 26.165512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370110, 39.118645, 26.031322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489544, 38.752171, 26.138245>,  <41.561207, 38.532288, 26.202398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489544, 38.752171, 26.138245>,  <41.370110, 39.118645, 26.031322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489544, 38.752171, 26.138245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702175, 0.021200, -0.711689,
		0.646371, 0.400196, 0.649651,
		0.298588, -0.916184, 0.267305,
		41.579121, 38.477314, 26.218435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163284, 39.133549, 25.970495>,  <41.370110, 39.118645, 26.031322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163284, 39.133549, 25.970495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015392, 38.763065, 25.941013>,  <41.926659, 38.540775, 25.923325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015392, 38.763065, 25.941013>,  <42.163284, 39.133549, 25.970495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015392, 38.763065, 25.941013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769906, -0.260994, -0.582346,
		0.520139, -0.272055, 0.809593,
		-0.369730, -0.926212, -0.073704,
		41.904472, 38.485203, 25.918901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810833, 38.736660, 26.126415>,  <42.163284, 39.133549, 25.970495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810833, 38.736660, 26.126415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546303, 38.489067, 25.956940>,  <42.387585, 38.340511, 25.855255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546303, 38.489067, 25.956940>,  <42.810833, 38.736660, 26.126415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546303, 38.489067, 25.956940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722293, -0.373131, -0.582294,
		0.202338, -0.691112, 0.693847,
		-0.661326, -0.618981, -0.423687,
		42.347904, 38.303371, 25.829834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067848, 37.976097, 26.095285>,  <42.810833, 38.736660, 26.126415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067848, 37.976097, 26.095285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805386, 38.026379, 25.797653>,  <42.647907, 38.056545, 25.619074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805386, 38.026379, 25.797653>,  <43.067848, 37.976097, 26.095285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805386, 38.026379, 25.797653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658519, -0.386147, -0.645944,
		-0.368519, -0.913832, 0.170599,
		-0.656161, 0.125700, -0.744079,
		42.608536, 38.064091, 25.574430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444134, 37.717228, 25.591160>,  <43.067848, 37.976097, 26.095285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444134, 37.717228, 25.591160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133972, 37.863998, 25.385590>,  <42.947876, 37.952061, 25.262247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133972, 37.863998, 25.385590>,  <43.444134, 37.717228, 25.591160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133972, 37.863998, 25.385590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489037, -0.165955, -0.856330,
		-0.399498, -0.915328, -0.050758,
		-0.775399, 0.366925, -0.513927,
		42.901352, 37.974075, 25.231411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903084, 38.276390, 25.810760>,  <43.444134, 37.717228, 25.591160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903084, 38.276390, 25.810760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271751, 38.192493, 25.941317>,  <44.492954, 38.142155, 26.019651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271751, 38.192493, 25.941317>,  <43.903084, 38.276390, 25.810760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271751, 38.192493, 25.941317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335011, -0.005936, 0.942196,
		-0.195681, -0.977739, -0.075736,
		0.921670, -0.209742, 0.326391,
		44.548252, 38.129570, 26.039234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864964, 37.842365, 26.353571>,  <43.903084, 38.276390, 25.810760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864964, 37.842365, 26.353571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235668, 37.985069, 26.400608>,  <44.458092, 38.070694, 26.428829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235668, 37.985069, 26.400608>,  <43.864964, 37.842365, 26.353571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235668, 37.985069, 26.400608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176069, 0.136031, 0.974934,
		0.331825, -0.924238, 0.188884,
		0.926764, 0.356764, 0.117591,
		44.513699, 38.092098, 26.435884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080711, 37.464600, 26.869026>,  <43.864964, 37.842365, 26.353571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080711, 37.464600, 26.869026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321247, 37.782677, 26.900156>,  <44.465569, 37.973522, 26.918835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321247, 37.782677, 26.900156>,  <44.080711, 37.464600, 26.869026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321247, 37.782677, 26.900156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034135, -0.122882, 0.991834,
		0.798267, -0.593769, -0.101037,
		0.601336, 0.795197, 0.077824,
		44.501648, 38.021236, 26.923504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786449, 37.315266, 27.183104>,  <44.080711, 37.464600, 26.869026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786449, 37.315266, 27.183104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723999, 37.708565, 27.220745>,  <44.686531, 37.944542, 27.243330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723999, 37.708565, 27.220745>,  <44.786449, 37.315266, 27.183104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723999, 37.708565, 27.220745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073824, -0.106624, 0.991555,
		0.984975, 0.147858, 0.089233,
		-0.156124, 0.983244, 0.094106,
		44.677162, 38.003536, 27.248978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196228, 37.612560, 27.788990>,  <44.786449, 37.315266, 27.183104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196228, 37.612560, 27.788990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893002, 37.864174, 27.720118>,  <44.711063, 38.015144, 27.678793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893002, 37.864174, 27.720118>,  <45.196228, 37.612560, 27.788990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893002, 37.864174, 27.720118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144215, 0.095793, 0.984899,
		0.636030, 0.771452, 0.018099,
		-0.758068, 0.629036, -0.172183,
		44.665581, 38.052883, 27.668463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245300, 38.002934, 28.329201>,  <45.196228, 37.612560, 27.788990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245300, 38.002934, 28.329201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888821, 38.128014, 28.197756>,  <44.674934, 38.203064, 28.118889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888821, 38.128014, 28.197756>,  <45.245300, 38.002934, 28.329201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888821, 38.128014, 28.197756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247081, 0.272898, 0.929773,
		0.380419, 0.909804, -0.165943,
		-0.891197, 0.312702, -0.328611,
		44.621460, 38.221825, 28.099173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071995, 38.650108, 28.731392>,  <45.245300, 38.002934, 28.329201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071995, 38.650108, 28.731392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710846, 38.541401, 28.598148>,  <44.494156, 38.476177, 28.518202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710846, 38.541401, 28.598148>,  <45.071995, 38.650108, 28.731392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710846, 38.541401, 28.598148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405248, 0.279368, 0.870476,
		-0.143511, 0.920920, -0.362369,
		-0.902873, -0.271772, -0.333109,
		44.439983, 38.459869, 28.498217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554184, 39.181099, 29.011738>,  <45.071995, 38.650108, 28.731392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554184, 39.181099, 29.011738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311779, 38.877632, 28.916092>,  <44.166336, 38.695553, 28.858706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311779, 38.877632, 28.916092>,  <44.554184, 39.181099, 29.011738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311779, 38.877632, 28.916092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353441, -0.012482, 0.935373,
		-0.712620, 0.651361, -0.260580,
		-0.606013, -0.758665, -0.239113,
		44.129974, 38.650032, 28.844358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948608, 39.227730, 29.410707>,  <44.554184, 39.181099, 29.011738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948608, 39.227730, 29.410707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907272, 38.849140, 29.288395>,  <43.882473, 38.621986, 29.215008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907272, 38.849140, 29.288395>,  <43.948608, 39.227730, 29.410707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907272, 38.849140, 29.288395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501604, -0.215883, 0.837728,
		-0.858904, 0.239948, -0.452448,
		-0.103336, -0.946477, -0.305781,
		43.876270, 38.565197, 29.196661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273281, 39.214241, 29.328285>,  <43.948608, 39.227730, 29.410707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273281, 39.214241, 29.328285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453232, 38.863022, 29.393583>,  <43.561203, 38.652290, 29.432762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453232, 38.863022, 29.393583>,  <43.273281, 39.214241, 29.328285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453232, 38.863022, 29.393583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716651, -0.245840, 0.652667,
		-0.532941, -0.410606, -0.739849,
		0.449873, -0.878047, 0.163243,
		43.588196, 38.599609, 29.442556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758430, 38.660027, 29.246109>,  <43.273281, 39.214241, 29.328285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758430, 38.660027, 29.246109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059547, 38.472195, 29.430630>,  <43.240215, 38.359493, 29.541342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059547, 38.472195, 29.430630>,  <42.758430, 38.660027, 29.246109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059547, 38.472195, 29.430630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610852, -0.237213, 0.755374,
		-0.245305, -0.850412, -0.465430,
		0.752785, -0.469606, 0.461287,
		43.285385, 38.331318, 29.569019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476063, 38.004219, 29.309925>,  <42.758430, 38.660027, 29.246109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476063, 38.004219, 29.309925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760117, 38.044224, 29.588694>,  <42.930550, 38.068226, 29.755955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760117, 38.044224, 29.588694>,  <42.476063, 38.004219, 29.309925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760117, 38.044224, 29.588694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599239, -0.433796, 0.672855,
		0.369619, -0.895443, -0.248122,
		0.710137, 0.100016, 0.696923,
		42.973156, 38.074230, 29.797771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423172, 37.468262, 29.773914>,  <42.476063, 38.004219, 29.309925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423172, 37.468262, 29.773914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629944, 37.713512, 30.012865>,  <42.754005, 37.860664, 30.156235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629944, 37.713512, 30.012865>,  <42.423172, 37.468262, 29.773914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629944, 37.713512, 30.012865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535547, -0.312775, 0.784450,
		0.667812, -0.725428, 0.166676,
		0.516930, 0.613128, 0.597376,
		42.785023, 37.897449, 30.192078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482365, 37.084408, 30.380342>,  <42.423172, 37.468262, 29.773914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482365, 37.084408, 30.380342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554260, 37.454918, 30.512831>,  <42.597397, 37.677223, 30.592323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554260, 37.454918, 30.512831>,  <42.482365, 37.084408, 30.380342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554260, 37.454918, 30.512831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421809, -0.231608, 0.876604,
		0.888690, -0.297275, 0.349082,
		0.179742, 0.926275, 0.331221,
		42.608185, 37.732800, 30.612198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777248, 36.981125, 31.128395>,  <42.482365, 37.084408, 30.380342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777248, 36.981125, 31.128395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655426, 37.358341, 31.074844>,  <42.582333, 37.584671, 31.042715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655426, 37.358341, 31.074844>,  <42.777248, 36.981125, 31.128395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655426, 37.358341, 31.074844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585685, -0.074573, 0.807101,
		0.751144, 0.324220, 0.575035,
		-0.304560, 0.943038, -0.133876,
		42.564056, 37.641254, 31.034681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774227, 37.247932, 31.786463>,  <42.777248, 36.981125, 31.128395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774227, 37.247932, 31.786463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541622, 37.520359, 31.608480>,  <42.402058, 37.683815, 31.501692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541622, 37.520359, 31.608480>,  <42.774227, 37.247932, 31.786463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541622, 37.520359, 31.608480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650409, -0.060673, 0.757157,
		0.488679, 0.729702, 0.478255,
		-0.581516, 0.681068, -0.444956,
		42.367168, 37.724678, 31.474995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635426, 37.747181, 32.192528>,  <42.774227, 37.247932, 31.786463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635426, 37.747181, 32.192528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332783, 37.757690, 31.931192>,  <42.151196, 37.763996, 31.774391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332783, 37.757690, 31.931192>,  <42.635426, 37.747181, 32.192528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332783, 37.757690, 31.931192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652926, -0.083964, 0.752753,
		-0.035078, 0.996122, 0.080684,
		-0.756609, 0.026276, -0.653340,
		42.105801, 37.765572, 31.735191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101486, 38.290157, 32.349602>,  <42.635426, 37.747181, 32.192528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101486, 38.290157, 32.349602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905304, 38.007252, 32.145943>,  <41.787594, 37.837509, 32.023746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905304, 38.007252, 32.145943>,  <42.101486, 38.290157, 32.349602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905304, 38.007252, 32.145943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606217, -0.142828, 0.782369,
		-0.626063, 0.692369, -0.358707,
		-0.490454, -0.707266, -0.509145,
		41.758167, 37.795071, 31.993198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550243, 38.167095, 32.760403>,  <42.101486, 38.290157, 32.349602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550243, 38.167095, 32.760403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466187, 37.878433, 32.496567>,  <41.415752, 37.705235, 32.338264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466187, 37.878433, 32.496567>,  <41.550243, 38.167095, 32.760403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466187, 37.878433, 32.496567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487049, -0.507704, 0.710647,
		-0.847718, 0.470586, -0.244793,
		-0.210138, -0.721654, -0.659588,
		41.403145, 37.661938, 32.298691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774818, 38.153168, 32.716175>,  <41.550243, 38.167095, 32.760403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774818, 38.153168, 32.716175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921284, 37.802181, 32.592258>,  <41.009163, 37.591587, 32.517906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921284, 37.802181, 32.592258>,  <40.774818, 38.153168, 32.716175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921284, 37.802181, 32.592258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612251, -0.477878, 0.629906,
		-0.700768, -0.040974, -0.712211,
		0.366159, -0.877470, -0.309795,
		41.031132, 37.538940, 32.499321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128578, 37.678844, 32.571995>,  <40.774818, 38.153168, 32.716175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128578, 37.678844, 32.571995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442738, 37.436928, 32.624718>,  <40.631233, 37.291779, 32.656353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442738, 37.436928, 32.624718>,  <40.128578, 37.678844, 32.571995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442738, 37.436928, 32.624718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541943, -0.568993, 0.618502,
		-0.299064, -0.557207, -0.774649,
		0.785403, -0.604788, 0.131809,
		40.678360, 37.255493, 32.664261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866512, 36.870113, 32.570599>,  <40.128578, 37.678844, 32.571995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866512, 36.870113, 32.570599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231670, 36.850777, 32.732727>,  <40.450764, 36.839172, 32.830006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231670, 36.850777, 32.732727>,  <39.866512, 36.870113, 32.570599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231670, 36.850777, 32.732727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366956, -0.532122, 0.763014,
		0.178792, -0.845286, -0.503512,
		0.912895, -0.048346, 0.405322,
		40.505539, 36.836273, 32.854324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982136, 36.160381, 32.567364>,  <39.866512, 36.870113, 32.570599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982136, 36.160381, 32.567364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211189, 36.344273, 32.838875>,  <40.348621, 36.454609, 33.001781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211189, 36.344273, 32.838875>,  <39.982136, 36.160381, 32.567364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211189, 36.344273, 32.838875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355026, -0.607239, 0.710786,
		0.738950, -0.648004, -0.184510,
		0.572634, 0.459729, 0.678778,
		40.382980, 36.482193, 33.042507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280884, 35.678970, 32.998665>,  <39.982136, 36.160381, 32.567364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280884, 35.678970, 32.998665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309933, 35.991985, 33.246006>,  <40.327362, 36.179794, 33.394413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309933, 35.991985, 33.246006>,  <40.280884, 35.678970, 32.998665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309933, 35.991985, 33.246006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361432, -0.557201, 0.747592,
		0.929565, -0.277789, 0.242366,
		0.072627, 0.782535, 0.618356,
		40.331722, 36.226746, 33.431515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524227, 35.551300, 33.586964>,  <40.280884, 35.678970, 32.998665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524227, 35.551300, 33.586964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369282, 35.893372, 33.724731>,  <40.276314, 36.098614, 33.807392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369282, 35.893372, 33.724731>,  <40.524227, 35.551300, 33.586964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369282, 35.893372, 33.724731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401665, -0.492810, 0.771883,
		0.829828, 0.160659, 0.534391,
		-0.387363, 0.855176, 0.344416,
		40.253071, 36.149925, 33.828056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663315, 35.424206, 34.324337>,  <40.524227, 35.551300, 33.586964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663315, 35.424206, 34.324337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394897, 35.720371, 34.308880>,  <40.233849, 35.898071, 34.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394897, 35.720371, 34.308880>,  <40.663315, 35.424206, 34.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394897, 35.720371, 34.308880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447042, -0.362476, 0.817781,
		0.591485, 0.566042, 0.574231,
		-0.671043, 0.740410, -0.038645,
		40.193584, 35.942493, 34.297287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682045, 35.909393, 34.947342>,  <40.663315, 35.424206, 34.324337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682045, 35.909393, 34.947342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319363, 35.910492, 34.778645>,  <40.101753, 35.911152, 34.677425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319363, 35.910492, 34.778645>,  <40.682045, 35.909393, 34.947342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319363, 35.910492, 34.778645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407248, -0.265700, 0.873815,
		-0.109661, 0.964052, 0.242030,
		-0.906710, 0.002743, -0.421745,
		40.047348, 35.911316, 34.652122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271824, 36.265839, 35.544613>,  <40.682045, 35.909393, 34.947342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271824, 36.265839, 35.544613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023254, 36.071270, 35.298939>,  <39.874111, 35.954529, 35.151535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023254, 36.071270, 35.298939>,  <40.271824, 36.265839, 35.544613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023254, 36.071270, 35.298939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480323, -0.382797, 0.789149,
		-0.618966, 0.785406, 0.004242,
		-0.621426, -0.486419, -0.614187,
		39.836826, 35.925343, 35.114681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452362, 36.428185, 35.720585>,  <40.271824, 36.265839, 35.544613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452362, 36.428185, 35.720585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461025, 36.076233, 35.530704>,  <39.466225, 35.865063, 35.416775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461025, 36.076233, 35.530704>,  <39.452362, 36.428185, 35.720585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461025, 36.076233, 35.530704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439636, -0.434826, 0.785905,
		-0.897915, 0.191673, -0.396246,
		0.021661, -0.879880, -0.474703,
		39.467522, 35.812267, 35.388294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856911, 36.081547, 36.034561>,  <39.452362, 36.428185, 35.720585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856911, 36.081547, 36.034561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046139, 35.775364, 35.860077>,  <39.159676, 35.591656, 35.755386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046139, 35.775364, 35.860077>,  <38.856911, 36.081547, 36.034561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046139, 35.775364, 35.860077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414738, -0.630314, 0.656275,
		-0.777300, -0.129551, -0.615647,
		0.473071, -0.765455, -0.436213,
		39.188061, 35.545727, 35.729214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296410, 35.513523, 35.880924>,  <38.856911, 36.081547, 36.034561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296410, 35.513523, 35.880924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653694, 35.334305, 35.896049>,  <38.868065, 35.226776, 35.905125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653694, 35.334305, 35.896049>,  <38.296410, 35.513523, 35.880924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653694, 35.334305, 35.896049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359903, -0.662014, 0.657425,
		-0.269522, -0.600829, -0.752571,
		0.893212, -0.448042, 0.037813,
		38.921658, 35.199890, 35.907394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190044, 34.679737, 35.840584>,  <38.296410, 35.513523, 35.880924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190044, 34.679737, 35.840584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564907, 34.731327, 35.970261>,  <38.789825, 34.762283, 36.048069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564907, 34.731327, 35.970261>,  <38.190044, 34.679737, 35.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564907, 34.731327, 35.970261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108120, -0.776078, 0.621299,
		0.331734, -0.617307, -0.713362,
		0.937157, 0.128977, 0.324194,
		38.846054, 34.770020, 36.067520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493431, 34.043217, 35.714706>,  <38.190044, 34.679737, 35.840584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493431, 34.043217, 35.714706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710617, 34.215527, 36.003044>,  <38.840927, 34.318913, 36.176048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710617, 34.215527, 36.003044>,  <38.493431, 34.043217, 35.714706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710617, 34.215527, 36.003044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200450, -0.767106, 0.609400,
		0.815481, -0.475377, -0.330163,
		0.542965, 0.430773, 0.720849,
		38.873508, 34.344757, 36.219299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909687, 33.499889, 36.014664>,  <38.493431, 34.043217, 35.714706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909687, 33.499889, 36.014664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871593, 33.792549, 36.284664>,  <38.848740, 33.968143, 36.446663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871593, 33.792549, 36.284664>,  <38.909687, 33.499889, 36.014664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871593, 33.792549, 36.284664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160115, -0.680511, 0.715030,
		0.982494, -0.039986, 0.181953,
		-0.095230, 0.731646, 0.675000,
		38.843025, 34.012043, 36.487164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227581, 33.251003, 36.517334>,  <38.909687, 33.499889, 36.014664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227581, 33.251003, 36.517334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022022, 33.545185, 36.693977>,  <38.898689, 33.721695, 36.799961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022022, 33.545185, 36.693977>,  <39.227581, 33.251003, 36.517334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022022, 33.545185, 36.693977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270085, -0.627310, 0.730436,
		0.814228, 0.256096, 0.521006,
		-0.513894, 0.735457, 0.441606,
		38.867855, 33.765823, 36.826458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443195, 33.382870, 37.175610>,  <39.227581, 33.251003, 36.517334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443195, 33.382870, 37.175610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089169, 33.566185, 37.208176>,  <38.876751, 33.676174, 37.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089169, 33.566185, 37.208176>,  <39.443195, 33.382870, 37.175610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089169, 33.566185, 37.208176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212966, -0.554232, 0.804656,
		0.413885, 0.694837, 0.588133,
		-0.885068, 0.458287, 0.081411,
		38.823647, 33.703671, 37.232597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401417, 33.430344, 37.994186>,  <39.443195, 33.382870, 37.175610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401417, 33.430344, 37.994186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031872, 33.477905, 37.848671>,  <38.810146, 33.506443, 37.761364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031872, 33.477905, 37.848671>,  <39.401417, 33.430344, 37.994186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031872, 33.477905, 37.848671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356672, -0.612179, 0.705707,
		-0.138789, 0.781728, 0.607979,
		-0.923863, 0.118905, -0.363784,
		38.754711, 33.513577, 37.739536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919289, 33.828686, 38.493565>,  <39.401417, 33.430344, 37.994186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919289, 33.828686, 38.493565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684525, 33.610523, 38.254211>,  <38.543667, 33.479626, 38.110600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684525, 33.610523, 38.254211>,  <38.919289, 33.828686, 38.493565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684525, 33.610523, 38.254211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251894, -0.579388, 0.775151,
		-0.769469, 0.605677, 0.202668,
		-0.586914, -0.545403, -0.598387,
		38.508450, 33.446903, 38.074696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291698, 33.810440, 38.800190>,  <38.919289, 33.828686, 38.493565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291698, 33.810440, 38.800190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342762, 33.483494, 38.575470>,  <38.373402, 33.287327, 38.440639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342762, 33.483494, 38.575470>,  <38.291698, 33.810440, 38.800190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342762, 33.483494, 38.575470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303913, -0.571425, 0.762306,
		-0.944108, 0.073424, -0.321354,
		0.127658, -0.817363, -0.561801,
		38.381058, 33.238285, 38.406929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810749, 33.508327, 39.183083>,  <38.291698, 33.810440, 38.800190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810749, 33.508327, 39.183083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959770, 33.216396, 38.953804>,  <38.049183, 33.041237, 38.816235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959770, 33.216396, 38.953804>,  <37.810749, 33.508327, 39.183083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959770, 33.216396, 38.953804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226536, -0.670501, 0.706477,
		-0.899936, -0.133351, -0.415130,
		0.372555, -0.729826, -0.573199,
		38.071537, 32.997448, 38.781845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378155, 32.950027, 39.050289>,  <37.810749, 33.508327, 39.183083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378155, 32.950027, 39.050289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750504, 32.804920, 39.032990>,  <37.973915, 32.717857, 39.022610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750504, 32.804920, 39.032990>,  <37.378155, 32.950027, 39.050289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750504, 32.804920, 39.032990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255713, -0.731518, 0.632054,
		-0.260923, -0.577306, -0.773717,
		0.930876, -0.362767, -0.043245,
		38.029766, 32.696091, 39.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329033, 32.262840, 38.898663>,  <37.378155, 32.950027, 39.050289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329033, 32.262840, 38.898663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683575, 32.298870, 39.080326>,  <37.896301, 32.320488, 39.189323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683575, 32.298870, 39.080326>,  <37.329033, 32.262840, 38.898663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683575, 32.298870, 39.080326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216388, -0.786596, 0.578311,
		0.409333, -0.610863, -0.677712,
		0.886354, 0.090073, 0.454163,
		37.949482, 32.325893, 39.216576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695110, 31.553852, 38.961189>,  <37.329033, 32.262840, 38.898663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695110, 31.553852, 38.961189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830730, 31.804283, 39.242065>,  <37.912102, 31.954542, 39.410591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830730, 31.804283, 39.242065>,  <37.695110, 31.553852, 38.961189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830730, 31.804283, 39.242065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052102, -0.732758, 0.678492,
		0.939324, -0.266629, -0.215823,
		0.339052, 0.626079, 0.702189,
		37.932446, 31.992107, 39.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211304, 31.239170, 39.453251>,  <37.695110, 31.553852, 38.961189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211304, 31.239170, 39.453251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049957, 31.534422, 39.669571>,  <37.953148, 31.711573, 39.799362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049957, 31.534422, 39.669571>,  <38.211304, 31.239170, 39.453251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049957, 31.534422, 39.669571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160331, -0.638880, 0.752414,
		0.900882, 0.216794, 0.376049,
		-0.403369, 0.738128, 0.540796,
		37.928947, 31.755859, 39.831810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611786, 31.370533, 40.187584>,  <38.211304, 31.239170, 39.453251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611786, 31.370533, 40.187584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221058, 31.456152, 40.186020>,  <37.986622, 31.507523, 40.185081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221058, 31.456152, 40.186020>,  <38.611786, 31.370533, 40.187584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221058, 31.456152, 40.186020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151492, -0.678204, 0.719090,
		0.151266, 0.703011, 0.694906,
		-0.976816, 0.214047, -0.003911,
		37.928013, 31.520367, 40.184845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307850, 30.698261, 40.277637>,  <38.611786, 31.370533, 40.187584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307850, 30.698261, 40.277637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490837, 30.498428, 40.571884>,  <38.600632, 30.378529, 40.748432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490837, 30.498428, 40.571884>,  <38.307850, 30.698261, 40.277637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490837, 30.498428, 40.571884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540051, 0.813311, 0.216496,
		-0.706445, 0.298231, 0.641867,
		0.457471, -0.499584, 0.735619,
		38.628078, 30.348553, 40.792568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361153, 31.127781, 40.922218>,  <38.307850, 30.698261, 40.277637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361153, 31.127781, 40.922218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662437, 30.867611, 40.882999>,  <38.843208, 30.711508, 40.859467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662437, 30.867611, 40.882999>,  <38.361153, 31.127781, 40.922218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662437, 30.867611, 40.882999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654847, 0.727434, 0.204973,
		-0.061996, -0.218596, 0.973844,
		0.753214, -0.650427, -0.098049,
		38.888401, 30.672483, 40.853584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869995, 31.648878, 40.946659>,  <38.361153, 31.127781, 40.922218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869995, 31.648878, 40.946659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689056, 31.991159, 41.047180>,  <37.580494, 32.196529, 41.107494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689056, 31.991159, 41.047180>,  <37.869995, 31.648878, 40.946659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689056, 31.991159, 41.047180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041094, -0.261483, 0.964333,
		0.890894, 0.446542, 0.083117,
		-0.452349, 0.855702, 0.251304,
		37.553352, 32.247871, 41.122570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199249, 32.103977, 41.521309>,  <37.869995, 31.648878, 40.946659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199249, 32.103977, 41.521309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799793, 32.109653, 41.541351>,  <37.560120, 32.113060, 41.553375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799793, 32.109653, 41.541351>,  <38.199249, 32.103977, 41.521309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799793, 32.109653, 41.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042109, -0.346004, 0.937288,
		0.030637, 0.938126, 0.344937,
		-0.998643, 0.014190, 0.050104,
		37.500198, 32.113911, 41.556381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842834, 32.387230, 42.105026>,  <38.199249, 32.103977, 41.521309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842834, 32.387230, 42.105026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586338, 32.097824, 42.002781>,  <37.432442, 31.924181, 41.941433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586338, 32.097824, 42.002781>,  <37.842834, 32.387230, 42.105026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586338, 32.097824, 42.002781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023933, -0.314100, 0.949088,
		-0.766968, 0.614710, 0.184097,
		-0.641239, -0.723514, -0.255617,
		37.393967, 31.880770, 41.926094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155930, 32.547821, 42.381222>,  <37.842834, 32.387230, 42.105026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155930, 32.547821, 42.381222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238869, 32.157253, 42.357212>,  <37.288631, 31.922911, 42.342808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238869, 32.157253, 42.357212>,  <37.155930, 32.547821, 42.381222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238869, 32.157253, 42.357212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136970, -0.089730, 0.986503,
		-0.968631, -0.196329, -0.152346,
		0.207350, -0.976424, -0.060025,
		37.301075, 31.864326, 42.339203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768856, 32.304855, 42.863453>,  <37.155930, 32.547821, 42.381222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768856, 32.304855, 42.863453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018288, 31.999472, 42.796188>,  <37.167946, 31.816242, 42.755829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018288, 31.999472, 42.796188>,  <36.768856, 32.304855, 42.863453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018288, 31.999472, 42.796188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129912, -0.313317, 0.940721,
		-0.770889, -0.564769, -0.294561,
		0.623581, -0.763458, -0.168162,
		37.205360, 31.770433, 42.745739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491993, 31.695442, 43.000591>,  <36.768856, 32.304855, 42.863453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491993, 31.695442, 43.000591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884457, 31.638546, 43.052879>,  <37.119934, 31.604408, 43.084251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884457, 31.638546, 43.052879>,  <36.491993, 31.695442, 43.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884457, 31.638546, 43.052879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188636, -0.559439, 0.807121,
		-0.041677, -0.816575, -0.575732,
		0.981162, -0.142242, 0.130720,
		37.178806, 31.595873, 43.092094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548615, 30.977589, 42.850929>,  <36.491993, 31.695442, 43.000591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548615, 30.977589, 42.850929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790051, 31.158682, 43.113445>,  <36.934914, 31.267338, 43.270954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790051, 31.158682, 43.113445>,  <36.548615, 30.977589, 42.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790051, 31.158682, 43.113445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443680, -0.493186, 0.748275,
		0.662442, -0.742832, -0.096812,
		0.603589, 0.452735, 0.656287,
		36.971127, 31.294502, 43.310329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954582, 30.538267, 43.299572>,  <36.548615, 30.977589, 42.850929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954582, 30.538267, 43.299572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863838, 30.883013, 43.481003>,  <36.809391, 31.089859, 43.589859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863838, 30.883013, 43.481003>,  <36.954582, 30.538267, 43.299572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863838, 30.883013, 43.481003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169602, -0.493560, 0.853014,
		0.959047, 0.116586, 0.258141,
		-0.226858, 0.861862, 0.453574,
		36.795780, 31.141571, 43.617077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330765, 29.816700, 43.019096>,  <36.954582, 30.538267, 43.299572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330765, 29.816700, 43.019096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547340, 29.729956, 43.344009>,  <37.677288, 29.677908, 43.538960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547340, 29.729956, 43.344009>,  <37.330765, 29.816700, 43.019096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547340, 29.729956, 43.344009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439974, -0.750212, -0.493563,
		0.716423, 0.624621, -0.310783,
		0.541443, -0.216863, 0.812287,
		37.709774, 29.664896, 43.587696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928230, 29.564608, 42.661728>,  <37.330765, 29.816700, 43.019096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928230, 29.564608, 42.661728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112339, 29.312565, 42.911884>,  <38.222805, 29.161339, 43.061977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112339, 29.312565, 42.911884>,  <37.928230, 29.564608, 42.661728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112339, 29.312565, 42.911884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849128, 0.106870, -0.517263,
		0.259096, 0.769118, 0.584232,
		0.460273, -0.630108, 0.625390,
		38.250420, 29.123533, 43.099503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531872, 29.809500, 42.874153>,  <37.928230, 29.564608, 42.661728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531872, 29.809500, 42.874153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559475, 29.410635, 42.862137>,  <38.576038, 29.171316, 42.854927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559475, 29.410635, 42.862137>,  <38.531872, 29.809500, 42.874153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559475, 29.410635, 42.862137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848953, 0.074512, -0.523189,
		0.523943, 0.010602, 0.851687,
		0.069008, -0.997164, -0.030039,
		38.580177, 29.111486, 42.853127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215778, 29.584925, 43.133236>,  <38.531872, 29.809500, 42.874153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215778, 29.584925, 43.133236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130775, 29.292620, 42.873753>,  <39.079773, 29.117237, 42.718063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130775, 29.292620, 42.873753>,  <39.215778, 29.584925, 43.133236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130775, 29.292620, 42.873753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868354, 0.163211, -0.468321,
		0.448108, -0.662832, 0.599878,
		-0.212511, -0.730764, -0.648708,
		39.067020, 29.073391, 42.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752403, 28.955978, 43.169159>,  <39.215778, 29.584925, 43.133236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752403, 28.955978, 43.169159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578678, 28.967129, 42.809025>,  <39.474442, 28.973820, 42.592945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578678, 28.967129, 42.809025>,  <39.752403, 28.955978, 43.169159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578678, 28.967129, 42.809025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900544, -0.008609, -0.434680,
		-0.019868, -0.999574, -0.021366,
		-0.434311, 0.027877, -0.900332,
		39.448383, 28.975492, 42.538925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945988, 28.371927, 42.691509>,  <39.752403, 28.955978, 43.169159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945988, 28.371927, 42.691509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855743, 28.722509, 42.521370>,  <39.801598, 28.932859, 42.419285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855743, 28.722509, 42.521370>,  <39.945988, 28.371927, 42.691509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855743, 28.722509, 42.521370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923783, 0.053801, -0.379118,
		-0.309397, -0.478464, -0.821794,
		-0.225607, 0.876458, -0.425351,
		39.788063, 28.985447, 42.393764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216660, 28.413134, 41.972301>,  <39.945988, 28.371927, 42.691509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216660, 28.413134, 41.972301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179699, 28.792168, 42.094643>,  <40.157524, 29.019588, 42.168049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179699, 28.792168, 42.094643>,  <40.216660, 28.413134, 41.972301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179699, 28.792168, 42.094643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869774, 0.226342, -0.438477,
		-0.484722, 0.225510, -0.845098,
		-0.092400, 0.947584, 0.305856,
		40.151978, 29.076443, 42.186398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106079, 28.836819, 41.427471>,  <40.216660, 28.413134, 41.972301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106079, 28.836819, 41.427471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298649, 29.021059, 41.725754>,  <40.414188, 29.131603, 41.904724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298649, 29.021059, 41.725754>,  <40.106079, 28.836819, 41.427471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298649, 29.021059, 41.725754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830918, 0.030925, -0.555535,
		-0.278942, 0.887068, -0.367834,
		0.481421, 0.460602, 0.745707,
		40.443077, 29.159239, 41.949467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478611, 29.494333, 41.135052>,  <40.106079, 28.836819, 41.427471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478611, 29.494333, 41.135052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655998, 29.364859, 41.469372>,  <40.762432, 29.287174, 41.669964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655998, 29.364859, 41.469372>,  <40.478611, 29.494333, 41.135052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655998, 29.364859, 41.469372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883375, 0.000125, -0.468666,
		0.151595, 0.946165, 0.285991,
		0.443471, -0.323685, 0.835800,
		40.789040, 29.267754, 41.720112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948143, 29.935442, 41.433975>,  <40.478611, 29.494333, 41.135052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948143, 29.935442, 41.433975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049530, 29.554802, 41.503498>,  <41.110363, 29.326418, 41.545212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049530, 29.554802, 41.503498>,  <40.948143, 29.935442, 41.433975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049530, 29.554802, 41.503498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780363, 0.094965, -0.618074,
		0.571655, 0.292292, 0.766665,
		0.253465, -0.951602, 0.173807,
		41.125568, 29.269321, 41.555641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710075, 29.887175, 41.687477>,  <40.948143, 29.935442, 41.433975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710075, 29.887175, 41.687477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576126, 29.567167, 41.488346>,  <41.495758, 29.375164, 41.368866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576126, 29.567167, 41.488346>,  <41.710075, 29.887175, 41.687477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576126, 29.567167, 41.488346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792912, 0.046184, -0.607584,
		0.509069, -0.598197, 0.618878,
		-0.334873, -0.800017, -0.497829,
		41.475666, 29.327162, 41.338997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604038, 29.893578, 40.991497>,  <41.710075, 29.887175, 41.687477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604038, 29.893578, 40.991497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933731, 29.881611, 41.217682>,  <42.131546, 29.874430, 41.353394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933731, 29.881611, 41.217682>,  <41.604038, 29.893578, 40.991497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933731, 29.881611, 41.217682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294229, 0.875839, -0.382537,
		-0.483806, 0.481675, 0.730699,
		0.824234, -0.029919, 0.565459,
		42.181000, 29.872635, 41.387318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692841, 30.541464, 41.081169>,  <41.604038, 29.893578, 40.991497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692841, 30.541464, 41.081169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051224, 30.374662, 41.142311>,  <42.266254, 30.274582, 41.178997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051224, 30.374662, 41.142311>,  <41.692841, 30.541464, 41.081169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051224, 30.374662, 41.142311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444110, 0.845033, -0.297801,
		-0.004984, 0.334703, 0.942311,
		0.895958, -0.417006, 0.152857,
		42.320011, 30.249561, 41.188168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054005, 30.955442, 41.482273>,  <41.692841, 30.541464, 41.081169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054005, 30.955442, 41.482273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336262, 30.746384, 41.290897>,  <42.505615, 30.620949, 41.176071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336262, 30.746384, 41.290897>,  <42.054005, 30.955442, 41.482273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336262, 30.746384, 41.290897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405907, 0.851617, -0.331643,
		0.580777, 0.039823, 0.813088,
		0.705647, -0.522649, -0.478435,
		42.547955, 30.589588, 41.147366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785194, 30.975643, 41.726910>,  <42.054005, 30.955442, 41.482273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785194, 30.975643, 41.726910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786266, 30.944756, 41.328106>,  <42.786907, 30.926222, 41.088825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786266, 30.944756, 41.328106>,  <42.785194, 30.975643, 41.726910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786266, 30.944756, 41.328106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446030, 0.892437, -0.067925,
		0.895014, -0.444515, 0.036831,
		0.002676, -0.077221, -0.997010,
		42.787067, 30.921589, 41.029003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426849, 30.858688, 41.421005>,  <42.785194, 30.975643, 41.726910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426849, 30.858688, 41.421005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186977, 31.067360, 41.178276>,  <43.043053, 31.192562, 41.032639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186977, 31.067360, 41.178276>,  <43.426849, 30.858688, 41.421005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186977, 31.067360, 41.178276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543181, 0.822213, 0.170060,
		0.587653, -0.227632, -0.776433,
		-0.599682, 0.521680, -0.606821,
		43.007072, 31.223864, 40.996231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638100, 30.448875, 40.845226>,  <43.426849, 30.858688, 41.421005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638100, 30.448875, 40.845226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918358, 30.636395, 40.630070>,  <44.086514, 30.748907, 40.500977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918358, 30.636395, 40.630070>,  <43.638100, 30.448875, 40.845226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918358, 30.636395, 40.630070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507591, -0.202316, -0.837508,
		-0.501447, 0.859823, 0.096208,
		0.700644, 0.468800, -0.537889,
		44.128551, 30.777035, 40.468704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491295, 31.166716, 40.337437>,  <43.638100, 30.448875, 40.845226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491295, 31.166716, 40.337437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770737, 30.924212, 40.185440>,  <43.938404, 30.778709, 40.094242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770737, 30.924212, 40.185440>,  <43.491295, 31.166716, 40.337437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770737, 30.924212, 40.185440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600617, -0.208269, -0.771934,
		0.388851, 0.767512, -0.509628,
		0.698609, -0.606259, -0.379995,
		43.980320, 30.742334, 40.071442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557636, 31.399992, 39.639210>,  <43.491295, 31.166716, 40.337437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557636, 31.399992, 39.639210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677643, 31.018457, 39.644608>,  <43.749649, 30.789536, 39.647846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677643, 31.018457, 39.644608>,  <43.557636, 31.399992, 39.639210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677643, 31.018457, 39.644608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532633, -0.179236, -0.827149,
		0.791385, 0.240974, -0.561820,
		0.300019, -0.953837, 0.013494,
		43.767647, 30.732306, 39.648655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634151, 31.089014, 38.891956>,  <43.557636, 31.399992, 39.639210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634151, 31.089014, 38.891956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527889, 30.821138, 39.169357>,  <43.464130, 30.660414, 39.335796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527889, 30.821138, 39.169357>,  <43.634151, 31.089014, 38.891956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527889, 30.821138, 39.169357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674809, -0.384578, -0.629867,
		0.688521, -0.635308, -0.349748,
		-0.265654, -0.669689, 0.693501,
		43.448193, 30.620232, 39.377407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544506, 30.393856, 38.610512>,  <43.634151, 31.089014, 38.891956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544506, 30.393856, 38.610512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309284, 30.408342, 38.933716>,  <43.168152, 30.417034, 39.127636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.309284, 30.408342, 38.933716>,  <43.544506, 30.393856, 38.610512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309284, 30.408342, 38.933716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736028, -0.438144, -0.516035,
		0.335335, -0.898175, 0.284309,
		-0.588058, 0.036214, 0.808007,
		43.132866, 30.419207, 39.176117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646255, 29.768019, 38.171146>,  <43.544506, 30.393856, 38.610512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646255, 29.768019, 38.171146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859287, 29.511885, 37.949757>,  <43.987106, 29.358204, 37.816925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859287, 29.511885, 37.949757>,  <43.646255, 29.768019, 38.171146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859287, 29.511885, 37.949757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597516, -0.747593, 0.289964,
		-0.599446, 0.176279, -0.780763,
		0.532578, -0.640336, -0.553471,
		44.019062, 29.319784, 37.783714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149296, 29.418751, 37.759365>,  <43.646255, 29.768019, 38.171146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149296, 29.418751, 37.759365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479309, 29.196667, 37.801445>,  <43.677315, 29.063416, 37.826691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479309, 29.196667, 37.801445>,  <43.149296, 29.418751, 37.759365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479309, 29.196667, 37.801445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562011, -0.786789, 0.255159,
		-0.058901, -0.269635, -0.961159,
		0.825030, -0.555211, 0.105195,
		43.726818, 29.030104, 37.833004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163364, 28.910797, 37.136761>,  <43.149296, 29.418751, 37.759365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163364, 28.910797, 37.136761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299839, 28.856346, 37.508793>,  <43.381725, 28.823675, 37.732014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299839, 28.856346, 37.508793>,  <43.163364, 28.910797, 37.136761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299839, 28.856346, 37.508793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638704, -0.759536, 0.123134,
		0.689671, -0.636061, -0.346093,
		0.341191, -0.136129, 0.930085,
		43.402195, 28.815508, 37.787819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804359, 28.666260, 36.466877>,  <43.163364, 28.910797, 37.136761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804359, 28.666260, 36.466877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413616, 28.739029, 36.511864>,  <42.179169, 28.782690, 36.538857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413616, 28.739029, 36.511864>,  <42.804359, 28.666260, 36.466877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413616, 28.739029, 36.511864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188566, 0.484426, 0.854269,
		0.100930, 0.855708, -0.507520,
		-0.976860, 0.181922, 0.112464,
		42.120560, 28.793606, 36.545605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710758, 29.385841, 36.493473>,  <42.804359, 28.666260, 36.466877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710758, 29.385841, 36.493473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421715, 29.209347, 36.706318>,  <42.248287, 29.103449, 36.834026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421715, 29.209347, 36.706318>,  <42.710758, 29.385841, 36.493473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421715, 29.209347, 36.706318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075643, 0.714681, 0.695349,
		-0.687106, 0.542716, -0.483058,
		-0.722609, -0.441238, 0.532114,
		42.204933, 29.076975, 36.865952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394325, 29.754541, 37.017578>,  <42.710758, 29.385841, 36.493473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394325, 29.754541, 37.017578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275272, 29.395319, 37.147141>,  <42.203842, 29.179787, 37.224876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275272, 29.395319, 37.147141>,  <42.394325, 29.754541, 37.017578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275272, 29.395319, 37.147141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146940, 0.378328, 0.913935,
		-0.943304, 0.224423, -0.244564,
		-0.297633, -0.898055, 0.323902,
		42.185982, 29.125902, 37.244312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649765, 29.631556, 37.293312>,  <42.394325, 29.754541, 37.017578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649765, 29.631556, 37.293312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925087, 29.387934, 37.450943>,  <42.090279, 29.241760, 37.545521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925087, 29.387934, 37.450943>,  <41.649765, 29.631556, 37.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925087, 29.387934, 37.450943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136015, 0.425251, 0.894797,
		-0.712561, -0.669489, 0.209859,
		0.688300, -0.609053, 0.394077,
		42.131577, 29.205217, 37.569168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437763, 29.139202, 37.831528>,  <41.649765, 29.631556, 37.293312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437763, 29.139202, 37.831528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807915, 29.289505, 37.851460>,  <42.030006, 29.379686, 37.863419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807915, 29.289505, 37.851460>,  <41.437763, 29.139202, 37.831528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807915, 29.289505, 37.851460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202045, 0.377751, 0.903594,
		0.320702, -0.846236, 0.425481,
		0.925380, 0.375751, 0.049832,
		42.085529, 29.402231, 37.866409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591278, 28.870230, 38.396683>,  <41.437763, 29.139202, 37.831528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591278, 28.870230, 38.396683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837986, 29.175266, 38.318661>,  <41.986012, 29.358288, 38.271847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837986, 29.175266, 38.318661>,  <41.591278, 28.870230, 38.396683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837986, 29.175266, 38.318661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170331, 0.371233, 0.912783,
		0.768493, -0.529754, 0.358858,
		0.616771, 0.762592, -0.195057,
		42.023018, 29.404043, 38.260143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025749, 29.038599, 39.000473>,  <41.591278, 28.870230, 38.396683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025749, 29.038599, 39.000473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017555, 29.378220, 38.789307>,  <42.012638, 29.581991, 38.662609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017555, 29.378220, 38.789307>,  <42.025749, 29.038599, 39.000473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017555, 29.378220, 38.789307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095773, 0.523930, 0.846359,
		0.995192, 0.067895, 0.070585,
		-0.020482, 0.849051, -0.527914,
		42.011410, 29.632935, 38.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404369, 29.453123, 39.364994>,  <42.025749, 29.038599, 39.000473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404369, 29.453123, 39.364994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133804, 29.665968, 39.161297>,  <41.971466, 29.793674, 39.039078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133804, 29.665968, 39.161297>,  <42.404369, 29.453123, 39.364994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133804, 29.665968, 39.161297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314829, 0.416170, 0.853045,
		0.665845, 0.737332, -0.113978,
		-0.676412, 0.532112, -0.509238,
		41.930882, 29.825602, 39.008526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758389, 30.055988, 39.030602>,  <42.404369, 29.453123, 39.364994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758389, 30.055988, 39.030602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431866, 30.272577, 39.111053>,  <42.235954, 30.402531, 39.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431866, 30.272577, 39.111053>,  <42.758389, 30.055988, 39.030602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431866, 30.272577, 39.111053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564534, 0.821583, 0.079391,
		-0.122257, 0.178352, -0.976342,
		-0.816305, 0.541473, 0.201130,
		42.186974, 30.435019, 39.171394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753063, 30.666315, 38.617905>,  <42.758389, 30.055988, 39.030602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753063, 30.666315, 38.617905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676914, 30.795801, 38.988625>,  <42.631226, 30.873493, 39.211056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.676914, 30.795801, 38.988625>,  <42.753063, 30.666315, 38.617905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.676914, 30.795801, 38.988625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682662, 0.722102, -0.111988,
		-0.705499, 0.611374, -0.358458,
		-0.190377, 0.323714, 0.926804,
		42.619801, 30.892916, 39.266666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644314, 31.394602, 38.613407>,  <42.753063, 30.666315, 38.617905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644314, 31.394602, 38.613407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817852, 31.241928, 38.939865>,  <42.921974, 31.150324, 39.135742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817852, 31.241928, 38.939865>,  <42.644314, 31.394602, 38.613407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817852, 31.241928, 38.939865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783726, 0.606730, -0.132860,
		-0.444471, 0.697277, 0.562362,
		0.433842, -0.381685, 0.816148,
		42.948006, 31.127422, 39.184708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386383, 31.655603, 37.911671>,  <42.644314, 31.394602, 38.613407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386383, 31.655603, 37.911671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077274, 31.796036, 37.700176>,  <41.891808, 31.880295, 37.573280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077274, 31.796036, 37.700176>,  <42.386383, 31.655603, 37.911671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077274, 31.796036, 37.700176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580280, -0.053372, 0.812667,
		0.257091, 0.934824, 0.244969,
		-0.772774, 0.351079, -0.528738,
		41.845444, 31.901360, 37.541553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197929, 31.735395, 37.804485>,  <42.386383, 31.655603, 37.911671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197929, 31.735395, 37.804485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166348, 32.115799, 37.684925>,  <43.147396, 32.344040, 37.613190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166348, 32.115799, 37.684925>,  <43.197929, 31.735395, 37.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166348, 32.115799, 37.684925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996792, 0.079242, -0.011191,
		0.013044, -0.298829, -0.954217,
		-0.078958, 0.951011, -0.298904,
		43.142658, 32.401104, 37.595253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730701, 31.775187, 37.435425>,  <43.197929, 31.735395, 37.804485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730701, 31.775187, 37.435425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595589, 32.138020, 37.535908>,  <43.514523, 32.355721, 37.596195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595589, 32.138020, 37.535908>,  <43.730701, 31.775187, 37.435425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595589, 32.138020, 37.535908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932272, 0.285702, 0.221909,
		0.129520, 0.309148, -0.942153,
		-0.337777, 0.907084, 0.251206,
		43.494255, 32.410145, 37.611271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990200, 32.341000, 37.004452>,  <43.730701, 31.775187, 37.435425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990200, 32.341000, 37.004452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898659, 32.512196, 37.354183>,  <43.843735, 32.614914, 37.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898659, 32.512196, 37.354183>,  <43.990200, 32.341000, 37.004452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898659, 32.512196, 37.354183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870735, 0.491588, -0.012729,
		-0.435257, 0.758395, -0.485168,
		-0.228849, 0.427993, 0.874328,
		43.830006, 32.640594, 37.616482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938400, 33.022884, 36.965881>,  <43.990200, 32.341000, 37.004452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938400, 33.022884, 36.965881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033581, 33.001751, 37.353817>,  <44.090691, 32.989071, 37.586578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033581, 33.001751, 37.353817>,  <43.938400, 33.022884, 36.965881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033581, 33.001751, 37.353817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820348, 0.545525, -0.171558,
		-0.520008, 0.836428, 0.173150,
		0.237953, -0.052832, 0.969839,
		44.104965, 32.985901, 37.644768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192631, 33.712353, 37.301296>,  <43.938400, 33.022884, 36.965881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192631, 33.712353, 37.301296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327038, 33.372513, 37.463913>,  <44.407684, 33.168610, 37.561485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327038, 33.372513, 37.463913>,  <44.192631, 33.712353, 37.301296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327038, 33.372513, 37.463913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934322, 0.246197, -0.257741,
		0.118885, 0.466450, 0.876522,
		0.336020, -0.849595, 0.406545,
		44.427845, 33.117634, 37.585876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859978, 33.738232, 37.815117>,  <44.192631, 33.712353, 37.301296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859978, 33.738232, 37.815117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819054, 33.417030, 37.580265>,  <44.794498, 33.224308, 37.439354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819054, 33.417030, 37.580265>,  <44.859978, 33.738232, 37.815117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819054, 33.417030, 37.580265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877481, 0.205174, -0.433510,
		0.468573, -0.559546, 0.683628,
		-0.102306, -0.803002, -0.587130,
		44.788361, 33.176128, 37.404125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407475, 33.342789, 37.902637>,  <44.859978, 33.738232, 37.815117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407475, 33.342789, 37.902637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259384, 33.309826, 37.532528>,  <45.170528, 33.290047, 37.310463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259384, 33.309826, 37.532528>,  <45.407475, 33.342789, 37.902637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259384, 33.309826, 37.532528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881346, 0.283579, -0.377905,
		0.293531, -0.955402, -0.032361,
		-0.370228, -0.082406, -0.925278,
		45.148315, 33.285103, 37.254944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874958, 32.964382, 37.449791>,  <45.407475, 33.342789, 37.902637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874958, 32.964382, 37.449791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655968, 33.232056, 37.248810>,  <45.524574, 33.392658, 37.128220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655968, 33.232056, 37.248810>,  <45.874958, 32.964382, 37.449791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655968, 33.232056, 37.248810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829003, 0.351842, -0.434696,
		-0.114106, -0.654524, -0.747380,
		-0.547479, 0.669182, -0.502455,
		45.491722, 33.432812, 37.098072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273457, 33.198669, 36.924431>,  <45.874958, 32.964382, 37.449791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273457, 33.198669, 36.924431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982990, 33.468296, 36.870289>,  <45.808712, 33.630074, 36.837803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982990, 33.468296, 36.870289>,  <46.273457, 33.198669, 36.924431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982990, 33.468296, 36.870289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659933, 0.628174, -0.412171,
		-0.192805, -0.388628, -0.900996,
		-0.726164, 0.674066, -0.135354,
		45.765141, 33.670517, 36.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288742, 33.458820, 36.259464>,  <46.273457, 33.198669, 36.924431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288742, 33.458820, 36.259464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081741, 33.755657, 36.429871>,  <45.957542, 33.933758, 36.532116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081741, 33.755657, 36.429871>,  <46.288742, 33.458820, 36.259464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081741, 33.755657, 36.429871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542363, 0.669556, -0.507481,
		-0.661841, -0.031566, -0.748980,
		-0.517503, 0.742090, 0.426020,
		45.926491, 33.978283, 36.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064873, 33.846561, 35.679893>,  <46.288742, 33.458820, 36.259464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.064873, 33.846561, 35.679893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.075932, 34.060478, 36.017708>,  <46.082565, 34.188828, 36.220394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.075932, 34.060478, 36.017708>,  <46.064873, 33.846561, 35.679893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.075932, 34.060478, 36.017708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586356, 0.675566, -0.446987,
		-0.809582, 0.507553, -0.294902,
		0.027644, 0.534790, 0.844533,
		46.084225, 34.220917, 36.271069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827770, 34.579369, 35.584282>,  <46.064873, 33.846561, 35.679893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827770, 34.579369, 35.584282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145584, 34.476074, 35.804115>,  <46.336273, 34.414097, 35.936016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145584, 34.476074, 35.804115>,  <45.827770, 34.579369, 35.584282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145584, 34.476074, 35.804115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606208, 0.285008, -0.742483,
		0.035099, 0.923085, 0.382990,
		0.794531, -0.258232, 0.549579,
		46.383942, 34.398605, 35.968990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232487, 35.162231, 35.438290>,  <45.827770, 34.579369, 35.584282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232487, 35.162231, 35.438290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466473, 34.864750, 35.567730>,  <46.606865, 34.686260, 35.645393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466473, 34.864750, 35.567730>,  <46.232487, 35.162231, 35.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466473, 34.864750, 35.567730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663299, 0.209065, -0.718559,
		0.466744, 0.634975, 0.615595,
		0.584966, -0.743706, 0.323598,
		46.641964, 34.641640, 35.664810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966415, 35.390678, 35.636986>,  <46.232487, 35.162231, 35.438290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966415, 35.390678, 35.636986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982056, 35.006771, 35.525768>,  <46.991440, 34.776424, 35.459038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982056, 35.006771, 35.525768>,  <46.966415, 35.390678, 35.636986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982056, 35.006771, 35.525768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475415, 0.262616, -0.839651,
		0.878892, -0.099353, 0.466559,
		0.039104, -0.959772, -0.278045,
		46.993786, 34.718838, 35.442356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.577412, 35.102261, 35.542519>,  <46.966415, 35.390678, 35.636986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.577412, 35.102261, 35.542519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326855, 34.949417, 35.270744>,  <47.176521, 34.857712, 35.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326855, 34.949417, 35.270744>,  <47.577412, 35.102261, 35.542519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326855, 34.949417, 35.270744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526322, 0.435616, -0.730222,
		0.574999, -0.815002, -0.071750,
		-0.626387, -0.382113, -0.679432,
		47.138939, 34.834782, 35.066914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.038906, 34.881157, 34.993759>,  <47.577412, 35.102261, 35.542519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.038906, 34.881157, 34.993759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685139, 35.006310, 34.855244>,  <47.472878, 35.081402, 34.772133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685139, 35.006310, 34.855244>,  <48.038906, 34.881157, 34.993759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685139, 35.006310, 34.855244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448739, 0.366236, -0.815172,
		-0.128225, -0.876344, -0.464305,
		-0.884416, 0.312877, -0.346289,
		47.419815, 35.100174, 34.751358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.263935, 31.803247, 29.735939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.974922, 31.785746, 29.459957>,  <41.801514, 31.775244, 29.294369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.974922, 31.785746, 29.459957>,  <42.263935, 31.803247, 29.735939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974922, 31.785746, 29.459957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684551, -0.094229, 0.722849,
		-0.096642, 0.994588, 0.038131,
		-0.722531, -0.043755, -0.689953,
		41.758163, 31.772619, 29.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737793, 32.269283, 29.949617>,  <42.263935, 31.803247, 29.735939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737793, 32.269283, 29.949617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586426, 31.999264, 29.696287>,  <41.495605, 31.837252, 29.544289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586426, 31.999264, 29.696287>,  <41.737793, 32.269283, 29.949617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586426, 31.999264, 29.696287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778792, -0.137602, 0.612004,
		-0.500282, 0.724824, -0.473654,
		-0.378420, -0.675052, -0.633327,
		41.472900, 31.796747, 29.506289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038109, 32.432289, 29.981667>,  <41.737793, 32.269283, 29.949617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038109, 32.432289, 29.981667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079185, 32.056622, 29.850571>,  <41.103832, 31.831221, 29.771912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079185, 32.056622, 29.850571>,  <41.038109, 32.432289, 29.981667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079185, 32.056622, 29.850571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748584, -0.289940, 0.596286,
		-0.655039, 0.184108, -0.732822,
		0.102694, -0.939169, -0.327742,
		41.109993, 31.774870, 29.752249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343006, 32.137707, 30.043381>,  <41.038109, 32.432289, 29.981667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343006, 32.137707, 30.043381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550823, 31.802267, 29.977863>,  <40.675514, 31.601004, 29.938553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550823, 31.802267, 29.977863>,  <40.343006, 32.137707, 30.043381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550823, 31.802267, 29.977863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642401, -0.509760, 0.572247,
		-0.563384, -0.192079, -0.803557,
		0.519538, -0.838600, -0.163799,
		40.706684, 31.550688, 29.928724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870567, 31.682243, 29.932646>,  <40.343006, 32.137707, 30.043381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870567, 31.682243, 29.932646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.194920, 31.475147, 30.041769>,  <40.389530, 31.350889, 30.107243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.194920, 31.475147, 30.041769>,  <39.870567, 31.682243, 29.932646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194920, 31.475147, 30.041769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548401, -0.509515, 0.663061,
		-0.204294, -0.687269, -0.697083,
		0.810876, -0.517741, 0.272808,
		40.438183, 31.319824, 30.123611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638100, 30.939741, 29.984888>,  <39.870567, 31.682243, 29.932646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638100, 30.939741, 29.984888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.989769, 30.963192, 30.174042>,  <40.200771, 30.977262, 30.287533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.989769, 30.963192, 30.174042>,  <39.638100, 30.939741, 29.984888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989769, 30.963192, 30.174042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404420, -0.433010, 0.805573,
		0.251991, -0.899481, -0.356981,
		0.879173, 0.058627, 0.472882,
		40.253521, 30.980780, 30.315907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841763, 30.262264, 30.196829>,  <39.638100, 30.939741, 29.984888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841763, 30.262264, 30.196829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.005661, 30.524801, 30.450228>,  <40.104000, 30.682323, 30.602268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.005661, 30.524801, 30.450228>,  <39.841763, 30.262264, 30.196829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005661, 30.524801, 30.450228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426910, -0.475752, 0.769031,
		0.806137, -0.585554, 0.085263,
		0.409745, 0.656344, 0.633500,
		40.128586, 30.721704, 30.640278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090549, 29.788881, 30.726891>,  <39.841763, 30.262264, 30.196829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090549, 29.788881, 30.726891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.084778, 30.144398, 30.910124>,  <40.081314, 30.357708, 31.020063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.084778, 30.144398, 30.910124>,  <40.090549, 29.788881, 30.726891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084778, 30.144398, 30.910124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326349, -0.437230, 0.838049,
		0.945139, -0.137400, 0.296367,
		-0.014432, 0.888792, 0.458084,
		40.080448, 30.411036, 31.047548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230721, 29.613689, 31.465687>,  <40.090549, 29.788881, 30.726891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230721, 29.613689, 31.465687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093193, 29.989296, 31.463045>,  <40.010677, 30.214659, 31.461460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093193, 29.989296, 31.463045>,  <40.230721, 29.613689, 31.465687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093193, 29.989296, 31.463045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581834, -0.207504, 0.786392,
		0.737062, 0.274217, 0.617693,
		-0.343815, 0.939014, -0.006605,
		39.990047, 30.271000, 31.461063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388859, 29.783489, 32.147663>,  <40.230721, 29.613689, 31.465687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388859, 29.783489, 32.147663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.098122, 30.002996, 31.982468>,  <39.923679, 30.134701, 31.883350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.098122, 30.002996, 31.982468>,  <40.388859, 29.783489, 32.147663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098122, 30.002996, 31.982468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539802, -0.084670, 0.837523,
		0.424640, 0.831675, 0.357769,
		-0.726839, 0.548770, -0.412986,
		39.880070, 30.167627, 31.858572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286591, 30.264183, 32.654274>,  <40.388859, 29.783489, 32.147663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286591, 30.264183, 32.654274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973122, 30.218407, 32.410053>,  <39.785042, 30.190941, 32.263523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973122, 30.218407, 32.410053>,  <40.286591, 30.264183, 32.654274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973122, 30.218407, 32.410053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619512, 0.072010, 0.781677,
		-0.045491, 0.990817, -0.127330,
		-0.783668, -0.114442, -0.610547,
		39.738022, 30.184074, 32.226891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891479, 30.789648, 32.946785>,  <40.286591, 30.264183, 32.654274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891479, 30.789648, 32.946785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675652, 30.522091, 32.742260>,  <39.546154, 30.361557, 32.619545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675652, 30.522091, 32.742260>,  <39.891479, 30.789648, 32.946785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675652, 30.522091, 32.742260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713127, 0.040252, 0.699878,
		-0.447562, 0.742269, -0.498724,
		-0.539573, -0.668892, -0.511317,
		39.513779, 30.321423, 32.588863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157356, 31.051579, 33.031185>,  <39.891479, 30.789648, 32.946785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157356, 31.051579, 33.031185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141476, 30.663486, 32.935623>,  <39.131947, 30.430632, 32.878288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141476, 30.663486, 32.935623>,  <39.157356, 31.051579, 33.031185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141476, 30.663486, 32.935623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776487, -0.120523, 0.618500,
		-0.628881, 0.210059, -0.748587,
		-0.039700, -0.970232, -0.238903,
		39.129566, 30.372417, 32.863953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488018, 30.919674, 33.058826>,  <39.157356, 31.051579, 33.031185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488018, 30.919674, 33.058826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666351, 30.563124, 33.091507>,  <38.773354, 30.349194, 33.111115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666351, 30.563124, 33.091507>,  <38.488018, 30.919674, 33.058826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666351, 30.563124, 33.091507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508617, -0.177167, 0.842568,
		-0.736572, -0.417203, -0.532357,
		0.445838, -0.891377, 0.081700,
		38.800102, 30.295710, 33.116016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978329, 30.429947, 33.255787>,  <38.488018, 30.919674, 33.058826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978329, 30.429947, 33.255787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327015, 30.250553, 33.334751>,  <38.536228, 30.142918, 33.382130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327015, 30.250553, 33.334751>,  <37.978329, 30.429947, 33.255787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327015, 30.250553, 33.334751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297468, -0.164193, 0.940507,
		-0.389389, -0.878579, -0.276540,
		0.871716, -0.448485, 0.197414,
		38.588531, 30.116009, 33.393974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861481, 29.792191, 33.624184>,  <37.978329, 30.429947, 33.255787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861481, 29.792191, 33.624184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229053, 29.905491, 33.733974>,  <38.449596, 29.973471, 33.799847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229053, 29.905491, 33.733974>,  <37.861481, 29.792191, 33.624184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229053, 29.905491, 33.733974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216359, -0.219846, 0.951240,
		0.329781, -0.933508, -0.140739,
		0.918931, 0.283250, 0.274473,
		38.504734, 29.990465, 33.816315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095963, 29.296865, 34.130913>,  <37.861481, 29.792191, 33.624184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095963, 29.296865, 34.130913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366150, 29.588806, 34.172966>,  <38.528263, 29.763971, 34.198196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366150, 29.588806, 34.172966>,  <38.095963, 29.296865, 34.130913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366150, 29.588806, 34.172966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131146, -0.021395, 0.991132,
		0.725629, -0.683271, 0.081266,
		0.675473, 0.729852, 0.105133,
		38.568790, 29.807762, 34.204506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442852, 29.078045, 34.744686>,  <38.095963, 29.296865, 34.130913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442852, 29.078045, 34.744686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512985, 29.469679, 34.703415>,  <38.555065, 29.704660, 34.678650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.512985, 29.469679, 34.703415>,  <38.442852, 29.078045, 34.744686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512985, 29.469679, 34.703415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195699, 0.137375, 0.970994,
		0.964863, -0.150054, 0.215693,
		0.175332, 0.979087, -0.103183,
		38.565586, 29.763405, 34.672459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834702, 29.315565, 35.305115>,  <38.442852, 29.078045, 34.744686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834702, 29.315565, 35.305115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648266, 29.647324, 35.181911>,  <38.536404, 29.846378, 35.107990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.648266, 29.647324, 35.181911>,  <38.834702, 29.315565, 35.305115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648266, 29.647324, 35.181911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435743, 0.087785, 0.895780,
		0.769993, 0.551724, 0.320487,
		-0.466089, 0.829394, -0.308004,
		38.508438, 29.896141, 35.089512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096912, 29.798035, 35.709690>,  <38.834702, 29.315565, 35.305115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096912, 29.798035, 35.709690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759521, 29.976015, 35.589317>,  <38.557087, 30.082804, 35.517094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759521, 29.976015, 35.589317>,  <39.096912, 29.798035, 35.709690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759521, 29.976015, 35.589317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315910, 0.042188, 0.947851,
		0.434442, 0.894561, 0.104979,
		-0.843482, 0.444950, -0.300929,
		38.506477, 30.109501, 35.499039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847061, 30.382093, 36.191376>,  <39.096912, 29.798035, 35.709690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847061, 30.382093, 36.191376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500259, 30.319546, 36.002125>,  <38.292179, 30.282017, 35.888577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500259, 30.319546, 36.002125>,  <38.847061, 30.382093, 36.191376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500259, 30.319546, 36.002125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449650, -0.163660, 0.878083,
		-0.214736, 0.974045, 0.071584,
		-0.867008, -0.156368, -0.473123,
		38.240158, 30.272635, 35.860188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440502, 30.874352, 36.376545>,  <38.847061, 30.382093, 36.191376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440502, 30.874352, 36.376545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197956, 30.582241, 36.250679>,  <38.052429, 30.406975, 36.175159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197956, 30.582241, 36.250679>,  <38.440502, 30.874352, 36.376545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197956, 30.582241, 36.250679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528956, 0.074968, 0.845332,
		-0.593736, 0.679026, -0.431742,
		-0.606369, -0.730276, -0.314664,
		38.016045, 30.363159, 36.156281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587608, 31.086739, 37.070026>,  <38.440502, 30.874352, 36.376545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587608, 31.086739, 37.070026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746078, 31.337189, 37.338657>,  <38.841160, 31.487459, 37.499836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746078, 31.337189, 37.338657>,  <38.587608, 31.086739, 37.070026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746078, 31.337189, 37.338657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642902, 0.333033, -0.689758,
		-0.655529, 0.705024, -0.270596,
		0.396179, 0.626123, 0.671574,
		38.864933, 31.525026, 37.540131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534904, 31.885906, 36.952526>,  <38.587608, 31.086739, 37.070026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534904, 31.885906, 36.952526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872181, 31.820850, 37.157494>,  <39.074547, 31.781816, 37.280476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.872181, 31.820850, 37.157494>,  <38.534904, 31.885906, 36.952526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872181, 31.820850, 37.157494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534603, 0.354367, -0.767218,
		-0.056804, 0.920854, 0.385748,
		0.843192, -0.162641, 0.512420,
		39.125137, 31.772058, 37.311218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914005, 32.442638, 36.885845>,  <38.534904, 31.885906, 36.952526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914005, 32.442638, 36.885845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171486, 32.145039, 36.957531>,  <39.325974, 31.966480, 37.000542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171486, 32.145039, 36.957531>,  <38.914005, 32.442638, 36.885845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171486, 32.145039, 36.957531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511093, 0.243637, -0.824272,
		0.569592, 0.622181, 0.537081,
		0.643700, -0.743997, 0.179219,
		39.364597, 31.921839, 37.011295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699024, 32.716366, 36.842880>,  <38.914005, 32.442638, 36.885845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699024, 32.716366, 36.842880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.710209, 32.320129, 36.789291>,  <39.716919, 32.082386, 36.757137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.710209, 32.320129, 36.789291>,  <39.699024, 32.716366, 36.842880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710209, 32.320129, 36.789291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427764, 0.132990, -0.894054,
		0.903458, -0.032311, 0.427457,
		0.027960, -0.990591, -0.133973,
		39.718597, 32.022953, 36.749100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440331, 32.566631, 36.725483>,  <39.699024, 32.716366, 36.842880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440331, 32.566631, 36.725483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268890, 32.234821, 36.582268>,  <40.166027, 32.035736, 36.496338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268890, 32.234821, 36.582268>,  <40.440331, 32.566631, 36.725483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268890, 32.234821, 36.582268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601031, 0.034105, -0.798498,
		0.674585, -0.557427, 0.483953,
		-0.428599, -0.829526, -0.358037,
		40.140312, 31.985964, 36.474857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989540, 32.188091, 36.534035>,  <40.440331, 32.566631, 36.725483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989540, 32.188091, 36.534035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.677814, 32.030682, 36.338974>,  <40.490780, 31.936237, 36.221935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.677814, 32.030682, 36.338974>,  <40.989540, 32.188091, 36.534035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677814, 32.030682, 36.338974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565816, -0.107477, -0.817497,
		0.269291, -0.913011, 0.306419,
		-0.779317, -0.393521, -0.487654,
		40.444019, 31.912626, 36.192677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184948, 31.600002, 36.116894>,  <40.989540, 32.188091, 36.534035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184948, 31.600002, 36.116894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.852493, 31.731785, 35.937706>,  <40.653023, 31.810854, 35.830193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.852493, 31.731785, 35.937706>,  <41.184948, 31.600002, 36.116894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852493, 31.731785, 35.937706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474722, 0.000856, -0.880136,
		-0.289584, -0.944170, -0.157111,
		-0.831132, 0.329457, -0.447970,
		40.603153, 31.830622, 35.803314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096947, 31.219305, 35.446224>,  <41.184948, 31.600002, 36.116894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096947, 31.219305, 35.446224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.838661, 31.521175, 35.399719>,  <40.683689, 31.702297, 35.371819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.838661, 31.521175, 35.399719>,  <41.096947, 31.219305, 35.446224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838661, 31.521175, 35.399719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371529, 0.177499, -0.911296,
		-0.667096, -0.631633, -0.394997,
		-0.645716, 0.754675, -0.116261,
		40.644947, 31.747578, 35.364841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671867, 31.094690, 34.832111>,  <41.096947, 31.219305, 35.446224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671867, 31.094690, 34.832111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.647888, 31.486849, 34.907192>,  <40.633499, 31.722143, 34.952240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.647888, 31.486849, 34.907192>,  <40.671867, 31.094690, 34.832111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647888, 31.486849, 34.907192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301010, 0.197039, -0.933043,
		-0.951735, 0.000564, -0.306921,
		-0.059949, 0.980396, 0.187698,
		40.629902, 31.780968, 34.963501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240253, 31.434095, 34.358379>,  <40.671867, 31.094690, 34.832111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240253, 31.434095, 34.358379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.504120, 31.706434, 34.485680>,  <40.662441, 31.869839, 34.562057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.504120, 31.706434, 34.485680>,  <40.240253, 31.434095, 34.358379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504120, 31.706434, 34.485680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293577, 0.156368, -0.943060,
		-0.691845, 0.715537, -0.096730,
		0.659669, 0.680849, 0.318248,
		40.702019, 31.910688, 34.581154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240204, 31.896919, 33.780224>,  <40.240253, 31.434095, 34.358379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240204, 31.896919, 33.780224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532612, 32.044724, 34.009686>,  <40.708057, 32.133408, 34.147362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532612, 32.044724, 34.009686>,  <40.240204, 31.896919, 33.780224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532612, 32.044724, 34.009686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485968, 0.308223, -0.817822,
		-0.479005, 0.876619, 0.045747,
		0.731019, 0.369509, 0.573650,
		40.751919, 32.155575, 34.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232563, 32.581722, 33.622528>,  <40.240204, 31.896919, 33.780224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232563, 32.581722, 33.622528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.590939, 32.475014, 33.764584>,  <40.805965, 32.410988, 33.849819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.590939, 32.475014, 33.764584>,  <40.232563, 32.581722, 33.622528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590939, 32.475014, 33.764584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436006, 0.375562, -0.817834,
		0.084796, 0.887574, 0.452794,
		0.895940, -0.266770, 0.355141,
		40.859722, 32.394981, 33.871124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816189, 33.132847, 33.546261>,  <40.232563, 32.581722, 33.622528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816189, 33.132847, 33.546261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021179, 32.790016, 33.567348>,  <41.144173, 32.584316, 33.580002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021179, 32.790016, 33.567348>,  <40.816189, 33.132847, 33.546261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021179, 32.790016, 33.567348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612279, 0.321683, -0.722242,
		0.602061, 0.402412, 0.689628,
		0.512481, -0.857079, 0.052716,
		41.174923, 32.532894, 33.583164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442123, 33.403595, 33.353756>,  <40.816189, 33.132847, 33.546261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442123, 33.403595, 33.353756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481285, 33.007957, 33.309750>,  <41.504780, 32.770573, 33.283344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481285, 33.007957, 33.309750>,  <41.442123, 33.403595, 33.353756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481285, 33.007957, 33.309750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640738, 0.147234, -0.753509,
		0.761492, 0.003275, 0.648166,
		0.097900, -0.989096, -0.110020,
		41.510654, 32.711227, 33.276745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236813, 33.209442, 33.408218>,  <41.442123, 33.403595, 33.353756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236813, 33.209442, 33.408218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.083633, 32.887791, 33.226349>,  <41.991726, 32.694801, 33.117226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.083633, 32.887791, 33.226349>,  <42.236813, 33.209442, 33.408218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083633, 32.887791, 33.226349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644194, 0.120303, -0.755342,
		0.662089, -0.582157, 0.471943,
		-0.382952, -0.804127, -0.454673,
		41.968746, 32.646553, 33.089947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767239, 32.805866, 33.307949>,  <42.236813, 33.209442, 33.408218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767239, 32.805866, 33.307949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.487915, 32.668385, 33.056797>,  <42.320320, 32.585896, 32.906105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.487915, 32.668385, 33.056797>,  <42.767239, 32.805866, 33.307949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487915, 32.668385, 33.056797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655298, 0.045988, -0.753970,
		0.288021, -0.937949, 0.193119,
		-0.698304, -0.343709, -0.627881,
		42.278423, 32.565273, 32.868431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137085, 32.389767, 32.954422>,  <42.767239, 32.805866, 33.307949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137085, 32.389767, 32.954422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.824448, 32.443977, 32.710865>,  <42.636864, 32.476501, 32.564732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.824448, 32.443977, 32.710865>,  <43.137085, 32.389767, 32.954422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824448, 32.443977, 32.710865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615064, 0.004731, -0.788463,
		-0.103976, -0.990763, -0.087054,
		-0.781592, 0.135525, -0.608890,
		42.589970, 32.484634, 32.528198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294598, 31.984207, 32.384697>,  <43.137085, 32.389767, 32.954422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294598, 31.984207, 32.384697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.032257, 32.268681, 32.283443>,  <42.874851, 32.439365, 32.222691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.032257, 32.268681, 32.283443>,  <43.294598, 31.984207, 32.384697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032257, 32.268681, 32.283443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555660, 0.227828, -0.799585,
		-0.510979, -0.665067, -0.544597,
		-0.655852, 0.711182, -0.253135,
		42.835503, 32.482037, 32.207504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.156387, 31.885948, 31.675636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.015236, 32.257236, 31.722755>,  <42.930546, 32.480011, 31.751026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.015236, 32.257236, 31.722755>,  <43.156387, 31.885948, 31.675636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015236, 32.257236, 31.722755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338457, 0.244003, -0.908796,
		-0.872308, -0.280829, -0.400268,
		-0.352883, 0.928223, 0.117797,
		42.909370, 32.535702, 31.758095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704292, 32.053707, 31.074453>,  <43.156387, 31.885948, 31.675636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704292, 32.053707, 31.074453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.843040, 32.395206, 31.229788>,  <42.926289, 32.600105, 31.322989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.843040, 32.395206, 31.229788>,  <42.704292, 32.053707, 31.074453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843040, 32.395206, 31.229788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368464, 0.256715, -0.893494,
		-0.862507, 0.453011, -0.225528,
		0.346866, 0.853744, 0.388337,
		42.947102, 32.651329, 31.346289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411938, 32.515652, 30.649307>,  <42.704292, 32.053707, 31.074453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411938, 32.515652, 30.649307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.731564, 32.677341, 30.827339>,  <42.923340, 32.774357, 30.934158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.731564, 32.677341, 30.827339>,  <42.411938, 32.515652, 30.649307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731564, 32.677341, 30.827339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354345, 0.281423, -0.891763,
		-0.485729, 0.870289, 0.081640,
		0.799066, 0.404227, 0.445078,
		42.971283, 32.798611, 30.960863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418888, 33.181324, 30.271879>,  <42.411938, 32.515652, 30.649307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418888, 33.181324, 30.271879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.765976, 33.156487, 30.469143>,  <42.974228, 33.141586, 30.587502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.765976, 33.156487, 30.469143>,  <42.418888, 33.181324, 30.271879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765976, 33.156487, 30.469143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487589, 0.299027, -0.820268,
		-0.096539, 0.952222, 0.289746,
		0.867719, -0.062089, 0.493161,
		43.026291, 33.137859, 30.617092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639645, 33.952011, 30.469086>,  <42.418888, 33.181324, 30.271879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639645, 33.952011, 30.469086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.956760, 33.712769, 30.422184>,  <43.147030, 33.569221, 30.394043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.956760, 33.712769, 30.422184>,  <42.639645, 33.952011, 30.469086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956760, 33.712769, 30.422184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308414, 0.559600, -0.769239,
		0.525705, 0.573683, 0.628110,
		0.792790, -0.598111, -0.117253,
		43.194599, 33.533337, 30.387009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190201, 34.380676, 30.320650>,  <42.639645, 33.952011, 30.469086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190201, 34.380676, 30.320650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.332420, 34.026142, 30.201990>,  <43.417751, 33.813423, 30.130795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.332420, 34.026142, 30.201990>,  <43.190201, 34.380676, 30.320650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332420, 34.026142, 30.201990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536067, 0.453375, -0.712097,
		0.765647, 0.094163, 0.636331,
		0.355550, -0.886332, -0.296648,
		43.439087, 33.760242, 30.112995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929188, 34.537628, 30.137060>,  <43.190201, 34.380676, 30.320650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929188, 34.537628, 30.137060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.850792, 34.190182, 29.955032>,  <43.803753, 33.981712, 29.845816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.850792, 34.190182, 29.955032>,  <43.929188, 34.537628, 30.137060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850792, 34.190182, 29.955032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553215, 0.285228, -0.782686,
		0.809655, -0.405151, 0.424631,
		-0.195989, -0.868618, -0.455072,
		43.791996, 33.929596, 29.818510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507404, 34.420422, 29.771261>,  <43.929188, 34.537628, 30.137060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507404, 34.420422, 29.771261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.268585, 34.150143, 29.598307>,  <44.125294, 33.987976, 29.494534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.268585, 34.150143, 29.598307>,  <44.507404, 34.420422, 29.771261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268585, 34.150143, 29.598307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476845, 0.134505, -0.868635,
		0.645095, -0.724802, 0.241898,
		-0.597052, -0.675700, -0.432387,
		44.089470, 33.947433, 29.468590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004795, 33.906261, 29.509729>,  <44.507404, 34.420422, 29.771261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004795, 33.906261, 29.509729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.662327, 33.889507, 29.303732>,  <44.456844, 33.879456, 29.180134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.662327, 33.889507, 29.303732>,  <45.004795, 33.906261, 29.509729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662327, 33.889507, 29.303732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494913, 0.219853, -0.840670,
		0.148432, -0.974634, -0.167503,
		-0.856171, -0.041883, -0.514992,
		44.405476, 33.876942, 29.149235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062637, 33.415291, 28.856689>,  <45.004795, 33.906261, 29.509729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062637, 33.415291, 28.856689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.757416, 33.664352, 28.787359>,  <44.574284, 33.813789, 28.745762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.757416, 33.664352, 28.787359>,  <45.062637, 33.415291, 28.856689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757416, 33.664352, 28.787359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450702, 0.320400, -0.833194,
		-0.463261, -0.713893, -0.525116,
		-0.763058, 0.622656, -0.173324,
		44.528500, 33.851151, 28.735361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903484, 33.299667, 28.106522>,  <45.062637, 33.415291, 28.856689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903484, 33.299667, 28.106522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.730087, 33.651009, 28.187101>,  <44.626049, 33.861813, 28.235449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.730087, 33.651009, 28.187101>,  <44.903484, 33.299667, 28.106522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730087, 33.651009, 28.187101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307122, 0.354161, -0.883316,
		-0.847206, -0.321044, -0.423288,
		-0.433495, 0.878351, 0.201448,
		44.600040, 33.914513, 28.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650959, 33.558620, 27.395319>,  <44.903484, 33.299667, 28.106522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650959, 33.558620, 27.395319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.667702, 33.866524, 27.650103>,  <44.677746, 34.051266, 27.802973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.667702, 33.866524, 27.650103>,  <44.650959, 33.558620, 27.395319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667702, 33.866524, 27.650103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245146, 0.610119, -0.753431,
		-0.968582, 0.187685, -0.163165,
		0.041857, 0.769759, 0.636960,
		44.680260, 34.097450, 27.841190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228771, 34.171017, 27.110168>,  <44.650959, 33.558620, 27.395319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228771, 34.171017, 27.110168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.500935, 34.327667, 27.357933>,  <44.664234, 34.421658, 27.506592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.500935, 34.327667, 27.357933>,  <44.228771, 34.171017, 27.110168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500935, 34.327667, 27.357933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219012, 0.697933, -0.681853,
		-0.699337, 0.599600, 0.389112,
		0.680413, 0.391624, 0.619410,
		44.705059, 34.445156, 27.543756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095394, 34.909859, 27.130884>,  <44.228771, 34.171017, 27.110168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095394, 34.909859, 27.130884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.463055, 34.865795, 27.282160>,  <44.683651, 34.839355, 27.372925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.463055, 34.865795, 27.282160>,  <44.095394, 34.909859, 27.130884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463055, 34.865795, 27.282160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265709, 0.882170, -0.388812,
		-0.290795, 0.457865, 0.840118,
		0.919150, -0.110162, 0.378189,
		44.738800, 34.832748, 27.395617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187607, 35.499958, 27.401377>,  <44.095394, 34.909859, 27.130884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187607, 35.499958, 27.401377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.539822, 35.331264, 27.314844>,  <44.751152, 35.230049, 27.262924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.539822, 35.331264, 27.314844>,  <44.187607, 35.499958, 27.401377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539822, 35.331264, 27.314844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259135, 0.810507, -0.525289,
		0.396869, 0.406476, 0.822965,
		0.880536, -0.421730, -0.216333,
		44.803982, 35.204746, 27.249945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631649, 36.019188, 27.462919>,  <44.187607, 35.499958, 27.401377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631649, 36.019188, 27.462919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.839958, 35.749477, 27.253483>,  <44.964943, 35.587650, 27.127821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.839958, 35.749477, 27.253483>,  <44.631649, 36.019188, 27.462919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839958, 35.749477, 27.253483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329315, 0.724522, -0.605491,
		0.787623, 0.142894, 0.599359,
		0.520770, -0.674276, -0.523593,
		44.996189, 35.547195, 27.096405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155876, 36.405422, 27.347021>,  <44.631649, 36.019188, 27.462919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155876, 36.405422, 27.347021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.197372, 36.089149, 27.105671>,  <45.222271, 35.899387, 26.960861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.197372, 36.089149, 27.105671>,  <45.155876, 36.405422, 27.347021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197372, 36.089149, 27.105671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184012, 0.611434, -0.769603,
		0.977434, -0.031191, 0.208923,
		0.103738, -0.790681, -0.603376,
		45.228493, 35.851944, 26.924658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723099, 36.547493, 27.047640>,  <45.155876, 36.405422, 27.347021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723099, 36.547493, 27.047640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.543720, 36.282436, 26.807705>,  <45.436092, 36.123402, 26.663744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.543720, 36.282436, 26.807705>,  <45.723099, 36.547493, 27.047640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543720, 36.282436, 26.807705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282444, 0.531656, -0.798478,
		0.848012, -0.527492, -0.051257,
		-0.448442, -0.662642, -0.599838,
		45.409187, 36.083645, 26.627754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210499, 36.447025, 26.511608>,  <45.723099, 36.547493, 27.047640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210499, 36.447025, 26.511608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.863598, 36.300175, 26.377098>,  <45.655457, 36.212063, 26.296392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.863598, 36.300175, 26.377098>,  <46.210499, 36.447025, 26.511608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863598, 36.300175, 26.377098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288902, 0.178981, -0.940479,
		0.405464, -0.912788, -0.049158,
		-0.867257, -0.367129, -0.336277,
		45.603420, 36.190037, 26.276215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269268, 35.841095, 26.163013>,  <46.210499, 36.447025, 26.511608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269268, 35.841095, 26.163013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.922535, 35.974426, 26.014690>,  <45.714497, 36.054424, 25.925697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.922535, 35.974426, 26.014690>,  <46.269268, 35.841095, 26.163013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922535, 35.974426, 26.014690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339336, -0.150499, -0.928548,
		-0.365318, -0.930721, 0.017346,
		-0.866830, 0.333329, -0.370807,
		45.662487, 36.074425, 25.903448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191330, 35.380901, 25.604389>,  <46.269268, 35.841095, 26.163013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191330, 35.380901, 25.604389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.919716, 35.657627, 25.506166>,  <45.756748, 35.823662, 25.447233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.919716, 35.657627, 25.506166>,  <46.191330, 35.380901, 25.604389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919716, 35.657627, 25.506166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308451, -0.034664, -0.950608,
		-0.666161, -0.721238, -0.189854,
		-0.679034, 0.691819, -0.245558,
		45.716007, 35.865173, 25.432499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894424, 35.137890, 24.948349>,  <46.191330, 35.380901, 25.604389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894424, 35.137890, 24.948349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.851898, 35.533329, 24.991018>,  <45.826382, 35.770592, 25.016621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.851898, 35.533329, 24.991018>,  <45.894424, 35.137890, 24.948349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851898, 35.533329, 24.991018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276386, 0.132437, -0.951878,
		-0.955147, -0.071719, -0.287314,
		-0.106319, 0.988593, 0.106675,
		45.820004, 35.829906, 25.023020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374245, 35.438862, 24.430527>,  <45.894424, 35.137890, 24.948349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374245, 35.438862, 24.430527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.658920, 35.702492, 24.527781>,  <45.829727, 35.860668, 24.586134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.658920, 35.702492, 24.527781>,  <45.374245, 35.438862, 24.430527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658920, 35.702492, 24.527781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270150, 0.062717, -0.960773,
		-0.648471, 0.749457, -0.133414,
		0.711691, 0.659076, 0.243136,
		45.872429, 35.900215, 24.600721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148808, 35.132637, 23.820320>,  <45.374245, 35.438862, 24.430527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148808, 35.132637, 23.820320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.764320, 35.075405, 23.726017>,  <44.533627, 35.041065, 23.669436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.764320, 35.075405, 23.726017>,  <45.148808, 35.132637, 23.820320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764320, 35.075405, 23.726017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007061, 0.841828, -0.539699,
		0.275691, -0.520435, -0.808172,
		-0.961220, -0.143084, -0.235760,
		44.475956, 35.032478, 23.655289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733376, 35.074486, 23.294184>,  <45.148808, 35.132637, 23.820320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733376, 35.074486, 23.294184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.561119, 34.858002, 23.005287>,  <45.457764, 34.728111, 22.831949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.561119, 34.858002, 23.005287>,  <45.733376, 35.074486, 23.294184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561119, 34.858002, 23.005287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852355, -0.019205, 0.522612,
		-0.296715, 0.840666, -0.453035,
		-0.430641, -0.541214, -0.722244,
		45.431927, 34.695637, 22.788614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010418, 35.414806, 23.141405>,  <45.733376, 35.074486, 23.294184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010418, 35.414806, 23.141405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.988575, 35.042007, 22.998070>,  <44.975471, 34.818329, 22.912069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.988575, 35.042007, 22.998070>,  <45.010418, 35.414806, 23.141405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988575, 35.042007, 22.998070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933706, -0.079519, 0.349098,
		-0.353851, 0.353644, -0.865866,
		-0.054604, -0.931994, -0.358337,
		44.972195, 34.762409, 22.890568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340439, 35.327995, 23.062847>,  <45.010418, 35.414806, 23.141405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340439, 35.327995, 23.062847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.481899, 34.953930, 23.070820>,  <44.566776, 34.729492, 23.075603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.481899, 34.953930, 23.070820>,  <44.340439, 35.327995, 23.062847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481899, 34.953930, 23.070820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801169, -0.291847, 0.522449,
		-0.482758, -0.200737, -0.852437,
		0.353656, -0.935163, 0.019933,
		44.587997, 34.673382, 23.076799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717976, 34.891106, 22.963816>,  <44.340439, 35.327995, 23.062847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717976, 34.891106, 22.963816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.006905, 34.673031, 23.134003>,  <44.180264, 34.542187, 23.236115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.006905, 34.673031, 23.134003>,  <43.717976, 34.891106, 22.963816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006905, 34.673031, 23.134003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639077, -0.291130, 0.711916,
		-0.264249, -0.786147, -0.558699,
		0.722325, -0.545175, 0.425478,
		44.223602, 34.509476, 23.261644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370110, 34.309010, 23.199619>,  <43.717976, 34.891106, 22.963816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370110, 34.309010, 23.199619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.710781, 34.302906, 23.409153>,  <43.915184, 34.299244, 23.534874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.710781, 34.302906, 23.409153>,  <43.370110, 34.309010, 23.199619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710781, 34.302906, 23.409153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465395, -0.481555, 0.742638,
		0.240924, -0.876283, -0.417233,
		0.851682, -0.015259, 0.523836,
		43.966286, 34.298328, 23.566303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328064, 33.675613, 23.477079>,  <43.370110, 34.309010, 23.199619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328064, 33.675613, 23.477079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.573265, 33.885990, 23.712915>,  <43.720387, 34.012215, 23.854416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.573265, 33.885990, 23.712915>,  <43.328064, 33.675613, 23.477079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573265, 33.885990, 23.712915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434102, -0.399300, 0.807536,
		0.660141, -0.750961, -0.016458,
		0.613000, 0.525943, 0.589588,
		43.757164, 34.043774, 23.889791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498672, 33.218414, 23.943148>,  <43.328064, 33.675613, 23.477079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498672, 33.218414, 23.943148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.548210, 33.580902, 24.104853>,  <43.577934, 33.798393, 24.201876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.548210, 33.580902, 24.104853>,  <43.498672, 33.218414, 23.943148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548210, 33.580902, 24.104853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324092, -0.348117, 0.879647,
		0.937884, -0.239960, 0.250585,
		0.123847, 0.906219, 0.404262,
		43.585365, 33.852768, 24.226131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684326, 32.989784, 24.520374>,  <43.498672, 33.218414, 23.943148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684326, 32.989784, 24.520374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.549770, 33.363869, 24.564606>,  <43.469036, 33.588318, 24.591145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.549770, 33.363869, 24.564606>,  <43.684326, 32.989784, 24.520374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549770, 33.363869, 24.564606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352953, -0.234069, 0.905890,
		0.873079, 0.265702, 0.408822,
		-0.336389, 0.935208, 0.110581,
		43.448853, 33.644432, 24.597780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827118, 33.038998, 25.279808>,  <43.684326, 32.989784, 24.520374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827118, 33.038998, 25.279808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.627838, 33.371532, 25.181271>,  <43.508270, 33.571053, 25.122149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.627838, 33.371532, 25.181271>,  <43.827118, 33.038998, 25.279808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627838, 33.371532, 25.181271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511471, -0.052357, 0.857704,
		0.700140, 0.553304, 0.451286,
		-0.498199, 0.831332, -0.246342,
		43.478378, 33.620934, 25.107368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029049, 33.738068, 25.714479>,  <43.827118, 33.038998, 25.279808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029049, 33.738068, 25.714479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.650253, 33.693302, 25.594017>,  <43.422977, 33.666443, 25.521740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.650253, 33.693302, 25.594017>,  <44.029049, 33.738068, 25.714479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650253, 33.693302, 25.594017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283234, -0.151648, 0.946985,
		-0.151648, 0.982079, 0.111912,
		-0.946985, -0.111912, -0.301156,
		43.366158, 33.659729, 25.503670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684258, 34.082756, 26.254829>,  <44.029049, 33.738068, 25.714479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684258, 34.082756, 26.254829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.398949, 33.868500, 26.074017>,  <43.227764, 33.739948, 25.965528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.398949, 33.868500, 26.074017>,  <43.684258, 34.082756, 26.254829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398949, 33.868500, 26.074017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405153, -0.211170, 0.889527,
		-0.571919, 0.817619, -0.066392,
		-0.713274, -0.535636, -0.452033,
		43.184967, 33.707809, 25.938406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121834, 34.284710, 26.565561>,  <43.684258, 34.082756, 26.254829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121834, 34.284710, 26.565561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028851, 33.922741, 26.422972>,  <42.973061, 33.705559, 26.337418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.028851, 33.922741, 26.422972>,  <43.121834, 34.284710, 26.565561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028851, 33.922741, 26.422972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528181, -0.190305, 0.827532,
		-0.816692, 0.380653, -0.433725,
		-0.232463, -0.904924, -0.356474,
		42.959110, 33.651264, 26.316029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501331, 34.200657, 26.827757>,  <43.121834, 34.284710, 26.565561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501331, 34.200657, 26.827757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.588078, 33.830231, 26.704224>,  <42.640125, 33.607975, 26.630104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.588078, 33.830231, 26.704224>,  <42.501331, 34.200657, 26.827757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588078, 33.830231, 26.704224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563276, -0.377089, 0.735204,
		-0.797302, 0.014519, -0.603406,
		0.216863, -0.926063, -0.308832,
		42.653137, 33.552410, 26.611574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968132, 33.910290, 27.026083>,  <42.501331, 34.200657, 26.827757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968132, 33.910290, 27.026083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212399, 33.597683, 26.974995>,  <42.358959, 33.410118, 26.944342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212399, 33.597683, 26.974995>,  <41.968132, 33.910290, 27.026083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212399, 33.597683, 26.974995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459942, -0.481333, 0.746172,
		-0.644626, -0.396916, -0.653388,
		0.610664, -0.781522, -0.127721,
		42.395599, 33.363228, 26.936678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568707, 33.285892, 27.028337>,  <41.968132, 33.910290, 27.026083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568707, 33.285892, 27.028337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940422, 33.156265, 27.099228>,  <42.163452, 33.078487, 27.141762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940422, 33.156265, 27.099228>,  <41.568707, 33.285892, 27.028337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940422, 33.156265, 27.099228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351005, -0.625399, 0.696902,
		-0.115007, -0.709828, -0.694923,
		0.929284, -0.324070, 0.177227,
		42.219208, 33.059044, 27.152395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539364, 32.530891, 27.077040>,  <41.568707, 33.285892, 27.028337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539364, 32.530891, 27.077040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.866882, 32.643574, 27.277122>,  <42.063393, 32.711182, 27.397173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.866882, 32.643574, 27.277122>,  <41.539364, 32.530891, 27.077040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866882, 32.643574, 27.277122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212358, -0.660891, 0.719810,
		0.533358, -0.695604, -0.481315,
		0.818800, 0.281705, 0.500209,
		42.112522, 32.728085, 27.427185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862423, 31.969110, 27.273478>,  <41.539364, 32.530891, 27.077040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862423, 31.969110, 27.273478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063087, 32.209953, 27.521929>,  <42.183487, 32.354458, 27.671000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063087, 32.209953, 27.521929>,  <41.862423, 31.969110, 27.273478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063087, 32.209953, 27.521929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204457, -0.615148, 0.761439,
		0.840555, -0.508980, -0.185492,
		0.501663, 0.602106, 0.621130,
		42.213585, 32.390587, 27.708267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306587, 31.537649, 27.686981>,  <41.862423, 31.969110, 27.273478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306587, 31.537649, 27.686981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245335, 31.877150, 27.889437>,  <42.208584, 32.080849, 28.010910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.245335, 31.877150, 27.889437>,  <42.306587, 31.537649, 27.686981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245335, 31.877150, 27.889437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426421, -0.518792, 0.740959,
		0.891469, -0.102366, 0.441367,
		-0.153129, 0.848750, 0.506138,
		42.199394, 32.131775, 28.041279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541744, 31.372187, 28.363739>,  <42.306587, 31.537649, 27.686981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541744, 31.372187, 28.363739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.298615, 31.688314, 28.394581>,  <42.152737, 31.877991, 28.413086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.298615, 31.688314, 28.394581>,  <42.541744, 31.372187, 28.363739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298615, 31.688314, 28.394581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492945, -0.451667, 0.743641,
		0.622541, 0.413992, 0.664118,
		-0.607822, 0.790321, 0.077106,
		42.116268, 31.925411, 28.417713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486702, 31.389393, 29.160877>,  <42.541744, 31.372187, 28.363739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486702, 31.389393, 29.160877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.210464, 31.627878, 28.997118>,  <42.044720, 31.770969, 28.898863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.210464, 31.627878, 28.997118>,  <42.486702, 31.389393, 29.160877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210464, 31.627878, 28.997118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686892, -0.363496, 0.629324,
		0.226397, 0.715821, 0.660563,
		-0.690596, 0.596213, -0.409398,
		42.003284, 31.806742, 28.874298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.006596, 31.995787, 34.399960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664577, 32.118652, 34.232841>,  <41.459366, 32.192371, 34.132572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664577, 32.118652, 34.232841>,  <42.006596, 31.995787, 34.399960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664577, 32.118652, 34.232841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451737, -0.045603, 0.890985,
		0.254626, 0.950563, 0.177750,
		-0.855043, 0.307164, -0.417793,
		41.408066, 32.210800, 34.107502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831699, 32.511768, 34.864983>,  <42.006596, 31.995787, 34.399960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831699, 32.511768, 34.864983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509636, 32.376686, 34.669971>,  <41.316399, 32.295639, 34.552967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.509636, 32.376686, 34.669971>,  <41.831699, 32.511768, 34.864983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509636, 32.376686, 34.669971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521838, 0.012811, 0.852949,
		-0.281798, 0.941166, -0.186541,
		-0.805155, -0.337704, -0.487526,
		41.268089, 32.275375, 34.523712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286724, 32.906727, 35.089176>,  <41.831699, 32.511768, 34.864983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286724, 32.906727, 35.089176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.094185, 32.614471, 34.895489>,  <40.978661, 32.439117, 34.779278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.094185, 32.614471, 34.895489>,  <41.286724, 32.906727, 35.089176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094185, 32.614471, 34.895489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610839, -0.116581, 0.783125,
		-0.628634, 0.672735, -0.390189,
		-0.481347, -0.730641, -0.484220,
		40.949780, 32.395279, 34.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566071, 33.086964, 35.176704>,  <41.286724, 32.906727, 35.089176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566071, 33.086964, 35.176704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.599285, 32.691200, 35.129074>,  <40.619213, 32.453743, 35.100494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.599285, 32.691200, 35.129074>,  <40.566071, 33.086964, 35.176704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599285, 32.691200, 35.129074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446503, -0.143764, 0.883157,
		-0.890921, -0.020162, -0.453711,
		0.083033, -0.989406, -0.119080,
		40.624195, 32.394379, 35.093349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928715, 32.801556, 35.177418>,  <40.566071, 33.086964, 35.176704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928715, 32.801556, 35.177418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.155361, 32.479473, 35.247375>,  <40.291348, 32.286224, 35.289349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.155361, 32.479473, 35.247375>,  <39.928715, 32.801556, 35.177418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155361, 32.479473, 35.247375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645096, -0.301439, 0.702129,
		-0.512641, -0.510658, -0.690237,
		0.566612, -0.805210, 0.174893,
		40.325344, 32.237911, 35.299843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495243, 32.180897, 35.255016>,  <39.928715, 32.801556, 35.177418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495243, 32.180897, 35.255016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841080, 32.110168, 35.443150>,  <40.048580, 32.067730, 35.556030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841080, 32.110168, 35.443150>,  <39.495243, 32.180897, 35.255016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841080, 32.110168, 35.443150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485119, -0.537637, 0.689642,
		0.130925, -0.824427, -0.550617,
		0.864591, -0.176823, 0.470336,
		40.100456, 32.057121, 35.584251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392769, 31.457613, 35.526321>,  <39.495243, 32.180897, 35.255016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392769, 31.457613, 35.526321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699291, 31.624716, 35.721569>,  <39.883205, 31.724977, 35.838718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699291, 31.624716, 35.721569>,  <39.392769, 31.457613, 35.526321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699291, 31.624716, 35.721569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434024, -0.223568, 0.872720,
		0.473713, -0.880623, 0.009996,
		0.766303, 0.417757, 0.488118,
		39.929184, 31.750042, 35.868004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357544, 31.098679, 36.068756>,  <39.392769, 31.457613, 35.526321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357544, 31.098679, 36.068756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612591, 31.382109, 36.189659>,  <39.765621, 31.552166, 36.262203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612591, 31.382109, 36.189659>,  <39.357544, 31.098679, 36.068756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612591, 31.382109, 36.189659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350592, -0.082464, 0.932890,
		0.685949, -0.700800, 0.195840,
		0.637620, 0.708575, 0.302261,
		39.803879, 31.594681, 36.280338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825855, 30.748568, 36.547955>,  <39.357544, 31.098679, 36.068756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825855, 30.748568, 36.547955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773941, 31.142004, 36.598083>,  <39.742794, 31.378065, 36.628162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773941, 31.142004, 36.598083>,  <39.825855, 30.748568, 36.547955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773941, 31.142004, 36.598083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290029, -0.158522, 0.943798,
		0.948177, 0.086141, 0.305843,
		-0.129783, 0.983591, 0.125324,
		39.735004, 31.437080, 36.635681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041870, 30.851780, 37.279778>,  <39.825855, 30.748568, 36.547955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041870, 30.851780, 37.279778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.818146, 31.167038, 37.177017>,  <39.683910, 31.356194, 37.115360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.818146, 31.167038, 37.177017>,  <40.041870, 30.851780, 37.279778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818146, 31.167038, 37.177017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447297, -0.026018, 0.894007,
		0.697923, 0.614939, 0.367087,
		-0.559311, 0.788145, -0.256902,
		39.650352, 31.403482, 37.099945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233395, 31.361534, 37.805946>,  <40.041870, 30.851780, 37.279778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233395, 31.361534, 37.805946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876892, 31.474989, 37.664410>,  <39.662991, 31.543062, 37.579487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876892, 31.474989, 37.664410>,  <40.233395, 31.361534, 37.805946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876892, 31.474989, 37.664410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373100, -0.015087, 0.927669,
		0.257781, 0.958813, 0.119271,
		-0.891261, 0.283636, -0.353844,
		39.609512, 31.560080, 37.558258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917953, 31.988935, 38.182171>,  <40.233395, 31.361534, 37.805946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917953, 31.988935, 38.182171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636261, 31.753559, 38.023277>,  <39.467247, 31.612333, 37.927940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636261, 31.753559, 38.023277>,  <39.917953, 31.988935, 38.182171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636261, 31.753559, 38.023277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437156, -0.081472, 0.895688,
		-0.559422, 0.804425, -0.199865,
		-0.704231, -0.588440, -0.397236,
		39.424992, 31.577026, 37.904106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210274, 32.102200, 38.512501>,  <39.917953, 31.988935, 38.182171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210274, 32.102200, 38.512501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202061, 31.730539, 38.364853>,  <39.197132, 31.507542, 38.276264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202061, 31.730539, 38.364853>,  <39.210274, 32.102200, 38.512501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202061, 31.730539, 38.364853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436819, -0.323763, 0.839265,
		-0.899315, 0.178469, -0.399225,
		-0.020529, -0.929153, -0.369124,
		39.195904, 31.451794, 38.254116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461994, 31.865261, 38.602356>,  <39.210274, 32.102200, 38.512501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461994, 31.865261, 38.602356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718742, 31.559427, 38.578960>,  <38.872791, 31.375927, 38.564922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718742, 31.559427, 38.578960>,  <38.461994, 31.865261, 38.602356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718742, 31.559427, 38.578960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429597, -0.421724, 0.798496,
		-0.635181, -0.487402, -0.599153,
		0.641866, -0.764583, -0.058485,
		38.911301, 31.330053, 38.561417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583027, 32.067844, 37.996040>,  <38.461994, 31.865261, 38.602356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583027, 32.067844, 37.996040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.416004, 32.337875, 38.239323>,  <38.315788, 32.499893, 38.385292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.416004, 32.337875, 38.239323>,  <38.583027, 32.067844, 37.996040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416004, 32.337875, 38.239323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190841, 0.589268, -0.785075,
		-0.888382, -0.443888, -0.117224,
		-0.417561, 0.675075, 0.608207,
		38.290737, 32.540398, 38.421783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964455, 32.262665, 37.685043>,  <38.583027, 32.067844, 37.996040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964455, 32.262665, 37.685043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099094, 32.564644, 37.910164>,  <38.179878, 32.745831, 38.045238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099094, 32.564644, 37.910164>,  <37.964455, 32.262665, 37.685043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099094, 32.564644, 37.910164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076698, 0.617674, -0.782685,
		-0.938519, 0.220287, 0.265813,
		0.336601, 0.754952, 0.562803,
		38.200073, 32.791130, 38.079006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705864, 32.764839, 37.306557>,  <37.964455, 32.262665, 37.685043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705864, 32.764839, 37.306557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962357, 32.968834, 37.535900>,  <38.116253, 33.091228, 37.673508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962357, 32.968834, 37.535900>,  <37.705864, 32.764839, 37.306557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962357, 32.968834, 37.535900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067432, 0.781754, -0.619931,
		-0.764381, 0.358855, 0.535672,
		0.641229, 0.509985, 0.573359,
		38.154724, 33.121830, 37.707909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502506, 33.470432, 37.338486>,  <37.705864, 32.764839, 37.306557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502506, 33.470432, 37.338486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896053, 33.463287, 37.409687>,  <38.132183, 33.459000, 37.452408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896053, 33.463287, 37.409687>,  <37.502506, 33.470432, 37.338486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896053, 33.463287, 37.409687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117309, 0.815637, -0.566546,
		-0.135068, 0.578288, 0.804574,
		0.983867, -0.017861, 0.178005,
		38.191212, 33.457928, 37.463089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660233, 34.217205, 37.214596>,  <37.502506, 33.470432, 37.338486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660233, 34.217205, 37.214596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019337, 34.044807, 37.250980>,  <38.234798, 33.941368, 37.272812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019337, 34.044807, 37.250980>,  <37.660233, 34.217205, 37.214596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019337, 34.044807, 37.250980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428934, 0.808377, -0.403165,
		0.100235, 0.400959, 0.910596,
		0.897757, -0.430997, 0.090957,
		38.288666, 33.915508, 37.278267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097263, 34.729424, 37.277195>,  <37.660233, 34.217205, 37.214596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097263, 34.729424, 37.277195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328537, 34.428219, 37.151546>,  <38.467300, 34.247494, 37.076157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328537, 34.428219, 37.151546>,  <38.097263, 34.729424, 37.277195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328537, 34.428219, 37.151546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532361, 0.639925, -0.554156,
		0.618303, 0.153175, 0.770868,
		0.578181, -0.753016, -0.314123,
		38.501991, 34.202312, 37.057308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803596, 34.854118, 37.425064>,  <38.097263, 34.729424, 37.277195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803596, 34.854118, 37.425064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804733, 34.597496, 37.118237>,  <38.805416, 34.443523, 36.934139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804733, 34.597496, 37.118237>,  <38.803596, 34.854118, 37.425064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804733, 34.597496, 37.118237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529532, 0.651665, -0.543072,
		0.848285, -0.404643, 0.341580,
		0.002846, -0.641558, -0.767070,
		38.805588, 34.405029, 36.888115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373898, 35.136765, 37.106323>,  <38.803596, 34.854118, 37.425064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373898, 35.136765, 37.106323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229958, 34.868904, 36.846455>,  <39.143593, 34.708187, 36.690533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229958, 34.868904, 36.846455>,  <39.373898, 35.136765, 37.106323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229958, 34.868904, 36.846455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502577, 0.447537, -0.739680,
		0.786082, -0.592682, 0.175508,
		-0.359849, -0.669656, -0.649669,
		39.122002, 34.668007, 36.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970543, 34.862068, 36.629780>,  <39.373898, 35.136765, 37.106323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970543, 34.862068, 36.629780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620647, 34.850067, 36.436314>,  <39.410709, 34.842865, 36.320236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620647, 34.850067, 36.436314>,  <39.970543, 34.862068, 36.629780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620647, 34.850067, 36.436314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403996, 0.506037, -0.762046,
		0.267614, -0.861990, -0.430530,
		-0.874740, -0.030002, -0.483663,
		39.358227, 34.841068, 36.291214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062702, 34.639679, 35.971596>,  <39.970543, 34.862068, 36.629780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062702, 34.639679, 35.971596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703358, 34.810566, 35.930737>,  <39.487751, 34.913097, 35.906219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703358, 34.810566, 35.930737>,  <40.062702, 34.639679, 35.971596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703358, 34.810566, 35.930737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326651, 0.494272, -0.805602,
		-0.293675, -0.757089, -0.583585,
		-0.898362, 0.427214, -0.102149,
		39.433849, 34.938728, 35.900093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865837, 34.551441, 35.257984>,  <40.062702, 34.639679, 35.971596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865837, 34.551441, 35.257984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.640713, 34.860962, 35.374237>,  <39.505638, 35.046677, 35.443989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.640713, 34.860962, 35.374237>,  <39.865837, 34.551441, 35.257984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640713, 34.860962, 35.374237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275991, 0.507346, -0.816351,
		-0.779145, -0.379244, -0.499106,
		-0.562815, 0.773805, 0.290628,
		39.471867, 35.093102, 35.461426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583244, 34.743919, 34.628395>,  <39.865837, 34.551441, 35.257984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583244, 34.743919, 34.628395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548973, 35.055027, 34.877472>,  <39.528412, 35.241692, 35.026917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548973, 35.055027, 34.877472>,  <39.583244, 34.743919, 34.628395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548973, 35.055027, 34.877472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236681, 0.622984, -0.745569,
		-0.967802, 0.083499, -0.237459,
		-0.085679, 0.777765, 0.622688,
		39.523270, 35.288357, 35.064278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106274, 35.275192, 34.211533>,  <39.583244, 34.743919, 34.628395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106274, 35.275192, 34.211533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.305027, 35.474129, 34.495998>,  <39.424278, 35.593491, 34.666679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.305027, 35.474129, 34.495998>,  <39.106274, 35.275192, 34.211533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305027, 35.474129, 34.495998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445057, 0.557475, -0.700818,
		-0.745005, 0.664733, 0.055653,
		0.496882, 0.497344, 0.711166,
		39.454090, 35.623333, 34.709347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824848, 36.073086, 34.320534>,  <39.106274, 35.275192, 34.211533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824848, 36.073086, 34.320534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210892, 36.009537, 34.403786>,  <39.442520, 35.971409, 34.453739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210892, 36.009537, 34.403786>,  <38.824848, 36.073086, 34.320534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210892, 36.009537, 34.403786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259301, 0.690325, -0.675436,
		-0.036372, 0.705840, 0.707437,
		0.965111, -0.158872, 0.208134,
		39.500423, 35.961876, 34.466225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525639, 36.744900, 34.382851>,  <38.824848, 36.073086, 34.320534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525639, 36.744900, 34.382851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224865, 36.928249, 34.193333>,  <38.044399, 37.038258, 34.079620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.224865, 36.928249, 34.193333>,  <38.525639, 36.744900, 34.382851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224865, 36.928249, 34.193333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652805, -0.417603, 0.632023,
		0.091845, 0.784538, 0.613241,
		-0.751938, 0.458375, -0.473796,
		37.999283, 37.065762, 34.051193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050953, 37.120327, 34.868889>,  <38.525639, 36.744900, 34.382851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050953, 37.120327, 34.868889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817875, 37.023277, 34.558640>,  <37.678028, 36.965046, 34.372490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817875, 37.023277, 34.558640>,  <38.050953, 37.120327, 34.868889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817875, 37.023277, 34.558640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712469, -0.306628, 0.631164,
		-0.390964, 0.920388, 0.005809,
		-0.582697, -0.242624, -0.775628,
		37.643066, 36.950489, 34.325951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230633, 37.364059, 35.072533>,  <38.050953, 37.120327, 34.868889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230633, 37.364059, 35.072533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248226, 37.095669, 34.776463>,  <37.258781, 36.934635, 34.598820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248226, 37.095669, 34.776463>,  <37.230633, 37.364059, 35.072533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248226, 37.095669, 34.776463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699781, -0.549461, 0.456507,
		-0.713002, 0.497878, -0.493707,
		0.043988, -0.670977, -0.740172,
		37.261421, 36.894375, 34.554413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465378, 37.259659, 34.951630>,  <37.230633, 37.364059, 35.072533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465378, 37.259659, 34.951630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691589, 36.956772, 34.820908>,  <36.827316, 36.775040, 34.742474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691589, 36.956772, 34.820908>,  <36.465378, 37.259659, 34.951630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691589, 36.956772, 34.820908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566078, -0.644567, 0.513896,
		-0.599779, -0.105624, -0.793164,
		0.565526, -0.757217, -0.326806,
		36.861248, 36.729607, 34.722866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958652, 36.835403, 34.702370>,  <36.465378, 37.259659, 34.951630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958652, 36.835403, 34.702370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295944, 36.635525, 34.781635>,  <36.498318, 36.515598, 34.829197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295944, 36.635525, 34.781635>,  <35.958652, 36.835403, 34.702370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295944, 36.635525, 34.781635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529536, -0.708715, 0.466169,
		-0.092497, -0.498025, -0.862216,
		0.843230, -0.499694, 0.198168,
		36.548912, 36.485615, 34.841087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866810, 36.030281, 34.638447>,  <35.958652, 36.835403, 34.702370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866810, 36.030281, 34.638447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.205219, 36.073662, 34.847248>,  <36.408264, 36.099689, 34.972527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.205219, 36.073662, 34.847248>,  <35.866810, 36.030281, 34.638447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205219, 36.073662, 34.847248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333209, -0.656756, 0.676493,
		0.416197, -0.746263, -0.519492,
		0.846021, 0.108455, 0.522001,
		36.459026, 36.106197, 35.003849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146591, 35.304474, 34.725475>,  <35.866810, 36.030281, 34.638447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146591, 35.304474, 34.725475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289940, 35.548225, 35.008381>,  <36.375950, 35.694477, 35.178123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289940, 35.548225, 35.008381>,  <36.146591, 35.304474, 34.725475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289940, 35.548225, 35.008381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063170, -0.771677, 0.632870,
		0.931438, -0.182127, -0.315044,
		0.358375, 0.609381, 0.707264,
		36.397453, 35.731041, 35.220562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711433, 34.988518, 34.972931>,  <36.146591, 35.304474, 34.725475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711433, 34.988518, 34.972931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572086, 35.246178, 35.245319>,  <36.488480, 35.400772, 35.408752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572086, 35.246178, 35.245319>,  <36.711433, 34.988518, 34.972931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572086, 35.246178, 35.245319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045147, -0.737163, 0.674205,
		0.936272, 0.204125, 0.285882,
		-0.348364, 0.644146, 0.680969,
		36.467579, 35.439423, 35.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051414, 34.772129, 35.564877>,  <36.711433, 34.988518, 34.972931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051414, 34.772129, 35.564877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750515, 34.995678, 35.704468>,  <36.569977, 35.129807, 35.788223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750515, 34.995678, 35.704468>,  <37.051414, 34.772129, 35.564877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750515, 34.995678, 35.704468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045972, -0.572888, 0.818343,
		0.657274, 0.599554, 0.456646,
		-0.752248, 0.558869, 0.348982,
		36.524841, 35.163338, 35.809162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191383, 34.699100, 36.305206>,  <37.051414, 34.772129, 35.564877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191383, 34.699100, 36.305206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817825, 34.839146, 36.276222>,  <36.593689, 34.923172, 36.258831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817825, 34.839146, 36.276222>,  <37.191383, 34.699100, 36.305206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817825, 34.839146, 36.276222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270152, -0.558249, 0.784459,
		0.234199, 0.752181, 0.615933,
		-0.933900, 0.350116, -0.072462,
		36.537655, 34.944180, 36.254482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998539, 34.927273, 37.005722>,  <37.191383, 34.699100, 36.305206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998539, 34.927273, 37.005722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670021, 34.834633, 36.797173>,  <36.472908, 34.779049, 36.672043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670021, 34.834633, 36.797173>,  <36.998539, 34.927273, 37.005722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670021, 34.834633, 36.797173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233039, -0.697977, 0.677142,
		-0.520731, 0.677636, 0.519277,
		-0.821299, -0.231597, -0.521374,
		36.423630, 34.765152, 36.640762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384266, 34.933479, 37.511101>,  <36.998539, 34.927273, 37.005722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384266, 34.933479, 37.511101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295223, 34.715096, 37.188023>,  <36.241798, 34.584064, 36.994175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295223, 34.715096, 37.188023>,  <36.384266, 34.933479, 37.511101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295223, 34.715096, 37.188023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456590, -0.673624, 0.581168,
		-0.861377, 0.498160, -0.099324,
		-0.222608, -0.545955, -0.807700,
		36.228439, 34.551308, 36.945713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.570637, 38.901932, 30.959967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244316, 38.695366, 30.855829>,  <39.048523, 38.571426, 30.793346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244316, 38.695366, 30.855829>,  <39.570637, 38.901932, 30.959967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244316, 38.695366, 30.855829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274729, -0.050081, 0.960217,
		-0.508905, 0.854875, -0.101017,
		-0.815806, -0.516411, -0.260345,
		38.999573, 38.540443, 30.777725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147713, 39.077324, 31.480682>,  <39.570637, 38.901932, 30.959967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147713, 39.077324, 31.480682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953541, 38.776203, 31.302855>,  <38.837036, 38.595531, 31.196157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953541, 38.776203, 31.302855>,  <39.147713, 39.077324, 31.480682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953541, 38.776203, 31.302855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403154, -0.258463, 0.877874,
		-0.775772, 0.605378, -0.178030,
		-0.485432, -0.752804, -0.444569,
		38.807911, 38.550362, 31.169483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436962, 39.175179, 31.656956>,  <39.147713, 39.077324, 31.480682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436962, 39.175179, 31.656956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485462, 38.790886, 31.557117>,  <38.514561, 38.560310, 31.497215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485462, 38.790886, 31.557117>,  <38.436962, 39.175179, 31.656956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485462, 38.790886, 31.557117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399393, -0.277417, 0.873799,
		-0.908727, -0.006262, -0.417345,
		0.121250, -0.960729, -0.249595,
		38.521835, 38.502666, 31.482239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778038, 38.880684, 31.941875>,  <38.436962, 39.175179, 31.656956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778038, 38.880684, 31.941875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050163, 38.591034, 31.896605>,  <38.213440, 38.417244, 31.869442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050163, 38.591034, 31.896605>,  <37.778038, 38.880684, 31.941875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050163, 38.591034, 31.896605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150940, -0.289538, 0.945190,
		-0.717209, -0.625944, -0.306277,
		0.680315, -0.724129, -0.113179,
		38.254257, 38.373795, 31.862650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447697, 38.179890, 32.146011>,  <37.778038, 38.880684, 31.941875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447697, 38.179890, 32.146011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841808, 38.114223, 32.165115>,  <38.078274, 38.074825, 32.176579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841808, 38.114223, 32.165115>,  <37.447697, 38.179890, 32.146011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841808, 38.114223, 32.165115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143600, -0.642983, 0.752297,
		-0.092792, -0.748079, -0.657090,
		0.985276, -0.164165, 0.047760,
		38.137390, 38.064972, 32.179443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468380, 37.438808, 32.189861>,  <37.447697, 38.179890, 32.146011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468380, 37.438808, 32.189861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808292, 37.592621, 32.334087>,  <38.012241, 37.684910, 32.420624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808292, 37.592621, 32.334087>,  <37.468380, 37.438808, 32.189861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808292, 37.592621, 32.334087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034292, -0.642229, 0.765746,
		0.526016, -0.663082, -0.532569,
		0.849783, 0.384532, 0.360561,
		38.063229, 37.707981, 32.442257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865479, 36.879547, 32.435261>,  <37.468380, 37.438808, 32.189861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865479, 36.879547, 32.435261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036755, 37.181625, 32.633793>,  <38.139519, 37.362873, 32.752911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036755, 37.181625, 32.633793>,  <37.865479, 36.879547, 32.435261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036755, 37.181625, 32.633793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004891, -0.551151, 0.834391,
		0.903676, -0.354850, -0.239691,
		0.428189, 0.755191, 0.496327,
		38.165211, 37.408184, 32.782692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506054, 36.552105, 32.893303>,  <37.865479, 36.879547, 32.435261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506054, 36.552105, 32.893303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354698, 36.896469, 33.029339>,  <38.263885, 37.103088, 33.110958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354698, 36.896469, 33.029339>,  <38.506054, 36.552105, 32.893303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354698, 36.896469, 33.029339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195196, -0.433352, 0.879832,
		0.904834, 0.266532, 0.332020,
		-0.378385, 0.860911, 0.340085,
		38.241184, 37.154743, 33.131363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773640, 36.727642, 33.681553>,  <38.506054, 36.552105, 32.893303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773640, 36.727642, 33.681553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442856, 36.936493, 33.598103>,  <38.244385, 37.061802, 33.548035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442856, 36.936493, 33.598103>,  <38.773640, 36.727642, 33.681553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442856, 36.936493, 33.598103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461958, -0.419413, 0.781465,
		0.320525, 0.742614, 0.588038,
		-0.826957, 0.522128, -0.208624,
		38.194767, 37.093132, 33.535515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286911, 36.934765, 34.229645>,  <38.773640, 36.727642, 33.681553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286911, 36.934765, 34.229645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556293, 36.639294, 34.241047>,  <39.717922, 36.462009, 34.247887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556293, 36.639294, 34.241047>,  <39.286911, 36.934765, 34.229645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556293, 36.639294, 34.241047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578872, 0.502993, -0.641798,
		0.459746, 0.448721, 0.766344,
		0.673454, -0.738679, 0.028503,
		39.758331, 36.417690, 34.249599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958023, 37.244663, 34.401451>,  <39.286911, 36.934765, 34.229645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958023, 37.244663, 34.401451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022102, 36.895924, 34.216316>,  <40.060551, 36.686680, 34.105236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022102, 36.895924, 34.216316>,  <39.958023, 37.244663, 34.401451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022102, 36.895924, 34.216316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658962, 0.443568, -0.607467,
		0.734918, -0.207677, 0.645574,
		0.160198, -0.871847, -0.462837,
		40.070164, 36.634369, 34.077465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537701, 37.194508, 34.178055>,  <39.958023, 37.244663, 34.401451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537701, 37.194508, 34.178055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489395, 36.870644, 33.948315>,  <40.460411, 36.676327, 33.810471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489395, 36.870644, 33.948315>,  <40.537701, 37.194508, 34.178055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489395, 36.870644, 33.948315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617512, 0.391736, -0.682072,
		0.777236, -0.437037, 0.452663,
		-0.120766, -0.809655, -0.574346,
		40.453167, 36.627747, 33.776012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173306, 37.151283, 33.893536>,  <40.537701, 37.194508, 34.178055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173306, 37.151283, 33.893536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944698, 36.927139, 33.653748>,  <40.807533, 36.792652, 33.509872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944698, 36.927139, 33.653748>,  <41.173306, 37.151283, 33.893536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944698, 36.927139, 33.653748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479268, 0.365048, -0.798149,
		0.666087, -0.743462, 0.059932,
		-0.571516, -0.560360, -0.599472,
		40.773243, 36.759029, 33.473907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614746, 36.760479, 33.431709>,  <41.173306, 37.151283, 33.893536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614746, 36.760479, 33.431709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257099, 36.798569, 33.256676>,  <41.042511, 36.821423, 33.151653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257099, 36.798569, 33.256676>,  <41.614746, 36.760479, 33.431709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257099, 36.798569, 33.256676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446915, 0.252164, -0.858301,
		0.028611, -0.962987, -0.268023,
		-0.894119, 0.095227, -0.437588,
		40.988865, 36.827137, 33.125401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763062, 36.511948, 32.840019>,  <41.614746, 36.760479, 33.431709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763062, 36.511948, 32.840019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426411, 36.717827, 32.774597>,  <41.224419, 36.841354, 32.735344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426411, 36.717827, 32.774597>,  <41.763062, 36.511948, 32.840019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426411, 36.717827, 32.774597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404556, 0.400231, -0.822283,
		-0.357764, -0.758224, -0.545069,
		-0.841629, 0.514695, -0.163556,
		41.173923, 36.872234, 32.725529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431202, 36.318996, 32.193790>,  <41.763062, 36.511948, 32.840019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431202, 36.318996, 32.193790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324566, 36.693737, 32.284340>,  <41.260582, 36.918579, 32.338669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324566, 36.693737, 32.284340>,  <41.431202, 36.318996, 32.193790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324566, 36.693737, 32.284340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405823, 0.322147, -0.855295,
		-0.874206, -0.136149, -0.466076,
		-0.266593, 0.936848, 0.226371,
		41.244587, 36.974792, 32.352253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306973, 36.607445, 31.603886>,  <41.431202, 36.318996, 32.193790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306973, 36.607445, 31.603886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351559, 36.941540, 31.819275>,  <41.378311, 37.141998, 31.948509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351559, 36.941540, 31.819275>,  <41.306973, 36.607445, 31.603886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351559, 36.941540, 31.819275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311670, 0.485130, -0.817013,
		-0.943630, 0.258894, -0.206244,
		0.111465, 0.835238, 0.538472,
		41.384998, 37.192112, 31.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073231, 37.162834, 31.133434>,  <41.306973, 36.607445, 31.603886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073231, 37.162834, 31.133434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283546, 37.362934, 31.408619>,  <41.409737, 37.482994, 31.573730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283546, 37.362934, 31.408619>,  <41.073231, 37.162834, 31.133434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283546, 37.362934, 31.408619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513203, 0.458434, -0.725576,
		-0.678355, 0.734567, -0.015688,
		0.525792, 0.500250, 0.687963,
		41.441284, 37.513008, 31.615007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215603, 37.677647, 30.715923>,  <41.073231, 37.162834, 31.133434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215603, 37.677647, 30.715923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472290, 37.696831, 31.022100>,  <41.626301, 37.708340, 31.205807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472290, 37.696831, 31.022100>,  <41.215603, 37.677647, 30.715923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472290, 37.696831, 31.022100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678900, 0.428780, -0.596023,
		-0.356790, 0.902135, 0.242596,
		0.641714, 0.047956, 0.765444,
		41.664803, 37.711216, 31.251734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551323, 38.349785, 30.607187>,  <41.215603, 37.677647, 30.715923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551323, 38.349785, 30.607187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785980, 38.153149, 30.864614>,  <41.926777, 38.035168, 31.019072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785980, 38.153149, 30.864614>,  <41.551323, 38.349785, 30.607187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785980, 38.153149, 30.864614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809379, 0.382773, -0.445410,
		-0.027381, 0.782190, 0.622438,
		0.586648, -0.491593, 0.643569,
		41.961975, 38.005672, 31.057686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130337, 38.827194, 30.860680>,  <41.551323, 38.349785, 30.607187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130337, 38.827194, 30.860680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247993, 38.447224, 30.902870>,  <42.318588, 38.219242, 30.928185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247993, 38.447224, 30.902870>,  <42.130337, 38.827194, 30.860680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247993, 38.447224, 30.902870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805241, 0.186858, -0.562735,
		0.514846, 0.250459, 0.819880,
		0.294143, -0.949923, 0.105476,
		42.336235, 38.162247, 30.934513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703278, 38.912102, 31.024876>,  <42.130337, 38.827194, 30.860680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703278, 38.912102, 31.024876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696785, 38.536713, 30.886885>,  <42.692890, 38.311481, 30.804090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696785, 38.536713, 30.886885>,  <42.703278, 38.912102, 31.024876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696785, 38.536713, 30.886885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725245, 0.226464, -0.650180,
		0.688300, -0.260745, 0.676946,
		-0.016228, -0.938470, -0.344979,
		42.691917, 38.255173, 30.783392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364532, 38.686424, 31.088760>,  <42.703278, 38.912102, 31.024876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364532, 38.686424, 31.088760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185802, 38.467056, 30.806036>,  <43.078564, 38.335434, 30.636400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185802, 38.467056, 30.806036>,  <43.364532, 38.686424, 31.088760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185802, 38.467056, 30.806036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703836, 0.272201, -0.656142,
		0.552238, -0.790658, 0.264373,
		-0.446821, -0.548422, -0.706813,
		43.051758, 38.302528, 30.593992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.627819, 33.037769, 26.650597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696445, 33.337299, 26.906666>,  <39.737621, 33.517017, 27.060307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.696445, 33.337299, 26.906666>,  <39.627819, 33.037769, 26.650597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696445, 33.337299, 26.906666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402564, -0.539796, 0.739299,
		0.899171, -0.384546, 0.208843,
		0.171562, 0.748829, 0.640173,
		39.747913, 33.561947, 27.098719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007782, 32.769287, 27.201832>,  <39.627819, 33.037769, 26.650597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007782, 32.769287, 27.201832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865490, 33.100327, 27.375515>,  <39.780113, 33.298950, 27.479725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865490, 33.100327, 27.375515>,  <40.007782, 32.769287, 27.201832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865490, 33.100327, 27.375515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320786, -0.544498, 0.774996,
		0.877810, 0.136405, 0.459178,
		-0.355734, 0.827596, 0.434209,
		39.758770, 33.348606, 27.505777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134632, 32.704437, 27.931316>,  <40.007782, 32.769287, 27.201832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134632, 32.704437, 27.931316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836067, 32.969746, 27.909592>,  <39.656929, 33.128929, 27.896557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836067, 32.969746, 27.909592>,  <40.134632, 32.704437, 27.931316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836067, 32.969746, 27.909592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407319, -0.390781, 0.825459,
		0.526276, 0.638251, 0.561843,
		-0.746408, 0.663269, -0.054313,
		39.612144, 33.168728, 27.893297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082405, 32.884731, 28.520596>,  <40.134632, 32.704437, 27.931316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082405, 32.884731, 28.520596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728592, 32.990772, 28.367062>,  <39.516304, 33.054398, 28.274940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728592, 32.990772, 28.367062>,  <40.082405, 32.884731, 28.520596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728592, 32.990772, 28.367062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446554, -0.243239, 0.861060,
		0.134904, 0.933036, 0.333534,
		-0.884529, 0.265101, -0.383837,
		39.463234, 33.070301, 28.251911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745255, 33.324909, 28.973978>,  <40.082405, 32.884731, 28.520596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745255, 33.324909, 28.973978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.442207, 33.199512, 28.744982>,  <39.260380, 33.124275, 28.607584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.442207, 33.199512, 28.744982>,  <39.745255, 33.324909, 28.973978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442207, 33.199512, 28.744982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526263, -0.225443, 0.819892,
		-0.386090, 0.922443, 0.005821,
		-0.757615, -0.313489, -0.572489,
		39.214924, 33.105465, 28.573235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150478, 33.586571, 29.341755>,  <39.745255, 33.324909, 28.973978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150478, 33.586571, 29.341755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.001083, 33.299583, 29.106554>,  <38.911446, 33.127392, 28.965433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.001083, 33.299583, 29.106554>,  <39.150478, 33.586571, 29.341755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001083, 33.299583, 29.106554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527713, -0.356976, 0.770770,
		-0.762907, 0.598168, -0.245292,
		-0.373487, -0.717470, -0.588001,
		38.889038, 33.084343, 28.930153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515656, 33.464851, 29.588074>,  <39.150478, 33.586571, 29.341755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515656, 33.464851, 29.588074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556320, 33.137123, 29.362373>,  <38.580719, 32.940487, 29.226954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.556320, 33.137123, 29.362373>,  <38.515656, 33.464851, 29.588074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556320, 33.137123, 29.362373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498450, -0.532808, 0.683859,
		-0.860937, 0.211733, -0.462554,
		0.101657, -0.819319, -0.564253,
		38.586819, 32.891327, 29.193098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912243, 33.254807, 29.387985>,  <38.515656, 33.464851, 29.588074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912243, 33.254807, 29.387985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138977, 32.925274, 29.387001>,  <38.275017, 32.727554, 29.386410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138977, 32.925274, 29.387001>,  <37.912243, 33.254807, 29.387985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138977, 32.925274, 29.387001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621968, -0.429901, 0.654478,
		-0.540236, -0.369448, -0.756077,
		0.566835, -0.823828, -0.002463,
		38.309029, 32.678127, 29.386263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369965, 32.704174, 29.517096>,  <37.912243, 33.254807, 29.387985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369965, 32.704174, 29.517096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727383, 32.535496, 29.578728>,  <37.941833, 32.434288, 29.615707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.727383, 32.535496, 29.578728>,  <37.369965, 32.704174, 29.517096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727383, 32.535496, 29.578728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407930, -0.619227, 0.670933,
		-0.187522, -0.662365, -0.725333,
		0.893548, -0.421700, 0.154080,
		37.995445, 32.408985, 29.624952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186764, 32.084698, 29.658054>,  <37.369965, 32.704174, 29.517096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186764, 32.084698, 29.658054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565166, 32.077278, 29.787497>,  <37.792210, 32.072826, 29.865162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565166, 32.077278, 29.787497>,  <37.186764, 32.084698, 29.658054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565166, 32.077278, 29.787497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266343, -0.613464, 0.743453,
		0.184733, -0.789505, -0.585283,
		0.946010, -0.018546, 0.323606,
		37.848969, 32.071712, 29.884579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269680, 31.366325, 29.755054>,  <37.186764, 32.084698, 29.658054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269680, 31.366325, 29.755054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570889, 31.542118, 29.950939>,  <37.751614, 31.647594, 30.068470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.570889, 31.542118, 29.950939>,  <37.269680, 31.366325, 29.755054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570889, 31.542118, 29.950939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056071, -0.698676, 0.713238,
		0.655605, -0.564541, -0.501474,
		0.753020, 0.439484, 0.489710,
		37.796795, 31.673964, 30.097853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730690, 30.870432, 29.928801>,  <37.269680, 31.366325, 29.755054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730690, 30.870432, 29.928801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805573, 31.166281, 30.187386>,  <37.850502, 31.343790, 30.342537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805573, 31.166281, 30.187386>,  <37.730690, 30.870432, 29.928801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805573, 31.166281, 30.187386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112473, -0.637631, 0.762087,
		0.975861, -0.215375, -0.036179,
		0.187203, 0.739622, 0.646463,
		37.861732, 31.388166, 30.381325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107510, 30.554884, 30.448172>,  <37.730690, 30.870432, 29.928801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107510, 30.554884, 30.448172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953403, 30.888163, 30.606846>,  <37.860939, 31.088129, 30.702051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953403, 30.888163, 30.606846>,  <38.107510, 30.554884, 30.448172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953403, 30.888163, 30.606846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197672, -0.494401, 0.846459,
		0.901387, 0.247695, 0.355174,
		-0.385262, 0.833195, 0.396685,
		37.837826, 31.138121, 30.725851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345753, 30.504721, 31.070660>,  <38.107510, 30.554884, 30.448172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345753, 30.504721, 31.070660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059402, 30.781994, 31.104177>,  <37.887592, 30.948357, 31.124289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059402, 30.781994, 31.104177>,  <38.345753, 30.504721, 31.070660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059402, 30.781994, 31.104177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330669, -0.442277, 0.833696,
		0.614963, 0.569114, 0.545829,
		-0.715876, 0.693181, 0.083796,
		37.844639, 30.989948, 31.129316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860809, 30.910820, 31.346685>,  <38.345753, 30.504721, 31.070660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860809, 30.910820, 31.346685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.166294, 30.719366, 31.519962>,  <39.349583, 30.604494, 31.623928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.166294, 30.719366, 31.519962>,  <38.860809, 30.910820, 31.346685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166294, 30.719366, 31.519962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607233, 0.304847, -0.733714,
		0.219124, 0.823393, 0.523458,
		0.763710, -0.478635, 0.433192,
		39.395409, 30.575775, 31.649920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415993, 31.422022, 31.551676>,  <38.860809, 30.910820, 31.346685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415993, 31.422022, 31.551676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606258, 31.070578, 31.534737>,  <39.720417, 30.859711, 31.524572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606258, 31.070578, 31.534737>,  <39.415993, 31.422022, 31.551676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606258, 31.070578, 31.534737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641190, 0.379282, -0.667099,
		0.602181, 0.290159, 0.743764,
		0.475661, -0.878609, -0.042349,
		39.748955, 30.806995, 31.522032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184483, 31.528021, 31.706993>,  <39.415993, 31.422022, 31.551676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184483, 31.528021, 31.706993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141048, 31.205212, 31.474813>,  <40.114986, 31.011526, 31.335506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141048, 31.205212, 31.474813>,  <40.184483, 31.528021, 31.706993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141048, 31.205212, 31.474813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713592, 0.343237, -0.610716,
		0.692094, -0.480521, 0.538614,
		-0.108590, -0.807024, -0.580449,
		40.108471, 30.963104, 31.300678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874020, 31.428122, 31.404413>,  <40.184483, 31.528021, 31.706993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874020, 31.428122, 31.404413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644295, 31.192986, 31.176516>,  <40.506458, 31.051905, 31.039778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644295, 31.192986, 31.176516>,  <40.874020, 31.428122, 31.404413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644295, 31.192986, 31.176516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490923, 0.309627, -0.814325,
		0.655101, -0.747378, 0.110761,
		-0.574314, -0.587841, -0.569742,
		40.472000, 31.016634, 31.005592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348068, 31.000305, 31.006422>,  <40.874020, 31.428122, 31.404413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348068, 31.000305, 31.006422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.008911, 31.002617, 30.794365>,  <40.805416, 31.004004, 30.667131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.008911, 31.002617, 30.794365>,  <41.348068, 31.000305, 31.006422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008911, 31.002617, 30.794365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528445, 0.089871, -0.844197,
		0.042761, -0.995937, -0.079258,
		-0.847890, 0.005785, -0.530141,
		40.754543, 31.004351, 30.635323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490639, 30.628492, 30.432507>,  <41.348068, 31.000305, 31.006422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490639, 30.628492, 30.432507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.162304, 30.835651, 30.336159>,  <40.965305, 30.959946, 30.278351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.162304, 30.835651, 30.336159>,  <41.490639, 30.628492, 30.432507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162304, 30.835651, 30.336159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439634, 0.303658, -0.845289,
		-0.364631, -0.799735, -0.476937,
		-0.820833, 0.517896, -0.240867,
		40.916054, 30.991020, 30.263899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399788, 30.520910, 29.713346>,  <41.490639, 30.628492, 30.432507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399788, 30.520910, 29.713346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169369, 30.841036, 29.779873>,  <41.031116, 31.033112, 29.819788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169369, 30.841036, 29.779873>,  <41.399788, 30.520910, 29.713346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169369, 30.841036, 29.779873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336285, 0.417480, -0.844170,
		-0.745035, -0.430356, -0.509624,
		-0.576051, 0.800315, 0.166315,
		40.996552, 31.081131, 29.829767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185535, 30.666086, 29.088999>,  <41.399788, 30.520910, 29.713346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185535, 30.666086, 29.088999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179508, 30.995768, 29.315435>,  <41.175892, 31.193577, 29.451298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179508, 30.995768, 29.315435>,  <41.185535, 30.666086, 29.088999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179508, 30.995768, 29.315435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371788, 0.530183, -0.762024,
		-0.928195, 0.198983, -0.314418,
		-0.015070, 0.824204, 0.566093,
		41.174988, 31.243029, 29.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187649, 31.010702, 28.503761>,  <41.185535, 30.666086, 29.088999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187649, 31.010702, 28.503761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.217182, 31.269258, 28.807531>,  <41.234901, 31.424393, 28.989794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.217182, 31.269258, 28.807531>,  <41.187649, 31.010702, 28.503761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217182, 31.269258, 28.807531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357594, 0.693706, -0.625219,
		-0.930954, 0.317730, -0.179925,
		0.073836, 0.646390, 0.759426,
		41.239334, 31.463175, 29.035358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940830, 31.699594, 28.264355>,  <41.187649, 31.010702, 28.503761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940830, 31.699594, 28.264355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179695, 31.734413, 28.583307>,  <41.323013, 31.755304, 28.774679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179695, 31.734413, 28.583307>,  <40.940830, 31.699594, 28.264355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179695, 31.734413, 28.583307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573979, 0.648035, -0.500598,
		-0.560308, 0.756620, 0.337018,
		0.597162, 0.087048, 0.797383,
		41.358845, 31.760527, 28.822523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951107, 32.364517, 28.311260>,  <40.940830, 31.699594, 28.264355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951107, 32.364517, 28.311260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.273678, 32.219933, 28.498461>,  <41.467220, 32.133183, 28.610781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.273678, 32.219933, 28.498461>,  <40.951107, 32.364517, 28.311260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273678, 32.219933, 28.498461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590527, 0.533643, -0.605395,
		-0.030921, 0.764573, 0.643795,
		0.806425, -0.361459, 0.468002,
		41.515606, 32.111496, 28.638861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289364, 32.945171, 28.534929>,  <40.951107, 32.364517, 28.311260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289364, 32.945171, 28.534929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538830, 32.633297, 28.512543>,  <41.688511, 32.446171, 28.499111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538830, 32.633297, 28.512543>,  <41.289364, 32.945171, 28.534929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538830, 32.633297, 28.512543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676548, 0.574256, -0.460991,
		0.391569, 0.249638, 0.885638,
		0.623664, -0.779687, -0.055968,
		41.725929, 32.399391, 28.495752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889000, 33.190975, 28.730003>,  <41.289364, 32.945171, 28.534929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889000, 33.190975, 28.730003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.989574, 32.867355, 28.517506>,  <42.049919, 32.673183, 28.390007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.989574, 32.867355, 28.517506>,  <41.889000, 33.190975, 28.730003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989574, 32.867355, 28.517506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682037, 0.537548, -0.495851,
		0.686737, -0.237654, 0.686959,
		0.251432, -0.809051, -0.531243,
		42.065002, 32.624641, 28.358133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587730, 33.317375, 28.555513>,  <41.889000, 33.190975, 28.730003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587730, 33.317375, 28.555513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.473904, 33.031414, 28.300035>,  <42.405605, 32.859837, 28.146748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.473904, 33.031414, 28.300035>,  <42.587730, 33.317375, 28.555513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473904, 33.031414, 28.300035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545126, 0.427370, -0.721244,
		0.788580, -0.553414, 0.268096,
		-0.284570, -0.714904, -0.638695,
		42.388531, 32.816944, 28.108427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245358, 33.143589, 28.862074>,  <42.587730, 33.317375, 28.555513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245358, 33.143589, 28.862074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.497150, 33.399521, 29.038422>,  <43.648228, 33.553082, 29.144230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.497150, 33.399521, 29.038422>,  <43.245358, 33.143589, 28.862074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497150, 33.399521, 29.038422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247363, -0.372852, 0.894312,
		0.736587, -0.672010, -0.076434,
		0.629485, 0.639832, 0.440868,
		43.685997, 33.591469, 29.170683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489166, 32.783634, 29.381523>,  <43.245358, 33.143589, 28.862074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489166, 32.783634, 29.381523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.584877, 33.158146, 29.484379>,  <43.642303, 33.382854, 29.546093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.584877, 33.158146, 29.484379>,  <43.489166, 32.783634, 29.381523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584877, 33.158146, 29.484379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319696, -0.174095, 0.931389,
		0.916811, -0.305065, 0.257670,
		0.239276, 0.936283, 0.257141,
		43.656658, 33.439030, 29.561522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912731, 32.558018, 29.885937>,  <43.489166, 32.783634, 29.381523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912731, 32.558018, 29.885937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.777481, 32.929859, 29.944607>,  <43.696331, 33.152962, 29.979809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.777481, 32.929859, 29.944607>,  <43.912731, 32.558018, 29.885937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777481, 32.929859, 29.944607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258564, -0.241623, 0.935288,
		0.904883, 0.278322, 0.322061,
		-0.338128, 0.929600, 0.146677,
		43.676044, 33.208740, 29.988609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286823, 32.814903, 30.442566>,  <43.912731, 32.558018, 29.885937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286823, 32.814903, 30.442566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.957989, 33.041866, 30.423717>,  <43.760689, 33.178043, 30.412409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.957989, 33.041866, 30.423717>,  <44.286823, 32.814903, 30.442566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957989, 33.041866, 30.423717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240541, -0.271108, 0.932009,
		0.516050, 0.777530, 0.359359,
		-0.822090, 0.567404, -0.047123,
		43.711361, 33.212086, 30.409580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291100, 33.173092, 31.128046>,  <44.286823, 32.814903, 30.442566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291100, 33.173092, 31.128046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.923573, 33.160080, 30.970711>,  <43.703056, 33.152271, 30.876308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.923573, 33.160080, 30.970711>,  <44.291100, 33.173092, 31.128046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923573, 33.160080, 30.970711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376124, -0.229834, 0.897612,
		-0.119604, 0.972686, 0.198939,
		-0.918817, -0.032533, -0.393340,
		43.647926, 33.150322, 30.852709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809486, 33.576389, 31.521019>,  <44.291100, 33.173092, 31.128046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809486, 33.576389, 31.521019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.550842, 33.333553, 31.336266>,  <43.395657, 33.187851, 31.225412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.550842, 33.333553, 31.336266>,  <43.809486, 33.576389, 31.521019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550842, 33.333553, 31.336266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495850, -0.125624, 0.859274,
		-0.579680, 0.784640, -0.219796,
		-0.646609, -0.607090, -0.461886,
		43.356861, 33.151424, 31.197701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186428, 33.826298, 31.775425>,  <43.809486, 33.576389, 31.521019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186428, 33.826298, 31.775425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.134644, 33.451138, 31.646685>,  <43.103573, 33.226044, 31.569441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.134644, 33.451138, 31.646685>,  <43.186428, 33.826298, 31.775425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134644, 33.451138, 31.646685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605103, -0.182413, 0.774968,
		-0.785550, 0.295085, -0.543908,
		-0.129466, -0.937897, -0.321852,
		43.095802, 33.169769, 31.550129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536663, 33.689613, 32.121822>,  <43.186428, 33.826298, 31.775425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536663, 33.689613, 32.121822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.673302, 33.340202, 31.983103>,  <42.755283, 33.130558, 31.899870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.673302, 33.340202, 31.983103>,  <42.536663, 33.689613, 32.121822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673302, 33.340202, 31.983103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453021, -0.476334, 0.753577,
		-0.823460, -0.100309, -0.558437,
		0.341592, -0.873524, -0.346800,
		42.775780, 33.078144, 31.879063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006626, 33.344997, 31.876402>,  <42.536663, 33.689613, 32.121822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006626, 33.344997, 31.876402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.263348, 33.045158, 31.941133>,  <42.417381, 32.865253, 31.979973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.263348, 33.045158, 31.941133>,  <42.006626, 33.344997, 31.876402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263348, 33.045158, 31.941133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676296, -0.453765, 0.580277,
		-0.361544, -0.481867, -0.798179,
		0.641802, -0.749601, 0.161829,
		42.455887, 32.820278, 31.989681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584476, 32.877396, 31.816153>,  <42.006626, 33.344997, 31.876402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584476, 32.877396, 31.816153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.897514, 32.729023, 32.016132>,  <42.085339, 32.639999, 32.136120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.897514, 32.729023, 32.016132>,  <41.584476, 32.877396, 31.816153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897514, 32.729023, 32.016132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622509, -0.472802, 0.623650,
		0.005044, -0.799290, -0.600924,
		0.782596, -0.370935, 0.499950,
		42.132294, 32.617741, 32.166119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503586, 32.142441, 31.929134>,  <41.584476, 32.877396, 31.816153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503586, 32.142441, 31.929134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.729252, 32.265640, 32.235561>,  <41.864651, 32.339558, 32.419418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.729252, 32.265640, 32.235561>,  <41.503586, 32.142441, 31.929134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729252, 32.265640, 32.235561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601978, -0.481591, 0.636940,
		0.565107, -0.820493, -0.086288,
		0.564160, 0.307996, 0.766069,
		41.898499, 32.358040, 32.465382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383911, 31.642326, 32.459305>,  <41.503586, 32.142441, 31.929134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383911, 31.642326, 32.459305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.561207, 31.946301, 32.649479>,  <41.667583, 32.128685, 32.763584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.561207, 31.946301, 32.649479>,  <41.383911, 31.642326, 32.459305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561207, 31.946301, 32.649479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473664, -0.251735, 0.843962,
		0.761039, -0.599274, 0.248375,
		0.443239, 0.759935, 0.475435,
		41.694180, 32.174282, 32.792110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559978, 31.433918, 33.066200>,  <41.383911, 31.642326, 32.459305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559978, 31.433918, 33.066200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534332, 31.828547, 33.126293>,  <41.518944, 32.065323, 33.162350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534332, 31.828547, 33.126293>,  <41.559978, 31.433918, 33.066200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534332, 31.828547, 33.126293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406829, -0.163301, 0.898790,
		0.911252, -0.003491, 0.411836,
		-0.064116, 0.986570, 0.150229,
		41.515099, 32.124519, 33.171360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879391, 31.503836, 33.700428>,  <41.559978, 31.433918, 33.066200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879391, 31.503836, 33.700428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.642509, 31.823643, 33.660290>,  <41.500381, 32.015526, 33.636208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.642509, 31.823643, 33.660290>,  <41.879391, 31.503836, 33.700428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642509, 31.823643, 33.660290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310503, -0.111513, 0.944009,
		0.743560, 0.590203, 0.314291,
		-0.592204, 0.799516, -0.100343,
		41.464848, 32.063496, 33.630188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.830822, 38.171341, 30.803396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571262, 38.155548, 30.499454>,  <43.415527, 38.146072, 30.317089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571262, 38.155548, 30.499454>,  <43.830822, 38.171341, 30.803396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571262, 38.155548, 30.499454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754344, 0.097209, -0.649242,
		0.099495, -0.994481, -0.033299,
		-0.648895, -0.039477, -0.759853,
		43.376595, 38.143703, 30.271498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152435, 37.764843, 30.272367>,  <43.830822, 38.171341, 30.803396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152435, 37.764843, 30.272367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.880543, 37.957336, 30.050959>,  <43.717407, 38.072830, 29.918114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.880543, 37.957336, 30.050959>,  <44.152435, 37.764843, 30.272367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880543, 37.957336, 30.050959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621519, -0.022815, -0.783067,
		-0.389465, -0.876297, -0.283587,
		-0.679729, 0.481232, -0.553521,
		43.676624, 38.101707, 29.884903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033028, 37.320862, 29.702408>,  <44.152435, 37.764843, 30.272367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033028, 37.320862, 29.702408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929272, 37.691525, 29.593576>,  <43.867020, 37.913921, 29.528278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.929272, 37.691525, 29.593576>,  <44.033028, 37.320862, 29.702408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929272, 37.691525, 29.593576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438060, -0.138184, -0.888261,
		-0.860710, -0.349591, -0.370088,
		-0.259388, 0.926656, -0.272078,
		43.851456, 37.969521, 29.511953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856728, 37.254623, 29.019110>,  <44.033028, 37.320862, 29.702408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856728, 37.254623, 29.019110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.854866, 37.652634, 29.058914>,  <43.853748, 37.891441, 29.082798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.854866, 37.652634, 29.058914>,  <43.856728, 37.254623, 29.019110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854866, 37.652634, 29.058914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363064, 0.094406, -0.926969,
		-0.931753, 0.031812, -0.361698,
		-0.004658, 0.995026, 0.099513,
		43.853470, 37.951141, 29.088768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440231, 37.520660, 28.523529>,  <43.856728, 37.254623, 29.019110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440231, 37.520660, 28.523529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.672340, 37.828903, 28.628939>,  <43.811607, 38.013847, 28.692184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.672340, 37.828903, 28.628939>,  <43.440231, 37.520660, 28.523529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672340, 37.828903, 28.628939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091836, 0.259595, -0.961341,
		-0.809225, 0.582045, 0.079867,
		0.580277, 0.770606, 0.263523,
		43.846424, 38.060085, 28.707996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309738, 37.994164, 28.053263>,  <43.440231, 37.520660, 28.523529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309738, 37.994164, 28.053263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649647, 38.155605, 28.188904>,  <43.853592, 38.252472, 28.270288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649647, 38.155605, 28.188904>,  <43.309738, 37.994164, 28.053263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649647, 38.155605, 28.188904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200199, 0.347991, -0.915872,
		-0.487653, 0.846172, 0.214913,
		0.849773, 0.403603, 0.339102,
		43.904579, 38.276688, 28.290634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424713, 38.647755, 27.692883>,  <43.309738, 37.994164, 28.053263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424713, 38.647755, 27.692883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.782124, 38.505760, 27.802866>,  <43.996571, 38.420563, 27.868856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.782124, 38.505760, 27.802866>,  <43.424713, 38.647755, 27.692883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782124, 38.505760, 27.802866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319106, 0.071219, -0.945039,
		0.315891, 0.932156, 0.176913,
		0.893523, -0.354984, 0.274959,
		44.050182, 38.399265, 27.885353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988346, 39.121857, 27.460779>,  <43.424713, 38.647755, 27.692883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988346, 39.121857, 27.460779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.218960, 38.804024, 27.536924>,  <44.357330, 38.613323, 27.582611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.218960, 38.804024, 27.536924>,  <43.988346, 39.121857, 27.460779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218960, 38.804024, 27.536924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425764, 0.093308, -0.900011,
		0.697374, 0.599939, 0.392102,
		0.576537, -0.794586, 0.190362,
		44.391922, 38.565647, 27.594032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600197, 39.311096, 27.269060>,  <43.988346, 39.121857, 27.460779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600197, 39.311096, 27.269060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646244, 38.913757, 27.270311>,  <44.673874, 38.675354, 27.271063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646244, 38.913757, 27.270311>,  <44.600197, 39.311096, 27.269060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646244, 38.913757, 27.270311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436332, 0.047735, -0.898518,
		0.892391, 0.104803, 0.438924,
		0.115119, -0.993347, 0.003130,
		44.680779, 38.615753, 27.271250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269363, 39.100521, 26.989939>,  <44.600197, 39.311096, 27.269060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269363, 39.100521, 26.989939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.048458, 38.768116, 26.963299>,  <44.915916, 38.568672, 26.947315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.048458, 38.768116, 26.963299>,  <45.269363, 39.100521, 26.989939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048458, 38.768116, 26.963299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281080, -0.110397, -0.953313,
		0.784859, -0.545195, 0.294547,
		-0.552259, -0.831008, -0.066597,
		44.882782, 38.518814, 26.943319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692192, 38.546669, 26.767130>,  <45.269363, 39.100521, 26.989939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692192, 38.546669, 26.767130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.336826, 38.405117, 26.650175>,  <45.123608, 38.320187, 26.580002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.336826, 38.405117, 26.650175>,  <45.692192, 38.546669, 26.767130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336826, 38.405117, 26.650175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359632, -0.140720, -0.922422,
		0.285279, -0.924645, 0.252284,
		-0.888415, -0.353877, -0.292388,
		45.070301, 38.298954, 26.562458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815365, 38.020969, 26.350012>,  <45.692192, 38.546669, 26.767130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815365, 38.020969, 26.350012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.433807, 38.088856, 26.250990>,  <45.204872, 38.129589, 26.191578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.433807, 38.088856, 26.250990>,  <45.815365, 38.020969, 26.350012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433807, 38.088856, 26.250990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240351, -0.062073, -0.968699,
		-0.179770, -0.983536, 0.018420,
		-0.953894, 0.169716, -0.247552,
		45.147640, 38.139771, 26.176723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587311, 37.428432, 26.046352>,  <45.815365, 38.020969, 26.350012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587311, 37.428432, 26.046352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.395733, 37.761044, 25.933805>,  <45.280785, 37.960609, 25.866278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.395733, 37.761044, 25.933805>,  <45.587311, 37.428432, 26.046352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395733, 37.761044, 25.933805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431338, -0.056241, -0.900436,
		-0.764563, -0.552626, -0.331734,
		-0.478947, 0.831529, -0.281369,
		45.252048, 38.010502, 25.849396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790833, 37.627762, 25.420671>,  <45.587311, 37.428432, 26.046352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790833, 37.627762, 25.420671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.578442, 37.965462, 25.449810>,  <45.451008, 38.168079, 25.467293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.578442, 37.965462, 25.449810>,  <45.790833, 37.627762, 25.420671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578442, 37.965462, 25.449810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406506, 0.329206, -0.852277,
		-0.743513, -0.422932, -0.517994,
		-0.530982, 0.844246, 0.072845,
		45.419147, 38.218735, 25.471663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718708, 37.027370, 24.912823>,  <45.790833, 37.627762, 25.420671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718708, 37.027370, 24.912823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.633755, 36.636635, 24.902426>,  <45.582783, 36.402195, 24.896187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.633755, 36.636635, 24.902426>,  <45.718708, 37.027370, 24.912823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633755, 36.636635, 24.902426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329034, 0.046442, 0.943175,
		-0.920125, 0.208868, -0.331278,
		-0.212385, -0.976840, -0.025992,
		45.570038, 36.343582, 24.894629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122372, 36.936691, 25.330149>,  <45.718708, 37.027370, 24.912823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122372, 36.936691, 25.330149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.278191, 36.568310, 25.326403>,  <45.371681, 36.347279, 25.324154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.278191, 36.568310, 25.326403>,  <45.122372, 36.936691, 25.330149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278191, 36.568310, 25.326403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436531, -0.193582, 0.878616,
		-0.810982, -0.338175, -0.477436,
		0.389549, -0.920958, -0.009368,
		45.395054, 36.292023, 25.323593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545242, 36.475697, 25.483551>,  <45.122372, 36.936691, 25.330149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545242, 36.475697, 25.483551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.908756, 36.351982, 25.595592>,  <45.126865, 36.277756, 25.662817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.908756, 36.351982, 25.595592>,  <44.545242, 36.475697, 25.483551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908756, 36.351982, 25.595592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379094, -0.331472, 0.863953,
		-0.174360, -0.891331, -0.418483,
		0.908783, -0.309283, 0.280102,
		45.181393, 36.259197, 25.679623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460991, 35.821861, 25.694185>,  <44.545242, 36.475697, 25.483551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460991, 35.821861, 25.694185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.799915, 35.945293, 25.867086>,  <45.003269, 36.019352, 25.970827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.799915, 35.945293, 25.867086>,  <44.460991, 35.821861, 25.694185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799915, 35.945293, 25.867086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193202, -0.579028, 0.792085,
		0.494711, -0.754654, -0.430997,
		0.847310, 0.308584, 0.432252,
		45.054108, 36.037868, 25.996761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759537, 35.198746, 25.963837>,  <44.460991, 35.821861, 25.694185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759537, 35.198746, 25.963837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.966175, 35.489643, 26.144609>,  <45.090157, 35.664181, 26.253073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.966175, 35.489643, 26.144609>,  <44.759537, 35.198746, 25.963837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966175, 35.489643, 26.144609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170994, -0.604809, 0.777796,
		0.838981, -0.324529, -0.436797,
		0.516596, 0.727246, 0.451931,
		45.121155, 35.707817, 26.280190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434097, 34.857197, 26.091677>,  <44.759537, 35.198746, 25.963837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434097, 34.857197, 26.091677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.360077, 35.161648, 26.340334>,  <45.315666, 35.344318, 26.489529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.360077, 35.161648, 26.340334>,  <45.434097, 34.857197, 26.091677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360077, 35.161648, 26.340334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114097, -0.611652, 0.782856,
		0.976084, 0.215794, 0.026342,
		-0.185048, 0.761128, 0.621644,
		45.304562, 35.389988, 26.526827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871586, 34.753902, 26.567411>,  <45.434097, 34.857197, 26.091677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871586, 34.753902, 26.567411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.600433, 35.001495, 26.726074>,  <45.437740, 35.150051, 26.821272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.600433, 35.001495, 26.726074>,  <45.871586, 34.753902, 26.567411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600433, 35.001495, 26.726074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044445, -0.573063, 0.818305,
		0.733827, 0.537084, 0.415979,
		-0.677881, 0.618983, 0.396659,
		45.397068, 35.187191, 26.845072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074024, 34.870819, 27.299812>,  <45.871586, 34.753902, 26.567411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074024, 34.870819, 27.299812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.691254, 34.986610, 27.290997>,  <45.461590, 35.056084, 27.285707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.691254, 34.986610, 27.290997>,  <46.074024, 34.870819, 27.299812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691254, 34.986610, 27.290997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162632, -0.471633, 0.866668,
		0.240488, 0.832925, 0.498399,
		-0.956931, 0.289479, -0.022038,
		45.404175, 35.073456, 27.284386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853119, 34.797123, 27.988119>,  <46.074024, 34.870819, 27.299812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853119, 34.797123, 27.988119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.521019, 34.788914, 27.765316>,  <45.321758, 34.783989, 27.631634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.521019, 34.788914, 27.765316>,  <45.853119, 34.797123, 27.988119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521019, 34.788914, 27.765316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435262, -0.600362, 0.670904,
		-0.348175, 0.799465, 0.489519,
		-0.830253, -0.020523, -0.557008,
		45.271942, 34.782757, 27.598213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394943, 35.006348, 28.468254>,  <45.853119, 34.797123, 27.988119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394943, 35.006348, 28.468254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.209946, 34.811985, 28.171606>,  <45.098949, 34.695366, 27.993618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.209946, 34.811985, 28.171606>,  <45.394943, 35.006348, 28.468254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209946, 34.811985, 28.171606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609847, -0.432817, 0.663895,
		-0.643576, 0.759319, -0.096154,
		-0.462491, -0.485906, -0.741618,
		45.071198, 34.666214, 27.949121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777439, 35.145454, 28.598763>,  <45.394943, 35.006348, 28.468254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777439, 35.145454, 28.598763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.727753, 34.825737, 28.363575>,  <44.697941, 34.633907, 28.222464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.727753, 34.825737, 28.363575>,  <44.777439, 35.145454, 28.598763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727753, 34.825737, 28.363575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735778, -0.323369, 0.595032,
		-0.665734, 0.506524, -0.547934,
		-0.124213, -0.799291, -0.587967,
		44.690491, 34.585949, 28.187185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960972, 35.008633, 28.531254>,  <44.777439, 35.145454, 28.598763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960972, 35.008633, 28.531254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.145535, 34.668991, 28.428392>,  <44.256271, 34.465206, 28.366676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.145535, 34.668991, 28.428392>,  <43.960972, 35.008633, 28.531254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145535, 34.668991, 28.428392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545735, -0.500169, 0.672313,
		-0.699483, -0.169873, -0.694167,
		0.461408, -0.849102, -0.257154,
		44.283958, 34.414261, 28.351246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436604, 34.459671, 28.355658>,  <43.960972, 35.008633, 28.531254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436604, 34.459671, 28.355658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.783848, 34.304913, 28.480047>,  <43.992195, 34.212059, 28.554682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.783848, 34.304913, 28.480047>,  <43.436604, 34.459671, 28.355658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783848, 34.304913, 28.480047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475684, -0.469414, 0.743892,
		-0.141832, -0.793702, -0.591541,
		0.868106, -0.386894, 0.310974,
		44.044281, 34.188843, 28.573339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236015, 33.776123, 28.512470>,  <43.436604, 34.459671, 28.355658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236015, 33.776123, 28.512470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586407, 33.790157, 28.704899>,  <43.796642, 33.798576, 28.820356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586407, 33.790157, 28.704899>,  <43.236015, 33.776123, 28.512470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586407, 33.790157, 28.704899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400880, -0.501701, 0.766545,
		0.268246, -0.864330, -0.425416,
		0.875979, 0.035082, 0.481071,
		43.849201, 33.800682, 28.849220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177334, 33.208073, 27.934797>,  <43.236015, 33.776123, 28.512470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177334, 33.208073, 27.934797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.853756, 33.020741, 27.792658>,  <42.659611, 32.908340, 27.707375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.853756, 33.020741, 27.792658>,  <43.177334, 33.208073, 27.934797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853756, 33.020741, 27.792658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219719, 0.319795, -0.921659,
		0.545281, -0.823648, -0.155795,
		-0.808945, -0.468332, -0.355350,
		42.611073, 32.880241, 27.686052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421951, 32.687416, 27.443083>,  <43.177334, 33.208073, 27.934797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421951, 32.687416, 27.443083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.048985, 32.800282, 27.352770>,  <42.825203, 32.868000, 27.298582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.048985, 32.800282, 27.352770>,  <43.421951, 32.687416, 27.443083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048985, 32.800282, 27.352770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317586, 0.341702, -0.884522,
		-0.172427, -0.896452, -0.408220,
		-0.932421, 0.282161, -0.225781,
		42.769257, 32.884930, 27.285036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394337, 32.455379, 26.809582>,  <43.421951, 32.687416, 27.443083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394337, 32.455379, 26.809582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.070461, 32.687813, 26.842443>,  <42.876137, 32.827271, 26.862160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.070461, 32.687813, 26.842443>,  <43.394337, 32.455379, 26.809582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070461, 32.687813, 26.842443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066804, 0.230338, -0.970815,
		-0.583044, -0.780571, -0.225321,
		-0.809690, 0.581080, 0.082152,
		42.827553, 32.862137, 26.867088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860752, 32.331287, 26.246653>,  <43.394337, 32.455379, 26.809582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860752, 32.331287, 26.246653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.831219, 32.706173, 26.382994>,  <42.813499, 32.931103, 26.464798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.831219, 32.706173, 26.382994>,  <42.860752, 32.331287, 26.246653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831219, 32.706173, 26.382994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141766, 0.348179, -0.926647,
		-0.987143, -0.020099, -0.158573,
		-0.073837, 0.937213, 0.340853,
		42.809067, 32.987335, 26.485250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494102, 32.575649, 25.819613>,  <42.860752, 32.331287, 26.246653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494102, 32.575649, 25.819613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.644341, 32.922791, 25.949692>,  <42.734482, 33.131077, 26.027739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.644341, 32.922791, 25.949692>,  <42.494102, 32.575649, 25.819613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644341, 32.922791, 25.949692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273130, 0.231652, -0.933669,
		-0.885624, 0.439501, -0.150031,
		0.375593, 0.867857, 0.325198,
		42.757019, 33.183147, 26.047251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218689, 33.070320, 25.355574>,  <42.494102, 32.575649, 25.819613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218689, 33.070320, 25.355574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.507504, 33.274567, 25.542309>,  <42.680790, 33.397114, 25.654350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.507504, 33.274567, 25.542309>,  <42.218689, 33.070320, 25.355574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507504, 33.274567, 25.542309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282255, 0.398651, -0.872588,
		-0.631666, 0.761803, 0.143713,
		0.722032, 0.510620, 0.466838,
		42.724113, 33.427753, 25.682360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157978, 33.783039, 25.077482>,  <42.218689, 33.070320, 25.355574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157978, 33.783039, 25.077482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534618, 33.743740, 25.206320>,  <42.760601, 33.720161, 25.283623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534618, 33.743740, 25.206320>,  <42.157978, 33.783039, 25.077482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534618, 33.743740, 25.206320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325756, 0.508075, -0.797335,
		-0.085315, 0.855691, 0.510405,
		0.941597, -0.098243, 0.322093,
		42.817097, 33.714268, 25.302948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993988, 34.560070, 25.210527>,  <42.157978, 33.783039, 25.077482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993988, 34.560070, 25.210527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.607086, 34.592251, 25.114241>,  <41.374947, 34.611561, 25.056469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.607086, 34.592251, 25.114241>,  <41.993988, 34.560070, 25.210527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607086, 34.592251, 25.114241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245331, -0.053332, 0.967971,
		0.065037, 0.995331, 0.071322,
		-0.967255, 0.080451, -0.240717,
		41.316910, 34.616386, 25.042025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672802, 35.082771, 25.673281>,  <41.993988, 34.560070, 25.210527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672802, 35.082771, 25.673281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.368961, 34.861317, 25.536760>,  <41.186657, 34.728443, 25.454847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.368961, 34.861317, 25.536760>,  <41.672802, 35.082771, 25.673281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368961, 34.861317, 25.536760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378484, -0.050470, 0.924231,
		-0.528912, 0.831228, -0.171204,
		-0.759606, -0.553635, -0.341301,
		41.141079, 34.695225, 25.434370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103577, 35.301826, 26.057575>,  <41.672802, 35.082771, 25.673281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103577, 35.301826, 26.057575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.968262, 34.969135, 25.881493>,  <40.887074, 34.769520, 25.775843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.968262, 34.969135, 25.881493>,  <41.103577, 35.301826, 26.057575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968262, 34.969135, 25.881493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565150, -0.194471, 0.801740,
		-0.752440, 0.520004, -0.404265,
		-0.338290, -0.831731, -0.440208,
		40.866776, 34.719616, 25.749430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394230, 35.295681, 26.162010>,  <41.103577, 35.301826, 26.057575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394230, 35.295681, 26.162010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460812, 34.907261, 26.093475>,  <40.500759, 34.674210, 26.052355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.460812, 34.907261, 26.093475>,  <40.394230, 35.295681, 26.162010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460812, 34.907261, 26.093475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588831, -0.237263, 0.772648,
		-0.790931, -0.027721, -0.611277,
		0.166452, -0.971050, -0.171336,
		40.510746, 34.615948, 26.042074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736664, 34.986813, 26.299793>,  <40.394230, 35.295681, 26.162010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736664, 34.986813, 26.299793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.016338, 34.702442, 26.330055>,  <40.184143, 34.531818, 26.348213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.016338, 34.702442, 26.330055>,  <39.736664, 34.986813, 26.299793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016338, 34.702442, 26.330055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507720, -0.419239, 0.752635,
		-0.503353, -0.564640, -0.654077,
		0.699183, -0.710929, 0.075654,
		40.226093, 34.489162, 26.352753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398659, 34.311867, 26.149374>,  <39.736664, 34.986813, 26.299793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398659, 34.311867, 26.149374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.729305, 34.256924, 26.367674>,  <39.927692, 34.223957, 26.498653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.729305, 34.256924, 26.367674>,  <39.398659, 34.311867, 26.149374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729305, 34.256924, 26.367674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546635, -0.426507, 0.720612,
		0.133789, -0.893994, -0.427639,
		0.826614, -0.137353, 0.545750,
		39.977291, 34.215717, 26.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392597, 33.651012, 26.355825>,  <39.398659, 34.311867, 26.149374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392597, 33.651012, 26.355825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653080, 33.807281, 26.616072>,  <39.809368, 33.901043, 26.772221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.653080, 33.807281, 26.616072>,  <39.392597, 33.651012, 26.355825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653080, 33.807281, 26.616072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483813, -0.446786, 0.752534,
		0.584682, -0.804833, -0.101937,
		0.651208, 0.390675, 0.650617,
		39.848442, 33.924484, 26.811256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.979683, 38.392876, 24.333672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.238659, 38.246635, 24.601151>,  <42.394043, 38.158890, 24.761637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.238659, 38.246635, 24.601151>,  <41.979683, 38.392876, 24.333672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238659, 38.246635, 24.601151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709610, 0.030848, 0.703920,
		-0.277985, -0.930258, -0.239465,
		0.647440, -0.365606, 0.668695,
		42.432892, 38.136955, 24.801760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621971, 38.015724, 24.734539>,  <41.979683, 38.392876, 24.333672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621971, 38.015724, 24.734539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.940170, 38.043262, 24.975351>,  <42.131088, 38.059788, 25.119839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.940170, 38.043262, 24.975351>,  <41.621971, 38.015724, 24.734539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940170, 38.043262, 24.975351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597007, -0.081075, 0.798129,
		0.103761, -0.994327, -0.023391,
		0.795497, 0.068850, 0.602033,
		42.178818, 38.063915, 25.155962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457794, 37.565414, 25.179071>,  <41.621971, 38.015724, 24.734539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457794, 37.565414, 25.179071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.742931, 37.771385, 25.369524>,  <41.914013, 37.894970, 25.483795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.742931, 37.771385, 25.369524>,  <41.457794, 37.565414, 25.179071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742931, 37.771385, 25.369524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517106, -0.072712, 0.852827,
		0.473767, -0.854143, 0.214441,
		0.712844, 0.514930, 0.476131,
		41.956783, 37.925865, 25.512363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600758, 37.191628, 25.870371>,  <41.457794, 37.565414, 25.179071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600758, 37.191628, 25.870371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.675777, 37.583817, 25.894043>,  <41.720791, 37.819130, 25.908247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.675777, 37.583817, 25.894043>,  <41.600758, 37.191628, 25.870371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675777, 37.583817, 25.894043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472410, 0.037215, 0.880593,
		0.861193, -0.193116, 0.470163,
		0.187554, 0.980470, 0.059180,
		41.732044, 37.877956, 25.911797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999905, 37.291019, 26.497055>,  <41.600758, 37.191628, 25.870371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999905, 37.291019, 26.497055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.830315, 37.638500, 26.394606>,  <41.728561, 37.846989, 26.333136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.830315, 37.638500, 26.394606>,  <41.999905, 37.291019, 26.497055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830315, 37.638500, 26.394606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455384, 0.039972, 0.889397,
		0.782859, 0.493720, 0.378646,
		-0.423978, 0.868702, -0.256124,
		41.703121, 37.899113, 26.317768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044968, 37.615902, 27.098261>,  <41.999905, 37.291019, 26.497055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044968, 37.615902, 27.098261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.803482, 37.859344, 26.892296>,  <41.658592, 38.005409, 26.768717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.803482, 37.859344, 26.892296>,  <42.044968, 37.615902, 27.098261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803482, 37.859344, 26.892296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447272, 0.276082, 0.850721,
		0.659911, 0.743894, 0.105539,
		-0.603710, 0.608605, -0.514912,
		41.622368, 38.041927, 26.737822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910885, 38.108624, 27.545996>,  <42.044968, 37.615902, 27.098261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910885, 38.108624, 27.545996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615753, 38.220047, 27.300064>,  <41.438675, 38.286900, 27.152504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615753, 38.220047, 27.300064>,  <41.910885, 38.108624, 27.545996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615753, 38.220047, 27.300064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572025, 0.225509, 0.788628,
		0.358330, 0.933569, -0.007043,
		-0.737826, 0.278560, -0.614831,
		41.394405, 38.303616, 27.115614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676743, 38.857258, 27.756775>,  <41.910885, 38.108624, 27.545996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676743, 38.857258, 27.756775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.386475, 38.671356, 27.553837>,  <41.212315, 38.559814, 27.432074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.386475, 38.671356, 27.553837>,  <41.676743, 38.857258, 27.756775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386475, 38.671356, 27.553837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640182, 0.185881, 0.745395,
		-0.252123, 0.865706, -0.432419,
		-0.725672, -0.464758, -0.507345,
		41.168774, 38.531929, 27.401634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038086, 39.377365, 27.585484>,  <41.676743, 38.857258, 27.756775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038086, 39.377365, 27.585484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911705, 38.998283, 27.603546>,  <40.835876, 38.770836, 27.614384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911705, 38.998283, 27.603546>,  <41.038086, 39.377365, 27.585484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911705, 38.998283, 27.603546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588053, 0.232951, 0.774550,
		-0.744561, 0.218164, -0.630899,
		-0.315948, -0.947701, 0.045154,
		40.816921, 38.713974, 27.617092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240429, 39.337933, 27.645885>,  <41.038086, 39.377365, 27.585484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240429, 39.337933, 27.645885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331905, 38.968769, 27.769781>,  <40.386791, 38.747269, 27.844118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.331905, 38.968769, 27.769781>,  <40.240429, 39.337933, 27.645885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331905, 38.968769, 27.769781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704371, 0.062757, 0.707052,
		-0.671984, -0.379865, -0.635720,
		0.228688, -0.922911, 0.309738,
		40.400513, 38.691895, 27.862703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566734, 39.183952, 27.901569>,  <40.240429, 39.337933, 27.645885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566734, 39.183952, 27.901569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.806290, 38.877022, 27.993267>,  <39.950024, 38.692863, 28.048285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.806290, 38.877022, 27.993267>,  <39.566734, 39.183952, 27.901569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806290, 38.877022, 27.993267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620806, -0.263996, 0.738177,
		-0.505900, -0.584400, -0.634462,
		0.598886, -0.767322, 0.229243,
		39.985954, 38.646824, 28.062040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097836, 38.536095, 27.986055>,  <39.566734, 39.183952, 27.901569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097836, 38.536095, 27.986055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433331, 38.532215, 28.203835>,  <39.634628, 38.529888, 28.334501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433331, 38.532215, 28.203835>,  <39.097836, 38.536095, 27.986055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433331, 38.532215, 28.203835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530477, -0.240255, 0.812940,
		0.122921, -0.970662, -0.206656,
		0.838740, -0.009699, 0.544446,
		39.684952, 38.529305, 28.367168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675976, 37.986397, 27.607824>,  <39.097836, 38.536095, 27.986055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675976, 37.986397, 27.607824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343689, 37.846664, 27.434448>,  <38.144318, 37.762825, 27.330423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343689, 37.846664, 27.434448>,  <38.675976, 37.986397, 27.607824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343689, 37.846664, 27.434448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442895, 0.056977, -0.894761,
		0.337264, -0.935265, 0.107384,
		-0.830721, -0.349331, -0.433441,
		38.094471, 37.741867, 27.304417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862968, 37.485867, 27.005438>,  <38.675976, 37.986397, 27.607824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862968, 37.485867, 27.005438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485710, 37.603832, 26.944113>,  <38.259357, 37.674610, 26.907318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485710, 37.603832, 26.944113>,  <38.862968, 37.485867, 27.005438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485710, 37.603832, 26.944113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165876, 0.017904, -0.985984,
		-0.288036, -0.955356, -0.065806,
		-0.943144, 0.294914, -0.153314,
		38.202766, 37.692307, 26.898119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590401, 36.993080, 26.554892>,  <38.862968, 37.485867, 27.005438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590401, 36.993080, 26.554892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350002, 37.311050, 26.521677>,  <38.205765, 37.501835, 26.501749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.350002, 37.311050, 26.521677>,  <38.590401, 36.993080, 26.554892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350002, 37.311050, 26.521677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197252, 0.046841, -0.979233,
		-0.774531, -0.604891, -0.184952,
		-0.600993, 0.794929, -0.083036,
		38.169704, 37.549530, 26.496767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122932, 36.881996, 25.959108>,  <38.590401, 36.993080, 26.554892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122932, 36.881996, 25.959108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.111042, 37.277050, 26.020683>,  <38.103909, 37.514084, 26.057629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.111042, 37.277050, 26.020683>,  <38.122932, 36.881996, 25.959108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111042, 37.277050, 26.020683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085951, 0.155959, -0.984017,
		-0.995856, -0.016015, -0.089523,
		-0.029721, 0.987634, 0.153936,
		38.102127, 37.573341, 26.066864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646877, 37.089447, 25.396017>,  <38.122932, 36.881996, 25.959108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646877, 37.089447, 25.396017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.865887, 37.395649, 25.531199>,  <37.997292, 37.579372, 25.612309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.865887, 37.395649, 25.531199>,  <37.646877, 37.089447, 25.396017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865887, 37.395649, 25.531199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250845, 0.235146, -0.939033,
		-0.798305, 0.598921, -0.063275,
		0.547528, 0.765507, 0.337954,
		38.030144, 37.625301, 25.632586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540024, 37.735416, 24.942347>,  <37.646877, 37.089447, 25.396017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540024, 37.735416, 24.942347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886127, 37.829826, 25.119263>,  <38.093788, 37.886471, 25.225412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886127, 37.829826, 25.119263>,  <37.540024, 37.735416, 24.942347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886127, 37.829826, 25.119263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418006, 0.147399, -0.896407,
		-0.276766, 0.960503, 0.028879,
		0.865258, 0.236023, 0.442291,
		38.145706, 37.900635, 25.251949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694057, 38.487549, 24.685373>,  <37.540024, 37.735416, 24.942347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694057, 38.487549, 24.685373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044533, 38.337460, 24.806372>,  <38.254818, 38.247406, 24.878971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044533, 38.337460, 24.806372>,  <37.694057, 38.487549, 24.685373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044533, 38.337460, 24.806372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378387, 0.146782, -0.913936,
		0.298526, 0.915240, 0.270588,
		0.876188, -0.375221, 0.302496,
		38.307388, 38.224892, 24.897121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243515, 39.018291, 24.419237>,  <37.694057, 38.487549, 24.685373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243515, 39.018291, 24.419237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.458542, 38.691288, 24.501888>,  <38.587559, 38.495087, 24.551479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.458542, 38.691288, 24.501888>,  <38.243515, 39.018291, 24.419237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458542, 38.691288, 24.501888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513298, 0.122846, -0.849373,
		0.668987, 0.562660, 0.485665,
		0.537570, -0.817510, 0.206629,
		38.619812, 38.446033, 24.563877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882187, 39.219387, 24.195469>,  <38.243515, 39.018291, 24.419237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882187, 39.219387, 24.195469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.910339, 38.821461, 24.224815>,  <38.927231, 38.582703, 24.242424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.910339, 38.821461, 24.224815>,  <38.882187, 39.219387, 24.195469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910339, 38.821461, 24.224815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548062, -0.022890, -0.836125,
		0.833472, 0.099053, 0.543611,
		0.070377, -0.994819, 0.073365,
		38.931454, 38.523014, 24.246824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594044, 39.055531, 24.211586>,  <38.882187, 39.219387, 24.195469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594044, 39.055531, 24.211586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.436302, 38.720375, 24.060623>,  <39.341660, 38.519283, 23.970045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.436302, 38.720375, 24.060623>,  <39.594044, 39.055531, 24.211586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436302, 38.720375, 24.060623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771706, -0.078958, -0.631059,
		0.498956, -0.540104, 0.677739,
		-0.394350, -0.837886, -0.377405,
		39.317997, 38.469009, 23.947401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120056, 38.596783, 24.210102>,  <39.594044, 39.055531, 24.211586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120056, 38.596783, 24.210102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860821, 38.412155, 23.967798>,  <39.705280, 38.301380, 23.822416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.860821, 38.412155, 23.967798>,  <40.120056, 38.596783, 24.210102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860821, 38.412155, 23.967798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755010, -0.285241, -0.590421,
		0.099731, -0.839997, 0.533347,
		-0.648085, -0.461566, -0.605759,
		39.666397, 38.273685, 23.786070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429569, 37.918793, 24.101265>,  <40.120056, 38.596783, 24.210102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429569, 37.918793, 24.101265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.177067, 37.958530, 23.793591>,  <40.025566, 37.982372, 23.608986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.177067, 37.958530, 23.793591>,  <40.429569, 37.918793, 24.101265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177067, 37.958530, 23.793591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686057, -0.391017, -0.613539,
		-0.361719, -0.915005, 0.178674,
		-0.631257, 0.099349, -0.769185,
		39.987690, 37.988335, 23.562836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590439, 37.417057, 23.650551>,  <40.429569, 37.918793, 24.101265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590439, 37.417057, 23.650551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.393471, 37.661976, 23.403130>,  <40.275288, 37.808929, 23.254677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.393471, 37.661976, 23.403130>,  <40.590439, 37.417057, 23.650551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393471, 37.661976, 23.403130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658657, -0.202405, -0.724709,
		-0.568937, -0.764279, -0.303626,
		-0.492424, 0.612300, -0.618553,
		40.245743, 37.845665, 23.217564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462219, 37.061035, 22.955662>,  <40.590439, 37.417057, 23.650551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462219, 37.061035, 22.955662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.462097, 37.460247, 22.930576>,  <40.462025, 37.699776, 22.915525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.462097, 37.460247, 22.930576>,  <40.462219, 37.061035, 22.955662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462097, 37.460247, 22.930576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724202, -0.043026, -0.688245,
		-0.689588, -0.045626, -0.722763,
		-0.000304, 0.998032, -0.062713,
		40.462006, 37.759655, 22.911762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798637, 36.575970, 22.675333>,  <40.462219, 37.061035, 22.955662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798637, 36.575970, 22.675333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.898918, 36.208363, 22.553640>,  <40.959087, 35.987797, 22.480625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.898918, 36.208363, 22.553640>,  <40.798637, 36.575970, 22.675333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898918, 36.208363, 22.553640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046746, -0.302410, 0.952031,
		-0.966935, -0.252896, -0.032854,
		0.250701, -0.919017, -0.304233,
		40.974129, 35.932659, 22.462370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319229, 36.079437, 23.042734>,  <40.798637, 36.575970, 22.675333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319229, 36.079437, 23.042734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653976, 35.890450, 22.932154>,  <40.854824, 35.777058, 22.865805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.653976, 35.890450, 22.932154>,  <40.319229, 36.079437, 23.042734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653976, 35.890450, 22.932154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011163, -0.519652, 0.854305,
		-0.547291, -0.711854, -0.440154,
		0.836868, -0.472468, -0.276454,
		40.905037, 35.748711, 22.849218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282944, 35.322887, 22.911160>,  <40.319229, 36.079437, 23.042734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282944, 35.322887, 22.911160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.667538, 35.373688, 23.008667>,  <40.898293, 35.404167, 23.067171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.667538, 35.373688, 23.008667>,  <40.282944, 35.322887, 22.911160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667538, 35.373688, 23.008667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096683, -0.673926, 0.732445,
		0.257304, -0.727801, -0.635689,
		0.961482, 0.127000, 0.243770,
		40.955982, 35.411789, 23.081799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593048, 34.669544, 22.899929>,  <40.282944, 35.322887, 22.911160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593048, 34.669544, 22.899929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820351, 34.896576, 23.138239>,  <40.956730, 35.032795, 23.281225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.820351, 34.896576, 23.138239>,  <40.593048, 34.669544, 22.899929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820351, 34.896576, 23.138239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194442, -0.610906, 0.767454,
		0.799551, -0.551951, -0.236788,
		0.568253, 0.567577, 0.595773,
		40.990826, 35.066849, 23.316971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940914, 34.148617, 23.385220>,  <40.593048, 34.669544, 22.899929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940914, 34.148617, 23.385220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.026779, 34.501434, 23.552986>,  <41.078297, 34.713127, 23.653646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.026779, 34.501434, 23.552986>,  <40.940914, 34.148617, 23.385220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026779, 34.501434, 23.552986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059531, -0.416813, 0.907041,
		0.974872, -0.219676, -0.036965,
		0.214663, 0.882048, 0.419417,
		41.091179, 34.766048, 23.678812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361580, 33.984337, 23.937826>,  <40.940914, 34.148617, 23.385220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361580, 33.984337, 23.937826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.251503, 34.354221, 24.043036>,  <41.185459, 34.576153, 24.106161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.251503, 34.354221, 24.043036>,  <41.361580, 33.984337, 23.937826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251503, 34.354221, 24.043036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018653, -0.278670, 0.960206,
		0.961209, 0.259333, 0.093936,
		-0.275191, 0.924710, 0.263023,
		41.168945, 34.631634, 24.121943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886677, 34.217930, 24.568256>,  <41.361580, 33.984337, 23.937826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886677, 34.217930, 24.568256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.545387, 34.425835, 24.585451>,  <41.340614, 34.550579, 24.595768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.545387, 34.425835, 24.585451>,  <41.886677, 34.217930, 24.568256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545387, 34.425835, 24.585451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007124, -0.094031, 0.995544,
		0.521492, 0.849118, 0.083933,
		-0.853226, 0.519766, 0.042987,
		41.289421, 34.581764, 24.598347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578609, 34.503868, 24.767502>,  <41.886677, 34.217930, 24.568256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578609, 34.503868, 24.767502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870358, 34.258610, 24.888870>,  <43.045406, 34.111454, 24.961691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.870358, 34.258610, 24.888870>,  <42.578609, 34.503868, 24.767502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870358, 34.258610, 24.888870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621453, 0.408402, -0.668583,
		0.286024, 0.676208, 0.678921,
		0.729374, -0.613148, 0.303419,
		43.089169, 34.074665, 24.979897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100018, 34.900013, 24.844038>,  <42.578609, 34.503868, 24.767502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100018, 34.900013, 24.844038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.229168, 34.530518, 24.761620>,  <43.306660, 34.308819, 24.712168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.229168, 34.530518, 24.761620>,  <43.100018, 34.900013, 24.844038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229168, 34.530518, 24.761620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684546, 0.378270, -0.623144,
		0.653564, 0.060151, 0.754477,
		0.322879, -0.923739, -0.206047,
		43.326031, 34.253395, 24.699806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883709, 34.912540, 24.845406>,  <43.100018, 34.900013, 24.844038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883709, 34.912540, 24.845406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.774799, 34.584843, 24.643532>,  <43.709454, 34.388222, 24.522408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.774799, 34.584843, 24.643532>,  <43.883709, 34.912540, 24.845406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774799, 34.584843, 24.643532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745277, 0.152210, -0.649148,
		0.608630, -0.552872, 0.569124,
		-0.272269, -0.819246, -0.504683,
		43.693119, 34.339069, 24.492126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606556, 34.638901, 24.669930>,  <43.883709, 34.912540, 24.845406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606556, 34.638901, 24.669930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.331928, 34.467957, 24.434647>,  <44.167152, 34.365391, 24.293476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.331928, 34.467957, 24.434647>,  <44.606556, 34.638901, 24.669930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331928, 34.467957, 24.434647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611605, 0.097990, -0.785072,
		0.393148, -0.898755, 0.194099,
		-0.686568, -0.427361, -0.588207,
		44.125957, 34.339748, 24.258184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085712, 34.316658, 24.273577>,  <44.606556, 34.638901, 24.669930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085712, 34.316658, 24.273577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.749119, 34.292469, 24.058825>,  <44.547161, 34.277954, 23.929974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.749119, 34.292469, 24.058825>,  <45.085712, 34.316658, 24.273577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749119, 34.292469, 24.058825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538616, -0.016027, -0.842399,
		0.042340, -0.998041, 0.046060,
		-0.841487, -0.060476, -0.536882,
		44.496674, 34.274326, 23.897760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219364, 33.873070, 23.765446>,  <45.085712, 34.316658, 24.273577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219364, 33.873070, 23.765446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.900017, 34.065907, 23.621115>,  <44.708408, 34.181610, 23.534517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.900017, 34.065907, 23.621115>,  <45.219364, 33.873070, 23.765446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900017, 34.065907, 23.621115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427803, 0.032383, -0.903292,
		-0.423789, -0.875519, -0.232096,
		-0.798365, 0.482097, -0.360826,
		44.660507, 34.210537, 23.512867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949249, 33.429157, 23.217802>,  <45.219364, 33.873070, 23.765446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949249, 33.429157, 23.217802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.828125, 33.804039, 23.148582>,  <44.755451, 34.028969, 23.107052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.828125, 33.804039, 23.148582>,  <44.949249, 33.429157, 23.217802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828125, 33.804039, 23.148582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412922, -0.034627, -0.910107,
		-0.858952, -0.347048, -0.376508,
		-0.302814, 0.937208, -0.173047,
		44.737282, 34.085201, 23.096668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001244, 33.529922, 22.528141>,  <44.949249, 33.429157, 23.217802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001244, 33.529922, 22.528141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.985298, 33.912437, 22.644016>,  <44.975731, 34.141949, 22.713541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.985298, 33.912437, 22.644016>,  <45.001244, 33.529922, 22.528141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985298, 33.912437, 22.644016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670540, 0.240545, -0.701794,
		-0.740802, 0.166271, -0.650820,
		-0.039863, 0.956291, 0.289688,
		44.973339, 34.199326, 22.730923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870625, 33.877407, 21.980806>,  <45.001244, 33.529922, 22.528141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870625, 33.877407, 21.980806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.031181, 34.150600, 22.224911>,  <45.127514, 34.314518, 22.371374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.031181, 34.150600, 22.224911>,  <44.870625, 33.877407, 21.980806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031181, 34.150600, 22.224911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719912, 0.176647, -0.671210,
		-0.566226, 0.708753, -0.420783,
		0.401392, 0.682983, 0.610262,
		45.151600, 34.355495, 22.407990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.417961, 29.452951, 35.752060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515255, 29.818863, 35.881065>,  <37.573631, 30.038410, 35.958469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515255, 29.818863, 35.881065>,  <37.417961, 29.452951, 35.752060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515255, 29.818863, 35.881065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301732, 0.244647, -0.921469,
		-0.921844, 0.321443, -0.216512,
		0.243231, 0.914780, 0.322516,
		37.588223, 30.093296, 35.977821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154396, 30.007788, 35.251026>,  <37.417961, 29.452951, 35.752060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154396, 30.007788, 35.251026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493206, 30.096775, 35.444134>,  <37.696491, 30.150167, 35.559998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493206, 30.096775, 35.444134>,  <37.154396, 30.007788, 35.251026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493206, 30.096775, 35.444134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460023, 0.148260, -0.875442,
		-0.266333, 0.963601, 0.023239,
		0.847022, 0.222469, 0.482765,
		37.747314, 30.163515, 35.588963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369396, 30.686413, 35.000824>,  <37.154396, 30.007788, 35.251026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369396, 30.686413, 35.000824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695999, 30.512903, 35.153221>,  <37.891960, 30.408798, 35.244659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695999, 30.512903, 35.153221>,  <37.369396, 30.686413, 35.000824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695999, 30.512903, 35.153221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447471, 0.058498, -0.892383,
		0.364805, 0.899121, 0.241865,
		0.816509, -0.433773, 0.380991,
		37.940952, 30.382771, 35.267517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922546, 30.930262, 34.586678>,  <37.369396, 30.686413, 35.000824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922546, 30.930262, 34.586678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.104115, 30.609739, 34.742554>,  <38.213055, 30.417425, 34.836079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.104115, 30.609739, 34.742554>,  <37.922546, 30.930262, 34.586678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104115, 30.609739, 34.742554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616356, -0.033466, -0.786756,
		0.643475, 0.597315, 0.478700,
		0.453922, -0.801308, 0.389693,
		38.240292, 30.369347, 34.859463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615463, 31.036152, 34.573116>,  <37.922546, 30.930262, 34.586678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615463, 31.036152, 34.573116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639984, 30.638117, 34.604202>,  <38.654697, 30.399296, 34.622852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639984, 30.638117, 34.604202>,  <38.615463, 31.036152, 34.573116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639984, 30.638117, 34.604202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561105, -0.030036, -0.827199,
		0.825471, 0.094319, 0.556508,
		0.061306, -0.995089, 0.077716,
		38.658375, 30.339590, 34.627518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354118, 30.801849, 34.412598>,  <38.615463, 31.036152, 34.573116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354118, 30.801849, 34.412598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127537, 30.477352, 34.354610>,  <38.991589, 30.282654, 34.319817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127537, 30.477352, 34.354610>,  <39.354118, 30.801849, 34.412598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127537, 30.477352, 34.354610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447650, -0.155201, -0.880637,
		0.691912, -0.563734, 0.451068,
		-0.566451, -0.811244, -0.144970,
		38.957600, 30.233978, 34.311119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665802, 30.408554, 34.020409>,  <39.354118, 30.801849, 34.412598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665802, 30.408554, 34.020409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298565, 30.257597, 33.971935>,  <39.078224, 30.167023, 33.942852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298565, 30.257597, 33.971935>,  <39.665802, 30.408554, 34.020409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298565, 30.257597, 33.971935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216549, -0.221490, -0.950815,
		0.331989, -0.899176, 0.285072,
		-0.918091, -0.377392, -0.121184,
		39.023136, 30.144379, 33.935581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679523, 29.648596, 33.815807>,  <39.665802, 30.408554, 34.020409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679523, 29.648596, 33.815807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.332020, 29.791384, 33.678505>,  <39.123516, 29.877056, 33.596123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.332020, 29.791384, 33.678505>,  <39.679523, 29.648596, 33.815807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332020, 29.791384, 33.678505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316947, -0.131794, -0.939242,
		-0.380522, -0.924771, 0.001357,
		-0.868762, 0.356972, -0.343254,
		39.071392, 29.898476, 33.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404282, 29.183378, 33.315903>,  <39.679523, 29.648596, 33.815807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404282, 29.183378, 33.315903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.249184, 29.545982, 33.249096>,  <39.156124, 29.763544, 33.209011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.249184, 29.545982, 33.249096>,  <39.404282, 29.183378, 33.315903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249184, 29.545982, 33.249096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402053, 0.003274, -0.915611,
		-0.829463, -0.422173, -0.365734,
		-0.387743, 0.906510, -0.167020,
		39.132862, 29.817936, 33.198990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207939, 29.134775, 32.547878>,  <39.404282, 29.183378, 33.315903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207939, 29.134775, 32.547878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.176746, 29.521318, 32.645916>,  <39.158031, 29.753244, 32.704739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.176746, 29.521318, 32.645916>,  <39.207939, 29.134775, 32.547878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176746, 29.521318, 32.645916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349042, 0.256749, -0.901249,
		-0.933857, 0.015267, -0.357322,
		-0.077983, 0.966358, 0.245095,
		39.153351, 29.811226, 32.719444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948959, 29.332529, 31.983036>,  <39.207939, 29.134775, 32.547878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948959, 29.332529, 31.983036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.102570, 29.655649, 32.161915>,  <39.194736, 29.849522, 32.269241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.102570, 29.655649, 32.161915>,  <38.948959, 29.332529, 31.983036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102570, 29.655649, 32.161915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340000, 0.326583, -0.881898,
		-0.858442, 0.490719, -0.149235,
		0.384026, 0.807799, 0.447197,
		39.217777, 29.897989, 32.296074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602444, 29.977188, 31.691570>,  <38.948959, 29.332529, 31.983036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602444, 29.977188, 31.691570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.964287, 30.066782, 31.836632>,  <39.181393, 30.120539, 31.923668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.964287, 30.066782, 31.836632>,  <38.602444, 29.977188, 31.691570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964287, 30.066782, 31.836632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260285, 0.383482, -0.886111,
		-0.337546, 0.895976, 0.288601,
		0.904607, 0.223985, 0.362652,
		39.235668, 30.133978, 31.945427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326687, 30.640821, 31.832966>,  <38.602444, 29.977188, 31.691570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326687, 30.640821, 31.832966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986622, 30.777296, 31.672558>,  <37.782585, 30.859180, 31.576313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986622, 30.777296, 31.672558>,  <38.326687, 30.640821, 31.832966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986622, 30.777296, 31.672558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516094, -0.389142, 0.763031,
		0.104283, 0.855663, 0.506918,
		-0.850160, 0.341188, -0.401021,
		37.731575, 30.879652, 31.552252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897755, 30.762804, 32.332390>,  <38.326687, 30.640821, 31.832966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897755, 30.762804, 32.332390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.626179, 30.732639, 32.040264>,  <37.463234, 30.714540, 31.864988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.626179, 30.732639, 32.040264>,  <37.897755, 30.762804, 32.332390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626179, 30.732639, 32.040264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692318, -0.265389, 0.671018,
		-0.244419, 0.961188, 0.127974,
		-0.678937, -0.075411, -0.730314,
		37.422497, 30.710016, 31.821171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316441, 31.208126, 32.562893>,  <37.897755, 30.762804, 32.332390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316441, 31.208126, 32.562893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146225, 30.943966, 32.315414>,  <37.044094, 30.785469, 32.166927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146225, 30.943966, 32.315414>,  <37.316441, 31.208126, 32.562893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146225, 30.943966, 32.315414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761650, -0.107825, 0.638955,
		-0.488677, 0.743132, -0.457110,
		-0.425541, -0.660400, -0.618698,
		37.018562, 30.745846, 32.129807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564342, 31.435030, 32.474464>,  <37.316441, 31.208126, 32.562893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564342, 31.435030, 32.474464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586697, 31.048599, 32.373608>,  <36.600109, 30.816742, 32.313095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586697, 31.048599, 32.373608>,  <36.564342, 31.435030, 32.474464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586697, 31.048599, 32.373608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761756, -0.204508, 0.614739,
		-0.645450, 0.157719, -0.747342,
		0.055881, -0.966075, -0.252143,
		36.603462, 30.758778, 32.297966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903606, 31.304295, 32.150478>,  <36.564342, 31.435030, 32.474464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903606, 31.304295, 32.150478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065514, 30.964901, 32.286854>,  <36.162659, 30.761265, 32.368679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065514, 30.964901, 32.286854>,  <35.903606, 31.304295, 32.150478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065514, 30.964901, 32.286854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781213, -0.127088, 0.611191,
		-0.475255, -0.513738, -0.714287,
		0.404769, -0.848482, 0.340940,
		36.186943, 30.710356, 32.389137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381641, 30.864798, 32.144321>,  <35.903606, 31.304295, 32.150478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381641, 30.864798, 32.144321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.641346, 30.675451, 32.382442>,  <35.797169, 30.561844, 32.525314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.641346, 30.675451, 32.382442>,  <35.381641, 30.864798, 32.144321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641346, 30.675451, 32.382442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743874, -0.232125, 0.626713,
		-0.158479, -0.849731, -0.502833,
		0.649258, -0.473365, 0.595307,
		35.836124, 30.533442, 32.561035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069061, 30.230238, 32.292461>,  <35.381641, 30.864798, 32.144321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069061, 30.230238, 32.292461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346996, 30.255901, 32.578979>,  <35.513756, 30.271299, 32.750893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346996, 30.255901, 32.578979>,  <35.069061, 30.230238, 32.292461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346996, 30.255901, 32.578979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697984, -0.179796, 0.693175,
		0.173261, -0.981609, -0.080148,
		0.694837, 0.064158, 0.716299,
		35.555447, 30.275148, 32.793869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045033, 29.635035, 32.774723>,  <35.069061, 30.230238, 32.292461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045033, 29.635035, 32.774723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197227, 29.950315, 32.968204>,  <35.288544, 30.139484, 33.084293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197227, 29.950315, 32.968204>,  <35.045033, 29.635035, 32.774723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197227, 29.950315, 32.968204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816585, 0.040842, 0.575778,
		0.434073, -0.614061, 0.659173,
		0.380484, 0.788201, 0.483705,
		35.311375, 30.186775, 33.113316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847565, 29.497643, 33.512753>,  <35.045033, 29.635035, 32.774723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847565, 29.497643, 33.512753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978237, 29.873722, 33.551342>,  <35.056641, 30.099369, 33.574493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978237, 29.873722, 33.551342>,  <34.847565, 29.497643, 33.512753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978237, 29.873722, 33.551342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629258, 0.140207, 0.764445,
		0.705203, -0.310437, 0.637430,
		0.326684, 0.940197, 0.096471,
		35.076244, 30.155781, 33.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066227, 29.611788, 34.288307>,  <34.847565, 29.497643, 33.512753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066227, 29.611788, 34.288307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971684, 29.940918, 34.081585>,  <34.914959, 30.138397, 33.957550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971684, 29.940918, 34.081585>,  <35.066227, 29.611788, 34.288307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971684, 29.940918, 34.081585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663370, 0.251989, 0.704586,
		0.709983, 0.509369, 0.486279,
		-0.236358, 0.822827, -0.516808,
		34.900776, 30.187767, 33.926544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120953, 30.190952, 34.739723>,  <35.066227, 29.611788, 34.288307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120953, 30.190952, 34.739723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863853, 30.287964, 34.449055>,  <34.709595, 30.346170, 34.274654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863853, 30.287964, 34.449055>,  <35.120953, 30.190952, 34.739723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863853, 30.287964, 34.449055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606056, 0.419230, 0.675976,
		0.468586, 0.874887, -0.122473,
		-0.642747, 0.242527, -0.726676,
		34.671028, 30.360722, 34.231052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819477, 30.811687, 34.955154>,  <35.120953, 30.190952, 34.739723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819477, 30.811687, 34.955154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545063, 30.706518, 34.683792>,  <34.380417, 30.643417, 34.520977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545063, 30.706518, 34.683792>,  <34.819477, 30.811687, 34.955154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545063, 30.706518, 34.683792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718353, 0.392721, 0.574229,
		0.115445, 0.881273, -0.458291,
		-0.686033, -0.262923, -0.678403,
		34.339252, 30.627642, 34.480270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276871, 31.321627, 34.953033>,  <34.819477, 30.811687, 34.955154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276871, 31.321627, 34.953033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113361, 31.015772, 34.753738>,  <34.015255, 30.832260, 34.634163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113361, 31.015772, 34.753738>,  <34.276871, 31.321627, 34.953033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113361, 31.015772, 34.753738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892885, 0.222107, 0.391696,
		-0.188843, 0.604981, -0.773522,
		-0.408773, -0.764635, -0.498235,
		33.990730, 30.786381, 34.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695881, 31.651320, 34.722881>,  <34.276871, 31.321627, 34.953033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695881, 31.651320, 34.722881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624828, 31.257750, 34.730267>,  <33.582199, 31.021608, 34.734699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624828, 31.257750, 34.730267>,  <33.695881, 31.651320, 34.722881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624828, 31.257750, 34.730267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872721, 0.166169, 0.459071,
		-0.454760, 0.065427, -0.888207,
		-0.177629, -0.983924, 0.018467,
		33.571541, 30.962572, 34.735806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245663, 31.540701, 34.215137>,  <33.695881, 31.651320, 34.722881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245663, 31.540701, 34.215137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873276, 31.426897, 34.123608>,  <33.649845, 31.358614, 34.068691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873276, 31.426897, 34.123608>,  <34.245663, 31.540701, 34.215137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873276, 31.426897, 34.123608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058873, 0.501542, -0.863128,
		0.360331, -0.817013, -0.450168,
		-0.930965, -0.284509, -0.228821,
		33.593987, 31.341545, 34.054962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378643, 32.125240, 34.679810>,  <34.245663, 31.540701, 34.215137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378643, 32.125240, 34.679810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406746, 32.400425, 34.390877>,  <34.423607, 32.565536, 34.217518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406746, 32.400425, 34.390877>,  <34.378643, 32.125240, 34.679810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406746, 32.400425, 34.390877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849716, -0.420597, -0.317933,
		-0.522538, -0.591442, -0.614125,
		0.070260, 0.687964, -0.722336,
		34.427822, 32.606815, 34.174175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771427, 32.539425, 35.061245>,  <34.378643, 32.125240, 34.679810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771427, 32.539425, 35.061245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066246, 32.803410, 35.119499>,  <34.243137, 32.961800, 35.154453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066246, 32.803410, 35.119499>,  <33.771427, 32.539425, 35.061245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066246, 32.803410, 35.119499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040933, 0.171506, -0.984332,
		-0.674596, 0.731465, 0.099394,
		0.737052, 0.659958, 0.145638,
		34.287361, 33.001396, 35.163189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536831, 33.252045, 34.776646>,  <33.771427, 32.539425, 35.061245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536831, 33.252045, 34.776646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934723, 33.272396, 34.812233>,  <34.173458, 33.284607, 34.833588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934723, 33.272396, 34.812233>,  <33.536831, 33.252045, 34.776646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934723, 33.272396, 34.812233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051227, 0.505058, -0.861564,
		-0.088773, 0.861584, 0.499792,
		0.994734, 0.050880, 0.088972,
		34.233143, 33.287659, 34.838924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685665, 33.916843, 34.639633>,  <33.536831, 33.252045, 34.776646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685665, 33.916843, 34.639633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035183, 33.735973, 34.568054>,  <34.244892, 33.627449, 34.525108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035183, 33.735973, 34.568054>,  <33.685665, 33.916843, 34.639633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035183, 33.735973, 34.568054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050757, 0.450770, -0.891196,
		0.483643, 0.769637, 0.416831,
		0.873792, -0.452178, -0.178947,
		34.297321, 33.600319, 34.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087383, 34.437347, 34.415489>,  <33.685665, 33.916843, 34.639633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087383, 34.437347, 34.415489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281120, 34.115002, 34.279259>,  <34.397362, 33.921593, 34.197521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281120, 34.115002, 34.279259>,  <34.087383, 34.437347, 34.415489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281120, 34.115002, 34.279259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013160, 0.382528, -0.923850,
		0.874781, 0.451939, 0.174669,
		0.484339, -0.805868, -0.340576,
		34.426422, 33.873241, 34.177086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677406, 34.590866, 34.074562>,  <34.087383, 34.437347, 34.415489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677406, 34.590866, 34.074562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602142, 34.226768, 33.927025>,  <34.556984, 34.008308, 33.838501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.602142, 34.226768, 33.927025>,  <34.677406, 34.590866, 34.074562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602142, 34.226768, 33.927025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076074, 0.360916, -0.929490,
		0.979187, -0.202953, 0.001336,
		-0.188161, -0.910247, -0.368844,
		34.545692, 33.953693, 33.816372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291183, 34.514481, 33.715832>,  <34.677406, 34.590866, 34.074562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291183, 34.514481, 33.715832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061337, 34.230824, 33.552402>,  <34.923428, 34.060631, 33.454346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061337, 34.230824, 33.552402>,  <35.291183, 34.514481, 33.715832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061337, 34.230824, 33.552402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050936, 0.467266, -0.882648,
		0.816834, -0.527998, -0.232379,
		-0.574619, -0.709141, -0.408573,
		34.888950, 34.018082, 33.429832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638847, 34.262756, 33.121674>,  <35.291183, 34.514481, 33.715832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638847, 34.262756, 33.121674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254314, 34.168175, 33.065216>,  <35.023594, 34.111423, 33.031342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254314, 34.168175, 33.065216>,  <35.638847, 34.262756, 33.121674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254314, 34.168175, 33.065216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039801, 0.387843, -0.920866,
		0.272485, -0.890879, -0.363436,
		-0.961336, -0.236457, -0.141140,
		34.965912, 34.097237, 33.022873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541431, 33.963505, 32.491856>,  <35.638847, 34.262756, 33.121674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541431, 33.963505, 32.491856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.178856, 34.107262, 32.580582>,  <34.961311, 34.193516, 32.633820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.178856, 34.107262, 32.580582>,  <35.541431, 33.963505, 32.491856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178856, 34.107262, 32.580582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004041, 0.532573, -0.846374,
		-0.422317, -0.766290, -0.484198,
		-0.906439, 0.359395, 0.221818,
		34.906925, 34.215080, 32.647125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325981, 34.234814, 31.879824>,  <35.541431, 33.963505, 32.491856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325981, 34.234814, 31.879824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050148, 34.401180, 32.116966>,  <34.884647, 34.500999, 32.259251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050148, 34.401180, 32.116966>,  <35.325981, 34.234814, 31.879824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050148, 34.401180, 32.116966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264266, 0.617668, -0.740708,
		-0.674265, -0.667455, -0.316023,
		-0.689587, 0.415920, 0.592858,
		34.843273, 34.525955, 32.294823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623264, 34.269188, 31.531790>,  <35.325981, 34.234814, 31.879824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623264, 34.269188, 31.531790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671352, 34.564999, 31.796711>,  <34.700207, 34.742485, 31.955664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671352, 34.564999, 31.796711>,  <34.623264, 34.269188, 31.531790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671352, 34.564999, 31.796711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063521, 0.660045, -0.748536,
		-0.990713, 0.132062, 0.032378,
		0.120224, 0.739527, 0.662304,
		34.707420, 34.786858, 31.995401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340485, 34.817551, 31.230776>,  <34.623264, 34.269188, 31.531790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340485, 34.817551, 31.230776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497070, 35.038097, 31.525463>,  <34.591022, 35.170425, 31.702274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497070, 35.038097, 31.525463>,  <34.340485, 34.817551, 31.230776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497070, 35.038097, 31.525463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222758, 0.720017, -0.657233,
		-0.892824, 0.421392, 0.159039,
		0.391463, 0.551366, 0.736717,
		34.614510, 35.203506, 31.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111744, 35.557442, 31.197311>,  <34.340485, 34.817551, 31.230776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111744, 35.557442, 31.197311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463646, 35.549015, 31.387297>,  <34.674786, 35.543961, 31.501287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463646, 35.549015, 31.387297>,  <34.111744, 35.557442, 31.197311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463646, 35.549015, 31.387297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360210, 0.681558, -0.636967,
		-0.310297, 0.731461, 0.607191,
		0.879753, -0.021067, 0.474964,
		34.727573, 35.542694, 31.529785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325714, 36.251949, 31.193241>,  <34.111744, 35.557442, 31.197311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325714, 36.251949, 31.193241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666462, 36.073349, 31.302755>,  <34.870911, 35.966190, 31.368464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666462, 36.073349, 31.302755>,  <34.325714, 36.251949, 31.193241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666462, 36.073349, 31.302755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522199, 0.683822, -0.509603,
		0.040317, 0.577085, 0.815688,
		0.851870, -0.446498, 0.273784,
		34.922024, 35.939400, 31.384890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709766, 36.789806, 31.430408>,  <34.325714, 36.251949, 31.193241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709766, 36.789806, 31.430408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957283, 36.497963, 31.313950>,  <35.105793, 36.322857, 31.244074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957283, 36.497963, 31.313950>,  <34.709766, 36.789806, 31.430408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957283, 36.497963, 31.313950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511966, 0.655660, -0.554978,
		0.595813, 0.194356, 0.779251,
		0.618788, -0.729613, -0.291148,
		35.142918, 36.279079, 31.226604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362453, 37.194870, 31.451420>,  <34.709766, 36.789806, 31.430408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362453, 37.194870, 31.451420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428902, 36.865284, 31.234724>,  <35.468769, 36.667530, 31.104706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428902, 36.865284, 31.234724>,  <35.362453, 37.194870, 31.451420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428902, 36.865284, 31.234724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476539, 0.548043, -0.687430,
		0.863317, -0.143966, 0.483692,
		0.166118, -0.823968, -0.541740,
		35.478737, 36.618095, 31.072203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045601, 37.208691, 31.238214>,  <35.362453, 37.194870, 31.451420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045601, 37.208691, 31.238214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879864, 36.953712, 30.978371>,  <35.780422, 36.800728, 30.822464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879864, 36.953712, 30.978371>,  <36.045601, 37.208691, 31.238214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879864, 36.953712, 30.978371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565784, 0.378675, -0.732458,
		0.712889, -0.671024, 0.203754,
		-0.414340, -0.637442, -0.649608,
		35.755562, 36.762482, 30.783489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581112, 36.879013, 31.012753>,  <36.045601, 37.208691, 31.238214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581112, 36.879013, 31.012753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282749, 36.860878, 30.746952>,  <36.103729, 36.849995, 30.587471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282749, 36.860878, 30.746952>,  <36.581112, 36.879013, 31.012753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282749, 36.860878, 30.746952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615379, 0.334761, -0.713613,
		0.254804, -0.941212, -0.221801,
		-0.745911, -0.045340, -0.664501,
		36.058975, 36.847275, 30.547602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812817, 36.308231, 30.524715>,  <36.581112, 36.879013, 31.012753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812817, 36.308231, 30.524715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517086, 36.518852, 30.356838>,  <36.339649, 36.645226, 30.256111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517086, 36.518852, 30.356838>,  <36.812817, 36.308231, 30.524715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517086, 36.518852, 30.356838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557996, 0.130234, -0.819561,
		-0.376884, -0.840108, -0.390100,
		-0.739323, 0.526554, -0.419694,
		36.295288, 36.676819, 30.230930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573864, 35.915653, 29.876959>,  <36.812817, 36.308231, 30.524715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573864, 35.915653, 29.876959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495602, 36.307648, 29.862309>,  <36.448647, 36.542847, 29.853518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495602, 36.307648, 29.862309>,  <36.573864, 35.915653, 29.876959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495602, 36.307648, 29.862309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379680, 0.041262, -0.924197,
		-0.904192, -0.194727, -0.380155,
		-0.195652, 0.979989, -0.036625,
		36.436905, 36.601643, 29.851320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575985, 36.019318, 29.168104>,  <36.573864, 35.915653, 29.876959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575985, 36.019318, 29.168104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545597, 36.392162, 29.309753>,  <36.527363, 36.615868, 29.394743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545597, 36.392162, 29.309753>,  <36.575985, 36.019318, 29.168104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545597, 36.392162, 29.309753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271545, 0.361065, -0.892129,
		-0.959422, 0.028385, -0.280540,
		-0.075970, 0.932108, 0.354122,
		36.522804, 36.671795, 29.415991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344456, 36.346317, 28.575151>,  <36.575985, 36.019318, 29.168104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344456, 36.346317, 28.575151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507526, 36.630253, 28.804911>,  <36.605370, 36.800613, 28.942766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507526, 36.630253, 28.804911>,  <36.344456, 36.346317, 28.575151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507526, 36.630253, 28.804911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444170, 0.395451, -0.803947,
		-0.797817, 0.582882, -0.154071,
		0.407678, 0.709836, 0.574396,
		36.629829, 36.843204, 28.977230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281796, 36.940384, 28.159227>,  <36.344456, 36.346317, 28.575151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281796, 36.940384, 28.159227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541161, 37.053574, 28.441925>,  <36.696777, 37.121487, 28.611544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541161, 37.053574, 28.441925>,  <36.281796, 36.940384, 28.159227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541161, 37.053574, 28.441925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504398, 0.535661, -0.677238,
		-0.570216, 0.795609, 0.204597,
		0.648411, 0.282973, 0.706746,
		36.735683, 37.138466, 28.653948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292442, 37.731518, 28.144209>,  <36.281796, 36.940384, 28.159227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292442, 37.731518, 28.144209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631710, 37.577477, 28.289703>,  <36.835270, 37.485054, 28.377001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631710, 37.577477, 28.289703>,  <36.292442, 37.731518, 28.144209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631710, 37.577477, 28.289703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512524, 0.423029, -0.747239,
		0.133891, 0.820209, 0.556174,
		0.848170, -0.385101, 0.363737,
		36.886162, 37.461945, 28.398825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802574, 38.208092, 28.042780>,  <36.292442, 37.731518, 28.144209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802574, 38.208092, 28.042780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996490, 37.861935, 28.093483>,  <37.112839, 37.654240, 28.123905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996490, 37.861935, 28.093483>,  <36.802574, 38.208092, 28.042780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996490, 37.861935, 28.093483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713619, 0.307575, -0.629401,
		0.505693, 0.395586, 0.766672,
		0.484791, -0.865396, 0.126760,
		37.141930, 37.602318, 28.131512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469925, 38.420071, 28.014452>,  <36.802574, 38.208092, 28.042780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469925, 38.420071, 28.014452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477768, 38.024097, 27.958370>,  <37.482475, 37.786514, 27.924721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.477768, 38.024097, 27.958370>,  <37.469925, 38.420071, 28.014452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477768, 38.024097, 27.958370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748072, 0.107561, -0.654843,
		0.663328, -0.092042, 0.742647,
		0.019607, -0.989929, -0.140203,
		37.483650, 37.727119, 27.916309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211517, 38.046783, 28.179598>,  <37.469925, 38.420071, 28.014452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211517, 38.046783, 28.179598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004112, 37.862934, 27.891184>,  <37.879669, 37.752625, 27.718136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004112, 37.862934, 27.891184>,  <38.211517, 38.046783, 28.179598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004112, 37.862934, 27.891184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778207, 0.095749, -0.620665,
		0.354311, -0.882937, 0.308036,
		-0.518514, -0.459624, -0.721033,
		37.848557, 37.725048, 27.674873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968830, 37.906769, 28.348940>,  <38.211517, 38.046783, 28.179598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968830, 37.906769, 28.348940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232544, 38.133675, 28.546345>,  <39.390774, 38.269817, 28.664787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.232544, 38.133675, 28.546345>,  <38.968830, 37.906769, 28.348940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232544, 38.133675, 28.546345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513773, -0.139358, 0.846532,
		0.548983, -0.811659, 0.199569,
		0.659283, 0.567265, 0.493513,
		39.430328, 38.303856, 28.694399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148609, 37.603588, 28.964418>,  <38.968830, 37.906769, 28.348940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148609, 37.603588, 28.964418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.234230, 37.986115, 29.044050>,  <39.285603, 38.215630, 29.091829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.234230, 37.986115, 29.044050>,  <39.148609, 37.603588, 28.964418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234230, 37.986115, 29.044050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424664, -0.092431, 0.900620,
		0.879683, -0.277322, 0.386330,
		0.214053, 0.956321, 0.199079,
		39.298447, 38.273010, 29.103773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295559, 37.545471, 29.577286>,  <39.148609, 37.603588, 28.964418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295559, 37.545471, 29.577286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.251484, 37.942139, 29.550596>,  <39.225037, 38.180138, 29.534582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.251484, 37.942139, 29.550596>,  <39.295559, 37.545471, 29.577286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251484, 37.942139, 29.550596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277772, 0.033732, 0.960055,
		0.954306, 0.124324, 0.271741,
		-0.110191, 0.991668, -0.066724,
		39.218426, 38.239639, 29.530579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641705, 37.890224, 30.054853>,  <39.295559, 37.545471, 29.577286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641705, 37.890224, 30.054853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366459, 38.173672, 29.992432>,  <39.201309, 38.343742, 29.954979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366459, 38.173672, 29.992432>,  <39.641705, 37.890224, 30.054853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366459, 38.173672, 29.992432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145431, 0.076012, 0.986444,
		0.710877, 0.701484, 0.050750,
		-0.688117, 0.708621, -0.156053,
		39.160023, 38.386257, 29.945616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872620, 38.461285, 30.430042>,  <39.641705, 37.890224, 30.054853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872620, 38.461285, 30.430042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475567, 38.484627, 30.387568>,  <39.237335, 38.498631, 30.362083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.475567, 38.484627, 30.387568>,  <39.872620, 38.461285, 30.430042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475567, 38.484627, 30.387568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117216, -0.240611, 0.963518,
		0.030673, 0.968866, 0.245678,
		-0.992633, 0.058352, -0.106187,
		39.177776, 38.502132, 30.355711>
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
